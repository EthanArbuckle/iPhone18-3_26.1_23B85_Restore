uint64_t sub_2311F65D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433F8, &qword_231373E80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43400, &qword_23136C920);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F66E8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434C8, &unk_231370DC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_23126F678((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D0, &qword_23136CA10);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F67F8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433E8, &qword_23136C908);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_231270DFC((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433F0, &unk_23136C910);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2311F6908(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434A8, &unk_23136C9E0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43398, &qword_23136C338) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F6D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F6B10()
{
  OUTLINED_FUNCTION_20_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F10, &unk_23136C970);
      v8 = OUTLINED_FUNCTION_37_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_9_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_5();
        sub_231270E00(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
    OUTLINED_FUNCTION_14_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F6BD8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435F8, &qword_231374530);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43600, &qword_23136CB40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F6CF0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43420, &qword_23136C938);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2311F6E08(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43568, &qword_23136CAA8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43570, &qword_23136CAB0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F79C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F6FD4()
{
  OUTLINED_FUNCTION_20_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43550, &unk_23136CA90);
      v8 = OUTLINED_FUNCTION_37_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_9_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_5();
        sub_23126F7B0(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43558, &qword_231374890);
    OUTLINED_FUNCTION_14_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F709C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43578, &qword_23136CAB8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_231270DFC((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2311F71AC(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43670, &qword_23136CBB8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43678, &qword_23136CBC0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F7D8(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2311F7378(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E0, &unk_23136CA20);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_23126F7B0((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434E8, &unk_23136E480);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F7490()
{
  OUTLINED_FUNCTION_20_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43538, &qword_231374A70);
      v8 = OUTLINED_FUNCTION_37_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_9_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_5();
        sub_23126F804(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43540, &qword_23136CA80);
    OUTLINED_FUNCTION_14_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F75C4(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43438, &unk_231370D40);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43440, &qword_23136C960);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F76DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
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
      OUTLINED_FUNCTION_49_0(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_63_1();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
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
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F77B8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43638, &qword_23136CB78);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43640, &qword_23136CB80);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F78D0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43598, &qword_23136CAD8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2311F79E8(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B8, &qword_23136CAF8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C0, &unk_23136CB00) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F844(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F7BB4()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_12_1();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435C8, &qword_231370730);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v12 / v10);
LABEL_16:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D0, &qword_23136CB10);
  OUTLINED_FUNCTION_46_0(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_35_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_25_2(v17);
    sub_23126F858(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

uint64_t sub_2311F7D10(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43628, &qword_23136CB68);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_23126F86C((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43630, &qword_23136CB70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F7E28(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43608, &qword_23136CB48);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_2311DAAAC((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43610, &unk_23136CB50);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_2311F7F40(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43500, &unk_23136CA40);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43508, &qword_231373010) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F8AC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2311F810C(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A8, &qword_23136CAE8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B0, &qword_23136CAF0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435B0, &qword_23136CAF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F8C0(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2311F82D8(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F0, &qword_23136CA30);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 80);
      if (v5)
      {
LABEL_13:
        sub_231270E04((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434F8, &qword_23136CA38);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F83F0(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43468, &qword_23136C9A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_231270E08((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43470, &qword_23136C9A8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_2311F8508(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433C8, &qword_231370E50);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_231270E00((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD433D0, &qword_23136C8F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F8620()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_21_3();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_41_1(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_49_0(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_40_2(v16 - 32);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_44_2();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_64_1();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_33_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_2311F86D8(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435D8, &qword_23136CB18);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435E0, &qword_23136CB20) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F900(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2311F88E0(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43588, &qword_23136CAC8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43590, &qword_23136CAD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F8D4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F8AAC()
{
  OUTLINED_FUNCTION_21_3();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_41_1(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_49_0(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_63_1();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v3;
      v16[3] = 2 * ((v17 - 32) / 32);
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_44_2();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_33_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2311F8B64()
{
  OUTLINED_FUNCTION_20_1();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_3(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43660, &qword_2313707B0);
      v8 = OUTLINED_FUNCTION_37_1();
      v9 = _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_9_3(v9);
      if (v1)
      {
LABEL_9:
        v10 = OUTLINED_FUNCTION_7_5();
        sub_231270E08(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43668, &qword_23136CBB0);
    OUTLINED_FUNCTION_14_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v6)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F8C2C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_23126F734((a4 + 32), v8, (v10 + 32));
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

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD443C0, &unk_23136E000);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F8D3C()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_20_1();
  if (v3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_12_1();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  OUTLINED_FUNCTION_19_3();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43528, &qword_23136CA68);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  OUTLINED_FUNCTION_0(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_5_2();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_27_2();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_18_5(v12 / v10);
LABEL_16:
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  OUTLINED_FUNCTION_46_0(v14);
  v16 = *(v15 + 80);
  OUTLINED_FUNCTION_35_0();
  if (v1)
  {
    v18 = OUTLINED_FUNCTION_25_2(v17);
    sub_23126F95C(v18, v19, v20);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_2();
  }

  OUTLINED_FUNCTION_64_1();
}

size_t sub_2311F8E98(size_t result, int64_t a2, char a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43408, &qword_23136C928);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43248, &qword_23136BCF0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_23126F970(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2311F9064()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_21_3();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_0();
  if (v7 == v8)
  {
LABEL_7:
    OUTLINED_FUNCTION_41_1(v6);
    if (v3)
    {
      OUTLINED_FUNCTION_49_0(v9, v10, v11, v12, v13, v14);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_40_2(v16 - 32);
      if (v2)
      {
LABEL_9:
        v17 = OUTLINED_FUNCTION_44_2();
        v1(v17);
        *(v0 + 16) = 0;
LABEL_12:

        OUTLINED_FUNCTION_64_1();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_33_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_12_1();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_3();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2311F911C(uint64_t result, int64_t a2, char a3, uint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD434D8, &qword_23136CA18);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * v11 - 64;
      if (v5)
      {
LABEL_13:
        sub_23126FA4C((a4 + 32), v8, (v10 + 32));
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

    memcpy((v10 + 32), (a4 + 32), v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_2311F9244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, uint64_t, char *))
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_1_0();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_12_1();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_49_0(a1, a2, a3, a4, a5, a6);
  v17 = a7(0);
  OUTLINED_FUNCTION_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_40_2(v23 - v21);
LABEL_18:
  v25 = a7(0);
  OUTLINED_FUNCTION_46_0(v25);
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_35_0();
  if (v11)
  {
    a8(a4 + v28, v15, &v22[v28]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t OUTLINED_FUNCTION_5_2()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_2@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 152) = v2;
  *(v3 - 144) = a1;
  *(v3 - 176) = v1;

  return sub_2311CF324(v3 - 176, v3 - 224);
}

__n128 OUTLINED_FUNCTION_50_3()
{
  result = *(v0 - 176);
  *(v0 - 224) = result;
  return result;
}

void OUTLINED_FUNCTION_51_1()
{
  v2 = *(v0 - 176);
  v1 = *(v0 - 168);
  v3 = *(v0 - 184);
}

uint64_t OUTLINED_FUNCTION_58_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_59_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_61_0()
{

  return sub_231368330();
}

uint64_t OUTLINED_FUNCTION_63_1()
{

  return swift_allocObject();
}

uint64_t sub_2311F9580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2311F96A8;

  return v11(a1, a2, a3);
}

uint64_t sub_2311F96A8()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  v3 = *(*v0 + 16);
  v6 = *v0;

  OUTLINED_FUNCTION_14();

  return v4(v2);
}

uint64_t sub_2311F97B4()
{
  v1 = v0[19];
  v2 = [objc_opt_self() sharedCategories];
  v0[20] = v2;
  v3 = sub_23136A190();
  v0[21] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2311F991C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43688, &qword_23136CC80);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2311F9CA0;
  v0[13] = &block_descriptor;
  v0[14] = v4;
  [v2 categoriesForBundleIDs:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2311F991C()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_2311F9C28;
  }

  else
  {
    v3 = sub_2311F9A28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2311F9A28()
{
  v1 = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43690, &qword_23136CC88);
  v2 = sub_23136A770();
  v3 = v2;
  v4 = 0;
  v6 = v1 + 64;
  v5 = *(v1 + 64);
  v32 = v2;
  v33 = v1;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v31 = v2 + 64;
  if ((v8 & v5) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v4 << 6);
      v15 = (*(v33 + 48) + 16 * v14);
      v16 = v15[1];
      v34 = *v15;
      v17 = *(*(v33 + 56) + 8 * v14);
      sub_231369EE0();
      v18 = v17;
      v19 = [v18 identifier];
      v20 = sub_231369FD0();
      v22 = v21;

      v3 = v32;
      *(v31 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v23 = (v32[6] + 16 * v14);
      *v23 = v34;
      v23[1] = v16;
      v24 = (v32[7] + 16 * v14);
      *v24 = v20;
      v24[1] = v22;
      v25 = v32[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        break;
      }

      v32[2] = v27;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v12 = v4;
    while (1)
    {
      v4 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v4 >= v10)
      {
        break;
      }

      v13 = *(v6 + 8 * v4);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    v28 = *(v30 + 168);

    OUTLINED_FUNCTION_14();

    v29(v3);
  }
}

uint64_t sub_2311F9C28()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[22];

  return v4();
}

uint64_t sub_2311F9CA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    return sub_2311F9D24(v4, a3);
  }

  sub_2311FA0A4();
  v6 = sub_231369E80();
  return sub_2311F9D90(v4, v6);
}

uint64_t sub_2311F9D24(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A0, &qword_23136CC90);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t sub_2311F9DD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311FA17C;

  return sub_2311F979C(a1);
}

uint64_t sub_2311F9E7C()
{
  OUTLINED_FUNCTION_8();
  sub_231369EC0();
  OUTLINED_FUNCTION_14();

  return v0();
}

uint64_t sub_2311F9F18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311F9FA4;

  return sub_2311F9E68();
}

uint64_t sub_2311F9FA4()
{
  OUTLINED_FUNCTION_8();
  v3 = v2;
  v4 = *(*v1 + 16);
  v8 = *v1;

  OUTLINED_FUNCTION_14();
  if (!v0)
  {
    v5 = v3;
  }

  return v6(v5);
}

unint64_t sub_2311FA0A4()
{
  result = qword_27DD43698;
  if (!qword_27DD43698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DD43698);
  }

  return result;
}

uint64_t sub_2311FA0E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2311FA128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2311FA180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2311FA2C0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_2311FA2C0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_56_0();

  return v2();
}

uint64_t sub_2311FA3B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2311FA3F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2311FA448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2313698C0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311FA524, 0, 0);
}

uint64_t sub_2311FA524()
{
  v53 = v0;
  v4 = v0[5];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_28_0();
  if ((sub_231368400() & 1) == 0)
  {
    v24 = v0[9];
    sub_2313690D0();
    v25 = sub_2313698A0();
    v26 = sub_23136A3A0();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v0[9];
    v29 = v0[6];
    v30 = v0[7];
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2311CB000, v25, v26, "InApp FeatureFlag is not enabled. Not donating to Tips.Event", v31, 2u);
      OUTLINED_FUNCTION_29();
    }

    v32 = *(v30 + 8);
    v33 = OUTLINED_FUNCTION_28_0();
    v34(v33);
LABEL_9:
    v36 = v0[9];
    v35 = v0[10];
    v37 = v0[8];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];
  v51 = sub_231367310();
  v52 = v9;
  sub_231369EE0();
  MEMORY[0x23192A730](v8, v6);

  v10 = v52;
  v0[11] = v51;
  v0[12] = v10;
  v11 = *(v7 + 16);
  v0[13] = v11;
  if (!v11)
  {

    goto LABEL_9;
  }

  v12 = v0[4];
  v0[14] = sub_231366B90();
  v0[15] = 0;
  v13 = v0[10];
  v0[16] = *(v12 + 32);
  v0[17] = *(v12 + 40);
  sub_231369EE0();
  sub_2313690D0();
  sub_231369EE0();
  sub_231369EE0();
  v14 = sub_2313698A0();
  v15 = sub_23136A3A0();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_6_2();
    v49 = v16;
    v50 = v17;
    OUTLINED_FUNCTION_45();
    v51 = OUTLINED_FUNCTION_10_3();
    *v1 = 136315394;
    v18 = sub_2311CFD58(v3, v2, &v51);
    OUTLINED_FUNCTION_7_1(v18);
    v19 = OUTLINED_FUNCTION_28_0();
    *(v1 + 14) = sub_2311CFD58(v19, v20, v21);
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v22, v23, "Donating tip event %s to %s");
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    v14 = *(v7 + 8);
    (v14)(v50, v49);
  }

  else
  {
    v40 = v0[10];
    v41 = v0[6];
    v42 = v0[7];

    v43 = OUTLINED_FUNCTION_5_3();
    (v14)(v43);
  }

  v0[18] = v14;
  v44 = *(MEMORY[0x277D71588] + 4);
  v45 = swift_task_alloc();
  v0[19] = v45;
  *v45 = v0;
  OUTLINED_FUNCTION_0_7(v45);
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821D93C0](v46);
}

uint64_t sub_2311FA81C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_2311FAB30;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_2311FA938;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2311FA938()
{
  v34 = v0;
  OUTLINED_FUNCTION_13_3();
  if (v6)
  {
    v7 = v0[12];

    v9 = v0[9];
    v8 = v0[10];
    v10 = v0[8];

    OUTLINED_FUNCTION_56_0();

    return v11();
  }

  else
  {
    OUTLINED_FUNCTION_1_9(v5);
    sub_2313690D0();
    sub_231369EE0();
    sub_231369EE0();
    v13 = sub_2313698A0();
    v14 = sub_23136A3A0();

    if (os_log_type_enabled(v13, v14))
    {
      OUTLINED_FUNCTION_6_2();
      v31 = v16;
      v32 = v17;
      OUTLINED_FUNCTION_45();
      v33 = OUTLINED_FUNCTION_10_3();
      *v2 = 136315394;
      v18 = sub_2311CFD58(v4, v3, &v33);
      OUTLINED_FUNCTION_7_1(v18);
      v19 = OUTLINED_FUNCTION_28_0();
      *(v2 + 14) = sub_2311CFD58(v19, v20, v21);
      OUTLINED_FUNCTION_2_4(&dword_2311CB000, v22, v23, "Donating tip event %s to %s");
      OUTLINED_FUNCTION_11_3();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      v13 = *(v1 + 8);
      (v13)(v32, v31);
    }

    else
    {
      v24 = v0[10];
      v25 = v0[6];
      v26 = v0[7];

      v27 = OUTLINED_FUNCTION_5_3();
      (v13)(v27);
    }

    v0[18] = v13;
    v28 = *(MEMORY[0x277D71588] + 4);
    v29 = swift_task_alloc();
    v0[19] = v29;
    *v29 = v0;
    v30 = OUTLINED_FUNCTION_0_7();

    return MEMORY[0x2821D93C0](v30);
  }
}

uint64_t sub_2311FAB30()
{
  v56 = v0;
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[8];
  sub_2313690D0();
  sub_231369EE0();
  v5 = v2;
  v6 = sub_2313698A0();
  v7 = sub_23136A3A0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[20];
  v11 = v0[17];
  v10 = v0[18];
  if (v8)
  {
    v12 = v0[16];
    v53 = v0[8];
    v50 = v0[7] + 8;
    v51 = v0[6];
    v13 = OUTLINED_FUNCTION_45();
    v1 = swift_slowAlloc();
    v49 = v10;
    v10 = swift_slowAlloc();
    v55 = v10;
    *v13 = 136315394;
    v14 = sub_2311CFD58(v12, v11, &v55);

    *(v13 + 4) = v14;
    *(v13 + 12) = 2112;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v16;
    *v1 = v16;
    _os_log_impl(&dword_2311CB000, v6, v7, "Could not donate tip event to %s. Error: %@", v13, 0x16u);
    sub_2311F4E78(v1);
    OUTLINED_FUNCTION_29();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_24();
    OUTLINED_FUNCTION_29();

    (v49)(v53, v51);
  }

  else
  {
    v18 = v0[7];
    v17 = v0[8];
    v19 = v0[6];
    v20 = v0[17];

    v7 = v18 + 8;

    (v10)(v17, v19);
  }

  OUTLINED_FUNCTION_13_3();
  if (v22)
  {
    v23 = v0[12];

    v25 = v0[9];
    v24 = v0[10];
    v26 = v0[8];

    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_8_4();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_1_9(v21);
  sub_2313690D0();
  sub_231369EE0();
  sub_231369EE0();
  v29 = sub_2313698A0();
  v30 = sub_23136A3A0();

  if (os_log_type_enabled(v29, v30))
  {
    OUTLINED_FUNCTION_6_2();
    v52 = v32;
    v54 = v33;
    OUTLINED_FUNCTION_45();
    v55 = OUTLINED_FUNCTION_10_3();
    *v10 = 136315394;
    v34 = sub_2311CFD58(v11, v1, &v55);
    OUTLINED_FUNCTION_7_1(v34);
    v35 = OUTLINED_FUNCTION_28_0();
    *(v10 + 14) = sub_2311CFD58(v35, v36, v37);
    OUTLINED_FUNCTION_2_4(&dword_2311CB000, v38, v39, "Donating tip event %s to %s");
    OUTLINED_FUNCTION_11_3();
    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_24();

    v29 = *(v7 + 8);
    (v29)(v54, v52);
  }

  else
  {
    v40 = v0[10];
    v41 = v0[6];
    v42 = v0[7];

    v43 = OUTLINED_FUNCTION_5_3();
    (v29)(v43);
  }

  v0[18] = v29;
  v44 = *(MEMORY[0x277D71588] + 4);
  v45 = swift_task_alloc();
  v0[19] = v45;
  *v45 = v0;
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821D93C0](v46);
}

uint64_t dispatch thunk of OwnerDefinitionProvider.ownerDefinitionsAvailable()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2311DDECC;

  return v9(a1, a2);
}

uint64_t sub_2311FAFF8()
{
  v1 = *(v0 + 16);
  if (*(v1 + 112) == 1)
  {
    v2 = *(v1 + 152);
    v3 = *(v1 + 160);
    __swift_project_boxed_opaque_existential_1((v1 + 128), v2);
    OUTLINED_FUNCTION_1_6();
    v12 = (v4 + *v4);
    v6 = *(v5 + 4);
    v7 = swift_task_alloc();
    *(v0 + 24) = v7;
    *v7 = v0;
    v7[1] = sub_2311FB158;

    return v12(v2, v3);
  }

  else
  {
    v9 = *(v1 + 120);
    OUTLINED_FUNCTION_14();
    v13 = v10;
    v11 = sub_231369EE0();

    return v13(v11);
  }
}

uint64_t sub_2311FB158()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 32) = v6;

  return MEMORY[0x2822009F8](sub_2311FB260, v3, 0);
}

uint64_t sub_2311FB260()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 16);
  v2 = *(v1 + 120);
  *(v1 + 120) = *(v0 + 32);

  *(v1 + 112) = 0;
  v3 = *(*(v0 + 16) + 120);
  OUTLINED_FUNCTION_14();
  v7 = v4;
  v5 = sub_231369EE0();

  return v7(v5);
}

uint64_t sub_2311FB2DC()
{
  v1 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2311FB30C()
{
  sub_2311FB2DC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2311FB35C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_2311FAFDC();
}

void sub_2311FB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  v15 = v14[2];
  v16 = v15[2];
  v17 = MEMORY[0x277D84F90];
  v14[4] = 0;
  v14[5] = v17;
  v14[3] = v16;
  if (v16)
  {
    v18 = v15[8];
    __swift_project_boxed_opaque_existential_1(v15 + 4, v15[7]);
    OUTLINED_FUNCTION_1_6();
    a11 = v19 + *v19;
    v21 = *(v20 + 4);
    v22 = swift_task_alloc();
    v14[6] = v22;
    *v22 = v14;
    OUTLINED_FUNCTION_2_5(v22);
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v31 = 0;
    v32 = *(v17 + 16);
    v33 = v17;
    while (v32 != v31)
    {
      if (v31 >= *(v17 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v34 = v17 + 8 * v31;
      v35 = *(v34 + 32);
      v36 = *(v35 + 16);
      v37 = *(v33 + 16);
      if (__OFADD__(v37, v36))
      {
        goto LABEL_23;
      }

      v38 = *(v34 + 32);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v37 + v36 > *(v33 + 24) >> 1)
      {
        sub_23126DD88();
        v33 = v39;
      }

      if (*(v35 + 16))
      {
        if ((*(v33 + 24) >> 1) - *(v33 + 16) < v36)
        {
          goto LABEL_25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
        swift_arrayInitWithCopy();

        if (v36)
        {
          v40 = *(v33 + 16);
          v41 = __OFADD__(v40, v36);
          v42 = v40 + v36;
          if (v41)
          {
            goto LABEL_26;
          }

          *(v33 + 16) = v42;
        }
      }

      else
      {

        if (v36)
        {
          goto LABEL_24;
        }
      }

      ++v31;
    }

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();
  }

  v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2311FB658()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v3 = *(v1 + 48);
  v9 = *v0;
  *(v2 + 56) = v4;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2311FB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_1();
  v15 = v14[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v14[5];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_30:
    v49 = *(v17 + 16);
    sub_23126DDAC();
    v17 = v50;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_23126DDAC();
    v17 = v51;
  }

  v19 = v14[7];
  *(v17 + 16) = v18 + 1;
  *(v17 + 8 * v18 + 32) = v19;
  v20 = v14[3];
  v21 = v14[4] + 1;
  v14[4] = v21;
  v14[5] = v17;
  if (v21 == v20)
  {
    v22 = 0;
    v23 = MEMORY[0x277D84F90];
    v24 = *(v17 + 16);
    while (v24 != v22)
    {
      if (v22 >= *(v17 + 16))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v25 = v17 + 8 * v22;
      v26 = *(v25 + 32);
      v27 = *(v26 + 16);
      v28 = *(v23 + 16);
      if (__OFADD__(v28, v27))
      {
        goto LABEL_26;
      }

      v29 = *(v25 + 32);
      sub_231369EE0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v28 + v27 > *(v23 + 24) >> 1)
      {
        sub_23126DD88();
        v23 = v30;
      }

      if (*(v26 + 16))
      {
        if ((*(v23 + 24) >> 1) - *(v23 + 16) < v27)
        {
          goto LABEL_28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
        swift_arrayInitWithCopy();

        if (v27)
        {
          v31 = *(v23 + 16);
          v32 = __OFADD__(v31, v27);
          v33 = v31 + v27;
          if (v32)
          {
            goto LABEL_29;
          }

          *(v23 + 16) = v33;
        }
      }

      else
      {

        if (v27)
        {
          goto LABEL_27;
        }
      }

      ++v22;
    }

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();
  }

  else
  {
    v34 = (v14[2] + 40 * v21);
    v35 = v34[8];
    __swift_project_boxed_opaque_existential_1(v34 + 4, v34[7]);
    OUTLINED_FUNCTION_1_6();
    a11 = v36 + *v36;
    v38 = *(v37 + 4);
    v39 = swift_task_alloc();
    v14[6] = v39;
    *v39 = v14;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_7();
  }

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2311FBA08()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_2311FB3EC(v2);
}

uint64_t sub_2311FBA9C(uint64_t *a1)
{
  v2 = v1;
  sub_2311CF324(a1, v1 + 56);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = *(v4 + 8);
  sub_231367AD0();
  sub_2311D38A8(&v7, v2 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v2;
}

uint64_t sub_2311FBB14@<X0>(uint64_t *a1@<X8>)
{
  sub_2311CF324(v1 + 56, v6);
  locked = type metadata accessor for OwnerLockedSourceGenerator();
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  sub_2311FC70C(v6, MEMORY[0x277D60C68], sub_2311E6A28);
  a1[3] = locked;
  result = sub_2311FD9D4(&qword_280F7FB00, type metadata accessor for OwnerLockedSourceGenerator);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_2311FBBD4@<X0>(uint64_t *a1@<X8>)
{
  sub_2311CF324(v1 + 56, v6);
  locked = type metadata accessor for OwnerLockedTargetDefinition();
  OUTLINED_FUNCTION_20();
  v4 = swift_allocObject();
  sub_2311FC70C(v6, MEMORY[0x277D60C60], sub_2311E6A28);
  a1[3] = locked;
  result = sub_2311FD9D4(&qword_280F7F368, type metadata accessor for OwnerLockedTargetDefinition);
  a1[4] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_2311FBCB4()
{
  v1 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v2 = *(v1 + 16);
  OUTLINED_FUNCTION_38();
  return sub_231369510();
}

uint64_t sub_2311FBCFC()
{
  v1 = v0;
  sub_23136A650();
  MEMORY[0x23192A730](0x203A72656E774FLL, 0xE700000000000000);
  v2 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v3 = *(v2 + 16);
  sub_23136A8D0();
  MEMORY[0x23192A730](0x696E69666564202CLL, 0xEE00203A6E6F6974);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD435A0, &qword_23136CAE0);
  sub_23136A6F0();
  return 0;
}

uint64_t sub_2311FBEC0()
{
  v1 = v0;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v3);
  v4 = *(v2 + 16);
  sub_23136A8D0();
  MEMORY[0x23192A730](35, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436A8, &qword_23136D1D8);
  sub_23136A6F0();
  return 0;
}

uint64_t sub_2311FBF8C()
{
  OUTLINED_FUNCTION_8();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v5 = sub_2313698C0();
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2311FC050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_1();
  a21 = v24;
  a22 = v25;
  a20 = v22;
  v26 = v22[30];
  v27 = v22[27];
  v28 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v29 = *(v28 + 8);
  sub_231367AD0();
  OUTLINED_FUNCTION_12_2();
  v30 = OUTLINED_FUNCTION_15_3();
  __swift_destroy_boxed_opaque_existential_1Tm(v22 + 2);
  v31 = v22[30];
  v32 = v22[27];
  if (v30)
  {
    v33 = v22[34];
    sub_231369170();
    sub_2311CF324(v32, (v22 + 17));

    v34 = sub_2313698A0();
    v35 = sub_23136A3A0();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v22[34];
    v39 = v22[31];
    v38 = v22[32];
    if (v36)
    {
      OUTLINED_FUNCTION_25_3();
      a11 = OUTLINED_FUNCTION_16_2();
      *v23 = 136315394;
      a9 = v37;
      v40 = v22[21];
      __swift_project_boxed_opaque_existential_1(v22 + 17, v22[20]);
      v41 = *(v40 + 8);
      OUTLINED_FUNCTION_5_4();
      sub_231367AD0();
      v42 = v22[26];
      __swift_project_boxed_opaque_existential_1(v22 + 22, v22[25]);
      v43 = *(v42 + 16);
      OUTLINED_FUNCTION_5_4();
      sub_23136A8B0();
      OUTLINED_FUNCTION_21_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 22);
      v44 = __swift_destroy_boxed_opaque_existential_1Tm(v22 + 17);
      OUTLINED_FUNCTION_27_3(v44, v45, &a11);
      OUTLINED_FUNCTION_5_4();

      OUTLINED_FUNCTION_11_4();
      v46 = *(v39 + 88);
      __swift_project_boxed_opaque_existential_1((v26 + 56), *(v39 + 80));
      v47 = *(v46 + 16);
      OUTLINED_FUNCTION_5_4();
      v48 = sub_23136A8B0();
      v50 = sub_2311CFD58(v48, v49, &a11);

      *(v23 + 14) = v50;
      OUTLINED_FUNCTION_18_6(&dword_2311CB000, v51, v35, "owner OK. %s == %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v38 + 8))(a9, a10);
    }

    else
    {

      (*(v38 + 8))(v37, v39);
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 17);
    }

    v71 = v22[30];
    v72 = v71[5];
    v73 = v71[6];
    OUTLINED_FUNCTION_3_2(v71 + 2);
    v74 = *(v73 + 8);
    v75 = *(MEMORY[0x277D60D88] + 4);
    v76 = swift_task_alloc();
    v22[35] = v76;
    *v76 = v22;
    v76[1] = sub_2311FC4C4;
    v77 = v22[28];
    v78 = v22[29];
    v79 = v22[27];
    OUTLINED_FUNCTION_7();

    return MEMORY[0x2821C6CE8](v80, v81, v82, v83, v84, v85, v86, v87, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v52 = v22[33];
    sub_231369170();
    sub_2311CF324(v32, (v22 + 7));

    v53 = sub_2313698A0();
    v54 = sub_23136A3A0();

    v55 = os_log_type_enabled(v53, v54);
    v57 = v22[32];
    v56 = v22[33];
    v58 = v22[31];
    if (v55)
    {
      OUTLINED_FUNCTION_25_3();
      a11 = OUTLINED_FUNCTION_16_2();
      *v23 = 136315394;
      a9 = v56;
      v59 = v22[11];
      __swift_project_boxed_opaque_existential_1(v22 + 7, v22[10]);
      v60 = *(v59 + 8);
      OUTLINED_FUNCTION_5_4();
      sub_231367AD0();
      v61 = v22[16];
      __swift_project_boxed_opaque_existential_1(v22 + 12, v22[15]);
      v62 = *(v61 + 16);
      OUTLINED_FUNCTION_5_4();
      sub_23136A8B0();
      OUTLINED_FUNCTION_21_4();
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 12);
      v63 = __swift_destroy_boxed_opaque_existential_1Tm(v22 + 7);
      OUTLINED_FUNCTION_27_3(v63, v64, &a11);
      OUTLINED_FUNCTION_5_4();

      OUTLINED_FUNCTION_11_4();
      v65 = *(v58 + 88);
      __swift_project_boxed_opaque_existential_1((v26 + 56), *(v58 + 80));
      v66 = *(v65 + 16);
      OUTLINED_FUNCTION_5_4();
      v67 = sub_23136A8B0();
      v69 = sub_2311CFD58(v67, v68, &a11);

      *(v23 + 14) = v69;
      OUTLINED_FUNCTION_18_6(&dword_2311CB000, v70, v54, "owner Not OK. %s != %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v57 + 8))(a9, a10);
    }

    else
    {

      (*(v57 + 8))(v56, v58);
      __swift_destroy_boxed_opaque_existential_1Tm(v22 + 7);
    }

    v89 = v22[33];
    v88 = v22[34];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_7();

    return v92(v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2311FC4C4()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v1 + 272);
  v6 = *(v1 + 264);

  v7 = OUTLINED_FUNCTION_23_1();

  return v8(v7);
}

uint64_t sub_2311FC630()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311E6A24;

  return sub_2311FBF8C();
}

uint64_t sub_2311FC70C(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t), void (*a3)(__int128 *, uint64_t))
{
  v6 = v3;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  a2(v13, v8, v9);
  a3(v13, v3 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = *(v10 + 8);
  sub_231367AD0();
  sub_2311D38A8(v13, v6 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t sub_2311FC7C8()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_38();
  return sub_231368710();
}

uint64_t sub_2311FC804()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_38();
  v1 = sub_231368730();
  v2 = *(v1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    sub_2311F59D0(0, v2, 0);
    v3 = v15;
    v4 = v1 + 32;
    do
    {
      sub_2311CF324(v4, &v12);
      sub_2311CF324(&v12, v11);
      sub_2311CF324(v0 + 56, v10);
      locked = type metadata accessor for OwnerLockedResolver();
      v6 = swift_allocObject();
      sub_2311FCC54(v11, v10);
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2311F59D0(v7 > 1, v8 + 1, 1);
        v3 = v15;
      }

      v13 = locked;
      v14 = sub_2311FD9D4(&qword_280F82AF0, type metadata accessor for OwnerLockedResolver);
      *&v12 = v6;
      *(v3 + 16) = v8 + 1;
      sub_2311D38A8(&v12, v3 + 40 * v8 + 32);
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2311FC9A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  OUTLINED_FUNCTION_26_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436B0, &qword_23137A4E0);
  locked = sub_231368620();
  if (swift_dynamicCast())
  {

    v6 = sub_231368610();
    result = MEMORY[0x277D60FE8];
  }

  else
  {
    v8 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
    OUTLINED_FUNCTION_26_4();
    sub_2311CF324((v2 + 7), v9);
    locked = type metadata accessor for OwnerLockedFilter();
    OUTLINED_FUNCTION_20();
    v6 = swift_allocObject();
    sub_2311D38A8(&v10, v6 + 16);
    sub_2311D38A8(v9, v6 + 56);
    result = sub_2311FD9D4(qword_280F83850, type metadata accessor for OwnerLockedFilter);
  }

  a1[3] = locked;
  a1[4] = result;
  *a1 = v6;
  return result;
}

unint64_t sub_2311FCBB0()
{
  v3[0] = 0;
  v3[1] = 0xE000000000000000;
  sub_23136A650();

  v4 = 0xD000000000000015;
  v5 = 0x800000023137C8A0;
  sub_2311CF324(v0 + 16, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43428, &unk_23136C940);
  v1 = sub_23136A010();
  MEMORY[0x23192A730](v1);

  return v4;
}

uint64_t sub_2311FCC54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_2311CF324(a1, v2 + 16);
  sub_2311CF324(a2, v2 + 56);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = *(v6 + 8);
  v8 = sub_231367F20();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v3 + 96) = v8;
  *(v3 + 104) = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v3;
}

uint64_t sub_2311FCCE0()
{
  OUTLINED_FUNCTION_8();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v1[17] = v5;
  v6 = sub_2313698C0();
  v1[22] = v6;
  v7 = *(v6 - 8);
  v1[23] = v7;
  v8 = *(v7 + 64) + 15;
  v1[24] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2311FCD9C()
{
  v52 = v0;
  v1 = v0[21];
  v2 = v0[18];
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_3_2(v2);
  sub_2313682A0();
  sub_2313676D0();

  OUTLINED_FUNCTION_12_2();
  v5 = OUTLINED_FUNCTION_15_3();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v5)
  {
    v6 = v0[21];
    v7 = v6[5];
    v8 = v6[6];
    OUTLINED_FUNCTION_3_2(v6 + 2);
    v9 = *(v8 + 8);
    v10 = *(MEMORY[0x277D60D28] + 4);
    v11 = swift_task_alloc();
    v0[25] = v11;
    *v11 = v0;
    v11[1] = sub_2311FD1AC;
    v12 = v0[19];
    v13 = v0[20];
    v15 = v0[17];
    v14 = v0[18];

    return MEMORY[0x2821C6C38](v15, v14, v12, v13, v7, v9);
  }

  else
  {
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[18];
    sub_231369160();
    sub_2311CF324(v18, (v0 + 7));

    v19 = sub_2313698A0();
    v20 = sub_23136A3A0();

    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[22];
    if (v21)
    {
      v48 = v0[21];
      swift_slowAlloc();
      v51 = OUTLINED_FUNCTION_16_2();
      *v20 = 136315394;
      v25 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v50 = v22;
      OUTLINED_FUNCTION_5_4();
      sub_2313682A0();
      sub_2313676D0();

      v26 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      OUTLINED_FUNCTION_13_4();
      v49 = v24;
      v28 = v27;
      v30 = *(v29 + 64) + 15;
      swift_task_alloc();
      (*(v28 + 16))();
      v31 = *(v26 + 16);
      sub_23136A020();
      OUTLINED_FUNCTION_21_4();

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
      v32 = __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
      OUTLINED_FUNCTION_27_3(v32, v33, &v51);
      OUTLINED_FUNCTION_5_4();

      OUTLINED_FUNCTION_11_4();
      v34 = *(v48 + 80);
      v35 = *(v48 + 88);
      __swift_project_boxed_opaque_existential_1((v1 + 56), v34);
      OUTLINED_FUNCTION_13_4();
      v37 = v36;
      v39 = *(v38 + 64) + 15;
      swift_task_alloc();
      (*(v37 + 16))();
      v40 = *(v35 + 16);
      sub_23136A020();
      OUTLINED_FUNCTION_21_4();

      OUTLINED_FUNCTION_27_3(v41, v42, &v51);
      OUTLINED_FUNCTION_5_4();

      *(v20 + 14) = v34;
      OUTLINED_FUNCTION_18_6(&dword_2311CB000, v43, v20, "Not resolving as parameter as they are of different owners. %s != %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v23 + 8))(v50, v49);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    }

    v44 = v0[24];

    OUTLINED_FUNCTION_14();
    v46 = MEMORY[0x277D84F90];

    return v45(v46);
  }
}

uint64_t sub_2311FD1AC()
{
  OUTLINED_FUNCTION_26();
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v1 + 192);

  v6 = OUTLINED_FUNCTION_23_1();

  return v7(v6);
}

uint64_t sub_2311FD2B8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = *(*(v0 + 8) + 8);
  OUTLINED_FUNCTION_38();
  return sub_231369510();
}

uint64_t *sub_2311FD2F8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  return v0;
}

uint64_t sub_2311FD328()
{
  sub_2311FD2F8();

  return swift_deallocClassInstance();
}

uint64_t sub_2311FD3A4()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 104);
  sub_231369EE0();
  return v1;
}

uint64_t sub_2311FD3D8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2311DDECC;

  return sub_2311FCCE0();
}

uint64_t sub_2311FD498(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_8_5(sub_2311FD4B8, 0);
}

uint64_t sub_2311FD4B8()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[9];
  v2 = v0[7];
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_3_2(v2);
  sub_2313682A0();
  sub_2313676D0();

  OUTLINED_FUNCTION_12_2();
  v5 = OUTLINED_FUNCTION_15_3();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  if (v5)
  {
    v6 = v0[9];
    v7 = v6[5];
    v8 = v6[6];
    OUTLINED_FUNCTION_3_2(v6 + 2);
    v9 = *(MEMORY[0x277D60D60] + 4);
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_2311FD5EC;
    v12 = v0[7];
    v11 = v0[8];

    return MEMORY[0x2821C6CA0](v12, v11, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_14();

    return v13(1);
  }
}

uint64_t sub_2311FD5EC()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 80);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t sub_2311FD6D4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_2311FD734(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2311DDECC;

  return sub_2311FD498(a1, a2);
}

uint64_t sub_2311FD9D4(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_2311FDA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  swift_defaultActor_initialize();
  *(a2 + 112) = 1;
  *(a2 + 120) = MEMORY[0x277D84F90];
  sub_2311D38A8(&v9, a2 + 128);
  return a2;
}

void OUTLINED_FUNCTION_18_6(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_26_4()
{

  return sub_231368720();
}

uint64_t sub_2311FDB48()
{
  sub_23136A650();
  MEMORY[0x23192A730](0xD000000000000014, 0x800000023137C9B0);
  v28 = v0[2];
  type metadata accessor for GenerationService();

  OUTLINED_FUNCTION_49_1(v1, v2, v3, v4, v5, v6, v7, v8, v25, v28);
  sub_231367E30();

  OUTLINED_FUNCTION_61_1();

  MEMORY[0x23192A730](0xD000000000000015, 0x800000023137C9D0);
  v29 = v0[3];
  type metadata accessor for ResolutionService();

  OUTLINED_FUNCTION_49_1(v9, v10, v11, v12, v13, v14, v15, v16, v26, v29);
  sub_231367E30();

  OUTLINED_FUNCTION_61_1();

  MEMORY[0x23192A730](0x7A696C616E69660ALL, 0xEE000A203A737265);
  v30 = v0[4];
  sub_231369EE0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436B8, &qword_23136D350);
  OUTLINED_FUNCTION_49_1(v17, v18, v19, v17, v20, v21, v22, v23, v27, v30);
  sub_231367E30();

  OUTLINED_FUNCTION_61_1();

  return 0;
}

uint64_t sub_2311FDCE0()
{
  OUTLINED_FUNCTION_26();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_2311FDD88;
  v3 = OUTLINED_FUNCTION_64();

  return sub_2311FDE78(v3, v4);
}

uint64_t sub_2311FDD88()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311FDE78(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_2313698C0();
  v3[14] = v4;
  v5 = *(v4 - 8);
  v3[15] = v5;
  v6 = *(v5 + 64) + 15;
  v3[16] = swift_task_alloc();
  v7 = sub_231367C70();
  v3[17] = v7;
  v8 = *(v7 - 8);
  v3[18] = v8;
  v9 = *(v8 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v10 = sub_2313667A0();
  v3[23] = v10;
  v11 = *(v10 - 8);
  v3[24] = v11;
  v12 = *(v11 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v13 = sub_231366EA0();
  v3[30] = v13;
  v14 = *(v13 - 8);
  v3[31] = v14;
  v15 = *(v14 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2311FE0C8, 0, 0);
}

uint64_t sub_2311FE0C8()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 176);
  v6 = *(v0 + 104);
  v7 = v6[34];
  v31 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(v6 + 30, v6[33]);
  v8 = *MEMORY[0x277D60610];
  v9 = *(v3 + 104);
  *(v0 + 288) = v9;
  *(v0 + 296) = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v9(v1, v8, v2);
  v10 = *(v31 + 32);
  __swift_project_boxed_opaque_existential_1(v31, *(v31 + 24));
  OUTLINED_FUNCTION_53_3();
  sub_2313677C0();
  v11 = *(v31 + 24);
  v12 = *(v31 + 32);
  v13 = OUTLINED_FUNCTION_54_0();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_2313677D0();
  v15 = swift_task_alloc();
  *(v0 + 304) = v15;
  *(v15 + 16) = v6;
  *(v15 + 24) = v31;
  v16 = *(MEMORY[0x277D605F8] + 4);
  v17 = swift_task_alloc();
  *(v0 + 312) = v17;
  *(v0 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C0, &qword_23136D378);
  *v17 = v0;
  v17[1] = sub_2311FE280;
  v18 = *(v0 + 280);
  v19 = *(v0 + 232);
  v20 = *(v0 + 176);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_7();

  return MEMORY[0x2821C6088](v21, v22, v23, v24, v25, v26, v27, v28);
}

void sub_2311FE280()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 312);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_40();
  }

  else
  {
    v11 = v3[38];
    v28 = v3[35];
    v12 = v3[30];
    v13 = v3[31];
    v14 = v3[29];
    v15 = v3[23];
    v16 = v3[24];
    v17 = v3[22];
    v19 = v3[17];
    v18 = v3[18];

    v20 = *(v18 + 8);
    v3[41] = v20;
    v3[42] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v17, v19);
    v3[43] = *(v16 + 8);
    v3[44] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21 = OUTLINED_FUNCTION_54_0();
    v22(v21);
    v23 = *(v13 + 8);
    v3[45] = v23;
    v3[46] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v23(v28, v12);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_40();

    MEMORY[0x2822009F8](v24, v25, v26);
  }
}

uint64_t sub_2311FE424()
{
  v26 = *(v0 + 288);
  v27 = *(v0 + 296);
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v28 = *(v0 + 224);
  v31 = *(v0 + 168);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 56);
  v29 = *(v0 + 88);
  v8 = *(v0 + 88);
  *(v0 + 376) = v7;
  sub_2313690F0();
  *(v0 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD432E8, &qword_23136D380);
  OUTLINED_FUNCTION_74_1();
  *(v0 + 392) = *(v4 + 8);
  *(v0 + 400) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = OUTLINED_FUNCTION_67_0();
  v10(v9);
  v11 = *(v5 + 264);
  __swift_project_boxed_opaque_existential_1((v5 + 240), v11);
  v26(v1, *MEMORY[0x277D60618], v2);
  v12 = v8[3];
  v13 = v8[4];
  v14 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_2313677C0();
  v16 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2313677D0();
  v17 = swift_task_alloc();
  *(v0 + 408) = v17;
  *(v17 + 16) = v5;
  *(v17 + 24) = v7;
  *(v17 + 32) = v29;
  v18 = *(MEMORY[0x277D605F8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 416) = v19;
  *v19 = v20;
  v19[1] = sub_2311FE65C;
  v21 = *(v0 + 320);
  v22 = *(v0 + 272);
  v23 = *(v0 + 224);
  v24 = *(v0 + 168);

  return MEMORY[0x2821C6088](v0 + 64, v22, v23, v24, &unk_23136D390, v17, v21, v11);
}

void sub_2311FE65C()
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  *v4 = v3;
  v6 = *(v5 + 416);
  v7 = *v1;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_8_4();
  }

  else
  {
    v11 = v3[51];
    v12 = v3[47];
    v30 = v3[45];
    v31 = v3[46];
    v13 = v3[42];
    v28 = v3[43];
    v29 = v3[44];
    v14 = v3[41];
    v15 = v3[34];
    v16 = v3[30];
    v17 = v3[28];
    v18 = v3[23];
    v19 = v3[21];
    v20 = v3[17];

    v14(v19, v20);
    v21 = OUTLINED_FUNCTION_48_1();
    v22(v21);
    v23 = OUTLINED_FUNCTION_26_1();
    v30(v23);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8_4();

    MEMORY[0x2822009F8](v24, v25, v26);
  }
}

uint64_t sub_2311FE7D0()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 384);
  v26 = *(v0 + 288);
  v27 = *(v0 + 296);
  v24 = *(v0 + 264);
  v25 = *(v0 + 240);
  v28 = *(v0 + 216);
  v29 = *(v0 + 160);
  v4 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 64);
  v30 = *(v0 + 88);
  v8 = *(v0 + 88);
  *(v0 + 424) = v7;
  sub_2313690F0();
  sub_231369850();
  v2(v4, v5);
  v9 = v6[34];
  __swift_project_boxed_opaque_existential_1(v6 + 30, v6[33]);
  v26(v24, *MEMORY[0x277D60630], v25);
  v10 = v8[3];
  v11 = v8[4];
  v12 = OUTLINED_FUNCTION_53_3();
  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_2313677C0();
  v14 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2313677D0();
  v15 = swift_task_alloc();
  *(v0 + 432) = v15;
  v15[1].i64[0] = v6;
  v15[1].i64[1] = v7;
  v15[2] = vextq_s8(v30, v30, 8uLL);
  v16 = *(MEMORY[0x277D605F8] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v0 + 440) = v17;
  *v17 = v18;
  v17[1] = sub_2311FE9E8;
  v19 = *(v0 + 320);
  v20 = *(v0 + 264);
  v21 = *(v0 + 216);
  v22 = *(v0 + 160);
  OUTLINED_FUNCTION_45_0();

  return MEMORY[0x2821C6088]();
}

void sub_2311FE9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  *v17 = v16;
  v19 = *(v18 + 440);
  v20 = *v13;
  OUTLINED_FUNCTION_2();
  *v21 = v20;

  if (v12)
  {
    OUTLINED_FUNCTION_8_4();
  }

  else
  {
    v24 = v16[53];
    v25 = v16[54];
    OUTLINED_FUNCTION_52_2();
    v26 = v16[33];
    v27 = v16[30];
    v28 = v16[27];
    v29 = v16[23];
    v30 = v16[20];
    v31 = v16[17];

    v14(v30, v31);
    v32 = OUTLINED_FUNCTION_48_1();
    v33(v32);
    v34 = OUTLINED_FUNCTION_26_1();
    a12(v34);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8_4();

    MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_2311FEB48()
{
  OUTLINED_FUNCTION_26();
  v1 = v0[26];
  v2 = v0[11];
  v3 = v0[9];
  v0[56] = v3;
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_26_1();
  sub_2313677C0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[57] = v5;
  *v5 = v6;
  v5[1] = sub_2311FEC14;
  v7 = v0[26];
  v8 = v0[12];
  v9 = v0[13];

  return sub_231201F60((v0 + 2), v3, v7, v8);
}

uint64_t sub_2311FEC14()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_12();
  v2 = v1[57];
  v3 = v1[44];
  v4 = v1[43];
  v5 = v1[26];
  v6 = v1[23];
  v7 = *v0;
  OUTLINED_FUNCTION_2();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_27();
  v4(v9);
  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311FED58()
{
  OUTLINED_FUNCTION_31_2();
  v26 = *(v0 + 448);
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 152);
  v7 = *(v0 + 104);
  v27 = v7[34];
  v25 = *(v0 + 88);
  v8 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(v7 + 30, v7[33]);
  v1(v3, *MEMORY[0x277D60628], v4);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = OUTLINED_FUNCTION_66_1();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_2313677C0();
  v13 = *(v8 + 24);
  v14 = *(v8 + 32);
  v15 = OUTLINED_FUNCTION_66_1();
  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_54_0();
  sub_2313677D0();
  v17 = swift_task_alloc();
  *(v0 + 464) = v17;
  *(v17 + 16) = v7;
  *(v17 + 24) = v26;
  *(v17 + 32) = v25;
  *(v17 + 48) = v0 + 16;
  v18 = *(MEMORY[0x277D605F8] + 4);
  v19 = swift_task_alloc();
  *(v0 + 472) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436C8, &qword_23136D3C0);
  *v19 = v0;
  v19[1] = sub_2311FEF08;
  v20 = *(v0 + 256);
  v21 = *(v0 + 200);
  v22 = *(v0 + 152);
  OUTLINED_FUNCTION_45_0();
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C6088]();
}

void sub_2311FEF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t))
{
  OUTLINED_FUNCTION_29_1();
  OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_12();
  v16 = v15;
  OUTLINED_FUNCTION_9();
  *v17 = v16;
  v19 = *(v18 + 472);
  v20 = *v13;
  OUTLINED_FUNCTION_2();
  *v21 = v20;

  if (v12)
  {
    OUTLINED_FUNCTION_8_4();
  }

  else
  {
    v24 = v16[58];
    v25 = v16[56];
    OUTLINED_FUNCTION_52_2();
    v26 = v16[32];
    v27 = v16[30];
    v28 = v16[25];
    v29 = v16[23];
    v30 = v16[19];
    v31 = v16[17];

    v14(v30, v31);
    v32 = OUTLINED_FUNCTION_48_1();
    v33(v32);
    v34 = OUTLINED_FUNCTION_26_1();
    a12(v34);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_8_4();

    MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_2311FF06C()
{
  OUTLINED_FUNCTION_16();
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[16];
  v4 = v0[14];
  v5 = v0[10];
  v0[60] = v5;
  sub_2313690F0();
  v0[61] = type metadata accessor for RankedCandidateSuggestion();
  OUTLINED_FUNCTION_74_1();
  v6 = OUTLINED_FUNCTION_28();
  v2(v6);
  v7 = swift_task_alloc();
  v0[62] = v7;
  *v7 = v0;
  v7[1] = sub_2311FF17C;
  v8 = v0[12];
  v9 = v0[13];
  v10 = v0[11];

  return sub_231202914(v5, v10, v8, (v0 + 2));
}

uint64_t sub_2311FF17C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 496);
  v5 = *(v3 + 480);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 504) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311FF27C()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[63];
  v2 = v0[61];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[16];
  v6 = v0[14];
  sub_2313690F0();
  sub_231369850();
  v7 = OUTLINED_FUNCTION_26_1();
  v4(v7);
  v8 = swift_task_alloc();
  v0[64] = v8;
  *v8 = v0;
  v8[1] = sub_2311FF38C;
  v9 = v0[12];
  v10 = v0[13];
  v11 = OUTLINED_FUNCTION_38_4(v0[63]);

  return sub_23120304C(v11, v12);
}

uint64_t sub_2311FF38C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 512);
  v5 = *(v3 + 504);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 520) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2311FF48C()
{
  v1 = v0[65];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[34];
  v5 = v0[35];
  v6 = v0[33];
  v12 = v0[32];
  v13 = v0[29];
  v14 = v0[28];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[22];
  v19 = v0[21];
  v20 = v0[20];
  v21 = v0[19];
  v7 = v0[16];
  v8 = v0[14];
  sub_2313690F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  sub_231369850();
  v2(v7, v8);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  OUTLINED_FUNCTION_14();
  v10 = v0[65];

  return v9(v10);
}

uint64_t sub_2311FF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2311FF650, 0, 0);
}

uint64_t sub_2311FF650()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2311FF6E8;
  v3 = v0[5];
  OUTLINED_FUNCTION_38_4(v0[4]);

  return GenerationService.generateCandidates(for:with:)();
}

uint64_t sub_2311FF6E8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 48);
  *v2 = *v0;
  *(v1 + 56) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311FF7D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136B670;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_231368320();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  return v2;
}

uint64_t sub_2311FF868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2311FF890, 0, 0);
}

uint64_t sub_2311FF890()
{
  OUTLINED_FUNCTION_8();
  v1 = *(v0[3] + 24);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2311FF92C;
  v3 = v0[5];
  v4 = v0[6];
  OUTLINED_FUNCTION_38_4(v0[4]);

  return ResolutionService.resolveParameters(_:interaction:environment:)();
}

uint64_t sub_2311FF92C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 56);
  *v2 = *v0;
  *(v1 + 64) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311FFA1C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136C1C0;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_231368320();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_2313682F0();
  *(v2 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  *(v2 + 64) = v7;
  return v2;
}

uint64_t sub_2311FFAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  v8 = sub_231367C70();
  v5[5] = v8;
  v9 = *(v8 - 8);
  v5[6] = v9;
  v10 = *(v9 + 64) + 15;
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[9] = v11;
  *v11 = v5;
  v11[1] = sub_2311FFC10;

  return sub_23120014C(a3, a4);
}

uint64_t sub_2311FFC10()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 72);
  *v2 = *v0;
  *(v1 + 80) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2311FFCF8()
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_2313677D0();
  (*(v4 + 104))(v2, *MEMORY[0x277D60AC8], v3);
  sub_231204CF4();
  OUTLINED_FUNCTION_28_0();
  v7 = sub_231369F60();
  v8 = *(v4 + 8);
  v9 = OUTLINED_FUNCTION_26_1();
  v8(v9);
  (v8)(v1, v3);
  if (v7)
  {
    v0[12] = v0[10];
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_20_2(v10);
    v11 = v0[3];
    OUTLINED_FUNCTION_55();

    return sub_231201B04(v12);
  }

  else
  {
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_2311FFE8C;
    v16 = v0[3];
    OUTLINED_FUNCTION_38_4(v0[10]);
    OUTLINED_FUNCTION_55();

    return sub_231201380(v17);
  }
}

uint64_t sub_2311FFE8C()
{
  OUTLINED_FUNCTION_16();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = v3[11];
  v7 = v3[10];
  v8 = *v0;
  *v5 = *v0;

  v4[12] = v2;
  v9 = swift_task_alloc();
  v4[13] = v9;
  *v9 = v8;
  OUTLINED_FUNCTION_20_2(v9);
  v10 = v3[3];

  return sub_231201B04(v2);
}

uint64_t sub_2311FFFD8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = *v0;
  OUTLINED_FUNCTION_2();
  *v7 = v6;
  *(v9 + 112) = v8;

  v10 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2312000D8()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  **(v0 + 16) = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_23120014C(uint64_t a1, uint64_t a2)
{
  v3[49] = a2;
  v3[50] = v2;
  v3[48] = a1;
  v4 = sub_231369050();
  v3[51] = v4;
  v5 = *(v4 - 8);
  v3[52] = v5;
  v6 = *(v5 + 64) + 15;
  v3[53] = swift_task_alloc();
  v7 = sub_2313698C0();
  v3[54] = v7;
  v8 = *(v7 - 8);
  v3[55] = v8;
  v9 = *(v8 + 64) + 15;
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v10 = sub_231369840();
  v3[58] = v10;
  v11 = *(v10 - 8);
  v3[59] = v11;
  v12 = *(v11 + 64) + 15;
  v3[60] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312002D4, 0, 0);
}

uint64_t sub_2312002D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_31_2();
  a22 = v24;
  v28 = *(v24 + 480);
  v29 = *(v24 + 456);
  v30 = sub_231369190();
  sub_231369140();

  sub_231367600();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_2313691A0();

  sub_2313690F0();
  v31 = sub_2313698A0();
  v32 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v32))
  {
    v33 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v33);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v34, v35, "Finalizing aka filtering candidates...");
    OUTLINED_FUNCTION_29();
  }

  v36 = *(v24 + 456);
  v37 = *(v24 + 432);
  v38 = *(v24 + 440);
  v39 = *(v24 + 384);

  *(v24 + 488) = *(v38 + 8);
  v40 = OUTLINED_FUNCTION_28_0();
  v41(v40);
  v42 = v39[2];
  *(v24 + 496) = v42;
  if (v42)
  {
    v43 = 0;
    v44 = *(*(v24 + 400) + 32);
    *(v24 + 504) = v44;
    *(v24 + 512) = *(v44 + 16);
    v45 = MEMORY[0x277D84F90];
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v24 + 544) = v46;
      *(v24 + 536) = v46;
      *(v24 + 528) = v45;
      *(v24 + 520) = v43;
      v47 = *(v24 + 384);
      v48 = OUTLINED_FUNCTION_44_3(v43);
      sub_2311CF324(v48, v24 + 16);
      v49 = OUTLINED_FUNCTION_76_0();
      *(v24 + 552) = 0;
      if (*(v24 + 512))
      {
        v57 = *(v24 + 504);
        if (!*(v57 + 16))
        {
          __break(1u);
          return MEMORY[0x2821C6CE0](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        sub_2311CF324(v57 + 32, v24 + 96);
        v58 = OUTLINED_FUNCTION_47_2();
        sub_231204D4C(v58, v59, v60, &qword_23136D440);
        if (*(v24 + 200))
        {
          sub_2311D38A8((v24 + 176), v24 + 136);
          v110 = *(v24 + 120);
          v111 = *(v24 + 128);
          OUTLINED_FUNCTION_3_2((v24 + 96));
          v112 = *(MEMORY[0x277D60D80] + 4);
          swift_task_alloc();
          OUTLINED_FUNCTION_14_0();
          *(v24 + 560) = v113;
          *v113 = v114;
          OUTLINED_FUNCTION_2_6(v113);
          OUTLINED_FUNCTION_8_4();

          return MEMORY[0x2821C6CE0](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16);
        }

        sub_2311D1F18(v24 + 176, &qword_27DD42F50, &qword_23136D440);
        __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
      }

      v61 = OUTLINED_FUNCTION_46_3();
      sub_231204D4C(v61, v62, v63, &qword_23136D440);
      if (!*(v24 + 280))
      {
        sub_2311D1F18(v24 + 256, &qword_27DD42F50, &qword_23136D440);
        OUTLINED_FUNCTION_9_4();
        v87 = *(MEMORY[0x277D60F68] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_14_0();
        *(v24 + 568) = v88;
        *v88 = v89;
        OUTLINED_FUNCTION_3_6(v88);
        OUTLINED_FUNCTION_8_4();

        return MEMORY[0x2821C6E60](v90, v91, v92, v93, v94, v95, v96, v97, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
      }

      v64 = *(v24 + 544);
      OUTLINED_FUNCTION_43_3();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 376) = v64;
      v46 = *(v24 + 544);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v71 = *(v46 + 16);
        OUTLINED_FUNCTION_23();
        sub_23126DF64();
        OUTLINED_FUNCTION_69_0(v72);
      }

      if (*(v46 + 16) >= *(v46 + 24) >> 1)
      {
        OUTLINED_FUNCTION_62_1();
        OUTLINED_FUNCTION_69_0(v73);
      }

      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 216));
      v66 = OUTLINED_FUNCTION_50_4();
      sub_2311D1F18(v66, v67, &qword_23136D440);
      OUTLINED_FUNCTION_58_1();
      OUTLINED_FUNCTION_16_3();
      v69 = *(v68 + 64);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_22_3();
      v70();
      OUTLINED_FUNCTION_56_2();
      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 296));

      v45 = *(v24 + 528);
      v39 = *(v24 + 496);
      v25 = (*(v24 + 520) + 1);
      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));
      if (v25 == v39)
      {
        goto LABEL_17;
      }

      v43 = *(v24 + 520) + 1;
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_17:
  if (*(v45 + 16))
  {
    v74 = *(v24 + 448);
    sub_2313690F0();
    sub_231369EE0();
    v75 = sub_2313698A0();
    v25 = sub_23136A3A0();

    v76 = os_log_type_enabled(v75, v25);
    v77 = *(v24 + 488);
    v39 = *(v24 + 440);
    v78 = *(v24 + 448);
    v79 = *(v24 + 432);
    if (v76)
    {
      OUTLINED_FUNCTION_60();
      a12 = v78;
      a11 = v79;
      v80 = OUTLINED_FUNCTION_57_0();
      a13 = v80;
      *v78 = 136315138;
      v81 = sub_231367920();
      a10 = v77;
      v83 = v82;

      v84 = sub_2311CFD58(v81, v83, &a13);

      *(v78 + 4) = v84;
      OUTLINED_FUNCTION_37_2(&dword_2311CB000, v85, v86, "Suggestions removed during finalization: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_24();

      a10(v78, a11);
    }

    else
    {

      v98 = OUTLINED_FUNCTION_53_3();
      (v77)(v98);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_59_1();
  sub_231369190();
  OUTLINED_FUNCTION_42_2();

  v99 = v39[1];
  v100 = OUTLINED_FUNCTION_28();
  v101(v100);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_8_4();

  return v104(v102, v103, v104, v105, v106, v107, v108, v109, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2312007E4()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 560);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2312008C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(uint64_t, uint64_t), uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_31_2();
  a22 = v24;
  __swift_destroy_boxed_opaque_existential_1Tm((v24 + 136));
  v27 = OUTLINED_FUNCTION_50_4();
  sub_2311D1F18(v27, v28, &qword_23136D440);
  v29 = *(v24 + 352);
  *(v24 + 56) = *(v24 + 336);
  *(v24 + 72) = v29;
  *(v24 + 88) = *(v24 + 368);
  v30 = __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
  for (i = *(v24 + 552) + 1; ; i = 0)
  {
    *(v24 + 552) = i;
    if (i == *(v24 + 512))
    {
      goto LABEL_6;
    }

    if (i >= *(*(v24 + 504) + 16))
    {
      __break(1u);
      return MEMORY[0x2821C6CE0](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v39 = OUTLINED_FUNCTION_44_3(i);
    sub_2311CF324(v39, v24 + 96);
    v40 = OUTLINED_FUNCTION_47_2();
    sub_231204D4C(v40, v41, v42, &qword_23136D440);
    if (*(v24 + 200))
    {
      sub_2311D38A8((v24 + 176), v24 + 136);
      v86 = *(v24 + 120);
      v87 = *(v24 + 128);
      OUTLINED_FUNCTION_3_2((v24 + 96));
      v88 = *(MEMORY[0x277D60D80] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v24 + 560) = v89;
      *v89 = v90;
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_8_4();

      return MEMORY[0x2821C6CE0](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    sub_2311D1F18(v24 + 176, &qword_27DD42F50, &qword_23136D440);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
LABEL_6:
    v43 = OUTLINED_FUNCTION_46_3();
    sub_231204D4C(v43, v44, v45, &qword_23136D440);
    if (!*(v24 + 280))
    {
      break;
    }

    v46 = *(v24 + 544);
    OUTLINED_FUNCTION_43_3();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 376) = v46;
    v48 = *(v24 + 544);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = *(v48 + 16);
      OUTLINED_FUNCTION_23();
      sub_23126DF64();
      OUTLINED_FUNCTION_69_0(v60);
    }

    if (*(v48 + 16) >= *(v48 + 24) >> 1)
    {
      OUTLINED_FUNCTION_62_1();
      OUTLINED_FUNCTION_69_0(v61);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 216));
    v49 = OUTLINED_FUNCTION_50_4();
    sub_2311D1F18(v49, v50, &qword_23136D440);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_16_3();
    v52 = *(v51 + 64);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_22_3();
    v53();
    OUTLINED_FUNCTION_56_2();
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 296));

    v54 = *(v24 + 528);
    v55 = *(v24 + 496);
    v56 = (*(v24 + 520) + 1);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));
    if (v56 == v55)
    {
      if (*(v54 + 16))
      {
        v73 = *(v24 + 448);
        sub_2313690F0();
        sub_231369EE0();
        v74 = sub_2313698A0();
        v56 = sub_23136A3A0();

        v75 = os_log_type_enabled(v74, v56);
        v76 = *(v24 + 488);
        v77 = *(v24 + 440);
        v78 = *(v24 + 448);
        v79 = *(v24 + 432);
        if (v75)
        {
          OUTLINED_FUNCTION_60();
          a12 = v78;
          a11 = v79;
          v80 = OUTLINED_FUNCTION_57_0();
          a13 = v80;
          *v78 = 136315138;
          v81 = sub_231367920();
          a10 = v76;
          v83 = v82;

          v54 = sub_2311CFD58(v81, v83, &a13);

          *(v78 + 4) = v54;
          OUTLINED_FUNCTION_37_2(&dword_2311CB000, v84, v85, "Suggestions removed during finalization: %s");
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          OUTLINED_FUNCTION_29();
          OUTLINED_FUNCTION_24();

          a10(v78, a11);
        }

        else
        {

          v91 = OUTLINED_FUNCTION_53_3();
          (v76)(v91);
        }
      }

      else
      {
      }

      OUTLINED_FUNCTION_59_1();
      sub_231369190();
      OUTLINED_FUNCTION_42_2();

      v92 = *(v54 + 8);
      v93 = OUTLINED_FUNCTION_28();
      v94(v93);

      OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_8_4();

      return v97(v95, v96, v97, v98, v99, v100, v101, v102, a9, a10, a11, a12, a13, a14, a15, a16);
    }

    v57 = *(v24 + 520);
    *(v24 + 544) = v48;
    *(v24 + 536) = v48;
    *(v24 + 528) = v54;
    *(v24 + 520) = v57 + 1;
    v58 = *(v24 + 384);
    OUTLINED_FUNCTION_35_3(v57);
    v30 = OUTLINED_FUNCTION_76_0();
  }

  sub_2311D1F18(v24 + 256, &qword_27DD42F50, &qword_23136D440);
  OUTLINED_FUNCTION_9_4();
  v62 = *(MEMORY[0x277D60F68] + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v24 + 568) = v63;
  *v63 = v64;
  OUTLINED_FUNCTION_3_6(v63);
  OUTLINED_FUNCTION_8_4();

  return MEMORY[0x2821C6E60](v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_231200D3C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 568);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231200E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_29_1();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_31_2();
  a22 = v24;
  v28 = *(v24 + 528);
  v30 = *(v24 + 416);
  v29 = *(v24 + 424);
  v31 = *(v24 + 408);
  v32 = sub_231369040();
  v34 = v33;
  v35 = *(v30 + 8);
  v36 = OUTLINED_FUNCTION_28();
  v37(v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v24 + 528);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v122 = *(v39 + 16);
    OUTLINED_FUNCTION_23();
    sub_23126DC90();
    v39 = v123;
  }

  v40 = *(v39 + 16);
  if (v40 >= *(v39 + 24) >> 1)
  {
    sub_23126DC90();
    v39 = v124;
  }

  v41 = OUTLINED_FUNCTION_50_4();
  sub_2311D1F18(v41, v42, &qword_23136D440);
  *(v39 + 16) = v40 + 1;
  v43 = v39 + 16 * v40;
  *(v43 + 32) = v32;
  *(v43 + 40) = v34;
  v126 = (v24 + 536);
  for (i = *(v24 + 536); ; i = vdupq_n_s64(v56))
  {
    v129 = i;
    v32 = *(v24 + 496);
    v34 = *(v24 + 520) + 1;
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 16));
    if (v34 == v32)
    {
      break;
    }

    v45 = *(v24 + 520);
    *v126 = v129;
    *(v24 + 528) = v39;
    *(v24 + 520) = v45 + 1;
    v46 = *(v24 + 384);
    OUTLINED_FUNCTION_35_3(v45);
    OUTLINED_FUNCTION_76_0();
    *(v24 + 552) = 0;
    if (*(v24 + 512))
    {
      v47 = *(v24 + 504);
      if (!*(v47 + 16))
      {
        __break(1u);
        goto LABEL_31;
      }

      sub_2311CF324(v47 + 32, v24 + 96);
      v48 = OUTLINED_FUNCTION_47_2();
      sub_231204D4C(v48, v49, v50, &qword_23136D440);
      if (*(v24 + 200))
      {
        sub_2311D38A8((v24 + 176), v24 + 136);
        v91 = *(v24 + 120);
        v92 = *(v24 + 128);
        OUTLINED_FUNCTION_3_2((v24 + 96));
        v93 = *(MEMORY[0x277D60D80] + 4);
        swift_task_alloc();
        OUTLINED_FUNCTION_14_0();
        *(v24 + 560) = v94;
        *v94 = v95;
        OUTLINED_FUNCTION_2_6();
        OUTLINED_FUNCTION_8_4();

        return MEMORY[0x2821C6CE0](v96, v97, v98, v99, v100, v101, v102, v103, a9, v126, v129.i64[0], v129.i64[1], a13, a14, a15, a16);
      }

      sub_2311D1F18(v24 + 176, &qword_27DD42F50, &qword_23136D440);
      __swift_destroy_boxed_opaque_existential_1Tm((v24 + 96));
    }

    v51 = OUTLINED_FUNCTION_46_3();
    sub_231204D4C(v51, v52, v53, &qword_23136D440);
    if (!*(v24 + 280))
    {
      sub_2311D1F18(v24 + 256, &qword_27DD42F50, &qword_23136D440);
      OUTLINED_FUNCTION_9_4();
      v80 = *(MEMORY[0x277D60F68] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v24 + 568) = v81;
      *v81 = v82;
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_8_4();

      return MEMORY[0x2821C6E60](v83, v84, v85, v86, v87, v88, v89, v90, a9, v126, v129.i64[0], v129.i64[1], a13, a14, a15, a16, a17, a18);
    }

    v54 = *(v24 + 544);
    OUTLINED_FUNCTION_43_3();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    *(v24 + 376) = v54;
    v56 = *(v24 + 544);
    if ((v55 & 1) == 0)
    {
      v63 = *(v56 + 16);
      OUTLINED_FUNCTION_23();
      sub_23126DF64();
      v56 = v64;
      *(v24 + 376) = v64;
    }

    v57 = *(v56 + 16);
    if (v57 >= *(v56 + 24) >> 1)
    {
      sub_23126DF64();
      v56 = v65;
      *(v24 + 376) = v65;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 216));
    v58 = OUTLINED_FUNCTION_50_4();
    sub_2311D1F18(v58, v59, &qword_23136D440);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_16_3();
    v61 = *(v60 + 64);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_22_3();
    v62();
    sub_2312E6494(v57, v25, (v24 + 376), v34, v40 + 1);
    __swift_destroy_boxed_opaque_existential_1Tm((v24 + 296));

    v39 = *(v24 + 528);
  }

  if (*(v39 + 16))
  {
    v66 = *(v24 + 448);
    sub_2313690F0();
    sub_231369EE0();
    v67 = sub_2313698A0();
    v68 = sub_23136A3A0();

    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v24 + 488);
    v71 = *(v24 + 440);
    v72 = *(v24 + 448);
    v73 = *(v24 + 432);
    if (v69)
    {
      v127 = *(v24 + 488);
      v74 = OUTLINED_FUNCTION_60();
      a9 = v72;
      v75 = swift_slowAlloc();
      a13 = v75;
      *v74 = 136315138;
      v76 = sub_231367920();
      v78 = v77;

      v79 = sub_2311CFD58(v76, v78, &a13);

      *(v74 + 4) = v79;
      _os_log_impl(&dword_2311CB000, v67, v68, "Suggestions removed during finalization: %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_29();

      v127(a9, v73);
    }

    else
    {

      v104 = OUTLINED_FUNCTION_66_1();
      v70(v104);
    }
  }

  else
  {
  }

  v106 = *(v24 + 472);
  v105 = *(v24 + 480);
  v108 = *(v24 + 456);
  v107 = *(v24 + 464);
  v109 = *(v24 + 448);
  v128 = *(v24 + 424);
  sub_231367600();
  v110 = sub_231369190();
  sub_231369180();

  v111 = *(v106 + 8);
  v112 = OUTLINED_FUNCTION_27();
  v113(v112);

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_8_4();

  return v116(v114, v115, v116, v117, v118, v119, v120, v121, a9, v128, v129.i64[0], v129.i64[1], a13, a14, a15, a16);
}

uint64_t sub_231201380(uint64_t a1)
{
  v1[18] = a1;
  v2 = sub_231369050();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v5 = sub_2313698C0();
  v1[22] = v5;
  v6 = *(v5 - 8);
  v1[23] = v6;
  v7 = *(v6 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312014A8, 0, 0);
}

uint64_t sub_2312014A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_16();
  v19 = v18[25];
  sub_2313690F0();
  v20 = sub_2313698A0();
  v21 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v21))
  {
    v22 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v22);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v23, v24, "Deduplicating candidates by logging id...");
    OUTLINED_FUNCTION_29();
  }

  v25 = v18[25];
  v26 = v18[22];
  v27 = v18[23];
  v28 = v18[18];

  v18[26] = *(v27 + 8);
  v29 = OUTLINED_FUNCTION_28_0();
  v30(v29);
  v31 = *(v28 + 16);
  v18[27] = v31;
  if (v31)
  {
    v32 = v18[18];
    v33 = MEMORY[0x277D84F98];
    v18[29] = 0;
    v18[30] = v33;
    v18[28] = v33;
    sub_2311CF324(v32 + 32, (v18 + 2));
    OUTLINED_FUNCTION_9_4();
    v34 = *(MEMORY[0x277D60F68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v18[31] = v35;
    *v35 = v36;
    v37 = OUTLINED_FUNCTION_15_4(v35);

    return MEMORY[0x2821C6E60](v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  else
  {
    v45 = v18[24];
    v46 = v18[25];
    v47 = v18[21];
    v48 = sub_23122ACF4(MEMORY[0x277D84F98]);

    OUTLINED_FUNCTION_14();

    return v49(v48);
  }
}

uint64_t sub_23120162C()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 248);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_231201710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = *(v18 + 240);
  v21 = *(v18 + 160);
  v20 = *(v18 + 168);
  v22 = *(v18 + 152);
  v23 = sub_231369040();
  v25 = v24;
  v26 = *(v21 + 8);
  v27 = OUTLINED_FUNCTION_67_0();
  v28(v27);
  if (*(v19 + 16))
  {
    v29 = *(v18 + 240);
    v30 = OUTLINED_FUNCTION_65();
    v32 = sub_231215F6C(v30, v31);
    if (v33)
    {
      v34 = *(v18 + 192);
      sub_2311CF324(*(*(v18 + 240) + 56) + 40 * v32, v18 + 56);
      sub_2311D1F18(v18 + 56, &qword_27DD42F50, &qword_23136D440);
      sub_2313690F0();
      sub_231369EE0();
      v35 = sub_2313698A0();
      v36 = sub_23136A3A0();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v18 + 208);
      v40 = *(v18 + 184);
      v39 = *(v18 + 192);
      v41 = *(v18 + 176);
      if (v37)
      {
        OUTLINED_FUNCTION_60();
        v88 = OUTLINED_FUNCTION_57_0();
        *v40 = 136315138;
        v42 = OUTLINED_FUNCTION_65();
        v45 = sub_2311CFD58(v42, v43, v44);

        *(v40 + 4) = v45;
        OUTLINED_FUNCTION_37_2(&dword_2311CB000, v46, v47, "Removed duplicate suggestion: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        OUTLINED_FUNCTION_29();
        OUTLINED_FUNCTION_24();
      }

      else
      {
      }

      v48 = OUTLINED_FUNCTION_54_0();
      v38(v48);
      v75 = *(v18 + 240);
      v69 = *(v18 + 224);
      goto LABEL_19;
    }
  }

  v49 = *(v18 + 224);
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0u;
  *(v18 + 88) = 0;
  sub_2311D1F18(v18 + 56, &qword_27DD42F50, &qword_23136D440);
  sub_2311CF324(v18 + 16, v18 + 96);
  swift_isUniquelyReferenced_nonNull_native();
  *(v18 + 136) = v49;
  v50 = OUTLINED_FUNCTION_65();
  v52 = sub_231215F6C(v50, v51);
  if (__OFADD__(*(v49 + 16), (v53 & 1) == 0))
  {
    __break(1u);
    goto LABEL_27;
  }

  v60 = v52;
  v61 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436E8, &qword_23136D448);
  if ((sub_23136A700() & 1) == 0)
  {
LABEL_12:
    if (v61)
    {

      v69 = *(v18 + 136);
      v70 = (v69[7] + 40 * v60);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      sub_2311D38A8((v18 + 96), v70);
LABEL_16:
      v75 = v69;
LABEL_19:
      v76 = *(v18 + 216);
      v77 = *(v18 + 232) + 1;
      __swift_destroy_boxed_opaque_existential_1Tm((v18 + 16));
      if (v77 == v76)
      {
        v79 = *(v18 + 192);
        v78 = *(v18 + 200);
        v80 = *(v18 + 168);
        sub_23122ACF4(v75);

        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_7();

        __asm { BRAA            X2, X16 }
      }

      v83 = *(v18 + 232);
      *(v18 + 232) = v83 + 1;
      *(v18 + 240) = v75;
      *(v18 + 224) = v69;
      v84 = *(v18 + 144);
      OUTLINED_FUNCTION_35_3(v83);
      OUTLINED_FUNCTION_9_4();
      v85 = *(MEMORY[0x277D60F68] + 4);
      swift_task_alloc();
      OUTLINED_FUNCTION_14_0();
      *(v18 + 248) = v86;
      *v86 = v87;
      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_7();

      return MEMORY[0x2821C6E60](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
    }

    v69 = *(v18 + 136);
    v69[(v60 >> 6) + 8] |= 1 << v60;
    v71 = (v69[6] + 16 * v60);
    *v71 = v23;
    v71[1] = v25;
    v52 = sub_2311D38A8((v18 + 96), v69[7] + 40 * v60);
    v72 = v69[2];
    v73 = __OFADD__(v72, 1);
    v74 = v72 + 1;
    if (!v73)
    {
      v69[2] = v74;
      goto LABEL_16;
    }

LABEL_27:
    __break(1u);
    return MEMORY[0x2821C6E60](v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v62 = *(v18 + 136);
  v63 = OUTLINED_FUNCTION_65();
  v65 = sub_231215F6C(v63, v64);
  if ((v61 & 1) == (v66 & 1))
  {
    v60 = v65;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7();

  return sub_23136A970();
}

uint64_t sub_231201B04(uint64_t a1)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = v1;
  return MEMORY[0x2822009F8](sub_231201B24, 0, 0);
}

uint64_t sub_231201B24()
{
  OUTLINED_FUNCTION_8();
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v0[15] = v2;
  v0[16] = v3;
  if (v2)
  {
    v0[17] = 1;
    sub_2311CF324(v1 + 32, (v0 + 2));
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v0[18] = v4;
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_17_3(v4);

    return sub_231203D70(v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_14();
    v10 = MEMORY[0x277D84F90];

    return v9(v10);
  }
}

uint64_t sub_231201BF0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v5 + 128);

    v12 = sub_231201F24;
  }

  else
  {
    *(v5 + 152) = v3 & 1;
    v12 = sub_231201D18;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_231201D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  if (*(v10 + 152))
  {
    v11 = *(v10 + 128);
    OUTLINED_FUNCTION_76_0();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + 96) = v11;
    v13 = *(v10 + 128);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v40 = *(v13 + 16);
      OUTLINED_FUNCTION_23();
      sub_23126DF64();
      v13 = v41;
      *(v10 + 96) = v41;
    }

    v14 = *(v13 + 16);
    if (v14 >= *(v13 + 24) >> 1)
    {
      sub_23126DF64();
      v13 = v42;
      *(v10 + 96) = v42;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
    v15 = *(v10 + 80);
    v16 = *(v10 + 88);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v10 + 56, v15);
    v18 = *(v15 - 8);
    v19 = *(v18 + 64);
    v20 = OUTLINED_FUNCTION_43();
    (*(v18 + 16))(v20, v17, v15);
    sub_2312E6494(v14, v20, (v10 + 96), v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm((v10 + 56));

    v22 = *(v10 + 136);
    *(v10 + 128) = v13;
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm((v10 + 16));
    v22 = *(v10 + 136);
  }

  v23 = *(v10 + 120);
  if (v22 == v23)
  {
    OUTLINED_FUNCTION_14();
    v24 = *(v10 + 128);
    OUTLINED_FUNCTION_55();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }

  if (v22 >= v23)
  {
    __break(1u);
    goto LABEL_18;
  }

  *(v10 + 136) = v22 + 1;
  if (__OFADD__(v22, 1))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v33 = *(v10 + 104);
  v34 = OUTLINED_FUNCTION_44_3(v22);
  sub_2311CF324(v34, v10 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v10 + 144) = v35;
  *v35 = v36;
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_55();

  return sub_231203D70(v37, v38);
}

uint64_t sub_231201F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231369840();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231202028, 0, 0);
}

uint64_t sub_231202028()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[9];
  v2 = v0[6];
  v3 = sub_231369190();
  sub_231369140();

  sub_2313675C0();
  v4 = sub_231369190();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_0();

  v5 = v2[28];
  v6 = v2[29];
  OUTLINED_FUNCTION_3_2(v2 + 25);
  OUTLINED_FUNCTION_51_2();
  v17 = (v7 + *v7);
  v9 = *(v8 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[10] = v10;
  *v10 = v11;
  v10[1] = sub_231202188;
  v12 = v0[4];
  v13 = v0[5];
  v14 = v0[2];
  v15 = v0[3];

  return v17(v14, v15, v12, v13, v5, v6);
}

uint64_t sub_231202188()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 80);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_23120226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  v13 = v10[8];
  v12 = v10[9];
  v14 = v10[7];
  sub_2313675C0();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_231369180();

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_27();
  v17(v16);

  v18 = v10[1];
  OUTLINED_FUNCTION_55();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_231202300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = sub_2312023C8;

  return sub_2312024B0(a3, a4, a5, a6);
}

uint64_t sub_2312023C8()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 24);
  *v2 = *v0;
  *(v1 + 32) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312024B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_231369840();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231202578, 0, 0);
}

uint64_t sub_231202578()
{
  OUTLINED_FUNCTION_16();
  v1 = v0[9];
  v2 = sub_231369190();
  sub_231369140();

  sub_2313675E0();
  v3 = sub_231369190();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_72_0();

  if (qword_280F7C8A0 != -1)
  {
    swift_once();
  }

  v4 = sub_2313698C0();
  __swift_project_value_buffer(v4, qword_280F8E510);
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v6))
  {
    v7 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v7);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v8, v9, "Ranking...");
    OUTLINED_FUNCTION_29();
  }

  v10 = v0[6];

  v11 = *__swift_project_boxed_opaque_existential_1((v10 + 80), *(v10 + 104));
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_2312026EC;
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[3];
  OUTLINED_FUNCTION_38_4(v0[2]);

  return sub_2312B7620();
}

uint64_t sub_2312026EC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 80);
  *v2 = *v0;
  *(v1 + 88) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2312027D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_60_0();
  v13 = v10[8];
  v12 = v10[9];
  v14 = v10[7];
  sub_2313675E0();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_231369180();

  v15 = *(v13 + 8);
  v16 = OUTLINED_FUNCTION_27();
  v17(v16);

  OUTLINED_FUNCTION_14();
  v18 = v10[11];
  OUTLINED_FUNCTION_55();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_231202868(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_23136D280;
  v3 = a1 + *(type metadata accessor for RankedCandidateSuggestion() + 28);
  v4 = sub_231369040();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v4;
  *(v2 + 40) = v5;
  v6 = sub_2313672C0();
  *(v2 + 88) = MEMORY[0x277D83B88];
  *(v2 + 64) = v6;
  sub_2313672E0();
  *(v2 + 120) = MEMORY[0x277D839F8];
  *(v2 + 96) = v7;
  return v2;
}

uint64_t sub_231202914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2313698C0();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = sub_231369840();
  v5[10] = v9;
  v10 = *(v9 - 8);
  v5[11] = v10;
  v11 = *(v10 + 64) + 15;
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231202A38, 0, 0);
}

uint64_t sub_231202A38()
{
  OUTLINED_FUNCTION_60_0();
  v2 = v0[12];
  v3 = v0[9];
  v4 = sub_231369190();
  sub_231369140();

  sub_231367610();
  OUTLINED_FUNCTION_41_2();
  OUTLINED_FUNCTION_5_5();
  sub_2313691A0();

  sub_2313690F0();
  v5 = sub_2313698A0();
  v6 = sub_23136A3A0();
  if (OUTLINED_FUNCTION_40_1(v6))
  {
    v7 = OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_68(v7);
    OUTLINED_FUNCTION_57(&dword_2311CB000, v8, v9, "Applying policies...");
    OUTLINED_FUNCTION_29();
  }

  v11 = v0[8];
  v10 = v0[9];
  v13 = v0[6];
  v12 = v0[7];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_28_0();
  v16(v15);
  v17 = v13[18];
  v18 = v13[19];
  OUTLINED_FUNCTION_3_2(v13 + 15);
  OUTLINED_FUNCTION_51_2();
  v28 = (v19 + *v19);
  v21 = *(v20 + 4);
  v22 = swift_task_alloc();
  v0[13] = v22;
  *v22 = v0;
  v22[1] = sub_231202BEC;
  v23 = v0[4];
  v24 = v0[5];
  v25 = v0[3];
  v26 = OUTLINED_FUNCTION_38_4(v0[2]);

  return v28(v26);
}

uint64_t sub_231202BEC()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_46();
  *v2 = v1;
  v4 = *(v3 + 104);
  *v2 = *v0;
  *(v1 + 112) = v5;

  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231202CD4()
{
  OUTLINED_FUNCTION_60_0();
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  sub_231367610();
  v5 = sub_231369190();
  OUTLINED_FUNCTION_67_0();
  sub_231369180();

  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_27();
  v8(v7);

  OUTLINED_FUNCTION_14();
  v10 = v0[14];

  return v9(v10);
}

uint64_t sub_231202DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD42F20, &qword_23136D410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = type metadata accessor for RankedCandidateSuggestion();
  v10 = *(v9 + 24);
  sub_231204D4C(a1 + v10, v8, &qword_27DD42F20, &qword_23136D410);
  v11 = sub_231366E80();
  if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
  {
    sub_2311D1F18(v8, &qword_27DD42F20, &qword_23136D410);
  }

  else
  {
    sub_231366E40();
    (*(*(v11 - 8) + 8))(v8, v11);
  }

  v12 = MEMORY[0x277D837D0];
  v13 = sub_231367920();
  v15 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23136D290;
  v17 = a1 + *(v9 + 28);
  v18 = sub_231369040();
  *(v16 + 56) = v12;
  *(v16 + 32) = v18;
  *(v16 + 40) = v19;
  *(v16 + 88) = sub_231367290();
  __swift_allocate_boxed_opaque_existential_1((v16 + 64));
  sub_2313672D0();
  v20 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v20 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    v15 = 0xE100000000000000;
    v13 = 45;
  }

  *(v16 + 120) = v12;
  *(v16 + 96) = v13;
  *(v16 + 104) = v15;
  sub_231204D4C(a1 + v10, v5, &qword_27DD42F20, &qword_23136D410);
  if (__swift_getEnumTagSinglePayload(v5, 1, v11) == 1)
  {
    sub_2311D1F18(v5, &qword_27DD42F20, &qword_23136D410);
    *(v16 + 128) = 0u;
    *(v16 + 144) = 0u;
  }

  else
  {
    *(v16 + 152) = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v16 + 128));
    (*(*(v11 - 8) + 32))(boxed_opaque_existential_1, v5, v11);
  }

  return v16;
}

uint64_t sub_23120304C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D8, &qword_23136D3E8) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = sub_231369840();
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v8 = sub_2313698C0();
  v3[14] = v8;
  v9 = *(v8 - 8);
  v3[15] = v9;
  v10 = *(v9 + 64) + 15;
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2312031A4, 0, 0);
}

uint64_t sub_2312031A4()
{
  OUTLINED_FUNCTION_60_0();
  v1 = *(v0 + 128);
  sub_2313690F0();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_63();
    *v4 = 0;
    _os_log_impl(&dword_2311CB000, v2, v3, "Rendering views...", v4, 2u);
    OUTLINED_FUNCTION_29();
  }

  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 72);
  v10 = *(v0 + 80);
  v11 = *(v0 + 64);

  (*(v6 + 8))(v5, v7);
  v12 = sub_231369190();
  sub_231369140();

  sub_2313675A0();
  v13 = sub_231369190();
  OUTLINED_FUNCTION_66_1();
  sub_2313691A0();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436E0, &qword_23136D3F0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  sub_2311CF324(v11, v0 + 16);
  v15 = swift_allocObject();
  *(v0 + 136) = v15;
  *(v15 + 16) = v9;
  sub_2311D38A8((v0 + 16), v15 + 24);
  v16 = *(MEMORY[0x277D60B28] + 4);

  v17 = swift_task_alloc();
  *(v0 + 144) = v17;
  v18 = type metadata accessor for RankedCandidateSuggestion();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  *v17 = v0;
  v17[1] = sub_2312033D8;
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);

  return MEMORY[0x2821C6B08](v23, v22, &unk_23136D400, v15, v18, v19, v20, v21);
}

void sub_2312033D8()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_12();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  *v6 = v5;
  v8 = *(v7 + 144);
  v9 = *v1;
  OUTLINED_FUNCTION_2();
  *v10 = v9;

  if (v0)
  {
  }

  else
  {
    v11 = v5[17];
    v12 = v5[10];
    v5[19] = v3;
    sub_2311D1F18(v12, &qword_27DD436D8, &qword_23136D3E8);

    MEMORY[0x2822009F8](sub_231203524, 0, 0);
  }
}

uint64_t sub_231203524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_39();
  v13 = v12[16];
  v15 = v12[12];
  v14 = v12[13];
  v17 = v12[10];
  v16 = v12[11];
  sub_2313675A0();
  v18 = sub_231369190();
  sub_231369180();

  v19 = *(v15 + 8);
  v20 = OUTLINED_FUNCTION_28_0();
  v21(v20);

  OUTLINED_FUNCTION_14();
  v22 = v12[19];
  OUTLINED_FUNCTION_40();

  return v25(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_2312035F4(uint64_t a1)
{
  v2 = sub_231369090();
  v61 = *(v2 - 8);
  v62 = v2;
  v3 = *(v61 + 64);
  MEMORY[0x28223BE20](v2);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436D0, &qword_23136D3E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v65 = &v56 - v7;
  v59 = type metadata accessor for ViewDetails(0);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v63 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231369050();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for RankedCandidateSuggestion();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v64 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43650, &unk_23136CB90);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_23136D290;
  v66 = a1;
  sub_231204D4C(a1, v29, &qword_27DD43530, &unk_23136CA70);
  v31 = type metadata accessor for SuggestionViewDetails(0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v31) == 1)
  {
    sub_2311D1F18(v29, &qword_27DD43530, &unk_23136CA70);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    *(v30 + 48) = 0;
  }

  else
  {
    sub_231204A80(&v29[*(v31 + 20)], v17, type metadata accessor for RankedCandidateSuggestion);
    sub_231204ADC(v29, type metadata accessor for SuggestionViewDetails);
    v36 = v57;
    v35 = v58;
    (*(v57 + 16))(v13, &v17[*(v14 + 28)], v58);
    sub_231204ADC(v17, type metadata accessor for RankedCandidateSuggestion);
    v32 = sub_231369040();
    v33 = v37;
    (*(v36 + 8))(v13, v35);
    v34 = MEMORY[0x277D837D0];
  }

  *(v30 + 32) = v32;
  *(v30 + 40) = v33;
  *(v30 + 56) = v34;
  v38 = v66;
  sub_231204D4C(v66, v26, &qword_27DD43530, &unk_23136CA70);
  if (__swift_getEnumTagSinglePayload(v26, 1, v31) == 1)
  {
    sub_2311D1F18(v26, &qword_27DD43530, &unk_23136CA70);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    *(v30 + 80) = 0;
  }

  else
  {
    v42 = v63;
    sub_231204A80(v26, v63, type metadata accessor for ViewDetails);
    sub_231204ADC(v26, type metadata accessor for SuggestionViewDetails);
    v39 = *(v42 + 16);
    v40 = *(v42 + 24);
    sub_231369EE0();
    sub_231204ADC(v42, type metadata accessor for ViewDetails);
    v41 = MEMORY[0x277D837D0];
  }

  *(v30 + 64) = v39;
  *(v30 + 72) = v40;
  *(v30 + 88) = v41;
  sub_231204D4C(v38, v23, &qword_27DD43530, &unk_23136CA70);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v31);
  v44 = v65;
  if (EnumTagSinglePayload == 1)
  {
    sub_2311D1F18(v23, &qword_27DD43530, &unk_23136CA70);
    v45 = sub_231368F50();
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v45);
LABEL_10:
    sub_2311D1F18(v44, &qword_27DD436D0, &qword_23136D3E0);
    *(v30 + 96) = 0u;
    *(v30 + 112) = 0u;
    goto LABEL_12;
  }

  v46 = v63;
  sub_231204A80(v23, v63, type metadata accessor for ViewDetails);
  sub_231204ADC(v23, type metadata accessor for SuggestionViewDetails);
  v47 = v60;
  v49 = v61;
  v48 = v62;
  (*(v61 + 16))(v60, v46 + *(v59 + 28), v62);
  sub_231204ADC(v46, type metadata accessor for ViewDetails);
  sub_231369070();
  (*(v49 + 8))(v47, v48);
  v50 = sub_231368F50();
  if (__swift_getEnumTagSinglePayload(v44, 1, v50) == 1)
  {
    goto LABEL_10;
  }

  *(v30 + 120) = v50;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v30 + 96));
  (*(*(v50 - 8) + 32))(boxed_opaque_existential_1, v44, v50);
LABEL_12:
  v52 = v64;
  sub_231204D4C(v38, v64, &qword_27DD43530, &unk_23136CA70);
  if (__swift_getEnumTagSinglePayload(v52, 1, v31) == 1)
  {
    sub_2311D1F18(v52, &qword_27DD43530, &unk_23136CA70);
    v53 = 0;
    v54 = 0;
    *(v30 + 136) = 0;
    *(v30 + 144) = 0;
  }

  else
  {
    sub_2311CF324(v52 + *(v31 + 24), v67);
    sub_231204ADC(v52, type metadata accessor for SuggestionViewDetails);
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    v53 = sub_231367F00();
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43580, &qword_23136CAC0);
  }

  *(v30 + 128) = v53;
  *(v30 + 152) = v54;
  return v30;
}

uint64_t sub_231203D70(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_231369050();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_2313698C0();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_231203E98, 0, 0);
}

uint64_t sub_231203E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = v20[7];
  v24 = *(v20[8] + 280);
  v25 = *(v23 + 24);
  v26 = *(v23 + 32);
  v27 = OUTLINED_FUNCTION_64();
  __swift_project_boxed_opaque_existential_1(v27, v28);
  OUTLINED_FUNCTION_67_0();
  v29 = sub_231368320();
  LOBYTE(v24) = sub_2311EFC44(v29, v30, v24);

  if (v24)
  {
    v31 = v20[15];
    v32 = v20[7];
    sub_2313690F0();
    sub_2311CF324(v32, (v20 + 2));
    v33 = sub_2313698A0();
    v34 = sub_23136A3A0();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v20[15];
    v37 = v20[12];
    v38 = v20[13];
    if (v35)
    {
      v39 = OUTLINED_FUNCTION_60();
      v40 = swift_slowAlloc();
      a9 = v40;
      *v39 = 136315138;
      v41 = v20[6];
      __swift_project_boxed_opaque_existential_1(v20 + 2, v20[5]);
      v42 = sub_231368320();
      v44 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v20 + 2);
      v45 = sub_2311CFD58(v42, v44, &a9);

      *(v39 + 4) = v45;
      _os_log_impl(&dword_2311CB000, v33, v34, "Filtered out suggestion id '%s' based on deny list.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_24();
      OUTLINED_FUNCTION_29();

      v46 = *(v38 + 8);
      v47 = OUTLINED_FUNCTION_26_1();
      v48(v47);
    }

    else
    {

      v63 = *(v38 + 8);
      v64 = OUTLINED_FUNCTION_26_1();
      v65(v64);
      __swift_destroy_boxed_opaque_existential_1Tm(v20 + 2);
    }

    v67 = v20[14];
    v66 = v20[15];
    v68 = v20[11];

    OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_40();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12);
  }

  else
  {
    v50 = *(v23 + 24);
    v49 = *(v23 + 32);
    __swift_project_boxed_opaque_existential_1(v20[7], v50);
    v51 = *(MEMORY[0x277D60F68] + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_14_0();
    v20[16] = v52;
    *v52 = v53;
    v52[1] = sub_231204118;
    v54 = v20[11];
    OUTLINED_FUNCTION_40();

    return MEMORY[0x2821C6E60](v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_231204118()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_12();
  v2 = *(v1 + 128);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_2312041FC()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = sub_231369040();
  v7 = v6;
  v8 = *(v2 + 8);
  v9 = OUTLINED_FUNCTION_27();
  v10(v9);
  if (sub_2311EFC44(v5, v7, *(v4 + 288)))
  {
    v11 = v0[14];
    sub_2313690F0();
    sub_231369EE0();
    v12 = sub_2313698A0();
    v13 = sub_23136A3A0();

    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[13];
    v16 = v0[14];
    v17 = v0[12];
    if (v14)
    {
      v26 = v0[14];
      v18 = OUTLINED_FUNCTION_60();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      v20 = sub_2311CFD58(v5, v7, &v27);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2311CB000, v12, v13, "Filtered out logging id '%s' based on deny list.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      (*(v15 + 8))(v26, v17);
    }

    else
    {

      (*(v15 + 8))(v16, v17);
    }
  }

  else
  {
  }

  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[11];

  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_7();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_2312043D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2312043FC, 0, 0);
}

uint64_t sub_2312043FC()
{
  OUTLINED_FUNCTION_60_0();
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43528, &qword_23136CA68);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43530, &unk_23136CA70) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[5] = v5;
  *(v5 + 16) = xmmword_23136B670;
  v6 = v1[23];
  v7 = v1[24];
  __swift_project_boxed_opaque_existential_1(v1 + 20, v6);
  v8 = *(v7 + 8);
  v15 = (v8 + *v8);
  v9 = v8[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  v0[6] = v10;
  *v10 = v11;
  v10[1] = sub_2312045D4;
  v12 = v0[4];
  v13 = v0[2];

  return v15(v5 + v4, v13, v12, v6, v7);
}

uint64_t sub_2312045D4()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_2();
  *v4 = v3;

  v5 = *(v3 + 8);
  v6 = *(v1 + 40);

  return v5(v6);
}

uint64_t *sub_2312046D8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 15);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 25);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  v5 = v0[35];
  v4 = v0[36];

  return v0;
}

uint64_t sub_231204750()
{
  sub_2312046D8();

  return swift_deallocClassInstance();
}

uint64_t sub_2312047F4()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_70_0();
  v2 = *(v0 + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_7_2(v3);

  return sub_2311FF62C(v5, v6, v7, v2);
}

uint64_t sub_23120488C()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_70_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_7_2(v4);

  return sub_2311FF868(v6, v7, v8, v3, v2);
}

uint64_t sub_231204930()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_70_0();
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_7_2(v4);

  return sub_2311FFAF4(v6, v7, v8, v3, v2);
}

uint64_t sub_2312049D4()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_70_0();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_7_2(v5);

  return sub_231202300(v7, v8, v9, v2, v3, v4);
}

uint64_t sub_231204A80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_11(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_64();
  v8(v7);
  return a2;
}

uint64_t sub_231204ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_11(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_231204B34()
{
  OUTLINED_FUNCTION_26();
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_231204BD4;
  v4 = OUTLINED_FUNCTION_28_0();

  return sub_2312043D8(v4, v5, v6);
}

uint64_t sub_231204BD4()
{
  OUTLINED_FUNCTION_8();
  v2 = v1;
  OUTLINED_FUNCTION_12();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_2();
  *v6 = v5;

  OUTLINED_FUNCTION_14();

  return v7(v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_231204CF4()
{
  result = qword_280F7CA78;
  if (!qword_280F7CA78)
  {
    sub_231367C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7CA78);
  }

  return result;
}

uint64_t sub_231204D4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_11(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_64();
  v9(v8);
  return a2;
}

uint64_t sub_231204DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_231204DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_3(uint64_t a1)
{
  *(a1 + 8) = sub_231201BF0;
  v2 = *(v1 + 112);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_43_3()
{
  sub_2311D38A8((v0 + 256), v0 + 216);

  return sub_2311CF324(v0 + 216, v0 + 296);
}

uint64_t OUTLINED_FUNCTION_51_2()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_56_2()
{

  return sub_2312E6494(v1, v4, (v0 + 376), v2, v3);
}

uint64_t OUTLINED_FUNCTION_58_1()
{
  v2 = *(v0 + 328);
  v3 = *(v0 + 320);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 296, v3);
}

uint64_t OUTLINED_FUNCTION_59_1()
{
  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[56];
  v8 = v0[53];

  return sub_231367600();
}

void OUTLINED_FUNCTION_61_1()
{

  JUMPOUT(0x23192A730);
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_231369850();
}

uint64_t OUTLINED_FUNCTION_76_0()
{

  return sub_2311CF324(v0 + 16, v0 + 56);
}

uint64_t sub_23120504C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2313698C0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD436F0, &unk_23136D510);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27[-v11];
  v13 = type metadata accessor for IntentDetails();
  v14 = OUTLINED_FUNCTION_11(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v27[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_231210C60(0x6544746E65746E69, 0xED0000736C696174, a1);
  if (v28)
  {
    v19 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v12, v19 ^ 1u, 1, v13);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      sub_2312053C8(v12, v18);
      v20 = *(v13 + 24);
      v21 = sub_231369050();
      OUTLINED_FUNCTION_11(v21);
      (*(v22 + 16))(a2, &v18[v20]);
      return sub_23120542C(v18);
    }
  }

  else
  {
    sub_2311D1F18(v27, &qword_27DD443C0, &unk_23136E000);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
  }

  sub_2311D1F18(v12, &qword_27DD436F0, &unk_23136D510);
  sub_231369130();
  v24 = sub_2313698A0();
  v25 = sub_23136A3B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2311CB000, v24, v25, "Unable to find IntentDetails in resolvedParams. This should have been filtered out. Check that ResolvableParameter.required is set to true", v26, 2u);
    MEMORY[0x23192B930](v26, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_231368130();
  sub_231369EC0();
  return sub_231369030();
}

uint64_t sub_2312053C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentDetails();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23120542C(uint64_t a1)
{
  v2 = type metadata accessor for IntentDetails();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_231205488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 40) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_2312054B0, 0, 0);
}

uint64_t sub_2312054B0()
{
  v30 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2312BBA1C();
  v28 = v3;
  v29 = MEMORY[0x277D84F90];
  result = sub_23125D7A0(v2);
  if (result)
  {
    v5 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    v7 = *(v0 + 24);
    v26 = v7 + 32;
    v27 = v7 & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    do
    {
      if (v27)
      {
        v9 = MEMORY[0x23192AD10](v6, *(v0 + 24));
      }

      else
      {
        v9 = *(v26 + 8 * v6);
      }

      v10 = v9;
      v11 = sub_2312056AC(v9, v28, *(v0 + 32), *(v0 + 40));
      if (v12)
      {
        v14 = v11;
        v15 = v12;
        v16 = v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = v8[2];
          sub_23126E728();
          v8 = v20;
        }

        v17 = v8[2];
        if (v17 >= v8[3] >> 1)
        {
          sub_23126E728();
          v8 = v21;
        }

        v8[2] = v17 + 1;
        v18 = &v8[3 * v17];
        v18[4] = v14;
        v18[5] = v15;
        v18[6] = v16;
        v29 = v8;
      }

      else
      {
      }

      ++v6;
    }

    while (v5 != v6);
  }

  sub_231205E60(&v29);
  if (v29[2])
  {
    v22 = v29[4];
    v23 = v29[5];
    v24 = v29[6];
    sub_231369EE0();
    sub_231369EE0();
  }

  else
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v25 = *(v0 + 8);

  return v25(v22, v23, v24);
}

uint64_t sub_2312056AC(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v103 = a4;
  v7 = sub_2313698C0();
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v96 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v92 - v15;
  v107 = MEMORY[0x277D84F98];
  v17 = [a1 phraseMetadata];
  v18 = [v17 parametersMetadata];

  sub_231207BDC(0, &qword_27DD436F8, 0x277D23770);
  v19 = sub_23136A1A0();

  v20 = sub_23125D7A0(v19);
  v94 = a3;
  v95 = v14;
  v100 = v20;
  v93 = v7;
  if (v20)
  {
    v92 = a1;
    v21 = 0;
    v102 = v19 & 0xC000000000000001;
    v22 = MEMORY[0x277D84F98];
    v97 = v19 & 0xFFFFFFFFFFFFFF8;
    v98 = a2;
    v101 = v19;
    v99 = v16;
    while (1)
    {
      if (v102)
      {
        v23 = MEMORY[0x23192AD10](v21, v19);
      }

      else
      {
        if (v21 >= *(v97 + 16))
        {
          goto LABEL_48;
        }

        v23 = *(v19 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v26 = [v23 parameterName];
      v105 = sub_231369FD0();
      v28 = v27;

      if (v103)
      {
        v29 = v28;
        v30 = [v24 hasToBeOnScreenParameter];
        sub_231207BDC(0, &qword_27DD43708, 0x277CCABB0);
        v31 = sub_23136A460();
        v32 = v31;
        if (v30)
        {
          v33 = sub_23136A480();

          v28 = v29;
          if (v33)
          {

            return OUTLINED_FUNCTION_13_5();
          }
        }

        else
        {

          v28 = v29;
        }
      }

      v34 = sub_231207AF0(v24);
      if (v35)
      {
        v36 = v35;
        if (!*(a2 + 16) || (v37 = v34, v38 = sub_231215F6C(v105, v28), (v39 & 1) == 0))
        {
LABEL_42:

          return OUTLINED_FUNCTION_13_5();
        }

        v40 = (*(a2 + 56) + 16 * v38);
        v41 = *v40;
        v42 = v40[1];
        v43 = *v40 == v37 && v36 == v42;
        if (v43)
        {
          v47 = v40[1];
          sub_231369EE0();
        }

        else
        {
          v44 = *v40;
          v45 = v40[1];
          v46 = sub_23136A900();
          sub_231369EE0();

          if ((v46 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        v104 = v42;
        swift_isUniquelyReferenced_nonNull_native();
        v106 = v22;
        v48 = sub_231215F6C(v105, v28);
        if (__OFADD__(v22[2], (v49 & 1) == 0))
        {
          goto LABEL_47;
        }

        v50 = v48;
        v51 = v49;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43700, &qword_23136D528);
        if (sub_23136A700())
        {
          v52 = sub_231215F6C(v105, v28);
          if ((v51 & 1) != (v53 & 1))
          {
            goto LABEL_50;
          }

          v50 = v52;
        }

        v25 = v21 + 1;
        v22 = v106;
        if (v51)
        {
          v54 = (v106[7] + 16 * v50);
          v55 = v54[1];
          v56 = v104;
          *v54 = v41;
          v54[1] = v56;
        }

        else
        {
          OUTLINED_FUNCTION_16_4(&v106[v50 >> 6]);
          v57 = (v22[6] + 16 * v50);
          v58 = v104;
          *v57 = v105;
          v57[1] = v28;
          v59 = (v22[7] + 16 * v50);
          *v59 = v41;
          v59[1] = v58;
          v60 = v22[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_49;
          }

          v22[2] = v62;
        }

        a2 = v98;
      }

      else
      {
      }

      v16 = v99;
      ++v21;
      v43 = v25 == v100;
      v19 = v101;
      if (v43)
      {
        v107 = v22;
        v7 = v93;
        a1 = v92;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_23136A970();
    __break(1u);
  }

  else
  {
LABEL_36:

    v63 = [a1 phrase];
    sub_2313667C0();
    v64 = sub_231369FA0();

    v65 = [v63 localizedStringForLocaleIdentifier_];

    v66 = sub_231369FD0();
    v68 = v67;

    sub_231369130();
    sub_231369EE0();
    v69 = sub_2313698A0();
    v70 = sub_23136A3A0();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = a2;
      v73 = swift_slowAlloc();
      v106 = v73;
      *v71 = 136315138;
      *(v71 + 4) = sub_2311CFD58(v66, v68, &v106);
      _os_log_impl(&dword_2311CB000, v69, v70, "AppIntentPhraseConstructor: phrase template is eligible: %s. Localizing and hydrating phrase", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      a2 = v72;
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();
    }

    v74 = *(v96 + 8);
    v74(v16, v7);
    v75 = sub_231205ED0(v66, v68, a2, &v107);
    v77 = v76;

    v78 = v95;
    sub_231369130();
    v79 = OUTLINED_FUNCTION_13_5();
    sub_231207B54(v79, v80);
    v81 = sub_2313698A0();
    v82 = sub_23136A3A0();
    v83 = OUTLINED_FUNCTION_13_5();
    sub_231207B98(v83, v84);
    if (os_log_type_enabled(v81, v82))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v106 = v86;
      *v85 = 136315138;
      v87 = v74;
      if (v77)
      {
        sub_231369EE0();
        v88 = v75;
        v89 = v77;
      }

      else
      {
        v89 = 0xE300000000000000;
        v88 = 7104878;
      }

      v90 = sub_2311CFD58(v88, v89, &v106);

      *(v85 + 4) = v90;
      _os_log_impl(&dword_2311CB000, v81, v82, "AppIntentPhraseConstructor: Hydrated phrase - %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v86);
      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_29();

      v87(v95, v93);
    }

    else
    {

      v74(v78, v7);
    }

    return OUTLINED_FUNCTION_13_5();
  }

  return result;
}

uint64_t sub_231205E60(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_23128D894(v2);
    v2 = v5;
  }

  v3 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v3;
  result = sub_231207214(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_231205ED0(uint64_t a1, int64_t a2, uint64_t a3, uint64_t *a4)
{
  v247 = a4;
  v252 = a3;
  v253 = a2;
  v245 = a1;
  v214 = sub_2313663A0();
  v4 = OUTLINED_FUNCTION_11(v214);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v8 - v7);
  v235 = sub_231366420();
  v9 = OUTLINED_FUNCTION_0_0(v235);
  v255 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v14);
  v230 = sub_231366430();
  v15 = OUTLINED_FUNCTION_0_0(v230);
  v251 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v20 - v19);
  v228 = sub_2313664F0();
  v21 = OUTLINED_FUNCTION_0_0(v228);
  v246 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_3(v26 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43710, &qword_23136D530);
  OUTLINED_FUNCTION_40_0(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43718, &qword_23136D538);
  OUTLINED_FUNCTION_40_0(v32);
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_4_3(v36);
  v242 = sub_2313664D0();
  v37 = OUTLINED_FUNCTION_0_0(v242);
  v244 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_6_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43720, &qword_23136D540);
  v44 = OUTLINED_FUNCTION_40_0(v43);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_6_3(v48);
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43728, &qword_23136D548);
  OUTLINED_FUNCTION_11(v249);
  v50 = *(v49 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18_2();
  v250 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43730, &qword_23136D550);
  OUTLINED_FUNCTION_40_0(v53);
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18_2();
  v248 = v57;
  v58 = sub_231369F80();
  v59 = OUTLINED_FUNCTION_40_0(v58);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_4_3(v63 - v62);
  v234 = sub_231366460();
  v64 = OUTLINED_FUNCTION_0_0(v234);
  v238 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_3_0();
  v70 = MEMORY[0x28223BE20](v69);
  v254 = v213 - v71;
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_4_3(v72);
  v73 = sub_2313663F0();
  v74 = OUTLINED_FUNCTION_0_0(v73);
  v222 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v78);
  v80 = v213 - v79;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43738, qword_23136D558);
  OUTLINED_FUNCTION_40_0(v81);
  v83 = *(v82 + 64);
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x28223BE20](v84);
  v86 = v213 - v85;
  v87 = sub_231366840();
  v88 = OUTLINED_FUNCTION_0_0(v87);
  v90 = v89;
  v92 = *(v91 + 64);
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_1_4();
  v95 = v94 - v93;
  v96 = sub_2313667E0();
  v97 = OUTLINED_FUNCTION_0_0(v96);
  v99 = v98;
  v101 = *(v100 + 64);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_1_4();
  v104 = v103 - v102;
  sub_231366850();
  sub_231366830();
  (*(v90 + 8))(v95, v87);
  if (__swift_getEnumTagSinglePayload(v86, 1, v96) == 1)
  {
    v105 = &qword_27DD43738;
    v106 = qword_23136D558;
    v107 = v86;
LABEL_34:
    sub_2311D1F18(v107, v105, v106);
    return 0;
  }

  else
  {
    v213[2] = v99;
    v108 = *(v99 + 32);
    v213[3] = v96;
    v108(v104, v86, v96);
    sub_2313663E0();
    sub_2313663C0();
    sub_2313663D0();
    sub_231369EE0();
    sub_231369F90();
    v109 = *(v222 + 16);
    v213[4] = v80;
    v239 = v73;
    v109(v232, v80, v73);
    sub_231366860();
    v110 = v248;
    OUTLINED_FUNCTION_12_3();
    *(v112 - 256) = v111;
    __swift_storeEnumTagSinglePayload(v113, v114, v115, v111);
    OUTLINED_FUNCTION_14_4(&v253);
    sub_231366450();
    v258 = sub_2313667D0();
    v259 = v116;
    sub_231366480();
    v117 = v238 + 16;
    v118 = v234;
    (*(v238 + 16))(v254, v73, v234);
    sub_2312071D8(v252, &v258);
    v119 = v259;
    v238 = v258;
    v253 = v261;
    v213[1] = v260;
    v120 = (v260 + 64) >> 6;
    v220 = v246 + 8;
    v219 = (v255 + 8);
    v221 = v251 + 8;
    v121 = v262;
    v255 = v263;
    v213[5] = v244 + 32;
    v217 = v244 + 16;
    v224 = (v117 - 8);
    v216 = v244 + 8;
    sub_231369EE0();
    v122 = v110;
    v237 = v104;
    v236 = v119;
    v218 = v120;
    while (v121)
    {
LABEL_10:
      v125 = __OFADD__(v255++, 1);
      if (v125)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = sub_23136A970();
        __break(1u);
        return result;
      }

      v126 = __clz(__rbit64(v121));
      v121 &= v121 - 1;
      v127 = (v253 << 10) | (16 * v126);
      v128 = (*(v238 + 48) + v127);
      v129 = v118;
      v130 = *v128;
      v131 = v128[1];
      v132 = (*(v238 + 56) + v127);
      v133 = v132[1];
      v252 = *v132;
      v256 = 31524;
      v257 = 0xE200000000000000;
      sub_231369EE0();
      sub_231369EE0();
      v134 = v122;
      v251 = v130;
      MEMORY[0x23192A730](v130, v131);
      MEMORY[0x23192A730](125, 0xE100000000000000);
      OUTLINED_FUNCTION_12_3();
      __swift_storeEnumTagSinglePayload(v136, v137, v138, *(v135 - 256));
      OUTLINED_FUNCTION_5_6();
      v140 = sub_231207D44(&qword_27DD43740, v139);
      sub_231207C1C();
      OUTLINED_FUNCTION_14_4(&v265);
      v246 = v140;
      sub_231366580();
      sub_2311D1F18(v134, &qword_27DD43730, &qword_23136D550);

      OUTLINED_FUNCTION_20_3(v130);
      if (v141)
      {

        sub_2311D1F18(v130, &qword_27DD43720, &qword_23136D540);
        v122 = v248;
        v119 = v236;
        v118 = v129;
      }

      else
      {
        v244 = v133;
        v245 = v131;
        v142 = v130;
        v143 = v250;
        sub_231207C70(v142, v250);
        v144 = sub_231207CE0();
        v145 = v227;
        v232 = v144;
        sub_231366490();
        v146 = v229;
        sub_2313664E0();
        OUTLINED_FUNCTION_8_6(&v250);
        v147(v145, v228);
        sub_231207D44(&qword_27DD43750, MEMORY[0x277CC8C08]);
        OUTLINED_FUNCTION_14_4(&v258);
        v148 = v230;
        sub_23136A360();
        v149 = v231;
        sub_23136A370();
        sub_231207D44(&qword_27DD43758, MEMORY[0x277CC8BF8]);
        v150 = v235;
        v151 = sub_231369F60();
        v152 = *v219;
        (*v219)(v149, v150);
        if (v151)
        {
          v152(v143, v150);
          OUTLINED_FUNCTION_8_6(&v251);
          v153(v146, v148);
          v154 = sub_231366410();
          v155 = v226;
          v156 = v226;
          v157 = 1;
        }

        else
        {
          v158 = sub_23136A380();
          v160 = v159;
          v154 = sub_231366410();
          OUTLINED_FUNCTION_11(v154);
          v155 = v226;
          (*(v161 + 16))(v226, v160, v154);
          v158(&v256, 0);
          v152(v143, v235);
          OUTLINED_FUNCTION_8_6(&v251);
          v162(v146, v148);
          v156 = v155;
          v157 = 0;
        }

        __swift_storeEnumTagSinglePayload(v156, v157, 1, v154);
        sub_231366410();
        OUTLINED_FUNCTION_20_3(v155);
        v118 = v234;
        v120 = v218;
        if (v141)
        {
          sub_2311D1F18(v155, &qword_27DD43710, &qword_23136D530);
          v163 = v233;
          OUTLINED_FUNCTION_19_5(v233, 1);
          v165 = v241;
          sub_2313664C0();
          if (__swift_getEnumTagSinglePayload(v163, 1, v155) != 1)
          {
            sub_2311D1F18(v233, &qword_27DD43718, &qword_23136D538);
          }
        }

        else
        {
          v164 = v233;
          sub_231366400();
          (*(*(v154 - 8) + 8))(v155, v154);
          OUTLINED_FUNCTION_19_5(v164, 0);
          OUTLINED_FUNCTION_8_6(&v241);
          v165 = v241;
          v166(v241, v164, v155);
        }

        OUTLINED_FUNCTION_8_6(&v247);
        v167(v225, v165, v155);
        sub_231369EE0();
        OUTLINED_FUNCTION_14_4(&v264);
        sub_231366470();
        v256 = v255;
        LOBYTE(v257) = 0;
        sub_231366480();
        sub_2313663B0();
        v168 = v247;
        v169 = *v247;
        swift_isUniquelyReferenced_nonNull_native();
        v170 = *v168;
        v256 = v170;
        v171 = v245;
        v172 = sub_231215F6C(v251, v245);
        if (__OFADD__(*(v170 + 16), (v173 & 1) == 0))
        {
          goto LABEL_38;
        }

        v174 = v172;
        v175 = v173;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43700, &qword_23136D528);
        if (sub_23136A700())
        {
          v176 = sub_231215F6C(v251, v171);
          v119 = v236;
          if ((v175 & 1) != (v177 & 1))
          {
            goto LABEL_40;
          }

          v174 = v176;
        }

        else
        {
          v119 = v236;
        }

        v178 = v244;
        v179 = v256;
        if (v175)
        {
          v180 = (*(v256 + 56) + 16 * v174);
          v181 = v180[1];
          *v180 = v252;
          v180[1] = v178;
        }

        else
        {
          OUTLINED_FUNCTION_16_4(v256 + 8 * (v174 >> 6));
          v182 = (v179[6] + 16 * v174);
          v183 = v245;
          *v182 = v251;
          v182[1] = v183;
          v184 = (v179[7] + 16 * v174);
          *v184 = v252;
          v184[1] = v185;
          v186 = v179[2];
          v125 = __OFADD__(v186, 1);
          v187 = v186 + 1;
          if (v125)
          {
            goto LABEL_39;
          }

          v179[2] = v187;
        }

        OUTLINED_FUNCTION_8_6(&v254);
        v188(v240, v118);
        OUTLINED_FUNCTION_8_6(&v246);
        v189(v241, v242);
        sub_2311D1F18(v250, &qword_27DD43728, &qword_23136D548);
        v122 = v248;
        *v247 = v179;
      }
    }

    v123 = v253;
    while (1)
    {
      v124 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v124 >= v120)
      {
        break;
      }

      v121 = *(v119 + 8 * v124);
      ++v123;
      if (v121)
      {
        v253 = v124;
        goto LABEL_10;
      }
    }

    v190 = v223;
    sub_2311D3BBC();
    v256 = 0x5C3F2A2E7B5C245CLL;
    v257 = 0xE90000000000007DLL;
    OUTLINED_FUNCTION_12_3();
    __swift_storeEnumTagSinglePayload(v192, v193, v194, *(v191 - 256));
    OUTLINED_FUNCTION_5_6();
    sub_231207D44(v195, v196);
    sub_231207C1C();
    v197 = v215;
    v198 = v254;
    sub_231366580();
    sub_2311D1F18(v122, &qword_27DD43730, &qword_23136D550);
    OUTLINED_FUNCTION_20_3(v197);
    if (!v141)
    {
      v207 = *v224;
      (*v224)(v198, v118);
      v207(v190, v118);
      v208 = OUTLINED_FUNCTION_10_4();
      v209(v208);
      v210 = OUTLINED_FUNCTION_11_5();
      v211(v210);
      v105 = &qword_27DD43720;
      v106 = &qword_23136D540;
      v107 = v197;
      goto LABEL_34;
    }

    sub_2311D1F18(v197, &qword_27DD43720, &qword_23136D540);
    v199 = v213[6];
    sub_231366440();
    OUTLINED_FUNCTION_14_4(v243);
    sub_231366390();
    v200 = *v224;
    (*v224)(v199, v118);
    sub_231207D44(&qword_27DD43760, MEMORY[0x277CC8B30]);
    v201 = sub_23136A0D0();
    v200(v198, v118);
    v200(v190, v118);
    v202 = OUTLINED_FUNCTION_10_4();
    v203(v202);
    v204 = OUTLINED_FUNCTION_11_5();
    v205(v204);
    v206 = *v247;
    sub_231369EE0();
  }

  return v201;
}

uint64_t sub_2312071D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  a2[5] = 0;
  return result;
}

uint64_t sub_231207214(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23136A8A0();
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
        v6 = sub_23136A230();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_23120738C(v7, v8, a1, v4);
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
    return sub_231207308(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_231207308(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = result - a3;
    v6 = *a4 + 24 * a3;
    while (2)
    {
      v7 = *(v4 + 24 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(*(v8 - 1) + 16) >= *(v7 + 16))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *v8;
        v11 = v8[1];
        *v8 = *(v8 - 3);
        v8[2] = *(v8 - 1);
        *(v8 - 2) = v11;
        *(v8 - 1) = v7;
        *(v8 - 3) = v10;
        v8 -= 3;
      }

      while (!__CFADD__(v9++, 1));
      ++a3;
      --v5;
      v6 += 24;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_23120738C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_90:
      v82 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v82 = i)
      {
        if (!*a3)
        {
          goto LABEL_126;
        }

        v84 = &v8[16 * i];
        v85 = *v84;
        v86 = &v82[2 * i];
        v87 = v86[1];
        sub_231207938((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v92);
        if (v5)
        {
          break;
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (i - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *v82 - i;
        if (*v82 < i)
        {
          goto LABEL_116;
        }

        i = *v82 - 1;
        memmove(v86, v86 + 2, 16 * v88);
      }

LABEL_98:

      return;
    }

LABEL_123:
    v8 = sub_2311E6430(v8);
    goto LABEL_90;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3 + 24 * v7;
      v11 = 24 * v7;
      v12 = *(*(*a3 + 24 * v9 + 16) + 16);
      v13 = *(*(v10 + 16) + 16);
      v14 = (v10 + 64);
      v15 = v7 + 2;
      v16 = v12;
      while (1)
      {
        v17 = v15;
        if (++v9 >= v6)
        {
          break;
        }

        v18 = *v14;
        v14 += 3;
        v19 = (v13 < v12) ^ (v16 >= *(v18 + 16));
        ++v15;
        v16 = *(v18 + 16);
        if ((v19 & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v9 = v6;
LABEL_9:
      if (v13 < v12)
      {
        if (v9 < v7)
        {
          goto LABEL_120;
        }

        if (v7 < v9)
        {
          if (v6 >= v17)
          {
            v6 = v17;
          }

          v20 = 24 * v6;
          v21 = v9;
          v22 = v7;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v24 = (v23 + v11);
              v25 = v23 + v20;
              v26 = *v24;
              v27 = *(v24 + 1);
              v28 = *(v25 - 24);
              v24[2] = *(v25 - 8);
              *v24 = v28;
              *(v25 - 24) = v26;
              *(v25 - 16) = v27;
            }

            ++v22;
            v20 -= 24;
            v11 += 24;
          }

          while (v22 < v21);
          v6 = a3[1];
        }
      }
    }

    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_119;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_36:
    if (v9 < v7)
    {
      goto LABEL_118;
    }

    v91 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = *(v8 + 2);
      sub_23126DB78();
      v8 = v80;
    }

    v38 = *(v8 + 2);
    v39 = v38 + 1;
    if (v38 >= *(v8 + 3) >> 1)
    {
      sub_23126DB78();
      v8 = v81;
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v38 + 32];
    *v41 = v7;
    *(v41 + 1) = v91;
    v92 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        v43 = &v40[16 * v39 - 16];
        v44 = &v8[16 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_56:
          if (v48)
          {
            goto LABEL_105;
          }

          v60 = *v44;
          v59 = *(v44 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_108;
          }

          v64 = *(v43 + 1);
          v65 = v64 - *v43;
          if (__OFSUB__(v64, *v43))
          {
            goto LABEL_111;
          }

          if (__OFADD__(v62, v65))
          {
            goto LABEL_113;
          }

          if (v62 + v65 >= v47)
          {
            if (v47 < v65)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        if (v39 < 2)
        {
          goto LABEL_107;
        }

        v67 = *v44;
        v66 = *(v44 + 1);
        v55 = __OFSUB__(v66, v67);
        v62 = v66 - v67;
        v63 = v55;
LABEL_71:
        if (v63)
        {
          goto LABEL_110;
        }

        v69 = *v43;
        v68 = *(v43 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_112;
        }

        if (v70 < v62)
        {
          goto LABEL_85;
        }

LABEL_78:
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_125;
        }

        v74 = &v40[16 * v42 - 16];
        v75 = *v74;
        v76 = &v40[16 * v42];
        v77 = *(v76 + 1);
        sub_231207938((*a3 + 24 * *v74), (*a3 + 24 * *v76), *a3 + 24 * v77, v92);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v77 < v75)
        {
          goto LABEL_100;
        }

        v5 = v8;
        v8 = *(v8 + 2);
        if (v42 > v8)
        {
          goto LABEL_101;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        if (v42 >= v8)
        {
          goto LABEL_102;
        }

        v39 = (v8 - 1);
        sub_2311E6448(v76 + 16, &v8[-v42 - 1], &v40[16 * v42]);
        *(v5 + 2) = v8 - 1;
        v78 = v8 > 2;
        v8 = v5;
        v5 = 0;
        if (!v78)
        {
          goto LABEL_85;
        }
      }

      v49 = &v40[16 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_103;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_104;
      }

      v56 = *(v44 + 1);
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_106;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_109;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = *(v43 + 1);
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_56;
    }

LABEL_85:
    v6 = a3[1];
    v7 = v91;
    a4 = v89;
    if (v91 >= v6)
    {
      goto LABEL_88;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_121;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v9 == v6)
  {
    goto LABEL_36;
  }

  v29 = *a3;
  v30 = v7 - v9;
  v31 = *a3 + 24 * v9;
LABEL_29:
  v32 = *(v29 + 24 * v9 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(*(v33 - 1) + 16) >= *(v32 + 16))
    {
LABEL_34:
      ++v9;
      --v30;
      v31 += 24;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_36;
      }

      goto LABEL_29;
    }

    if (!v29)
    {
      break;
    }

    v35 = *v33;
    v36 = v33[1];
    *v33 = *(v33 - 3);
    v33[2] = *(v33 - 1);
    *(v33 - 2) = v36;
    *(v33 - 1) = v32;
    *(v33 - 3) = v35;
    v33 -= 3;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_34;
    }
  }

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
}

uint64_t sub_231207938(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_231270E08(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(*(v4 + 2) + 16) >= *(*(v6 + 2) + 16))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  sub_231270E08(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(*(v6 - 1) + 16) < *(*(v10 - 1) + 16))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

uint64_t sub_231207AF0(void *a1)
{
  v1 = [a1 parameterValueToSet];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231369FD0();

  return v3;
}

uint64_t sub_231207B54(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_231369EE0();

    return sub_231369EE0();
  }

  return result;
}

uint64_t sub_231207B98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_231207BDC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_231207C1C()
{
  result = qword_280F7C880;
  if (!qword_280F7C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F7C880);
  }

  return result;
}

uint64_t sub_231207C70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43728, &qword_23136D548);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_231207CE0()
{
  result = qword_27DD43748;
  if (!qword_27DD43748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD43728, &qword_23136D548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD43748);
  }

  return result;
}

uint64_t sub_231207D44(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_231207DB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_231207DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *TrialTriggerLoggerProvider.getTriggerLogger()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TrialTriggerLogger();
  v3 = swift_allocObject();
  result = TrialTriggerLogger.init()();
  a1[3] = v2;
  a1[4] = &protocol witness table for TrialTriggerLogger;
  *a1 = v3;
  return result;
}

uint64_t TrialTriggerLogger.__allocating_init()()
{
  OUTLINED_FUNCTION_9_5();
  v0 = swift_allocObject();
  TrialTriggerLogger.init()();
  return v0;
}

uint64_t NoOpTriggerLogger.cacheTrialExperimentIdentifiers()()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  OUTLINED_FUNCTION_3_3();
  v0[3] = v3;
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_231207FD4()
{
  v1 = v0[4];
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "This is a no-op cacheTrialExperimentIdentifiers");
    OUTLINED_FUNCTION_29();
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t NoOpTriggerLogger.emitTriggerFromCache(requestID:)()
{
  OUTLINED_FUNCTION_8();
  v1 = sub_2313698C0();
  v0[2] = v1;
  v2 = *(v1 - 8);
  OUTLINED_FUNCTION_3_3();
  v0[3] = v3;
  v5 = *(v4 + 64);
  v0[4] = OUTLINED_FUNCTION_43();
  v6 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_23120815C()
{
  v1 = v0[4];
  sub_231369100();
  v2 = sub_2313698A0();
  v3 = sub_23136A3A0();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_57(&dword_2311CB000, v4, v5, "This is a no-op emitTriggerFromCache");
    OUTLINED_FUNCTION_29();
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_56_0();

  return v9();
}

uint64_t sub_231208258()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_231209AAC;

  return NoOpTriggerLogger.cacheTrialExperimentIdentifiers()();
}

uint64_t sub_2312082E4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2311D05C8;

  return NoOpTriggerLogger.emitTriggerFromCache(requestID:)();
}

uint64_t sub_231208370(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277CE4830] + 4);
  v10 = (*MEMORY[0x277CE4830] + MEMORY[0x277CE4830]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2311D05C8;

  return v10(a1, a2);
}

uint64_t sub_23120842C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x277CE4838] + 4);
  v10 = (*MEMORY[0x277CE4838] + MEMORY[0x277CE4838]);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_231209AAC;

  return v10(a1, a2);
}

uint64_t sub_2312084E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD43768, &qword_23136D5F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v7 - v2;
  v4 = sub_2313667A0();
  __swift_allocate_value_buffer(v4, qword_280F8E660);
  v5 = __swift_project_value_buffer(v4, qword_280F8E660);
  sub_231366760();
  result = __swift_getEnumTagSinglePayload(v3, 1, v4);
  if (result != 1)
  {
    return (*(*(v4 - 8) + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

void *TrialTriggerLogger.init()()
{
  v1 = sub_231369830();
  v2 = [objc_allocWithZone(v1) init];
  v0[5] = v1;
  v0[6] = &protocol witness table for ExperimentationAnalyticsManager;
  v0[2] = v2;
  return v0;
}

uint64_t TrialTriggerLogger.__allocating_init(manager:)(__int128 *a1)
{
  OUTLINED_FUNCTION_9_5();
  v2 = swift_allocObject();
  sub_2311D38A8(a1, v2 + 16);
  return v2;
}

uint64_t TrialTriggerLogger.cacheTrialExperimentIdentifiers()()
{
  OUTLINED_FUNCTION_8();
  v1[11] = v0;
  v2 = sub_2313698C0();
  v1[12] = v2;
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_3_3();
  v1[13] = v4;
  v6 = *(v5 + 64);
  v1[14] = OUTLINED_FUNCTION_43();
  v7 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_231208748()
{
  sub_2311CF324(v0[11] + 16, (v0 + 2));
  v23 = v0[6];
  v24 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v24);
  if (qword_280F82FD0 != -1)
  {
    OUTLINED_FUNCTION_4_4();
  }

  v1 = sub_2313667A0();
  __swift_project_value_buffer(v1, qword_280F8E660);
  v22 = sub_231366780();
  v0[15] = v22;
  v25 = MEMORY[0x277D84F90];
  sub_2311F4E34();
  v2 = 0;
  v3 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_A";
  v4 = "SIRI_SUGGESTIONS_DOMAIN_GROUP_B";
  v5 = 0xD000000000000019;
  v6 = "SIRI_SUGGESTIONS_PLATFORM";
  do
  {
    v7 = &unk_23137A540;
    v8 = 0xD00000000000001FLL;
    switch(*(&unk_2845F1028 + v2 + 32))
    {
      case 1:
        v7 = v3;
        break;
      case 2:
        v8 = v5;
        v7 = v4;
        break;
      case 3:
        v8 = 0xD00000000000001ALL;
        v7 = v6;
        break;
      default:
        break;
    }

    v9 = *(v25 + 16);
    if (v9 >= *(v25 + 24) >> 1)
    {
      v19 = v4;
      v20 = v3;
      v17 = v6;
      v18 = v5;
      sub_2311F4E34();
      v6 = v17;
      v5 = v18;
      v4 = v19;
      v3 = v20;
    }

    v0[16] = v25;
    ++v2;
    *(v25 + 16) = v9 + 1;
    v10 = v25 + 16 * v9;
    *(v10 + 32) = v8;
    *(v10 + 40) = v7 | 0x8000000000000000;
  }

  while (v2 != 4);
  v11 = *(v23 + 16);
  OUTLINED_FUNCTION_3_3();
  v21 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v0[17] = v15;
  *v15 = v0;
  OUTLINED_FUNCTION_34_0(v15);

  return v21(v22, v25, v24, v23);
}