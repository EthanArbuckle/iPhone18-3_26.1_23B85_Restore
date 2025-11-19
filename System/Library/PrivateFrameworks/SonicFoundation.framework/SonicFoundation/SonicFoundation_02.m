void sub_26B16ACD4()
{
  OUTLINED_FUNCTION_12_2();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
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
      sub_26B16CBDC(0, v5, v2, MEMORY[0x277D84560]);
      v12 = OUTLINED_FUNCTION_14();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 16);
      if (v3)
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
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_37();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v8)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B16ADBC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B16C794(0, &qword_2803E6FC8, sub_26B16C7F8, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_26B152C58((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B16C848();
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B16AF14()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v8, &qword_2803E7018, &unk_287BBEB20);
      v9 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_6_6(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B1735E4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16AFCC()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v8, &qword_2803E7020, &type metadata for SQL.Interpolation.Token);
      v9 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_6_6(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B173610(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B084()
{
  OUTLINED_FUNCTION_20_2();
  if (v3)
  {
    OUTLINED_FUNCTION_1_4();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_3_4();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_0_1();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_26B18DF10(v7, v4);
  v9 = *(type metadata accessor for SQLDatabase.AttachedLocation() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_26B173634(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26B16B158()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      sub_26B16C890(0, &qword_2803E7008);
      v8 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v8);
      OUTLINED_FUNCTION_18_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B173F04(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_26B16CBDC(0, &qword_2803E7010, &type metadata for SQLDynamicValue, MEMORY[0x277D83940]);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B2A8()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v8, &qword_2803E6FF0, &type metadata for SQLIndexOrderingTerm);
      v9 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_6_6(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B173F10(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B360()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_11(v8, &qword_2803E6FF8, &type metadata for SQLIndexConstraint);
      v9 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_6_6(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B150634(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B418()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      sub_26B16CB64();
      v8 = OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_6_6(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_6();
        sub_26B173F10(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_26B16CB10(0, &qword_2803E7060);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B510()
{
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_12_2();
  if ((v6 & 1) == 0)
  {
    v7 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
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
      sub_26B16CBDC(0, v5, v2, MEMORY[0x277D84560]);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 48);
      if (v3)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        OUTLINED_FUNCTION_39();
        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v3)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_37();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v8)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_26B16B600(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26B16C890(0, &qword_2803E7078);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_26B173F14((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26B16CBDC(0, &qword_2803E7080, &type metadata for SQLVirtualTableIndexResults.ConstraintUsage, MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_26B16B750()
{
  OUTLINED_FUNCTION_20_2();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_9_5(v5);
    if (v2)
    {
      sub_26B16C890(0, &qword_2803E6CC8);
      v8 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_15_1(v8);
      OUTLINED_FUNCTION_18_1(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_6();
        sub_26B152C58(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_26B16CBDC(0, &qword_2803E6CD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    OUTLINED_FUNCTION_11_4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v6)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B850(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_26B16CBDC(0, a5, a6, MEMORY[0x277D84560]);
      v15 = OUTLINED_FUNCTION_14();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_21_1();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v11)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16B970()
{
  OUTLINED_FUNCTION_38();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ((v12 & 1) == 0)
  {
    v13 = v0;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_4();
  if (v14 == v15)
  {
LABEL_7:
    v16 = *(v9 + 16);
    if (v13 <= v16)
    {
      v17 = *(v9 + 16);
    }

    else
    {
      v17 = v13;
    }

    if (v17)
    {
      sub_26B16BDC8(0, v1, v7, v5, MEMORY[0x277D84560]);
      v18 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v18);
      v18[2] = v16;
      v18[3] = 2 * ((v19 - 32) / 40);
      if (v11)
      {
LABEL_12:
        v3(v9 + 32, v16, v18 + 4);
        *(v9 + 16) = 0;
LABEL_15:

        OUTLINED_FUNCTION_39();
        return;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if (v11)
      {
        goto LABEL_12;
      }
    }

    sub_26B16C9BC(0, v7);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_4();
  if (!v14)
  {
    OUTLINED_FUNCTION_0_1();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_26B16BAE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  OUTLINED_FUNCTION_5_4();
  sub_26B16ACD4();
}

unint64_t sub_26B16BBC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = a2 + 24 * result;
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = *(v2 + 48);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B16BC10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26B150514(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_26B16BCF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_26B16BD74()
{
  result = qword_2803E6EA8;
  if (!qword_2803E6EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E6EA8);
  }

  return result;
}

void sub_26B16BDC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_36();
    v10 = sub_26B16C9BC(v8, v9);
    v11 = a5(a1, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_26B16BE70(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_26B16BF48(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26B16BDC8(319, &qword_280D2CCE0, &qword_280D2DA78, MEMORY[0x277D84948], MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B16C004(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B16C148(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B16C328()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_26B16C36C(uint64_t a1)
{
  v1 = *(a1 + 24);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26B16BDC8(319, &qword_280D2CCE0, &qword_280D2DA78, MEMORY[0x277D84948], MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B16C428(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B16C56C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_26B16C754()
{
  result = qword_2803E6FB8;
  if (!qword_2803E6FB8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2803E6FB8);
  }

  return result;
}

void sub_26B16C794(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26B16C7F8()
{
  result = qword_2803E6FD0;
  if (!qword_2803E6FD0)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2803E6FD0);
  }

  return result;
}

unint64_t sub_26B16C848()
{
  result = qword_2803E6FD8;
  if (!qword_2803E6FD8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2803E6FD8);
  }

  return result;
}

void sub_26B16C890(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_36();
    sub_26B16CBDC(v3, v4, v5, v6);
    v7 = sub_26B213BA0();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_26B16C8E8()
{
  if (!qword_2803E7040)
  {
    sub_26B16C9BC(255, &qword_280D2DA78);
    v0 = sub_26B213140();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7040);
    }
  }
}

void sub_26B16C964()
{
  if (!qword_2803E7050)
  {
    v0 = sub_26B213310();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7050);
    }
  }
}

uint64_t sub_26B16C9BC(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26B16CA10(uint64_t a1)
{
  sub_26B16BDC8(0, &qword_280D2DA38, &unk_280D2DA40, &protocol descriptor for _SonicError, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B16CA98()
{
  if (!qword_2803E6D10)
  {
    sub_26B16CB10(255, &qword_2803E6D18);
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E6D10);
    }
  }
}

void sub_26B16CB10(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    OUTLINED_FUNCTION_36();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_26B16CB64()
{
  if (!qword_2803E7068)
  {
    sub_26B16CB10(255, &qword_2803E7060);
    v0 = sub_26B213BA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7068);
    }
  }
}

void sub_26B16CBDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void OUTLINED_FUNCTION_9_5(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_23_1()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_arrayInitWithCopy();
}

unint64_t sub_26B16CD98(unint64_t result, uint64_t a2, unint64_t a3)
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
    result = sub_26B212BE0();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      OUTLINED_FUNCTION_10();
      v7 = sub_26B212D00();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_26B16CE68(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3 - a2;
    OUTLINED_FUNCTION_10();
    v10 = sub_26B14F340(v6, v7, v8, v9);
    if (a1 && v10 < a1)
    {
      v11 = v5;
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      OUTLINED_FUNCTION_10();
      v11 = sub_26B14F314(v12, v13, v14, v15);
      if (!a2)
      {
        v5 = 0;
      }
    }

    if (v5 >= v11)
    {
LABEL_9:
      OUTLINED_FUNCTION_10();
      return;
    }
  }

  __break(1u);
}

id sub_26B16CF04(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_26B166B3C(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_26B16E718(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v4 + 32);
      }
    }

    return MEMORY[0x26D670B70](v4, a1);
  }

  result = sub_26B2135F0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t Error.treeDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_26B213DE0();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_26B211DF0();

  v11 = [v10 treeDescription];
  v12 = sub_26B212A80();

  return v12;
}

id sub_26B16D120(void *a1)
{
  v1 = a1;
  NSError.treeDescription.getter();

  v2 = sub_26B212A50();

  return v2;
}

id NSError.treeDescription.getter()
{
  v1 = v0;
  *&v123 = 40;
  *(&v123 + 1) = 0xE100000000000000;
  v2 = [v0 domain];
  v3 = sub_26B212A80();
  v5 = v4;

  MEMORY[0x26D670040](v3, v5);

  MEMORY[0x26D670040](8236, 0xE200000000000000);
  *&v120 = [v1 code];
  v6 = sub_26B213B90();
  MEMORY[0x26D670040](v6);

  MEMORY[0x26D670040](41, 0xE100000000000000);
  v126 = v123;
  *&v119[0] = v1;
  sub_26B165DC4();
  sub_26B16C9BC(0, qword_280D2DCF8);
  v7 = v1;
  if (swift_dynamicCast())
  {
    sub_26B150514(&v120, &v123);
    *&v120 = 8250;
    *(&v120 + 1) = 0xE200000000000000;
    v8 = *(&v124 + 1);
    v9 = v125;
    __swift_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
    v10 = (*(v9 + 16))(v8, v9);
    MEMORY[0x26D670040](v10);

    MEMORY[0x26D670040](v120, *(&v120 + 1));

    __swift_destroy_boxed_opaque_existential_1(&v123);
  }

  else
  {
    *&v122 = 0;
    v120 = 0u;
    v121 = 0u;
    sub_26B16E73C(&v120);
  }

  v11 = [v7 userInfo];
  v12 = sub_26B2128A0();

  v13 = *MEMORY[0x277CCA7E8];
  v14 = sub_26B212A80();
  v16 = OUTLINED_FUNCTION_0_12(v14, v15);
  if (v17)
  {
    v18 = v16;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_12_5();
    sub_26B165E08((*(v12 + 56) + 32 * v18), &v123);
    sub_26B2139C0();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  sub_26B159D48(&v123);
  v19 = *MEMORY[0x277CCA578];
  v20 = sub_26B212A80();
  v22 = OUTLINED_FUNCTION_0_12(v20, v21);
  if (v23)
  {
    v24 = v22;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_12_5();
    sub_26B165E08((*(v12 + 56) + 32 * v24), &v123);
    sub_26B2139C0();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  sub_26B159D48(&v123);
  v25 = swift_allocObject();
  v118 = v25;
  *(v25 + 16) = MEMORY[0x277D84F90];
  v115 = v25 + 16;
  v26 = *MEMORY[0x277CCA450];
  v27 = sub_26B212A80();
  OUTLINED_FUNCTION_0_12(v27, v28);
  if (v29)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_8_7();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  if (*(&v124 + 1))
  {
    if (OUTLINED_FUNCTION_4_9())
    {
      v30 = OUTLINED_FUNCTION_1_10();
      sub_26B16DDE0(v30, v31, 43458, 0xA200000000000000, 2625692192, 0xA400000000000000, 10322146, 0xA300000000000000, v115, v116);
    }
  }

  else
  {
    sub_26B159D48(&v123);
  }

  v32 = *MEMORY[0x277CCA470];
  v33 = sub_26B212A80();
  OUTLINED_FUNCTION_0_12(v33, v34);
  if (v35)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_8_7();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  if (*(&v124 + 1))
  {
    if (OUTLINED_FUNCTION_4_9())
    {
      v36 = OUTLINED_FUNCTION_1_10();
      sub_26B16DDE0(v36, v37, 44738, 0xA200000000000000, 11256352, 0xA300000000000000, 48066, 0xA200000000000000, v115, v116);
    }
  }

  else
  {
    sub_26B159D48(&v123);
  }

  v38 = *MEMORY[0x277CCA068];
  v39 = sub_26B212A80();
  OUTLINED_FUNCTION_0_12(v39, v40);
  if (v41)
  {
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_5_5();
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_8_7();
  }

  else
  {
    OUTLINED_FUNCTION_6_7();
  }

  if (*(&v124 + 1))
  {
    if (OUTLINED_FUNCTION_4_9())
    {
      v42 = OUTLINED_FUNCTION_1_10();
      sub_26B16DDE0(v42, v43, 9931490, 0xA300000000000000, 32, 0xE100000000000000, 0, 0xE000000000000000, v115, v116);
    }
  }

  else
  {
    sub_26B159D48(&v123);
  }

  v44 = *(v12 + 16);
  v117 = v12;
  if (v44)
  {
    v116 = v7;
    v45 = v12 + 64;
    v46 = 1 << *(v12 + 32);
    v47 = -1;
    if (v46 < 64)
    {
      v47 = ~(-1 << v46);
    }

    v48 = v47 & *(v12 + 64);
    v49 = (v46 + 63) >> 6;
    result = sub_26B2128F0();
    v51 = 0;
    if (!v48)
    {
LABEL_36:
      while (1)
      {
        v52 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        if (v52 >= v49)
        {
          v48 = 0;
          v121 = 0u;
          v122 = 0u;
          v120 = 0u;
          goto LABEL_41;
        }

        v48 = *(v45 + 8 * v52);
        ++v51;
        if (v48)
        {
          v51 = v52;
          goto LABEL_40;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

    while (1)
    {
      v52 = v51;
LABEL_40:
      v53 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v54 = v53 | (v52 << 6);
      v55 = (*(v117 + 48) + 16 * v54);
      v11 = *v55;
      v56 = v55[1];
      sub_26B15CF98(*(v117 + 56) + 32 * v54, v119);
      *&v120 = v11;
      *(&v120 + 1) = v56;
      sub_26B165E08(v119, &v121);
      sub_26B2128F0();
LABEL_41:
      v123 = v120;
      v124 = v121;
      v125 = v122;
      v57 = *(&v120 + 1);
      if (!*(&v120 + 1))
      {
        break;
      }

      v58 = v123;
      sub_26B165E08(&v124, &v120);
      v59 = *(&v121 + 1);
      v60 = __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
      v11 = &v115;
      v61 = *(*(v59 - 8) + 64);
      MEMORY[0x28223BE20](v60);
      (*(v63 + 16))(&v115 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
      v64 = sub_26B212AE0();
      v66 = v65;
      *&v119[0] = 32;
      *(&v119[0] + 1) = 0xE100000000000000;
      MEMORY[0x26D670040](v58, v57);

      MEMORY[0x26D670040](8250, 0xE200000000000000);
      sub_26B16DDE0(v64, v66, 10456546, 0xA300000000000000, *&v119[0], *(&v119[0] + 1), 0, 0xE000000000000000, 1, v118);

      result = __swift_destroy_boxed_opaque_existential_1(&v120);
      if (!v48)
      {
        goto LABEL_36;
      }
    }

    v7 = v116;
  }

  v67 = [v7 underlyingErrors];
  sub_26B16C9BC(0, &qword_280D2DA78);
  v68 = sub_26B212E40();

  v69 = sub_26B16951C(v68);

  result = sub_26B166B3C(v69);
  if (result)
  {
    v70 = result;
    v71 = 0;
    v116 = (v69 & 0xFFFFFFFFFFFFFF8);
    v11 = &off_279CD4000;
    while (1)
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D670B70](v71, v69);
      }

      else
      {
        if (v71 >= v116[2])
        {
          goto LABEL_70;
        }

        result = *(v69 + 8 * v71 + 32);
      }

      v72 = result;
      v73 = (v71 + 1);
      if (__OFADD__(v71, 1))
      {
        break;
      }

      v74 = [result treeDescription];
      v75 = sub_26B212A80();
      v77 = v76;

      v78 = sub_26B16CF04(v69);
      if (v78)
      {
        v79 = v78;

        v80 = v72 != v79;
      }

      else
      {
        v80 = 1;
      }

      sub_26B16DDE0(v75, v77, 0, 0xE000000000000000, 0, 0xE000000000000000, 0, 0xE000000000000000, v80, v118);

      ++v71;
      if (v73 == v70)
      {
        goto LABEL_60;
      }
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_7_7();
  if (*(*v11 + 16))
  {
    v81 = v115;
    swift_beginAccess();
    sub_26B16E224();
    v83 = v82;
    v85 = v84;
    swift_endAccess();
    v86 = sub_26B16CD98(1uLL, v83, v85);
    *&v119[0] = 11572706;
    *(&v119[0] + 1) = 0xA300000000000000;
    *&v123 = v86;
    *(&v123 + 1) = v87;
    *&v124 = v88;
    *(&v124 + 1) = v89;
    sub_26B16EA1C();
    sub_26B212C00();

    v90 = *(&v119[0] + 1);
    v11 = *&v119[0];
    swift_beginAccess();
    sub_26B16A354();
    v91 = *(*v81 + 16);
    sub_26B16A548(v91);
    v92 = *v81;
    *(v92 + 16) = v91 + 1;
    *(v92 + 16 * v91 + 32) = __PAIR128__(v90, v11);
    *v81 = v92;
    swift_endAccess();
  }

LABEL_60:

  sub_26B16E950(0, &qword_280D2DA88, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *&v123 = 2136003;
  *(&v123 + 1) = 0xA300000000000000;
  v94 = *(&v126 + 1);
  MEMORY[0x26D670040](v126, *(&v126 + 1));
  v95 = *(&v123 + 1);
  *(inited + 32) = v123;
  *(inited + 40) = v95;
  OUTLINED_FUNCTION_7_7();
  v96 = *v11;
  *&v119[0] = inited;
  v97 = sub_26B2128F0();
  sub_26B168818(v97);
  v98 = *&v119[0];
  v99 = *(*&v119[0] + 16);
  if (v99)
  {
    v116 = v94;
    *&v119[0] = MEMORY[0x277D84F90];
    sub_26B15B3DC(0, v99, 0);
    v100 = *&v119[0];
    v115 = v98;
    v101 = (v98 + 40);
    do
    {
      v102 = *(v101 - 1);
      v103 = *v101;
      sub_26B2128F0();
      v104 = sub_26B16E260(v102, v103);
      v106 = v105;
      v108 = v107;
      v110 = v109;

      *&v119[0] = v100;
      v112 = *(v100 + 16);
      v111 = *(v100 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_26B15B3DC(v111 > 1, v112 + 1, 1);
        v100 = *&v119[0];
      }

      *(v100 + 16) = v112 + 1;
      v113 = (v100 + 32 * v112);
      v113[4] = v104;
      v113[5] = v106;
      v113[6] = v108;
      v113[7] = v110;
      v101 += 2;
      --v99;
    }

    while (v99);
  }

  else
  {

    v100 = MEMORY[0x277D84F90];
  }

  *&v119[0] = v100;
  sub_26B16E950(0, &qword_280D2DB48, MEMORY[0x277D83E40], MEMORY[0x277D83940]);
  sub_26B16E9A0();
  sub_26B16698C();
  v114 = sub_26B212DE0();

  return v114;
}

void *sub_26B16DDE0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  v73 = 10;
  v74 = 0xE100000000000000;
  v72 = &v73;
  sub_26B2128F0();
  result = sub_26B16E37C(0x7FFFFFFFFFFFFFFFLL, 0, sub_26B16EAB0, v71, a1, a2);
  v79 = result;
  if (result[2])
  {
    v65 = a7;
    v66 = a8;
    v19 = a10;
    v20 = result[4];
    v21 = result[5];
    v22 = result[7];
    v69 = result[6];
    sub_26B2128F0();
    sub_26B18E420(0, 1);
    if (a9)
    {
      v23 = 0x8094E29C94E2;
    }

    else
    {
      v23 = 0x8094E2B095E2;
    }

    v73 = a3;
    v74 = a4;
    sub_26B2128F0();
    MEMORY[0x26D670040](a5, a6);
    v24 = MEMORY[0x26D66FF50](v20, v21, v69, v22);
    v26 = v25;

    MEMORY[0x26D670040](v24, v26);

    v27 = v73;
    v28 = v74;
    v73 = v23;
    v74 = 0xA600000000000000;
    sub_26B2128F0();
    MEMORY[0x26D670040](v27, v28);

    v29 = v73;
    v30 = v74;
    swift_beginAccess();
    sub_26B16A354();
    v31 = *(*(a10 + 16) + 16);
    sub_26B16A548(v31);
    v32 = *(a10 + 16);
    *(v32 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
    *(a10 + 16) = v32;
    swift_endAccess();
    v34 = v79[2];
    if (!v34)
    {
LABEL_18:

      swift_beginAccess();
      sub_26B16E224();
      v57 = v56;
      v59 = v58;
      swift_endAccess();
      v73 = v57;
      v74 = v59;
      sub_26B2128F0();
      MEMORY[0x26D670040](v65, v66);

      v60 = v73;
      v61 = v74;
      swift_beginAccess();
      sub_26B16A354();
      v62 = *(*(v19 + 16) + 16);
      sub_26B16A548(v62);
      v63 = *(v19 + 16);
      *(v63 + 16) = v62 + 1;
      v64 = v63 + 16 * v62;
      *(v64 + 32) = v60;
      *(v64 + 40) = v61;
      *(v19 + 16) = v63;
      return swift_endAccess();
    }

    if (a9)
    {
      v35 = 545428706;
    }

    else
    {
      v35 = 8224;
    }

    v36 = 0xE200000000000000;
    if (a9)
    {
      v36 = 0xA400000000000000;
    }

    v67 = v36;
    v68 = v35;
    v37 = v79 + 7;
    while (1)
    {
      v38 = v19;
      v40 = *(v37 - 3);
      v39 = *(v37 - 2);
      v42 = *(v37 - 1);
      v41 = *v37;
      sub_26B2128F0();
      v43 = sub_26B212BB0();
      result = sub_26B212BB0();
      if (__OFADD__(v43, result))
      {
        break;
      }

      v70 = v34;
      v44 = sub_26B212CC0();
      v46 = v45;
      v73 = v68;
      v74 = v67;
      sub_26B2128F0();
      MEMORY[0x26D670040](v44, v46);

      v77 = v73;
      v78 = v74;
      v73 = v40;
      v74 = v39;
      v75 = v42;
      v76 = v41;
      sub_26B16EA1C();
      sub_26B212C00();

      v47 = v77;
      v48 = v78;
      v19 = v38;
      swift_beginAccess();
      v49 = *(v38 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v38 + 16) = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v53 = *(v49 + 16);
        sub_26B16A704();
        v49 = v54;
        *(v38 + 16) = v54;
      }

      v51 = *(v49 + 16);
      if (v51 >= *(v49 + 24) >> 1)
      {
        sub_26B16A704();
        v49 = v55;
      }

      *(v49 + 16) = v51 + 1;
      v52 = v49 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v48;
      *(v38 + 16) = v49;
      swift_endAccess();
      v37 += 4;
      v34 = v70 - 1;
      if (v70 == 1)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26B16E224()
{
  if (*(*v0 + 16))
  {
    sub_26B1794B4();
    if (!v1)
    {
      sub_26B1793B0(*(*v0 + 16) - 1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B16E260(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1;
  }

  v3 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v3 = 11;
  }

  v4 = v3 | (v2 << 16);
  do
  {
    if (v4 < 0x4000)
    {
      break;
    }

    v4 = sub_26B212BD0();
    sub_26B212CD0();
    v5 = sub_26B2129B0();
  }

  while ((v5 & 1) != 0);
  sub_26B212BC0();

  return sub_26B212D00();
}

uint64_t sub_26B16E338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30() & 1;
  }
}

uint64_t sub_26B16E37C(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_26B212D00();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_26B16A990();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_26B16A990();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_26B212CD0();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_26B212BC0();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_26B212D00();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_26B16A990();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_26B16A990();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_26B212BC0();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_26B212D00();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_26B16A990();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26B16E718(unint64_t result, char a2, uint64_t a3)
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

uint64_t sub_26B16E73C(uint64_t a1)
{
  sub_26B16E798();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B16E798()
{
  if (!qword_2803E7088[0])
  {
    sub_26B16C9BC(255, qword_280D2DCF8);
    v0 = sub_26B2133E0();
    if (!v1)
    {
      atomic_store(v0, qword_2803E7088);
    }
  }
}

uint64_t sub_26B16E818(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  v7 = sub_26B214070();

  return a3(a1, a2, v7);
}

unint64_t sub_26B16E89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26B213E30() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

void sub_26B16E950(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_26B16E9A0()
{
  result = qword_280D2DB40;
  if (!qword_280D2DB40)
  {
    sub_26B16E950(255, &qword_280D2DB48, MEMORY[0x277D83E40], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DB40);
  }

  return result;
}

unint64_t sub_26B16EA1C()
{
  result = qword_280D2DB60;
  if (!qword_280D2DB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D2DB60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{
  v3 = *(*(*(v1 - 208) + 48) + 16 * v0 + 8);
}

uint64_t OUTLINED_FUNCTION_7_7()
{
  v2 = *(v0 - 320);

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_9_6()
{
  v4 = (*(v0 + 56) + 32 * v1);

  return sub_26B165E08(v4, (v2 - 160));
}

uint64_t sub_26B16EB34(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_26B165E08(a1, v5);
    v2 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v4 = *v1;
    sub_26B165EDC();

    *v1 = v4;
  }

  else
  {
    sub_26B159D48(a1);
    sub_26B1CEC28(v5);

    return sub_26B159D48(v5);
  }

  return result;
}

void sub_26B16EBE0(uint64_t a1, char a2)
{
  if (a2 == -1)
  {
    v4 = OUTLINED_FUNCTION_16_0();
    sub_26B1CEDA8(v4, v5, v6);

    sub_26B173EF0(v7, v9);
  }

  else
  {
    v3 = *v2;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_26B1660EC();

    *v2 = v8;
  }
}

uint64_t sub_26B16EC98(uint64_t a1)
{
  if (*(a1 + 8))
  {
    sub_26B173E00(a1);
    v2 = OUTLINED_FUNCTION_16_0();
    sub_26B1CF094(v2, v3, v4);

    return sub_26B173E00(v18);
  }

  else
  {
    sub_26B166690(a1, v18);
    v6 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = OUTLINED_FUNCTION_43(isUniquelyReferenced_nonNull_native, v8, v9, isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v16, *v1, v18[0]);
    sub_26B166378(v14, v15);

    *v1 = v17;
  }

  return result;
}

void wrappingErrors<A, B>(in:_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a7;
  OUTLINED_FUNCTION_29();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v53 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v53 - v22;
  v25 = v24(v21);
  if (v7)
  {
    a1(v25);
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v26, v27, MEMORY[0x277D84560]);
    OUTLINED_FUNCTION_40();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_26B2162F0;
    *(v28 + 32) = v7;
    swift_getDynamicType();
    sub_26B165DC4();
    v29 = swift_dynamicCastMetatype();
    v30 = *(v11 + 16);
    if (v29)
    {
      v30(v20, v23, a6);
      v31 = v7;
      v32 = sub_26B213DE0();
      v55 = v11;
      if (v32)
      {
        v17 = v32;
        (*(v11 + 8))(v20, a6);
      }

      else
      {
        OUTLINED_FUNCTION_30_0();
        v38 = swift_allocError();
        v40 = OUTLINED_FUNCTION_28_2(v38, v39);
        (*(v11 + 32))(v40, v20, a6);
      }

      v41 = sub_26B211DF0();

      v42 = [v41 domain];
      v56 = sub_26B212A80();
      v54 = v43;

      v44 = [v41 code];
      v45 = [v41 userInfo];
      v46 = sub_26B2128A0();

      v47 = *MEMORY[0x277CCA578];
      sub_26B212A80();
      OUTLINED_FUNCTION_1_11();
      sub_26B173E8C(0, v48, v49, MEMORY[0x277D83940]);
      v59 = v50;
      *&v58 = v28;
      sub_26B165E08(&v58, &v57);
      swift_isUniquelyReferenced_nonNull_native();
      v60 = v46;
      sub_26B165EDC();

      v51 = v60;
      v52 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      sub_26B165258(v56, v54, v44, v51);

      v11 = v55;
    }

    else
    {
      v30(v17, v23, a6);
      OUTLINED_FUNCTION_24();
      type metadata accessor for _WrappingError();
      OUTLINED_FUNCTION_2_12();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_30_0();
      swift_allocError();
      OUTLINED_FUNCTION_18_2();
      _WrappingError.init(error:underlyingErrors:)(v33, v34, v35, v36);
      v37 = v7;
    }

    (*(v11 + 8))(v23, a6);
    swift_willThrow();
  }
}

void Error.withUnderlyingErrors(_:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  swift_getDynamicType();
  sub_26B165DC4();
  if (swift_dynamicCastMetatype())
  {
    v17 = OUTLINED_FUNCTION_38_0();
    v18(v17);
    v19 = sub_26B213DE0();
    if (v19)
    {
      v20 = v19;
      (*(v7 + 8))(v16, v3);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v20 = swift_allocError();
      (*(v7 + 32))(v22, v16, v3);
    }

    v23 = sub_26B211DF0();

    v24 = [v23 domain];
    sub_26B212A80();

    v25 = [v23 code];
    v26 = [v23 userInfo];
    v27 = sub_26B2128A0();

    v28 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v29, v30, MEMORY[0x277D83940]);
    v39 = v31;
    *&v38 = v5;
    sub_26B165E08(&v38, &v37);
    sub_26B2128F0();
    swift_isUniquelyReferenced_nonNull_native();
    v36 = v27;
    sub_26B165EDC();

    v32 = v36;
    objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v33 = OUTLINED_FUNCTION_26_2();
    sub_26B165258(v33, v34, v25, v32);
  }

  else
  {
    (*(v7 + 16))(v13, v1, v3);
    type metadata accessor for _WrappingError();
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v13, v5, v3, v21);
    sub_26B2128F0();
  }

  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  OUTLINED_FUNCTION_9_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_22_0();
  v10 = (v8 - v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  v12();
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v15, v16, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26B2162F0;
  *(v17 + 32) = 0;
  swift_getDynamicType();
  OUTLINED_FUNCTION_34();
  sub_26B165DC4();
  OUTLINED_FUNCTION_36_0();
  v18 = swift_dynamicCastMetatype();
  v19 = v4[2];
  if (v18)
  {
    v19(v14, v0, v2);
    v20 = 0;
    OUTLINED_FUNCTION_14_3();
    if (sub_26B213DE0())
    {
      v21 = v4[1];
      v22 = OUTLINED_FUNCTION_14_3();
      v23(v22);
    }

    else
    {
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_30_0();
      v28 = swift_allocError();
      OUTLINED_FUNCTION_25_0(v28, v29);
      v30 = v4[4];
      OUTLINED_FUNCTION_39_0();
      v31();
    }

    sub_26B211DF0();
    OUTLINED_FUNCTION_51();
    v32 = [v2 domain];
    sub_26B212A80();

    v33 = [v2 code];
    v34 = [v2 userInfo];
    v35 = sub_26B2128A0();

    v36 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v37, v38, MEMORY[0x277D83940]);
    v47 = v39;
    *&v46 = v17;
    sub_26B165E08(&v46, &v45);
    swift_isUniquelyReferenced_nonNull_native();
    v44 = v35;
    sub_26B165EDC();

    v40 = v44;
    v41 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v42 = OUTLINED_FUNCTION_38_0();
    sub_26B165258(v42, v43, v33, v40);
  }

  else
  {
    v19(v10, v0, v2);
    type metadata accessor for _WrappingError();
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_36_0();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    OUTLINED_FUNCTION_37_0();
    _WrappingError.init(error:underlyingErrors:)(v24, v25, v26, v27);
  }

  OUTLINED_FUNCTION_28();
}

uint64_t wrappingErrors<A, B>(in:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v10[12] = a7;
  v10[13] = a8;
  v10[10] = a2;
  v10[11] = a3;
  v12 = *(a7 - 8);
  v10[14] = v12;
  v13 = *(v12 + 64) + 15;
  v10[15] = swift_task_alloc();
  v10[16] = swift_task_alloc();
  v10[17] = swift_task_alloc();
  v17 = (a4 + *a4);
  v14 = a4[1];
  v15 = swift_task_alloc();
  v10[18] = v15;
  *v15 = v10;
  v15[1] = sub_26B16F5DC;

  return v17(a1);
}

uint64_t sub_26B16F5DC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 144);
  v6 = *v1;
  OUTLINED_FUNCTION_22();
  *v7 = v6;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B16F728, 0, 0);
  }

  else
  {
    v9 = v2[16];
    v8 = v2[17];
    v10 = v2[15];

    v11 = v6[1];

    return v11();
  }
}

uint64_t sub_26B16F728()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 136);
  (*(v0 + 80))();
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v6, v7, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B2162F0;
  *(v8 + 32) = v1;
  swift_getDynamicType();
  sub_26B165DC4();
  v9 = swift_dynamicCastMetatype();
  v10 = *(v2 + 16);
  v11 = *(v0 + 152);
  v12 = *(v0 + 136);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  if (v9)
  {
    v10(*(v0 + 128), v12, *(v0 + 96));
    v15 = v11;
    OUTLINED_FUNCTION_38_0();
    v16 = sub_26B213DE0();
    v17 = *(v0 + 128);
    v18 = *(v0 + 112);
    if (v16)
    {
      v19 = v16;
      (*(v18 + 8))(*(v0 + 128), *(v0 + 96));
    }

    else
    {
      v24 = *(v0 + 96);
      v23 = *(v0 + 104);
      OUTLINED_FUNCTION_30_0();
      v19 = swift_allocError();
      (*(v18 + 32))(v25, v17, v24);
    }

    v26 = sub_26B211DF0();

    v27 = [v26 domain];
    sub_26B212A80();

    v28 = [v26 code];
    v29 = [v26 userInfo];
    v30 = sub_26B2128A0();

    v31 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v32, v33, MEMORY[0x277D83940]);
    OUTLINED_FUNCTION_49(v34);
    swift_isUniquelyReferenced_nonNull_native();
    sub_26B165EDC();

    v35 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v36 = OUTLINED_FUNCTION_16_2();
    sub_26B165258(v36, v37, v28, v30);
  }

  else
  {
    v20 = *(v0 + 120);
    v10(v20, v12, *(v0 + 96));
    type metadata accessor for _WrappingError();
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v20, v8, v14, v21);
    v22 = v11;
  }

  v38 = *(v0 + 152);
  v39 = *(v0 + 128);
  v40 = *(v0 + 120);
  (*(*(v0 + 112) + 8))(*(v0 + 136), *(v0 + 96));
  swift_willThrow();

  v41 = *(v0 + 8);

  return v41();
}

uint64_t _WrappingError.init(error:underlyingErrors:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  OUTLINED_FUNCTION_18_2();
  result = type metadata accessor for _WrappingError();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t Error.withUnderlyingErrors(_:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[10] = a3;
  v7 = *(a3 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v12 = (a1 + *a1);
  v9 = a1[1];
  v10 = swift_task_alloc();
  v5[16] = v10;
  *v10 = v5;
  v10[1] = sub_26B170000;

  return v12();
}

uint64_t sub_26B170000()
{
  v2 = *v1;
  OUTLINED_FUNCTION_22();
  *v4 = v3;
  v6 = *(v5 + 128);
  v7 = *v1;
  OUTLINED_FUNCTION_22();
  *v8 = v7;
  *(v9 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26B17010C, 0, 0);
  }

  return result;
}

uint64_t sub_26B17010C()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v5, v6, MEMORY[0x277D84560]);
  OUTLINED_FUNCTION_40();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26B2162F0;
  *(v7 + 32) = v1;
  swift_getDynamicType();
  sub_26B165DC4();
  v8 = swift_dynamicCastMetatype();
  v9 = v0[11];
  if (v8)
  {
    (*(v3 + 16))(v0[15], v2, v4);
    v10 = v1;
    v11 = sub_26B213DE0();
    v12 = v0[15];
    v13 = v0[13];
    if (v11)
    {
      v14 = v11;
      (*(v13 + 8))(v0[15], v0[10]);
    }

    else
    {
      v24 = v0[10];
      v23 = v0[11];
      OUTLINED_FUNCTION_30_0();
      v14 = swift_allocError();
      (*(v13 + 32))(v25, v12, v24);
    }

    v26 = v0[17];
    v27 = sub_26B211DF0();

    v28 = [v27 domain];
    sub_26B212A80();

    v29 = [v27 code];
    v30 = [v27 userInfo];
    v31 = sub_26B2128A0();

    v32 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    OUTLINED_FUNCTION_1_11();
    sub_26B173E8C(0, v33, v34, MEMORY[0x277D83940]);
    OUTLINED_FUNCTION_49(v35);
    swift_isUniquelyReferenced_nonNull_native();
    sub_26B165EDC();

    v36 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v37 = OUTLINED_FUNCTION_38_0();
    v18 = sub_26B165258(v37, v38, v29, v31);
  }

  else
  {
    v15 = v0[14];
    v16 = OUTLINED_FUNCTION_16_2();
    v17(v16);
    OUTLINED_FUNCTION_24();
    type metadata accessor for _WrappingError();
    OUTLINED_FUNCTION_2_12();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_30_0();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_18_2();
    _WrappingError.init(error:underlyingErrors:)(v19, v20, v21, v22);
  }

  v40 = v0[14];
  v39 = v0[15];

  v41 = v0[1];

  return v41(v18);
}

Swift::Bool __swiftcall Error.contains(domain:)(Swift::String domain)
{
  Error.unwrap(firstDomain:)();
  if (v1)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

void Error.unwrap(firstDomain:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22_0();
  v14 = (v12 - v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  if (sub_26B213F80() == v6 && v18 == v4)
  {

    goto LABEL_9;
  }

  v20 = sub_26B213E30();

  if (v20)
  {
LABEL_9:
    (*(v8 + 16))(v17, v0, v2);
    OUTLINED_FUNCTION_27_2();
    if (sub_26B213DE0())
    {
      v26 = *(v8 + 8);
      v27 = OUTLINED_FUNCTION_27_2();
      v28(v27);
    }

    else
    {
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_30_0();
      v29 = swift_allocError();
      v31 = OUTLINED_FUNCTION_25_0(v29, v30);
      (*(v8 + 32))(v31, v17, v2);
    }

LABEL_19:
    OUTLINED_FUNCTION_28();
    return;
  }

  (*(v8 + 16))(v14, v0, v2);
  OUTLINED_FUNCTION_14_3();
  v21 = sub_26B213DE0();
  if (v21)
  {
    v0 = v21;
    v23 = *(v8 + 8);
    v22 = v8 + 8;
    v24 = OUTLINED_FUNCTION_14_3();
    v25(v24);
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_30_0();
    v32 = swift_allocError();
    OUTLINED_FUNCTION_25_0(v32, v33);
    v34 = *(v8 + 32);
    v22 = v8 + 32;
    OUTLINED_FUNCTION_39_0();
    v35();
  }

  sub_26B211DF0();
  OUTLINED_FUNCTION_51();
  v36 = [v2 underlyingErrors];
  OUTLINED_FUNCTION_34();
  sub_26B162128();
  OUTLINED_FUNCTION_36_0();
  v37 = sub_26B212E40();

  v38 = 0;
  v39 = *(v37 + 16);
  while (1)
  {
    if (v39 == v38)
    {

      goto LABEL_19;
    }

    if (v38 >= *(v37 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_33_1(v38);
    v40 = v14;
    v41 = OUTLINED_FUNCTION_45();
    v42 = Error.unwrap(firstDomain:)(v41);

    v38 = v22;
    if (v42)
    {

      goto LABEL_19;
    }
  }

  __break(1u);
}

Swift::Bool __swiftcall Error.contains(domain:code:)(Swift::String domain, Swift::Int code)
{
  Error.unwrap(firstDomain:code:)();
  if (v2)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

void Error.unwrap(firstDomain:code:)()
{
  OUTLINED_FUNCTION_27_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_47_0();
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22_0();
  v60 = (v15 - v16);
  v18 = MEMORY[0x28223BE20](v17);
  v59 = &v58 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v61 = *(v11 + 16);
  v61(&v58 - v20, v3, v22);
  OUTLINED_FUNCTION_48();
  v23 = sub_26B213DE0();
  v62 = v3;
  v63 = v5;
  if (v23)
  {
    v24 = v23;
    v25 = *(v11 + 8);
    v26 = OUTLINED_FUNCTION_48();
    v27(v26);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v24 = swift_allocError();
    (*(v11 + 32))(v28, v21, v7);
  }

  v29 = sub_26B211DF0();

  v30 = [v29 domain];
  v31 = sub_26B212A80();
  v33 = v32;

  if (v31 == v2 && v33 == v1)
  {
  }

  else
  {
    v35 = sub_26B213E30();

    if ((v35 & 1) == 0)
    {

      goto LABEL_14;
    }
  }

  v35 = [v29 code];

  if (v35 == v9)
  {
    v36 = v59;
    v61(v59, v62, v7);
    if (sub_26B213DE0())
    {
      (*(v11 + 8))(v36, v7);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v55 = swift_allocError();
      v57 = OUTLINED_FUNCTION_28_2(v55, v56);
      (*(v11 + 32))(v57, v36, v7);
    }

LABEL_24:
    OUTLINED_FUNCTION_28();
    return;
  }

LABEL_14:
  v37 = v60;
  v61(v60, v62, v7);
  OUTLINED_FUNCTION_48();
  v38 = sub_26B213DE0();
  if (v38)
  {
    v35 = v38;
    v39 = *(v11 + 8);
    v40 = OUTLINED_FUNCTION_48();
    v41(v40);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v42 = swift_allocError();
    v44 = OUTLINED_FUNCTION_28_2(v42, v43);
    (*(v11 + 32))(v44, v37, v7);
  }

  v45 = sub_26B211DF0();

  v63 = v45;
  v46 = [v45 underlyingErrors];
  OUTLINED_FUNCTION_34();
  sub_26B162128();
  OUTLINED_FUNCTION_36_0();
  v47 = sub_26B212E40();

  v48 = 0;
  v49 = *(v47 + 16);
  while (1)
  {
    if (v49 == v48)
    {

      goto LABEL_24;
    }

    if (v48 >= *(v47 + 16))
    {
      break;
    }

    v50 = v48 + 1;
    v51 = *(v47 + 8 * v48 + 32);
    swift_getErrorValue();
    v52 = v51;
    v53 = OUTLINED_FUNCTION_16_0();
    v54 = Error.unwrap(firstDomain:code:)(v53);

    v48 = v50;
    if (v54)
    {

      goto LABEL_24;
    }
  }

  __break(1u);
}

BOOL Error.contains<A>(any:)()
{
  OUTLINED_FUNCTION_9_0();
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v7 - v6);
  OUTLINED_FUNCTION_14_3();
  v8 = sub_26B213DE0();
  if (v8)
  {
    v0 = v8;
    v9 = *(v2 + 8);
    v10 = OUTLINED_FUNCTION_14_3();
    v11(v10);
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_30_0();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_28_2(v12, v13);
    v14 = *(v2 + 32);
    OUTLINED_FUNCTION_39_0();
    v15();
  }

  v16 = sub_26B211DF0();

  v17 = [v16 domain];
  sub_26B212A80();

  [v16 code];
  Error.unwrap(firstDomain:code:)();
  v19 = v18;

  if (v19)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

BOOL Error.contains(where:)()
{
  Error.unwrap(where:)();
  if (v0)
  {
  }

  return OUTLINED_FUNCTION_41_0();
}

void Error.unwrap(where:)()
{
  OUTLINED_FUNCTION_27_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_0();
  v49 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  v19 = *(v7 + 16);
  v50 = v20;
  v19(&v48 - v17, v20);
  v21 = sub_26B213DE0();
  v51 = v1;
  if (v21)
  {
    v22 = v21;
    (*(v7 + 8))(v18, v3);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v22 = swift_allocError();
    (*(v7 + 32))(v23, v18, v3);
  }

  v24 = sub_26B211DF0();

  v25 = v5(v24);
  if (v25)
  {
    (v19)(v16, v50, v3);
    OUTLINED_FUNCTION_27_2();
    if (sub_26B213DE0())
    {
      v26 = *(v7 + 8);
      v27 = OUTLINED_FUNCTION_27_2();
      v28(v27);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v35 = swift_allocError();
      v37 = OUTLINED_FUNCTION_25_0(v35, v36);
      (*(v7 + 32))(v37, v16, v3);
    }

LABEL_17:
    OUTLINED_FUNCTION_28();
  }

  else
  {
    v29 = v49;
    (v19)(v49, v50, v3);
    OUTLINED_FUNCTION_27_2();
    v30 = v51;
    v31 = sub_26B213DE0();
    if (v31)
    {
      v25 = v31;
      v32 = *(v7 + 8);
      v33 = OUTLINED_FUNCTION_27_2();
      v34(v33);
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      v38 = swift_allocError();
      v40 = OUTLINED_FUNCTION_25_0(v38, v39);
      (*(v7 + 32))(v40, v29, v3);
    }

    sub_26B211DF0();
    OUTLINED_FUNCTION_51();
    v41 = [v3 underlyingErrors];
    OUTLINED_FUNCTION_34();
    sub_26B162128();
    OUTLINED_FUNCTION_36_0();
    v42 = sub_26B212E40();

    v43 = 0;
    v44 = *(v42 + 16);
    while (1)
    {
      if (v44 == v43)
      {

        goto LABEL_17;
      }

      if (v43 >= *(v42 + 16))
      {
        break;
      }

      OUTLINED_FUNCTION_33_1(v43);
      v45 = v30;
      v46 = OUTLINED_FUNCTION_45();
      v47 = Error.unwrap(where:)(v46);

      v43 = v24;
      if (v47)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void Error.firstValueForUserInfoKey(_:)()
{
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  OUTLINED_FUNCTION_47_0();
  v4 = v3;
  OUTLINED_FUNCTION_9_0();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  (*(v6 + 16))(v11 - v10, v13);
  v14 = sub_26B213DE0();
  if (v14)
  {
    v0 = v14;
    (*(v6 + 8))(v12, v2);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v15 = swift_allocError();
    v17 = OUTLINED_FUNCTION_28_2(v15, v16);
    (*(v6 + 32))(v17, v12, v2);
  }

  v18 = sub_26B211DF0();

  v19 = [v18 userInfo];
  v20 = sub_26B2128A0();

  OUTLINED_FUNCTION_16_0();
  sub_26B15CE80(v20, v21);

  if (v40)
  {

    sub_26B165E08(&v39, v41);
    v22 = v4;
LABEL_6:
    sub_26B165E08(v41, v22);
LABEL_18:
    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_26B159D48(&v39);
    v37 = v18;
    v23 = [v18 underlyingErrors];
    OUTLINED_FUNCTION_34();
    sub_26B162128();
    v24 = sub_26B212E40();

    while (1)
    {
      if (!*(v24 + 16) || (*&v41[0] = *(v24 + 32), v25 = *&v41[0], sub_26B165DC4(), (swift_dynamicCast() & 1) == 0))
      {

        *v4 = 0u;
        v4[1] = 0u;
        goto LABEL_18;
      }

      v26 = v39;
      v27 = [v39 userInfo];
      v28 = sub_26B2128A0();

      if (*(v28 + 16))
      {
        OUTLINED_FUNCTION_16_0();
        v29 = sub_26B173934();
        if (v30)
        {
          sub_26B15CF98(*(v28 + 56) + 32 * v29, &v39);

          sub_26B165E08(&v39, v41);
          v22 = v4;
          goto LABEL_6;
        }
      }

      v31 = *(v24 + 16);
      if (!v31)
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v31 - 1) > *(v24 + 24) >> 1)
      {
        sub_26B16AA48(isUniquelyReferenced_nonNull_native, v31, 1, v24);
        v24 = v33;
      }

      v34 = *(v24 + 16);
      memmove((v24 + 32), (v24 + 40), 8 * v34 - 8);
      *(v24 + 16) = v34 - 1;
      v38 = v24;
      v35 = [v26 underlyingErrors];
      v36 = sub_26B212E40();

      sub_26B1688B4(v36);
      v24 = v38;
    }

    __break(1u);
  }
}

void Error.unwrap<A>(first:)()
{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_1(v2, v3, v4, v5);
  v67 = v6;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_9_0();
  v62 = v12;
  v63 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15_2();
  v66 = v16;
  OUTLINED_FUNCTION_9_0();
  v61 = v17;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_15_2();
  v60 = v21;
  OUTLINED_FUNCTION_24();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v64 = v23;
  v65 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v58 - v27;
  OUTLINED_FUNCTION_9_0();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_22_0();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v58 - v38;
  v59 = *(v30 + 16);
  v59(&v58 - v38, v8, v0);
  v40 = sub_26B213DE0();
  v68 = v10;
  if (v40)
  {
    v41 = v40;
    (*(v30 + 8))(v39, v0);
  }

  else
  {
    OUTLINED_FUNCTION_46();
    OUTLINED_FUNCTION_30_0();
    v41 = swift_allocError();
    v42 = *(v30 + 32);
    OUTLINED_FUNCTION_18_2();
    v43();
  }

  v44 = sub_26B211DF0();

  v45 = [v44 domain];
  sub_26B212A80();

  [v44 code];
  Error.unwrap(firstDomain:code:)();
  v47 = v46;

  if (!v47)
  {
    v51 = 1;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_52();
  v48 = sub_26B162128();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_3(v28, 1);
    (*(v64 + 8))(v28, v65);
    OUTLINED_FUNCTION_44();
    v52 = v66;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v52, 0, 1, v1);
      v53 = v61;
      (*(v61 + 32))(v60, v52, v1);
      v54 = OUTLINED_FUNCTION_13_4();
      (v59)(v54);
      v55 = *(v53 + 8);
      v56 = OUTLINED_FUNCTION_14_3();
      v57(v56);
      goto LABEL_10;
    }

    v51 = 1;
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v1);
    (*(v62 + 8))(v52, v63);
LABEL_12:
    v48 = v68;
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_22_3(v28, 0);
  v49 = *(v30 + 32);
  v49(v36, v28, v0);
  v50 = OUTLINED_FUNCTION_13_4();
  (v49)(v50);
LABEL_10:
  v51 = 0;
LABEL_13:
  OUTLINED_FUNCTION_22_3(v48, v51);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_1(v2, v3, v4, v5);
  v67 = v6;
  v68 = v7;
  v9 = *(v8 + 8);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_9_0();
  v62 = v11;
  v63 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_2();
  v65 = v15;
  OUTLINED_FUNCTION_9_0();
  v61[1] = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_2();
  v61[0] = v20;
  OUTLINED_FUNCTION_24();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v64 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  v26 = v61 - v25;
  OUTLINED_FUNCTION_9_0();
  v66 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v33 = (v32 - v31);
  OUTLINED_FUNCTION_46();
  sub_26B211C20();
  OUTLINED_FUNCTION_46();
  sub_26B211C40();
  Error.unwrap(firstDomain:code:)();
  v35 = v34;

  if (!v35)
  {
    v41 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52();
  sub_26B162128();
  if (!OUTLINED_FUNCTION_32_0())
  {
    v42 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v0);
    v45 = *(v64 + 8);
    v46 = OUTLINED_FUNCTION_16_2();
    v47(v46);
    OUTLINED_FUNCTION_44();
    v40 = v65;
    if (OUTLINED_FUNCTION_50())
    {
      v48 = OUTLINED_FUNCTION_9_7();
      __swift_storeEnumTagSinglePayload(v48, v49, v50, v1);
      v51 = OUTLINED_FUNCTION_8_8();
      v52(v51);
      v53 = *(v66 + 16);
      v54 = OUTLINED_FUNCTION_6_8();
      v55(v54);
      v56 = OUTLINED_FUNCTION_30_2();
      v57(v56);
      goto LABEL_7;
    }

    v41 = 1;
    v58 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v1);
    (*(v62 + 8))(v40, v63);
LABEL_9:
    v40 = v68;
    goto LABEL_10;
  }

  v36 = OUTLINED_FUNCTION_9_7();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v0);
  v39 = *(v66 + 32);
  v39(v33, v26, v0);
  v40 = v68;
  v39(v68, v33, v0);
LABEL_7:
  v41 = 0;
LABEL_10:
  OUTLINED_FUNCTION_22_3(v40, v41);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  v54 = v0;
  v55 = v2;
  v4 = v3;
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_9_0();
  v51 = v6;
  v52 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_2();
  v53 = v10;
  OUTLINED_FUNCTION_9_0();
  v50[1] = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_2();
  v50[0] = v15;
  OUTLINED_FUNCTION_24();
  v16 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v18 = v17;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v21);
  v23 = v50 - v22;
  OUTLINED_FUNCTION_9_0();
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4();
  v31 = v30 - v29;
  v56 = v4;
  swift_getMetatypeMetadata();
  sub_26B212B00();
  Error.unwrap(firstDomain:)();
  v33 = v32;

  if (!v33)
  {
    v36 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52();
  sub_26B162128();
  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_22_3(v23, 1);
    (*(v18 + 8))(v23, v16);
    OUTLINED_FUNCTION_44();
    v16 = v53;
    if (swift_dynamicCast())
    {
      v37 = OUTLINED_FUNCTION_9_7();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v1);
      v40 = OUTLINED_FUNCTION_8_8();
      v41(v40);
      v42 = *(v25 + 16);
      v43 = OUTLINED_FUNCTION_6_8();
      v44(v43);
      v45 = OUTLINED_FUNCTION_30_2();
      v46(v45);
      goto LABEL_7;
    }

    v36 = 1;
    v47 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v1);
    (*(v51 + 8))(v16, v52);
LABEL_9:
    v16 = v55;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_22_3(v23, 0);
  v34 = *(v25 + 32);
  v34(v31, v23, v4);
  v35 = OUTLINED_FUNCTION_6_8();
  (v34)(v35);
LABEL_7:
  v36 = 0;
LABEL_10:
  OUTLINED_FUNCTION_22_3(v16, v36);
  OUTLINED_FUNCTION_28();
}

{
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_31_1(v2, v3, v4, v5);
  v66 = v6;
  v8 = *(v7 + 8);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_9_0();
  v63 = v10;
  v64 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_2();
  v65 = v14;
  OUTLINED_FUNCTION_9_0();
  v62[2] = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_15_2();
  v62[1] = v19;
  OUTLINED_FUNCTION_24();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v21 = v20;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v24);
  v26 = v62 - v25;
  OUTLINED_FUNCTION_9_0();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4();
  v34 = v33 - v32;
  OUTLINED_FUNCTION_46();
  sub_26B211C20();
  Error.unwrap(firstDomain:)();
  v36 = v35;

  if (!v36)
  {
    v42 = 1;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_52();
  sub_26B162128();
  if (!OUTLINED_FUNCTION_32_0())
  {
    v43 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v0);
    v46 = *(v21 + 8);
    v47 = OUTLINED_FUNCTION_16_2();
    v48(v47);
    OUTLINED_FUNCTION_44();
    v26 = v65;
    if (OUTLINED_FUNCTION_50())
    {
      v49 = OUTLINED_FUNCTION_9_7();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v1);
      v52 = OUTLINED_FUNCTION_8_8();
      v53(v52);
      v54 = *(v28 + 16);
      v55 = OUTLINED_FUNCTION_6_8();
      v56(v55);
      v57 = OUTLINED_FUNCTION_30_2();
      v58(v57);
      goto LABEL_7;
    }

    v42 = 1;
    v59 = OUTLINED_FUNCTION_10_6();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v1);
    (*(v63 + 8))(v26, v64);
LABEL_9:
    v26 = v66;
    goto LABEL_10;
  }

  v37 = OUTLINED_FUNCTION_9_7();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v0);
  v40 = *(v28 + 32);
  v40(v34, v26, v0);
  v41 = OUTLINED_FUNCTION_13_4();
  (v40)(v41);
LABEL_7:
  v42 = 0;
LABEL_10:
  OUTLINED_FUNCTION_22_3(v26, v42);
  OUTLINED_FUNCTION_28();
}

Swift::Bool __swiftcall Error._is(domain:)(Swift::String domain)
{
  OUTLINED_FUNCTION_47_0();
  if (sub_26B213F80() == v2 && v3 == v1)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_37_0();
    v5 = sub_26B213E30();
  }

  return v5 & 1;
}

Swift::Bool __swiftcall Error._is(domain:code:)(Swift::String domain, Swift::Int code)
{
  object = domain._object;
  countAndFlagsBits = domain._countAndFlagsBits;
  OUTLINED_FUNCTION_29();
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  (*(v7 + 16))(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v12);
  OUTLINED_FUNCTION_14_3();
  v14 = sub_26B213DE0();
  if (v14)
  {
    v2 = v14;
    v15 = *(v7 + 8);
    v16 = OUTLINED_FUNCTION_14_3();
    v17(v16);
  }

  else
  {
    OUTLINED_FUNCTION_26_2();
    OUTLINED_FUNCTION_30_0();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_28_2(v18, v19);
    v20 = *(v7 + 32);
    OUTLINED_FUNCTION_39_0();
    v21();
  }

  v22 = sub_26B211DF0();

  v23 = [v22 domain];
  v24 = sub_26B212A80();
  v26 = v25;

  if (v24 == countAndFlagsBits && v26 == object)
  {
  }

  else
  {
    v28 = sub_26B213E30();

    if ((v28 & 1) == 0)
    {

      return 0;
    }
  }

  v30 = [v22 code];

  return v30 == code;
}

uint64_t Error._is(query:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v11, v12);
  v13 = sub_26B213DE0();
  if (v13)
  {
    v14 = v13;
    (*(v6 + 8))(v11, a3);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v14 = swift_allocError();
    (*(v6 + 32))(v15, v11, a3);
  }

  v16 = sub_26B211DF0();

  v17 = a1(v16);
  return v17 & 1;
}

uint64_t sub_26B1725A0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_getObjectType();
  sub_26B165DC4();
  if (swift_dynamicCastMetatype())
  {
    v26[0] = v5;
    v6 = v5;
    swift_getWitnessTable();
    v7 = sub_26B213DE0();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = swift_allocError();
      *v12 = v6;
    }

    v13 = sub_26B211DF0();

    v14 = [v13 domain];
    v15 = sub_26B212A80();
    v17 = v16;

    v18 = [v13 code];
    v19 = [v13 userInfo];
    v20 = sub_26B2128A0();

    v27 = v20;
    v21 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    sub_26B173E8C(0, &qword_280D2CCE0, sub_26B162128, MEMORY[0x277D83940]);
    v26[3] = v22;
    v26[0] = a1;
    sub_26B2128F0();
    sub_26B16EB34(v26);
    v23 = v27;
    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v9 = sub_26B165258(v15, v17, v18, v23);
  }

  else
  {
    v26[0] = v5;
    swift_getWitnessTable();
    type metadata accessor for _WrappingError();
    swift_getWitnessTable();
    v9 = swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v26, a1, a2, v10);
    v11 = v5;
    sub_26B2128F0();
  }

  return v9;
}

uint64_t _WrappingError.underlyingErrors.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = *(v2 + v4);

  *(v2 + v4) = a1;
  return result;
}

uint64_t (*_WrappingError.underlyingErrors.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_26B172940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4B8](a1, WitnessTable);
}

uint64_t sub_26B172994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28211F4A8](a1, WitnessTable);
}

uint64_t sub_26B1729F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v34[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v34[-1] - v11;
  sub_26B165DC4();
  v13 = swift_dynamicCastMetatype();
  v14 = *(v6 + 16);
  if (v13)
  {
    v14(v12, v4, a2);
    swift_getWitnessTable();
    v15 = sub_26B213DE0();
    if (v15)
    {
      v16 = v15;
      (*(v6 + 8))(v12, a2);
    }

    else
    {
      v16 = swift_allocError();
      (*(v6 + 32))(v19, v12, a2);
    }

    v20 = sub_26B211DF0();

    v21 = [v20 domain];
    v22 = sub_26B212A80();
    v24 = v23;

    v25 = [v20 code];
    v26 = [v20 userInfo];
    v27 = sub_26B2128A0();

    v35 = v27;
    v28 = *MEMORY[0x277CCA578];
    sub_26B212A80();
    sub_26B173E8C(0, &qword_280D2CCE0, sub_26B162128, MEMORY[0x277D83940]);
    v34[3] = v29;
    v34[0] = a1;
    sub_26B2128F0();
    sub_26B16EB34(v34);
    v30 = v35;
    v31 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v17 = sub_26B165258(v22, v24, v25, v30);
  }

  else
  {
    v14(v10, v4, a2);
    swift_getWitnessTable();
    type metadata accessor for _WrappingError();
    swift_getWitnessTable();
    v17 = swift_allocError();
    _WrappingError.init(error:underlyingErrors:)(v10, a1, a2, v18);
    sub_26B2128F0();
  }

  return v17;
}

uint64_t _WrappingError.description.getter(uint64_t a1)
{
  sub_26B2136C0();
  v3 = *(a1 + 16);
  sub_26B213DF0();
  MEMORY[0x26D670040](0xD000000000000013, 0x800000026B21F700);
  v4 = *(v1 + *(a1 + 36));
  v5 = sub_26B162128();
  v6 = MEMORY[0x26D670290](v4, v5);
  MEMORY[0x26D670040](v6);

  return 0;
}

uint64_t _WrappingError.debugDescription.getter(uint64_t a1)
{
  v2 = v1;
  v14 = sub_26B2141F0();
  MEMORY[0x26D670040](0x203A726F72726528, 0xE800000000000000);
  sub_26B1739A4(0, &qword_2803E6DE8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B2162F0;
  v5 = *(a1 + 16);
  *(v4 + 56) = v5;
  __swift_allocate_boxed_opaque_existential_0((v4 + 32));
  v6 = *(*(v5 - 8) + 16);
  OUTLINED_FUNCTION_37_0();
  v7();
  OUTLINED_FUNCTION_21_2();

  MEMORY[0x26D670040](0xD000000000000014, 0x800000026B21F720);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26B2162F0;
  v9 = *(v2 + *(a1 + 36));
  OUTLINED_FUNCTION_1_11();
  sub_26B173E8C(0, v10, v11, MEMORY[0x277D83940]);
  *(v8 + 56) = v12;
  *(v8 + 32) = v9;
  sub_26B2128F0();
  OUTLINED_FUNCTION_21_2();

  MEMORY[0x26D670040](41, 0xE100000000000000);
  return v14;
}

id _WrappingError.errorCode.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  OUTLINED_FUNCTION_9_0();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  (*(v4 + 16))(v9 - v8);
  v11 = *(a1 + 24);
  OUTLINED_FUNCTION_37_0();
  v12 = sub_26B213DE0();
  if (v12)
  {
    v13 = v12;
    (*(v4 + 8))(v10, v2);
  }

  else
  {
    OUTLINED_FUNCTION_30_0();
    v13 = swift_allocError();
    v14 = *(v4 + 32);
    OUTLINED_FUNCTION_18_2();
    v15();
  }

  v16 = sub_26B211DF0();

  v17 = [v16 code];
  return v17;
}

uint64_t _WrappingError.errorUserInfo.getter(uint64_t a1)
{
  sub_26B173E8C(0, &qword_2803E6C68, sub_26B159ECC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  v4 = *MEMORY[0x277CCA578];
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v5;
  v6 = *(v1 + *(a1 + 36));
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v17 = MEMORY[0x277D84F90];
    sub_26B2137C0();
    v9 = (v6 + 32);
    do
    {
      v10 = *v9++;
      v11 = v10;
      sub_26B211DF0();
      OUTLINED_FUNCTION_51();
      sub_26B213790();
      v12 = *(v17 + 16);
      sub_26B2137D0();
      sub_26B2137E0();
      sub_26B2137A0();
      --v7;
    }

    while (v7);
    v8 = v17;
  }

  OUTLINED_FUNCTION_12_6();
  sub_26B173E8C(0, v13, v14, MEMORY[0x277D83940]);
  *(inited + 72) = v15;
  *(inited + 48) = v8;
  return sub_26B2128C0();
}

uint64_t _WrappingError<>.errorUserInfo.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_26B211C30();
  v5 = *MEMORY[0x277CCA7E8];
  v6 = sub_26B212A80();
  v8 = sub_26B16E800(v6, v7);
  if (v9)
  {
    v10 = v8;
    swift_isUniquelyReferenced_nonNull_native();
    *&v34 = v4;
    v11 = *(v4 + 24);
    sub_26B166880();
    sub_26B2139B0();
    v4 = v34;
    v12 = *(*(v34 + 48) + 16 * v10 + 8);

    sub_26B165E08((*(v34 + 56) + 32 * v10), &v35);
    sub_26B2139C0();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  sub_26B159D48(&v35);
  v13 = *MEMORY[0x277CCA578];
  sub_26B212A80();
  v14 = *(v1 + *(a1 + 36));
  v15 = *(v14 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    *&v35 = MEMORY[0x277D84F90];
    sub_26B2137C0();
    v17 = (v14 + 32);
    do
    {
      v18 = *v17++;
      v19 = v18;
      sub_26B211DF0();

      sub_26B213790();
      v20 = *(v35 + 16);
      sub_26B2137D0();
      sub_26B2137E0();
      sub_26B2137A0();
      --v15;
    }

    while (v15);
    v16 = v35;
  }

  OUTLINED_FUNCTION_12_6();
  sub_26B173E8C(0, v21, v22, MEMORY[0x277D83940]);
  *(&v36 + 1) = v23;
  *&v35 = v16;
  sub_26B165E08(&v35, &v34);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_43(isUniquelyReferenced_nonNull_native, v25, v26, isUniquelyReferenced_nonNull_native, v27, v28, v29, v30, v32, v4, v34);
  sub_26B165E18();

  return v33;
}

char *sub_26B1734FC(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_17_2(a3, result, a2);
  }

  return result;
}

char *sub_26B173538(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B173560(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B173588(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B1735C0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

char *sub_26B1735E4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_17_2(a3, result, 88 * a2);
  }

  return result;
}

char *sub_26B173610(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_26B17364C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_18_2();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_18_2();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_26B173724(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_13(a3, result);
  }

  return result;
}

uint64_t sub_26B1737A4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_26B2135F0();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_26B213750();
  *v1 = result;
  return result;
}

uint64_t sub_26B1738BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

unint64_t sub_26B173934()
{
  OUTLINED_FUNCTION_47_0();
  v1 = *(v0 + 40);
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  sub_26B214070();
  v2 = OUTLINED_FUNCTION_16_0();

  return sub_26B16E89C(v2, v3, v4);
}

void sub_26B1739A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F70] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26B173A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26B173E8C(319, &qword_280D2CCE0, sub_26B162128, MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B173AF8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26B173C34(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26B173E00(uint64_t a1)
{
  sub_26B173E8C(0, &qword_2803E7110, sub_26B166480, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B173E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26B173EF0(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_26B166870(a1, a2);
  }
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return sub_26B213630();
}

uint64_t OUTLINED_FUNCTION_22_3(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  type metadata accessor for _WrappingError();

  return sub_26B2133E0();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_33_1@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8 * a1 + 32);

  return swift_getErrorValue();
}

_OWORD *OUTLINED_FUNCTION_49(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 16) = v1;

  return sub_26B165E08((v2 + 16), (v2 + 48));
}

void OUTLINED_FUNCTION_51()
{
}

id OUTLINED_FUNCTION_52()
{
  *(v1 - 88) = v0;

  return v0;
}

uint64_t sub_26B174158()
{
  type metadata accessor for SonicActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_2803E7118 = v0;
  return result;
}

uint64_t *sub_26B174194()
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  return &qword_2803E7118;
}

uint64_t static SonicActor.shared.getter()
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  swift_beginAccess();
}

uint64_t static SonicActor.shared.setter(uint64_t a1)
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  swift_beginAccess();
  qword_2803E7118 = a1;
}

uint64_t (*static SonicActor.shared.modify())()
{
  if (qword_2803E6A80 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26B174328@<X0>(void *a1@<X8>)
{
  sub_26B174194();
  swift_beginAccess();
  *a1 = qword_2803E7118;
}

uint64_t sub_26B17437C(uint64_t *a1)
{
  v1 = *a1;

  sub_26B174194();
  swift_beginAccess();
  qword_2803E7118 = v1;
}

uint64_t SonicActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_26B174454()
{
  result = qword_2803E7120;
  if (!qword_2803E7120)
  {
    type metadata accessor for SonicActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7120);
  }

  return result;
}

uint64_t sub_26B1744E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SonicActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t ActorQueue.TaskOrder.hashValue.getter()
{
  v1 = *v0;
  sub_26B214030();
  MEMORY[0x26D671480](v1);
  return sub_26B214070();
}

uint64_t sub_26B1745CC()
{
  sub_26B1786E4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26B2141B0();
  qword_2803E7128 = result;
  return result;
}

uint64_t sub_26B174624()
{
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  sub_26B2141C0();
  return v1;
}

uint64_t ActorQueue.__allocating_init(ordering:)(char *a1)
{
  v2 = swift_allocObject();
  ActorQueue.init(ordering:)(a1);
  return v2;
}

uint64_t ActorQueue.init(ordering:)(char *a1)
{
  v2 = *a1;
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_26B216B40;
  *(v1 + 136) = xmmword_26B216B50;
  *(v1 + 152) = 1;
  *(v1 + 160) = *sub_26B2122F0();
  *(v1 + 112) = v2;

  return v1;
}

uint64_t ActorQueue.count.getter()
{
  if (*(v0 + 152))
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(*(v0 + 160) + 24);
  result = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t ActorQueue.run<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *v4;
  return OUTLINED_FUNCTION_2_13(sub_26B1747C8, v4);
}

uint64_t sub_26B1747C8()
{
  v1 = v0[9];
  v2 = v1[16];
  v3 = v1[17];
  if (v3 == v2)
  {
    return sub_26B2139E0();
  }

  v4 = v1[15];
  if (v2 < v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v3 < v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 >= v2)
  {
LABEL_17:
    __break(1u);
    return MEMORY[0x2822008B0]();
  }

  v5 = v0[10];
  v1[17] = v3 + 1;
  v6 = sub_26B174624();
  v7 = sub_26B174E88(v1, v6);

  if (v7)
  {
    v9 = v0[9];
    v8 = v0[10];
    sub_26B2136C0();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x26D670040](0xD000000000000015, 0x800000026B21F7B0);
    v0[4] = v9;
    sub_26B2138F0();
    MEMORY[0x26D670040](0xD00000000000002FLL, 0x800000026B21F7D0);
    sub_26B174624();
    v10 = MEMORY[0x26D670290]();
    v12 = v11;

    MEMORY[0x26D670040](v10, v12);

    v13 = v0[2];
    v14 = v0[3];
    return sub_26B2139E0();
  }

  v16 = v0[9];
  if ((*(v16 + 152) & 1) == 0)
  {
    v23 = swift_task_alloc();
    v0[11] = v23;
    *(v23 + 16) = v3;
    *(v23 + 24) = v16;
    v24 = swift_task_alloc();
    v0[12] = v24;
    *(v24 + 16) = v16;
    *(v24 + 24) = v3;
    sub_26B176908();
    v25 = *(MEMORY[0x277D85A50] + 4);
    v26 = swift_task_alloc();
    v0[13] = v26;
    *v26 = v0;
    v26[1] = sub_26B174B30;

    return MEMORY[0x2822008B0]();
  }

  *(v16 + 144) = v3;
  *(v16 + 152) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[15] = v17;
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_13_5(v17);

  return sub_26B174EE4(v19, v20, v21, v22);
}

uint64_t sub_26B174B30()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = v2[13];
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (!v0)
  {
    v9 = v3[11];
    v8 = v3[12];
    v10 = v3[9];

    return MEMORY[0x2822009F8](sub_26B174C44, v10, 0);
  }

  return result;
}

uint64_t sub_26B174C44()
{
  OUTLINED_FUNCTION_25();
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_5(v1);

  return sub_26B174EE4(v3, v4, v5, v6);
}

uint64_t sub_26B174CC8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 112);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B174DA8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 120);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_10_0();

  return v5();
}

BOOL sub_26B174E88(uint64_t a1, uint64_t a2)
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

BOOL sub_26B174EB4(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_26B174EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = *v4;
  return OUTLINED_FUNCTION_2_13(sub_26B174F30, v4);
}

uint64_t sub_26B174F30()
{
  if (qword_2803E6A88 != -1)
  {
    OUTLINED_FUNCTION_6_9();
  }

  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v13 = *(v0 + 72);
  v4 = sub_26B174624();
  sub_26B178DA0(0, &qword_2803E6FC0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *(inited + 32) = v1;
  sub_26B16898C(inited);
  *(v0 + 112) = v4;
  *(v0 + 56) = v4;
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v13;
  v7 = sub_26B176908();
  v8 = *(MEMORY[0x277D85A70] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  *(v0 + 128) = v9;
  *v9 = v10;
  v9[1] = sub_26B1750E8;
  v11 = *(v0 + 64);
  v15 = *(v0 + 88);

  return MEMORY[0x282200908](v11, v0 + 56, &unk_26B216C98, v6, v1, v7, 0xD000000000000020, 0x800000026B21F780);
}

uint64_t sub_26B1750E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v3[17] = v0;

  v9 = v3[12];
  if (v0)
  {
    v10 = sub_26B17528C;
  }

  else
  {
    v10 = sub_26B175230;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_26B175230()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 96);
  sub_26B176188();
  OUTLINED_FUNCTION_10_0();

  return v2();
}

uint64_t sub_26B17528C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 96);
  sub_26B176188();
  OUTLINED_FUNCTION_10_0();
  v3 = *(v0 + 136);

  return v2();
}

uint64_t sub_26B1752E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B175308, a3);
}

uint64_t sub_26B175308()
{
  OUTLINED_FUNCTION_12();
  v2 = v0[3];
  v1 = v0[4];
  v3 = sub_26B176908();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = *(MEMORY[0x277D859E0] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_9_2();
  v0[6] = v6;
  *v6 = v7;
  v6[1] = sub_26B175400;
  v8 = v0[2];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v8, v1, v3, 0x293A5F286E7572, 0xE700000000000000, sub_26B178D98, v4, v9);
}

uint64_t sub_26B175400()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  OUTLINED_FUNCTION_10_0();

  return v6();
}

uint64_t sub_26B175500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActorQueue.TaskState();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v11[*(v7 + 28)];
  sub_26B213100();
  v13 = *(v7 + 32);
  sub_26B176B7C();
  (*(*(v14 - 8) + 16))(&v11[v13], a1, v14);
  *v11 = a2;
  swift_beginAccess();
  result = *(a3 + 160);
  v16 = *(result + 24);
  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(a3 + 160);
    if (*(v19 + 16) < v17 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26B176D30(isUniquelyReferenced_nonNull_native, v17);
      v19 = *(a3 + 160);
    }

    sub_26B176FC8((v19 + 16), v19 + ((*(v8 + 80) + 40) & ~*(v8 + 80)), v11);
    swift_endAccess();
    sub_26B175690();
    return sub_26B176CD4(v11);
  }

  return result;
}

uint64_t sub_26B175690()
{
  if (*(v0 + 112) == 1)
  {
    result = swift_beginAccess();
    if (*(*(v0 + 160) + 24))
    {
      swift_beginAccess();
      sub_26B1764B8((v0 + 160));
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_26B175708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_26B213020();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  sub_26B178758(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  result = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v21 - v16;
  if (*(a3 + 112) == 1)
  {
    v18 = *(v10 + 16);
    v18(v17, a2, v7);
    __swift_storeEnumTagSinglePayload(v17, 0, 1, v7);
    v18(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v20 = swift_allocObject();
    *(v20 + 2) = 0;
    *(v20 + 3) = 0;
    *(v20 + 4) = a3;
    (*(v10 + 32))(&v20[v19], &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *&v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = a4;

    sub_26B175C84(0, 0, v17, &unk_26B216C80, v20);
  }

  return result;
}

uint64_t sub_26B175914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26B175938, a4, 0);
}

uint64_t sub_26B175938()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[2];
  sub_26B175994(v0[3], v0[4]);
  OUTLINED_FUNCTION_10_0();

  return v2();
}

uint64_t sub_26B175994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_26B178A68();
  v7 = v6;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActorQueue.TaskState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v19 = (&v37 - v18);
  if (*(v3 + 112) != 1 || (*(v3 + 152) & 1) == 0 && *(v3 + 144) == a2)
  {
    return result;
  }

  v37 = result;
  v38 = v10;
  v39 = v7;
  v40 = a1;
  swift_beginAccess();
  v20 = *(v3 + 160);

  for (i = 0; ; ++i)
  {
    v22 = v20[3];
    if (i == v22)
    {
    }

    if (i >= v22)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v23 = v20[4];
    v24 = i + v23 >= v20[2] ? v20[2] : 0;
    v25 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v26 = *(v12 + 72);
    sub_26B178AD0(v20 + v25 + (i + v23 - v24) * v26, v19);
    v27 = *v19;
    result = sub_26B176CD4(v19);
    if (v27 == a2)
    {
      break;
    }
  }

  swift_beginAccess();
  result = *(v3 + 160);
  if (i >= *(result + 24))
  {
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = v38;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26B20BFB8();
  }

  v30 = *(v3 + 160);
  v31 = *(v30 + 32);
  if (v31 + i >= *(v30 + 16))
  {
    v32 = *(v30 + 16);
  }

  else
  {
    v32 = 0;
  }

  v33 = *(v39 + 48);
  v34 = (v31 - v32 + i) * v26;
  sub_26B178680(v30 + v25 + v34, &v29[v33]);
  sub_26B178680(&v29[v33], v16);
  v35 = *(v37 + 20);
  v36 = sub_26B213020();
  (*(*(v36 - 8) + 24))(&v16[v35], v40, v36);
  sub_26B178AD0(v16, *(v3 + 160) + v25 + v34);
  sub_26B176CD4(v16);
  swift_endAccess();
  return sub_26B175690();
}

uint64_t sub_26B175C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_26B178758(0, &qword_2803E6DE0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v26 - v12;
  sub_26B1788E4(a3, v26 - v12, &qword_2803E6DE0, v9);
  v14 = sub_26B213020();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (v9 == 1)
  {
    sub_26B178964(v13, &qword_2803E6DE0, MEMORY[0x277D85720]);
  }

  else
  {
    sub_26B213010();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26B212F70();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26B212B10() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_26B178964(a3, &qword_2803E6DE0, MEMORY[0x277D85720]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26B178964(a3, &qword_2803E6DE0, MEMORY[0x277D85720]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_26B175FB0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26B1760A8;

  return v7(a1);
}

uint64_t sub_26B1760A8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B176188()
{
  v1 = v0;
  sub_26B176B7C();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_0(v2);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_15();
  sub_26B178758(0, v11, v12, MEMORY[0x277D83D88]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = (&v42 - v19);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  swift_beginAccess();
  if (*(*(v0 + 160) + 24) < 1)
  {
    v24 = type metadata accessor for ActorQueue.TaskState();
    v25 = v22;
    v26 = 1;
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26B20BFB8();
    }

    v23 = *(v0 + 160);
    v24 = type metadata accessor for ActorQueue.TaskState();
    sub_26B1785E4((v23 + 16), v23 + ((*(*(v24 - 8) + 80) + 40) & ~*(*(v24 - 8) + 80)), v22);
    v25 = v22;
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v25, v26, 1, v24);
  swift_endAccess();
  v27 = OUTLINED_FUNCTION_4_10();
  sub_26B1788E4(v27, v20, v28, v29);
  type metadata accessor for ActorQueue.TaskState();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v24);
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_26B178964(v20, v31, v32);
    v33 = 0;
  }

  else
  {
    v33 = *v20;
    sub_26B176CD4(v20);
  }

  *(v1 + 144) = v33;
  *(v1 + 152) = EnumTagSinglePayload == 1;
  v34 = OUTLINED_FUNCTION_4_10();
  sub_26B1788E4(v34, v17, v35, v36);
  if (__swift_getEnumTagSinglePayload(v17, 1, v24) == 1)
  {
    OUTLINED_FUNCTION_0_15();
    sub_26B178964(v22, v37, v38);
    v22 = v17;
  }

  else
  {
    (*(v6 + 16))(v10, &v17[*(v24 + 24)], v3);
    sub_26B176CD4(v17);
    sub_26B212F90();
    (*(v6 + 8))(v10, v3);
  }

  OUTLINED_FUNCTION_0_15();
  return sub_26B178964(v22, v39, v40);
}

uint64_t sub_26B1764B8(uint64_t *a1)
{
  v3 = type metadata accessor for ActorQueue.TaskState();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B20BFB8();
  }

  v9 = *a1;
  v10 = *(v4 + 80);
  v11 = (v10 + 40) & ~v10;
  result = sub_26B178B34((*a1 + 16), *a1 + v11);
  if (!v1 && (result & 1) != 0)
  {
    v13 = *(v9 + 24);
    if ((v13 & 0x8000000000000000) == 0)
    {

      if (v13)
      {
        v14 = sub_26B212ED0();
        *(v14 + 16) = v13;
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      v15 = (v10 + 32) & ~v10;
      v28[1] = v13;
      v29 = 0;
      v28[0] = v14 + v15;
      result = sub_26B178BF4((v9 + 16), v9 + v11, v28, &v29);
      if (v13 < v29)
      {
        goto LABEL_30;
      }

      *(v14 + 16) = v29;

      v30 = v14;
      result = sub_26B176728(&v30);
      v16 = v30;
      v27 = *(v9 + 24);
      if (v27 < 0)
      {
        goto LABEL_31;
      }

      v17 = v15;
      v18 = 0;
      v19 = *(v30 + 16);
      v25 = v30 + v17;
      v26 = v19;
      while (1)
      {
        if (v27 == v18 || v26 == v18)
        {
        }

        if (v18 >= *(v16 + 16))
        {
          break;
        }

        v21 = *(v4 + 72);
        result = sub_26B178AD0(v25 + v21 * v18, v7);
        if (v18 >= *(v9 + 24))
        {
          goto LABEL_28;
        }

        v22 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26B20BFB8();
        }

        v9 = *a1;
        v23 = *(*a1 + 32);
        if ((v18 + v23) >= *(*a1 + 16))
        {
          v24 = *(*a1 + 16);
        }

        else
        {
          v24 = 0;
        }

        sub_26B178D34(v7, v9 + v11 + (v18 + v23 - v24) * v21);
        result = sub_26B176CD4(v7);
        ++v18;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  return result;
}

uint64_t sub_26B176728(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B1D5788(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_26B1772C8(v7);
  *a1 = v3;
  return result;
}

uint64_t ActorQueue.deinit()
{
  v1 = *(v0 + 160);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorQueue.__deallocating_deinit()
{
  v1 = *(v0 + 160);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26B176858()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_3_10(v5);
  *v6 = v7;
  v6[1] = sub_26B1760A8;

  return sub_26B1752E8(v2, v4, v3);
}

unint64_t sub_26B176908()
{
  result = qword_2803E7130;
  if (!qword_2803E7130)
  {
    type metadata accessor for ActorQueue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7130);
  }

  return result;
}

unint64_t sub_26B176984()
{
  result = qword_2803E7138;
  if (!qword_2803E7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7138);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActorQueue.TaskOrder(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ActorQueue.TaskOrder(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_26B176B7C()
{
  if (!qword_2803E7140)
  {
    v0 = sub_26B212FA0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7140);
    }
  }
}

uint64_t type metadata accessor for ActorQueue.TaskState()
{
  result = qword_2803E7148;
  if (!qword_2803E7148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26B176C40()
{
  sub_26B213020();
  if (v0 <= 0x3F)
  {
    sub_26B176B7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26B176CD4(uint64_t a1)
{
  v2 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26B176D30(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = (*v3 + 16);
  v8 = *v7;
  v9 = type metadata accessor for ActorQueue.TaskState();
  v10 = v9;
  if (v8 >= a2)
  {
    v16 = *(v9 - 8);
    v17 = *(v16 + 80);
    sub_26B178758(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
    v18 = *(v16 + 72);
    v15 = swift_allocObject();
    v19 = *(v6 + 24);
    *(v15 + 16) = v8;
    *(v15 + 24) = v19;
    if (v19 >= 1)
    {
      sub_26B20BDB0(v15 + 16, v15 + ((v17 + 40) & ~v17), v7, v6 + ((v17 + 40) & ~v17));
    }
  }

  else
  {
    sub_26B212310();
    v11 = *(v10 - 8);
    v12 = *(v11 + 80);
    if (a1)
    {
      v13 = *(v6 + 24);
      sub_26B178758(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
      v14 = *(v11 + 72);
      v15 = swift_allocObject();
      *(v15 + 16) = sub_26B20BC2C();
      *(v15 + 24) = v13;
      *(v15 + 32) = 0;
      if (v13 >= 1)
      {
        sub_26B177084(v15 + 16, v15 + ((v12 + 40) & ~v12), v7, v6 + ((v12 + 40) & ~v12));
        *(v6 + 24) = 0;
      }
    }

    else
    {
      sub_26B178758(0, &qword_2803E7178, type metadata accessor for ActorQueue.TaskState, MEMORY[0x277CFB8D8]);
      v20 = *(v11 + 72);
      v15 = swift_allocObject();
      v21 = sub_26B20BC2C();
      v22 = *(v6 + 24);
      *(v15 + 16) = v21;
      *(v15 + 24) = v22;
      *(v15 + 32) = 0;
      if (v22 >= 1)
      {
        sub_26B1771A4(v15 + 16, v15 + ((v12 + 40) & ~v12), v7, v6 + ((v12 + 40) & ~v12));
      }
    }
  }

  *v3 = v15;
  return result;
}

void *sub_26B176FC8(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for ActorQueue.TaskState();
        result = sub_26B178AD0(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_26B177084(uint64_t a1, unint64_t a2, void *a3, unint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  if (v9)
  {
    v12 = v5 < v7;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v8 + 72);
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if (v10 >= 1)
  {
    if (a4)
    {
      v15 = a4 + v13 * v4;
      v16 = a2;
      sub_26B1735A8(v15, v10, a2);
      goto LABEL_16;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = 0;
  v16 = a2;
LABEL_16:
  if (v5 < v7 && v9 >= 1)
  {
    if (v14)
    {
      sub_26B1735A8(v14, v9, v16 + v13 * v10);
      return;
    }

LABEL_26:
    __break(1u);
  }
}

void sub_26B1771A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = a3[2];
  v5 = *a3 - v4;
  if (__OFSUB__(*a3, v4))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = a3[1];
  v8 = *(type metadata accessor for ActorQueue.TaskState() - 8);
  if (v5 < v7)
  {
    v9 = v7 - v5;
    if (!__OFSUB__(v7, v5))
    {
      v10 = v5;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v7;
LABEL_6:
  v12 = *(v8 + 72);
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v5 < v7 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_26B1772C8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26B213B80();
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
        type metadata accessor for ActorQueue.TaskState();
        v6 = sub_26B212ED0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActorQueue.TaskState() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_26B177614(v8, v9, a1, v4);
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
    return sub_26B1773F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26B1773F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActorQueue.TaskState();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v29 - v14);
  result = MEMORY[0x28223BE20](v13);
  v19 = (&v29 - v18);
  v31 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v21 = *(v17 + 72);
    v22 = *a4 + v21 * (a3 - 1);
    v23 = -v21;
    v24 = a1 - a3;
    v36 = v20;
    v30 = v21;
    v25 = v20 + v21 * a3;
    while (2)
    {
      v34 = v22;
      v35 = a3;
      v32 = v25;
      v33 = v24;
      do
      {
        sub_26B178AD0(v25, v19);
        sub_26B178AD0(v22, v15);
        v26 = *(v8 + 20);
        if (sub_26B213000())
        {
          v27 = sub_26B212FF0();
        }

        else
        {
          v27 = *v19 < *v15;
        }

        sub_26B176CD4(v15);
        result = sub_26B176CD4(v19);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        sub_26B178680(v25, v12);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_26B178680(v12, v22);
        v22 += v23;
        v25 += v23;
      }

      while (!__CFADD__(v24++, 1));
      a3 = v35 + 1;
      v22 = v34 + v30;
      v24 = v33 - 1;
      v25 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_26B177614(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v123 = a1;
  v6 = type metadata accessor for ActorQueue.TaskState();
  v131 = *(v6 - 8);
  v7 = *(v131 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v137 = &v117 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v117 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v117 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v128 = (&v117 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v117 - v22);
  MEMORY[0x28223BE20](v21);
  v26 = (&v117 - v24);
  v133 = a3;
  v27 = a3[1];
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_107:
    a4 = *v123;
    if (!*v123)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v109 = (v29 + 16);
      for (i = *(v29 + 16); i >= 2; *v109 = i)
      {
        if (!*v133)
        {
          goto LABEL_144;
        }

        v111 = (v29 + 16 * i);
        v112 = *v111;
        v113 = &v109[2 * i];
        v114 = v113[1];
        v115 = v136;
        sub_26B177F5C(*v133 + *(v131 + 72) * *v111, *v133 + *(v131 + 72) * *v113, *v133 + *(v131 + 72) * v114, a4);
        v136 = v115;
        if (v115)
        {
          break;
        }

        if (v114 < v112)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v109)
        {
          goto LABEL_133;
        }

        *v111 = v112;
        v111[1] = v114;
        v116 = *v109 - i;
        if (*v109 < i)
        {
          goto LABEL_134;
        }

        i = *v109 - 1;
        memmove(v113, v113 + 2, 16 * v116);
      }

LABEL_105:

      return;
    }

LABEL_141:
    v29 = sub_26B1783CC(v29);
    goto LABEL_109;
  }

  v118 = a4;
  v119 = v25;
  v28 = 0;
  v29 = MEMORY[0x277D84F90];
  v138 = v6;
  v120 = &v117 - v24;
  v121 = v23;
  v127 = v17;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v124 = v28;
    if (v28 + 1 < v27)
    {
      v129 = v27;
      v32 = *v133;
      v33 = *(v131 + 72);
      v135 = v28 + 1;
      sub_26B178AD0(v32 + v33 * v31, v26);
      v132 = v33;
      sub_26B178AD0(v32 + v33 * v30, v23);
      v34 = *(v6 + 20);
      v35 = sub_26B213000();
      v122 = v29;
      if (v35)
      {
        LODWORD(v130) = sub_26B212FF0();
      }

      else
      {
        LODWORD(v130) = *v26 < *v23;
      }

      sub_26B176CD4(v23);
      sub_26B176CD4(v26);
      v36 = v30 + 2;
      v37 = v132 * (v30 + 2);
      v38 = v32 + v37;
      v39 = v135;
      v40 = v132 * v135;
      v41 = v32 + v132 * v135;
      v42 = v119;
      do
      {
        v29 = v36;
        v43 = v39;
        a4 = v40;
        v44 = v37;
        if (v36 >= v129)
        {
          break;
        }

        v134 = v36;
        v135 = v39;
        sub_26B178AD0(v38, v42);
        v45 = v128;
        sub_26B178AD0(v41, v128);
        v46 = *(v6 + 20);
        v47 = (sub_26B213000() & 1) != 0 ? sub_26B212FF0() : *v42 < *v45;
        sub_26B176CD4(v45);
        sub_26B176CD4(v42);
        v48 = v47 & 1;
        v29 = v134;
        v43 = v135;
        v36 = v134 + 1;
        v38 += v132;
        v41 += v132;
        v39 = v135 + 1;
        v40 = a4 + v132;
        v37 = v44 + v132;
        v6 = v138;
      }

      while ((v130 & 1) == v48);
      if (v130)
      {
        v30 = v124;
        if (v29 < v124)
        {
          goto LABEL_138;
        }

        if (v124 >= v29)
        {
          v31 = v29;
          v29 = v122;
          goto LABEL_33;
        }

        v49 = v124 * v132;
        do
        {
          if (v30 != v43)
          {
            v135 = v43;
            v50 = *v133;
            if (!*v133)
            {
              goto LABEL_145;
            }

            sub_26B178680(v50 + v49, v126);
            v51 = v49 < a4 || v50 + v49 >= (v50 + v44);
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_26B178680(v126, v50 + a4);
            v43 = v135;
          }

          ++v30;
          a4 -= v132;
          v44 -= v132;
          v49 += v132;
        }

        while (v30 < v43--);
        v31 = v29;
        v29 = v122;
        v6 = v138;
      }

      else
      {
        v31 = v29;
        v29 = v122;
      }

      v30 = v124;
    }

LABEL_33:
    v53 = v133[1];
    if (v31 < v53)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_137;
      }

      if (v31 - v30 < v118)
      {
        break;
      }
    }

LABEL_54:
    if (v31 < v30)
    {
      goto LABEL_136;
    }

    v135 = v31;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = *(v29 + 16);
      sub_26B16A72C();
      v29 = v107;
    }

    v63 = *(v29 + 16);
    v64 = v63 + 1;
    v28 = v135;
    if (v63 >= *(v29 + 24) >> 1)
    {
      sub_26B16A72C();
      v28 = v135;
      v29 = v108;
    }

    *(v29 + 16) = v64;
    v65 = v29 + 32;
    v66 = (v29 + 32 + 16 * v63);
    *v66 = v124;
    v66[1] = v28;
    v134 = *v123;
    if (!v134)
    {
      goto LABEL_146;
    }

    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        v68 = (v65 + 16 * (v64 - 1));
        v69 = (v29 + 16 * v64);
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v70 = *(v29 + 32);
          v71 = *(v29 + 40);
          v80 = __OFSUB__(v71, v70);
          v72 = v71 - v70;
          v73 = v80;
LABEL_74:
          if (v73)
          {
            goto LABEL_123;
          }

          v85 = *v69;
          v84 = v69[1];
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_126;
          }

          v89 = v68[1];
          v90 = v89 - *v68;
          if (__OFSUB__(v89, *v68))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v87, v90))
          {
            goto LABEL_131;
          }

          if (v87 + v90 >= v72)
          {
            if (v72 < v90)
            {
              v67 = v64 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v64 < 2)
        {
          goto LABEL_125;
        }

        v92 = *v69;
        v91 = v69[1];
        v80 = __OFSUB__(v91, v92);
        v87 = v91 - v92;
        v88 = v80;
LABEL_89:
        if (v88)
        {
          goto LABEL_128;
        }

        v94 = *v68;
        v93 = v68[1];
        v80 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v80)
        {
          goto LABEL_130;
        }

        if (v95 < v87)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v67 - 1 >= v64)
        {
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
          goto LABEL_140;
        }

        if (!*v133)
        {
          goto LABEL_143;
        }

        v99 = v14;
        v100 = v29;
        v101 = (v65 + 16 * (v67 - 1));
        v102 = *v101;
        v103 = v67;
        v104 = (v65 + 16 * v67);
        v29 = v104[1];
        v105 = v136;
        sub_26B177F5C(*v133 + *(v131 + 72) * *v101, *v133 + *(v131 + 72) * *v104, *v133 + *(v131 + 72) * v29, v134);
        v136 = v105;
        if (v105)
        {
          goto LABEL_105;
        }

        if (v29 < v102)
        {
          goto LABEL_118;
        }

        a4 = *(v100 + 16);
        if (v103 > a4)
        {
          goto LABEL_119;
        }

        *v101 = v102;
        v101[1] = v29;
        if (v103 >= a4)
        {
          goto LABEL_120;
        }

        v64 = a4 - 1;
        memmove(v104, v104 + 2, 16 * (a4 - 1 - v103));
        v29 = v100;
        *(v100 + 16) = a4 - 1;
        v28 = v135;
        v14 = v99;
        v17 = v127;
        if (a4 <= 2)
        {
          goto LABEL_103;
        }
      }

      v74 = v65 + 16 * v64;
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_121;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_122;
      }

      v81 = v69[1];
      v82 = v81 - *v69;
      if (__OFSUB__(v81, *v69))
      {
        goto LABEL_124;
      }

      v80 = __OFADD__(v72, v82);
      v83 = v72 + v82;
      if (v80)
      {
        goto LABEL_127;
      }

      if (v83 >= v77)
      {
        v97 = *v68;
        v96 = v68[1];
        v80 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v80)
        {
          goto LABEL_135;
        }

        if (v72 < v98)
        {
          v67 = v64 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v27 = v133[1];
    v6 = v138;
    v26 = v120;
    v23 = v121;
    if (v28 >= v27)
    {
      goto LABEL_107;
    }
  }

  v54 = v30 + v118;
  if (__OFADD__(v30, v118))
  {
    goto LABEL_139;
  }

  if (v54 >= v53)
  {
    v54 = v133[1];
  }

  if (v54 < v30)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v31 == v54)
  {
    goto LABEL_54;
  }

  v122 = v29;
  v55 = *v133;
  v56 = *(v131 + 72);
  v57 = *v133 + v56 * (v31 - 1);
  v58 = -v56;
  v59 = v30 - v31;
  v125 = v56;
  a4 = v55 + v31 * v56;
  v129 = v54;
LABEL_42:
  v134 = v57;
  v135 = v31;
  v130 = a4;
  v132 = v59;
  while (1)
  {
    sub_26B178AD0(a4, v17);
    sub_26B178AD0(v57, v14);
    v60 = *(v6 + 20);
    if (sub_26B213000())
    {
      v61 = sub_26B212FF0();
    }

    else
    {
      v61 = *v17 < *v14;
    }

    sub_26B176CD4(v14);
    sub_26B176CD4(v17);
    if ((v61 & 1) == 0)
    {
      v6 = v138;
LABEL_52:
      v31 = v135 + 1;
      v57 = v134 + v125;
      v59 = v132 - 1;
      a4 = v130 + v125;
      if (v135 + 1 == v129)
      {
        v31 = v129;
        v29 = v122;
        v30 = v124;
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (!v55)
    {
      break;
    }

    v62 = v137;
    sub_26B178680(a4, v137);
    v6 = v138;
    swift_arrayInitWithTakeFrontToBack();
    sub_26B178680(v62, v57);
    v57 += v58;
    a4 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_26B177F5C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v53 = type metadata accessor for ActorQueue.TaskState();
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v51 = (&v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v47 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v47 - v17);
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  v22 = a2 - a1 == 0x8000000000000000 && v20 == -1;
  if (v22)
  {
    goto LABEL_67;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_68;
  }

  v25 = v21 / v20;
  v56 = a1;
  v55 = a4;
  v26 = v23 / v20;
  if (v21 / v20 >= v23 / v20)
  {
    v49 = v16;
    sub_26B1735A8(a2, v23 / v20, a4);
    v33 = a4 + v26 * v20;
    v34 = -v20;
    v35 = v33;
    v52 = -v20;
LABEL_40:
    v50 = a2 + v34;
    v36 = a3;
    v47 = v35;
    while (1)
    {
      if (v33 <= a4)
      {
        v56 = a2;
        v54 = v35;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v48 = v35;
      v37 = v33 + v34;
      v38 = v49;
      sub_26B178AD0(v33 + v34, v49);
      v39 = v51;
      sub_26B178AD0(v50, v51);
      v40 = *(v53 + 20);
      if (sub_26B213000())
      {
        v41 = sub_26B212FF0();
      }

      else
      {
        v41 = *v38 < *v39;
      }

      v42 = v39;
      a3 = v36 + v52;
      sub_26B176CD4(v42);
      sub_26B176CD4(v38);
      if (v41)
      {
        if (v36 < a2 || a3 >= a2)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v48;
          v34 = v52;
        }

        else
        {
          v35 = v48;
          v22 = v36 == a2;
          v45 = v50;
          a2 = v50;
          v34 = v52;
          if (!v22)
          {
            v46 = v48;
            swift_arrayInitWithTakeBackToFront();
            a2 = v45;
            v35 = v46;
          }
        }

        goto LABEL_40;
      }

      if (v36 < v33 || a3 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v36 = a3;
        v33 = v37;
        v35 = v37;
        v34 = v52;
      }

      else
      {
        v35 = v37;
        v22 = v33 == v36;
        v36 = a3;
        v33 = v37;
        v34 = v52;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          v36 = a3;
          v33 = v37;
          v35 = v37;
        }
      }
    }

    v56 = a2;
    v54 = v47;
  }

  else
  {
    sub_26B1735A8(a1, v21 / v20, a4);
    v27 = a4 + v25 * v20;
    v54 = v27;
    while (a4 < v27 && a2 < a3)
    {
      sub_26B178AD0(a2, v18);
      sub_26B178AD0(a4, v14);
      v29 = *(v53 + 20);
      if (sub_26B213000())
      {
        v30 = sub_26B212FF0();
      }

      else
      {
        v30 = *v18 < *v14;
      }

      sub_26B176CD4(v14);
      sub_26B176CD4(v18);
      if (v30)
      {
        if (a1 < a2 || a1 >= a2 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v20;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v20)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v55 = a4 + v20;
        a4 += v20;
      }

      a1 += v20;
      v56 = a1;
    }
  }

LABEL_65:
  sub_26B1783E0(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_26B1783E0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ActorQueue.TaskState();
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

char *sub_26B1784C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26B178758(0, &qword_2803E7048, sub_26B16C964, MEMORY[0x277D84560]);
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

uint64_t sub_26B1785E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for ActorQueue.TaskState();
  result = sub_26B178680(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26B178680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26B1786E4()
{
  if (!qword_2803E7160)
  {
    sub_26B178DA0(255, &qword_2803E7168, MEMORY[0x277D83940]);
    v0 = sub_26B2141E0();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E7160);
    }
  }
}

void sub_26B178758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26B1787BC(uint64_t a1)
{
  v3 = *(sub_26B213020() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_3_10(v9);
  *v10 = v11;
  v10[1] = sub_26B1760A8;

  return sub_26B175914(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_26B1788E4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_26B178758(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26B178964(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_26B178758(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_26B1789D4()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_3_10(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_11(v4);

  return v7(v6);
}

void sub_26B178A68()
{
  if (!qword_2803E7170)
  {
    type metadata accessor for ActorQueue.TaskState();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E7170);
    }
  }
}

uint64_t sub_26B178AD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_26B178B34(uint64_t *result, uint64_t a2)
{
  v3 = result[2];
  v4 = *result;
  v5 = result[1] + v3;
  if (*result >= v5)
  {
    if (v5 < v3)
    {
      __break(1u);
    }

    else
    {
      v7 = type metadata accessor for ActorQueue.TaskState();
      v9 = *(v7 - 8);
      result = (v7 - 8);
      v8 = v9;
      if (!__OFSUB__(v5, v3))
      {
        v10[0] = a2 + *(v8 + 72) * v3;
        v10[1] = v5 - v3;
        result = sub_26B1772C8(v10);
        if (v2)
        {
          return result;
        }

        return (v4 < v5);
      }
    }

    __break(1u);
    return result;
  }

  return (v4 < v5);
}

uint64_t sub_26B178BF4(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = sub_26B20BCF0(a1, a2, &v17);
  v7 = v18;
  if (v18 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17)
  {
    if (v18)
    {
      v8 = *a3;
      type metadata accessor for ActorQueue.TaskState();
      result = swift_arrayInitWithCopy();
    }
  }

  v9 = *a4 + v7;
  if (__OFADD__(*a4, v7))
  {
    goto LABEL_20;
  }

  *a4 = v9;
  if (v21)
  {
    return result;
  }

  v10 = v20;
  if (__OFADD__(v7, v20))
  {
    goto LABEL_21;
  }

  v11 = v20;
  if (v7 + v20 < v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v19;
  v13 = *a3;
  if (v13)
  {
    v14 = type metadata accessor for ActorQueue.TaskState();
    v15 = *(v14 - 8);
    result = v14 - 8;
    v16 = v13 + *(v15 + 72) * v7;
    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else if (!v19)
  {
    goto LABEL_16;
  }

  if (v10)
  {
    if (v11 < v10)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    type metadata accessor for ActorQueue.TaskState();
    result = swift_arrayInitWithCopy();
    v9 = *a4;
  }

LABEL_16:
  if (__OFADD__(v9, v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *a4 = v9 + v10;
  return result;
}

uint64_t sub_26B178D34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActorQueue.TaskState();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_26B178DA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D83690]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26B178DF4()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_10(v6);
  *v7 = v8;
  v7[1] = sub_26B178E9C;

  return sub_26B175FB0(v2, v4);
}

uint64_t ActorSemaphore.__allocating_init(value:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ActorSemaphore.init(value:)(a1);
  return v2;
}

uint64_t ActorSemaphore.init(value:)(uint64_t a1)
{
  result = swift_defaultActor_initialize();
  *(v1 + 120) = MEMORY[0x277D84F90];
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 112) = a1;
    return v1;
  }

  return result;
}

uint64_t sub_26B178F44(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  v5 = *(v4 + 112);
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  *(v4 + 112) = v7;
  if (v7 < 0)
  {
    v10 = *(v3 + 104);
    sub_26B179214();
    swift_getObjectType();
    v11 = sub_26B212F70();
    v13 = v12;
    a1 = sub_26B179018;
    a2 = v11;
    a3 = v13;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_26B179018()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_26B17910C;
  v2 = swift_continuation_init();
  swift_beginAccess();
  sub_26B16A48C();
  v3 = *(*(v1 + 120) + 16);
  sub_26B16A65C(v3);
  v4 = *(v1 + 120);
  *(v4 + 16) = v3 + 1;
  *(v4 + 8 * v3 + 32) = v2;
  *(v1 + 120) = v4;
  swift_endAccess();

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26B17910C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_26B179214()
{
  result = qword_2803E7180;
  if (!qword_2803E7180)
  {
    type metadata accessor for ActorSemaphore();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7180);
  }

  return result;
}

Swift::Void __swiftcall ActorSemaphore.signal()()
{
  v1 = *(v0 + 112);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 112) = v3;
    swift_beginAccess();
    if (*(*(v0 + 120) + 16))
    {
      if (!sub_26B179510())
      {
        sub_26B179438(*(*(v0 + 120) + 16) - 1);
      }

      swift_endAccess();
      swift_continuation_throwingResume();
    }

    else
    {
      swift_endAccess();
    }
  }
}

uint64_t ActorSemaphore.deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActorSemaphore.__deallocating_deinit()
{
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_26B1793B0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B16BAE8(v3);
    v3 = v10;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    v6 = v4 - 1 - a1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    sub_26B152C58((v7 + 48), v6, (v7 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

uint64_t sub_26B179438(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B16BB24(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = &v3[a1];
    v9 = v8[4];
    sub_26B173F04(v8 + 5, v7, v8 + 4);
    v3[2] = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void sub_26B1794B4()
{
  v1 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_26B16BAE8(v1);
    v1 = v7;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2 - 1;
    v4 = v1 + 16 * v3;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    *(v1 + 16) = v3;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26B179510()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26B16BB24(v1);
    v1 = result;
  }

  v3 = v1[2];
  if (v3)
  {
    v4 = v3 - 1;
    result = v1[v4 + 4];
    v1[2] = v4;
    *v0 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static UnknownKeyCodable._decodeUnknownKeys(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v35 = v7;
  swift_getAssociatedTypeWitness();
  v32 = v4;
  v33 = v2;
  OUTLINED_FUNCTION_26_2();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_3();
  v8 = sub_26B213B20();
  v34 = sub_26B2133E0();
  OUTLINED_FUNCTION_0(v34);
  v10 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  OUTLINED_FUNCTION_9_0();
  v31 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  v22 = *(v6 + 24);
  v23 = *(v6 + 32);
  v24 = OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_19_2(v24, v25);
  OUTLINED_FUNCTION_17_3();
  sub_26B2140F0();
  if (v0)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    (*(v10 + 8))(v15, v34);
    v26 = 0;
    v27 = 2;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    v29 = v31;
    (*(v31 + 32))(v21, v15, v8);
    v26 = sub_26B179B48();
    (*(v29 + 8))(v21, v8);
    v27 = 0;
  }

  v28 = v35;
  *v35 = v26;
  *(v28 + 8) = v27;
  OUTLINED_FUNCTION_10_2();
}

void UnknownKeyCodable._encode(to:with:)()
{
  OUTLINED_FUNCTION_11_6();
  v37 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_13_6();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_17_3();
  v5 = sub_26B213B70();
  OUTLINED_FUNCTION_0(v5);
  v36 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = *v0;
  v13 = *(v0 + 8);
  v14 = *(v4 + 16);
  sub_26B212970();
  if (v2 || (v37 = v12, v13))
  {
LABEL_16:
    OUTLINED_FUNCTION_10_2();
    return;
  }

  v15 = v1[4];
  OUTLINED_FUNCTION_19_2(v1, v1[3]);
  v16 = v37;
  sub_26B2128F0();
  OUTLINED_FUNCTION_17_3();
  v17 = v16;
  sub_26B214120();
  v18 = 0;
  v19 = v16 + 8;
  v20 = 1 << *(v16 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v16[8];
  v23 = (v20 + 63) >> 6;
  v24 = v5;
  if (v22)
  {
    while (1)
    {
      v25 = v18;
LABEL_11:
      v27 = __clz(__rbit64(v22)) | (v25 << 6);
      v28 = v17[7];
      v29 = (v17[6] + 16 * v27);
      v31 = *v29;
      v30 = v29[1];
      sub_26B179D68(v28 + 48 * v27, &v40);
      v34 = v40;
      v35 = v41;
      v32 = v42;
      v33 = v43;
      sub_26B2128F0();
      if (!v30)
      {
        break;
      }

      v40 = v34;
      v41 = v35;
      v42 = v32;
      v43 = v33;
      v38 = v31;
      v39 = v30;
      sub_26B179DA0();
      v24 = v5;
      sub_26B213B50();
      v22 &= v22 - 1;
      sub_26B179DF4(&v40);

      v18 = v25;
      v17 = v37;
      if (!v22)
      {
        goto LABEL_7;
      }
    }

    v24 = v5;
    v26 = v36;
LABEL_15:
    (*(v26 + 8))(v11, v24);

    goto LABEL_16;
  }

LABEL_7:
  v26 = v36;
  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      goto LABEL_15;
    }

    v22 = v19[v25];
    ++v18;
    if (v22)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_26B179B48()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UnknownKeys();
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v8 = sub_26B212860();
  OUTLINED_FUNCTION_0_16();
  swift_getWitnessTable();
  sub_26B213B20();
  v1 = sub_26B213B10();
  v7 = sub_26B212E50();
  while (1)
  {
    if (v7 == sub_26B212EF0())
    {

      return v8;
    }

    v2 = sub_26B212EE0();
    sub_26B212E80();
    if ((v2 & 1) == 0)
    {
      break;
    }

    v3 = (v1 + 32 + 16 * v7);
    v4 = *v3;
    v5 = v3[1];
    sub_26B2128F0();
    sub_26B212F30();
    sub_26B17AF3C();
    sub_26B213AF0();
    if (v0)
    {
    }

    sub_26B212940();
    sub_26B212960();
  }

  result = sub_26B213730();
  __break(1u);
  return result;
}

unint64_t sub_26B179DA0()
{
  result = qword_2803E7188;
  if (!qword_2803E7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7188);
  }

  return result;
}

void Optional<A>._encode(to:with:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = *(v4 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v2);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v15;
  v17 = *(v15 + 8);
  (*(v18 + 16))(v14, v19);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    v20 = *(v3 + 24);
    v21 = *(v3 + 32);
    v22 = OUTLINED_FUNCTION_18_3();
    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_26_2();
    sub_26B214110();
    v24 = OUTLINED_FUNCTION_6_10();
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_26_2();
    sub_26B213E90();
    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    (*(v6 + 32))(v10, v14, v5);
    v27 = v16;
    v28 = v17;
    (*(v1 + 48))(v3, &v27, v5, v1);
    (*(v6 + 8))(v10, v5);
  }

  OUTLINED_FUNCTION_10_2();
}

void static Array<A>._decodeUnknownKeys(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v33 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v30 = v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for UnknownKeys();
  OUTLINED_FUNCTION_0_16();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_26B213B20();
  OUTLINED_FUNCTION_0(v9);
  v29 = v10;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  v16 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v17 = v33;
  sub_26B2140D0();
  if (v17)
  {

    v35 = 0;
    memset(v34, 0, sizeof(v34));
    sub_26B17B120(v34, &qword_2803E7190, sub_26B17A3A0);
    v18 = v30;
    *v30 = 0;
    *(v18 + 8) = 2;
  }

  else
  {
    v28 = v2;
    v32 = v9;
    v33 = WitnessTable;
    v31 = v4;
    sub_26B150514(v34, v36);
    OUTLINED_FUNCTION_1_13();
    swift_getWitnessTable();
    sub_26B212940();
    *&v34[0] = sub_26B212870();
    v19 = OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_19_2(v19, v20);
    OUTLINED_FUNCTION_26_2();
    sub_26B213BD0();
    if ((v21 & 1) == 0)
    {
      sub_26B212F50();
      sub_26B212E90();
    }

    for (i = (v29 + 8); ; (*i)(v15, v32))
    {
      v23 = OUTLINED_FUNCTION_6_10();
      OUTLINED_FUNCTION_19_2(v23, v24);
      OUTLINED_FUNCTION_26_2();
      if (sub_26B213BE0())
      {
        break;
      }

      v25 = OUTLINED_FUNCTION_6_10();
      __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      sub_26B213BC0();
      sub_26B179B48();
      sub_26B212F50();
      sub_26B212F00();
    }

    v27 = v30;
    *v30 = *&v34[0];
    *(v27 + 8) = 1;
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  OUTLINED_FUNCTION_10_2();
}

unint64_t sub_26B17A3A0()
{
  result = qword_2803E7198;
  if (!qword_2803E7198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E7198);
  }

  return result;
}

void Array<A>._encode(to:with:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  swift_getAssociatedTypeWitness();
  v66 = v3;
  OUTLINED_FUNCTION_18_3();
  swift_getAssociatedConformanceWitness();
  v12 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_0_16();
  WitnessTable = swift_getWitnessTable();
  v72 = sub_26B213B70();
  OUTLINED_FUNCTION_0(v72);
  *&v74 = v13;
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_9_0();
  *&v73 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v20);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1_13();
  swift_getWitnessTable();
  v63 = v12;
  v23 = sub_26B212940();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = *(*(sub_26B2133E0() - 8) + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v26);
  v71 = &v57 - v27;
  if (*(v9 + 8) != 1 || (v28 = *v9, v29 = sub_26B212EF0(), v29 != sub_26B212EF0()))
  {
LABEL_22:
    OUTLINED_FUNCTION_12_0();
    __break(1u);
    return;
  }

  v70 = v23;
  v30 = v11;
  v31 = v11[3];
  v32 = v11[4];
  __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_26B214100();
  *&v75 = v7;
  *&v81 = v28;
  v33 = sub_26B212F50();
  v34 = sub_26B212F50();
  v35 = swift_getWitnessTable();
  v36 = swift_getWitnessTable();
  sub_26B213EF0();
  v81 = v79;
  v70 = v33;
  *&v75 = v33;
  v69 = v34;
  *(&v75 + 1) = v34;
  v68 = v35;
  *&v76 = v35;
  v67 = v36;
  *(&v76 + 1) = v36;
  sub_26B213720();
  sub_26B2136F0();
  v65 = v73 + 32;
  v59 = v74 + 8;
  v64 = v73 + 8;
  v37 = v71;
  v61 = v5;
  v60 = v22;
  v58 = TupleTypeMetadata2;
  while (1)
  {
    *&v75 = v70;
    *(&v75 + 1) = v69;
    *&v76 = v68;
    *(&v76 + 1) = v67;
    sub_26B213710();
    sub_26B213700();
    if (__swift_getEnumTagSinglePayload(v37, 1, TupleTypeMetadata2) == 1)
    {

      goto LABEL_20;
    }

    v38 = *(v37 + *(TupleTypeMetadata2 + 48));
    OUTLINED_FUNCTION_9_1(v83);
    v39(v22, v37, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v83, v83[3]);
    sub_26B213C90();
    v40 = *(v66 + 16);
    sub_26B212970();
    if (v1)
    {
      break;
    }

    OUTLINED_FUNCTION_19_2(&v79, v80);
    sub_26B214120();
    v41 = 0;
    v42 = 1 << *(v38 + 32);
    if (v42 < 64)
    {
      v43 = ~(-1 << v42);
    }

    else
    {
      v43 = -1;
    }

    v44 = v43 & *(v38 + 64);
    v45 = (v42 + 63) >> 6;
    if (v44)
    {
      while (1)
      {
        v46 = v41;
LABEL_14:
        v47 = __clz(__rbit64(v44)) | (v46 << 6);
        v48 = (*(v38 + 48) + 16 * v47);
        v49 = *v48;
        v50 = v48[1];
        sub_26B179D68(*(v38 + 56) + 48 * v47, &v75);
        v74 = v76;
        v73 = v75;
        v51 = v77;
        v52 = v78;
        sub_26B2128F0();
        if (!v50)
        {
          break;
        }

        v75 = v73;
        v76 = v74;
        v77 = v51;
        v78 = v52;
        *&v81 = v49;
        *(&v81 + 1) = v50;
        sub_26B179DA0();
        sub_26B213B50();
        v44 &= v44 - 1;
        sub_26B179DF4(&v75);

        v41 = v46;
        if (!v44)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      while (1)
      {
LABEL_11:
        v46 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_22;
        }

        if (v46 >= v45)
        {
          break;
        }

        v44 = *(v38 + 64 + 8 * v46);
        ++v41;
        if (v44)
        {
          goto LABEL_14;
        }
      }
    }

    v53 = OUTLINED_FUNCTION_8_9();
    v54(v53);
    OUTLINED_FUNCTION_9_1(&v82);
    v22 = v60;
    v5 = v61;
    v55(v60, v61);
    __swift_destroy_boxed_opaque_existential_1(&v79);
    TupleTypeMetadata2 = v58;
    v37 = v71;
  }

  OUTLINED_FUNCTION_9_1(&v82);
  v56(v22, v5);

  __swift_destroy_boxed_opaque_existential_1(&v79);
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v83);
  OUTLINED_FUNCTION_10_2();
}

void sub_26B17AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 - 8);
  v4 = *(a2 + 16);
  static Array<A>._decodeUnknownKeys(from:)();
}

void sub_26B17AB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = *v4;
  v7 = *(a3 + 16);
  Array<A>._encode(to:with:)();
}

uint64_t AnyCodable.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B2140E0();
  if (!v2)
  {
    OUTLINED_FUNCTION_19_2(v34, v35);
    if (sub_26B213E60())
    {
      v37 = 0u;
      v38 = 0u;
      v36 = 0u;
    }

    else
    {
      v39 = v3;
      v14 = MEMORY[0x277D839B0];
      *&v15 = MEMORY[0x277D839D0];
      *(&v15 + 1) = MEMORY[0x277D839B8];
      v16 = MEMORY[0x277D83B88];
      v17 = MEMORY[0x277D83BB8];
      v18 = MEMORY[0x277D83B90];
      v19 = MEMORY[0x277D83E88];
      v20 = MEMORY[0x277D83EB0];
      v21 = MEMORY[0x277D83E90];
      v22 = MEMORY[0x277D839F8];
      v23 = MEMORY[0x277D83A30];
      v24 = MEMORY[0x277D83A08];
      v25 = MEMORY[0x277D837D0];
      v26 = MEMORY[0x277D83808];
      v27 = MEMORY[0x277D837D8];
      sub_26B17AEEC();
      v28 = v6;
      v29 = sub_26B17AF90(&qword_2803E71A8, sub_26B17AF3C);
      v30 = sub_26B17AF90(&qword_2803E71B8, sub_26B179DA0);
      sub_26B17AFF8();
      v31 = v7;
      v32 = sub_26B17B058(&qword_2803E71C8, sub_26B17AF3C);
      v33 = sub_26B17B058(&qword_2803E71D0, sub_26B179DA0);
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v12 = v8;
      v13 = v15;
      __swift_allocate_boxed_opaque_existential_0(&v11);
      sub_26B213E50();
      sub_26B17B230(&v11, &v36);
      v3 = v39;
    }

    __swift_destroy_boxed_opaque_existential_1(v34);
    v9 = v37;
    *a2 = v36;
    a2[1] = v9;
    a2[2] = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

void sub_26B17AEEC()
{
  if (!qword_2803E71A0)
  {
    v0 = sub_26B212F50();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E71A0);
    }
  }
}

unint64_t sub_26B17AF3C()
{
  result = qword_2803E71B0;
  if (!qword_2803E71B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E71B0);
  }

  return result;
}

uint64_t sub_26B17AF90(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_26B17AEEC();
    a2();
    OUTLINED_FUNCTION_18_3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26B17AFF8()
{
  if (!qword_2803E71C0)
  {
    v0 = sub_26B212940();
    if (!v1)
    {
      atomic_store(v0, &qword_2803E71C0);
    }
  }
}

uint64_t sub_26B17B058(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_26B17AFF8();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_2(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x26D6723F0);
  }

  return result;
}

uint64_t sub_26B17B120(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_26B17B178(0, a2, a3);
  OUTLINED_FUNCTION_16(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void sub_26B17B178(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26B2133E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_26B17B1CC()
{
  result = qword_2803E71E0;
  if (!qword_2803E71E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2803E71E0);
  }

  return result;
}

_OWORD *sub_26B17B230(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26B214110();
  sub_26B179D68(v1, &v6);
  if (v7)
  {
    sub_26B17B230(&v6, v4);
    __swift_project_boxed_opaque_existential_1(v4, v5);
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    sub_26B213E80();
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v8, v9);
    OUTLINED_FUNCTION_26_2();
    sub_26B213E90();
  }

  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t UnknownKeys.stringValue.getter()
{
  OUTLINED_FUNCTION_13_6();
  sub_26B2128F0();
  return v0;
}

uint64_t UnknownKeys.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UnknownKeys.init(stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26B2133E0();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_26B2128F0();
  sub_26B214170();
  if (__swift_getEnumTagSinglePayload(v12, 1, a3) != 1)
  {

    a1 = 0;
  }

  (*(v7 + 8))(v12, v5);
  return a1;
}

uint64_t static UnknownKeys.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26B213E30();
  }
}

uint64_t UnknownKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_13_6();
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  return sub_26B214070();
}

uint64_t sub_26B17B5A0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_26B2128F0();
  return v1;
}

uint64_t sub_26B17B5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a3 + 24);
  result = UnknownKeys.init(stringValue:)(a1, a2, *(a3 + 16));
  *a4 = result;
  a4[1] = v7;
  return result;
}

uint64_t sub_26B17B608()
{
  v1 = *v0;
  v2 = v0[1];
  return UnknownKeys.hashValue.getter();
}

uint64_t sub_26B17B618()
{
  sub_26B214030();
  UnknownKeys.hash(into:)(v2, *v0, v0[1]);
  return sub_26B214070();
}

uint64_t sub_26B17B658(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26B17B6AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t UnknownKeyCoding.init(wrappedValue:)()
{
  OUTLINED_FUNCTION_13_6();
  v3 = v2;
  v4 = (v2 + *(type metadata accessor for UnknownKeyCoding() + 36));
  *v4 = 0;
  *(v4 + 8) = 2;
  OUTLINED_FUNCTION_16(v0);
  (*(v5 + 32))(v3, v1, v0);
  v6 = *v4;

  *v4 = 0;
  *(v4 + 8) = 2;
  return result;
}

uint64_t UnknownKeyCoding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_9_0();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (a4 + *(type metadata accessor for UnknownKeyCoding() + 36));
  *v16 = 0;
  *(v16 + 8) = 2;
  sub_26B16BCF8(a1, &v23);
  v17 = *(a3 + 8);
  sub_26B2131B0();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    (*(v10 + 32))(a4, v15, a2);
    (*(a3 + 40))(&v23, a1, a2, a3);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v19 = v23;
    v20 = v24;
    v21 = *v16;

    *v16 = v19;
    *(v16 + 8) = v20;
  }

  return result;
}

uint64_t UnknownKeyCoding.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + *(a2 + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  v10 = v5;
  v11 = v4;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(v6 + 48);
  sub_26B2128F0();
  v8(a1, &v10, v7, v6);
}

uint64_t AnyCodingKey.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_26B214180();
  if (v4)
  {
    v5 = sub_26B214160();
  }

  else
  {
    v5 = sub_26B213B90();
  }

  v6 = v5;
  OUTLINED_FUNCTION_16(a2);
  (*(v7 + 8))(a1, a2);
  return v6;
}

uint64_t AnyCodingKey.stringValue.getter()
{
  OUTLINED_FUNCTION_13_6();
  sub_26B2128F0();
  return v0;
}

uint64_t AnyCodingKey.stringValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnyCodingKey.intValue.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t static AnyCodingKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_26B213E30(), result = 0, (v13 & 1) != 0))
  {
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
        return 0;
      }
    }

    else if ((a8 & 1) != 0 || a3 != a7)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t AnyCodingKey.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  if (a5)
  {
    return sub_26B214060();
  }

  sub_26B214060();
  return MEMORY[0x26D671480](a4);
}

uint64_t AnyCodingKey.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26B214030();
  _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  sub_26B214060();
  if ((a4 & 1) == 0)
  {
    MEMORY[0x26D671480](a3);
  }

  return sub_26B214070();
}

uint64_t sub_26B17BE4C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_26B17BE58(Swift::Int a1@<X0>, SonicFoundation::AnyCodingKey_optional *a2@<X8>)
{
  AnyCodingKey.init(intValue:)(a2, a1);
  a2->value.stringValue._countAndFlagsBits = v3;
  a2->value.stringValue._object = v4;
  a2->value.intValue.value = v5;
  a2->value.intValue.is_nil = 0;
}

uint64_t sub_26B17BEA8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_26B214030();
  AnyCodingKey.hash(into:)(v6, v1, v2, v3, v4);
  return sub_26B214070();
}

uint64_t sub_26B17BF08(uint64_t a1)
{
  v2 = sub_26B17CCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26B17BF44(uint64_t a1)
{
  v2 = sub_26B17CCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void TransparentCodable.init(from:)()
{
  OUTLINED_FUNCTION_11_6();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v15 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16(AssociatedTypeWitness);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-1] - v12;
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_26B2140E0();
  if (!v0)
  {
    OUTLINED_FUNCTION_19_2(v16, v16[3]);
    swift_getAssociatedConformanceWitness();
    sub_26B213E50();
    (*(v2 + 56))(v13, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v6);
  OUTLINED_FUNCTION_10_2();
}

void TransparentCodable.encode(to:)()
{
  OUTLINED_FUNCTION_11_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0(AssociatedTypeWitness);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v16[-1] - v12;
  v14 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_26B214110();
  (*(v1 + 48))(v3, v1);
  __swift_mutable_project_boxed_opaque_existential_1(v16, v16[3]);
  swift_getAssociatedConformanceWitness();
  sub_26B213E80();
  (*(v8 + 8))(v13, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B17C2D8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}