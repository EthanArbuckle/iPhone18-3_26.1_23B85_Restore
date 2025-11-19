char *sub_275441C54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC60, &type metadata for Transition.ContinuousSchedule.AutomationRamp, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_275441D88(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC30, &type metadata for Transition.SteppedSchedule.Automation, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[144 * v8] <= v12)
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_275441EB4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v11, v12, v14, v13);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v9;
    *(v15 + 3) = 2 * ((v16 - 32) / 8);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = v15 + 32;
  v18 = a4 + 32;
  if (a1)
  {
    if (v15 != a4 || &v18[8 * v9] <= v17)
    {
      memmove(v17, v18, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, 8 * v9);
  }
}

char *sub_275441FAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCB0, &_s27LinearRegressionObservationVN, MEMORY[0x277D84560]);
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

char *sub_2754420C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_275444098();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[2 * v8] <= v12)
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_2754421B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCA0, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_2754422D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DAE28, &_s14LoudnessSampleVN, MEMORY[0x277D84560]);
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

char *sub_2754423E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_275443FB8();
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

char *sub_2754424DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_275444028();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_2754425D8(char a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_10_7();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v14, v15, a6, v16);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_23_5(v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v17 + 32;
  v20 = a4 + 32;
  if (a1)
  {
    if (v17 != a4 || &v20[80 * v12] <= v19)
    {
      memmove(v19, v20, 80 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_2754426DC(void *result, int64_t a2, char a3, void *a4)
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
    sub_2754409F4(0, &qword_2809DBC38, sub_2753FC38C, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2753FC38C();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27544282C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB5A0, &_s22VocalActivityMapRegionVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_275442960(char a1, int64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_10_7();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v11, v12, v14, v13);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    *(v15 + 2) = v9;
    *(v15 + 3) = 2 * v16 - 64;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v17 = v15 + 32;
  v18 = a4 + 32;
  if (a1)
  {
    if (v15 != a4 || &v18[v9] <= v17)
    {
      memmove(v17, v18, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v17, v18, v9);
  }
}

char *sub_275442A4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC58, &_s5GenreVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_275442B7C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2754409F4(0, &qword_2809DB5C0, MEMORY[0x277CD8320], MEMORY[0x277D84560]);
  v10 = *(sub_27546E490() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_27546E490() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_275440F08(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_275442D54(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB5F8, &_s29UnstructuredStylingRegionPairVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

void sub_275442E6C(char a1, uint64_t a2, char a3, char *a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_10_7();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = *(a4 + 2);
  if (v9 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_21_2();
    sub_2754442D0(v14, v15, a6, v16);
    v17 = swift_allocObject();
    v18 = _swift_stdlib_malloc_size(v17);
    OUTLINED_FUNCTION_23_5(v18);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  v19 = v17 + 32;
  v20 = a4 + 32;
  if (a1)
  {
    if (v17 != a4 || &v20[176 * v12] <= v19)
    {
      memmove(v19, v20, 176 * v12);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_275442F6C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCD8, &unk_2884151A0, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27544309C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBCE8, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

char *sub_2754431B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB600, &_s23StructuredStylingRegionVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[88 * v8] <= v12)
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2754432E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB0B0, &_s13StylingResultVN, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 256);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[256 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_275443400(void *result, int64_t a2, char a3, void *a4)
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
    sub_2754409F4(0, &qword_2809DBCD0, sub_275415388, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[6 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_275415388();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_275443550(char *result, int64_t a2, char a3, char *a4)
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
    sub_27544415C();
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

char *sub_275443638(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754441D8();
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

char *sub_27544372C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC88, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27544384C(char a1, uint64_t a2, char a3, void *a4, uint64_t a5, unint64_t *a6)
{
  if (a3)
  {
    OUTLINED_FUNCTION_1_25();
    if (v10 != v11)
    {
      OUTLINED_FUNCTION_10_7();
      if (v10)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_22();
    }
  }

  else
  {
    v9 = a2;
  }

  v12 = a4[2];
  if (v9 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v9;
  }

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_21_2();
    sub_2754241A0(v14, v15, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v12;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v16 != a4 || &a4[5 * v12 + 4] <= v16 + 4)
    {
      memmove(v16 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_2753F1680(0, a6);
    swift_arrayInitWithCopy();
  }
}

char *sub_275443978(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DB588, &type metadata for Transition.SteppedSchedule.AutomationPoint, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    memcpy(v12, v13, 32 * v8);
  }

  return v10;
}

char *sub_275443A90(char *result, int64_t a2, char a3, char *a4)
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
    sub_275443EF4();
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
    memcpy(v12, v13, v8 << 6);
  }

  return v10;
}

char *sub_275443B84(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC18, &type metadata for Transition.SteppedSchedule.AutomationRamp, MEMORY[0x277D84560]);
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
    memcpy(v12, v13, v8 << 6);
  }

  return v10;
}

char *sub_275443C9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC08, &type metadata for Transition.SteppedSchedule.TimeStretchingStep, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

char *sub_275443DC8(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754442D0(0, &qword_2809DBC10, &type metadata for Transition.SteppedSchedule.PlaybackTime, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_275443EF4()
{
  if (!qword_2809DBC20)
  {
    sub_275444104(255, &qword_2809DBC28);
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBC20);
    }
  }
}

uint64_t sub_275443F60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_19(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_275443FB8()
{
  if (!qword_2809DBC68)
  {
    sub_275444104(255, &qword_2809DBC70);
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBC68);
    }
  }
}

void sub_275444028()
{
  if (!qword_2809DBC78)
  {
    sub_275444104(255, &qword_2809DBC80);
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBC78);
    }
  }
}

void sub_275444098()
{
  if (!qword_2809DBC90)
  {
    sub_275444104(255, &qword_2809DBC98);
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBC90);
    }
  }
}

void sub_275444104(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_27544415C()
{
  if (!qword_2809DBCB8)
  {
    sub_2754442D0(255, &qword_2809DBCC0, &_s21VocalActivityStrengthON, MEMORY[0x277D83D88]);
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBCB8);
    }
  }
}

void sub_2754441D8()
{
  if (!qword_2809DBCC8)
  {
    sub_275444268(255, &qword_2809DB6D0, sub_275434B84, &type metadata for SongTime, MEMORY[0x277D83638]);
    v0 = sub_27546E990();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DBCC8);
    }
  }
}

void sub_275444268(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2754442D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t OUTLINED_FUNCTION_19_6()
{

  return sub_27546E9A0();
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_28_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{

  sub_2754409F4(0, a2, a3, v3);
}

__n128 TransitionPlanner.Song.Context.previousPlaybackEndState.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 TransitionPlanner.Song.Context.init(previousPlaybackEndState:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  return result;
}

BOOL static TransitionPlanner.Song.Context.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    v3 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
    return (v3.i32[0] & v3.i32[1] & 1) != 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t sub_275444568(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x800000027546F3E0 == a2)
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

uint64_t sub_275444608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275444568(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275444634(uint64_t a1)
{
  v2 = sub_2754449DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275444670(uint64_t a1)
{
  v2 = sub_2754449DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TransitionPlanner.Song.Context.encode(to:)(void *a1)
{
  sub_275444A84(0, &qword_2809DBCF0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v16 - v10;
  v13 = *v1;
  v12 = v1[1];
  HIDWORD(v16) = *(v1 + 16);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754449DC();
  sub_27546EB00();
  v17 = v13;
  v18 = v12;
  v19 = BYTE4(v16);
  sub_275444A30();
  sub_27546E910();
  return (*(v7 + 8))(v11, v4);
}

uint64_t TransitionPlanner.Song.Context.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275444A84(0, &qword_2809DBD08, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v17 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2754449DC();
  sub_27546EAE0();
  if (!v2)
  {
    sub_275444AE8();
    sub_27546E890();
    (*(v9 + 8))(v13, v6);
    v15 = v18;
    *a2 = v17;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2754449DC()
{
  result = qword_2809DBCF8;
  if (!qword_2809DBCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBCF8);
  }

  return result;
}

unint64_t sub_275444A30()
{
  result = qword_2809DBD00;
  if (!qword_2809DBD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD00);
  }

  return result;
}

void sub_275444A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2754449DC();
    v7 = a3(a1, &_s7ContextV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_275444AE8()
{
  result = qword_2809DBD10;
  if (!qword_2809DBD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD10);
  }

  return result;
}

_BYTE *_s7ContextV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275444BE8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275444C24()
{
  result = qword_2809DBD18;
  if (!qword_2809DBD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD18);
  }

  return result;
}

unint64_t sub_275444C7C()
{
  result = qword_2809DBD20;
  if (!qword_2809DBD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD20);
  }

  return result;
}

unint64_t sub_275444CD4()
{
  result = qword_2809DBD28;
  if (!qword_2809DBD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD28);
  }

  return result;
}

uint64_t TransitionPlanner.Song.ID.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_275444D58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = TransitionPlanner.Song.ID.init(stringLiteral:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_275444D98@<X0>(uint64_t *a1@<X8>)
{
  result = TransitionPlanner.Song.ID.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TransitionPlanner.Song.ID.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t TransitionPlanner.Song.ID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_34();
  sub_27546EAD0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    OUTLINED_FUNCTION_0_34();
    v6 = sub_27546E9B0();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v10);
    *a2 = v6;
    a2[1] = v8;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TransitionPlanner.Song.ID.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27546EAF0();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_27546E9F0();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_275444F4C()
{
  result = qword_2809DBD30;
  if (!qword_2809DBD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD30);
  }

  return result;
}

unint64_t sub_275444FA4()
{
  result = qword_2809DBD38;
  if (!qword_2809DBD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD38);
  }

  return result;
}

unint64_t sub_275444FFC()
{
  result = qword_2809DBD40;
  if (!qword_2809DBD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD40);
  }

  return result;
}

void *sub_275445080@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v6 = v4;
  if (a3)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    result = sub_2753EE13C(a1, v13);
    if (v5)
    {
      return result;
    }

    memcpy(__dst, v13, 0x99uLL);
    sub_27544717C(__dst);
    goto LABEL_13;
  }

  sub_2753F161C(v6, v16);
  if (a2 < 0.0001 || a2 > 1.0)
  {
    sub_275408F98();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_2753EE13C(a1, __src);
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  memcpy(__dst, __src, 0x99uLL);
  sub_275460AA4(__dst, v13, a2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  memcpy(__dst, v13, sizeof(__dst));
  sub_27544715C(__dst);
LABEL_13:
  memcpy(v17, __dst, sizeof(v17));
  return memcpy(a4, v17, 0x178uLL);
}

void TransitionPlanner.configuration.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t TransitionPlanner.init(configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v7 = sub_27546E3E0();
  __swift_project_value_buffer(v7, qword_2809F3C00);
  v8 = sub_27546E3C0();
  v9 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_1_33(v9))
  {
    v10 = OUTLINED_FUNCTION_16_0();
    v39 = v2;
    v11 = a2;
    v12 = OUTLINED_FUNCTION_7_5();
    *&v33 = v12;
    *v10 = 136315138;
    *&v36 = v5;
    BYTE8(v36) = v6;
    v13 = sub_27546E540();
    v15 = v5;
    v16 = sub_275446968(v13, v14, &v33);

    *(v10 + 4) = v16;
    v5 = v15;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v17, v18, v19, v20, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    a2 = v11;
    v3 = v39;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  v21 = sub_275423FF0();
  v37 = &_s29DefaultStylingStrategyCatalogVN;
  v38 = &off_288414920;
  *&v36 = v21;
  v34 = &_s29DesignTimeTransitionSchedulerVN;
  v35 = &off_288411B10;
  v22 = swift_allocObject();
  *&v33 = v22;
  v22[5] = &_s39DesignTimeContinuousTransitionSchedulerVN;
  v22[6] = &off_288411A00;
  v22[10] = &_s36DesignTimeSteppedTransitionSchedulerVN;
  v22[11] = &off_288411A80;
  v23 = sub_27542C2A4(0xD000000000000010, 0x800000027546F400, 1852797802, 0xE400000000000000);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(&v33);
    return __swift_destroy_boxed_opaque_existential_1(&v36);
  }

  else
  {
    v31 = &type metadata for DefaultTransitionStyleCatalog;
    v32 = &off_288415218;
    *&v30 = v23;
    sub_2754495F0(0x6870617247505344, 0xE800000000000000, 1735422820, 0xE400000000000000, v29);
    v25 = v29[0];
    v24 = v29[1];
    v27 = v5;
    v28 = v6;
    sub_275446604(&v27, &v30, v29, &v36);
    sub_2753F16E0(&v30, a2 + 16);
    sub_2753F16E0(&v36, a2 + 72);
    result = sub_2753F16E0(&v33, a2 + 112);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 56) = v25;
    *(a2 + 64) = v24;
  }

  return result;
}

uint64_t sub_2754454E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void *TransitionPlanner.transition(from:to:criteria:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v95 = a4;
  v9 = type metadata accessor for TransitionPlanner.Song();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v97 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v96 = (&v93 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v98 = (&v93 - v16);
  MEMORY[0x28223BE20](v15);
  v18 = (&v93 - v17);
  v102 = *a3;
  v101 = *(a3 + 8);
  v19 = *(a3 + 16);
  v99 = *(a3 + 24);
  v100 = v19;
  v108 = *(a3 + 32);
  v106 = *(a3 + 33);
  if (qword_2809DACB0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v20 = sub_27546E3E0();
  v21 = __swift_project_value_buffer(v20, qword_2809F3C00);
  sub_275446F08(a1, v18);
  v22 = sub_27546E3C0();
  v23 = sub_27546E6E0();
  v24 = OUTLINED_FUNCTION_1_33(v23);
  v105 = v5;
  v115[23] = v21;
  v107 = a2;
  v104 = a1;
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_16_0();
    v26 = OUTLINED_FUNCTION_7_5();
    v112[0] = v26;
    *v25 = 136315138;
    v28 = *v18;
    v27 = v18[1];

    sub_275446F6C(v18);
    v29 = sub_275446968(v28, v27, v112);

    *(v25 + 4) = v29;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v30, v31, v32, v33, v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    a2 = v107;
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {

    sub_275446F6C(v18);
  }

  v34 = v98;
  sub_275446F08(a2, v98);
  v35 = sub_27546E3C0();
  v36 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_1_33(v36))
  {
    v37 = OUTLINED_FUNCTION_16_0();
    v38 = OUTLINED_FUNCTION_7_5();
    v112[0] = v38;
    *v37 = 136315138;
    v39 = *v34;
    v40 = v34[1];

    sub_275446F6C(v34);
    v41 = sub_275446968(v39, v40, v112);

    *(v37 + 4) = v41;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v42, v43, v44, v45, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {

    sub_275446F6C(v34);
  }

  v46 = v106;
  v47 = sub_27546E3C0();
  v48 = sub_27546E6E0();
  if (OUTLINED_FUNCTION_1_33(v48))
  {
    v49 = OUTLINED_FUNCTION_16_0();
    v98 = v49;
    v94 = OUTLINED_FUNCTION_7_5();
    v110[0] = v94;
    *v49 = 136315138;
    v50 = v102;
    v112[0] = v102;
    v51 = v101;
    LOBYTE(v112[1]) = v101;
    v52 = v99;
    v53 = v100;
    OUTLINED_FUNCTION_5_18();
    v54 = sub_27546E540();
    v56 = sub_275446968(v54, v55, v110);

    *(v98 + 4) = v56;
    v46 = v106;
    OUTLINED_FUNCTION_6_19();
    _os_log_impl(v57, v58, v59, v60, v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v94);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_7_3();
  }

  else
  {

    v50 = v102;
    v51 = v101;
    v52 = v99;
    v53 = v100;
  }

  v112[0] = v50;
  LOBYTE(v112[1]) = v51;
  OUTLINED_FUNCTION_5_18();
  v62 = v103;
  v63 = v104;
  v64 = v107;
  result = sub_275445C94(v104, v107, v112);
  if (!v62)
  {
    v66 = v51;
    v67 = v63;
    v68 = v53;
    v69 = v46;
    v70 = v52;
    v71 = v96;
    sub_275446F08(v67, v96);
    v72 = v97;
    sub_275446F08(v64, v97);
    v110[0] = v50;
    LOBYTE(v110[1]) = v66;
    v110[2] = v68;
    v110[3] = v70;
    LOBYTE(v110[4]) = v108;
    BYTE1(v110[4]) = v69;
    v73 = v105;
    sub_2753F161C((v105 + 2), v112);
    sub_275407B1C(v71, v72, v110, v112, v115);
    v74 = v73[12];
    v75 = v73[13];
    __swift_project_boxed_opaque_existential_1(v73 + 9, v74);
    (*(v75 + 24))(v113, v115, v74, v75);
    if (v113[6])
    {
      memcpy(v114, v113, sizeof(v114));
      sub_2754461B0(v115, v114, v111);
      v76 = sub_27546E3C0();
      v77 = sub_27546E6E0();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = OUTLINED_FUNCTION_16_0();
        v79 = OUTLINED_FUNCTION_7_5();
        v110[0] = v79;
        *v78 = 136315138;
        memcpy(v112, v111, 0x50uLL);
        v80 = Transition.Summary.description.getter();
        v82 = sub_275446968(v80, v81, v110);

        *(v78 + 4) = v82;
        v83 = v105;
        _os_log_impl(&dword_2753EC000, v76, v77, "Transition Planner: Transition summary = %s.", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v79);
        OUTLINED_FUNCTION_7_3();
        OUTLINED_FUNCTION_7_3();

        v84 = v104;
      }

      else
      {

        v84 = v104;
        v83 = v73;
      }

      sub_2754463D8(v84, v107, v114, v110);
      sub_2753F25A4(v114);
      sub_275409024(v115);
      memcpy(&v109[80], v110, 0x178uLL);
      v92 = v83[7];
      v91 = v83[8];
      memcpy(v109, v111, 0x50uLL);
      memcpy(v112, v109, 0x1C8uLL);
      v112[57] = v92;
      v112[58] = v91;
      sub_275447044(v112);
      memcpy(v95, v112, 0x1D9uLL);
    }

    else
    {
      sub_275446FC8(v113, &qword_2809DB0D0, &_s13StylingResultVN);
      sub_275445D70(v115, v112);
      v85 = v112[0];
      v86 = v112[1];
      v87 = v112[2];
      v88 = sub_27546E3C0();
      v89 = sub_27546E6E0();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_2753EC000, v88, v89, "Transition Planner: No transition.", v90, 2u);
        OUTLINED_FUNCTION_7_3();
      }

      sub_275409024(v115);
      v112[0] = v85;
      v112[1] = v86;
      LOBYTE(v112[2]) = v87;
      sub_275447038(v112);
      return memcpy(v95, v112, 0x1D9uLL);
    }
  }

  return result;
}

uint64_t sub_275445C94(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 32);
  v7 = *(result + 16);
  v8 = *(result + 24);
  if ((v4 & 0x80000000) == 0)
  {
    v9 = *a3;
    if (*(result + 24))
    {
      goto LABEL_7;
    }

    v10 = *(result + 16);
    if (v7 >= 0.0)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if (v4)
  {
    return sub_2754338E0(*(a2 + 16), *(a2 + 24));
  }

  v9 = v3;
  if (v8)
  {
LABEL_7:
    if (v9 < 0.0)
    {
LABEL_8:
      sub_275408F98();
      swift_allocError();
      *v11 = 6;
      return swift_willThrow();
    }

    return sub_2754338E0(*(a2 + 16), *(a2 + 24));
  }

  v10 = v7;
  if (v7 >= 0.0)
  {
LABEL_10:
    if (v9 < 0.0 || v9 > v10)
    {
      goto LABEL_8;
    }

    return sub_2754338E0(*(a2 + 16), *(a2 + 24));
  }

  __break(1u);
  return result;
}

void sub_275445D70(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 56))(&v32, v4, v5);
  v6 = v32;
  v7 = a1[8];
  v8 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v7);
  (*(v8 + 56))(&v31, v7, v8);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 56))(&v32, v9, v10);
  v11 = a1[8];
  v12 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
  (*(v12 + 56))(&v31, v11, v12);
  if (v6)
  {
    if (v31)
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v13 = sub_27546E3E0();
      __swift_project_value_buffer(v13, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_17;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Transition Planner: Both songs have timing accuracy issues.";
    }

    else
    {
      if (qword_2809DACB0 != -1)
      {
        swift_once();
      }

      v19 = sub_27546E3E0();
      __swift_project_value_buffer(v19, qword_2809F3C00);
      v14 = sub_27546E3C0();
      v15 = sub_27546E6E0();
      if (!os_log_type_enabled(v14, v15))
      {
        goto LABEL_17;
      }

      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "Transition Planner: Outgoing song has timing accuracy issues.";
    }

LABEL_16:
    _os_log_impl(&dword_2753EC000, v14, v15, v17, v16, 2u);
    MEMORY[0x277C78090](v16, -1, -1);
LABEL_17:

    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 56))(&v32, v20, v21);
    v22 = v32;
    v23 = a1[8];
    v24 = a1[9];
    __swift_project_boxed_opaque_existential_1(a1 + 5, v23);
    (*(v24 + 56))(&v31, v23, v24);
    v25 = v31;
    v26 = 1;
    goto LABEL_18;
  }

  if (v31)
  {
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v18 = sub_27546E3E0();
    __swift_project_value_buffer(v18, qword_2809F3C00);
    v14 = sub_27546E3C0();
    v15 = sub_27546E6E0();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_17;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = "Transition Planner: Incoming song has timing accuracy issues.";
    goto LABEL_16;
  }

  if (qword_2809DACB0 != -1)
  {
    swift_once();
  }

  v27 = sub_27546E3E0();
  __swift_project_value_buffer(v27, qword_2809F3C00);
  v28 = sub_27546E3C0();
  v29 = sub_27546E6E0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_2753EC000, v28, v29, "Transition Planner: Songs not suitable for transition.", v30, 2u);
    MEMORY[0x277C78090](v30, -1, -1);
  }

  if (qword_2809DADA8 != -1)
  {
    swift_once();
  }

  v26 = 0;
  v22 = qword_2809F3C18;
  v25 = unk_2809F3C20;
LABEL_18:
  *a2 = v22;
  *(a2 + 8) = v25;
  *(a2 + 16) = v26;
}

void *sub_2754461B0@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  sub_2754097E0(v30);
  sub_2753F12B8(v30, __src);
  if (v28)
  {
    sub_2753F122C(v30);
    v7 = __src;
  }

  else
  {
    memcpy(v26, __src, 0x51uLL);
    v7 = v29;
    sub_275409C88();
    sub_2753F1398(v26);
    sub_2753F122C(v30);
  }

  v8 = *v7;
  v9 = *(v7 + 1);
  sub_275409858(v30);
  sub_2753F12B8(v30, __src);
  if (v28)
  {
    sub_2753F122C(v30);
    v10 = __src;
  }

  else
  {
    memcpy(v26, __src, 0x51uLL);
    v10 = v29;
    sub_275409C88();
    sub_2753F1398(v26);
    sub_2753F122C(v30);
  }

  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 48))(v30, v13, v14);
  v15 = v30[0];
  v16 = a1[8];
  v17 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v16);
  (*(v17 + 48))(__src, v16, v17);
  v18 = *__src;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 56))(v30, v19, v20);
  v21 = v30[0];
  v22 = a1[8];
  v23 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v22);
  result = (*(v23 + 56))(__src, v22, v23);
  v25 = *__src;
  *a3 = v5;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v15;
  *(a3 + 56) = v18;
  *(a3 + 64) = v21;
  *(a3 + 72) = v25;
  return result;
}

uint64_t sub_2754463D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a4;
  v7 = type metadata accessor for TransitionPlanner.Song();
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v33[-v13];
  sub_275446F08(a1, &v33[-v13]);
  sub_275446F08(a2, v12);
  v15 = *(a3 + 8);
  v16 = *(a3 + 16);
  v17 = *(a3 + 24);
  v40 = *(a3 + 32);
  v41 = v15;
  v39 = *(a3 + 40);
  v18 = *(a3 + 48);
  v37 = *(a3 + 56);
  v38 = v18;
  v36 = *(a3 + 64);
  sub_2753EF3C8(a3 + 72, v44);
  v19 = &v14[*(v8 + 36)];
  v20 = *v19;
  v35 = *(v19 + 1);
  v34 = v19[16];
  v21 = v19[17];

  sub_275446F6C(v14);
  if (v21)
  {
    v20 = 0;
    v22 = 0;
  }

  else
  {
    v22 = v35;
  }

  v23 = v21 | v34;
  v24 = &v12[*(v8 + 36)];
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = v24[16];
  v28 = v24[17];
  sub_275446F6C(v12);
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = v25;
  }

  if (v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  v45[0] = v20;
  v45[1] = v22;
  v46 = v23 & 1;
  v47 = v29;
  v48 = v30;
  v49 = (v28 | v27) & 1;
  v50 = v41;
  v51 = v16;
  v52 = v17;
  v53 = v40;
  v54 = v39;
  v55 = v38;
  v56 = v37;
  v57 = v36;
  memcpy(v58, v44, sizeof(v58));
  v31 = v42;
  __swift_project_boxed_opaque_existential_1((v42 + 112), *(v42 + 136));
  sub_275445080(v45, *v31, *(v31 + 8), v43);
  return sub_275447108(v45);
}

uint64_t sub_275446604(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4[3];
  v7 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v29 = *(v8 + 16);
  if (!v29)
  {
  }

  v9 = 0;
  v10 = v8 + 32;
  v31 = v8;
  v27 = v8 + 32;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_22;
    }

    v30 = v9;
    sub_2753F161C(v10 + 40 * v9, v37);
    v11 = v38;
    v4 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v12 = (*(v4 + 24))(v11, v4);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v32 = *(v12 + 16);
    if (v32)
    {
      break;
    }

LABEL_13:

    v9 = v30 + 1;
    v8 = v31;
    v10 = v27;
    if (v30 + 1 == v29)
    {
    }
  }

  v13 = 0;
  v14 = v12 + 32;
  v41 = v12;
  v28 = v12 + 32;
LABEL_6:
  if (v13 >= *(v12 + 16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  sub_2753F161C(v14 + 40 * v13, v34);
  v33 = v13 + 1;
  v4 = v35;
  v15 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v16 = (*(v15 + 8))(v4, v15);
  __swift_destroy_boxed_opaque_existential_1(v34);
  v17 = 0;
  v18 = *(v16 + 16);
  while (1)
  {
    if (v18 == v17)
    {

      v13 = v33;
      v12 = v41;
      v14 = v28;
      if (v33 != v32)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v4 = *(v16 + 8 * v17 + 32);
    v19 = a2[3];
    v20 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v19);
    (*(v20 + 16))(v40, v4, v19, v20);
    if (!v40[5])
    {
      break;
    }

    ++v17;
    sub_275446FC8(v40, &qword_2809DBD50, &unk_2884151A0);
  }

  if (qword_2809DACB0 != -1)
  {
    goto LABEL_23;
  }

LABEL_16:
  v22 = sub_27546E3E0();
  __swift_project_value_buffer(v22, qword_2809F3C00);
  v23 = sub_27546E3C0();
  v24 = sub_27546E6D0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = v4;
    _os_log_impl(&dword_2753EC000, v23, v24, "Transition style missing. ID = %ld.", v25, 0xCu);
    MEMORY[0x277C78090](v25, -1, -1);
  }

  sub_275408F98();
  swift_allocError();
  *v26 = 13;
  return swift_willThrow();
}

uint64_t sub_275446968(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275446A2C(v11, 0, 0, 1, a1, a2);
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
    sub_275447198(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_275446A2C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_275446B2C(a5, a6);
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
    result = sub_27546E7E0();
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

uint64_t sub_275446B2C(uint64_t a1, unint64_t a2)
{
  v4 = sub_275446B78(a1, a2);
  sub_275446C90(&unk_288410940);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_275446B78(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_27546E580())
  {
    result = sub_275446D74(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_27546E760();
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
          result = sub_27546E7E0();
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

uint64_t sub_275446C90(uint64_t result)
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

    result = sub_275446DFC(result, v8, 1, v3);
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

void *sub_275446D74(uint64_t a1, uint64_t a2)
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

  sub_2754471F4(0, &qword_2809DBD48, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_275446DFC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2754471F4(0, &qword_2809DBD48, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
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

uint64_t sub_275446F08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransitionPlanner.Song();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275446F6C(uint64_t a1)
{
  v2 = type metadata accessor for TransitionPlanner.Song();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275446FC8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2754471F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275447054(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_275447094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27544715C(uint64_t result)
{
  v1 = *(result + 240);
  v2 = *(result + 320) | 0x8000000000000000;
  *(result + 160) = *(result + 160);
  *(result + 240) = v1;
  *(result + 320) = v2;
  return result;
}

uint64_t sub_27544717C(uint64_t result)
{
  v1 = *(result + 240);
  v2 = *(result + 320);
  *(result + 160) = *(result + 160);
  *(result + 240) = v1;
  *(result + 320) = v2;
  return result;
}

uint64_t sub_275447198(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2754471F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

BOOL OUTLINED_FUNCTION_1_33(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_5_18()
{
  *(v0 + 1056) = v4;
  *(v0 + 1064) = v1;
  *(v0 + 1072) = v2;
  *(v0 + 1073) = v3;
}

uint64_t sub_275447280(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v68 = a8;
  v9 = v8;
  v82 = a2;
  v83 = a4;
  v81 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_35();
  v76 = v15;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v69 = a5;
  v70 = &v64 - v20;
  v67 = *(a5 - 8);
  v21 = *(v67 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_1();
  v79 = (v22 - v23);
  MEMORY[0x28223BE20](v24);
  v77 = &v64 - v25;
  sub_27546E6F0();
  OUTLINED_FUNCTION_0_35();
  v65 = v27;
  v66 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_1();
  v32 = v30 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v64 - v35;
  v37 = *(*(a4 - 1) + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_1();
  v78 = v38 - v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_0_35();
  v75 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v74 = &v64 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a6;
  v84 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_35();
  v71 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v51 = &v64 - v50;
  v52 = sub_27546E5A0();
  v85 = sub_27546E810();
  v80 = sub_27546E820();
  sub_27546E7F0();
  (*(v75 + 16))(v74, v72, a3);
  v83 = v51;
  v75 = a3;
  result = sub_27546E590();
  if (v52 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v52)
  {
    v54 = (v76 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_27546E700();
      result = __swift_getEnumTagSinglePayload(v36, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v81(v36, v77);
      if (v9)
      {
        v62 = OUTLINED_FUNCTION_2_31();
        v63(v62);

        (*(v67 + 32))(v68, v77, v69);
        return (*v54)(v36, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v54)(v36, AssociatedTypeWitness);
      sub_27546E800();
      if (!--v52)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v55 = (v76 + 32);
  v56 = (v76 + 8);
  v57 = v70;
  while (1)
  {
    sub_27546E700();
    if (__swift_getEnumTagSinglePayload(v32, 1, AssociatedTypeWitness) == 1)
    {
      v58 = OUTLINED_FUNCTION_2_31();
      v59(v58);
      (*(v65 + 8))(v32, v66);
      return v85;
    }

    (*v55)(v57, v32, AssociatedTypeWitness);
    v81(v57, v79);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v56)(v57, AssociatedTypeWitness);
    sub_27546E800();
  }

  (*v56)(v57, AssociatedTypeWitness);
  v60 = OUTLINED_FUNCTION_2_31();
  v61(v60);

  return (*(v67 + 32))(v68, v79, v69);
}

uint64_t OUTLINED_FUNCTION_2_31()
{
  v1 = *(*(v0 - 200) + 8);
  result = *(v0 - 104);
  v3 = *(v0 - 96);
  return result;
}

void static ClosedRange<>.songTimeRange(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
  }
}

void static ClosedRange<>.stretchedSongTimeRange(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
  }
}

void static ClosedRange<>.transitionTimeRange(_:)(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  if (a3 < a2)
  {
    __break(1u);
  }

  else
  {
    *a1 = a2;
    a1[1] = a3;
  }
}

_SonicKit_MusicKit_Packages::SongTime __swiftcall SongTime.advanced(by:)(Swift::Double by)
{
  result.rawValue = *v2 + by;
  *v1 = result.rawValue;
  return result;
}

void sub_275447C24(double *a1@<X0>, uint64_t a2@<X8>)
{
  static SongTime.songTime(_:)(&v3, *a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

uint64_t SongTime.debugDescription.getter()
{
  v1 = *v0;
  MEMORY[0x277C776B0](0x656D6954676E6F53, 0xE900000000000028);
  sub_27546E650();
  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_275447E48()
{
  result = qword_2809DBD58;
  if (!qword_2809DBD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD58);
  }

  return result;
}

unint64_t sub_275447EB4()
{
  result = qword_2809DBD60;
  if (!qword_2809DBD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD60);
  }

  return result;
}

_SonicKit_MusicKit_Packages::StretchedSongTime __swiftcall StretchedSongTime.advanced(by:)(Swift::Double by)
{
  result.rawValue = *v2 + by;
  *v1 = result.rawValue;
  return result;
}

void sub_275447F3C(double *a1@<X0>, uint64_t a2@<X8>)
{
  static StretchedSongTime.stretchedSongTime(_:)(&v3, *a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

uint64_t StretchedSongTime.debugDescription.getter()
{
  v1 = *v0;
  sub_27546E770();
  MEMORY[0x277C776B0](0xD000000000000012, 0x800000027546F420);
  sub_27546E650();
  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_27544814C()
{
  result = qword_2809DBD68;
  if (!qword_2809DBD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD68);
  }

  return result;
}

unint64_t sub_2754481A4()
{
  result = qword_2809DBD70;
  if (!qword_2809DBD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD70);
  }

  return result;
}

unint64_t sub_27544820C()
{
  result = qword_2809DBD78;
  if (!qword_2809DBD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD78);
  }

  return result;
}

_SonicKit_MusicKit_Packages::TransitionTime __swiftcall TransitionTime.advanced(by:)(Swift::Double by)
{
  result.rawValue = *v2 + by;
  *v1 = result.rawValue;
  return result;
}

uint64_t sub_2754482A4(char a1)
{
  OUTLINED_FUNCTION_0_36();
  sub_2754271B0(a1);
  sub_27546E550();

  return sub_27546EAC0();
}

uint64_t sub_275448324()
{
  OUTLINED_FUNCTION_0_36();
  sub_27546E550();
  return sub_27546EAC0();
}

uint64_t sub_275448398(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  OUTLINED_FUNCTION_0_36();
  a2(v5, a1);
  return sub_27546EAC0();
}

uint64_t sub_2754483EC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_36();
  MEMORY[0x277C77BF0](a1);
  return sub_27546EAC0();
}

uint64_t sub_27544842C()
{
  OUTLINED_FUNCTION_0_36();
  sub_27546E550();
  return sub_27546EAC0();
}

uint64_t sub_27544848C(void (*a1)(_BYTE *, double), double a2)
{
  OUTLINED_FUNCTION_0_36();
  a1(v5, a2);
  return sub_27546EAC0();
}

void sub_2754484F8(double *a1@<X0>, uint64_t a2@<X8>)
{
  static TransitionTime.transitionTime(_:)(&v3, *a1);
  *a2 = v3;
  *(a2 + 8) = 0;
}

uint64_t TransitionTime.debugDescription.getter()
{
  v1 = *v0;
  sub_27546E770();
  MEMORY[0x277C776B0](0x697469736E617254, 0xEF28656D69546E6FLL);
  sub_27546E650();
  MEMORY[0x277C776B0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_27544872C()
{
  result = qword_2809DBD80;
  if (!qword_2809DBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD80);
  }

  return result;
}

unint64_t sub_275448798()
{
  result = qword_2809DBD88;
  if (!qword_2809DBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_36()
{

  return sub_27546EA90();
}

uint64_t static Transition.AudioGraph.default.getter@<X0>(void *a1@<X8>)
{
  result = sub_2754495F0(0x6870617247505344, 0xE800000000000000, 1735422820, 0xE400000000000000, v5);
  if (!v1)
  {
    v4 = v5[1];
    *a1 = v5[0];
    a1[1] = v4;
  }

  return result;
}

uint64_t static Transition.AudioGraph.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_27546E9A0();
  }
}

uint64_t sub_2754488A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6870617247707364 && a2 == 0xE800000000000000)
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

uint64_t sub_275448934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2754488A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275448960(uint64_t a1)
{
  v2 = sub_275449100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544899C(uint64_t a1)
{
  v2 = sub_275449100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754489D8(uint64_t a1)
{
  v2 = sub_2754490AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275448A14(uint64_t a1)
{
  v2 = sub_2754490AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.AudioGraph.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_2_32();
  v3 = MEMORY[0x277D84538];
  sub_2754491A8(0, v4, v5, v6, MEMORY[0x277D84538]);
  v32 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v34 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = OUTLINED_FUNCTION_1_34();
  sub_2754491A8(v14, v15, v16, v17, v3);
  v19 = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v33 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  v27 = v1[1];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275449100();
  sub_27546EB00();
  sub_2754490AC();
  sub_27546E8F0();
  v35 = v26;
  v36 = v27;
  v29 = v32;
  sub_275449154();
  sub_27546E950();
  (*(v34 + 8))(v13, v29);
  return (*(v33 + 8))(v25, v19);
}

uint64_t Transition.AudioGraph.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  OUTLINED_FUNCTION_2_32();
  v3 = MEMORY[0x277D844C8];
  sub_2754491A8(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v8 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v46[1] = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_1_34();
  sub_2754491A8(v13, v14, v15, &_s10AudioGraphO10CodingKeysON, v3);
  v17 = v16;
  OUTLINED_FUNCTION_8_9(v16);
  v47 = v18;
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v21);
  v23 = v46 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275449100();
  v25 = v51;
  sub_27546EAE0();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v51 = v8;
  v26 = v48;
  v27 = sub_27546E8E0();
  result = sub_275433874(v27, 0);
  if (v29 == v30 >> 1)
  {
    goto LABEL_6;
  }

  if (v29 < (v30 >> 1))
  {
    v31 = sub_27543386C(v29 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v46[0] = v31;
      sub_2754490AC();
      sub_27546E850();
      sub_275449210();
      sub_27546E8D0();
      v42 = v47;
      swift_unknownObjectRelease();
      v43 = OUTLINED_FUNCTION_3_25();
      v44(v43);
      (*(v42 + 8))(v23, v17);
      v45 = v50;
      *v26 = v49;
      v26[1] = v45;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

LABEL_6:
    v36 = v17;
    v37 = sub_27546E7D0();
    swift_allocError();
    v39 = v38;
    sub_2754333D4();
    v41 = *(v40 + 48);
    *v39 = &type metadata for Transition.AudioGraph;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v47 + 8))(v23, v36);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __break(1u);
  return result;
}

unint64_t sub_2754490AC()
{
  result = qword_2809DBD98;
  if (!qword_2809DBD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBD98);
  }

  return result;
}

unint64_t sub_275449100()
{
  result = qword_2809DBDA8;
  if (!qword_2809DBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDA8);
  }

  return result;
}

unint64_t sub_275449154()
{
  result = qword_2809DBDB0;
  if (!qword_2809DBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDB0);
  }

  return result;
}

void sub_2754491A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_275449210()
{
  result = qword_2809DBDC8;
  if (!qword_2809DBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDC8);
  }

  return result;
}

_BYTE *sub_275449288(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275449324);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_275449360()
{
  result = qword_2809DBDD0;
  if (!qword_2809DBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDD0);
  }

  return result;
}

unint64_t sub_2754493B8()
{
  result = qword_2809DBDD8;
  if (!qword_2809DBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDD8);
  }

  return result;
}

unint64_t sub_275449410()
{
  result = qword_2809DBDE0;
  if (!qword_2809DBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDE0);
  }

  return result;
}

unint64_t sub_275449468()
{
  result = qword_2809DBDE8;
  if (!qword_2809DBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDE8);
  }

  return result;
}

unint64_t sub_2754494C0()
{
  result = qword_2809DBDF0;
  if (!qword_2809DBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDF0);
  }

  return result;
}

unint64_t sub_275449518()
{
  result = qword_2809DBDF8;
  if (!qword_2809DBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBDF8);
  }

  return result;
}

uint64_t sub_2754495F0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37[0] = a5;
  v9 = sub_27546E530();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_27546E140();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v37 - v17;
  if (qword_2809DADB0 != -1)
  {
    swift_once();
  }

  v19 = sub_27542CA80(a1, a2, a3, a4, qword_2809F3C28);
  if (v19)
  {
    v20 = v19;

    sub_27546E130();

    (*(v12 + 32))(v18, v16, v11);
    sub_27546E520();
    v21 = v37[1];
    v22 = sub_27546E4F0();
    if (v21)
    {
      return (*(v12 + 8))(v18, v11);
    }

    else
    {
      v33 = v22;
      v34 = v23;
      result = (*(v12 + 8))(v18, v11);
      v35 = v37[0];
      *v37[0] = v33;
      *(v35 + 8) = v34;
    }
  }

  else
  {
    v25 = a3;
    if (qword_2809DACB0 != -1)
    {
      swift_once();
    }

    v26 = sub_27546E3E0();
    __swift_project_value_buffer(v26, qword_2809F3C00);

    v27 = sub_27546E3C0();
    v28 = sub_27546E6D0();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136315394;
      v31 = sub_275446968(a1, a2, &v38);

      *(v29 + 4) = v31;
      *(v29 + 12) = 2080;
      v32 = sub_275446968(v25, a4, &v38);

      *(v29 + 14) = v32;
      _os_log_impl(&dword_2753EC000, v27, v28, "DSP Graph .dspg resource missing. Name = %s. Extension = %s.", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C78090](v30, -1, -1);
      MEMORY[0x277C78090](v29, -1, -1);
    }

    else
    {
    }

    sub_275408F98();
    swift_allocError();
    *v36 = 13;
    return swift_willThrow();
  }

  return result;
}

uint64_t Transition.DSPGraph.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Transition.DSPGraph.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_275449A04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = Transition.DSPGraph.init(rawValue:)(*a1, a1[1], v5);
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_275449A44@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.DSPGraph.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_275449B2C()
{
  result = qword_2809DBE00;
  if (!qword_2809DBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DBE00);
  }

  return result;
}

uint64_t sub_275449B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = 0;
  v17 = static Transition.AutomationEffectParameter.allCases.getter();
  v5 = *(v17 + 16) + 1;
  while (1)
  {
    if (!--v5)
    {

      *(a3 + 48) = 0;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

    v7 = *(v17 + v4 + 32);
    v6 = *(v17 + v4 + 40);
    v8 = *(v17 + v4 + 48);
    v9 = *(v17 + v4 + 56);
    v10 = *(v17 + v4 + 64);
    v11 = *(v17 + v4 + 72);
    v12 = *(v17 + v4 + 80);
    if (v11 == a1 && v12 == a2)
    {
      break;
    }

    v4 += 56;
    OUTLINED_FUNCTION_34_0();
    if (sub_27546E9A0())
    {
      goto LABEL_11;
    }
  }

  v11 = a1;
LABEL_11:

  *a3 = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  return result;
}

uint64_t Transition.AutomationEffectParameter.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

double Transition.AutomationEffectParameter.valueRange.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t static Transition.AutomationEffectParameter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    if (v3 != v8 || v2 != v7 || v4 != v9)
    {
      return 0;
    }

    goto LABEL_22;
  }

  v13 = sub_27546E9A0();
  result = 0;
  if (v13)
  {
    v15 = v3 == v8 && v2 == v7;
    if (v15 && v4 == v9)
    {
LABEL_22:
      if (v5 == v10 && v6 == v11)
      {
        return 1;
      }

      else
      {

        return sub_27546E9A0();
      }
    }
  }

  return result;
}

uint64_t sub_275449DBC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E615265756C6176 && a2 == 0xEA00000000006567;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000010 && 0x800000027546F440 == a2)
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

unint64_t sub_275449F20(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E615265756C6176;
      break;
    case 2:
      result = 0x56746C7561666564;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275449FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275449DBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275449FE8(uint64_t a1)
{
  v2 = sub_27544A28C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544A024(uint64_t a1)
{
  v2 = sub_27544A28C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.AutomationEffectParameter.encode(to:)(void *a1)
{
  sub_27544A5B4(0, &qword_2809DC460, MEMORY[0x277D84538]);
  v5 = OUTLINED_FUNCTION_33_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v21 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];
  v15 = v1[3];
  v16 = v1[4];
  v17 = v1[5];
  v21[0] = v1[6];
  v21[1] = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544A28C();
  sub_27546EB00();
  LOBYTE(v23) = 0;
  v19 = v21[2];
  sub_27546E920();
  if (!v19)
  {
    v23 = v14;
    v24 = v15;
    v22 = 1;
    sub_27544A2E0();
    sub_27544A618(&qword_2809DC478);
    sub_27546E950();
    LOBYTE(v23) = 2;
    sub_27546E930();
    LOBYTE(v23) = 3;
    sub_27546E920();
  }

  return (*(v7 + 8))(v11, v2);
}

unint64_t sub_27544A28C()
{
  result = qword_2809DC468;
  if (!qword_2809DC468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC468);
  }

  return result;
}

void sub_27544A2E0()
{
  if (!qword_2809DC470)
  {
    v0 = sub_27546E4D0();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC470);
    }
  }
}

uint64_t Transition.AutomationEffectParameter.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_27544A5B4(0, &qword_2809DC480, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_33_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544A28C();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  OUTLINED_FUNCTION_3_26();
  v12 = sub_27546E8A0();
  v14 = v13;
  sub_27544A2E0();
  sub_27544A618(&qword_2809DC488);
  sub_27546E8D0();
  OUTLINED_FUNCTION_3_26();
  sub_27546E8B0();
  v16 = v15;
  OUTLINED_FUNCTION_3_26();
  v17 = sub_27546E8A0();
  v20 = v19;
  v21 = *(v8 + 8);
  v24 = v17;
  v22 = OUTLINED_FUNCTION_34_0();
  v23(v22);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v25;
  a2[3] = v26;
  a2[4] = v16;
  a2[5] = v24;
  a2[6] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27544A5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544A28C();
    v7 = a3(a1, &_s25AutomationEffectParameterV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_27544A618(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_27544A2E0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27544A678@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.AutomationEffectParameter.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.allCases.getter()
{
  sub_27544C460(0, &qword_2809DC490, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_27547BED0;
  if (qword_2809DACC0 != -1)
  {
    OUTLINED_FUNCTION_26_3();
  }

  v2 = OUTLINED_FUNCTION_1_35(&qword_2809DBE08);
  *(v1 + 32) = v4;
  *(v1 + 40) = v3;
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 64) = v2;
  *(v1 + 72) = v6;
  *(v1 + 80) = v0;
  v7 = qword_2809DACC8;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_25_2();
  }

  v8 = OUTLINED_FUNCTION_1_35(&qword_2809DBE40);
  *(v1 + 88) = v10;
  *(v1 + 96) = v9;
  *(v1 + 104) = *(v11 + 16);
  *(v1 + 120) = v8;
  *(v1 + 128) = v12;
  *(v1 + 136) = v0;
  v13 = qword_2809DACD0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_24_5();
  }

  v14 = OUTLINED_FUNCTION_1_35(&qword_2809DBE78);
  *(v1 + 144) = v16;
  *(v1 + 152) = v15;
  *(v1 + 160) = *(v17 + 16);
  *(v1 + 176) = v14;
  *(v1 + 184) = v18;
  *(v1 + 192) = v0;
  v19 = qword_2809DACD8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_23_6();
  }

  v20 = OUTLINED_FUNCTION_1_35(&qword_2809DBEB0);
  *(v1 + 200) = v22;
  *(v1 + 208) = v21;
  *(v1 + 216) = *(v23 + 16);
  *(v1 + 232) = v20;
  *(v1 + 240) = v24;
  *(v1 + 248) = v0;
  v25 = qword_2809DACE0;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_22_4();
  }

  v26 = OUTLINED_FUNCTION_1_35(&qword_2809DBEE8);
  *(v1 + 256) = v28;
  *(v1 + 264) = v27;
  *(v1 + 272) = *(v29 + 16);
  *(v1 + 288) = v26;
  *(v1 + 296) = v30;
  *(v1 + 304) = v0;
  v31 = qword_2809DACE8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_21_3();
  }

  v32 = OUTLINED_FUNCTION_1_35(&qword_2809DBF20);
  *(v1 + 312) = v34;
  *(v1 + 320) = v33;
  *(v1 + 328) = *(v35 + 16);
  *(v1 + 344) = v32;
  *(v1 + 352) = v36;
  *(v1 + 360) = v0;
  v37 = qword_2809DACF0;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_20_5();
  }

  v38 = OUTLINED_FUNCTION_1_35(&qword_2809DBF58);
  *(v1 + 368) = v40;
  *(v1 + 376) = v39;
  *(v1 + 384) = *(v41 + 16);
  *(v1 + 400) = v38;
  *(v1 + 408) = v42;
  *(v1 + 416) = v0;
  v43 = qword_2809DACF8;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_19_7();
  }

  v44 = OUTLINED_FUNCTION_1_35(&qword_2809DBF90);
  *(v1 + 424) = v46;
  *(v1 + 432) = v45;
  *(v1 + 440) = *(v47 + 16);
  *(v1 + 456) = v44;
  *(v1 + 464) = v48;
  *(v1 + 472) = v0;
  v49 = qword_2809DAD00;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_18_4();
  }

  v50 = OUTLINED_FUNCTION_1_35(&qword_2809DBFC8);
  *(v1 + 480) = v52;
  *(v1 + 488) = v51;
  *(v1 + 496) = *(v53 + 16);
  *(v1 + 512) = v50;
  *(v1 + 520) = v54;
  *(v1 + 528) = v0;
  v55 = qword_2809DAD08;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_17_5();
  }

  v56 = OUTLINED_FUNCTION_1_35(&qword_2809DC000);
  *(v1 + 536) = v57;
  *(v1 + 544) = v58;
  *(v1 + 552) = *(v59 + 16);
  *(v1 + 568) = v56;
  *(v1 + 576) = v60;
  *(v1 + 584) = v0;
  v61 = qword_2809DAD10;

  if (v61 != -1)
  {
    OUTLINED_FUNCTION_16_5();
  }

  v62 = OUTLINED_FUNCTION_1_35(&qword_2809DC038);
  *(v1 + 592) = v63;
  *(v1 + 600) = v64;
  *(v1 + 608) = *(v65 + 16);
  *(v1 + 624) = v62;
  *(v1 + 632) = v66;
  *(v1 + 640) = v0;
  v67 = qword_2809DAD18;

  if (v67 != -1)
  {
    OUTLINED_FUNCTION_15_8();
  }

  v68 = OUTLINED_FUNCTION_1_35(&qword_2809DC070);
  *(v1 + 648) = v69;
  *(v1 + 656) = v70;
  *(v1 + 664) = *(v71 + 16);
  *(v1 + 680) = v68;
  *(v1 + 688) = v72;
  *(v1 + 696) = v0;
  v73 = qword_2809DAD20;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_14_6();
  }

  v74 = OUTLINED_FUNCTION_1_35(&qword_2809DC0A8);
  *(v1 + 704) = v75;
  *(v1 + 712) = v76;
  *(v1 + 720) = *(v77 + 16);
  *(v1 + 736) = v74;
  *(v1 + 744) = v78;
  *(v1 + 752) = v0;
  v79 = qword_2809DAD28;

  if (v79 != -1)
  {
    OUTLINED_FUNCTION_13_10();
  }

  v80 = OUTLINED_FUNCTION_1_35(&qword_2809DC0E0);
  *(v1 + 760) = v81;
  *(v1 + 768) = v82;
  *(v1 + 776) = *(v83 + 16);
  *(v1 + 792) = v80;
  *(v1 + 800) = v84;
  *(v1 + 808) = v0;
  v85 = qword_2809DAD30;

  if (v85 != -1)
  {
    OUTLINED_FUNCTION_12_10();
  }

  v86 = OUTLINED_FUNCTION_1_35(&qword_2809DC118);
  *(v1 + 816) = v87;
  *(v1 + 824) = v88;
  *(v1 + 832) = *(v89 + 16);
  *(v1 + 848) = v86;
  *(v1 + 856) = v90;
  *(v1 + 864) = v0;
  v91 = qword_2809DAD38;

  if (v91 != -1)
  {
    OUTLINED_FUNCTION_11_12();
  }

  v92 = OUTLINED_FUNCTION_1_35(&qword_2809DC150);
  *(v1 + 872) = v93;
  *(v1 + 880) = v94;
  *(v1 + 888) = *(v95 + 16);
  *(v1 + 904) = v92;
  *(v1 + 912) = v96;
  *(v1 + 920) = v0;
  v97 = qword_2809DAD40;

  if (v97 != -1)
  {
    OUTLINED_FUNCTION_10_12();
  }

  v98 = OUTLINED_FUNCTION_1_35(&qword_2809DC188);
  *(v1 + 928) = v99;
  *(v1 + 936) = v100;
  *(v1 + 944) = *(v101 + 16);
  *(v1 + 960) = v98;
  *(v1 + 968) = v102;
  *(v1 + 976) = v0;
  v103 = qword_2809DAD48;

  if (v103 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  v104 = OUTLINED_FUNCTION_1_35(&qword_2809DC1C0);
  *(v1 + 984) = v105;
  *(v1 + 992) = v106;
  *(v1 + 1000) = *(v107 + 16);
  *(v1 + 1016) = v104;
  *(v1 + 1024) = v108;
  *(v1 + 1032) = v0;
  v109 = qword_2809DAD50;

  if (v109 != -1)
  {
    OUTLINED_FUNCTION_8_14();
  }

  v110 = OUTLINED_FUNCTION_1_35(&qword_2809DC1F8);
  *(v1 + 1040) = v111;
  *(v1 + 1048) = v112;
  *(v1 + 1056) = *(v113 + 16);
  *(v1 + 1072) = v110;
  *(v1 + 1080) = v114;
  *(v1 + 1088) = v0;
  v115 = qword_2809DAD58;

  if (v115 != -1)
  {
    OUTLINED_FUNCTION_7_16();
  }

  v116 = OUTLINED_FUNCTION_1_35(&qword_2809DC230);
  *(v1 + 1096) = v117;
  *(v1 + 1104) = v118;
  *(v1 + 1112) = *(v119 + 16);
  *(v1 + 1128) = v116;
  *(v1 + 1136) = v120;
  *(v1 + 1144) = v0;
  v121 = qword_2809DAD60;

  if (v121 != -1)
  {
    OUTLINED_FUNCTION_6_20();
  }

  v122 = OUTLINED_FUNCTION_1_35(&qword_2809DC268);
  *(v1 + 1152) = v123;
  *(v1 + 1160) = v124;
  *(v1 + 1168) = *(v125 + 16);
  *(v1 + 1184) = v122;
  *(v1 + 1192) = v126;
  *(v1 + 1200) = v0;
  v127 = qword_2809DAD68;

  if (v127 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  v128 = OUTLINED_FUNCTION_1_35(&qword_2809DC2A0);
  *(v1 + 1208) = v129;
  *(v1 + 1216) = v130;
  *(v1 + 1224) = *(v131 + 16);
  *(v1 + 1240) = v128;
  *(v1 + 1248) = v132;
  *(v1 + 1256) = v0;
  v133 = qword_2809DAD70;

  if (v133 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  v134 = OUTLINED_FUNCTION_1_35(&qword_2809DC2D8);
  *(v1 + 1264) = v135;
  *(v1 + 1272) = v136;
  *(v1 + 1280) = *(v137 + 16);
  *(v1 + 1296) = v134;
  *(v1 + 1304) = v138;
  *(v1 + 1312) = v0;
  v139 = qword_2809DAD78;

  if (v139 != -1)
  {
    OUTLINED_FUNCTION_2_33();
  }

  v140 = OUTLINED_FUNCTION_1_35(&qword_2809DC310);
  *(v1 + 1320) = v141;
  *(v1 + 1328) = v142;
  *(v1 + 1336) = *(v143 + 16);
  *(v1 + 1352) = v140;
  *(v1 + 1360) = v144;
  *(v1 + 1368) = v0;
  v145 = qword_2809DAD80;

  if (v145 != -1)
  {
    OUTLINED_FUNCTION_31_0();
  }

  v146 = OUTLINED_FUNCTION_1_35(&qword_2809DC348);
  *(v1 + 1376) = v147;
  *(v1 + 1384) = v148;
  *(v1 + 1392) = *(v149 + 16);
  *(v1 + 1408) = v146;
  *(v1 + 1416) = v150;
  *(v1 + 1424) = v0;
  v151 = qword_2809DAD88;

  if (v151 != -1)
  {
    OUTLINED_FUNCTION_30_1();
  }

  v152 = OUTLINED_FUNCTION_1_35(&qword_2809DC380);
  *(v1 + 1432) = v153;
  *(v1 + 1440) = v154;
  *(v1 + 1448) = *(v155 + 16);
  *(v1 + 1464) = v152;
  *(v1 + 1472) = v156;
  *(v1 + 1480) = v0;
  v157 = qword_2809DAD90;

  if (v157 != -1)
  {
    OUTLINED_FUNCTION_29_2();
  }

  v158 = OUTLINED_FUNCTION_1_35(qword_2809DC3B8.n128_f64);
  *(v1 + 1488) = v159;
  *(v1 + 1496) = v160;
  *(v1 + 1504) = *(v161 + 16);
  *(v1 + 1520) = v158;
  *(v1 + 1528) = v162;
  *(v1 + 1536) = v0;
  v163 = qword_2809DAD98;

  if (v163 != -1)
  {
    OUTLINED_FUNCTION_28_3();
  }

  v164 = OUTLINED_FUNCTION_1_35(&qword_2809DC3F0);
  *(v1 + 1544) = v165;
  *(v1 + 1552) = v166;
  *(v1 + 1560) = *(v167 + 16);
  *(v1 + 1576) = v164;
  *(v1 + 1584) = v168;
  *(v1 + 1592) = v0;
  v169 = qword_2809DADA0;

  if (v169 != -1)
  {
    OUTLINED_FUNCTION_27_3();
  }

  v170 = OUTLINED_FUNCTION_1_35(qword_2809DC428.n128_f64);
  *(v1 + 1600) = v171;
  *(v1 + 1608) = v172;
  *(v1 + 1616) = *(v173 + 16);
  *(v1 + 1632) = v170;
  *(v1 + 1640) = v174;
  *(v1 + 1648) = v0;

  return v1;
}

uint64_t sub_27544B080@<X0>(uint64_t *a1@<X8>)
{
  result = static Transition.AutomationEffectParameter.allCases.getter();
  *a1 = result;
  return result;
}

__n128 sub_27544B0A8()
{
  qword_2809DBE08 = 1731289415;
  unk_2809DBE10 = 0xE400000000000000;
  qword_2809DBE18 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_2809DBE20 = result;
  qword_2809DBE30 = 0x675F726579616C70;
  unk_2809DBE38 = 0xEB000000006E6961;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.inputMixerVolume.getter()
{
  if (qword_2809DACC0 != -1)
  {
    OUTLINED_FUNCTION_26_3();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBE08);
}

double sub_27544B150()
{
  qword_2809DBE40 = 829907526;
  *algn_2809DBE48 = 0xE400000000000000;
  result = 0.05;
  xmmword_2809DBE50 = xmmword_27547BEE0;
  qword_2809DBE60 = 0x4000000000000000;
  unk_2809DBE68 = 0xD000000000000019;
  qword_2809DBE70 = 0x800000027546F640;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.multibandFilterCenterBandwidth.getter()
{
  if (qword_2809DACC8 != -1)
  {
    OUTLINED_FUNCTION_25_2();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBE40);
}

double sub_27544B1FC()
{
  qword_2809DBE78 = 828859206;
  unk_2809DBE80 = 0xE400000000000000;
  result = -18.0;
  xmmword_2809DBE88 = xmmword_27547BEF0;
  qword_2809DBE98 = 0;
  unk_2809DBEA0 = 0xD000000000000014;
  qword_2809DBEA8 = 0x800000027546F620;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.multibandFilterCenterGain.getter()
{
  if (qword_2809DACD0 != -1)
  {
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBE78);
}

double sub_27544B2A4()
{
  qword_2809DBEB0 = 828793670;
  *algn_2809DBEB8 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DBEC0 = xmmword_27547BF00;
  qword_2809DBED0 = 0x40A3880000000000;
  unk_2809DBED8 = 0xD000000000000014;
  qword_2809DBEE0 = 0x800000027546F600;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.multibandFilterCenterFrequency.getter()
{
  if (qword_2809DACD8 != -1)
  {
    OUTLINED_FUNCTION_23_6();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBEB0);
}

void sub_27544B354()
{
  qword_2809DBEE8 = 1714507848;
  unk_2809DBEF0 = 0xE400000000000000;
  xmmword_2809DBEF8 = xmmword_27547BF10;
  qword_2809DBF08 = 0x4024000000000000;
  strcpy(byte_2809DBF10, "hp_cutoff_freq");
  HIBYTE(qword_2809DBF18) = -18;
}

uint64_t static Transition.AutomationEffectParameter.highPassFilterCutoffFrequency.getter()
{
  if (qword_2809DACE0 != -1)
  {
    OUTLINED_FUNCTION_22_4();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBEE8);
}

double sub_27544B408()
{
  qword_2809DBF20 = 1915834440;
  *algn_2809DBF28 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DBF30 = xmmword_27547BF20;
  qword_2809DBF40 = 0;
  unk_2809DBF48 = 0x6F7365725F7068;
  qword_2809DBF50 = 0xE700000000000000;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.highPassFilterResonance.getter()
{
  if (qword_2809DACE8 != -1)
  {
    OUTLINED_FUNCTION_21_3();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBF20);
}

void sub_27544B4AC()
{
  qword_2809DBF58 = 1714507852;
  unk_2809DBF60 = 0xE400000000000000;
  xmmword_2809DBF68 = xmmword_27547BF00;
  qword_2809DBF78 = 0x40D57C0000000000;
  strcpy(byte_2809DBF80, "lp_cutoff_freq");
  HIBYTE(qword_2809DBF88) = -18;
}

uint64_t static Transition.AutomationEffectParameter.lowPassFilterCutoffFrequency.getter()
{
  if (qword_2809DACF0 != -1)
  {
    OUTLINED_FUNCTION_20_5();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBF58);
}

double sub_27544B564()
{
  qword_2809DBF90 = 1915834444;
  *algn_2809DBF98 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DBFA0 = xmmword_27547BF20;
  qword_2809DBFB0 = 0;
  unk_2809DBFB8 = 0x6F7365725F706CLL;
  qword_2809DBFC0 = 0xE700000000000000;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.lowPassFilterResonance.getter()
{
  if (qword_2809DACF8 != -1)
  {
    OUTLINED_FUNCTION_19_7();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBF90);
}

__n128 sub_27544B608()
{
  qword_2809DBFC8 = 1731354951;
  unk_2809DBFD0 = 0xE400000000000000;
  qword_2809DBFD8 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_2809DBFE0 = result;
  qword_2809DBFF0 = 0x78696D5F646E6573;
  unk_2809DBFF8 = 0xEF6E6961675F7265;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusSendMixerVolume.getter()
{
  if (qword_2809DAD00 != -1)
  {
    OUTLINED_FUNCTION_18_4();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DBFC8);
}

double sub_27544B6B4()
{
  qword_2809DC000 = 1952730180;
  *algn_2809DC008 = 0xE400000000000000;
  result = 0.0001;
  xmmword_2809DC010 = xmmword_27547BF30;
  qword_2809DC020 = 0x3FF0000000000000;
  unk_2809DC028 = 0xD000000000000013;
  qword_2809DC030 = 0x800000027546F5E0;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.delayDelayTime.getter()
{
  if (qword_2809DAD08 != -1)
  {
    OUTLINED_FUNCTION_17_5();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC000);
}

double sub_27544B760()
{
  qword_2809DC038 = 1718373444;
  unk_2809DC040 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DC048 = xmmword_27547BF10;
  qword_2809DC058 = 0x40A3880000000000;
  unk_2809DC060 = 0xD00000000000001CLL;
  qword_2809DC068 = 0x800000027546F5C0;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.delayLowPassFilterCutoffFrequency.getter()
{
  if (qword_2809DAD10 != -1)
  {
    OUTLINED_FUNCTION_16_5();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC038);
}

double sub_27544B810()
{
  qword_2809DC070 = 2003061828;
  *algn_2809DC078 = 0xE400000000000000;
  result = 0.0;
  xmmword_2809DC080 = xmmword_27547BF40;
  qword_2809DC090 = 0;
  unk_2809DC098 = 0xD000000000000010;
  qword_2809DC0A0 = 0x800000027546F5A0;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.delayDryWetBalance.getter()
{
  if (qword_2809DAD18 != -1)
  {
    OUTLINED_FUNCTION_15_8();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC070);
}

double sub_27544B8B8()
{
  qword_2809DC0A8 = 1650871364;
  unk_2809DC0B0 = 0xE400000000000000;
  result = -99.9;
  xmmword_2809DC0B8 = xmmword_27547BF50;
  qword_2809DC0C8 = 0x4049000000000000;
  unk_2809DC0D0 = 0xD000000000000011;
  qword_2809DC0D8 = 0x800000027546F580;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.delayFeedback.getter()
{
  if (qword_2809DAD20 != -1)
  {
    OUTLINED_FUNCTION_14_6();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC0A8);
}

void sub_27544B964()
{
  qword_2809DC0E0 = 1634162258;
  *algn_2809DC0E8 = 0xE400000000000000;
  xmmword_2809DC0F0 = xmmword_27547BF60;
  qword_2809DC100 = 0x3FF0000000000000;
  strcpy(byte_2809DC108, "fx_reverb_gain");
  HIBYTE(qword_2809DC110) = -18;
}

uint64_t static Transition.AutomationEffectParameter.reverbGain.getter()
{
  if (qword_2809DAD28 != -1)
  {
    OUTLINED_FUNCTION_13_10();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC0E0);
}

double sub_27544BA18()
{
  qword_2809DC118 = 2003064402;
  unk_2809DC120 = 0xE400000000000000;
  result = 0.0;
  xmmword_2809DC128 = xmmword_27547BF40;
  qword_2809DC138 = 0;
  unk_2809DC140 = 0xD000000000000011;
  qword_2809DC148 = 0x800000027546F560;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.reverbDryWetBalance.getter()
{
  if (qword_2809DAD30 != -1)
  {
    OUTLINED_FUNCTION_12_10();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC118);
}

double sub_27544BAC0()
{
  qword_2809DC150 = 1768773202;
  *algn_2809DC158 = 0xE400000000000000;
  result = 0.0001;
  xmmword_2809DC160 = xmmword_27547BF70;
  qword_2809DC170 = 0x3F80624DD2F1A9FCLL;
  unk_2809DC178 = 0xD000000000000018;
  qword_2809DC180 = 0x800000027546F540;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.reverbMinimumDelayTime.getter()
{
  if (qword_2809DAD38 != -1)
  {
    OUTLINED_FUNCTION_11_12();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC150);
}

double sub_27544BB78()
{
  qword_2809DC188 = 1634555474;
  unk_2809DC190 = 0xE400000000000000;
  qword_2809DC198 = 0x3F1A36E2EB1C432DLL;
  result = 1.0;
  unk_2809DC1A0 = xmmword_27547BF80;
  qword_2809DC1B0 = 0xD000000000000018;
  unk_2809DC1B8 = 0x800000027546F520;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.reverbMaximumDelayTime.getter()
{
  if (qword_2809DAD40 != -1)
  {
    OUTLINED_FUNCTION_10_12();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC188);
}

double sub_27544BC30()
{
  qword_2809DC1C0 = 1718376018;
  *algn_2809DC1C8 = 0xE400000000000000;
  result = 0.001;
  xmmword_2809DC1D0 = xmmword_27547BF90;
  qword_2809DC1E0 = 0x3FF0000000000000;
  unk_2809DC1E8 = 0xD000000000000022;
  qword_2809DC1F0 = 0x800000027546F4F0;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.reverbLowFrequencyDecayTime.getter()
{
  if (qword_2809DAD48 != -1)
  {
    OUTLINED_FUNCTION_9_10();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC1C0);
}

double sub_27544BCDC()
{
  qword_2809DC1F8 = 1718113874;
  unk_2809DC200 = 0xE400000000000000;
  result = 0.001;
  xmmword_2809DC208 = xmmword_27547BF90;
  qword_2809DC218 = 0x3FE0000000000000;
  unk_2809DC220 = 0xD000000000000023;
  qword_2809DC228 = 0x800000027546F4C0;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.reverbHighFrequencyDecayTime.getter()
{
  if (qword_2809DAD50 != -1)
  {
    OUTLINED_FUNCTION_8_14();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC1F8);
}

double sub_27544BD88()
{
  qword_2809DC230 = 1920095826;
  *algn_2809DC238 = 0xE400000000000000;
  result = 1.0;
  xmmword_2809DC240 = xmmword_27547BFA0;
  qword_2809DC250 = 0x3FF0000000000000;
  unk_2809DC258 = 0xD00000000000001FLL;
  qword_2809DC260 = 0x800000027546F4A0;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.reverbReflectionsRandomization.getter()
{
  if (qword_2809DAD58 != -1)
  {
    OUTLINED_FUNCTION_7_16();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC230);
}

double sub_27544BE34()
{
  qword_2809DC268 = 1714573384;
  unk_2809DC270 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DC278 = xmmword_27547BF10;
  qword_2809DC288 = 0x4024000000000000;
  unk_2809DC290 = 0xD000000000000011;
  qword_2809DC298 = 0x800000027546F480;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusHighPassFilterCutoffFrequency.getter()
{
  if (qword_2809DAD60 != -1)
  {
    OUTLINED_FUNCTION_6_20();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC268);
}

double sub_27544BEE0()
{
  qword_2809DC2A0 = 1915899976;
  *algn_2809DC2A8 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DC2B0 = xmmword_27547BFB0;
  qword_2809DC2C0 = 0;
  unk_2809DC2C8 = 0x65725F70685F7866;
  qword_2809DC2D0 = 0xEA00000000006F73;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusHighPassFilterResonance.getter()
{
  if (qword_2809DAD68 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC2A0);
}

double sub_27544BF88()
{
  qword_2809DC2D8 = 1714573388;
  unk_2809DC2E0 = 0xE400000000000000;
  result = 10.0;
  xmmword_2809DC2E8 = xmmword_27547BF00;
  qword_2809DC2F8 = 0x40D57C0000000000;
  unk_2809DC300 = 0xD000000000000011;
  qword_2809DC308 = 0x800000027546F460;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusLowPassFilterCutoffFrequency.getter()
{
  if (qword_2809DAD70 != -1)
  {
    OUTLINED_FUNCTION_4_19();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC2D8);
}

double sub_27544C038()
{
  qword_2809DC310 = 1915899980;
  *algn_2809DC318 = 0xE400000000000000;
  result = -20.0;
  xmmword_2809DC320 = xmmword_27547BFB0;
  qword_2809DC330 = 0;
  unk_2809DC338 = 0x65725F706C5F7866;
  qword_2809DC340 = 0xEA00000000006F73;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusLowPassFilterResonance.getter()
{
  if (qword_2809DAD78 != -1)
  {
    OUTLINED_FUNCTION_2_33();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC310);
}

void sub_27544C0E0()
{
  qword_2809DC348 = 1731420487;
  unk_2809DC350 = 0xE400000000000000;
  qword_2809DC358 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  unk_2809DC360 = _Q0;
  strcpy(&qword_2809DC370, "fx_mixer_dry");
  unk_2809DC37D = 0;
  unk_2809DC37E = -5120;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusReturnMixerDryVolume.getter()
{
  if (qword_2809DAD80 != -1)
  {
    OUTLINED_FUNCTION_31_0();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC348);
}

void sub_27544C188()
{
  qword_2809DC380 = 1731486023;
  *algn_2809DC388 = 0xE400000000000000;
  xmmword_2809DC390 = xmmword_27547BFC0;
  qword_2809DC3A0 = 0;
  strcpy(byte_2809DC3A8, "fx_mixer_wet");
  BYTE5(qword_2809DC3B0) = 0;
  HIWORD(qword_2809DC3B0) = -5120;
}

uint64_t static Transition.AutomationEffectParameter.auxEffectsBusReturnMixerWetVolume.getter()
{
  if (qword_2809DAD88 != -1)
  {
    OUTLINED_FUNCTION_30_1();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC380);
}

void sub_27544C234()
{
  qword_2809DC3B8.n128_u64[0] = 0x657461725F7374;
  unk_2809DC3C0 = 0xE700000000000000;
  OUTLINED_FUNCTION_32_0(&qword_2809DC3B8, xmmword_27547BFD0);
}

uint64_t static Transition.AutomationEffectParameter.timeStretchingRate.getter()
{
  if (qword_2809DAD90 != -1)
  {
    OUTLINED_FUNCTION_29_2();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC3B8);
}

double sub_27544C2C0()
{
  qword_2809DC3F0 = 0x6E6961675F74756FLL;
  *algn_2809DC3F8 = 0xE800000000000000;
  result = 0.0;
  xmmword_2809DC400 = xmmword_27547BFC0;
  qword_2809DC410 = 0;
  unk_2809DC418 = 0x6E6961675F74756FLL;
  qword_2809DC420 = 0xE800000000000000;
  return result;
}

uint64_t static Transition.AutomationEffectParameter.outputMixerVolume.getter()
{
  if (qword_2809DAD98 != -1)
  {
    OUTLINED_FUNCTION_28_3();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC3F0);
}

void sub_27544C358()
{
  qword_2809DC428.n128_u64[0] = 1634761058;
  unk_2809DC430 = 0xE400000000000000;
  OUTLINED_FUNCTION_32_0(&qword_2809DC428, xmmword_27547BFC0);
}

uint64_t static Transition.AutomationEffectParameter.effectBypassingState.getter()
{
  if (qword_2809DADA0 != -1)
  {
    OUTLINED_FUNCTION_27_3();
  }

  OUTLINED_FUNCTION_0_37(&qword_2809DC428);
}

unint64_t sub_27544C3EC()
{
  result = qword_2809DC498;
  if (!qword_2809DC498)
  {
    sub_27544C460(255, &qword_2809DC4A0, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC498);
  }

  return result;
}

void sub_27544C460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Transition.AutomationEffectParameter);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27544C4B4(uint64_t a1, int a2)
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

uint64_t sub_27544C4F4(uint64_t result, int a2, int a3)
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

_BYTE *_s25AutomationEffectParameterV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27544C61CLL);
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

unint64_t sub_27544C658()
{
  result = qword_2809DC4A8;
  if (!qword_2809DC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4A8);
  }

  return result;
}

unint64_t sub_27544C6B0()
{
  result = qword_2809DC4B0;
  if (!qword_2809DC4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4B0);
  }

  return result;
}

unint64_t sub_27544C708()
{
  result = qword_2809DC4B8;
  if (!qword_2809DC4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4B8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = *(a1 + 16);
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 48) = v6;
}

double OUTLINED_FUNCTION_1_35@<D0>(double *a1@<X8>)
{
  v2 = *a1;
  v1 = *(a1 + 1);
  result = a1[4];
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_33()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_19()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_20()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_16()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_14()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_12()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_7()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_22_4()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_23_6()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_26_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_27_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_28_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_29_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_30_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_31_0()
{

  return swift_once();
}

void OUTLINED_FUNCTION_32_0(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x3FF0000000000000;
  a1[2].n128_u64[1] = v2;
  a1[3].n128_u64[0] = v3;
}

__n128 Transition.PlaybackState.outgoingSongPlaybackState.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Transition.PlaybackState.incomingSongPlaybackState.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t static Transition.PlaybackState.== infix(_:_:)(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vmovn_s64(vceqzq_f64(vsubq_f64(*a2, *a1)));
  if (v2.i32[0] & v2.i32[1])
  {
    v3 = vmovn_s64(vceqzq_f64(vsubq_f64(a2[1], a1[1])));
    v4 = v3.i8[0] & v3.i8[4];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_27544CBF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x800000027546F660 == a2;
  if (v3 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x800000027546F680 == a2)
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

uint64_t sub_27544CD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544CBF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27544CD28(uint64_t a1)
{
  v2 = sub_27544D0F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544CD64(uint64_t a1)
{
  v2 = sub_27544D0F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.PlaybackState.encode(to:)(void *a1)
{
  sub_27544D148(0, &qword_2809DC4C0, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v19 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D0F4();
  sub_27546EB00();
  v21 = v13;
  v22 = v14;
  v20 = 0;
  sub_275444A30();
  OUTLINED_FUNCTION_1_36();
  if (!v2)
  {
    v21 = v15;
    v22 = v16;
    v20 = 1;
    OUTLINED_FUNCTION_1_36();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t Transition.PlaybackState.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27544D148(0, &qword_2809DC4D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D0F4();
  sub_27546EAE0();
  if (!v2)
  {
    v19 = 0;
    sub_275444AE8();
    OUTLINED_FUNCTION_0_38();
    v15 = v18;
    v19 = 1;
    OUTLINED_FUNCTION_0_38();
    (*(v9 + 8))(v13, v6);
    v17 = v18;
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_27544D0F4()
{
  result = qword_2809DC4C8;
  if (!qword_2809DC4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4C8);
  }

  return result;
}

void sub_27544D148(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544D0F4();
    v7 = a3(a1, &_s13PlaybackStateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s13PlaybackStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27544D288);
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

unint64_t sub_27544D2C4()
{
  result = qword_2809DC4D8;
  if (!qword_2809DC4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4D8);
  }

  return result;
}

unint64_t sub_27544D31C()
{
  result = qword_2809DC4E0;
  if (!qword_2809DC4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4E0);
  }

  return result;
}

unint64_t sub_27544D374()
{
  result = qword_2809DC4E8;
  if (!qword_2809DC4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_36()
{

  return sub_27546E950();
}

__n128 Transition.SongPlaybackState.timeStretchingState.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Transition.SongPlaybackState.init(timeStretchingState:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_27544D45C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000027546F6A0 == a2)
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

uint64_t sub_27544D4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544D45C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27544D528(uint64_t a1)
{
  v2 = sub_27544D8B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544D564(uint64_t a1)
{
  v2 = sub_27544D8B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.SongPlaybackState.encode(to:)(void *a1)
{
  sub_27544D960(0, &qword_2809DC4F0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = v16 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D8B8();
  sub_27546EB00();
  v16[0] = v12;
  v16[1] = v13;
  sub_27544D90C();
  sub_27546E950();
  return (*(v7 + 8))(v11, v4);
}

uint64_t Transition.SongPlaybackState.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27544D960(0, &qword_2809DC508, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544D8B8();
  sub_27546EAE0();
  if (!v2)
  {
    sub_27544D9C4();
    sub_27546E8D0();
    (*(v9 + 8))(v13, v6);
    *a2 = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_27544D8B8()
{
  result = qword_2809DC4F8;
  if (!qword_2809DC4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC4F8);
  }

  return result;
}

unint64_t sub_27544D90C()
{
  result = qword_2809DC500;
  if (!qword_2809DC500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC500);
  }

  return result;
}

void sub_27544D960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544D8B8();
    v7 = a3(a1, &_s17SongPlaybackStateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27544D9C4()
{
  result = qword_2809DC510;
  if (!qword_2809DC510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC510);
  }

  return result;
}

_BYTE *_s17SongPlaybackStateV10CodingKeysOwst(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x27544DAC4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_27544DB00()
{
  result = qword_2809DC518;
  if (!qword_2809DC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC518);
  }

  return result;
}

unint64_t sub_27544DB58()
{
  result = qword_2809DC520;
  if (!qword_2809DC520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC520);
  }

  return result;
}

unint64_t sub_27544DBB0()
{
  result = qword_2809DC528;
  if (!qword_2809DC528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC528);
  }

  return result;
}

double Transition.TimeStretchingState.songTime.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double Transition.TimeStretchingState.stretchedSongTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double *Transition.TimeStretchingState.init(songTime:stretchedSongTime:)@<X0>(double *result@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  if (*result < 0.0)
  {
    v3 = 8;
LABEL_5:
    sub_275408F98();
    swift_allocError();
    *v5 = v3;
    return swift_willThrow();
  }

  v4 = *a2;
  if (*a2 < 0.0)
  {
    v3 = 10;
    goto LABEL_5;
  }

  *a3 = *result;
  a3[1] = v4;
  return result;
}

uint64_t sub_27544DCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6954676E6F73 && a2 == 0xE800000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027546F1B0 == a2)
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

uint64_t sub_27544DD9C(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x656D6954676E6F73;
  }
}

uint64_t sub_27544DDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544DCCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27544DE08(uint64_t a1)
{
  v2 = sub_27544DFF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544DE44(uint64_t a1)
{
  v2 = sub_27544DFF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.TimeStretchingState.encode(to:)(void *a1)
{
  sub_27544E1F4(0, &qword_2809DC530, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_8_9(v4);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - v11;
  v14 = *v1;
  v13 = v1[1];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544DFF0();
  sub_27546EB00();
  v18 = v14;
  HIBYTE(v17) = 0;
  sub_27542D5D8();
  OUTLINED_FUNCTION_1_37();
  if (!v2)
  {
    v18 = v13;
    HIBYTE(v17) = 1;
    sub_27542D62C();
    OUTLINED_FUNCTION_1_37();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_27544DFF0()
{
  result = qword_2809DC538;
  if (!qword_2809DC538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC538);
  }

  return result;
}

uint64_t Transition.TimeStretchingState.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_27544E1F4(0, &qword_2809DC540, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = OUTLINED_FUNCTION_8_9(v5);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544DFF0();
  sub_27546EAE0();
  if (!v2)
  {
    HIBYTE(v18) = 0;
    sub_27542D478();
    OUTLINED_FUNCTION_0_39();
    v15 = v19;
    HIBYTE(v18) = 1;
    sub_27542D4CC();
    OUTLINED_FUNCTION_0_39();
    (*(v9 + 8))(v13, v6);
    v17 = v19;
    *a2 = v15;
    a2[1] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_27544E1F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544DFF0();
    v7 = a3(a1, &_s19TimeStretchingStateV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

_BYTE *_s19TimeStretchingStateV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27544E368);
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

unint64_t sub_27544E3A4()
{
  result = qword_2809DC548;
  if (!qword_2809DC548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC548);
  }

  return result;
}

unint64_t sub_27544E3FC()
{
  result = qword_2809DC550;
  if (!qword_2809DC550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC550);
  }

  return result;
}

unint64_t sub_27544E454()
{
  result = qword_2809DC558;
  if (!qword_2809DC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC558);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_39()
{

  return sub_27546E8D0();
}

uint64_t OUTLINED_FUNCTION_1_37()
{

  return sub_27546E950();
}

uint64_t Transition.ContinuousSchedule.Automation.ramps.getter()
{
  v1 = *(v0 + 56);
  swift_bridgeObjectRetain_n();
  v8[0] = v1;
  v8[1] = sub_27544E574(1, v1);
  v8[2] = v2;
  v8[3] = v3;
  v8[4] = v4;
  sub_27544E690(v8);
  v6 = v5;
  swift_unknownObjectRelease();

  return v6;
}

int64_t sub_27544E574(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_27544FB58(0, result, v3);
    if (v4)
    {
      result = v3;
    }

    if (v3 >= result)
    {
      sub_27544FAE8(result, v3, a2);
      OUTLINED_FUNCTION_1_38();

      return OUTLINED_FUNCTION_3_27();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27544E5F0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a5 >> 1;
    result = sub_27544FB58(a4, result, a5 >> 1);
    if (v6)
    {
      result = v5;
    }

    if (v5 >= result)
    {
      sub_27543386C(result);
      OUTLINED_FUNCTION_1_38();
      swift_unknownObjectRelease();
      return OUTLINED_FUNCTION_3_27();
    }
  }

  __break(1u);
  return result;
}

void sub_27544E690(void *a1)
{
  v1 = a1[3];
  v2 = a1[4] >> 1;
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v49 = a1[4] >> 1;
  v50 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v48 = *(*a1 + 16);
  if (v3 >= v48)
  {
    v7 = *(*a1 + 16);
  }

  else
  {
    v7 = v2 - v1;
  }

  v52 = MEMORY[0x277D84F90];
  sub_27544109C(0, v7 & ~(v7 >> 63), 0);
  if (v3 < 0)
  {
    goto LABEL_40;
  }

  v8 = v52;
  v9 = v7;
  v51 = v4;
  if (v7)
  {

    swift_unknownObjectRetain();
    v10 = (v4 + 48);
    v11 = v49;
    v12 = (v6 + 24 * v50 + 8);
    v13 = v7;
    v14 = v48;
    v15 = v50;
    while (v14 && v11 != v15)
    {
      if (v15 >= v11)
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v16 = *v10;
      if (v16 > 0xFB)
      {
        goto LABEL_41;
      }

      v17 = *(v10 - 1);
      v18 = *v12;
      if (*v12 < v17)
      {
        goto LABEL_34;
      }

      v19 = *(v10 - 2);
      v20 = *(v12 - 1);
      OUTLINED_FUNCTION_4_20();
      if (v24)
      {
        OUTLINED_FUNCTION_5_20();
        sub_27544109C(v26, v27, v28);
        v21 = 40;
        v9 = v46;
        v23 = v48;
        v11 = v49;
        v22 = v50;
        v8 = v52;
      }

      *(v8 + 16) = v5;
      v25 = v8 + v6 * v21;
      *(v25 + 32) = v19;
      *(v25 + 40) = v20;
      v10 += 3;
      *(v25 + 48) = v17;
      *(v25 + 56) = v18;
      *(v25 + 64) = v16;
      --v14;
      v12 += 3;
      ++v15;
      if (!--v13)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_41;
  }

  swift_unknownObjectRetain();
  v11 = v49;
  v22 = v50;
  v15 = v50;
  v23 = v48;
LABEL_18:
  v29 = 0;
  v30 = (v6 + 24 * v15 + 8);
  v31 = v15 - v11;
  v32 = v23 - v9;
  for (i = (v51 + 24 * v9 + 48); v32 != v29; i += 3)
  {
    if (v9 + v29 >= v23)
    {
      goto LABEL_35;
    }

    if (__OFADD__(v9 + v29, 1))
    {
      goto LABEL_36;
    }

    if (!(v31 + v29))
    {
      break;
    }

    if (v15 < v22 || v15 + v29 >= v11)
    {
      goto LABEL_37;
    }

    v35 = *(i - 1);
    v36 = *v30;
    if (*v30 < v35)
    {
      goto LABEL_38;
    }

    v37 = *(i - 2);
    v38 = *i;
    v39 = *(v30 - 1);
    OUTLINED_FUNCTION_4_20();
    if (v24)
    {
      OUTLINED_FUNCTION_5_20();
      v47 = v42;
      sub_27544109C(v43, v44, v45);
      v40 = 40;
      v31 = v47;
      v23 = v48;
      v9 = v46;
      v11 = v49;
      v22 = v50;
      v8 = v52;
    }

    *(v8 + 16) = v5;
    v41 = v8 + v6 * v40;
    *(v41 + 32) = v37;
    *(v41 + 40) = v39;
    *(v41 + 48) = v35;
    *(v41 + 56) = v36;
    *(v41 + 64) = v38;
    v30 += 3;
    ++v29;
  }

  swift_unknownObjectRelease();
}

uint64_t Transition.ContinuousSchedule.Automation.parameter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
}

uint64_t static Transition.ContinuousSchedule.Automation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v14 = *(a2 + 56);
  if (!v13 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  v15 = v3 == v9 && v2 == v8;
  if (!v15 || v4 != v10)
  {
    return 0;
  }

  v17 = v5 == v11 && v6 == v12;
  if (!v17 && (sub_27546E9A0() & 1) == 0)
  {
    return 0;
  }

  return sub_27543CE80(v7, v14);
}

uint64_t sub_27544EAAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656D61726170 && a2 == 0xE900000000000072;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
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

uint64_t sub_27544EB78(char a1)
{
  if (a1)
  {
    return 0x73746E696F70;
  }

  else
  {
    return 0x6574656D61726170;
  }
}

uint64_t sub_27544EBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544EAAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27544EBE0(uint64_t a1)
{
  v2 = sub_27544EEC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27544EC1C(uint64_t a1)
{
  v2 = sub_27544EEC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.Automation.encode(to:)(void *a1)
{
  sub_27544F2C4(0, &qword_2809DC560, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = OUTLINED_FUNCTION_8_9(v3);
  v26 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = *v1;
  v10 = v1[1];
  v24 = *(v1 + 1);
  v11 = v1[4];
  v12 = v1[5];
  v13 = v1[6];
  v23 = v1[7];
  v14 = a1[3];
  v15 = a1[4];
  v16 = a1;
  v18 = &v22 - v17;
  __swift_project_boxed_opaque_existential_1(v16, v14);
  sub_27544EEC0();

  sub_27546EB00();
  v28 = v9;
  v29 = v10;
  v30 = v24;
  v31 = v11;
  v32 = v12;
  v33 = v13;
  v27 = 0;
  sub_27544EF14();
  v19 = v25;
  sub_27546E950();
  if (v19)
  {

    return (*(v26 + 8))(v18, v4);
  }

  else
  {
    v21 = v26;

    v28 = v23;
    v27 = 1;
    sub_27544EF68();
    sub_27544F37C(&qword_2809DC580, sub_27544EFB8);
    sub_27546E950();
    return (*(v21 + 8))(v18, v4);
  }
}

unint64_t sub_27544EEC0()
{
  result = qword_2809DC568;
  if (!qword_2809DC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC568);
  }

  return result;
}

unint64_t sub_27544EF14()
{
  result = qword_2809DC570;
  if (!qword_2809DC570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC570);
  }

  return result;
}

void sub_27544EF68()
{
  if (!qword_2809DC578)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC578);
    }
  }
}

unint64_t sub_27544EFB8()
{
  result = qword_2809DC588;
  if (!qword_2809DC588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC588);
  }

  return result;
}

uint64_t Transition.ContinuousSchedule.Automation.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27544F2C4(0, &qword_2809DC590, MEMORY[0x277D844C8]);
  v6 = OUTLINED_FUNCTION_8_9(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27544EEC0();
  sub_27546EAE0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v23) = 0;
  sub_27544F328();
  sub_27546E8D0();
  v10 = v28;
  v22 = v27;
  v11 = v29;
  v12 = v30;
  v13 = v31;
  v14 = v33;
  v21 = v32;
  sub_27544EF68();
  v35 = 1;
  sub_27544F37C(&qword_2809DC5A0, sub_27544F3E8);
  sub_27546E8D0();
  v15 = OUTLINED_FUNCTION_0_40();
  v16(v15);
  v17 = v36;
  *&v23 = v22;
  *(&v23 + 1) = v10;
  *&v24 = v11;
  *(&v24 + 1) = v12;
  *&v25 = v13;
  *(&v25 + 1) = v21;
  *&v26 = v14;
  *(&v26 + 1) = v36;
  v18 = v24;
  *a2 = v23;
  a2[1] = v18;
  v19 = v26;
  a2[2] = v25;
  a2[3] = v19;
  sub_2753EF21C(&v23, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v22;
  v28 = v10;
  v29 = v11;
  v30 = v12;
  v31 = v13;
  v32 = v21;
  v33 = v14;
  v34 = v17;
  return sub_2753EF278(&v27);
}

void sub_27544F2C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_27544EEC0();
    v7 = a3(a1, &_s10AutomationV10CodingKeysON, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_27544F328()
{
  result = qword_2809DC598;
  if (!qword_2809DC598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC598);
  }

  return result;
}

uint64_t sub_27544F37C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_27544EF68();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27544F3E8()
{
  result = qword_2809DC5A8;
  if (!qword_2809DC5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5A8);
  }

  return result;
}

double Transition.ContinuousSchedule.Automation.startValue.getter()
{
  v1 = *(v0 + 56);
  if (!*(v1 + 16))
  {
    v1 = v0;
  }

  return *(v1 + 32);
}

double Transition.ContinuousSchedule.Automation.endValue.getter()
{
  v1 = v0 + 32;
  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  v4 = v2 + 24 * v3 + 8;
  if (v3)
  {
    v1 = v4;
  }

  return *v1;
}

void Transition.ContinuousSchedule.Automation.songTimeRange.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v2 + 40);
    v5 = *(v2 + 24 * v3 + 16);
    if (v5 < v4)
    {
      __break(1u);
    }

    else
    {
      *a1 = v4;
      *(a1 + 8) = v5;
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }
}

double sub_27544F528(double *a1)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return *(v1 + 32);
  }

  v4 = *a1;
  v5 = *(v2 + 32);
  if (*a1 >= *(v2 + 40))
  {
    v5 = *(v2 + 32 + 24 * v3 - 24);
    v6 = *(v1 + 56);
    swift_bridgeObjectRetain_n();
    v24[0] = v2;
    v24[1] = sub_27544E574(1, v2);
    v24[2] = v7;
    v24[3] = v8;
    v24[4] = v9;
    sub_27544E690(v24);
    v11 = v10;
    swift_unknownObjectRelease();

    v12 = *(v11 + 16);
    v13 = v11 + 40 * v12 + 32;
    v14 = v12 + 1;
    while (--v14)
    {
      v15 = v13;
      v13 -= 40;
      v16 = *(v15 - 24);
      if (v4 >= v16)
      {
        v17 = *(v15 - 16);
        if (v17 >= v4)
        {
          v18 = *v13;
          v19 = *(v13 + 8);
          v20 = *(v13 + 32);

          v22[1] = v18;
          v22[2] = v19;
          v22[3] = v16;
          v22[4] = v17;
          v23 = v20;
          v22[0] = v4;
          return sub_275453DA8(v22);
        }
      }
    }
  }

  return v5;
}

uint64_t Transition.ContinuousSchedule.Automation.values<A>(at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3[1];
  v17[0] = *v3;
  v17[1] = v6;
  v7 = v3[3];
  v17[2] = v3[2];
  v17[3] = v7;
  v8 = sub_27546E5B0();
  v10 = sub_275447280(sub_27542A55C, 0, a2, &type metadata for SongTime, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], v9);
  v11 = sub_27543CFA4(v10, v8);

  if (v11)
  {
    MEMORY[0x28223BE20](v12);
    v16[2] = v17;
    v13 = sub_27544F86C();
    return sub_275447280(sub_27544F824, v16, a2, MEMORY[0x277D839F8], v13, a3, MEMORY[0x277D84950], &v18);
  }

  else
  {
    sub_275408F98();
    swift_allocError();
    *v15 = 9;
    return swift_willThrow();
  }
}

void sub_27544F824(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *a2 = sub_27544F528(&v4);
}

unint64_t sub_27544F86C()
{
  result = qword_2809DC5B0;
  if (!qword_2809DC5B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2809DC5B0);
  }

  return result;
}

_BYTE *_s10AutomationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27544F9A4);
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

unint64_t sub_27544F9E0()
{
  result = qword_2809DC5B8;
  if (!qword_2809DC5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5B8);
  }

  return result;
}

unint64_t sub_27544FA38()
{
  result = qword_2809DC5C0;
  if (!qword_2809DC5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5C0);
  }

  return result;
}

unint64_t sub_27544FA90()
{
  result = qword_2809DC5C8;
  if (!qword_2809DC5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5C8);
  }

  return result;
}

unint64_t sub_27544FAE8(unint64_t result, uint64_t a2, uint64_t a3)
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
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_27544FB58(uint64_t result, uint64_t a2, uint64_t a3)
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
    if (v3 <= 0)
    {
      v6 = __OFSUB__(v3, a2);
      v4 = v3 == a2;
      v5 = v3 - a2 < 0;
    }

    else
    {
      v6 = 0;
      v4 = 1;
      v5 = 0;
    }

    if (!(v5 ^ v6 | v4))
    {
      return OUTLINED_FUNCTION_2_15();
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return OUTLINED_FUNCTION_2_15();
  }

  v6 = __OFADD__(result, a2);
  result += a2;
  if (v6)
  {
    goto LABEL_14;
  }

  return result;
}

void OUTLINED_FUNCTION_4_20()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t sub_27544FC0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = 0;
  while (1)
  {
    v6 = byte_2884115A0[v5 + 32];
    if (!(v6 >> 6))
    {
      OUTLINED_FUNCTION_11_13();
      v16 = v9 | 0x2D6E692D00000000;
      v11 = 0xE800000000000000;
      goto LABEL_12;
    }

    if (v6 >> 6 == 1)
    {
      OUTLINED_FUNCTION_11_13();
      v16 = v10 | 0x74756F2D00000000;
      v11 = 0xE90000000000002DLL;
LABEL_12:
      v17 = v11;
      MEMORY[0x277C776B0]();

      v7 = v16;
      v8 = v17;
      goto LABEL_13;
    }

    v7 = v6 == 128 ? 0x7261656E696CLL : 0x6874697261676F6CLL;
    v8 = v6 == 128 ? 0xE600000000000000 : 0xEB0000000063696DLL;
LABEL_13:
    if (v7 == a1 && v8 == a2)
    {
      break;
    }

    v13 = sub_27546E9A0();

    if (v13)
    {
      goto LABEL_21;
    }

    if (++v5 == 8)
    {
      LOBYTE(v6) = -4;
      goto LABEL_21;
    }
  }

LABEL_21:
  *a3 = v6;
  return result;
}

uint64_t Transition.ContinuousSchedule.AutomationCurve.id.getter()
{
  v1 = *v0;
  if (!(v1 >> 6))
  {
    *v0;
    OUTLINED_FUNCTION_11_13();
    v5 = v2 | 0x2D6E692D00000000;
    goto LABEL_8;
  }

  if (v1 >> 6 == 1)
  {
    OUTLINED_FUNCTION_11_13();
    v5 = v4 | 0x74756F2D00000000;
LABEL_8:
    v6 = v5;
    MEMORY[0x277C776B0]();

    return v6;
  }

  if (v1 == 128)
  {
    return 0x7261656E696CLL;
  }

  else
  {
    return 0x6874697261676F6CLL;
  }
}

uint64_t static Transition.ContinuousSchedule.AutomationCurve.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 != 1)
    {
      if (v2 == 128)
      {
        if (v3 != 128)
        {
          return 0;
        }
      }

      else if (v3 != 129)
      {
        return 0;
      }

      return 1;
    }

    if ((v3 & 0xC0) == 0x40)
    {
      return ((v3 ^ v2) & 0x3F) == 0;
    }

    return 0;
  }

  if (v3 > 0x3F)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_27544FF44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_27546E9A0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874697261676F6CLL && a2 == 0xEB0000000063696DLL;
    if (v6 || (sub_27546E9A0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E496465736165 && a2 == 0xE700000000000000;
      if (v7 || (sub_27546E9A0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74754F6465736165 && a2 == 0xE800000000000000)
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

uint64_t sub_27545009C(char a1)
{
  result = 0x7261656E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x6874697261676F6CLL;
      break;
    case 2:
      result = 0x6E496465736165;
      break;
    case 3:
      result = 0x74754F6465736165;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_275450148(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
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

uint64_t sub_2754501C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27544FF44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2754501EC(uint64_t a1)
{
  v2 = sub_275451234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275450228(uint64_t a1)
{
  v2 = sub_275451234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275450268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275450148(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_275450294(uint64_t a1)
{
  v2 = sub_275451138();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754502D0(uint64_t a1)
{
  v2 = sub_275451138();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27545030C(uint64_t a1)
{
  v2 = sub_2754510E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275450348(uint64_t a1)
{
  v2 = sub_2754510E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275450384(uint64_t a1)
{
  v2 = sub_2754511E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2754503C0(uint64_t a1)
{
  v2 = sub_2754511E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2754503FC(uint64_t a1)
{
  v2 = sub_27545118C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275450438(uint64_t a1)
{
  v2 = sub_27545118C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transition.ContinuousSchedule.AutomationCurve.encode(to:)(void *a1)
{
  OUTLINED_FUNCTION_6_21();
  v3 = MEMORY[0x277D84538];
  sub_2754512DC(0, v4, v5, v6, MEMORY[0x277D84538]);
  v8 = OUTLINED_FUNCTION_8_9(v7);
  v79 = v9;
  v80 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_9();
  v78 = v13;
  v14 = OUTLINED_FUNCTION_5_21();
  sub_2754512DC(v14, v15, v16, v17, v3);
  v77 = v18;
  OUTLINED_FUNCTION_8_9(v18);
  v75 = v19;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_9();
  v76 = v23;
  v24 = OUTLINED_FUNCTION_4_21();
  sub_2754512DC(v24, v25, v26, v27, v3);
  v29 = OUTLINED_FUNCTION_8_9(v28);
  v73 = v30;
  v74 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_9();
  v72 = v34;
  v35 = OUTLINED_FUNCTION_3_28();
  sub_2754512DC(v35, v36, v37, v38, v3);
  v40 = v39;
  OUTLINED_FUNCTION_8_9(v39);
  v71 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v70 - v45;
  v47 = OUTLINED_FUNCTION_2_34();
  sub_2754512DC(v47, v48, v49, &_s15AutomationCurveO10CodingKeysON, v3);
  v51 = OUTLINED_FUNCTION_8_9(v50);
  v81 = v52;
  v82 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v55);
  v57 = &v70 - v56;
  v58 = *v1;
  v59 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v59);
  sub_275451234();
  sub_27546EB00();
  if (!(v58 >> 6))
  {
    v62 = v75;
    v86 = 2;
    sub_275451138();
    v63 = v76;
    OUTLINED_FUNCTION_13_11();
    v85 = v58;
    sub_275451288();
    v64 = v77;
    sub_27546E950();
    (*(v62 + 8))(v63, v64);
    return (*(v81 + 8))(v57, v59);
  }

  if (v58 >> 6 == 1)
  {
    v88 = 3;
    sub_2754510E4();
    v60 = v78;
    OUTLINED_FUNCTION_13_11();
    v87 = v58 & 0x3F;
    sub_275451288();
    v61 = v80;
    sub_27546E950();
    (*(v79 + 8))(v60, v61);
    return (*(v81 + 8))(v57, v59);
  }

  v66 = (v81 + 8);
  if (v58 == 128)
  {
    v83 = 0;
    sub_2754511E0();
    v67 = v82;
    sub_27546E8F0();
    (*(v71 + 8))(v46, v40);
    return (*v66)(v57, v67);
  }

  else
  {
    v84 = 1;
    sub_27545118C();
    v68 = v72;
    v69 = v82;
    sub_27546E8F0();
    (*(v73 + 8))(v68, v74);
    return (*v66)(v57, v69);
  }
}

uint64_t Transition.ContinuousSchedule.AutomationCurve.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v104 = a2;
  OUTLINED_FUNCTION_6_21();
  v3 = MEMORY[0x277D844C8];
  sub_2754512DC(0, v4, v5, v6, MEMORY[0x277D844C8]);
  v100 = v7;
  OUTLINED_FUNCTION_8_9(v7);
  v103 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_9();
  v102 = v12;
  v13 = OUTLINED_FUNCTION_5_21();
  sub_2754512DC(v13, v14, v15, v16, v3);
  v18 = OUTLINED_FUNCTION_8_9(v17);
  v98 = v19;
  v99 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_9();
  v106 = v23;
  v24 = OUTLINED_FUNCTION_4_21();
  sub_2754512DC(v24, v25, v26, v27, v3);
  v29 = OUTLINED_FUNCTION_8_9(v28);
  v96 = v30;
  v97 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_9();
  v101 = v34;
  v35 = OUTLINED_FUNCTION_3_28();
  sub_2754512DC(v35, v36, v37, v38, v3);
  v40 = v39;
  OUTLINED_FUNCTION_8_9(v39);
  v95 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v92 - v45;
  v47 = OUTLINED_FUNCTION_2_34();
  sub_2754512DC(v47, v48, v49, &_s15AutomationCurveO10CodingKeysON, v3);
  OUTLINED_FUNCTION_8_9(v50);
  v105 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_7_9();
  MEMORY[0x28223BE20](v54);
  v55 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275451234();
  v56 = v107;
  sub_27546EAE0();
  if (v56)
  {
    goto LABEL_8;
  }

  v93 = v40;
  v94 = v46;
  v107 = a1;
  v57 = sub_27546E8E0();
  sub_275433874(v57, 0);
  if (v59 == v60 >> 1)
  {
    goto LABEL_7;
  }

  if (v59 >= (v60 >> 1))
  {
    __break(1u);
    JUMPOUT(0x27545105CLL);
  }

  v61 = *(v58 + v59);
  sub_27543386C(v59 + 1);
  v63 = v62;
  v65 = v64;
  swift_unknownObjectRelease();
  if (v63 != v65 >> 1)
  {
LABEL_7:
    v72 = sub_27546E7D0();
    swift_allocError();
    v74 = v73;
    sub_2754333D4();
    v76 = *(v75 + 48);
    *v74 = &type metadata for Transition.ContinuousSchedule.AutomationCurve;
    sub_27546E860();
    sub_27546E7B0();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x277D84160], v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    v77 = OUTLINED_FUNCTION_1_39();
    v78(v77);
    a1 = v107;
LABEL_8:
    v79 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v67 = v103;
  v66 = v104;
  switch(v61)
  {
    case 1:
      v109 = 1;
      sub_27545118C();
      v83 = v101;
      OUTLINED_FUNCTION_7_17();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v83, v97);
      v84 = OUTLINED_FUNCTION_1_39();
      v85(v84);
      v71 = -127;
      break;
    case 2:
      v111 = 2;
      sub_275451138();
      OUTLINED_FUNCTION_7_17();
      sub_275451344();
      sub_27546E8D0();
      swift_unknownObjectRelease();
      v86 = OUTLINED_FUNCTION_12_11();
      v87(v86);
      v88 = OUTLINED_FUNCTION_10_13();
      v89(v88);
      v71 = v110;
      break;
    case 3:
      v113 = 3;
      sub_2754510E4();
      v81 = v102;
      OUTLINED_FUNCTION_7_17();
      sub_275451344();
      v82 = v100;
      sub_27546E8D0();
      swift_unknownObjectRelease();
      (*(v67 + 8))(v81, v82);
      v90 = OUTLINED_FUNCTION_10_13();
      v91(v90);
      v71 = v112 | 0x40;
      v66 = v104;
      break;
    default:
      v108 = 0;
      sub_2754511E0();
      v68 = v94;
      OUTLINED_FUNCTION_7_17();
      swift_unknownObjectRelease();
      (*(v95 + 8))(v68, v93);
      v69 = OUTLINED_FUNCTION_1_39();
      v70(v69);
      v71 = 0x80;
      break;
  }

  *v66 = v71;
  v79 = v107;
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_2754510BC@<X0>(uint64_t *a1@<X8>)
{
  result = Transition.ContinuousSchedule.AutomationCurve.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2754510E4()
{
  result = qword_2809DC5D8;
  if (!qword_2809DC5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5D8);
  }

  return result;
}

unint64_t sub_275451138()
{
  result = qword_2809DC5E8;
  if (!qword_2809DC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5E8);
  }

  return result;
}

unint64_t sub_27545118C()
{
  result = qword_2809DC5F8;
  if (!qword_2809DC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC5F8);
  }

  return result;
}

unint64_t sub_2754511E0()
{
  result = qword_2809DC608;
  if (!qword_2809DC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC608);
  }

  return result;
}

unint64_t sub_275451234()
{
  result = qword_2809DC618;
  if (!qword_2809DC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC618);
  }

  return result;
}

unint64_t sub_275451288()
{
  result = qword_2809DC620;
  if (!qword_2809DC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC620);
  }

  return result;
}

void sub_2754512DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_275451344()
{
  result = qword_2809DC650;
  if (!qword_2809DC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC650);
  }

  return result;
}

unint64_t sub_27545139C()
{
  result = qword_2809DC658;
  if (!qword_2809DC658)
  {
    sub_2754513F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809DC658);
  }

  return result;
}

void sub_2754513F4()
{
  if (!qword_2809DC660)
  {
    v0 = sub_27546E640();
    if (!v1)
    {
      atomic_store(v0, &qword_2809DC660);
    }
  }
}

uint64_t _s15AutomationCurveOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x3E)
  {
    if (a2 + 194 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 194) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 195;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v5 >= 0x3D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s15AutomationCurveOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 194 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 194) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x3E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x3D)
  {
    v6 = ((a2 - 62) >> 8) + 1;
    *result = a2 - 62;
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
        JUMPOUT(0x2754515B0);
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
          *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2754515D8(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 3u) + 2;
  }
}

_BYTE *sub_275451604(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 3 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 3 ^ 0x82;
  }

  *result = v2;
  return result;
}

_BYTE *_s15AutomationCurveO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x27545170CLL);
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

_BYTE *sub_275451778(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x275451814);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}