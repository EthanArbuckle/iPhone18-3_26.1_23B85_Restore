void sub_2754311BC()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DADE8, &_s14descr2884101A1C2IDVN);
      v9 = OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_9_6(v9);
      OUTLINED_FUNCTION_7_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440E4C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_12();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275431274()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DAE28, &_s14LoudnessSampleVN);
      v9 = OUTLINED_FUNCTION_15_5();
      OUTLINED_FUNCTION_9_6(v9);
      OUTLINED_FUNCTION_7_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440E4C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_12_6();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275431328()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DB5B8, &_s22BeatStabilityMapRegionVN);
      v9 = OUTLINED_FUNCTION_13_6();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_8_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440E6C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_12();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2754314A0(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v13 == v14)
  {
LABEL_7:
    v15 = *(a4 + 16);
    if (v12 <= v15)
    {
      v16 = *(a4 + 16);
    }

    else
    {
      v16 = v12;
    }

    if (v16)
    {
      sub_2754241A0(0, a5, a6);
      v17 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v15;
      v17[3] = 2 * ((v18 - 32) / 40);
      if (a1)
      {
LABEL_12:
        a8(a4 + 32, v15, v17 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    sub_2753F1680(0, a6);
    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v13)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2754315B8()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DB5A8, &_s18SongStructureEventON);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_6(v9);
      OUTLINED_FUNCTION_7_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440E0C(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_12_6();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275431674()
{
  OUTLINED_FUNCTION_11_8();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_0_29(v9, &qword_2809DB5E8, &_s21VocalActivityStrengthON);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v2;
      v10[3] = 2 * v11 - 64;
      if (v1)
      {
LABEL_9:
        v12 = OUTLINED_FUNCTION_3_18();
        sub_275444334(v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v13 = OUTLINED_FUNCTION_6_12();
    memcpy(v13, v14, v15);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275431730()
{
  OUTLINED_FUNCTION_11_8();
  if (v3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_10_7();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_275431FF4(v7, v4);
  v9 = *(sub_27546E490() - 8);
  if (v1)
  {
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    sub_275440F08(v0 + v10, v7, v8 + v10);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_275431804()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DB5A0, &_s22VocalActivityMapRegionVN);
      v9 = OUTLINED_FUNCTION_13_6();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_8_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440EC0(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    v14 = OUTLINED_FUNCTION_12_6();
    memcpy(v14, v15, v16);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2754318C4()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DB5F0, &_s27StructuredStylingRegionPairVN);
      v9 = OUTLINED_FUNCTION_13_6();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_8_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275440FBC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_12();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2754319AC()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DB0B0, &_s13StylingResultVN);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_9_6(v9);
      OUTLINED_FUNCTION_7_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275441008(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_12();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275431A94(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      sub_2754323B8(0, a5, a6, MEMORY[0x277D84560]);
      v16 = swift_allocObject();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v14;
      v16[3] = 2 * ((v17 - 32) / 80);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v12)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_275431BA8()
{
  OUTLINED_FUNCTION_11_8();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_4_13(v5);
    if (v2)
    {
      OUTLINED_FUNCTION_0_29(v8, &qword_2809DB600, &_s23StructuredStylingRegionVN);
      v9 = OUTLINED_FUNCTION_13_6();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_8_11(v10);
      if (v1)
      {
LABEL_9:
        v11 = OUTLINED_FUNCTION_3_18();
        sub_275441050(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_6_12();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_275431C68(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      sub_2754323B8(0, &qword_2809DB580, &type metadata for TransitionTime, MEMORY[0x277D84560]);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_275440E2C((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), 8 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_275431DA0(char a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_25();
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
      sub_2754323B8(0, a5, a6, MEMORY[0x277D84560]);
      v15 = OUTLINED_FUNCTION_15_5();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 32);
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

    memcpy(v15 + 4, (a4 + 32), 32 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_7();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_22();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_275431E9C(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_0_29(a1, &qword_2809DB580, &type metadata for TransitionTime);
  v4 = OUTLINED_FUNCTION_15_5();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_275431F10(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_0_29(a1, &qword_2809DAE28, &_s14LoudnessSampleVN);
  v4 = OUTLINED_FUNCTION_15_5();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_275431F84(uint64_t a1, uint64_t a2)
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

  OUTLINED_FUNCTION_0_29(a1, &qword_2809DB5C8, &type metadata for Transition.Complexity);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

size_t sub_275431FF4(uint64_t a1, uint64_t a2)
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

  sub_275432158(0, &qword_2809DB5C0, MEMORY[0x277CD8320]);
  v4 = *(sub_27546E490() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_275432100()
{
  if (!qword_2809DB598)
  {
    v0 = sub_27546E6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB598);
    }
  }
}

void sub_275432158(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27546E990();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *_s28StepTransitionTimeCalculatorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275432278);
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

unint64_t sub_2754322B4()
{
  result = qword_2809DB5D0;
  if (!qword_2809DB5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB5D0);
  }

  return result;
}

unint64_t sub_27543230C()
{
  result = qword_2809DB5D8;
  if (!qword_2809DB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB5D8);
  }

  return result;
}

unint64_t sub_275432364()
{
  result = qword_2809DB5E0;
  if (!qword_2809DB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB5E0);
  }

  return result;
}

void sub_2754323B8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void OUTLINED_FUNCTION_0_29(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84560];

  sub_2754323B8(0, a2, a3, v4);
}

void OUTLINED_FUNCTION_4_13(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t OUTLINED_FUNCTION_8_11(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_5()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_4@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{

  return sub_275431C68(a2 > 1, v2, 1, a1);
}

uint64_t sub_275432550()
{
  v0 = sub_27546E3E0();
  __swift_allocate_value_buffer(v0, qword_2809F3C00);
  __swift_project_value_buffer(v0, qword_2809F3C00);
  return sub_27546E3D0();
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

BOOL sub_275432624(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  do
  {
    sub_27546E570();
    v4 = v3 != 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_27546E4B0();
  }

  while ((v5 & 1) != 0);

  return v4;
}

void TransitionPlanner.Configuration.transitionSchedulingPolicy.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TransitionPlanner.Configuration.init(transitionSchedulingPolicy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 8);
  if ((v3 & 1) == 0 && ((v4 = *result, v2 >= 0.0001) ? (v5 = v2 > 1.0) : (v5 = 1), v5))
  {
    sub_275408F98();
    swift_allocError();
    *v6 = 0;
    return swift_willThrow();
  }

  else
  {
    *a2 = v2;
    *(a2 + 8) = v3;
  }

  return result;
}

uint64_t static TransitionPlanner.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s26TransitionSchedulingPolicyOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ConfigurationVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

BOOL static TransitionPlanner.TransitionSchedulingPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t _s26TransitionSchedulingPolicyOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_275432870(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27543288C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

BOOL static TransitionPlanner.Criteria.IncomingPlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) != 1)
    {
      v8 = *(a2 + 8) | *&v2;
      return v3 == 2 && v8 == 0;
    }

    if (v3 != 1)
    {
      return 0;
    }

    v4 = *a2;
    if (v2 - *a1 != 0.0)
    {
      return 0;
    }

    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v5 = *a1;
    v6 = *a2;
  }

  return v6 - v5 == 0.0;
}

uint64_t sub_27543294C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x796C726165 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2754329D4(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_275432A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27543294C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275432A9C(uint64_t a1)
{
  v2 = sub_275433284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275432AD8(uint64_t a1)
{
  v2 = sub_275433284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275432B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754329D4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275432B44(uint64_t a1)
{
  v2 = sub_275433230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275432B80(uint64_t a1)
{
  v2 = sub_275433230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.IncomingPlacement.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_19();
  v3 = MEMORY[0x277D84538];
  sub_27543332C(0, v4, v5, v6, MEMORY[0x277D84538]);
  v34 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v36 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = OUTLINED_FUNCTION_2_23();
  sub_27543332C(v14, v15, v16, v17, v3);
  v19 = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v35 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v32 - v24;
  v26 = v1[1];
  v33 = *v1;
  v27 = *(v1 + 16);
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275433284();
  v29 = v19;
  sub_27546EB00();
  sub_275433230();
  sub_27546E8F0();
  v30 = v34;
  v37 = v33;
  v38 = v26;
  v39 = v27;
  sub_2754332D8();
  sub_27546E950();
  (*(v36 + 8))(v13, v30);
  return (*(v35 + 8))(v25, v29);
}

void TransitionPlanner.Criteria.IncomingPlacement.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  OUTLINED_FUNCTION_3_19();
  v3 = MEMORY[0x277D844C8];
  sub_27543332C(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v47[1] = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_2_23();
  sub_27543332C(v13, v14, v15, &_s17IncomingPlacementO10CodingKeysON, v3);
  v17 = v16;
  OUTLINED_FUNCTION_8_9(v16);
  v48 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v23 = v47 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275433284();
  v25 = v52;
  sub_27546EAE0();
  if (v25)
  {
    goto LABEL_7;
  }

  v52 = v8;
  v26 = v49;
  v27 = sub_27546E8E0();
  sub_275433398(v27, 0);
  if (v30 == v31 >> 1)
  {
    goto LABEL_6;
  }

  if (v30 < (v31 >> 1))
  {
    v32 = sub_2754337E8(v30 + 1, v31 >> 1, v28, v29, v30, v31);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      v47[0] = v32;
      sub_275433230();
      sub_27546E850();
      sub_275433488();
      sub_27546E8D0();
      v43 = v48;
      swift_unknownObjectRelease();
      v44 = OUTLINED_FUNCTION_5_12();
      v45(v44);
      (*(v43 + 8))(v23, v17);
      v46 = v51;
      *v26 = v50;
      *(v26 + 16) = v46;
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(a1);
      return;
    }

LABEL_6:
    v37 = v17;
    v38 = sub_27546E7D0();
    swift_allocError();
    v40 = v39;
    sub_2754333D4();
    v42 = *(v41 + 48);
    *v40 = &type metadata for TransitionPlanner.Criteria.IncomingPlacement;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v48 + 8))(v23, v37);
    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_275433230()
{
  result = qword_2809DB618;
  if (!qword_2809DB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB618);
  }

  return result;
}

unint64_t sub_275433284()
{
  result = qword_2809DB628;
  if (!qword_2809DB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB628);
  }

  return result;
}

unint64_t sub_2754332D8()
{
  result = qword_2809DB630;
  if (!qword_2809DB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB630);
  }

  return result;
}

void sub_27543332C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_275433398(uint64_t a1, uint64_t a2)
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
    OUTLINED_FUNCTION_0_30();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2754333D4()
{
  if (!qword_2809DB648)
  {
    sub_275433444();
    sub_27546E7C0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB648);
    }
  }
}

unint64_t sub_275433444()
{
  result = qword_2809DB650;
  if (!qword_2809DB650)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2809DB650);
  }

  return result;
}

unint64_t sub_275433488()
{
  result = qword_2809DB658;
  if (!qword_2809DB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB658);
  }

  return result;
}

_BYTE *sub_275433504(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2754335A0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754335DC()
{
  result = qword_2809DB660;
  if (!qword_2809DB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB660);
  }

  return result;
}

unint64_t sub_275433634()
{
  result = qword_2809DB668;
  if (!qword_2809DB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB668);
  }

  return result;
}

unint64_t sub_27543368C()
{
  result = qword_2809DB670;
  if (!qword_2809DB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB670);
  }

  return result;
}

unint64_t sub_2754336E4()
{
  result = qword_2809DB678;
  if (!qword_2809DB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB678);
  }

  return result;
}

unint64_t sub_27543373C()
{
  result = qword_2809DB680;
  if (!qword_2809DB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB680);
  }

  return result;
}

unint64_t sub_275433794()
{
  result = qword_2809DB688;
  if (!qword_2809DB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB688);
  }

  return result;
}

uint64_t sub_2754337E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t sub_2754338E0(uint64_t result, char a2)
{
  v3 = *v2;
  if (!*(v2 + 16))
  {
    v4 = *v2;
    if (a2)
    {
      goto LABEL_7;
    }

    if (*&result >= 0.0)
    {
      if (v3 < 0.0 || v3 > *&result)
      {
        goto LABEL_25;
      }

      return result;
    }

LABEL_28:
    __break(1u);
    return result;
  }

  if (*(v2 + 16) != 1)
  {
    return result;
  }

  v4 = *(v2 + 8);
  v5 = *v2;
  if (a2)
  {
    if (v3 < 0.0)
    {
LABEL_25:
      sub_275408F98();
      v9 = swift_allocError();
      *&result = COERCE_DOUBLE(OUTLINED_FUNCTION_12_7(v9, v10));
      return result;
    }

LABEL_7:
    if (v4 >= 0.0)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (*&result < 0.0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v3 < 0.0 || v3 > *&result)
  {
    goto LABEL_25;
  }

  if (v4 < 0.0 || v4 > *&result)
  {
    goto LABEL_25;
  }

  return result;
}

void sub_2754339AC(double *a1@<X8>, double a2@<D0>)
{
  v3 = *v2;
  if (!*(v2 + 16))
  {
    if (a2 < 0.0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v8 = *v2;
    if (v3 < 0.0 || v3 > a2)
    {
LABEL_19:
      sub_275408F98();
      v10 = swift_allocError();
      OUTLINED_FUNCTION_12_7(v10, v11);
      return;
    }

    if (v3 > a2)
    {
      goto LABEL_28;
    }

    *a1 = v3;
LABEL_24:
    a1[1] = a2;
    return;
  }

  if (*(v2 + 16) == 1)
  {
    if (a2 >= 0.0)
    {
      v4 = *v2;
      if (v3 >= 0.0 && v3 <= a2)
      {
        v6 = *(v2 + 8);
        if (v6 >= 0.0 && v6 <= a2)
        {
          *a1 = v3;
          a1[1] = v6;
          return;
        }
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (a2 >= 0.0)
  {
    *a1 = 0.0;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

BOOL static TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v10 = *a2;
    return v3 - v2 == 0.0;
  }

  v5 = *(a2 + 8);
  if (*(a1 + 16) != 1)
  {
    v11 = *&v5 | *&v3;
    return v4 == 2 && v11 == 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v3 - v2 == 0.0;
  return v5 - *(a1 + 8) == 0.0 && v8;
}

uint64_t sub_275433B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6F536E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7265746661 && a2 == 0xE500000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E6968746977 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

uint64_t sub_275433C14(char a1)
{
  if (!a1)
  {
    return 0x676E6F536E69;
  }

  if (a1 == 1)
  {
    return 0x7265746661;
  }

  return 0x6E6968746977;
}

uint64_t sub_275433C8C(uint64_t a1)
{
  v2 = sub_275434A88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433CC8(uint64_t a1)
{
  v2 = sub_275434A88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275433D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275433B10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275433D34(uint64_t a1)
{
  v2 = sub_275434B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433D70(uint64_t a1)
{
  v2 = sub_275434B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275433DB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_275433C60();
  *a1 = result & 1;
  return result;
}

uint64_t sub_275433DDC(uint64_t a1)
{
  v2 = sub_275434ADC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433E18(uint64_t a1)
{
  v2 = sub_275434ADC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275433E54(uint64_t a1)
{
  v2 = sub_275434A34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275433E90(uint64_t a1)
{
  v2 = sub_275434A34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_5_13();
  v3 = MEMORY[0x277D84538];
  sub_275434BD8(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v66 = v9;
  v67 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v65 = &v60 - v13;
  v14 = OUTLINED_FUNCTION_4_14();
  sub_275434BD8(v14, v15, v16, v17, v3);
  v64 = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v61 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v25 = OUTLINED_FUNCTION_3_20();
  sub_275434BD8(v25, v26, v27, v28, v3);
  v30 = OUTLINED_FUNCTION_8_9(v29);
  v62 = v31;
  v63 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v60 - v35;
  v37 = OUTLINED_FUNCTION_2_24();
  sub_275434BD8(v37, v38, v39, &_s24EarlyPlacementConstraintO10CodingKeysON, v3);
  v41 = OUTLINED_FUNCTION_8_9(v40);
  v69 = v42;
  v70 = v41;
  v44 = *(v43 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v45);
  v47 = &v60 - v46;
  v68 = *v1;
  v48 = v1[1];
  v49 = *(v1 + 16);
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275434B30();
  sub_27546EB00();
  if (!v49)
  {
    v56 = v61;
    LOBYTE(v71) = 1;
    sub_275434A88();
    OUTLINED_FUNCTION_13_7();
    v71 = v68;
    sub_27542D5D8();
    v57 = v64;
    sub_27546E950();
    (*(v56 + 8))(v24, v57);
    return (*(v69 + 8))(v47, v50);
  }

  if (v49 == 1)
  {
    LOBYTE(v71) = 2;
    sub_275434A34();
    v51 = v65;
    OUTLINED_FUNCTION_13_7();
    v71 = v68;
    v72 = v48;
    OUTLINED_FUNCTION_1_26();
    sub_275434BD8(0, v52, v53, v54, MEMORY[0x277D83638]);
    sub_275434C40(&qword_2809DB6E0, sub_27542D5D8);
    v55 = v67;
    sub_27546E950();
    (*(v66 + 8))(v51, v55);
    return (*(v69 + 8))(v47, v50);
  }

  LOBYTE(v71) = 0;
  sub_275434ADC();
  v59 = v70;
  sub_27546E8F0();
  (*(v62 + 8))(v36, v63);
  return (*(v69 + 8))(v47, v59);
}

uint64_t TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  OUTLINED_FUNCTION_5_13();
  v3 = MEMORY[0x277D844C8];
  sub_275434BD8(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v91 = OUTLINED_FUNCTION_8_9(v7);
  v92 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v93 = &v85 - v12;
  v13 = OUTLINED_FUNCTION_4_14();
  sub_275434BD8(v13, v14, v15, v16, v3);
  v89 = OUTLINED_FUNCTION_8_9(v17);
  v90 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v96 = &v85 - v22;
  v23 = OUTLINED_FUNCTION_3_20();
  sub_275434BD8(v23, v24, v25, v26, v3);
  v28 = v27;
  OUTLINED_FUNCTION_8_9(v27);
  v88 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v32);
  v34 = &v85 - v33;
  v35 = OUTLINED_FUNCTION_2_24();
  sub_275434BD8(v35, v36, v37, &_s24EarlyPlacementConstraintO10CodingKeysON, v3);
  OUTLINED_FUNCTION_8_9(v38);
  v95 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v42);
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275434B30();
  v44 = v99;
  sub_27546EAE0();
  if (v44)
  {
    goto LABEL_9;
  }

  v86 = v28;
  v87 = v34;
  v99 = a1;
  v45 = sub_27546E8E0();
  result = sub_275433874(v45, 0);
  if (v48 == v49 >> 1)
  {
LABEL_8:
    v57 = sub_27546E7D0();
    swift_allocError();
    v59 = v58;
    sub_2754333D4();
    v61 = *(v60 + 48);
    *v59 = &type metadata for TransitionPlanner.Criteria.IncomingPlacement.EarlyPlacementConstraint;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v62 = OUTLINED_FUNCTION_6_13();
    v63(v62);
    a1 = v99;
LABEL_9:
    v64 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  if (v48 < (v49 >> 1))
  {
    v50 = *(v47 + v48);
    sub_27543386C(v48 + 1);
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v50)
      {
        if (v50 == 1)
        {
          LOBYTE(v97) = 1;
          sub_275434A88();
          OUTLINED_FUNCTION_9_7();
          v56 = v94;
          v55 = v95;
          sub_27542D478();
          sub_27546E8D0();
          swift_unknownObjectRelease();
          v72 = OUTLINED_FUNCTION_11_9();
          v73(v72);
          v74 = *(v55 + 8);
          v75 = OUTLINED_FUNCTION_7_12();
          v76(v75);
          v77 = 0;
          v78 = 0;
          v79 = v97;
        }

        else
        {
          LOBYTE(v97) = 2;
          sub_275434A34();
          OUTLINED_FUNCTION_9_7();
          v56 = v94;
          v66 = v95;
          OUTLINED_FUNCTION_1_26();
          sub_275434BD8(0, v69, v70, v71, MEMORY[0x277D83638]);
          sub_275434C40(&qword_2809DB708, sub_27542D478);
          sub_27546E8D0();
          swift_unknownObjectRelease();
          v80 = OUTLINED_FUNCTION_10_8();
          v81(v80);
          v82 = *(v66 + 8);
          v83 = OUTLINED_FUNCTION_7_12();
          v84(v83);
          v79 = v97;
          v77 = v98;
          v78 = 1;
        }
      }

      else
      {
        LOBYTE(v97) = 0;
        sub_275434ADC();
        v65 = v87;
        OUTLINED_FUNCTION_9_7();
        swift_unknownObjectRelease();
        (*(v88 + 8))(v65, v86);
        v67 = OUTLINED_FUNCTION_6_13();
        v68(v67);
        v79 = 0;
        v77 = 0;
        v78 = 2;
        v56 = v94;
      }

      *v56 = v79;
      *(v56 + 8) = v77;
      *(v56 + 16) = v78;
      v64 = v99;
      return __swift_destroy_boxed_opaque_existential_1(v64);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_275434A34()
{
  result = qword_2809DB698;
  if (!qword_2809DB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB698);
  }

  return result;
}

unint64_t sub_275434A88()
{
  result = qword_2809DB6A8;
  if (!qword_2809DB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6A8);
  }

  return result;
}

unint64_t sub_275434ADC()
{
  result = qword_2809DB6B8;
  if (!qword_2809DB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6B8);
  }

  return result;
}

unint64_t sub_275434B30()
{
  result = qword_2809DB6C8;
  if (!qword_2809DB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6C8);
  }

  return result;
}

unint64_t sub_275434B84()
{
  result = qword_2809DB6D8;
  if (!qword_2809DB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB6D8);
  }

  return result;
}

void sub_275434BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_275434C40(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_1_26();
    sub_275434BD8(255, v5, v6, v7, MEMORY[0x277D83638]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275434CD4(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_275434CEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *_s24EarlyPlacementConstraintO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275434DE0);
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

_BYTE *sub_275434E3C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275434ED8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275434F14()
{
  result = qword_2809DB710;
  if (!qword_2809DB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB710);
  }

  return result;
}

unint64_t sub_275434F6C()
{
  result = qword_2809DB718;
  if (!qword_2809DB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB718);
  }

  return result;
}

unint64_t sub_275434FC4()
{
  result = qword_2809DB720;
  if (!qword_2809DB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB720);
  }

  return result;
}

unint64_t sub_27543501C()
{
  result = qword_2809DB728;
  if (!qword_2809DB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB728);
  }

  return result;
}

unint64_t sub_275435074()
{
  result = qword_2809DB730;
  if (!qword_2809DB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB730);
  }

  return result;
}

unint64_t sub_2754350CC()
{
  result = qword_2809DB738;
  if (!qword_2809DB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB738);
  }

  return result;
}

unint64_t sub_275435124()
{
  result = qword_2809DB740;
  if (!qword_2809DB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB740);
  }

  return result;
}

unint64_t sub_27543517C()
{
  result = qword_2809DB748;
  if (!qword_2809DB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB748);
  }

  return result;
}

unint64_t sub_2754351D4()
{
  result = qword_2809DB750;
  if (!qword_2809DB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB750);
  }

  return result;
}

unint64_t sub_27543522C()
{
  result = qword_2809DB758;
  if (!qword_2809DB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB758);
  }

  return result;
}

unint64_t sub_275435284()
{
  result = qword_2809DB760;
  if (!qword_2809DB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7()
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_12_7(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_13_7()
{
  v2 = *(v0 - 112);

  return sub_27546E8F0();
}

BOOL static TransitionPlanner.Criteria.OutgoingPlacement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < 0)
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (v2)
    {
      return (v3 & 1) != 0;
    }

    if (v3)
    {
      return 0;
    }
  }

  else if (v3 < 0)
  {
    return 0;
  }

  return *a2 - *a1 == 0.0;
}

uint64_t sub_275435460(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C726165 && a2 == 0xE500000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125932 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_275435524(char a1)
{
  if (a1)
  {
    return 1702125932;
  }

  else
  {
    return 0x796C726165;
  }
}

uint64_t sub_275435558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275435460(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275435580(uint64_t a1)
{
  v2 = sub_2754360E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754355BC(uint64_t a1)
{
  v2 = sub_2754360E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754355F8(uint64_t a1)
{
  v2 = sub_275436090();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275435634(uint64_t a1)
{
  v2 = sub_275436090();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275435670(uint64_t a1)
{
  v2 = sub_27543603C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754356AC(uint64_t a1)
{
  v2 = sub_27543603C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_21();
  v3 = MEMORY[0x277D84538];
  sub_2754361E0(0, v4, v5, v6, MEMORY[0x277D84538]);
  v47 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v45 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v46 = &v44 - v12;
  v13 = OUTLINED_FUNCTION_1_27();
  sub_2754361E0(v13, v14, v15, v16, v3);
  v18 = v17;
  OUTLINED_FUNCTION_8_9(v17);
  v48 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v44 - v23;
  v25 = OUTLINED_FUNCTION_2_25();
  sub_2754361E0(v25, v26, v27, &_s17OutgoingPlacementO10CodingKeysON, v3);
  v29 = OUTLINED_FUNCTION_8_9(v28);
  v50 = v30;
  v51 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  v35 = &v44 - v34;
  v49 = *v1;
  v36 = *(v1 + 8);
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754360E4();
  sub_27546EB00();
  if (v36 < 0)
  {
    v40 = v45;
    LOBYTE(v52) = 1;
    sub_27543603C();
    v41 = v46;
    v42 = v51;
    sub_27546E8F0();
    v52 = v49;
    v53 = v36 & 1;
    sub_275436138();
    v43 = v47;
    sub_27546E950();
    (*(v40 + 8))(v41, v43);
    return (*(v50 + 8))(v35, v42);
  }

  else
  {
    LOBYTE(v52) = 0;
    sub_275436090();
    v38 = v51;
    sub_27546E8F0();
    v52 = v49;
    sub_27543618C();
    sub_27546E950();
    (*(v48 + 8))(v24, v18);
    return (*(v50 + 8))(v35, v38);
  }
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v68 = a2;
  OUTLINED_FUNCTION_3_21();
  v3 = MEMORY[0x277D844C8];
  sub_2754361E0(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v70 = v9;
  v71 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v72 = v67 - v13;
  v14 = OUTLINED_FUNCTION_1_27();
  sub_2754361E0(v14, v15, v16, v17, v3);
  v19 = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v69 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = v67 - v24;
  v26 = OUTLINED_FUNCTION_2_25();
  sub_2754361E0(v26, v27, v28, &_s17OutgoingPlacementO10CodingKeysON, v3);
  v30 = v29;
  OUTLINED_FUNCTION_8_9(v29);
  v73 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  v36 = v67 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754360E4();
  v38 = v76;
  sub_27546EAE0();
  if (v38)
  {
    goto LABEL_9;
  }

  v67[0] = v19;
  v67[1] = v25;
  v76 = a1;
  v39 = sub_27546E8E0();
  result = sub_275433874(v39, 0);
  if (v42 == v43 >> 1)
  {
LABEL_8:
    v50 = sub_27546E7D0();
    swift_allocError();
    v52 = v51;
    sub_2754333D4();
    v54 = *(v53 + 48);
    *v52 = &type metadata for TransitionPlanner.Criteria.OutgoingPlacement;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D84160], v50);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v73 + 8))(v36, v30);
    a1 = v76;
LABEL_9:
    v55 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v55);
  }

  if (v42 < (v43 >> 1))
  {
    v44 = v30;
    v45 = *(v41 + v42);
    sub_27543386C(v42 + 1);
    v47 = v46;
    v49 = v48;
    swift_unknownObjectRelease();
    if (v47 == v49 >> 1)
    {
      if (v45)
      {
        LOBYTE(v74) = 1;
        sub_27543603C();
        OUTLINED_FUNCTION_7_13();
        sub_275436248();
        OUTLINED_FUNCTION_8_12();
        swift_unknownObjectRelease();
        v56 = OUTLINED_FUNCTION_6_14();
        v57(v56);
        v58 = OUTLINED_FUNCTION_4_15();
        v59(v58);
        v60 = v74;
        v61 = v75 | 0x80;
      }

      else
      {
        LOBYTE(v74) = 0;
        sub_275436090();
        OUTLINED_FUNCTION_7_13();
        sub_27543629C();
        OUTLINED_FUNCTION_8_12();
        swift_unknownObjectRelease();
        v62 = OUTLINED_FUNCTION_6_14();
        v63(v62);
        v64 = OUTLINED_FUNCTION_4_15();
        v65(v64);
        v61 = 0;
        v60 = v74;
      }

      v66 = v68;
      *v68 = v60;
      *(v66 + 8) = v61;
      v55 = v76;
      return __swift_destroy_boxed_opaque_existential_1(v55);
    }

    v30 = v44;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_275435F6C(double *a1@<X8>, double a2@<D0>)
{
  v5 = *v2;
  if ((*(v2 + 8) & 0x80000000) == 0)
  {
    if (a2 < 0.0)
    {
      __break(1u);
    }

    else
    {
      v6 = *v2;
      if (v5 < 0.0 || v5 > a2)
      {
        sub_275408F98();
        swift_allocError();
        *v8 = 6;
        swift_willThrow();
        return;
      }

      if (v5 <= a2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    return;
  }

  v9 = *v2;
  sub_275437658(v10, a2);
  if (v3)
  {
    return;
  }

  v6 = *v10;
  a2 = *&v10[1];
LABEL_12:
  *a1 = v6;
  a1[1] = a2;
}

unint64_t sub_27543603C()
{
  result = qword_2809DB770;
  if (!qword_2809DB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB770);
  }

  return result;
}

unint64_t sub_275436090()
{
  result = qword_2809DB780;
  if (!qword_2809DB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB780);
  }

  return result;
}

unint64_t sub_2754360E4()
{
  result = qword_2809DB790;
  if (!qword_2809DB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB790);
  }

  return result;
}

unint64_t sub_275436138()
{
  result = qword_2809DB798;
  if (!qword_2809DB798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB798);
  }

  return result;
}

unint64_t sub_27543618C()
{
  result = qword_2809DB7A0;
  if (!qword_2809DB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7A0);
  }

  return result;
}

void sub_2754361E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_275436248()
{
  result = qword_2809DB7C0;
  if (!qword_2809DB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7C0);
  }

  return result;
}

unint64_t sub_27543629C()
{
  result = qword_2809DB7C8;
  if (!qword_2809DB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7C8);
  }

  return result;
}

uint64_t _s17OutgoingPlacementOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
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

uint64_t _s17OutgoingPlacementOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

_BYTE *_s17OutgoingPlacementO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275436498);
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

_BYTE *sub_2754364E4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275436580);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754365BC()
{
  result = qword_2809DB7D0;
  if (!qword_2809DB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7D0);
  }

  return result;
}

unint64_t sub_275436614()
{
  result = qword_2809DB7D8;
  if (!qword_2809DB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7D8);
  }

  return result;
}

unint64_t sub_27543666C()
{
  result = qword_2809DB7E0;
  if (!qword_2809DB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7E0);
  }

  return result;
}

unint64_t sub_2754366C4()
{
  result = qword_2809DB7E8;
  if (!qword_2809DB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7E8);
  }

  return result;
}

unint64_t sub_27543671C()
{
  result = qword_2809DB7F0;
  if (!qword_2809DB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7F0);
  }

  return result;
}

unint64_t sub_275436774()
{
  result = qword_2809DB7F8;
  if (!qword_2809DB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB7F8);
  }

  return result;
}

unint64_t sub_2754367CC()
{
  result = qword_2809DB800;
  if (!qword_2809DB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB800);
  }

  return result;
}

unint64_t sub_275436824()
{
  result = qword_2809DB808;
  if (!qword_2809DB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB808);
  }

  return result;
}

unint64_t sub_27543687C()
{
  result = qword_2809DB810;
  if (!qword_2809DB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB810);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_13()
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_27546E8D0();
}

uint64_t sub_2754369A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_27546E9A0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_275436A28(uint64_t a1)
{
  v2 = sub_2754371A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275436A64(uint64_t a1)
{
  v2 = sub_2754371A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275436AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754369A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275436AD0(uint64_t a1)
{
  v2 = sub_2754371F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275436B0C(uint64_t a1)
{
  v2 = sub_2754371F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_2_26();
  v3 = MEMORY[0x277D84538];
  sub_275437248(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v32 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = OUTLINED_FUNCTION_1_28();
  sub_275437248(v15, v16, v17, v18, v3);
  v20 = v19;
  OUTLINED_FUNCTION_8_9(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v25);
  v27 = &v31 - v26;
  v28 = *v1;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754371F4();
  sub_27546EB00();
  sub_2754371A0();
  sub_27546E8F0();
  v33 = v28;
  sub_27542D5D8();
  sub_27546E950();
  (*(v32 + 8))(v14, v8);
  return (*(v22 + 8))(v27, v20);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43[0] = a2;
  OUTLINED_FUNCTION_2_26();
  v3 = MEMORY[0x277D844C8];
  sub_275437248(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v43[1] = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_28();
  sub_275437248(v13, v14, v15, &_s24EarlyPlacementConstraintO10CodingKeysON_0, v3);
  v17 = v16;
  OUTLINED_FUNCTION_8_9(v16);
  v44 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v23 = v43 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754371F4();
  v25 = v45;
  sub_27546EAE0();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v45 = v8;
  v26 = sub_27546E8E0();
  result = sub_275433874(v26, 0);
  if (v28 == v29 >> 1)
  {
    goto LABEL_6;
  }

  if (v28 < (v29 >> 1))
  {
    sub_27543386C(v28 + 1);
    v31 = v30;
    v33 = v32;
    swift_unknownObjectRelease();
    if (v31 == v33 >> 1)
    {
      sub_2754371A0();
      sub_27546E850();
      sub_27542D478();
      sub_27546E8D0();
      v40 = v44;
      swift_unknownObjectRelease();
      v41 = OUTLINED_FUNCTION_4_16();
      v42(v41);
      (*(v40 + 8))(v23, v17);
      *v43[0] = v46;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_6:
    v34 = v17;
    v35 = sub_27546E7D0();
    swift_allocError();
    v37 = v36;
    sub_2754333D4();
    v39 = *(v38 + 48);
    *v37 = &type metadata for TransitionPlanner.Criteria.OutgoingPlacement.EarlyPlacementConstraint;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v23, v34);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_2754371A0()
{
  result = qword_2809DB820;
  if (!qword_2809DB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB820);
  }

  return result;
}

unint64_t sub_2754371F4()
{
  result = qword_2809DB830;
  if (!qword_2809DB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB830);
  }

  return result;
}

void sub_275437248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SongTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SongTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

_BYTE *sub_275437328(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x2754373C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275437400()
{
  result = qword_2809DB848;
  if (!qword_2809DB848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB848);
  }

  return result;
}

unint64_t sub_275437458()
{
  result = qword_2809DB850;
  if (!qword_2809DB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB850);
  }

  return result;
}

unint64_t sub_2754374B0()
{
  result = qword_2809DB858;
  if (!qword_2809DB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB858);
  }

  return result;
}

unint64_t sub_275437508()
{
  result = qword_2809DB860;
  if (!qword_2809DB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB860);
  }

  return result;
}

unint64_t sub_275437560()
{
  result = qword_2809DB868;
  if (!qword_2809DB868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB868);
  }

  return result;
}

unint64_t sub_2754375B8()
{
  result = qword_2809DB870;
  if (!qword_2809DB870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB870);
  }

  return result;
}

void sub_275437658(uint64_t a1@<X8>, double a2@<D0>)
{
  if (*(v2 + 8))
  {
    if (a2 >= 0.0)
    {
      *a1 = 0;
      *(a1 + 8) = a2;
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 0.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = *v2;
  if (*v2 < 0.0 || v3 > a2)
  {
    sub_275408F98();
    swift_allocError();
    *v5 = 6;
    swift_willThrow();
    return;
  }

  if (v3 <= a2)
  {
    *a1 = v3;
    *(a1 + 8) = a2;
    return;
  }

LABEL_15:
  __break(1u);
}

BOOL static TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if ((*(a1 + 8) & 1) == 0)
  {
    return (*(a2 + 8) & 1) == 0 && *a2 - *a1 == 0.0;
  }

  return (*(a2 + 8) & 1) != 0;
}

uint64_t sub_275437738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6F536E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746661 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_2754377F8(char a1)
{
  if (a1)
  {
    return 0x7265746661;
  }

  else
  {
    return 0x676E6F536E69;
  }
}

uint64_t sub_275437828(uint64_t a1)
{
  v2 = sub_27543826C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275437864(uint64_t a1)
{
  v2 = sub_27543826C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754378A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275437738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754378D0(uint64_t a1)
{
  v2 = sub_275438314();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543790C(uint64_t a1)
{
  v2 = sub_275438314();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275437948(uint64_t a1)
{
  v2 = sub_2754382C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275437984(uint64_t a1)
{
  v2 = sub_2754382C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_3_22();
  v3 = MEMORY[0x277D84538];
  sub_275438368(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v47 = v9;
  v48 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v46 = &v44 - v13;
  v14 = OUTLINED_FUNCTION_1_29();
  sub_275438368(v14, v15, v16, v17, v3);
  v19 = OUTLINED_FUNCTION_8_9(v18);
  v44 = v20;
  v45 = v19;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - v24;
  v26 = OUTLINED_FUNCTION_2_27();
  sub_275438368(v26, v27, v28, &_s23LatePlacementConstraintO10CodingKeysON, v3);
  v49 = v29;
  OUTLINED_FUNCTION_8_9(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v34);
  v36 = &v44 - v35;
  v37 = *v1;
  LOBYTE(v3) = *(v1 + 8);
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438314();
  sub_27546EB00();
  if (v3)
  {
    v50 = 0;
    sub_2754382C0();
    v39 = v49;
    sub_27546E8F0();
    (*(v44 + 8))(v25, v45);
    return (*(v31 + 8))(v36, v39);
  }

  else
  {
    v52 = 1;
    sub_27543826C();
    v41 = v46;
    v42 = v49;
    sub_27546E8F0();
    v51 = v37;
    sub_27542D5D8();
    v43 = v48;
    sub_27546E950();
    (*(v47 + 8))(v41, v43);
    return (*(v31 + 8))(v36, v42);
  }
}

uint64_t TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  OUTLINED_FUNCTION_3_22();
  v3 = MEMORY[0x277D844C8];
  sub_275438368(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v70 = OUTLINED_FUNCTION_8_9(v7);
  v71 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v72 = &v66 - v12;
  v13 = OUTLINED_FUNCTION_1_29();
  sub_275438368(v13, v14, v15, v16, v3);
  v18 = v17;
  OUTLINED_FUNCTION_8_9(v17);
  v73 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v66 - v23;
  v25 = OUTLINED_FUNCTION_2_27();
  sub_275438368(v25, v26, v27, &_s23LatePlacementConstraintO10CodingKeysON, v3);
  v29 = v28;
  OUTLINED_FUNCTION_8_9(v28);
  v75 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  v35 = &v66 - v34;
  v36 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438314();
  v37 = v76;
  sub_27546EAE0();
  if (v37)
  {
    goto LABEL_9;
  }

  v76 = v24;
  v68 = v18;
  v38 = v35;
  v39 = sub_27546E8E0();
  result = sub_275433874(v39, 0);
  v44 = v29;
  v69 = a1;
  if (v42 == v43 >> 1)
  {
LABEL_8:
    v55 = sub_27546E7D0();
    swift_allocError();
    v57 = v56;
    sub_2754333D4();
    v59 = *(v58 + 48);
    *v57 = &type metadata for TransitionPlanner.Criteria.OutgoingPlacement.LatePlacementConstraint;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v55 - 8) + 104))(v57, *MEMORY[0x277D84160], v55);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v75 + 8))(v38, v44);
    a1 = v69;
LABEL_9:
    v65 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v65);
  }

  v67 = v35;
  if (v42 < (v43 >> 1))
  {
    v45 = v29;
    v46 = *(v41 + v42);
    sub_27543386C(v42 + 1);
    v48 = v47;
    v50 = v49;
    swift_unknownObjectRelease();
    v51 = v48 == v50 >> 1;
    v52 = v73;
    v53 = v74;
    if (v51)
    {
      v78 = v46;
      if (v46)
      {
        v80 = 1;
        sub_27543826C();
        OUTLINED_FUNCTION_6_15();
        v54 = v75;
        sub_27542D478();
        sub_27546E8D0();
        swift_unknownObjectRelease();
        v62 = OUTLINED_FUNCTION_5_14();
        v63(v62);
        (*(v54 + 8))(v67, v45);
        v64 = v77;
        v65 = v69;
      }

      else
      {
        v79 = 0;
        sub_2754382C0();
        v60 = v76;
        OUTLINED_FUNCTION_6_15();
        v61 = v75;
        swift_unknownObjectRelease();
        (*(v52 + 8))(v60, v68);
        (*(v61 + 8))(v35, v29);
        v64 = 0;
        v65 = v69;
        v53 = v74;
      }

      *v53 = v64;
      *(v53 + 8) = v78 ^ 1;
      return __swift_destroy_boxed_opaque_existential_1(v65);
    }

    v44 = v29;
    v38 = v67;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

unint64_t sub_27543826C()
{
  result = qword_2809DB880;
  if (!qword_2809DB880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB880);
  }

  return result;
}

unint64_t sub_2754382C0()
{
  result = qword_2809DB890;
  if (!qword_2809DB890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB890);
  }

  return result;
}

unint64_t sub_275438314()
{
  result = qword_2809DB8A0;
  if (!qword_2809DB8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8A0);
  }

  return result;
}

void sub_275438368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

_BYTE *_s23LatePlacementConstraintO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2754384ACLL);
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

_BYTE *_s23LatePlacementConstraintO15AfterCodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275438590);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2754385CC()
{
  result = qword_2809DB8C0;
  if (!qword_2809DB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8C0);
  }

  return result;
}

unint64_t sub_275438624()
{
  result = qword_2809DB8C8;
  if (!qword_2809DB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8C8);
  }

  return result;
}

unint64_t sub_27543867C()
{
  result = qword_2809DB8D0;
  if (!qword_2809DB8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8D0);
  }

  return result;
}

unint64_t sub_2754386D4()
{
  result = qword_2809DB8D8;
  if (!qword_2809DB8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8D8);
  }

  return result;
}

unint64_t sub_27543872C()
{
  result = qword_2809DB8E0;
  if (!qword_2809DB8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8E0);
  }

  return result;
}

unint64_t sub_275438784()
{
  result = qword_2809DB8E8;
  if (!qword_2809DB8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8E8);
  }

  return result;
}

unint64_t sub_2754387DC()
{
  result = qword_2809DB8F0;
  if (!qword_2809DB8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8F0);
  }

  return result;
}

unint64_t sub_275438834()
{
  result = qword_2809DB8F8;
  if (!qword_2809DB8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB8F8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_15()
{
  v2 = *(v0 - 168);

  return sub_27546E850();
}

void sub_27543890C()
{
  qword_2809DB900 = 0;
  byte_2809DB908 = -127;
  xmmword_2809DB910 = 0uLL;
  word_2809DB920 = 770;
}

double static TransitionPlanner.Criteria.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_2809DACB8 != -1)
  {
    swift_once();
  }

  v2 = byte_2809DB908;
  v3 = word_2809DB920;
  *a1 = qword_2809DB900;
  *(a1 + 8) = v2;
  result = *&xmmword_2809DB910;
  *(a1 + 16) = xmmword_2809DB910;
  *(a1 + 32) = v3;
  return result;
}

void TransitionPlanner.Criteria.outgoingPlacement.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

__n128 TransitionPlanner.Criteria.incomingPlacement.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t TransitionPlanner.Criteria.init(outgoingPlacement:incomingPlacement:maximumTransitionComplexity:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 16);
  v11 = *a3;
  v15 = *a1;
  v16 = v7;
  v13[0] = v8;
  v13[1] = v9;
  v14 = v10;
  v17 = v11;
  result = sub_275438A6C(&v15, v13);
  if (!v4)
  {
    *a4 = v6;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
    *(a4 + 24) = v9;
    *(a4 + 32) = v10;
    *(a4 + 33) = v11;
  }

  return result;
}

uint64_t sub_275438A6C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  if (((v2 & 0x80000000) == 0 || (v2 & 1) == 0) && *result < 0.0)
  {
    v4 = 6;
LABEL_5:
    sub_275408F98();
    swift_allocError();
    *v5 = v4;
    return swift_willThrow();
  }

  if (*(a2 + 16))
  {
    if (*(a2 + 16) == 1)
    {
      v6 = *a2;
      v4 = 7;
      if (v3 < 0.0 || *(a2 + 8) < 0.0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    v7 = *a2;
    if (v3 < 0.0)
    {
      v4 = 7;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t sub_275438B24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000027546F360 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x800000027546F380 == a2;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x800000027546F3A0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_27546E9A0();

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

unint64_t sub_275438C40(unsigned __int8 a1)
{
  result = 0xD000000000000011;
  if (a1 >= 2u)
  {
    return 0xD00000000000001BLL;
  }

  return result;
}

uint64_t sub_275438C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275438B24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275438CC4(uint64_t a1)
{
  v2 = sub_275438F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275438D00(uint64_t a1)
{
  v2 = sub_275438F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Criteria.encode(to:)(void *a1)
{
  sub_275439264(0, &qword_2809DB928, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v19 - v10;
  v12 = *v1;
  v13 = *(v1 + 8);
  v14 = v1[2];
  v21 = v1[3];
  v22 = v14;
  v27 = *(v1 + 32);
  v20 = *(v1 + 33);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438F1C();
  sub_27546EB00();
  v24 = v12;
  LOBYTE(v25) = v13;
  v28 = 0;
  sub_275438F70();
  OUTLINED_FUNCTION_1_30();
  v16 = v23;
  sub_27546E950();
  if (!v16)
  {
    v17 = v20;
    v24 = v22;
    v25 = v21;
    v26 = v27;
    v28 = 1;
    sub_275438FC4();
    OUTLINED_FUNCTION_1_30();
    sub_27546E950();
    LOBYTE(v24) = v17;
    v28 = 2;
    sub_275439018();
    OUTLINED_FUNCTION_1_30();
    sub_27546E950();
  }

  return (*(v7 + 8))(v11, v4);
}

unint64_t sub_275438F1C()
{
  result = qword_2809DB930;
  if (!qword_2809DB930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB930);
  }

  return result;
}

unint64_t sub_275438F70()
{
  result = qword_2809DB938;
  if (!qword_2809DB938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB938);
  }

  return result;
}

unint64_t sub_275438FC4()
{
  result = qword_2809DB940;
  if (!qword_2809DB940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB940);
  }

  return result;
}

unint64_t sub_275439018()
{
  result = qword_2809DB948;
  if (!qword_2809DB948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB948);
  }

  return result;
}

uint64_t TransitionPlanner.Criteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275439264(0, &qword_2809DB950, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v20 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275438F1C();
  sub_27546EAE0();
  if (!v2)
  {
    v27 = 0;
    sub_2754392C8();
    OUTLINED_FUNCTION_0_31();
    v15 = v23;
    v16 = v24;
    v27 = 1;
    sub_27543931C();
    OUTLINED_FUNCTION_0_31();
    v21 = v24;
    v22 = v23;
    v26 = v25;
    v27 = 2;
    sub_275439370();
    OUTLINED_FUNCTION_0_31();
    (*(v9 + 8))(v13, v6);
    v18 = v23;
    *a2 = v15;
    *(a2 + 8) = v16;
    v19 = v21;
    *(a2 + 16) = v22;
    *(a2 + 24) = v19;
    *(a2 + 32) = v26;
    *(a2 + 33) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_275439264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_275438F1C();
    v7 = a3(a1, &_s8CriteriaV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2754392C8()
{
  result = qword_2809DB958;
  if (!qword_2809DB958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB958);
  }

  return result;
}

unint64_t sub_27543931C()
{
  result = qword_2809DB960;
  if (!qword_2809DB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB960);
  }

  return result;
}

unint64_t sub_275439370()
{
  result = qword_2809DB968;
  if (!qword_2809DB968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB968);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_275439408(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 34))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_275439448(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *_s8CriteriaV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543956CLL);
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

unint64_t sub_2754395A8()
{
  result = qword_2809DB970;
  if (!qword_2809DB970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB970);
  }

  return result;
}

unint64_t sub_275439600()
{
  result = qword_2809DB978;
  if (!qword_2809DB978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB978);
  }

  return result;
}

unint64_t sub_275439658()
{
  result = qword_2809DB980;
  if (!qword_2809DB980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_31()
{

  return sub_27546E8D0();
}

uint64_t _s13FailureReasonOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t _s13FailureReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t TransitionPlanner.Song.AdaptiveMusicAnalysis.init()()
{
  sub_275408F98();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t sub_2754397F8(uint64_t a1)
{
  v2 = sub_2754399D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275439834(uint64_t a1)
{
  v2 = sub_2754399D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.AdaptiveMusicAnalysis.encode(to:)(void *a1)
{
  sub_27543997C();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754399D8();
  sub_27546EB00();
  return (*(v4 + 8))(v7, v3);
}

void sub_27543997C()
{
  if (!qword_2809DB988)
  {
    sub_2754399D8();
    v0 = sub_27546E960();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DB988);
    }
  }
}

unint64_t sub_2754399D8()
{
  result = qword_2809DB990;
  if (!qword_2809DB990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB990);
  }

  return result;
}

_BYTE *_s21AdaptiveMusicAnalysisVwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275439B20);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275439B6C()
{
  result = qword_2809DB998;
  if (!qword_2809DB998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB998);
  }

  return result;
}

unint64_t sub_275439BC4()
{
  result = qword_2809DB9A0;
  if (!qword_2809DB9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9A0);
  }

  return result;
}

BOOL static TransitionPlanner.Song.Analysis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  v9 = type metadata accessor for TransitionPlanner.Song.Analysis();
  v10 = OUTLINED_FUNCTION_19(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  v15 = v14 - v13;
  sub_275439E74();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v22 = *(v21 + 56);
  sub_275439ED8(a1, v19 - v18);
  sub_275439ED8(a2, v20 + v22);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_275439ED8(v20, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_27543AE8C(v20 + v22, v8, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
      v25 = static TransitionPlanner.Song.MusicKitAnalysis.== infix(_:_:)(v15, v8);
      sub_275439F3C(v8, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
      sub_275439F3C(v15, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
      v24 = type metadata accessor for TransitionPlanner.Song.Analysis;
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_5_15();
    sub_275439F3C(v15, v26);
    goto LABEL_6;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v24 = type metadata accessor for TransitionPlanner.Song.Analysis;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_6:
    v25 = 0;
    v24 = sub_275439E74;
    goto LABEL_8;
  }

  v25 = 1;
LABEL_8:
  sub_275439F3C(v20, v24);
  return v25;
}

uint64_t type metadata accessor for TransitionPlanner.Song.Analysis()
{
  result = qword_2809DBA18;
  if (!qword_2809DBA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275439E74()
{
  if (!qword_2809DB9A8)
  {
    type metadata accessor for TransitionPlanner.Song.Analysis();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DB9A8);
    }
  }
}

uint64_t sub_275439ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song.Analysis();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275439F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_19(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_275439F94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74694B636973756DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6576697470616461 && a2 == 0xED0000636973754DLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_27546E9A0();

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

uint64_t sub_27543A064(char a1)
{
  if (a1)
  {
    return 0x6576697470616461;
  }

  else
  {
    return 0x74694B636973756DLL;
  }
}

uint64_t sub_27543A0A8(uint64_t a1)
{
  v2 = sub_27543AC80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543A0E4(uint64_t a1)
{
  v2 = sub_27543AC80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27543A128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275439F94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27543A150(uint64_t a1)
{
  v2 = sub_27543AD28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543A18C(uint64_t a1)
{
  v2 = sub_27543AD28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27543A1C8(uint64_t a1)
{
  v2 = sub_27543ACD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543A204(uint64_t a1)
{
  v2 = sub_27543ACD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.Analysis.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_6_16();
  v2 = MEMORY[0x277D84538];
  sub_27543ADD0(0, v3, v4, v5, MEMORY[0x277D84538]);
  v7 = OUTLINED_FUNCTION_8_9(v6);
  v57 = v8;
  v58 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v55 = v12;
  OUTLINED_FUNCTION_7_14(v13, &qword_2809DB9C0, v14, &_s8AnalysisO18MusicKitCodingKeysON);
  v56 = v15;
  OUTLINED_FUNCTION_8_9(v15);
  v54 = v16;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_9();
  v53 = v20;
  v52 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v21 = OUTLINED_FUNCTION_19(v52);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  v26 = v25 - v24;
  v27 = type metadata accessor for TransitionPlanner.Song.Analysis();
  v28 = OUTLINED_FUNCTION_19(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18();
  v33 = v32 - v31;
  v34 = OUTLINED_FUNCTION_4_17();
  sub_27543ADD0(v34, v35, v36, &_s8AnalysisO10CodingKeysON, v2);
  v38 = v37;
  OUTLINED_FUNCTION_8_9(v37);
  v60 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v42);
  v44 = &v52 - v43;
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543AD28();
  sub_27546EB00();
  sub_275439ED8(v59, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = 1;
    sub_27543AC80();
    v46 = v55;
    OUTLINED_FUNCTION_12_8();
    sub_27543AD7C();
    v47 = v58;
    sub_27546E950();
    (*(v57 + 8))(v46, v47);
  }

  else
  {
    sub_27543AE8C(v33, v26, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
    v61 = 0;
    sub_27543ACD4();
    v48 = v53;
    OUTLINED_FUNCTION_12_8();
    sub_27543AEEC(&qword_2809DB9E8);
    v49 = v56;
    sub_27546E950();
    (*(v54 + 8))(v48, v49);
    OUTLINED_FUNCTION_5_15();
    sub_275439F3C(v26, v50);
  }

  return (*(v60 + 8))(v44, v38);
}

uint64_t TransitionPlanner.Song.Analysis.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  OUTLINED_FUNCTION_6_16();
  v3 = MEMORY[0x277D844C8];
  sub_27543ADD0(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v88 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v91 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v90 = v12;
  OUTLINED_FUNCTION_7_14(v13, &qword_2809DB9F8, v14, &_s8AnalysisO18MusicKitCodingKeysON);
  v16 = OUTLINED_FUNCTION_8_9(v15);
  v86 = v17;
  v87 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_9();
  v89 = v21;
  v22 = OUTLINED_FUNCTION_4_17();
  sub_27543ADD0(v22, v23, v24, v25, v3);
  v27 = OUTLINED_FUNCTION_8_9(v26);
  v92 = v28;
  v93 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v81 - v32;
  v34 = type metadata accessor for TransitionPlanner.Song.Analysis();
  v35 = OUTLINED_FUNCTION_19(v34);
  v37 = *(v36 + 64);
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v81 - v42;
  MEMORY[0x28223BE20](v41);
  v45 = &v81 - v44;
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543AD28();
  v47 = v94;
  sub_27546EAE0();
  if (v47)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v81 = v40;
  v82 = v43;
  v83 = v45;
  v84 = v34;
  v94 = a1;
  v48 = v93;
  v49 = sub_27546E8E0();
  result = sub_275433874(v49, 0);
  if (v52 == v53 >> 1)
  {
    v54 = v84;
LABEL_9:
    v65 = sub_27546E7D0();
    swift_allocError();
    v67 = v66;
    sub_2754333D4();
    v69 = *(v68 + 48);
    *v67 = v54;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v65 - 8) + 104))(v67, *MEMORY[0x277D84160], v65);
    swift_willThrow();
    swift_unknownObjectRelease();
    v70 = OUTLINED_FUNCTION_2_28();
    v71(v70);
    a1 = v94;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  if (v52 >= (v53 >> 1))
  {
    __break(1u);
  }

  else
  {
    v55 = *(v51 + v52);
    sub_27543386C(v52 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v60 = v91;
    if (v57 != v59 >> 1)
    {
      v54 = v84;
      goto LABEL_9;
    }

    if (v55)
    {
      v96 = 1;
      sub_27543AC80();
      v61 = v90;
      OUTLINED_FUNCTION_9_8();
      v62 = v48;
      sub_27543AE38();
      v63 = v88;
      sub_27546E8D0();
      v64 = v92;
      swift_unknownObjectRelease();
      (*(v60 + 8))(v61, v63);
      (*(v64 + 8))(v33, v62);
      v73 = v81;
      swift_storeEnumTagMultiPayload();
      v74 = v73;
      v75 = v85;
      v76 = v83;
    }

    else
    {
      v95 = 0;
      sub_27543ACD4();
      OUTLINED_FUNCTION_9_8();
      v76 = v83;
      type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
      sub_27543AEEC(&qword_2809DBA10);
      v72 = v82;
      sub_27546E8D0();
      swift_unknownObjectRelease();
      v77 = OUTLINED_FUNCTION_11_10();
      v78(v77);
      v79 = OUTLINED_FUNCTION_2_28();
      v80(v79);
      swift_storeEnumTagMultiPayload();
      v74 = v72;
      v75 = v85;
    }

    sub_27543AE8C(v74, v76, type metadata accessor for TransitionPlanner.Song.Analysis);
    sub_27543AE8C(v76, v75, type metadata accessor for TransitionPlanner.Song.Analysis);
    return __swift_destroy_boxed_opaque_existential_1(v94);
  }

  return result;
}

unint64_t sub_27543AC80()
{
  result = qword_2809DB9B8;
  if (!qword_2809DB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9B8);
  }

  return result;
}

unint64_t sub_27543ACD4()
{
  result = qword_2809DB9C8;
  if (!qword_2809DB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9C8);
  }

  return result;
}

unint64_t sub_27543AD28()
{
  result = qword_2809DB9D8;
  if (!qword_2809DB9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9D8);
  }

  return result;
}

unint64_t sub_27543AD7C()
{
  result = qword_2809DB9E0;
  if (!qword_2809DB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DB9E0);
  }

  return result;
}

void sub_27543ADD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_27543AE38()
{
  result = qword_2809DBA08;
  if (!qword_2809DBA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA08);
  }

  return result;
}

uint64_t sub_27543AE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_19(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_27543AEEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27543AF38()
{
  result = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s8AnalysisO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543B06CLL);
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

_BYTE *sub_27543B0B8(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27543B154);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27543B190()
{
  result = qword_2809DBA28;
  if (!qword_2809DBA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA28);
  }

  return result;
}

unint64_t sub_27543B1E8()
{
  result = qword_2809DBA30;
  if (!qword_2809DBA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA30);
  }

  return result;
}

unint64_t sub_27543B240()
{
  result = qword_2809DBA38;
  if (!qword_2809DBA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA38);
  }

  return result;
}

unint64_t sub_27543B298()
{
  result = qword_2809DBA40;
  if (!qword_2809DBA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA40);
  }

  return result;
}

unint64_t sub_27543B2F0()
{
  result = qword_2809DBA48;
  if (!qword_2809DBA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA48);
  }

  return result;
}

unint64_t sub_27543B348()
{
  result = qword_2809DBA50;
  if (!qword_2809DBA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA50);
  }

  return result;
}

unint64_t sub_27543B3A0()
{
  result = qword_2809DBA58;
  if (!qword_2809DBA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA58);
  }

  return result;
}

unint64_t sub_27543B3F8()
{
  result = qword_2809DBA60;
  if (!qword_2809DBA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA60);
  }

  return result;
}

unint64_t sub_27543B450()
{
  result = qword_2809DBA68;
  if (!qword_2809DBA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBA68);
  }

  return result;
}

void OUTLINED_FUNCTION_7_14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{

  sub_27543ADD0(0, a2, sub_27543ACD4, a4, v4);
}

uint64_t OUTLINED_FUNCTION_9_8()
{

  return sub_27546E850();
}

uint64_t OUTLINED_FUNCTION_12_8()
{

  return sub_27546E8F0();
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.duration.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.audioAnalysis.getter()
{
  v0 = *(type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis() + 24);
  OUTLINED_FUNCTION_5_16();
  return sub_27543B680();
}

uint64_t type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis()
{
  result = qword_2809DBB20;
  if (!qword_2809DBB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.flexAnalysis.getter()
{
  v0 = *(type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis() + 28);
  OUTLINED_FUNCTION_4_18();
  return sub_27543B680();
}

uint64_t sub_27543B680()
{
  v2 = OUTLINED_FUNCTION_15_6();
  sub_27543D684(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19(v6);
  (*(v7 + 16))(v0, v1);
  return v0;
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.spatialTimingInformation.getter()
{
  v0 = *(type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis() + 32);
  OUTLINED_FUNCTION_3_23();
  return sub_27543B680();
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.init(genres:duration:audioAnalysis:flexAnalysis:spatialTimingInformation:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_27543B948();
  v14 = OUTLINED_FUNCTION_11_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v19 = v18 - v17;
  v21 = *(v20 + 56);
  OUTLINED_FUNCTION_3_23();
  sub_27543B680();
  if (a3)
  {
    v22 = sub_27546E3B0();
    if (__swift_getEnumTagSinglePayload(v19 + v21, 1, v22) != 1)
    {
      OUTLINED_FUNCTION_0_32();
      sub_27543BA98(v19 + v21, v23, v24);
    }

LABEL_7:
    *a7 = a1;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3 & 1;
    v28 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
    v29 = v28[6];
    OUTLINED_FUNCTION_5_16();
    sub_27543BA38();
    v30 = v28[7];
    OUTLINED_FUNCTION_4_18();
    sub_27543BA38();
    v31 = v28[8];
    OUTLINED_FUNCTION_3_23();
    return sub_27543BA38();
  }

  v25 = sub_27546E3B0();
  if (__swift_getEnumTagSinglePayload(v19 + v21, 1, v25) != 1)
  {
    OUTLINED_FUNCTION_0_32();
    sub_27543BA98(v19 + v21, v26, v27);
  }

  if (a2 > 0.0)
  {
    goto LABEL_7;
  }

  sub_275408F98();
  swift_allocError();
  *v33 = 4;
  swift_willThrow();
  OUTLINED_FUNCTION_0_32();
  sub_27543BA98(a6, v34, v35);
  OUTLINED_FUNCTION_1_31();
  sub_27543BA98(a5, v36, v37);
  OUTLINED_FUNCTION_2_29();
  return sub_27543BA98(a4, v38, v39);
}

void sub_27543B948()
{
  if (!qword_2809DBA70)
  {
    sub_27543B9E8();
    sub_27543D684(255, &qword_2809DAFC0, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2809DBA70);
    }
  }
}

void sub_27543B9E8()
{
  if (!qword_2809DBA78)
  {
    v0 = sub_27546E6F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBA78);
    }
  }
}

uint64_t sub_27543BA38()
{
  v2 = OUTLINED_FUNCTION_15_6();
  sub_27543D684(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19(v6);
  (*(v7 + 32))(v0, v1);
  return v0;
}

uint64_t sub_27543BA98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_27543D684(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_19(v4);
  (*(v5 + 8))(a1);
  return a1;
}

BOOL static TransitionPlanner.Song.MusicKitAnalysis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_27546E3B0();
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v123 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v121 = v11 - v10;
  OUTLINED_FUNCTION_16_4();
  v12 = MEMORY[0x277D83D88];
  sub_27543D684(0, &qword_2809DAFC0, v2, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_9();
  v122 = v17;
  sub_27543C3E8(0, &qword_2809DBA80, &qword_2809DAFC0, v2);
  v125 = v18;
  OUTLINED_FUNCTION_19(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_9();
  v126 = v22;
  v130 = sub_27546E1B0();
  v23 = OUTLINED_FUNCTION_8_9(v130);
  v128 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18();
  v124 = v28 - v27;
  v29 = MEMORY[0x277D2A988];
  sub_27543D684(0, &qword_2809DAFB0, MEMORY[0x277D2A988], v12);
  OUTLINED_FUNCTION_11_0(v30);
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_9();
  v127 = v34;
  v35 = a2;
  sub_27543C3E8(0, &qword_2809DBA88, &qword_2809DAFB0, v29);
  v37 = v36;
  OUTLINED_FUNCTION_19(v36);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_9();
  v129 = v41;
  v42 = sub_27546E2E0();
  v43 = OUTLINED_FUNCTION_8_9(v42);
  v131 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18();
  v49 = v48 - v47;
  v50 = MEMORY[0x277D2AAB8];
  sub_27543D684(0, &qword_2809DAF60, MEMORY[0x277D2AAB8], v12);
  OUTLINED_FUNCTION_11_0(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v54);
  v56 = &v118 - v55;
  sub_27543C3E8(0, &qword_2809DBA90, &qword_2809DAF60, v50);
  v58 = v57;
  OUTLINED_FUNCTION_19(v57);
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v61);
  v63 = &v118 - v62;
  if ((sub_27543C5EC(*a1, *v35) & 1) == 0)
  {
    return 0;
  }

  v64 = *(v35 + 16);
  if (*(a1 + 16))
  {
    if (!*(v35 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(v35 + 8))
    {
      v64 = 1;
    }

    if (v64)
    {
      return 0;
    }
  }

  v119 = v5;
  v65 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v120 = v35;
  v118 = v65;
  v66 = *(v65 + 24);
  v67 = *(v58 + 48);
  sub_27543B680();
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(v63, 1, v42);
  if (v70)
  {
    OUTLINED_FUNCTION_23_4(&v63[v67], 1, v42);
    if (v70)
    {
      OUTLINED_FUNCTION_2_29();
      sub_27543BA98(v63, v68, v69);
      goto LABEL_18;
    }

LABEL_16:
    v71 = &qword_2809DBA90;
    v72 = &qword_2809DAF60;
    v73 = MEMORY[0x277D2AAB8];
LABEL_27:
    v90 = v73;
    v91 = v63;
LABEL_28:
    sub_27543C800(v91, v71, v72, v90);
    return 0;
  }

  OUTLINED_FUNCTION_5_16();
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(&v63[v67], 1, v42);
  if (v70)
  {
    (*(v131 + 8))(v56, v42);
    goto LABEL_16;
  }

  v74 = v131;
  (*(v131 + 32))(v49, &v63[v67], v42);
  OUTLINED_FUNCTION_8_13();
  sub_27543E444(v75, v76);
  v77 = sub_27546E4E0();
  v78 = *(v74 + 8);
  v78(v49, v42);
  v78(v56, v42);
  OUTLINED_FUNCTION_2_29();
  sub_27543BA98(v63, v79, v80);
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_18:
  v81 = v118;
  v82 = *(v118 + 28);
  v83 = *(v37 + 48);
  v63 = v129;
  sub_27543B680();
  sub_27543B680();
  v84 = v130;
  OUTLINED_FUNCTION_23_4(v63, 1, v130);
  if (v70)
  {
    OUTLINED_FUNCTION_23_4(&v63[v83], 1, v84);
    v85 = v119;
    if (v70)
    {
      OUTLINED_FUNCTION_1_31();
      sub_27543BA98(v63, v86, v87);
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_4_18();
  v88 = v127;
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(&v63[v83], 1, v84);
  v85 = v119;
  if (v89)
  {
    (*(v128 + 8))(v88, v84);
LABEL_26:
    v71 = &qword_2809DBA88;
    v72 = &qword_2809DAFB0;
    v73 = MEMORY[0x277D2A988];
    goto LABEL_27;
  }

  v93 = v128;
  v94 = &v63[v83];
  v95 = v124;
  (*(v128 + 32))(v124, v94, v84);
  OUTLINED_FUNCTION_6_17();
  sub_27543E444(v96, v97);
  v98 = sub_27546E4E0();
  v99 = *(v93 + 8);
  v99(v95, v84);
  v99(v88, v84);
  OUTLINED_FUNCTION_1_31();
  sub_27543BA98(v63, v100, v101);
  if ((v98 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v102 = *(v81 + 32);
  v103 = *(v125 + 48);
  OUTLINED_FUNCTION_16_4();
  v104 = v126;
  sub_27543B680();
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(v104, 1, v85);
  if (v70)
  {
    OUTLINED_FUNCTION_23_4(v104 + v103, 1, v85);
    if (v70)
    {
      OUTLINED_FUNCTION_0_32();
      sub_27543BA98(v104, v105, v106);
      return 1;
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_3_23();
  v107 = v122;
  sub_27543B680();
  OUTLINED_FUNCTION_23_4(v104 + v103, 1, v85);
  if (v108)
  {
    (*(v123 + 8))(v107, v85);
LABEL_39:
    OUTLINED_FUNCTION_3_23();
    v91 = v104;
    goto LABEL_28;
  }

  v109 = v123;
  v110 = v104 + v103;
  v111 = v121;
  (*(v123 + 32))(v121, v110, v85);
  OUTLINED_FUNCTION_9_9();
  sub_27543E444(v112, v113);
  v114 = sub_27546E4E0();
  v115 = *(v109 + 8);
  v115(v111, v85);
  v115(v107, v85);
  OUTLINED_FUNCTION_0_32();
  sub_27543BA98(v104, v116, v117);
  return (v114 & 1) != 0;
}

void sub_27543C3E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_27543D684(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_27543C460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_27546E9A0() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27543C4EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = (a2 + 48); ; i += 3)
    {
      v5 = *v3;
      v6 = *i;
      if (*(v3 - 2) != *(i - 2) || *(v3 - 1) != *(i - 1))
      {
        v8 = *(v3 - 1);
        v9 = *(i - 1);
        if ((sub_27546E9A0() & 1) == 0)
        {
          break;
        }
      }

      v10 = sub_27543C4EC(v5, v6);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27543C5EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_27546E490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_27543E444(&qword_2809DBB48, MEMORY[0x277CD8320]);
    v22 = sub_27546E4E0();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_27543C800(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_27543C3E8(0, a2, a3, a4);
  OUTLINED_FUNCTION_19(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_27543C854(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_22();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (a2 + 40);
  v4 = (result + 40);
  while (v2)
  {
    result = *v4 == *v3 && *(v3 - 1) - *(v4 - 1) == 0.0;
    v5 = result != 1 || v2-- == 1;
    v3 += 2;
    v4 += 2;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27543C8C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = v5;
        v7 = *v4++;
        *&v6.f64[0] = vmovn_s64(vceqzq_f64(vsubq_f64(v7, v6)));
        v8 = LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]);
        if ((LOBYTE(v6.f64[0]) & BYTE4(v6.f64[0]) & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_27543C938(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v75 = *(result + 16);
  v80 = 0;
  v65 = a2 + 32;
  v66 = result + 32;
  while (1)
  {
    if (v80 == v75)
    {
      goto LABEL_123;
    }

    v3 = v66 + 40 * v80;
    v4 = v65 + 40 * v80;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(*(v3 + 16), *(v4 + 16))))) & 1) == 0)
    {
      return 0;
    }

    v5 = *(v3 + 32);
    v6 = *(v4 + 32);
    v7 = *(v5 + 16);
    if (v7 != *(v6 + 16))
    {
      return 0;
    }

    if (v7 && v5 != v6)
    {
      break;
    }

LABEL_13:
    result = 1;
    if (++v80 == v75)
    {
      return result;
    }
  }

  v9 = 0;
  v73 = v6;
  v74 = *(v3 + 32);
  while (v7)
  {
    result = *(v5 + v9 + 32);
    v10 = *(v5 + v9 + 48);
    v11 = *(v5 + v9 + 56);
    v12 = *(v5 + v9 + 64);
    v13 = *(v5 + v9 + 72);
    v14 = *(v5 + v9 + 80);
    v15 = *(v5 + v9 + 88);
    v16 = *(v5 + v9 + 96);
    v18 = *(v5 + v9 + 104);
    v17 = *(v5 + v9 + 112);
    v19 = *(v5 + v9 + 120);
    v79 = *(v5 + v9 + 136);
    v20 = *(v5 + v9 + 144);
    v82 = *(v5 + v9 + 128);
    v83 = *(v5 + v9 + 152);
    v87 = *(v5 + v9 + 160);
    v77 = *(v5 + v9 + 168);
    v84 = *(v5 + v9 + 176);
    v89 = *(v5 + v9 + 177);
    v21 = *(v6 + v9 + 48);
    v22 = *(v6 + v9 + 56);
    v23 = *(v6 + v9 + 64);
    v24 = *(v6 + v9 + 72);
    v25 = *(v6 + v9 + 80);
    v27 = *(v6 + v9 + 88);
    v26 = *(v6 + v9 + 96);
    v29 = *(v6 + v9 + 104);
    v28 = *(v6 + v9 + 112);
    v30 = *(v6 + v9 + 120);
    v81 = *(v6 + v9 + 128);
    v78 = *(v6 + v9 + 136);
    v31 = *(v6 + v9 + 144);
    v85 = *(v6 + v9 + 152);
    v86 = *(v6 + v9 + 160);
    v76 = *(v6 + v9 + 168);
    v90 = *(v6 + v9 + 176);
    v32 = result == *(v6 + v9 + 32) && *(v5 + v9 + 40) == *(v6 + v9 + 40);
    v88 = *(v6 + v9 + 177);
    if (v32)
    {
      if (v10 != v21 || v11 != v22 || v12 != v23)
      {
        return 0;
      }
    }

    else
    {
      v71 = *(v6 + v9 + 96);
      v72 = *(v6 + v9 + 88);
      v69 = *(v6 + v9 + 112);
      v70 = *(v6 + v9 + 104);
      v67 = *(v5 + v9 + 96);
      v68 = *(v5 + v9 + 88);
      v33 = *(v5 + v9 + 104);
      v34 = *(v5 + v9 + 112);
      v35 = sub_27546E9A0();
      result = 0;
      if ((v35 & 1) == 0)
      {
        return result;
      }

      v36 = v10 == v21 && v11 == v22;
      v37 = v36 && v12 == v23;
      v17 = v34;
      v18 = v33;
      v16 = v67;
      v15 = v68;
      v28 = v69;
      v29 = v70;
      v26 = v71;
      v27 = v72;
      if (!v37)
      {
        return result;
      }
    }

    if (v13 == v24 && v14 == v25)
    {
      if (v15 != v27 || v16 != v26 || v18 != v29 || v17 != v28)
      {
        return 0;
      }
    }

    else
    {
      v41 = v27;
      v42 = v26;
      v43 = v29;
      v44 = v28;
      v45 = v15;
      v46 = v17;
      v47 = sub_27546E9A0();
      result = 0;
      if ((v47 & 1) == 0)
      {
        return result;
      }

      v48 = v45 == v41 && v16 == v42;
      v49 = v48 && v18 == v43;
      if (!v49 || v46 != v44)
      {
        return result;
      }
    }

    if (v20)
    {
      if (v20 == 1)
      {
        if (v31 != 1)
        {
          return 0;
        }

        if (*&v19 == *&v30 && v82 == v81)
        {
          goto LABEL_85;
        }

LABEL_78:
        result = sub_27546E9A0();
        if ((result & 1) == 0)
        {
          return 0;
        }

        goto LABEL_85;
      }

      if (v31 != 2 || v19 != v30)
      {
        return 0;
      }
    }

    else
    {
      if (v31 || v19 != v30)
      {
        return 0;
      }

      result = v82;
      if (v82 != v81 || v79 != v78)
      {
        goto LABEL_78;
      }
    }

LABEL_85:
    if (!v84)
    {
      v58 = v88;
      v57 = v89;
      result = v87;
      if (v90 || v83 != v85)
      {
        return 0;
      }

      v61 = v87 == v86;
      v60 = v76;
      v59 = v77;
LABEL_92:
      if (!v61 || v59 != v60)
      {
        result = sub_27546E9A0();
        if ((result & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_103;
    }

    v58 = v88;
    v57 = v89;
    v60 = v86;
    v59 = v87;
    if (v84 == 1)
    {
      result = *&v83;
      if (v90 != 1)
      {
        return 0;
      }

      v61 = *&v83 == *&v85;
      goto LABEL_92;
    }

    if (v90 != 2 || v83 != v85)
    {
      return 0;
    }

LABEL_103:
    if (v57 >> 6)
    {
      if (v57 >> 6 == 1)
      {
        result = 0;
        if ((v58 & 0xC0) != 0x40 || ((v58 ^ v57) & 0x3F) != 0)
        {
          return result;
        }
      }

      else if (v57 == 128)
      {
        if (v58 != 128)
        {
          return 0;
        }
      }

      else if (v58 != 129)
      {
        return 0;
      }
    }

    else if (v58 > 0x3F || v57 != v58)
    {
      return 0;
    }

    v9 += 152;
    --v7;
    v6 = v73;
    v5 = v74;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
  return result;
}

uint64_t sub_27543CD70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 152)
    {
      memcpy(__dst, v3, 0x92uLL);
      memcpy(v9, v3, 0x92uLL);
      memcpy(v11, i, 0x92uLL);
      memcpy(__src, i, 0x92uLL);
      sub_2753EF2CC(__dst, v7);
      sub_2753EF2CC(v11, v7);
      v5 = sub_275425EDC(v9, __src);
      memcpy(v12, __src, 0x92uLL);
      sub_2753EF328(v12);
      memcpy(v13, v9, 0x92uLL);
      sub_2753EF328(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 152;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_27543CE80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (a2 + 48);
  v4 = (a1 + 48);
  while (1)
  {
    result = 0;
    if (*(v4 - 2) != *(v3 - 2) || *(v3 - 1) - *(v4 - 1) != 0.0)
    {
      break;
    }

    v7 = *v4;
    v4 += 3;
    v6 = v7;
    v8 = *v3;
    v9 = v7 >> 6;
    if (v7 >> 6)
    {
      if (v9 == 1)
      {
        result = 0;
        if ((v8 & 0xC0) != 0x40 || ((v8 ^ v6) & 0x3F) != 0)
        {
          return result;
        }
      }

      else if (v6 == 128)
      {
        if (v8 != 128)
        {
          return 0;
        }
      }

      else if (v8 != 129)
      {
        return 0;
      }
    }

    else if (v8 > 0x3F || v6 != v8)
    {
      return 0;
    }

    v3 += 3;
    if (!--v2)
    {
      return OUTLINED_FUNCTION_20();
    }
  }

  return result;
}

uint64_t sub_27543CF50(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_22();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27543CFA4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_22();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_20();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    v8 = v7 - v6;
    result = v8 == 0.0;
    if (v8 != 0.0 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27543CFFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x616E416F69647561 && a2 == 0xED0000736973796CLL;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C616E4178656C66 && a2 == 0xEC00000073697379;
        if (v8 || (sub_27546E9A0() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000018 && 0x800000027546F3C0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_27546E9A0();

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

unint64_t sub_27543D1B4(char a1)
{
  result = 0x7365726E6567;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x616E416F69647561;
      break;
    case 3:
      result = 0x6C616E4178656C66;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27543D280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27543CFFC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27543D2A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27543D1AC();
  *a1 = result;
  return result;
}

uint64_t sub_27543D2D0(uint64_t a1)
{
  v2 = sub_27543D630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543D30C(uint64_t a1)
{
  v2 = sub_27543D630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.MusicKitAnalysis.encode(to:)(void *a1)
{
  v3 = v1;
  sub_27543DC70(0, &qword_2809DBAB0, MEMORY[0x277D84538]);
  v6 = v5;
  OUTLINED_FUNCTION_8_9(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v30[-v12];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543D630();
  sub_27546EB00();
  v31 = *v3;
  v30[7] = 0;
  OUTLINED_FUNCTION_7_15();
  sub_27543D684(0, v15, v16, MEMORY[0x277D83940]);
  sub_27543DCD4(&qword_2809DBAC8, &qword_2809DBAD0);
  OUTLINED_FUNCTION_13_8();
  sub_27546E950();
  if (!v2)
  {
    v17 = v3[1];
    v18 = *(v3 + 16);
    v30[6] = 1;
    sub_27546E900();
    v19 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
    v20 = v19[6];
    v30[5] = 2;
    sub_27546E2E0();
    OUTLINED_FUNCTION_8_13();
    sub_27543E444(v21, v22);
    OUTLINED_FUNCTION_13_8();
    sub_27546E910();
    v23 = v19[7];
    v30[4] = 3;
    sub_27546E1B0();
    OUTLINED_FUNCTION_6_17();
    sub_27543E444(v24, v25);
    OUTLINED_FUNCTION_13_8();
    sub_27546E910();
    v26 = v19[8];
    v30[3] = 4;
    sub_27546E3B0();
    OUTLINED_FUNCTION_9_9();
    sub_27543E444(v27, v28);
    OUTLINED_FUNCTION_13_8();
    sub_27546E910();
  }

  return (*(v8 + 8))(v13, v6);
}

unint64_t sub_27543D630()
{
  result = qword_2809DBAB8;
  if (!qword_2809DBAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBAB8);
  }

  return result;
}

void sub_27543D684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t TransitionPlanner.Song.MusicKitAnalysis.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  OUTLINED_FUNCTION_0_32();
  v3 = MEMORY[0x277D83D88];
  sub_27543D684(0, v4, v5, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_9();
  v61 = v10;
  OUTLINED_FUNCTION_1_31();
  sub_27543D684(0, v11, v12, v3);
  OUTLINED_FUNCTION_11_0(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v16);
  v18 = v58 - v17;
  OUTLINED_FUNCTION_2_29();
  sub_27543D684(0, v19, v20, v3);
  OUTLINED_FUNCTION_11_0(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v24);
  sub_27543DC70(0, &qword_2809DBAF0, MEMORY[0x277D844C8]);
  v64 = v25;
  OUTLINED_FUNCTION_8_9(v25);
  v62 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v29);
  v31 = v58 - v30;
  v32 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v33 = OUTLINED_FUNCTION_19(v32);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  v38 = v37 - v36;
  v39 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543D630();
  v63 = v31;
  v40 = v65;
  sub_27546EAE0();
  if (v40)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v65 = v18;
  OUTLINED_FUNCTION_7_15();
  sub_27543D684(0, v41, v42, MEMORY[0x277D83940]);
  v70 = 0;
  sub_27543DCD4(&qword_2809DBAF8, &qword_2809DBB00);
  sub_27546E8D0();
  v43 = v71;
  *v38 = v71;
  v69 = 1;
  *(v38 + 8) = sub_27546E870();
  *(v38 + 16) = v44 & 1;
  sub_27546E2E0();
  v68 = 2;
  OUTLINED_FUNCTION_8_13();
  sub_27543E444(v45, v46);
  v59 = v38;
  OUTLINED_FUNCTION_19_5();
  v58[1] = v43;
  v47 = v32[6];
  OUTLINED_FUNCTION_5_16();
  sub_27543BA38();
  sub_27546E1B0();
  v67 = 3;
  OUTLINED_FUNCTION_6_17();
  sub_27543E444(v48, v49);
  OUTLINED_FUNCTION_19_5();
  v50 = v32[7];
  OUTLINED_FUNCTION_4_18();
  v51 = v59;
  sub_27543BA38();
  sub_27546E3B0();
  v66 = 4;
  OUTLINED_FUNCTION_9_9();
  sub_27543E444(v52, v53);
  OUTLINED_FUNCTION_19_5();
  v54 = OUTLINED_FUNCTION_10_10();
  v55(v54);
  v56 = v32[8];
  OUTLINED_FUNCTION_3_23();
  sub_27543BA38();
  sub_2753FFEA4(v51, v60);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_275404FBC(v51);
}

void sub_27543DC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27543D630();
    v7 = a3(a1, &_s16MusicKitAnalysisV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_27543DCD4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    OUTLINED_FUNCTION_7_15();
    sub_27543D684(255, v5, v6, MEMORY[0x277D83940]);
    sub_27543E444(a2, MEMORY[0x277CD8320]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27543DDCC(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    sub_27543D684(0, v8, v9, MEMORY[0x277D83D88]);
    v11 = OUTLINED_FUNCTION_24_3(v10);
    if (*(v12 + 84) == a2)
    {
      v13 = v11;
      v14 = a3[6];
    }

    else
    {
      OUTLINED_FUNCTION_1_31();
      sub_27543D684(0, v15, v16, MEMORY[0x277D83D88]);
      v18 = OUTLINED_FUNCTION_24_3(v17);
      if (*(v19 + 84) == a2)
      {
        v13 = v18;
        v14 = a3[7];
      }

      else
      {
        OUTLINED_FUNCTION_0_32();
        sub_27543D684(0, v20, v21, MEMORY[0x277D83D88]);
        v13 = v22;
        v14 = a3[8];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v14, a2, v13);
  }
}

void *sub_27543DF48(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    sub_27543D684(0, v8, v9, MEMORY[0x277D83D88]);
    v11 = OUTLINED_FUNCTION_24_3(v10);
    if (*(v12 + 84) == a3)
    {
      v13 = v11;
      v14 = a4[6];
    }

    else
    {
      OUTLINED_FUNCTION_1_31();
      sub_27543D684(0, v15, v16, MEMORY[0x277D83D88]);
      v18 = OUTLINED_FUNCTION_24_3(v17);
      if (*(v19 + 84) == a3)
      {
        v13 = v18;
        v14 = a4[7];
      }

      else
      {
        OUTLINED_FUNCTION_0_32();
        sub_27543D684(0, v20, v21, MEMORY[0x277D83D88]);
        v13 = v22;
        v14 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v14, a2, a2, v13);
  }

  return result;
}

void sub_27543E0AC()
{
  sub_27543D684(319, &qword_2809DBAC0, MEMORY[0x277CD8320], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_27543B9E8();
    if (v1 <= 0x3F)
    {
      sub_27543D684(319, &qword_2809DAF60, MEMORY[0x277D2AAB8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_27543D684(319, &qword_2809DAFB0, MEMORY[0x277D2A988], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_27543D684(319, &qword_2809DAFC0, MEMORY[0x277D2AC90], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *_s16MusicKitAnalysisV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27543E304);
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

unint64_t sub_27543E340()
{
  result = qword_2809DBB30;
  if (!qword_2809DBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB30);
  }

  return result;
}

unint64_t sub_27543E398()
{
  result = qword_2809DBB38;
  if (!qword_2809DBB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB38);
  }

  return result;
}

unint64_t sub_27543E3F0()
{
  result = qword_2809DBB40;
  if (!qword_2809DBB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB40);
  }

  return result;
}

uint64_t sub_27543E444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_5()
{

  return sub_27546E890();
}

unint64_t sub_27543E648()
{
  result = qword_2809DBB50;
  if (!qword_2809DBB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB50);
  }

  return result;
}

unint64_t sub_27543E6A0()
{
  result = qword_2809DBB58;
  if (!qword_2809DBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB58);
  }

  return result;
}

unint64_t sub_27543E7B0()
{
  result = qword_2809DBB60;
  if (!qword_2809DBB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB60);
  }

  return result;
}

unint64_t sub_27543E808()
{
  result = qword_2809DBB68;
  if (!qword_2809DBB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB68);
  }

  return result;
}

uint64_t sub_27543E908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = TransitionPlanner.Song.MusicKitAnalysis.Options.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27543E948@<X0>(uint64_t *a1@<X8>)
{
  result = TransitionPlanner.Song.MusicKitAnalysis.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_27543E984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_27546E9A0();
  }
}

uint64_t sub_27543E9D0()
{
  OUTLINED_FUNCTION_26_2();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_27546E9A0();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_27543EA4C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xED0000656D614E72;
  }

  OUTLINED_FUNCTION_26_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6();
  }

  return v8 & 1;
}

uint64_t sub_27543EAE8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 6581861;
  }

  else
  {
    v3 = 0x7472617473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (a2)
  {
    v5 = 6581861;
  }

  else
  {
    v5 = 0x7472617473;
  }

  if (a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6();
  }

  return v8 & 1;
}

uint64_t sub_27543EB70(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000736E6FLL;
  }

  else
  {
    v1 = 0xE900000000000074;
  }

  OUTLINED_FUNCTION_26_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6();
  }

  return v8 & 1;
}

uint64_t sub_27543EC0C(char a1)
{
  if (a1)
  {
    v1 = 0xEF73646E6F636553;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  OUTLINED_FUNCTION_26_2();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_19_6();
  }

  return v8 & 1;
}

uint64_t sub_27543ECA8(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000644972;
  v3 = 0x6574656D61726170;
  v4 = a1;
  v5 = 0x6574656D61726170;
  v6 = 0xEB00000000644972;
  switch(v4)
  {
    case 1:
      v5 = 0x6D69547472617473;
      v6 = 0xE900000000000065;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x656D6954646E65;
      break;
    case 3:
      v5 = 0x6C61567472617473;
      v6 = 0xEA00000000006575;
      break;
    case 4:
      v6 = 0xE800000000000000;
      v5 = 0x65756C6156646E65;
      break;
    case 5:
      v5 = 0x6C6F707265746E69;
      v6 = 0xED00006E6F697461;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6D69547472617473;
      v2 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x656D6954646E65;
      break;
    case 3:
      v3 = 0x6C61567472617473;
      v2 = 0xEA00000000006575;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x65756C6156646E65;
      break;
    case 5:
      v3 = 0x6C6F707265746E69;
      v2 = 0xED00006E6F697461;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_27546E9A0();
  }

  return v8 & 1;
}

uint64_t sub_27543EEB4(char a1, char a2)
{
  v3 = 0xE200000000000000;
  v4 = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0xE600000000000000;
      v4 = 0x74657366666FLL;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v4 = 0x6E6F697461727564;
      break;
    case 3:
      v4 = 0x7463757274736E69;
      v3 = 0xEC000000736E6F69;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  switch(a2)
  {
    case 1:
      v5 = 0xE600000000000000;
      v6 = 0x74657366666FLL;
      break;
    case 2:
      v5 = 0xE800000000000000;
      v6 = 0x6E6F697461727564;
      break;
    case 3:
      v6 = 0x7463757274736E69;
      v5 = 0xEC000000736E6F69;
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
    v8 = OUTLINED_FUNCTION_19_6();
  }

  return v8 & 1;
}

uint64_t TransitionPlanner.Song.id.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t TransitionPlanner.Song.duration.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t TransitionPlanner.Song.analysis.getter()
{
  v0 = *(type metadata accessor for TransitionPlanner.Song() + 24);
  OUTLINED_FUNCTION_3_24();
  return sub_275440AB8();
}

uint64_t type metadata accessor for TransitionPlanner.Song()
{
  result = qword_2809DBBD8;
  if (!qword_2809DBBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TransitionPlanner.Song.context.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TransitionPlanner.Song() + 28));
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u8[1];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u8[1] = v5;
  return result;
}

uint64_t TransitionPlanner.Song.init(id:duration:analysis:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = *a5;
  v12 = a5[1];
  v13 = *(a5 + 16);
  v14 = *(a5 + 17);
  v26[0] = *a1;
  v26[1] = v9;
  v23[0] = v11;
  v23[1] = v12;
  v24 = v13;
  v22 = v14;
  v25 = v14;
  v15 = a3 & 1;
  v27 = a2;
  sub_27543F240(v26, a2, a3 & 1, a4, v23);
  if (v6)
  {
    OUTLINED_FUNCTION_1_32();
    sub_275440D5C(a4, v16, v17);
  }

  else
  {
    v21 = type metadata accessor for TransitionPlanner.Song();
    v19 = *(v21 + 24);
    OUTLINED_FUNCTION_3_24();
    result = sub_275440B18();
    *a6 = v10;
    *(a6 + 8) = v9;
    *(a6 + 16) = v27;
    *(a6 + 24) = v15;
    v20 = a6 + *(v21 + 28);
    *v20 = v11;
    *(v20 + 8) = v12;
    *(v20 + 16) = v13;
    *(v20 + 17) = v22;
  }

  return result;
}

uint64_t sub_27543F240(uint64_t *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_2754409F4(0, &qword_2809DB048, type metadata accessor for TransitionPlanner.Song.Analysis, MEMORY[0x277D83D88]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v25 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = *a5;
  v17 = *(a5 + 16);
  v18 = *(a5 + 17);
  if (!sub_275432624(v14, v15))
  {
    sub_275408F98();
    swift_allocError();
    v23 = 1;
    goto LABEL_18;
  }

  if ((a3 & 1) == 0)
  {
    if (*&a2 <= 0.0)
    {
      goto LABEL_17;
    }

    if ((v18 & 1) == 0 && (v17 & 1) == 0 && (v16 < 0.0 || v16 > *&a2))
    {
      sub_275408F98();
      swift_allocError();
      v23 = 8;
      goto LABEL_18;
    }
  }

  sub_275440B78(a4, a2, a3 & 1);
  if ((v19 & 0x100) != 0)
  {
LABEL_17:
    sub_275408F98();
    swift_allocError();
    v23 = 2;
    goto LABEL_18;
  }

  sub_275440AB8();
  v20 = type metadata accessor for TransitionPlanner.Song.Analysis();
  result = __swift_getEnumTagSinglePayload(v13, 1, v20);
  if (result == 1)
  {
    return result;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_275443F60(v13, type metadata accessor for TransitionPlanner.Song.Analysis);
  }

  sub_275408F98();
  swift_allocError();
  v23 = 3;
LABEL_18:
  *v22 = v23;
  return swift_willThrow();
}

uint64_t sub_27543F484(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x736973796C616E61 && a2 == 0xE800000000000000;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_27546E9A0();

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

uint64_t sub_27543F5E4(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461727564;
      break;
    case 2:
      result = 0x736973796C616E61;
      break;
    case 3:
      result = 0x747865746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_27543F674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27543F484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27543F69C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27543F5DC();
  *a1 = result;
  return result;
}

uint64_t sub_27543F6C4(uint64_t a1)
{
  v2 = sub_27543F9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27543F700(uint64_t a1)
{
  v2 = sub_27543F9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.encode(to:)(void *a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_12_9();
  sub_275444268(0, v4, v5, &_s4SongV10CodingKeysON, MEMORY[0x277D84538]);
  v7 = v6;
  OUTLINED_FUNCTION_8_9(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543F9A8();
  sub_27546EB00();
  v16 = *(v2 + 8);
  *&v28 = *v2;
  *(&v28 + 1) = v16;
  v31 = 0;
  v17 = sub_27543F9FC();

  OUTLINED_FUNCTION_27_2();
  sub_27546E950();
  if (v17)
  {
  }

  else
  {

    v18 = *(v2 + 16);
    v19 = *(v2 + 24);
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_27_2();
    sub_27546E900();
    v20 = type metadata accessor for TransitionPlanner.Song();
    v21 = *(v20 + 24);
    LOBYTE(v28) = 2;
    type metadata accessor for TransitionPlanner.Song.Analysis();
    OUTLINED_FUNCTION_14_5();
    sub_275440DC4(v22, v23);
    OUTLINED_FUNCTION_27_2();
    sub_27546E910();
    v24 = (v2 + *(v20 + 28));
    v25 = *(v24 + 16);
    v26 = *(v24 + 17);
    v28 = *v24;
    v29 = v25;
    v30 = v26;
    v31 = 3;
    sub_27543FA50();
    OUTLINED_FUNCTION_27_2();
    sub_27546E910();
  }

  return (*(v9 + 8))(v14, v7);
}

unint64_t sub_27543F9A8()
{
  result = qword_2809DBB78;
  if (!qword_2809DBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB78);
  }

  return result;
}

unint64_t sub_27543F9FC()
{
  result = qword_2809DBB80;
  if (!qword_2809DBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB80);
  }

  return result;
}

unint64_t sub_27543FA50()
{
  result = qword_2809DBB90;
  if (!qword_2809DBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBB90);
  }

  return result;
}

uint64_t TransitionPlanner.Song.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_32();
  sub_2754409F4(0, v3, v4, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_9();
  sub_275444268(0, v9, v10, &_s4SongV10CodingKeysON, MEMORY[0x277D844C8]);
  OUTLINED_FUNCTION_8_9(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v14);
  v15 = type metadata accessor for TransitionPlanner.Song();
  v16 = OUTLINED_FUNCTION_19(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  v21 = v20 - v19;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27543F9A8();
  sub_27546EAE0();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_27543FE78();
  OUTLINED_FUNCTION_24_4();
  sub_27546E8D0();
  *v21 = v33;
  OUTLINED_FUNCTION_24_4();
  *(v21 + 16) = sub_27546E870();
  *(v21 + 24) = v23 & 1;
  type metadata accessor for TransitionPlanner.Song.Analysis();
  LOBYTE(v33) = 2;
  OUTLINED_FUNCTION_14_5();
  sub_275440DC4(v24, v25);
  OUTLINED_FUNCTION_24_4();
  sub_27546E890();
  v26 = *(v15 + 24);
  OUTLINED_FUNCTION_3_24();
  sub_275440B18();
  sub_27543FECC();
  OUTLINED_FUNCTION_24_4();
  sub_27546E890();
  v27 = OUTLINED_FUNCTION_20_4();
  v28(v27);
  v29 = v21 + *(v15 + 28);
  *v29 = v33;
  *(v29 + 16) = v34;
  *(v29 + 17) = v35;
  sub_275440CFC(v21, a2, type metadata accessor for TransitionPlanner.Song);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_275443F60(v21, type metadata accessor for TransitionPlanner.Song);
}

unint64_t sub_27543FE78()
{
  result = qword_2809DBBA0;
  if (!qword_2809DBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBA0);
  }

  return result;
}

unint64_t sub_27543FECC()
{
  result = qword_2809DBBB0;
  if (!qword_2809DBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBB0);
  }

  return result;
}

uint64_t TransitionPlanner.Song.init(musicKitSong:options:context:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v158 = a4;
  OUTLINED_FUNCTION_1_32();
  sub_2754409F4(0, v7, v8, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v154 - v13;
  sub_27543B948();
  v16 = v15;
  v17 = OUTLINED_FUNCTION_19(v15);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v171 = v21 - v20;
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_28_2(v22, v23, v24);
  OUTLINED_FUNCTION_11_0(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v28);
  v30 = &v154 - v29;
  OUTLINED_FUNCTION_13_9();
  OUTLINED_FUNCTION_28_2(v31, v32, v33);
  OUTLINED_FUNCTION_11_0(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v37);
  v175 = &v154 - v38;
  v161 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v39 = OUTLINED_FUNCTION_19(v161);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v44 = (v43 - v42);
  OUTLINED_FUNCTION_2_30();
  OUTLINED_FUNCTION_28_2(v45, v46, v47);
  v49 = OUTLINED_FUNCTION_11_0(v48);
  v51 = *(v50 + 64);
  v52 = MEMORY[0x28223BE20](v49);
  v174 = &v154 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x28223BE20](v52);
  v169 = &v154 - v55;
  MEMORY[0x28223BE20](v54);
  v176 = &v154 - v56;
  v160 = sub_27546E490();
  v57 = OUTLINED_FUNCTION_8_9(v160);
  v180 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  v159 = v62 - v61;
  OUTLINED_FUNCTION_11_11();
  OUTLINED_FUNCTION_28_2(v63, v64, v65);
  OUTLINED_FUNCTION_11_0(v66);
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v69);
  v71 = &v154 - v70;
  v72 = *a2;
  v73 = *a3;
  v164 = a3[1];
  v163 = *(a3 + 16);
  v162 = *(a3 + 17);
  sub_27546E440();
  sub_275440A58();
  v75 = v74;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v74);
  v172 = v14;
  v166 = v44;
  v165 = v73;
  v170 = v16;
  v168 = v72;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_11_11();
    sub_275440D5C(v71, v77, v78);
    v173 = MEMORY[0x277D84F90];
    v79 = v176;
  }

  else
  {
    v156 = v30;
    v157 = a1;
    v80 = sub_275440DC4(&qword_2809DBBC8, sub_275440A58);
    v81 = sub_27546E680();
    if (v81)
    {
      v82 = v81;
      v184[0] = MEMORY[0x277D84F90];
      sub_27544135C(0, v81 & ~(v81 >> 63), 0);
      v173 = v184[0];
      v155 = v71;
      v83 = v75;
      v179 = v80;
      result = sub_27546E670();
      if (v82 < 0)
      {
        __break(1u);
        return result;
      }

      v177 = v180 + 32;
      v178 = (v180 + 16);
      v85 = v160;
      v86 = v159;
      v87 = v155;
      v88 = v173;
      do
      {
        v89 = sub_27546E6A0();
        (*v178)(v86);
        v89(v181, 0);
        v184[0] = v88;
        v91 = *(v88 + 16);
        v90 = *(v88 + 24);
        if (v91 >= v90 >> 1)
        {
          sub_27544135C(v90 > 1, v91 + 1, 1);
          v88 = v184[0];
        }

        *(v88 + 16) = v91 + 1;
        (*(v180 + 32))(v88 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + *(v180 + 72) * v91, v86, v85);
        sub_27546E690();
        --v82;
      }

      while (v82);
      v173 = v88;
    }

    else
    {
      v173 = MEMORY[0x277D84F90];
      v87 = v71;
      v83 = v75;
    }

    (*(*(v83 - 8) + 8))(v87, v83);
    a1 = v157;
    v79 = v176;
    v30 = v156;
  }

  v180 = sub_27546E450();
  v93 = v92;
  v94 = v169;
  if (v168)
  {
    sub_27546E420();
    v95 = sub_27546E3B0();
    if (__swift_getEnumTagSinglePayload(v94, 1, v95) != 1)
    {
      (*(*(v95 - 8) + 32))(v79, v94, v95);
      v99 = v79;
      v100 = 0;
      v98 = v95;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_2_30();
    sub_275440D5C(v94, v96, v97);
  }

  v98 = sub_27546E3B0();
  v99 = v79;
  v100 = 1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v99, v100, 1, v98);
  sub_27546E410();
  sub_27546E400();
  sub_275440AB8();
  v101 = v171;
  v102 = *(v170 + 48);
  sub_275440AB8();
  if (v93)
  {
    v103 = sub_27546E3B0();
    v104 = __swift_getEnumTagSinglePayload(v101 + v102, 1, v103);
    v105 = v172;
    v106 = v180;
    if (v104 != 1)
    {
      OUTLINED_FUNCTION_2_30();
      sub_275440D5C(v101 + v102, v107, v108);
    }
  }

  else
  {
    v106 = v180;
    v109 = *&v180;
    v110 = sub_27546E3B0();
    v111 = __swift_getEnumTagSinglePayload(v101 + v102, 1, v110);
    v105 = v172;
    if (v111 != 1)
    {
      OUTLINED_FUNCTION_2_30();
      sub_275440D5C(v101 + v102, v112, v113);
    }

    if (v109 <= 0.0)
    {

      sub_275408F98();
      swift_allocError();
      *v146 = 4;
      swift_willThrow();
      v147 = sub_27546E460();
      OUTLINED_FUNCTION_19(v147);
      (*(v148 + 8))(a1);
      v149 = MEMORY[0x277D2AC90];
      sub_275440D5C(v174, &qword_2809DAFC0, MEMORY[0x277D2AC90]);
      OUTLINED_FUNCTION_15_7();
      sub_275440D5C(v30, v150, v151);
      OUTLINED_FUNCTION_13_9();
      sub_275440D5C(v175, v152, v153);
      return sub_275440D5C(v176, &qword_2809DAFC0, v149);
    }
  }

  v114 = v166;
  *v166 = v173;
  *(v114 + 8) = v106;
  v115 = v93 & 1;
  *(v114 + 16) = v93 & 1;
  v116 = v161;
  v117 = *(v161 + 24);
  sub_275440B18();
  v118 = *(v116 + 28);
  sub_275440B18();
  v119 = *(v116 + 32);
  sub_275440B18();
  v120 = sub_27546E430();
  v122 = v121;
  sub_275440CFC(v114, v105, type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis);
  v123 = v105;
  v124 = type metadata accessor for TransitionPlanner.Song.Analysis();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v123, 0, 1, v124);
  v178 = v120;
  v179 = v122;
  v184[0] = v120;
  v184[1] = v122;
  v125 = v165;
  v126 = v164;
  v181[0] = v165;
  v181[1] = v164;
  v127 = v163;
  v182 = v163;
  v128 = v162;
  v183 = v162;
  v129 = v167;
  sub_27543F240(v184, v106, v115, v123, v181);
  v130 = sub_27546E460();
  OUTLINED_FUNCTION_19(v130);
  (*(v131 + 8))(a1);
  if (v129)
  {
    OUTLINED_FUNCTION_1_32();
    sub_275440D5C(v123, v132, v133);
    OUTLINED_FUNCTION_6_18();
    sub_275443F60(v114, v134);
    OUTLINED_FUNCTION_2_30();
    sub_275440D5C(v176, v135, v136);
  }

  else
  {
    OUTLINED_FUNCTION_6_18();
    sub_275443F60(v114, v137);
    OUTLINED_FUNCTION_2_30();
    sub_275440D5C(v176, v138, v139);
    v140 = v125;
    v141 = type metadata accessor for TransitionPlanner.Song();
    v142 = *(v141 + 24);
    OUTLINED_FUNCTION_3_24();
    v143 = v158;
    result = sub_275440B18();
    v144 = v179;
    *v143 = v178;
    *(v143 + 8) = v144;
    *(v143 + 16) = v180;
    *(v143 + 24) = v115;
    v145 = v143 + *(v141 + 28);
    *v145 = v140;
    *(v145 + 8) = v126;
    *(v145 + 16) = v127;
    *(v145 + 17) = v128;
  }

  return result;
}

void sub_2754409F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_275440A58()
{
  if (!qword_2809DBBC0)
  {
    sub_27546E490();
    v0 = sub_27546E3F0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBBC0);
    }
  }
}

uint64_t sub_275440AB8()
{
  v2 = OUTLINED_FUNCTION_10_11();
  sub_2754409F4(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19(v6);
  (*(v7 + 16))(v0, v1);
  return v0;
}

uint64_t sub_275440B18()
{
  v2 = OUTLINED_FUNCTION_10_11();
  sub_2754409F4(v2, v3, v4, v5);
  OUTLINED_FUNCTION_19(v6);
  (*(v7 + 32))(v0, v1);
  return v0;
}

uint64_t sub_275440B78(uint64_t a1, uint64_t a2, char a3)
{
  v5 = type metadata accessor for TransitionPlanner.Song.MusicKitAnalysis();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v11 = v10 - v9;
  sub_2754409F4(0, &qword_2809DB048, type metadata accessor for TransitionPlanner.Song.Analysis, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_11_0(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_275440AB8();
  v18 = type metadata accessor for TransitionPlanner.Song.Analysis();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1 || swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a2;
    v20 = a3;
  }

  else
  {
    sub_275408E6C(v17, v11);
    v19 = *(v11 + 8);
    v20 = *(v11 + 16);
    OUTLINED_FUNCTION_6_18();
    sub_275443F60(v11, v21);
  }

  if (v20)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

uint64_t sub_275440CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_19(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_275440D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2754409F4(0, a2, a3, MEMORY[0x277D83D88]);
  OUTLINED_FUNCTION_19(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_275440DC4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_275440E0C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440E2C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440E4C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440E6C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, 104 * a2);
  }

  return result;
}

char *sub_275440E98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440EC0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275440EE4(char *result, size_t a2, char *a3)
{
  if (a3 != result || &result[a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, a2);
  }

  return result;
}

uint64_t sub_275440F08(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (v6 = sub_27546E490(), result = OUTLINED_FUNCTION_19(v6), a1 + *(v8 + 72) * a2 <= a3))
  {
    sub_27546E490();
    v10 = OUTLINED_FUNCTION_25_1();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_25_1();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

char *sub_275440FBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[176 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, 176 * a2);
  }

  return result;
}

char *sub_275440FE8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275441008(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[256 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275441028(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_33(a3, result);
  }

  return result;
}

char *sub_275441050(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_5_17(a3, result, 88 * a2);
  }

  return result;
}

char *sub_27544107C(char *a1, int64_t a2, char a3)
{
  result = sub_275441B34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544109C(char *a1, int64_t a2, char a3)
{
  result = sub_275441C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754410BC(char *a1, int64_t a2, char a3)
{
  result = sub_275441D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544110C(char *a1, int64_t a2, char a3)
{
  result = sub_275441FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544112C(char *a1, int64_t a2, char a3)
{
  result = sub_2754420C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544114C(char *a1, int64_t a2, char a3)
{
  result = sub_2754421B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544116C(char *a1, int64_t a2, char a3)
{
  result = sub_2754422D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544118C(char *a1, int64_t a2, char a3)
{
  result = sub_2754423E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754411AC(char *a1, int64_t a2, char a3)
{
  result = sub_2754424DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_275441294(void *a1, int64_t a2, char a3)
{
  result = sub_2754426DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544131C(char *a1, int64_t a2, char a3)
{
  result = sub_27544282C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544133C(char *a1, int64_t a2, char a3)
{
  result = sub_275442A4C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_27544135C(size_t a1, int64_t a2, char a3)
{
  result = sub_275442B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_275441380()
{
  result = qword_2809DBBD0;
  if (!qword_2809DBBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBD0);
  }

  return result;
}

uint64_t sub_2754413E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
    sub_2754409F4(0, v8, v9, MEMORY[0x277D83D88]);
    v11 = v10;
    v12 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v12, a2, v11);
  }
}

uint64_t sub_2754414A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_1_32();
    sub_2754409F4(0, v7, v8, MEMORY[0x277D83D88]);
    v10 = v9;
    v11 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
  }

  return result;
}

void sub_275441544()
{
  sub_2754442D0(319, &qword_2809DBA78, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_2754409F4(319, &qword_2809DB048, type metadata accessor for TransitionPlanner.Song.Analysis, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2754442D0(319, &qword_2809DBBE8, &type metadata for TransitionPlanner.Song.Context, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *_s4SongV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x275441734);
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

unint64_t sub_275441770()
{
  result = qword_2809DBBF0;
  if (!qword_2809DBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBF0);
  }

  return result;
}

unint64_t sub_2754417C8()
{
  result = qword_2809DBBF8;
  if (!qword_2809DBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBBF8);
  }

  return result;
}

unint64_t sub_275441820()
{
  result = qword_2809DBC00;
  if (!qword_2809DBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBC00);
  }

  return result;
}

char *sub_2754418A4(char *a1, int64_t a2, char a3)
{
  result = sub_275442D54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754418F4(char *a1, int64_t a2, char a3)
{
  result = sub_275442F6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441914(char *a1, int64_t a2, char a3)
{
  result = sub_27544309C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27544199C(char *a1, int64_t a2, char a3)
{
  result = sub_2754431B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754419BC(char *a1, int64_t a2, char a3)
{
  result = sub_2754432E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2754419DC(void *a1, int64_t a2, char a3)
{
  result = sub_275443400(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2754419FC(char *a1, int64_t a2, char a3)
{
  result = sub_275443550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441A1C(char *a1, int64_t a2, char a3)
{
  result = sub_275443638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441A3C(char *a1, int64_t a2, char a3)
{
  result = sub_27544372C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441A94(char *a1, int64_t a2, char a3)
{
  result = sub_275443978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441AB4(char *a1, int64_t a2, char a3)
{
  result = sub_275443A90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441AD4(char *a1, int64_t a2, char a3)
{
  result = sub_275443B84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441AF4(char *a1, int64_t a2, char a3)
{
  result = sub_275443C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441B14(char *a1, int64_t a2, char a3)
{
  result = sub_275443DC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_275441B34(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DADC0, &type metadata for Transition.ContinuousSchedule.Automation, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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