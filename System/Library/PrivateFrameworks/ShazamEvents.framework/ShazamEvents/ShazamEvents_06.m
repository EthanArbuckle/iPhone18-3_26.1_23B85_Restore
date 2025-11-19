char *sub_1E105A858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A870, &qword_1E10B6AA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105A964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A890, &qword_1E10B6AD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105AA70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8A8, &qword_1E10B6B00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105AB90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8B8, &qword_1E10B6B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E105ACB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A8C8, &qword_1E10B6B30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E105ADBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7F0, &qword_1E10B6A10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BC14();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v13 = v18;
  v21 = 1;
  sub_1E10582A4();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v17 = v18;
  v14 = v19;
  v15 = v20;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v13;
  *(a2 + 16) = v17;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1E105AFC0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AAB8, &qword_1E10B72E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105C7EC();
  sub_1E10AEA3C();
  if (!v1)
  {
    v14 = 0;
    v10 = sub_1E10AE7BC();
    v13 = 1;
    sub_1E10AE78C();
    (*(v4 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t sub_1E105B1A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7C8, &qword_1E10B6A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BB18();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v13 = sub_1E10AE78C();
  v15 = v14;
  v16 = v13;
  v24 = 1;
  sub_1E105BB6C();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v20 = v21;
  v17 = v22;
  v18 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v20;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  return result;
}

uint64_t sub_1E105B394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E10C0110 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7300455 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E105B4F8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A7B0, &qword_1E10B69F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v26 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BAC4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31) = 0;
  sub_1E0FF4EE4();
  sub_1E10AE7FC();
  v13 = v35;
  v30 = v36;
  LOBYTE(v35) = 1;
  v14 = sub_1E10AE78C();
  v29 = v15;
  v27 = v14;
  v28 = v13;
  LOBYTE(v31) = 2;
  sub_1E10AE7FC();
  v16 = v36;
  v26 = v35;
  v43 = 3;
  sub_1E10347B0();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v17 = v42;
  v18 = v28;
  v19 = v30;
  *&v31 = v28;
  *(&v31 + 1) = v30;
  v20 = v27;
  v21 = v29;
  *&v32 = v27;
  *(&v32 + 1) = v29;
  v22 = v26;
  *&v33 = v26;
  *(&v33 + 1) = v16;
  v34 = v42;
  sub_1E10585EC(&v31, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35 = v18;
  v36 = v19;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v16;
  v41 = v17;
  result = sub_1E1058224(&v35);
  v24 = v32;
  *a2 = v31;
  a2[1] = v24;
  v25 = v34;
  a2[2] = v33;
  a2[3] = v25;
  return result;
}

uint64_t sub_1E105B868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A798, &qword_1E10B69E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v20 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105BA70();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v21) = 0;
  v13 = sub_1E10AE7BC();
  v15 = v14;
  v16 = v13;
  v24 = 1;
  sub_1E10582A4();
  sub_1E10AE7FC();
  (*(v6 + 8))(v11, v5);
  v20 = v21;
  v17 = v22;
  v18 = v23;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v16;
  *(a2 + 8) = v15;
  *(a2 + 16) = v20;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  return result;
}

unint64_t sub_1E105BA70()
{
  result = qword_1ECE8A7A0;
  if (!qword_1ECE8A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7A0);
  }

  return result;
}

unint64_t sub_1E105BAC4()
{
  result = qword_1ECE8A7B8;
  if (!qword_1ECE8A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7B8);
  }

  return result;
}

unint64_t sub_1E105BB18()
{
  result = qword_1ECE8A7D0;
  if (!qword_1ECE8A7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7D0);
  }

  return result;
}

unint64_t sub_1E105BB6C()
{
  result = qword_1ECE8A7D8;
  if (!qword_1ECE8A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7D8);
  }

  return result;
}

unint64_t sub_1E105BBC0()
{
  result = qword_1ECE8A7E8;
  if (!qword_1ECE8A7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7E8);
  }

  return result;
}

unint64_t sub_1E105BC14()
{
  result = qword_1ECE8A7F8;
  if (!qword_1ECE8A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8A7F8);
  }

  return result;
}

uint64_t sub_1E105BC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E105BCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E105BD38(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E105BDD4()
{
  result = sub_1E10ADCBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PartialEventResource.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PartialEventResource.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E105BFEC()
{
  result = qword_1ECE8AA40;
  if (!qword_1ECE8AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA40);
  }

  return result;
}

unint64_t sub_1E105C044()
{
  result = qword_1ECE8AA48;
  if (!qword_1ECE8AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA48);
  }

  return result;
}

unint64_t sub_1E105C09C()
{
  result = qword_1ECE8AA50;
  if (!qword_1ECE8AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA50);
  }

  return result;
}

unint64_t sub_1E105C0F4()
{
  result = qword_1ECE8AA58;
  if (!qword_1ECE8AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA58);
  }

  return result;
}

unint64_t sub_1E105C14C()
{
  result = qword_1ECE8AA60;
  if (!qword_1ECE8AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA60);
  }

  return result;
}

unint64_t sub_1E105C1A4()
{
  result = qword_1ECE8AA68;
  if (!qword_1ECE8AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA68);
  }

  return result;
}

unint64_t sub_1E105C1FC()
{
  result = qword_1ECE8AA70;
  if (!qword_1ECE8AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA70);
  }

  return result;
}

unint64_t sub_1E105C254()
{
  result = qword_1ECE8AA78;
  if (!qword_1ECE8AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA78);
  }

  return result;
}

unint64_t sub_1E105C2AC()
{
  result = qword_1ECE8AA80;
  if (!qword_1ECE8AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA80);
  }

  return result;
}

unint64_t sub_1E105C304()
{
  result = qword_1ECE8AA88;
  if (!qword_1ECE8AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA88);
  }

  return result;
}

unint64_t sub_1E105C35C()
{
  result = qword_1ECE8AA90;
  if (!qword_1ECE8AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA90);
  }

  return result;
}

unint64_t sub_1E105C3B4()
{
  result = qword_1ECE8AA98;
  if (!qword_1ECE8AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AA98);
  }

  return result;
}

unint64_t sub_1E105C40C()
{
  result = qword_1ECE8AAA0;
  if (!qword_1ECE8AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAA0);
  }

  return result;
}

unint64_t sub_1E105C464()
{
  result = qword_1ECE8AAA8;
  if (!qword_1ECE8AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAA8);
  }

  return result;
}

unint64_t sub_1E105C4BC()
{
  result = qword_1ECE8AAB0;
  if (!qword_1ECE8AAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAB0);
  }

  return result;
}

uint64_t sub_1E105C510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E694B627573 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73747369747261 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74697465706D6F63 && a2 == 0xEB0000000073726FLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E10C00F0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1E105C7EC()
{
  result = qword_1ECE8AAC0;
  if (!qword_1ECE8AAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAC0);
  }

  return result;
}

unint64_t sub_1E105C840()
{
  result = qword_1EE17F3D8[0];
  if (!qword_1EE17F3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17F3D8);
  }

  return result;
}

unint64_t sub_1E105C8B8()
{
  result = qword_1ECE8AAE0;
  if (!qword_1ECE8AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAE0);
  }

  return result;
}

unint64_t sub_1E105C910()
{
  result = qword_1ECE8AAE8;
  if (!qword_1ECE8AAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAE8);
  }

  return result;
}

unint64_t sub_1E105C968()
{
  result = qword_1EE17F3C8;
  if (!qword_1EE17F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F3C8);
  }

  return result;
}

unint64_t sub_1E105C9C0()
{
  result = qword_1EE17F3D0;
  if (!qword_1EE17F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17F3D0);
  }

  return result;
}

unint64_t sub_1E105CA18()
{
  result = qword_1ECE8AAF0;
  if (!qword_1ECE8AAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAF0);
  }

  return result;
}

unint64_t sub_1E105CA70()
{
  result = qword_1ECE8AAF8;
  if (!qword_1ECE8AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AAF8);
  }

  return result;
}

uint64_t Ticket.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Ticket.vendor.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Ticket.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Ticket() + 24);
  v4 = sub_1E10ADBBC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Ticket()
{
  result = qword_1EE17E818;
  if (!qword_1EE17E818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E105CC00()
{
  v1 = 0x726F646E6576;
  if (*v0 != 1)
  {
    v1 = 7107189;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1E105CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E105DAD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E105CC6C(uint64_t a1)
{
  v2 = sub_1E105CFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E105CCA8(uint64_t a1)
{
  v2 = sub_1E105CFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static Ticket.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Ticket() + 24);

  return sub_1E10ADB8C();
}

uint64_t Ticket.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB00, &qword_1E10B7510);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E105CFB4();
  sub_1E10AEA5C();
  v13 = v3[1];
  v19 = *v3;
  v20 = v13;
  v18[15] = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v19) = 1;
    sub_1E10AE86C();
    v17 = *(type metadata accessor for Ticket() + 24);
    LOBYTE(v19) = 2;
    sub_1E10ADBBC();
    sub_1E105D8C8(&qword_1ECE88CC0, MEMORY[0x1E6968FB0]);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

unint64_t sub_1E105CFB4()
{
  result = qword_1ECE8AB08;
  if (!qword_1ECE8AB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB08);
  }

  return result;
}

uint64_t Ticket.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v5 = *(type metadata accessor for Ticket() + 24);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  return sub_1E10ADFFC();
}

uint64_t Ticket.hashValue.getter()
{
  sub_1E10AE9CC();
  v1 = *v0;
  v2 = v0[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v3 = v0[2];
  v4 = v0[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v5 = *(type metadata accessor for Ticket() + 24);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t Ticket.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = sub_1E10ADBBC();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB10, &qword_1E10B7518);
  v35 = *(v37 - 8);
  v10 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v32 - v13;
  v15 = type metadata accessor for Ticket();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[3];
  v22 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1E105CFB4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v33 = v20;
  v23 = v9;
  v24 = v35;
  v25 = v36;
  v41 = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v26 = v40;
  v27 = v33;
  *v33 = v39;
  v27[1] = v26;
  v32[1] = v26;
  LOBYTE(v39) = 1;
  v27[2] = sub_1E10AE7BC();
  v27[3] = v28;
  LOBYTE(v39) = 2;
  sub_1E105D8C8(&qword_1ECE88D38, MEMORY[0x1E6968FB0]);
  v32[0] = v23;
  v29 = v37;
  sub_1E10AE7FC();
  (*(v24 + 8))(v14, v29);
  v30 = v33;
  (*(v25 + 32))(v33 + *(v15 + 24), v32[0], v4);
  sub_1E105D7C0(v30, v34);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_1E105D824(v30);
}

uint64_t sub_1E105D4F0(uint64_t a1)
{
  sub_1E10AE9CC();
  v3 = *v1;
  v4 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v5 = v1[2];
  v6 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v7 = *(a1 + 24);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E105D5A4(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = v2[2];
  v7 = v2[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v8 = *(a2 + 24);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  return sub_1E10ADFFC();
}

uint64_t sub_1E105D63C(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  v4 = *v2;
  v5 = v2[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v6 = v2[2];
  v7 = v2[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v8 = *(a2 + 24);
  sub_1E10ADBBC();
  sub_1E105D8C8(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
  sub_1E10ADFFC();
  return sub_1E10AEA0C();
}

uint64_t sub_1E105D71C(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);

  return sub_1E10ADB8C();
}

uint64_t sub_1E105D7C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Ticket();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E105D824(uint64_t a1)
{
  v2 = type metadata accessor for Ticket();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E105D8C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E105D938()
{
  result = sub_1E10ADBBC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E105D9D0()
{
  result = qword_1ECE8AB20;
  if (!qword_1ECE8AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB20);
  }

  return result;
}

unint64_t sub_1E105DA28()
{
  result = qword_1ECE8AB28;
  if (!qword_1ECE8AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB28);
  }

  return result;
}

unint64_t sub_1E105DA80()
{
  result = qword_1ECE8AB30;
  if (!qword_1ECE8AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB30);
  }

  return result;
}

uint64_t sub_1E105DAD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F646E6576 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1E105DBF4()
{
  result = qword_1ECE8AB38;
  if (!qword_1ECE8AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB38);
  }

  return result;
}

uint64_t sub_1E105DC58(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_1E10ADD4C();
  v2[16] = v3;
  v4 = *(v3 - 8);
  v2[17] = v4;
  v5 = *(v4 + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = sub_1E10ADD9C();
  v2[19] = v6;
  v7 = *(v6 - 8);
  v2[20] = v7;
  v8 = *(v7 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105DD80, 0, 0);
}

uint64_t sub_1E105DD80()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v2 = swift_task_alloc();
  *(v0 + 184) = v2;
  *v2 = v0;
  v2[1] = sub_1E105DE20;

  return sub_1E1060714(v1);
}

uint64_t sub_1E105DE20(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[10] = v3;
  v5[11] = a1;
  v5[12] = a2;
  v5[13] = v2;
  v6 = v4[23];
  v7 = *v3;
  v5[24] = a2;

  if (v2)
  {
    v9 = v5[21];
    v8 = v5[22];
    v10 = v5[18];

    v11 = v7[1];

    return v11();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105DF8C, 0, 0);
  }
}

uint64_t sub_1E105DF8C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 120), *(*(v0 + 120) + 24));
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_1E105E02C;

  return sub_1E1061E28(v1);
}

uint64_t sub_1E105E02C(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 200);
  v5 = *v3;
  v5[26] = a1;
  v5[27] = a2;

  if (v2)
  {
    v6 = v5[24];

    v8 = v5[21];
    v7 = v5[22];
    v9 = v5[18];

    v10 = v5[1];

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105E190, 0, 0);
  }
}

uint64_t sub_1E105E190()
{
  v30 = v0[26];
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v28 = v0[27];
  v29 = v3;
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = 1735287148;
  *(inited + 40) = 0xE400000000000000;
  sub_1E10ADD5C();
  sub_1E10AC394(v1);
  v9 = *(v4 + 8);
  v9(v2, v3);
  (*(v5 + 104))(v6, *MEMORY[0x1E6969640], v7);
  v10 = sub_1E10ADD1C();
  v12 = v11;
  (*(v5 + 8))(v6, v7);
  v9(v1, v29);
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  v13 = sub_1E1017200(inited);
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &unk_1ECE8B230, &qword_1E10B78A8);
  v14 = v0[27];
  if (!v30 && v28 == 0xE000000000000000)
  {
    goto LABEL_5;
  }

  v15 = v0[26];
  v16 = sub_1E10AE8FC();
  v17 = v0[27];
  if (v16)
  {
    v18 = v0[27];
LABEL_5:

    v19 = 0;
    v17 = 0;
    goto LABEL_7;
  }

  v19 = v0[26];
LABEL_7:
  v20 = v0[24];
  v21 = v0[11];
  v23 = v0[21];
  v22 = v0[22];
  v24 = v0[18];
  v25 = v0[14];

  *v25 = v21;
  v25[1] = v20;
  v25[2] = v19;
  v25[3] = v17;
  v25[4] = v13;
  v26 = v0[1];

  return v26();
}

uint64_t sub_1E105E3BC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t sub_1E105E468(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_1E10ADE9C() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1E10ADEBC();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105E58C, 0, 0);
}

uint64_t sub_1E105E58C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1E105E62C;

  return sub_1E1060F8C(v1);
}

uint64_t sub_1E105E62C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v9 = sub_1E105E92C;
  }

  else
  {
    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v9 = sub_1E105E760;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E105E760()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  sub_1E10ADBAC();

  v4 = sub_1E10ADBBC();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    v9 = v0[4];
    sub_1E0FF0440(v0[8], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v8 + 8))(v6, v7);
    swift_willThrow();
    v11 = v0[7];
    v10 = v0[8];
    v12 = v0[4];
  }

  else
  {
    v14 = v0[7];
    v15 = v0[4];
    (*(v5 + 32))(v0[2], v0[8], v4);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E105E92C()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E105E9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[40] = a3;
  v4[41] = v3;
  v4[38] = a1;
  v4[39] = a2;
  v5 = *(*(sub_1E10ADE9C() - 8) + 64) + 15;
  v4[42] = swift_task_alloc();
  v6 = sub_1E10ADEBC();
  v4[43] = v6;
  v7 = *(v6 - 8);
  v4[44] = v7;
  v8 = *(v7 + 64) + 15;
  v4[45] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v4[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105EAD4, 0, 0);
}

uint64_t sub_1E105EAD4()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
  v2 = swift_task_alloc();
  *(v0 + 376) = v2;
  *v2 = v0;
  v2[1] = sub_1E105EB74;

  return sub_1E1060034(v1);
}

uint64_t sub_1E105EB74(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 376);
  v5 = *v3;
  v5[48] = a1;
  v5[49] = a2;

  if (v2)
  {
    v7 = v5[45];
    v6 = v5[46];
    v8 = v5[42];

    v9 = v5[1];

    return v9();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105ECD0, 0, 0);
  }
}

uint64_t sub_1E105ECD0()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 328), *(*(v0 + 328) + 24));
  v2 = swift_task_alloc();
  *(v0 + 400) = v2;
  *v2 = v0;
  v2[1] = sub_1E105ED70;

  return sub_1E1061340(v1);
}

uint64_t sub_1E105ED70(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 400);
  v5 = *v3;
  v5[51] = a1;
  v5[52] = a2;

  if (v2)
  {
    v6 = v5[49];

    v8 = v5[45];
    v7 = v5[46];
    v9 = v5[42];

    v10 = v5[1];

    return v10();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105EED4, 0, 0);
  }
}

uint64_t sub_1E105EED4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  v0[53] = inited;
  *(inited + 16) = xmmword_1E10B0870;
  *(inited + 32) = 0x6F726665726F7473;
  *(inited + 40) = 0xEA0000000000746ELL;
  v2 = [objc_allocWithZone(MEMORY[0x1E69CDFE8]) init];
  v0[54] = v2;
  v0[2] = v0;
  v0[7] = v0 + 35;
  v0[3] = sub_1E105F054;
  v3 = swift_continuation_init();
  v0[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB60, &qword_1E10B78A0);
  v0[22] = MEMORY[0x1E69E9820];
  v0[23] = 1107296256;
  v0[24] = sub_1E105FFCC;
  v0[25] = &block_descriptor_30;
  v0[26] = v3;
  [v2 storefrontCountryCode_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E105F054()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E105F134, 0, 0);
}

uint64_t sub_1E105F134()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[35];
  v6 = v0[36];
  v7 = sub_1E10AE07C();
  v9 = v8;

  v1[6] = v7;
  v1[7] = v9;
  v1[8] = 0x64695F746E657665;
  v1[9] = 0xE800000000000000;
  v1[10] = v4;
  v1[11] = v3;

  v10 = sub_1E1017200(v1);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  v0[37] = v10;
  v11 = sub_1E1062A58();
  if (v12)
  {
    sub_1E1074334(v11, v12, 1735287148, 0xE400000000000000);
    v10 = v0[37];
  }

  if (!v0[51] && v0[52] == 0xE000000000000000)
  {
    goto LABEL_7;
  }

  v13 = sub_1E10AE8FC();
  v14 = v0[52];
  if (v13)
  {
    v15 = v0[52];
LABEL_7:

    v16 = 0;
    v14 = 0;
    goto LABEL_9;
  }

  v16 = v0[51];
LABEL_9:
  v17 = v0[49];
  v18 = v0[46];
  v0[30] = v0[48];
  v0[31] = v17;
  v0[32] = v16;
  v0[33] = v14;
  v0[34] = v10;
  sub_1E1081D8C(v18);

  v19 = sub_1E10ADBBC();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v18, 1, v19);
  v22 = v0[45];
  v23 = v0[46];
  if (v21 == 1)
  {
    v24 = v0[43];
    v25 = v0[44];
    v26 = v0[42];
    sub_1E0FF0440(v0[46], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v25 + 8))(v22, v24);
    swift_willThrow();
    v28 = v0[45];
    v27 = v0[46];
    v29 = v0[42];
  }

  else
  {
    v31 = v0[42];
    (*(v20 + 32))(v0[38], v0[46], v19);
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_1E105F41C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(sub_1E10ADE9C() - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_1E10ADEBC();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB40, &unk_1E10B7850) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_1E10ADB2C();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v13 = sub_1E10ADBBC();
  v3[16] = v13;
  v14 = *(v13 - 8);
  v3[17] = v14;
  v15 = *(v14 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E105F64C, 0, 0);
}

uint64_t sub_1E105F64C()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1E105F6EC;

  return sub_1E1060BD8(v1);
}

uint64_t sub_1E105F6EC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 152);
  v5 = *v3;
  v5[20] = a1;
  v5[21] = a2;

  if (v2)
  {
    v6 = v5[18];
    v8 = v5[14];
    v7 = v5[15];
    v10 = v5[12];
    v9 = v5[13];
    v12 = v5[8];
    v11 = v5[9];
    v13 = v5[5];

    v14 = v5[1];

    return v14();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E105F894, 0, 0);
  }
}

uint64_t sub_1E105F894()
{
  v1 = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_1E105F934;

  return sub_1E10622E4(v1);
}

uint64_t sub_1E105F934(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 176);
  v8 = *v3;

  if (v2)
  {
    v9 = v6[21];

    v10 = v6[18];
    v12 = v6[14];
    v11 = v6[15];
    v14 = v6[12];
    v13 = v6[13];
    v16 = v6[8];
    v15 = v6[9];
    v17 = v6[5];

    v18 = *(v8 + 8);

    return v18();
  }

  else
  {
    v6[23] = a2;
    v6[24] = a1;

    return MEMORY[0x1EEE6DFA0](sub_1E105FAEC, 0, 0);
  }
}

uint64_t sub_1E105FAEC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  sub_1E10ADBAC();

  sub_1E10ADB9C();

  sub_1E0FF0440(v8, &qword_1ECE88C78, &qword_1E10B5E50);
  v9 = *(v6 + 48);
  if (v9(v7, 1, v5) == 1)
  {
    v10 = v0[15];
    v11 = &qword_1ECE88C78;
    v12 = &qword_1E10B5E50;
LABEL_5:
    sub_1E0FF0440(v10, v11, v12);
    v19 = v0[7];
    v18 = v0[8];
    v20 = v0[5];
    v21 = v0[6];
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v19 + 8))(v18, v21);
    swift_willThrow();
LABEL_6:
    v22 = v0[18];
    v24 = v0[14];
    v23 = v0[15];
    v26 = v0[12];
    v25 = v0[13];
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[5];

    v30 = v0[1];
    goto LABEL_7;
  }

  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[9];
  v16 = *(v0[17] + 32);
  v16(v0[18], v0[15], v0[16]);
  sub_1E10ADB0C();
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    v17 = v0[9];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v11 = &qword_1ECE8AB40;
    v12 = &unk_1E10B7850;
    v10 = v17;
    goto LABEL_5;
  }

  v57 = v0[16];
  v32 = v0[13];
  v33 = v0[3];
  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB48, &qword_1E10B7870);
  v34 = *(sub_1E10ADAEC() - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  *(swift_allocObject() + 16) = xmmword_1E10B2E70;
  v37 = *v33;
  v38 = v33[1];
  sub_1E10ADADC();
  sub_1E10ADAFC();
  sub_1E10ADB1C();
  v39 = v9(v32, 1, v57);
  v40 = v0[5];
  if (v39 == 1)
  {
    v41 = v0[17];
    v56 = v0[16];
    v58 = v0[18];
    v42 = v0[12];
    v44 = v0[10];
    v43 = v0[11];
    v46 = v0[7];
    v45 = v0[8];
    v47 = v0[6];
    sub_1E0FF0440(v0[13], &qword_1ECE88C78, &qword_1E10B5E50);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v46 + 8))(v45, v47);
    swift_willThrow();
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v58, v56);
    goto LABEL_6;
  }

  v49 = v0[17];
  v48 = v0[18];
  v50 = v0[16];
  v51 = v0[13];
  v54 = v0[15];
  v55 = v0[14];
  v52 = v0[9];
  v59 = v0[8];
  v53 = v0[2];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v49 + 8))(v48, v50);
  v16(v53, v51, v50);

  v30 = v0[1];
LABEL_7:

  return v30();
}

uint64_t sub_1E105FFCC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v2 = sub_1E10AE05C();
  v3 = *(*(v1 + 64) + 40);
  *v3 = v2;
  v3[1] = v4;

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1E1060054()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[3] = sub_1E1060168;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_38;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1060168()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1E1060564;
  }

  else
  {
    v3 = sub_1E1060278;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1060278()
{
  v1 = v0[28];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[30] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E10603E4;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1060640;
  v0[21] = &block_descriptor_41;
  v0[22] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E10603E4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1E10605D0;
  }

  else
  {
    v3 = sub_1E10604F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E10604F4()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1E1060564()
{
  v1 = *(v0 + 232);
  swift_willThrow();
  v2 = *(v0 + 232);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E10605D0()
{
  v1 = v0[30];
  v2 = v0[31];
  swift_willThrow();

  v3 = v0[31];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1E1060640(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F88, &qword_1E10B07B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1E10AE05C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1E1060734()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[3] = sub_1E1060848;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_69;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1060848()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1E1062D70;
  }

  else
  {
    v3 = sub_1E1060958;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1060958()
{
  v1 = v0[28];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[30] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E1060AC8;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1060640;
  v0[21] = &block_descriptor_72;
  v0[22] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E1060AC8()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_1E1062D6C;
  }

  else
  {
    v3 = sub_1E1062D60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1060BF8()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[3] = sub_1E1060D0C;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_21_0;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1060D0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1E1062D70;
  }

  else
  {
    v3 = sub_1E1060E1C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1060E1C()
{
  v1 = v0[28];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[30] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E1060AC8;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1060640;
  v0[21] = &block_descriptor_24;
  v0[22] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E1060FAC()
{
  v1 = v0[28];
  v0[2] = v0;
  v0[3] = sub_1E10610C0;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89150, &qword_1E10B1490);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E105E3BC;
  v0[21] = &block_descriptor_55;
  v0[22] = v2;
  [v1 loadBaseDictionary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E10610C0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1E1062D70;
  }

  else
  {
    v3 = sub_1E10611D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E10611D0()
{
  v1 = v0[28];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[30] = v3;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_1E1060AC8;
  v4 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1E1060640;
  v0[21] = &block_descriptor_58;
  v0[22] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1E1061360()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_34;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E10614D4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1E1062D68;
  }

  else
  {
    v3 = sub_1E1062D64;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1061604()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_80;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1061794()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E1061908;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_84;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1061908()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1E1061A88;
  }

  else
  {
    v3 = sub_1E1061A18;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E1061A18()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1E1061A88()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[22];

  return v3();
}

uint64_t sub_1E1061B18()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_88;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1061CB0()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_76;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1061E48()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_65;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1061FD4()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_49;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E106216C()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_45;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E1062304()
{
  v1 = v0[20];
  v2 = sub_1E10AE04C();
  sub_1E10AE05C();
  v3 = sub_1E10AE04C();
  v0[21] = v3;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E10614D4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB50, &qword_1E10B7878);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E1060640;
  v0[13] = &block_descriptor_2;
  v0[14] = v4;
  [v1 stringForKey:v3 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

id sub_1E1062474()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69CDFD8]);
  v1 = sub_1E10AE04C();
  v2 = sub_1E10AE04C();
  v3 = sub_1E10AE04C();
  v4 = [v0 initWithBaseDictionaryKey:v1 profile:v2 profileVersion:v3];

  v5 = sub_1E10AE04C();
  sub_1E1062A0C();
  v6 = sub_1E10AE4AC();
  [v4 addBagKey:v5 defaultValue:v6];

  v7 = sub_1E10AE04C();
  v8 = sub_1E10AE4AC();
  [v4 addBagKey:v7 defaultValue:v8];

  v9 = sub_1E10AE04C();
  v10 = sub_1E10AE4AC();
  [v4 addBagKey:v9 defaultValue:v10];

  v11 = sub_1E10AE04C();
  v12 = sub_1E10AE4AC();
  [v4 addBagKey:v11 defaultValue:v12];

  v13 = sub_1E10AE04C();
  v14 = sub_1E10AE4AC();
  [v4 addBagKey:v13 defaultValue:v14];

  v15 = sub_1E10AE04C();
  v16 = sub_1E10AE4AC();
  [v4 addBagKey:v15 defaultValue:v16];

  v17 = sub_1E10AE04C();
  v18 = sub_1E10AE4AC();
  [v4 addBagKey:v17 defaultValue:v18];

  v19 = sub_1E10AE04C();
  v20 = sub_1E10AE4AC();
  [v4 addBagKey:v19 defaultValue:v20];

  v21 = sub_1E10AE04C();
  v22 = sub_1E10AE4AC();
  [v4 addBagKey:v21 defaultValue:v22];

  v23 = sub_1E10AE04C();
  v24 = sub_1E10AE4AC();
  [v4 addBagKey:v23 defaultValue:v24];

  v25 = sub_1E10AE04C();
  v26 = sub_1E10AE4AC();
  [v4 addBagKey:v25 defaultValue:v26];

  v27 = sub_1E10AE04C();
  v28 = sub_1E10AE4AC();
  [v4 addBagKey:v27 defaultValue:v28];

  v29 = sub_1E10AE04C();
  v30 = sub_1E10AE4AC();
  [v4 addBagKey:v29 defaultValue:v30];

  return v4;
}

unint64_t sub_1E106299C()
{
  result = qword_1ECE8B240;
  if (!qword_1ECE8B240)
  {
    sub_1E10ADEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B240);
  }

  return result;
}

unint64_t sub_1E1062A0C()
{
  result = qword_1EE17E408;
  if (!qword_1EE17E408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE17E408);
  }

  return result;
}

uint64_t sub_1E1062A58()
{
  v0 = sub_1E10ADD7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E10ADD9C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB68, &qword_1E10B78B0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v23 - v17;
  sub_1E10ADD5C();
  sub_1E10ADD8C();
  (*(v8 + 8))(v13, v7);
  sub_1E10ADD6C();
  (*(v1 + 8))(v6, v0);
  v19 = sub_1E10ADD3C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1E0FF0440(v18, &qword_1ECE8AB68, &qword_1E10B78B0);
    return 0;
  }

  else
  {
    v22 = sub_1E10ADD2C();
    (*(v20 + 8))(v18, v19);
    return v22;
  }
}

uint64_t sub_1E1062D84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16[0] = a4;
  v16[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB80, &qword_1E10B7A00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v16 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10631C4();
  sub_1E10AEA5C();
  v18 = 0;
  sub_1E10AE86C();
  if (!v5)
  {
    v17 = 1;
    sub_1E10AE86C();
  }

  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1E1062F18(uint64_t a1)
{
  v2 = sub_1E10631C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1062F54(uint64_t a1)
{
  v2 = sub_1E10631C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1062F90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E1062FE0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1E1062FE0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB70, &qword_1E10B79F8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10631C4();
  sub_1E10AEA3C();
  if (!v1)
  {
    v14 = 0;
    v10 = sub_1E10AE7BC();
    v13 = 1;
    sub_1E10AE7BC();
    (*(v4 + 8))(v9, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1E10631C4()
{
  result = qword_1ECE8AB78;
  if (!qword_1ECE8AB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB78);
  }

  return result;
}

unint64_t sub_1E106322C()
{
  result = qword_1ECE8AB88;
  if (!qword_1ECE8AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB88);
  }

  return result;
}

unint64_t sub_1E1063284()
{
  result = qword_1ECE8AB90;
  if (!qword_1ECE8AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB90);
  }

  return result;
}

unint64_t sub_1E10632DC()
{
  result = qword_1ECE8AB98;
  if (!qword_1ECE8AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AB98);
  }

  return result;
}

uint64_t sub_1E1063330(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1063378(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E10633D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ABB0, &qword_1E10B7BC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1063BBC();
  sub_1E10AEA5C();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v20) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v15 = *(v3 + 2);
    v20 = *(v3 + 1);
    v21 = v15;
    v22 = v3[6];
    v19[15] = 1;
    sub_1E0FEE620();
    sub_1E10AE85C();
    v16 = v3[7];
    LOBYTE(v20) = 2;
    sub_1E10AE89C();
    v17 = v3[8];
    LOBYTE(v20) = 3;
    sub_1E10AE89C();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_1E10635AC()
{
  v1 = 7107189;
  v2 = 0x6874646977;
  if (*v0 != 2)
  {
    v2 = 0x746867696568;
  }

  if (*v0)
  {
    v1 = 0x726F6C6F436762;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1063618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1063724(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1063640(uint64_t a1)
{
  v2 = sub_1E1063BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E106367C(uint64_t a1)
{
  v2 = sub_1E1063BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E10636B8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1063880(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1E1063724(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E1063880@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ABA0, &qword_1E10B7BB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1063BBC();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v41) = 0;
  v13 = sub_1E10AE7BC();
  v15 = v14;
  v34 = v13;
  v35 = a2;
  LOBYTE(v36) = 1;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v32 = v41;
  v31 = v42;
  v16 = v44;
  v30 = v43;
  v33 = v45;
  LOBYTE(v41) = 2;
  v28 = sub_1E10AE7EC();
  v29 = v16;
  v50 = 3;
  v17 = sub_1E10AE7EC();
  (*(v6 + 8))(v11, v5);
  v18 = v33;
  v19 = v34;
  *&v36 = v34;
  *(&v36 + 1) = v15;
  v20 = v32;
  v21 = v31;
  *&v37 = v32;
  *(&v37 + 1) = v31;
  v22 = v30;
  *&v38 = v30;
  *(&v38 + 1) = v29;
  *&v39 = v33;
  *(&v39 + 1) = v28;
  v40 = v17;
  sub_1E1063C10(&v36, &v41);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v41 = v19;
  v42 = v15;
  v43 = v20;
  v44 = v21;
  v45 = v22;
  v46 = v29;
  v47 = v18;
  v48 = v28;
  v49 = v17;
  result = sub_1E1063C48(&v41);
  v24 = v39;
  v25 = v35;
  *(v35 + 32) = v38;
  *(v25 + 48) = v24;
  *(v25 + 64) = v40;
  v26 = v37;
  *v25 = v36;
  *(v25 + 16) = v26;
  return result;
}

unint64_t sub_1E1063BBC()
{
  result = qword_1ECE8ABA8;
  if (!qword_1ECE8ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ABA8);
  }

  return result;
}

unint64_t sub_1E1063C8C()
{
  result = qword_1ECE8ABB8;
  if (!qword_1ECE8ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ABB8);
  }

  return result;
}

unint64_t sub_1E1063CE4()
{
  result = qword_1ECE8ABC0;
  if (!qword_1ECE8ABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ABC0);
  }

  return result;
}

unint64_t sub_1E1063D3C()
{
  result = qword_1ECE8ABC8;
  if (!qword_1ECE8ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ABC8);
  }

  return result;
}

uint64_t Art.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Art.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Art.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Art()
{
  result = qword_1EE17EF40;
  if (!qword_1EE17EF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Art.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Art() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Art.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Art() + 44));
}

uint64_t sub_1E1064034(uint64_t a1)
{
  v2 = sub_1E1065FF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1064070(uint64_t a1)
{
  v2 = sub_1E1065FF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Art.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ABD0, &qword_1E10B7CE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1065FF8();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v47 = *v3;
  *(&v47 + 1) = v13;
  LOBYTE(v37) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v47 = *(v3 + 16);
    *(&v47 + 1) = v14;
    v48 = *(v3 + 32);
    LOBYTE(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ABE0, &qword_1E10B7CE8);
    sub_1E106604C(&qword_1ECE8ABE8);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v47) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Art();
    v18 = v17[7];
    v57 = 3;
    type metadata accessor for Time();
    sub_1E10663BC(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v53 = v19[6];
    v54 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v55 = v19[8];
    v56 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v49 = v19[2];
    v50 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v51 = v19[4];
    v52 = v27;
    v28 = v19[1];
    v47 = *v19;
    v48 = v28;
    v43 = v53;
    v44 = v22;
    v29 = v19[9];
    v45 = v55;
    v46 = v29;
    v39 = v49;
    v40 = v26;
    v41 = v51;
    v42 = v21;
    v37 = v47;
    v38 = v25;
    v36 = 4;
    sub_1E0FE6720(&v47, v35);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v35[6] = v43;
    v35[7] = v44;
    v35[8] = v45;
    v35[9] = v46;
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_1E0FEDAB8(v35);
    v30 = v17[9];
    LOBYTE(v34) = 5;
    type metadata accessor for EventAttribution();
    sub_1E10663BC(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v34) = 6;
    type metadata accessor for TicketAttribution();
    sub_1E10663BC(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v34 = *(v3 + v17[11]);
    v33[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E106609C(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Art.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for TicketAttribution();
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v49 - v11;
  v12 = type metadata accessor for EventAttribution();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *v1;
  v25 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v26 = v1[2];
  v27 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v28 = v1[6];
  v29 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v30 = type metadata accessor for Art();
  v31 = v1 + v30[7];
  sub_1E10ADACC();
  sub_1E10663BC(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v32 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E10663BC(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v33 = (v2 + v30[8]);
  v34 = v33[7];
  v59 = v33[6];
  v60 = v34;
  v35 = v33[9];
  v61 = v33[8];
  v62 = v35;
  v36 = v33[3];
  v55 = v33[2];
  v56 = v36;
  v37 = v33[5];
  v57 = v33[4];
  v58 = v37;
  v38 = v33[1];
  v53 = *v33;
  v54 = v38;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v30[9], v23, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v23, v18, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v39 = *v18;
    v40 = v18[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v41 = *(v12 + 20);
    sub_1E10ADBBC();
    sub_1E10663BC(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E10661A0(v18, type metadata accessor for EventAttribution);
  }

  v42 = v50;
  sub_1E0FEDC50(v2 + v30[10], v50, &qword_1ECE88C80, &qword_1E10AF9D0);
  v43 = v52;
  if ((*(v51 + 48))(v42, 1, v52) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v44 = v49;
    sub_1E0FEDD58(v42, v49, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v45 = *v44;
    v46 = v44[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v47 = *(v43 + 20);
    sub_1E10ADBBC();
    sub_1E10663BC(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E10661A0(v44, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v30[11]));
}

uint64_t Art.hashValue.getter()
{
  sub_1E10AE9CC();
  Art.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Art.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = v51 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v51 - v10;
  v12 = type metadata accessor for Time();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ABF0, &qword_1E10B7CF0);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v51 - v21;
  v23 = type metadata accessor for Art();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E1065FF8();
  v57 = v22;
  v31 = v58;
  sub_1E10AEA3C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v51[1] = v12;
  v52 = v17;
  v32 = v55;
  v58 = v23;
  LOBYTE(v60) = 0;
  sub_1E0FEDD04();
  v33 = v56;
  sub_1E10AE7FC();
  v34 = *(&v62 + 1);
  v35 = v28;
  *v28 = v62;
  v28[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ABE0, &qword_1E10B7CE8);
  LOBYTE(v60) = 1;
  sub_1E106604C(&qword_1ECE8ABF8);
  sub_1E10AE7FC();
  v36 = v32;
  v37 = *(&v62 + 1);
  *(v35 + 16) = v62;
  *(v35 + 24) = v37;
  *(v35 + 32) = v63;
  LOBYTE(v62) = 2;
  *(v35 + 48) = sub_1E10AE7BC();
  *(v35 + 56) = v38;
  LOBYTE(v62) = 3;
  sub_1E10663BC(&qword_1EE17EE88, type metadata accessor for Time);
  v39 = v52;
  sub_1E10AE7FC();
  v40 = v58;
  sub_1E0FEDD58(v39, v35 + v58[7], type metadata accessor for Time);
  v61 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v52) = 1;
  v41 = (v35 + v40[8]);
  v42 = v69;
  v43 = v70;
  v41[6] = v68;
  v41[7] = v42;
  v44 = v71;
  v41[8] = v43;
  v41[9] = v44;
  v45 = v65;
  v41[2] = v64;
  v41[3] = v45;
  v46 = v67;
  v41[4] = v66;
  v41[5] = v46;
  v47 = v63;
  *v41 = v62;
  v41[1] = v47;
  type metadata accessor for EventAttribution();
  LOBYTE(v60) = 5;
  sub_1E10663BC(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v11, v35 + v40[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution();
  LOBYTE(v60) = 6;
  sub_1E10663BC(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v48 = v54;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v48, v35 + v40[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v59 = 7;
  sub_1E106609C(&qword_1ECE88D58, &qword_1ECE88D60);
  v49 = v57;
  sub_1E10AE7FC();
  (*(v36 + 8))(v49, v33);
  *(v35 + v40[11]) = v60;
  sub_1E1066138(v35, v53, type metadata accessor for Art);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_1E10661A0(v35, type metadata accessor for Art);
}

uint64_t sub_1E106548C()
{
  sub_1E10AE9CC();
  Art.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E10654D0()
{
  sub_1E10AE9CC();
  Art.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents3ArtV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v90 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v87 - v12);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - v16;
  v18 = type metadata accessor for EventAttribution();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v87 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v87 - v33;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  v87 = v4;
  v88 = v17;
  v89 = type metadata accessor for Art();
  v35 = v89[7];
  v36 = a1 + v35;
  v37 = a2 + v35;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v36[*(v38 + 20)], &v37[*(v38 + 20)]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v39 = v89;
  v40 = (a1 + v89[8]);
  v41 = v40[5];
  v42 = v40[7];
  v121 = v40[6];
  v122 = v42;
  v43 = v40[9];
  v44 = v40[7];
  v123 = v40[8];
  v124 = v43;
  v45 = v40[3];
  v46 = v40[1];
  v117 = v40[2];
  v118 = v45;
  v47 = v40[5];
  v48 = v40[3];
  v119 = v40[4];
  v120 = v47;
  v49 = v40[1];
  v116[0] = *v40;
  v116[1] = v49;
  v110 = v119;
  v111 = v41;
  v108 = v117;
  v109 = v48;
  v50 = v40[9];
  v114 = v123;
  v115 = v50;
  v112 = v121;
  v113 = v44;
  v106 = v116[0];
  v107 = v46;
  v51 = (a2 + v89[8]);
  v52 = v51[7];
  v53 = v51[5];
  v130 = v51[6];
  v131 = v52;
  v54 = v51[7];
  v55 = v51[9];
  v132 = v51[8];
  v133 = v55;
  v56 = v51[3];
  v57 = v51[1];
  v126 = v51[2];
  v127 = v56;
  v58 = v51[3];
  v59 = v51[5];
  v128 = v51[4];
  v129 = v59;
  v60 = v51[1];
  v125[0] = *v51;
  v125[1] = v60;
  v102 = v130;
  v103 = v54;
  v61 = v51[9];
  v104 = v132;
  v105 = v61;
  v98 = v126;
  v99 = v58;
  v100 = v128;
  v101 = v53;
  v96 = v125[0];
  v97 = v57;
  sub_1E0FE6720(v116, v95);
  sub_1E0FE6720(v125, v95);
  v62 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v106, &v96);
  v134[6] = v102;
  v134[7] = v103;
  v134[8] = v104;
  v134[9] = v105;
  v134[2] = v98;
  v134[3] = v99;
  v134[4] = v100;
  v134[5] = v101;
  v134[0] = v96;
  v134[1] = v97;
  sub_1E0FEDAB8(v134);
  v135[6] = v112;
  v135[7] = v113;
  v135[8] = v114;
  v135[9] = v115;
  v135[2] = v108;
  v135[3] = v109;
  v135[4] = v110;
  v135[5] = v111;
  v135[0] = v106;
  v135[1] = v107;
  sub_1E0FEDAB8(v135);
  if (!v62)
  {
    goto LABEL_32;
  }

  v63 = v39[9];
  v64 = *(v29 + 48);
  sub_1E0FEDC50(a1 + v63, v34, &qword_1ECE88C70, &qword_1E10AF9C8);
  v65 = a2 + v63;
  v66 = v64;
  sub_1E0FEDC50(v65, &v34[v64], &qword_1ECE88C70, &qword_1E10AF9C8);
  v67 = *(v94 + 48);
  if (v67(v34, 1, v18) != 1)
  {
    sub_1E0FEDC50(v34, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
    v94 = v66;
    v70 = v67(&v34[v66], 1, v18);
    v69 = v88;
    if (v70 != 1)
    {
      sub_1E0FEDD58(&v34[v94], v23, type metadata accessor for EventAttribution);
      if (*v28 == *v23 && v28[1] == v23[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v74 = *(v18 + 20);
        v75 = sub_1E10ADB8C();
        sub_1E10661A0(v23, type metadata accessor for EventAttribution);
        sub_1E10661A0(v28, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v75 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      sub_1E10661A0(v23, type metadata accessor for EventAttribution);
      sub_1E10661A0(v28, type metadata accessor for EventAttribution);
      v71 = &qword_1ECE88C70;
      v72 = &qword_1E10AF9C8;
LABEL_19:
      v73 = v34;
LABEL_31:
      sub_1E0FF0440(v73, v71, v72);
      goto LABEL_32;
    }

    sub_1E10661A0(v28, type metadata accessor for EventAttribution);
LABEL_18:
    v71 = &qword_1ECE88F50;
    v72 = &qword_1E10B0610;
    goto LABEL_19;
  }

  v68 = v67(&v34[v66], 1, v18);
  v69 = v88;
  if (v68 != 1)
  {
    goto LABEL_18;
  }

  sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_24:
  v76 = v89[10];
  v77 = *(v92 + 48);
  sub_1E0FEDC50(a1 + v76, v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v76, v69 + v77, &qword_1ECE88C80, &qword_1E10AF9D0);
  v78 = *(v93 + 48);
  v79 = v87;
  if (v78(v69, 1, v87) == 1)
  {
    if (v78(v69 + v77, 1, v79) == 1)
    {
      sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_38:
      v81 = sub_1E0FFE0A4(*(a1 + v89[11]), *(a2 + v89[11]));
      return v81 & 1;
    }

    goto LABEL_29;
  }

  v80 = v91;
  sub_1E0FEDC50(v69, v91, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78(v69 + v77, 1, v79) == 1)
  {
    sub_1E10661A0(v80, type metadata accessor for TicketAttribution);
LABEL_29:
    v71 = &qword_1ECE88F40;
    v72 = &qword_1E10B0600;
LABEL_30:
    v73 = v69;
    goto LABEL_31;
  }

  v83 = v69 + v77;
  v84 = v90;
  sub_1E0FEDD58(v83, v90, type metadata accessor for TicketAttribution);
  if ((*v80 != *v84 || v80[1] != v84[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E10661A0(v84, type metadata accessor for TicketAttribution);
    sub_1E10661A0(v80, type metadata accessor for TicketAttribution);
    v71 = &qword_1ECE88C80;
    v72 = &qword_1E10AF9D0;
    goto LABEL_30;
  }

  v85 = *(v87 + 20);
  v86 = sub_1E10ADB8C();
  sub_1E10661A0(v84, type metadata accessor for TicketAttribution);
  sub_1E10661A0(v80, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v86)
  {
    goto LABEL_38;
  }

LABEL_32:
  v81 = 0;
  return v81 & 1;
}

unint64_t sub_1E1065FF8()
{
  result = qword_1ECE8ABD8;
  if (!qword_1ECE8ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ABD8);
  }

  return result;
}

uint64_t sub_1E106604C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8ABE0, &qword_1E10B7CE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E106609C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E10663BC(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1066138(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10661A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E1066200(uint64_t a1)
{
  result = sub_1E10663BC(&qword_1EE17EF50, type metadata accessor for Art);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E10662A0(void *a1)
{
  a1[1] = sub_1E10663BC(&qword_1EE17EF68, type metadata accessor for Art);
  a1[2] = sub_1E10663BC(qword_1EE17EF80, type metadata accessor for Art);
  a1[3] = sub_1E10663BC(&qword_1EE17EF78, type metadata accessor for Art);
  result = sub_1E10663BC(&qword_1EE17EF60, type metadata accessor for Art);
  a1[4] = result;
  return result;
}

uint64_t sub_1E10663BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E106642C()
{
  sub_1E10665A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E10665A8()
{
  if (!qword_1ECE8AC00)
  {
    type metadata accessor for Art();
    sub_1E10663BC(&qword_1EE17EF58, type metadata accessor for Art);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8AC00);
    }
  }
}

unint64_t sub_1E1066650()
{
  result = qword_1ECE8AC08;
  if (!qword_1ECE8AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AC08);
  }

  return result;
}

unint64_t sub_1E10666A8()
{
  result = qword_1ECE8AC10;
  if (!qword_1ECE8AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AC10);
  }

  return result;
}

unint64_t sub_1E1066700()
{
  result = qword_1ECE8AC18[0];
  if (!qword_1ECE8AC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECE8AC18);
  }

  return result;
}

uint64_t sub_1E1066754(uint64_t a1)
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

uint64_t sub_1E10667D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFD)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 3)
      {
        return v15 - 2;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1E1066958(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFD)
  {
    v8 = 253;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFD)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 2;
  }
}

uint64_t sub_1E1066BC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 5460050;
  if (v2 != 1)
  {
    v4 = 0x6C6552676E697375;
    v3 = 0xEA00000000007961;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65736E6F70736572;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000065646F43;
  }

  v7 = 0xE300000000000000;
  v8 = 5460050;
  if (*a2 != 1)
  {
    v8 = 0x6C6552676E697375;
    v7 = 0xEA00000000007961;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65736E6F70736572;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000065646F43;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E10AE8FC();
  }

  return v11 & 1;
}

uint64_t sub_1E1066CC4()
{
  v1 = *v0;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E1066D6C()
{
  *v0;
  *v0;
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1066E00()
{
  v1 = *v0;
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

uint64_t sub_1E1066EA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E1067030();
  *a2 = result;
  return result;
}

void sub_1E1066ED4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000065646F43;
  v4 = 0xE300000000000000;
  v5 = 5460050;
  if (v2 != 1)
  {
    v5 = 0x6C6552676E697375;
    v4 = 0xEA00000000007961;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65736E6F70736572;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1E1066F3C()
{
  result = qword_1ECE8ACA0;
  if (!qword_1ECE8ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACA0);
  }

  return result;
}

id sub_1E1066F9C(uint64_t a1)
{
  v1 = *(a1 + 28);
  v2 = *(a1 + 16);
  sub_1E10AE8EC();
  v3 = objc_allocWithZone(MEMORY[0x1E696AEC0]);
  v4 = sub_1E10AE04C();

  v5 = [v3 initWithString_];

  return v5;
}

uint64_t sub_1E1067030()
{
  v0 = sub_1E10AE74C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t Image.id.getter()
{
  v1 = sub_1E10ADBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v14 = *v0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  Image.url(width:height:)(v14, v8, v7);
  v11 = sub_1E10ADB7C();
  (*(v2 + 8))(v7, v1);
  return v11;
}

uint64_t Image.url(width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v57 = a3;
  v5 = *(*(sub_1E10ADE9C() - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E10ADEBC();
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v55 - v19;
  v22 = *(v3 + 16);
  v21 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B8090;
  *(inited + 32) = 119;
  *(inited + 40) = 0xE100000000000000;
  v68 = a1;
  *(inited + 48) = sub_1E10AE8DC();
  *(inited + 56) = v24;
  *(inited + 64) = 104;
  *(inited + 72) = 0xE100000000000000;
  v68 = v75;
  v25 = v22;
  *(inited + 80) = sub_1E10AE8DC();
  *(inited + 88) = v26;
  *(inited + 96) = 102;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 6778480;
  *(inited + 120) = 0xE300000000000000;
  v27 = sub_1E1017200(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  v70 = v25;
  v71 = v21;
  v72 = 0;
  v73 = 0;
  v74 = v27;

  if (sub_1E1082544())
  {

    v28 = sub_1E10ADBBC();
    (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
    v29 = v62;
    v30 = v61;
LABEL_14:
    sub_1E104E5A0(v20);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    v54 = v59;
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v30 + 8))(v54, v29);
    return swift_willThrow();
  }

  else
  {
    v56 = v20;
    v31 = v21;
    v32 = v27 + 64;
    v33 = 1 << *(v27 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v27 + 64);
    v36 = (v33 + 63) >> 6;

    v63 = v27;

    v38 = 0;
    v55 = v31;
    if (v35)
    {
      while (1)
      {
        v39 = v25;
        v40 = v38;
LABEL_11:
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v42 = (v40 << 10) | (16 * v41);
        v43 = (*(v63 + 48) + v42);
        v45 = *v43;
        v44 = v43[1];
        v46 = (*(v63 + 56) + v42);
        v48 = *v46;
        v47 = v46[1];
        v68 = v39;
        v69 = v31;
        v66 = 123;
        v67 = 0xE100000000000000;

        v75 = v31;
        MEMORY[0x1E12ED840](v45, v44);
        MEMORY[0x1E12ED840](125, 0xE100000000000000);
        v64 = v48;
        v65 = v47;
        sub_1E106931C();
        v25 = sub_1E10AE50C();
        v31 = v49;

        if (!v35)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        return result;
      }

      if (v40 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v40);
      ++v38;
      if (v35)
      {
        v39 = v25;
        v38 = v40;
        goto LABEL_11;
      }
    }

    v50 = v58;
    sub_1E10ADBAC();

    v20 = v56;
    sub_1E1069370(v50, v56);
    v51 = sub_1E10ADBBC();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v20, 1, v51);
    v29 = v62;
    v30 = v61;
    if (v53 == 1)
    {
      goto LABEL_14;
    }

    return (*(v52 + 32))(v57, v20, v51);
  }
}

uint64_t static Image.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t sub_1E1067888()
{
  v1 = 0x486D756D6978616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E697274536C7275;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x576D756D6978616DLL;
  }
}

uint64_t sub_1E10678FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1069C50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1067924(uint64_t a1)
{
  v2 = sub_1E10694F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1067960(uint64_t a1)
{
  v2 = sub_1E10694F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Image.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ACB0, &qword_1E10B80B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v16 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v16[2] = v1[2];
  v16[3] = v11;
  v16[1] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10694F0();
  sub_1E10AEA5C();
  v19 = 0;
  sub_1E10AE89C();
  if (v2)
  {
    return (*(v5 + 8))(v10, v4);
  }

  v18 = 1;
  sub_1E10AE89C();
  v17 = 2;
  sub_1E10AE86C();
  return (*(v5 + 8))(v10, v4);
}

uint64_t Image.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1E12EE160](*v0);
  MEMORY[0x1E12EE160](v1);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Image.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t Image.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ACC0, &qword_1E10B80B8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10694F0();
  sub_1E10AEA3C();
  if (!v2)
  {
    v23 = 0;
    v13 = sub_1E10AE7EC();
    v22 = 1;
    v20 = sub_1E10AE7EC();
    v21 = 2;
    v15 = sub_1E10AE7BC();
    v17 = v16;
    (*(v6 + 8))(v11, v5);
    v18 = v20;
    *a2 = v13;
    a2[1] = v18;
    a2[2] = v15;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E1067E0C()
{
  v1 = sub_1E10ADBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0[1];
  v9 = v0[2];
  v10 = v0[3];
  v14 = *v0;
  v15 = v8;
  v16 = v9;
  v17 = v10;
  Image.url(width:height:)(v14, v8, v7);
  v11 = sub_1E10ADB7C();
  (*(v2 + 8))(v7, v1);
  return v11;
}

uint64_t sub_1E1067F6C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1067FE4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  MEMORY[0x1E12EE160](*v0);
  MEMORY[0x1E12EE160](v1);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1068048()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E10680EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E10ADBBC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v1[1];
  v11 = v1[2];
  v12 = v1[3];
  v18 = *v1;
  v19 = v10;
  v20 = v11;
  v21 = v12;
  Image.url(width:height:)(v18, v10, v9);
  v13 = sub_1E10ADB7C();
  v15 = v14;
  result = (*(v4 + 8))(v9, v3);
  *a1 = v13;
  a1[1] = v15;
  return result;
}

uint64_t sub_1E1068208(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC();
  }
}

uint64_t Artwork.id.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Artwork.url.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v2 = *(v1 + 64);
  return Artwork.url(width:height:)(*v1, *(v1 + 8), a1);
}

uint64_t Artwork.url(width:height:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v57 = a3;
  v5 = *(*(sub_1E10ADE9C() - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1E10ADEBC();
  v61 = *(v62 - 8);
  v9 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v58 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v55 - v19;
  v22 = *(v3 + 16);
  v21 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB58, &unk_1E10BA790);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B80A0;
  *(inited + 32) = 119;
  *(inited + 40) = 0xE100000000000000;
  v68 = a1;
  *(inited + 48) = sub_1E10AE8DC();
  *(inited + 56) = v24;
  *(inited + 64) = 104;
  *(inited + 72) = 0xE100000000000000;
  v68 = v75;
  v25 = v22;
  *(inited + 80) = sub_1E10AE8DC();
  *(inited + 88) = v26;
  *(inited + 96) = 99;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 0x30414D45532E4841;
  *(inited + 120) = 0xE900000000000031;
  *(inited + 128) = 102;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = 6778480;
  *(inited + 152) = 0xE300000000000000;
  v27 = sub_1E1017200(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B230, &qword_1E10B78A8);
  swift_arrayDestroy();
  v70 = v25;
  v71 = v21;
  v72 = 0;
  v73 = 0;
  v74 = v27;

  if (sub_1E1082544())
  {

    v28 = sub_1E10ADBBC();
    (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
    v29 = v62;
    v30 = v61;
LABEL_14:
    sub_1E104E5A0(v20);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    v54 = v59;
    sub_1E10ADB6C();
    sub_1E10ADEAC();
    (*(v30 + 8))(v54, v29);
    return swift_willThrow();
  }

  else
  {
    v56 = v20;
    v31 = v21;
    v32 = v27 + 64;
    v33 = 1 << *(v27 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v27 + 64);
    v36 = (v33 + 63) >> 6;

    v63 = v27;

    v38 = 0;
    v55 = v31;
    if (v35)
    {
      while (1)
      {
        v39 = v25;
        v40 = v38;
LABEL_11:
        v41 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v42 = (v40 << 10) | (16 * v41);
        v43 = (*(v63 + 48) + v42);
        v45 = *v43;
        v44 = v43[1];
        v46 = (*(v63 + 56) + v42);
        v48 = *v46;
        v47 = v46[1];
        v68 = v39;
        v69 = v31;
        v66 = 123;
        v67 = 0xE100000000000000;

        v75 = v31;
        MEMORY[0x1E12ED840](v45, v44);
        MEMORY[0x1E12ED840](125, 0xE100000000000000);
        v64 = v48;
        v65 = v47;
        sub_1E106931C();
        v25 = sub_1E10AE50C();
        v31 = v49;

        if (!v35)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v40 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);
        return result;
      }

      if (v40 >= v36)
      {
        break;
      }

      v35 = *(v32 + 8 * v40);
      ++v38;
      if (v35)
      {
        v39 = v25;
        v38 = v40;
        goto LABEL_11;
      }
    }

    v50 = v58;
    sub_1E10ADBAC();

    v20 = v56;
    sub_1E1069370(v50, v56);
    v51 = sub_1E10ADBBC();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v20, 1, v51);
    v29 = v62;
    v30 = v61;
    if (v53 == 1)
    {
      goto LABEL_14;
    }

    return (*(v52 + 32))(v57, v20, v51);
  }
}

CGColorRef Artwork.prominentColor.getter()
{
  if (*(v0 + 64))
  {
    return sub_1E1072EB8(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1068974()
{
  v1 = 0x576D756D6978616DLL;
  v2 = 0x6E697274536C7275;
  if (*v0 != 2)
  {
    v2 = 0x656E696D6F72705FLL;
  }

  if (*v0)
  {
    v1 = 0x486D756D6978616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E1068A14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1069D7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1068A3C(uint64_t a1)
{
  v2 = sub_1E1069544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1068A78(uint64_t a1)
{
  v2 = sub_1E1069544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Artwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ACC8, &qword_1E10B80C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v18 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[3];
  v21 = v1[2];
  v22 = v10;
  v20 = v12;
  v13 = *(v1 + 2);
  v18 = *(v1 + 3);
  v19 = v13;
  v14 = v1[8];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1069544();
  sub_1E10AEA5C();
  LOBYTE(v24) = 0;
  v16 = v23;
  sub_1E10AE89C();
  if (!v16)
  {
    LOBYTE(v24) = 1;
    sub_1E10AE89C();
    LOBYTE(v24) = 2;
    sub_1E10AE86C();
    v25 = v18;
    v24 = v19;
    v26 = v14;
    v27 = 3;
    sub_1E0FEE620();
    sub_1E10AE85C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t Artwork.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[8];
  MEMORY[0x1E12EE160](*v0);
  MEMORY[0x1E12EE160](v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (!v8)
  {
    return sub_1E10AE9EC();
  }

  sub_1E10AE9EC();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1E12EE180](v9);
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1E12EE180](v10);
  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v7;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1E12EE180](v11);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t Artwork.hashValue.getter()
{
  sub_1E10AE9CC();
  Artwork.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t Artwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ACD8, &qword_1E10B80C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1069544();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v13 = sub_1E10AE7EC();
  LOBYTE(v34[0]) = 1;
  v14 = sub_1E10AE7EC();
  LOBYTE(v34[0]) = 2;
  v15 = sub_1E10AE7BC();
  *(&v28 + 1) = v16;
  *&v28 = v15;
  v44 = 3;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  (*(v6 + 8))(v11, v5);
  v26 = *(&v41 + 1);
  v27 = v41;
  v17 = *(&v42 + 1);
  v25 = v42;
  v18 = v43;
  *&v29 = v13;
  *(&v29 + 1) = v14;
  v19 = v28;
  v30 = v28;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  *(a2 + 64) = v43;
  v21 = v30;
  v20 = v31;
  *a2 = v29;
  *(a2 + 16) = v21;
  v22 = v32;
  *(a2 + 32) = v20;
  *(a2 + 48) = v22;
  sub_1E1004E80(&v29, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v13;
  v34[1] = v14;
  v35 = v19;
  v36 = v27;
  v37 = v26;
  v38 = v25;
  v39 = v17;
  v40 = v18;
  return sub_1E1004EDC(v34);
}

uint64_t sub_1E1069104@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 48);
  v2 = *(v1 + 64);
  return Artwork.url(width:height:)(*v1, *(v1 + 8), a1);
}

uint64_t sub_1E1069150()
{
  sub_1E10AE9CC();
  Artwork.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1069194()
{
  sub_1E10AE9CC();
  Artwork.hash(into:)();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1069200@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t _s12ShazamEvents7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(a1 + 56);
    v7 = *(a1 + 64);
    v10 = *(a2 + 32);
    v9 = *(a2 + 40);
    v11 = *(a2 + 48);
    v13 = *(a2 + 56);
    v12 = *(a2 + 64);
    if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
    {
      goto LABEL_6;
    }

    v14 = *(a1 + 24);
    v15 = sub_1E10AE8FC();
    result = 0;
    if (v15)
    {
LABEL_6:
      if (v7)
      {
        if (v12 && v5 == v10 && v4 == v9 && v6 == v11 && (v8 == v13 && v7 == v12 || (sub_1E10AE8FC() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v12)
      {
        return 1;
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_1E106931C()
{
  result = qword_1ECE8ACA8;
  if (!qword_1ECE8ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACA8);
  }

  return result;
}

uint64_t sub_1E1069370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E10693E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD40, &qword_1E10B8580);
    v3 = sub_1E10AE73C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E1069EFC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E1014100(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E1069F6C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E10694F0()
{
  result = qword_1ECE8ACB8;
  if (!qword_1ECE8ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACB8);
  }

  return result;
}

unint64_t sub_1E1069544()
{
  result = qword_1ECE8ACD0;
  if (!qword_1ECE8ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACD0);
  }

  return result;
}

unint64_t sub_1E10695EC()
{
  result = qword_1ECE8ACE0;
  if (!qword_1ECE8ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACE0);
  }

  return result;
}

unint64_t sub_1E1069640()
{
  result = qword_1ECE8ACE8;
  if (!qword_1ECE8ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACE8);
  }

  return result;
}

unint64_t sub_1E1069698()
{
  result = qword_1ECE8ACF0;
  if (!qword_1ECE8ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACF0);
  }

  return result;
}

uint64_t sub_1E1069740(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1E10697A4()
{
  result = qword_1ECE8ACF8;
  if (!qword_1ECE8ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ACF8);
  }

  return result;
}

unint64_t sub_1E10697F8()
{
  result = qword_1ECE8AD00;
  if (!qword_1ECE8AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD00);
  }

  return result;
}

unint64_t sub_1E1069850()
{
  result = qword_1ECE8AD08;
  if (!qword_1ECE8AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD08);
  }

  return result;
}

uint64_t sub_1E10698E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1069928(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1E1069978(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E10699C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1069A44()
{
  result = qword_1ECE8AD10;
  if (!qword_1ECE8AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD10);
  }

  return result;
}

unint64_t sub_1E1069A9C()
{
  result = qword_1ECE8AD18;
  if (!qword_1ECE8AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD18);
  }

  return result;
}

unint64_t sub_1E1069AF4()
{
  result = qword_1ECE8AD20;
  if (!qword_1ECE8AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD20);
  }

  return result;
}

unint64_t sub_1E1069B4C()
{
  result = qword_1ECE8AD28;
  if (!qword_1ECE8AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD28);
  }

  return result;
}

unint64_t sub_1E1069BA4()
{
  result = qword_1ECE8AD30;
  if (!qword_1ECE8AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD30);
  }

  return result;
}

unint64_t sub_1E1069BFC()
{
  result = qword_1ECE8AD38;
  if (!qword_1ECE8AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD38);
  }

  return result;
}

uint64_t sub_1E1069C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x576D756D6978616DLL && a2 == 0xEC00000068746469;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x486D756D6978616DLL && a2 == 0xED00007468676965 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E1069D7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x576D756D6978616DLL && a2 == 0xEC00000068746469;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x486D756D6978616DLL && a2 == 0xED00007468676965 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E696D6F72705FLL && a2 == 0xEF726F6C6F43746ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E1069EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD48, &qword_1E10B8588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1E1069F6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1E1069F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD70, &qword_1E10B85D0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  swift_beginAccess();
  sub_1E0FF48BC(a2 + 16, aBlock);
  v14 = __swift_project_boxed_opaque_existential_1(aBlock, v30);
  v15 = *(v8 + 16);
  v28 = a1;
  v25 = v15;
  v15(v13, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = v9;
  v17 = swift_allocObject();
  v24 = *(v8 + 32);
  v24(v17 + v16, v13, v7);
  v18 = *v14;
  v19 = sub_1E102E5A0(sub_1E106C044, v17);

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v19)
  {
    v20 = sub_1E10AE04C();
    sub_1E106B81C(v26);
    sub_1E10ADCFC();
    sub_1E106BDA0();
    v21 = sub_1E10ADFCC();

    v25(v13, v28, v7);
    v22 = swift_allocObject();
    v24(v22 + v16, v13, v7);
    v31 = sub_1E106C058;
    v32 = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E106C260;
    v30 = &block_descriptor_32;
    v23 = _Block_copy(aBlock);

    [v19 eventWithIdentifier:v20 requestTypes:v21 completionHandler:v23];
    _Block_release(v23);
    swift_unknownObjectRelease();
  }
}

void sub_1E106A27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD60, &qword_1E10B85C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  sub_1E0FF48BC(a2 + 16, aBlock);
  v15 = __swift_project_boxed_opaque_existential_1(aBlock, v35);
  v16 = *(v9 + 16);
  v33 = a1;
  v28 = v16;
  v16(v14, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = *(v9 + 32);
  v19(v18 + v17, v14, v8);
  v20 = *v15;
  v21 = sub_1E102E5A0(sub_1E106BEC0, v18);

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v21)
  {
    v30 = sub_1E10AE04C();
    sub_1E106B81C(v31);
    v31 = v21;
    sub_1E10ADCFC();
    sub_1E106BDA0();
    v22 = sub_1E10ADFCC();

    v23 = sub_1E10ADC3C();
    v28(v14, v33, v8);
    v24 = swift_allocObject();
    v19(v24 + v17, v14, v8);
    v36 = sub_1E106BF54;
    v37 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E106C260;
    v35 = &block_descriptor_14_0;
    v25 = _Block_copy(aBlock);

    v26 = v30;
    [v31 scheduleWithParticipantIdentifier:v30 requestTypes:v22 startDate:v23 completionHandler:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
  }
}

void sub_1E106A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v29 = a3;
  v30 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD68, &qword_1E10B85C8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v27 - v13;
  swift_beginAccess();
  sub_1E0FF48BC(a2 + 16, aBlock);
  v15 = __swift_project_boxed_opaque_existential_1(aBlock, v35);
  v16 = *(v9 + 16);
  v33 = a1;
  v28 = v16;
  v16(v14, a1, v8);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = *(v9 + 32);
  v19(v18 + v17, v14, v8);
  v20 = *v15;
  v21 = sub_1E102E5A0(sub_1E106C000, v18);

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v21)
  {
    v30 = sub_1E10AE04C();
    sub_1E106B81C(v31);
    v31 = v21;
    sub_1E10ADCFC();
    sub_1E106BDA0();
    v22 = sub_1E10ADFCC();

    v23 = sub_1E10ADC3C();
    v28(v14, v33, v8);
    v24 = swift_allocObject();
    v19(v24 + v17, v14, v8);
    v36 = sub_1E106C014;
    v37 = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E106C260;
    v35 = &block_descriptor_23;
    v25 = _Block_copy(aBlock);

    v26 = v30;
    [v31 scheduleWithVenueIdentifier:v30 requestTypes:v22 startDate:v23 completionHandler:v25];
    _Block_release(v25);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E106A884(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 128);
  v2 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 96);
  v57 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 112);
  v58 = v1;
  v3 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 128);
  v59[0] = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 144);
  *(v59 + 9) = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 153);
  v4 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 48);
  v5 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 80);
  v54 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 64);
  v55 = v5;
  v6 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 80);
  v56 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 96);
  v7 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 16);
  v50 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value);
  v51 = v7;
  v8 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 48);
  v10 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value);
  v9 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 16);
  v52 = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 32);
  v53 = v8;
  v60[7] = v57;
  v60[8] = v3;
  v61[0] = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 144);
  *(v61 + 9) = *(a1 + OBJC_IVAR____TtC12ShazamEvents30VenueScheduleXPCValueContainer_value + 153);
  v60[4] = v54;
  v60[5] = v6;
  v60[6] = v2;
  v60[0] = v10;
  v60[1] = v9;
  v60[2] = v52;
  v60[3] = v4;
  if (sub_1E106C03C(v60) == 1)
  {
    v11 = nullsub_1(v60);
    v12 = *v11;
    v13 = v11[1];
    sub_1E10095EC();
    v14 = swift_allocError();
    *v15 = v12;
    v15[1] = v13;
    *&v29 = v14;
    v40 = v50;
    v41 = v51;
    v44 = v54;
    v45 = v55;
    v42 = v52;
    v43 = v53;
    *(v49 + 9) = *(v59 + 9);
    v48 = v58;
    v49[0] = v59[0];
    v46 = v56;
    v47 = v57;
    v16 = nullsub_1(&v40);
    sub_1E100A414(*v16, *(v16 + 8));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD68, &qword_1E10B85C8);
    return sub_1E10AE24C();
  }

  else
  {
    v18 = nullsub_1(v60);
    v19 = *v18;
    v20 = *(v18 + 32);
    v30 = *(v18 + 16);
    v31 = v20;
    v29 = v19;
    v21 = *(v18 + 48);
    v22 = *(v18 + 64);
    v23 = *(v18 + 96);
    v34 = *(v18 + 80);
    v35 = v23;
    v32 = v21;
    v33 = v22;
    v24 = *(v18 + 112);
    v25 = *(v18 + 128);
    v26 = *(v18 + 144);
    v39 = *(v18 + 160);
    v37 = v25;
    v38 = v26;
    v36 = v24;
    v40 = v50;
    v41 = v51;
    v45 = v55;
    v46 = v56;
    v42 = v52;
    v43 = v53;
    v44 = v54;
    *(v49 + 9) = *(v59 + 9);
    v48 = v58;
    v49[0] = v59[0];
    v47 = v57;
    v27 = nullsub_1(&v40);
    sub_1E100A38C(v27, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD68, &qword_1E10B85C8);
    return sub_1E10AE25C();
  }
}

void sub_1E106AA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD80, &qword_1E10B85E0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v31 - v12;
  swift_beginAccess();
  sub_1E0FF48BC(a2 + 16, aBlock);
  v14 = __swift_project_boxed_opaque_existential_1(aBlock, v39);
  v15 = *(v8 + 16);
  v37 = a1;
  v34 = v15;
  v15(v13, a1, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v35 = v9;
  v17 = swift_allocObject();
  v33 = *(v8 + 32);
  v33(v17 + v16, v13, v7);
  v18 = *v14;
  v19 = sub_1E102E5A0(sub_1E106C184, v17);

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v19)
  {
    v32 = sub_1E10AE04C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD88, &qword_1E10B85E8);
    v31 = v19;
    v20 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89758, &unk_1E10B3210) - 8);
    v21 = *(*v20 + 72);
    v22 = (*(*v20 + 80) + 32) & ~*(*v20 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1E10B2E70;
    v24 = v23 + v22;
    v25 = (v24 + v20[14]);
    sub_1E10ADCEC();
    *v25 = 0x74726F7073;
    v25[1] = 0xE500000000000000;
    sub_1E1017FF8(v23);
    swift_setDeallocating();
    sub_1E0FF0440(v24, &qword_1ECE89758, &unk_1E10B3210);
    swift_deallocClassInstance();
    sub_1E10ADCFC();
    sub_1E106BDA0();
    v26 = sub_1E10ADFCC();

    v27 = sub_1E10ADC3C();
    v34(v13, v37, v7);
    v28 = swift_allocObject();
    v33(v28 + v16, v13, v7);
    v40 = sub_1E106C21C;
    v41 = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E106C260;
    v39 = &block_descriptor_50;
    v29 = _Block_copy(aBlock);

    v30 = v32;
    [v31 scheduleWithGroupIdentifier:v32 requestTypes:v26 startDate:v27 completionHandler:v29];
    _Block_release(v29);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E106AEA4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = a1 + *a3;
  v8 = *v7;
  if (*(v7 + 16))
  {
    v9 = *(v7 + 8);
    sub_1E10095EC();
    swift_allocError();
    *v10 = v8;
    v10[1] = v9;
    sub_1E100A414(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1E10AE24C();
  }

  else
  {
    v12 = *v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_1E10AE25C();
  }
}

uint64_t sub_1E106AF6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD78, &qword_1E10B85D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v20 - v9;
  swift_beginAccess();
  sub_1E0FF48BC(a2 + 16, aBlock);
  v11 = __swift_project_boxed_opaque_existential_1(aBlock, v24);
  v21 = *(v5 + 16);
  v22 = a1;
  v21(v10, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v14 = *(v5 + 32);
  v14(v13 + v12, v10, v4);
  v15 = *v11;
  v16 = sub_1E102E5A0(sub_1E106C074, v13);

  if (!v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(aBlock);
  }

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v21(v10, v22, v4);
  v17 = swift_allocObject();
  v14(v17 + v12, v10, v4);
  v25 = sub_1E106C088;
  v26 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E106C260;
  v24 = &block_descriptor_41_0;
  v18 = _Block_copy(aBlock);

  [v16 serviceVersionWithCompletionHandler_];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_1E106B1EC(uint64_t a1)
{
  v2 = *(*(type metadata accessor for EventService.Version() - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v21 - v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89520, &qword_1E10B26A0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (v21 - v14);
  sub_1E106C0B0(a1 + OBJC_IVAR____TtC12ShazamEvents24VersionXPCValueContainer_value, v21 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    v17 = v15[1];
    sub_1E10095EC();
    v18 = swift_allocError();
    *v19 = v16;
    v19[1] = v17;
    v21[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD78, &qword_1E10B85D8);
    return sub_1E10AE24C();
  }

  else
  {
    sub_1E106C120(v15, v10);
    sub_1E1017590(v10, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD78, &qword_1E10B85D8);
    sub_1E10AE25C();
    return sub_1E10175F4(v10);
  }
}

void sub_1E106B398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD50, &qword_1E10B85B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v23 - v11;
  swift_beginAccess();
  sub_1E0FF48BC(a2 + 16, aBlock);
  v13 = __swift_project_boxed_opaque_existential_1(aBlock, v29);
  v14 = *(v7 + 16);
  v27 = a1;
  v25 = v14;
  v14(v12, a1, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  v24 = *(v7 + 32);
  v24(v16 + v15, v12, v6);
  v17 = *v13;
  v18 = sub_1E102E5A0(sub_1E106B808, v16);

  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if (v18)
  {
    type metadata accessor for GeoXPCRequestContainer(0);
    v23 = sub_1E10AE18C();
    sub_1E106B81C(v26);
    sub_1E10ADCFC();
    sub_1E106BDA0();
    v19 = sub_1E10ADFCC();

    v25(v12, v27, v6);
    v20 = swift_allocObject();
    v24(v20 + v15, v12, v6);
    v30 = sub_1E106BDF8;
    v31 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E106C260;
    v29 = &block_descriptor_3;
    v21 = _Block_copy(aBlock);

    v22 = v23;
    [v18 partialEventsWithGeoRequests:v23 requestTypes:v19 completionHandler:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1E106B698(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1E10AE24C();
}

uint64_t sub_1E106B6F4(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD50, &qword_1E10B85B0);
  return sub_1E10AE25C();
}

void sub_1E106B744(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1E106B7AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1E106B81C(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD58, &qword_1E10B85B8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v51[-v5];
  v63 = sub_1E10ADCFC();
  v7 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v61 = &v51[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v60 = &v51[-v14];
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  v18 = (v15 + 63) >> 6;
  v19 = (v13 + 48);
  v58 = (v13 + 32);
  v59 = (v13 + 16);
  v57 = v13;
  v55 = 0x80000001E10BF070;
  v56 = (v13 + 8);

  v20 = 0;
  v62 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v21 = v20;
    if (!v17)
    {
      break;
    }

LABEL_8:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v20 << 6);
    v24 = (*(a1 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    v27 = *(*(a1 + 56) + v23);

    sub_1E10ADCCC();
    if ((*v19)(v6, 1, v63) == 1)
    {

      sub_1E0FF0440(v6, &qword_1ECE8AD58, &qword_1E10B85B8);
    }

    else
    {
      v28 = v63;
      (*v58)(v60, v6, v63);
      v53 = *v59;
      v53(v61, v60, v28);
      if (v27 > 3)
      {
        if (v27 > 5)
        {
          if (v27 == 6)
          {
            v54[0] = 0xD000000000000011;
            v54[1] = v55;
            goto LABEL_26;
          }

          v54[1] = 0xE900000000000065;
          v29 = 0x66696C746867696ELL;
        }

        else if (v27 == 4)
        {
          v54[1] = 0xE700000000000000;
          v29 = 0x72657461656874;
        }

        else
        {
          v54[1] = 0xEA0000000000746ELL;
          v29 = 0x657665656C707061;
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          strcpy(v54, "artsandmuseums");
          HIBYTE(v54[1]) = -18;
          goto LABEL_26;
        }

        v54[1] = 0xE500000000000000;
        v29 = 0x65636E6164;
      }

      else
      {
        v54[1] = 0xE500000000000000;
        if (v27)
        {
          v29 = 0x74726F7073;
        }

        else
        {
          v29 = 0x636973756DLL;
        }
      }

      v54[0] = v29;
LABEL_26:
      v30 = v62;
      LODWORD(v62) = swift_isUniquelyReferenced_nonNull_native();
      v64 = v30;
      v32 = sub_1E1014068(v61);
      v33 = v30[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_38;
      }

      if (v30[3] >= v35)
      {
        if ((v62 & 1) == 0)
        {
          v52 = v31;
          sub_1E1016D8C();
          LOBYTE(v31) = v52;
        }
      }

      else
      {
        v52 = v31;
        sub_1E1015CE4(v35, v62);
        v36 = sub_1E1014068(v61);
        v37 = v31 & 1;
        LOBYTE(v31) = v52;
        if ((v52 & 1) != v37)
        {
          goto LABEL_40;
        }

        v32 = v36;
      }

      v38 = v64;
      v62 = v64;
      if (v31)
      {
        v39 = (v64[7] + 16 * v32);
        v40 = v39[1];
        v41 = v54[1];
        *v39 = v54[0];
        v39[1] = v41;

        v42 = *v56;
        v43 = v63;
        (*v56)(v61, v63);
        v42(v60, v43);
      }

      else
      {
        v64[(v32 >> 6) + 8] |= 1 << v32;
        v53((v38[6] + *(v57 + 72) * v32), v61, v63);
        v44 = (v38[7] + 16 * v32);
        v45 = v54[1];
        *v44 = v54[0];
        v44[1] = v45;

        v54[1] = *(v57 + 8);
        v46 = v63;
        (v54[1])(v61, v63);
        (v54[1])(v60, v46);
        v47 = v38[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_39;
        }

        v38[2] = v49;
      }
    }
  }

  while (1)
  {
    v20 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return v62;
    }

    v17 = *(a1 + 64 + 8 * v20);
    ++v21;
    if (v17)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

unint64_t sub_1E106BDA0()
{
  result = qword_1EE17FF60;
  if (!qword_1EE17FF60)
  {
    sub_1E10ADCFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FF60);
  }

  return result;
}

uint64_t sub_1E106BE20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E106C0B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89520, &qword_1E10B26A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E106C120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventService.Version();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_1(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_1E106C264(uint64_t a1)
{
  v2[63] = a1;
  v3 = sub_1E10ADCBC();
  v2[64] = v3;
  v4 = *(v3 - 8);
  v2[65] = v4;
  v5 = *(v4 + 64) + 15;
  v2[66] = swift_task_alloc();
  v6 = v1[1];
  v2[67] = *v1;
  v2[68] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E106C330, 0, 0);
}

uint64_t sub_1E106C330()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[63];
  sub_1E10ADC9C();
  v5 = swift_task_alloc();
  v0[69] = v5;
  v5[2] = v4;
  v5[3] = v2;
  v5[4] = v1;
  v5[5] = v3;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[70] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893E8, qword_1E10B23D8);
  *v7 = v0;
  v7[1] = sub_1E106C458;

  return MEMORY[0x1EEE6DE38](v0 + 62, 0, 0, 0xD000000000000025, 0x80000001E10C0920, sub_1E106C73C, v5, v8);
}

uint64_t sub_1E106C458()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v7 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v4 = sub_1E106C6A4;
  }

  else
  {
    v5 = *(v2 + 552);

    v4 = sub_1E106C574;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E106C574()
{
  v1 = *(v0 + 496);
  (*(*(v0 + 520) + 8))(*(v0 + 528), *(v0 + 512));
  if (*(v1 + 16))
  {
    v2 = *(v1 + 32);
    v3 = *(v1 + 48);
    v4 = *(v1 + 80);
    *(v0 + 48) = *(v1 + 64);
    *(v0 + 64) = v4;
    *(v0 + 16) = v2;
    *(v0 + 32) = v3;
    v5 = *(v1 + 96);
    v6 = *(v1 + 112);
    v7 = *(v1 + 144);
    *(v0 + 112) = *(v1 + 128);
    *(v0 + 128) = v7;
    *(v0 + 80) = v5;
    *(v0 + 96) = v6;
    sub_1E106C748(v0 + 16, v0 + 144);

    sub_1E106C7A4(v0 + 32, v0 + 384);
    sub_1E106C800(v0 + 16);
    sub_1E10485A8(v0 + 32, v0 + 272);
    v8 = *(v0 + 280);
    v9 = *(v0 + 296);
    v10 = *(v0 + 328);
    v11 = *(v0 + 368);

    v12 = *(v0 + 376);
  }

  else
  {

    v12 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v0 + 528);

  v14 = *(v0 + 8);

  return v14(v12);
}

uint64_t sub_1E106C6A4()
{
  v1 = v0[69];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[64];

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];
  v6 = v0[71];

  return v5();
}

uint64_t Festival.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Festival.category.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  return v1;
}

uint64_t Festival.name.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t type metadata accessor for Festival()
{
  result = qword_1EE17E668;
  if (!qword_1EE17E668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Festival.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Festival() + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t Festival.tickets.getter()
{
  v1 = *(v0 + *(type metadata accessor for Festival() + 44));
}

uint64_t sub_1E106CAF8(uint64_t a1)
{
  v2 = sub_1E106EB90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E106CB34(uint64_t a1)
{
  v2 = sub_1E106EB90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Festival.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AD90, &qword_1E10B85F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33[-v10];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E106EB90();
  sub_1E10AEA5C();
  v13 = *(v3 + 8);
  *&v47 = *v3;
  *(&v47 + 1) = v13;
  LOBYTE(v37) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v14 = *(v3 + 24);
    *&v47 = *(v3 + 16);
    *(&v47 + 1) = v14;
    v48 = *(v3 + 32);
    LOBYTE(v37) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ADA0, &qword_1E10B8600);
    sub_1E106EBE4(&qword_1ECE8ADA8);
    sub_1E10AE8AC();
    v15 = *(v3 + 48);
    v16 = *(v3 + 56);
    LOBYTE(v47) = 2;
    sub_1E10AE86C();
    v17 = type metadata accessor for Festival();
    v18 = v17[7];
    v57 = 3;
    type metadata accessor for Time();
    sub_1E106EF54(&qword_1ECE88CB0, type metadata accessor for Time);
    sub_1E10AE8AC();
    v19 = (v3 + v17[8]);
    v20 = v19[7];
    v21 = v19[5];
    v53 = v19[6];
    v54 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v55 = v19[8];
    v56 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v49 = v19[2];
    v50 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v51 = v19[4];
    v52 = v27;
    v28 = v19[1];
    v47 = *v19;
    v48 = v28;
    v43 = v53;
    v44 = v22;
    v29 = v19[9];
    v45 = v55;
    v46 = v29;
    v39 = v49;
    v40 = v26;
    v41 = v51;
    v42 = v21;
    v37 = v47;
    v38 = v25;
    v36 = 4;
    sub_1E0FE6720(&v47, v35);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v35[6] = v43;
    v35[7] = v44;
    v35[8] = v45;
    v35[9] = v46;
    v35[2] = v39;
    v35[3] = v40;
    v35[4] = v41;
    v35[5] = v42;
    v35[0] = v37;
    v35[1] = v38;
    sub_1E0FEDAB8(v35);
    v30 = v17[9];
    LOBYTE(v34) = 5;
    type metadata accessor for EventAttribution();
    sub_1E106EF54(&qword_1ECE88CB8, type metadata accessor for EventAttribution);
    sub_1E10AE85C();
    v31 = v17[10];
    LOBYTE(v34) = 6;
    type metadata accessor for TicketAttribution();
    sub_1E106EF54(&qword_1ECE88CE8, type metadata accessor for TicketAttribution);
    sub_1E10AE85C();
    v34 = *(v3 + v17[11]);
    v33[7] = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E106EC34(&qword_1ECE88CF8, &qword_1ECE88D00);
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v11, v5);
}

uint64_t Festival.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v52 = type metadata accessor for TicketAttribution();
  v51 = *(v52 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v5, v6);
  v49 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v50 = &v49 - v11;
  v12 = type metadata accessor for EventAttribution();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v49 - v22;
  v24 = *v1;
  v25 = v1[1];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v26 = v1[2];
  v27 = v1[3];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v28 = v1[6];
  v29 = v1[7];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  v30 = type metadata accessor for Festival();
  v31 = v1 + v30[7];
  sub_1E10ADACC();
  sub_1E106EF54(&qword_1EE17FF80, MEMORY[0x1E6968130]);
  sub_1E10ADFFC();
  v32 = *(type metadata accessor for Time() + 20);
  sub_1E10ADE6C();
  sub_1E106EF54(&unk_1EE17FF40, MEMORY[0x1E6969BC0]);
  sub_1E10ADFFC();
  v33 = (v2 + v30[8]);
  v34 = v33[7];
  v59 = v33[6];
  v60 = v34;
  v35 = v33[9];
  v61 = v33[8];
  v62 = v35;
  v36 = v33[3];
  v55 = v33[2];
  v56 = v36;
  v37 = v33[5];
  v57 = v33[4];
  v58 = v37;
  v38 = v33[1];
  v53 = *v33;
  v54 = v38;
  Venue.hash(into:)();
  sub_1E0FEDC50(v2 + v30[9], v23, &qword_1ECE88C70, &qword_1E10AF9C8);
  if ((*(v13 + 48))(v23, 1, v12) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    sub_1E0FEDD58(v23, v18, type metadata accessor for EventAttribution);
    sub_1E10AE9EC();
    v39 = *v18;
    v40 = v18[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v41 = *(v12 + 20);
    sub_1E10ADBBC();
    sub_1E106EF54(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E106ED38(v18, type metadata accessor for EventAttribution);
  }

  v42 = v50;
  sub_1E0FEDC50(v2 + v30[10], v50, &qword_1ECE88C80, &qword_1E10AF9D0);
  v43 = v52;
  if ((*(v51 + 48))(v42, 1, v52) == 1)
  {
    sub_1E10AE9EC();
  }

  else
  {
    v44 = v49;
    sub_1E0FEDD58(v42, v49, type metadata accessor for TicketAttribution);
    sub_1E10AE9EC();
    v45 = *v44;
    v46 = v44[1];
    _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
    v47 = *(v43 + 20);
    sub_1E10ADBBC();
    sub_1E106EF54(&qword_1ECE88D18, MEMORY[0x1E6968FB0]);
    sub_1E10ADFFC();
    sub_1E106ED38(v44, type metadata accessor for TicketAttribution);
  }

  return sub_1E0FEBCA4(a1, *(v2 + v30[11]));
}

uint64_t Festival.hashValue.getter()
{
  sub_1E10AE9CC();
  Festival.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Festival.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v54 = v51 - v6;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v51 - v10;
  v12 = type metadata accessor for Time();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ADB0, &qword_1E10B8608);
  v55 = *(v56 - 8);
  v18 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = v51 - v21;
  v23 = type metadata accessor for Festival();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a1[3];
  v29 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1E106EB90();
  v57 = v22;
  v31 = v58;
  sub_1E10AEA3C();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v72);
  }

  v51[1] = v12;
  v52 = v17;
  v32 = v55;
  v58 = v23;
  LOBYTE(v60) = 0;
  sub_1E0FEDD04();
  v33 = v56;
  sub_1E10AE7FC();
  v34 = *(&v62 + 1);
  v35 = v28;
  *v28 = v62;
  v28[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ADA0, &qword_1E10B8600);
  LOBYTE(v60) = 1;
  sub_1E106EBE4(&qword_1ECE8ADB8);
  sub_1E10AE7FC();
  v36 = v32;
  v37 = *(&v62 + 1);
  *(v35 + 16) = v62;
  *(v35 + 24) = v37;
  *(v35 + 32) = v63;
  LOBYTE(v62) = 2;
  *(v35 + 48) = sub_1E10AE7BC();
  *(v35 + 56) = v38;
  LOBYTE(v62) = 3;
  sub_1E106EF54(&qword_1EE17EE88, type metadata accessor for Time);
  v39 = v52;
  sub_1E10AE7FC();
  v40 = v58;
  sub_1E0FEDD58(v39, v35 + v58[7], type metadata accessor for Time);
  v61 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  LODWORD(v52) = 1;
  v41 = (v35 + v40[8]);
  v42 = v69;
  v43 = v70;
  v41[6] = v68;
  v41[7] = v42;
  v44 = v71;
  v41[8] = v43;
  v41[9] = v44;
  v45 = v65;
  v41[2] = v64;
  v41[3] = v45;
  v46 = v67;
  v41[4] = v66;
  v41[5] = v46;
  v47 = v63;
  *v41 = v62;
  v41[1] = v47;
  type metadata accessor for EventAttribution();
  LOBYTE(v60) = 5;
  sub_1E106EF54(&qword_1ECE88D30, type metadata accessor for EventAttribution);
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v11, v35 + v40[9], &qword_1ECE88C70, &qword_1E10AF9C8);
  type metadata accessor for TicketAttribution();
  LOBYTE(v60) = 6;
  sub_1E106EF54(&qword_1ECE88D50, type metadata accessor for TicketAttribution);
  v48 = v54;
  sub_1E10AE7AC();
  sub_1E0FEDEF4(v48, v35 + v40[10], &qword_1ECE88C80, &qword_1E10AF9D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
  v59 = 7;
  sub_1E106EC34(&qword_1ECE88D58, &qword_1ECE88D60);
  v49 = v57;
  sub_1E10AE7FC();
  (*(v36 + 8))(v49, v33);
  *(v35 + v40[11]) = v60;
  sub_1E106ECD0(v35, v53, type metadata accessor for Festival);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return sub_1E106ED38(v35, type metadata accessor for Festival);
}

uint64_t sub_1E106DF50()
{
  sub_1E10AE9CC();
  Festival.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t sub_1E106DF94()
{
  sub_1E10AE9CC();
  Festival.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents8FestivalV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for TicketAttribution();
  v93 = *(v4 - 8);
  v5 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v90 = (&v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C80, &qword_1E10AF9D0) - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = (&v87 - v12);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F40, &qword_1E10B0600);
  v13 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v87 - v16;
  v18 = type metadata accessor for EventAttribution();
  v94 = *(v18 - 8);
  v19 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = (&v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C70, &qword_1E10AF9C8) - 8) + 64);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v87 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88F50, &qword_1E10B0610);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v87 - v33;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1E10AE8FC() & 1) == 0)
  {
    goto LABEL_32;
  }

  v87 = v4;
  v88 = v17;
  v89 = type metadata accessor for Festival();
  v35 = v89[7];
  v36 = a1 + v35;
  v37 = a2 + v35;
  if ((sub_1E10ADA7C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v38 = type metadata accessor for Time();
  if ((MEMORY[0x1E12ED5E0](&v36[*(v38 + 20)], &v37[*(v38 + 20)]) & 1) == 0)
  {
    goto LABEL_32;
  }

  v39 = v89;
  v40 = (a1 + v89[8]);
  v41 = v40[5];
  v42 = v40[7];
  v121 = v40[6];
  v122 = v42;
  v43 = v40[9];
  v44 = v40[7];
  v123 = v40[8];
  v124 = v43;
  v45 = v40[3];
  v46 = v40[1];
  v117 = v40[2];
  v118 = v45;
  v47 = v40[5];
  v48 = v40[3];
  v119 = v40[4];
  v120 = v47;
  v49 = v40[1];
  v116[0] = *v40;
  v116[1] = v49;
  v110 = v119;
  v111 = v41;
  v108 = v117;
  v109 = v48;
  v50 = v40[9];
  v114 = v123;
  v115 = v50;
  v112 = v121;
  v113 = v44;
  v106 = v116[0];
  v107 = v46;
  v51 = (a2 + v89[8]);
  v52 = v51[7];
  v53 = v51[5];
  v130 = v51[6];
  v131 = v52;
  v54 = v51[7];
  v55 = v51[9];
  v132 = v51[8];
  v133 = v55;
  v56 = v51[3];
  v57 = v51[1];
  v126 = v51[2];
  v127 = v56;
  v58 = v51[3];
  v59 = v51[5];
  v128 = v51[4];
  v129 = v59;
  v60 = v51[1];
  v125[0] = *v51;
  v125[1] = v60;
  v102 = v130;
  v103 = v54;
  v61 = v51[9];
  v104 = v132;
  v105 = v61;
  v98 = v126;
  v99 = v58;
  v100 = v128;
  v101 = v53;
  v96 = v125[0];
  v97 = v57;
  sub_1E0FE6720(v116, v95);
  sub_1E0FE6720(v125, v95);
  v62 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v106, &v96);
  v134[6] = v102;
  v134[7] = v103;
  v134[8] = v104;
  v134[9] = v105;
  v134[2] = v98;
  v134[3] = v99;
  v134[4] = v100;
  v134[5] = v101;
  v134[0] = v96;
  v134[1] = v97;
  sub_1E0FEDAB8(v134);
  v135[6] = v112;
  v135[7] = v113;
  v135[8] = v114;
  v135[9] = v115;
  v135[2] = v108;
  v135[3] = v109;
  v135[4] = v110;
  v135[5] = v111;
  v135[0] = v106;
  v135[1] = v107;
  sub_1E0FEDAB8(v135);
  if (!v62)
  {
    goto LABEL_32;
  }

  v63 = v39[9];
  v64 = *(v29 + 48);
  sub_1E0FEDC50(a1 + v63, v34, &qword_1ECE88C70, &qword_1E10AF9C8);
  v65 = a2 + v63;
  v66 = v64;
  sub_1E0FEDC50(v65, &v34[v64], &qword_1ECE88C70, &qword_1E10AF9C8);
  v67 = *(v94 + 48);
  if (v67(v34, 1, v18) != 1)
  {
    sub_1E0FEDC50(v34, v28, &qword_1ECE88C70, &qword_1E10AF9C8);
    v94 = v66;
    v70 = v67(&v34[v66], 1, v18);
    v69 = v88;
    if (v70 != 1)
    {
      sub_1E0FEDD58(&v34[v94], v23, type metadata accessor for EventAttribution);
      if (*v28 == *v23 && v28[1] == v23[1] || (sub_1E10AE8FC() & 1) != 0)
      {
        v74 = *(v18 + 20);
        v75 = sub_1E10ADB8C();
        sub_1E106ED38(v23, type metadata accessor for EventAttribution);
        sub_1E106ED38(v28, type metadata accessor for EventAttribution);
        sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
        if ((v75 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_24;
      }

      sub_1E106ED38(v23, type metadata accessor for EventAttribution);
      sub_1E106ED38(v28, type metadata accessor for EventAttribution);
      v71 = &qword_1ECE88C70;
      v72 = &qword_1E10AF9C8;
LABEL_19:
      v73 = v34;
LABEL_31:
      sub_1E0FF0440(v73, v71, v72);
      goto LABEL_32;
    }

    sub_1E106ED38(v28, type metadata accessor for EventAttribution);
LABEL_18:
    v71 = &qword_1ECE88F50;
    v72 = &qword_1E10B0610;
    goto LABEL_19;
  }

  v68 = v67(&v34[v66], 1, v18);
  v69 = v88;
  if (v68 != 1)
  {
    goto LABEL_18;
  }

  sub_1E0FF0440(v34, &qword_1ECE88C70, &qword_1E10AF9C8);
LABEL_24:
  v76 = v89[10];
  v77 = *(v92 + 48);
  sub_1E0FEDC50(a1 + v76, v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  sub_1E0FEDC50(a2 + v76, v69 + v77, &qword_1ECE88C80, &qword_1E10AF9D0);
  v78 = *(v93 + 48);
  v79 = v87;
  if (v78(v69, 1, v87) == 1)
  {
    if (v78(v69 + v77, 1, v79) == 1)
    {
      sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
LABEL_38:
      v81 = sub_1E0FFE0A4(*(a1 + v89[11]), *(a2 + v89[11]));
      return v81 & 1;
    }

    goto LABEL_29;
  }

  v80 = v91;
  sub_1E0FEDC50(v69, v91, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v78(v69 + v77, 1, v79) == 1)
  {
    sub_1E106ED38(v80, type metadata accessor for TicketAttribution);
LABEL_29:
    v71 = &qword_1ECE88F40;
    v72 = &qword_1E10B0600;
LABEL_30:
    v73 = v69;
    goto LABEL_31;
  }

  v83 = v69 + v77;
  v84 = v90;
  sub_1E0FEDD58(v83, v90, type metadata accessor for TicketAttribution);
  if ((*v80 != *v84 || v80[1] != v84[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    sub_1E106ED38(v84, type metadata accessor for TicketAttribution);
    sub_1E106ED38(v80, type metadata accessor for TicketAttribution);
    v71 = &qword_1ECE88C80;
    v72 = &qword_1E10AF9D0;
    goto LABEL_30;
  }

  v85 = *(v87 + 20);
  v86 = sub_1E10ADB8C();
  sub_1E106ED38(v84, type metadata accessor for TicketAttribution);
  sub_1E106ED38(v80, type metadata accessor for TicketAttribution);
  sub_1E0FF0440(v69, &qword_1ECE88C80, &qword_1E10AF9D0);
  if (v86)
  {
    goto LABEL_38;
  }

LABEL_32:
  v81 = 0;
  return v81 & 1;
}

unint64_t sub_1E106EB90()
{
  result = qword_1ECE8AD98;
  if (!qword_1ECE8AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AD98);
  }

  return result;
}

uint64_t sub_1E106EBE4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8ADA0, &qword_1E10B8600);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E106EC34(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88CF0, &qword_1E10AF9F8);
    sub_1E106EF54(a2, type metadata accessor for Ticket);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E106ECD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E106ED38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E106ED98(uint64_t a1)
{
  result = sub_1E106EF54(&qword_1EE17E678, type metadata accessor for Festival);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E106EE38(void *a1)
{
  a1[1] = sub_1E106EF54(&qword_1EE17E690, type metadata accessor for Festival);
  a1[2] = sub_1E106EF54(qword_1EE17E6A8, type metadata accessor for Festival);
  a1[3] = sub_1E106EF54(&qword_1EE17E6A0, type metadata accessor for Festival);
  result = sub_1E106EF54(&qword_1EE17E688, type metadata accessor for Festival);
  a1[4] = result;
  return result;
}

uint64_t sub_1E106EF54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E106EFC4()
{
  sub_1E106F140();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Time();
    if (v1 <= 0x3F)
    {
      sub_1E100EF28(319, &qword_1ECE88DE0, type metadata accessor for EventAttribution, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1E100EF28(319, qword_1ECE88DE8, type metadata accessor for TicketAttribution, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1E100EF28(319, &qword_1EE17E428, type metadata accessor for Ticket, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E106F140()
{
  if (!qword_1ECE8ADC0)
  {
    type metadata accessor for Festival();
    sub_1E106EF54(&qword_1EE17E680, type metadata accessor for Festival);
    v0 = type metadata accessor for EventCategory();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8ADC0);
    }
  }
}

unint64_t sub_1E106F1E8()
{
  result = qword_1ECE8ADC8;
  if (!qword_1ECE8ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ADC8);
  }

  return result;
}

unint64_t sub_1E106F240()
{
  result = qword_1ECE8ADD0;
  if (!qword_1ECE8ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ADD0);
  }

  return result;
}

unint64_t sub_1E106F298()
{
  result = qword_1ECE8ADD8;
  if (!qword_1ECE8ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ADD8);
  }

  return result;
}

uint64_t sub_1E106F310()
{
  v1 = 0x736F746F6870;
  v2 = 0x6361466863746177;
  if (*v0 != 2)
  {
    v2 = 0x736F65646976;
  }

  if (*v0)
  {
    v1 = 0x657061706C6C6177;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E106F388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E10728B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E106F3B0(uint64_t a1)
{
  v2 = sub_1E1071AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E106F3EC(uint64_t a1)
{
  v2 = sub_1E1071AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalContent.WatchFace.id.getter()
{
  v1 = *(*(sub_1E10ADE9C() - 8) + 64);
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = sub_1E10ADEBC();
  v26[0] = *(v4 - 8);
  v5 = *(v26[0] + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v26 - v13;
  v15 = sub_1E10ADBBC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v0 + 32);
  v23 = *(v0 + 40);
  sub_1E10ADBAC();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1E104E5A0(v14);
    sub_1E10ADE7C();
    sub_1E10693E0(MEMORY[0x1E69E7CC0]);
    sub_1E106299C();
    sub_1E10ADB6C();
    v24 = sub_1E10ADEAC();
    (*(v26[0] + 8))(v9, v4);
    swift_willThrow();
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    v22 = sub_1E10ADB7C();
    (*(v16 + 8))(v21, v15);
  }

  return v22;
}

uint64_t PromotionalContent.WatchFace.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_1E10ADE9C() - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1E10ADEBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v23 - v16;
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  sub_1E10ADBAC();
  v20 = sub_1E10ADBBC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) != 1)
  {
    return (*(v21 + 32))(a1, v17, v20);
  }

  sub_1E104E5A0(v17);
  sub_1E10ADE7C();
  sub_1E10693E0(MEMORY[0x1E69E7CC0]);
  sub_1E106299C();
  sub_1E10ADB6C();
  sub_1E10ADEAC();
  (*(v7 + 8))(v12, v6);
  return swift_willThrow();
}

uint64_t PromotionalContent.WatchFace.previewImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_1E106F954()
{
  if (*v0)
  {
    result = 0x6E697274536C7275;
  }

  else
  {
    result = 0x4977656976657270;
  }

  *v0;
  return result;
}

uint64_t sub_1E106F99C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4977656976657270 && a2 == 0xEC0000006567616DLL;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E106FA84(uint64_t a1)
{
  v2 = sub_1E1071F84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E106FAC0(uint64_t a1)
{
  v2 = sub_1E1071F84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalContent.Video.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PromotionalContent.Video.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_1E10ADE9C() - 8) + 64);
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = sub_1E10ADEBC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE88C78, &qword_1E10B5E50) - 8) + 64);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v23 - v16;
  v18 = *(v1 + 64);
  v19 = *(v1 + 72);
  sub_1E10ADBAC();
  v20 = sub_1E10ADBBC();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v17, 1, v20) != 1)
  {
    return (*(v21 + 32))(a1, v17, v20);
  }

  sub_1E104E5A0(v17);
  sub_1E10ADE7C();
  sub_1E10693E0(MEMORY[0x1E69E7CC0]);
  sub_1E106299C();
  sub_1E10ADB6C();
  sub_1E10ADEAC();
  (*(v7 + 8))(v12, v6);
  return swift_willThrow();
}

uint64_t PromotionalContent.Video.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PromotionalContent.Video.previewImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  *a1 = *(v1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
}

uint64_t sub_1E106FDD4()
{
  v1 = 25705;
  v2 = 0x4977656976657270;
  if (*v0 != 2)
  {
    v2 = 0x6E697274536C7275;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E106FE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1072A18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E106FE74(uint64_t a1)
{
  v2 = sub_1E1071FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E106FEB0(uint64_t a1)
{
  v2 = sub_1E1071FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromotionalContent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ADE0, &qword_1E10B8898);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  v12 = *v1;
  v11 = v1[1];
  v13 = v1[3];
  v19 = v1[2];
  v20 = v11;
  v18 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1071AC8();

  sub_1E10AEA5C();
  v22 = v12;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ADF0, &qword_1E10B88A0);
  sub_1E1071B1C();
  sub_1E10AE8AC();

  if (!v2)
  {
    v15 = v18;
    v16 = v19;
    v22 = v20;
    v21 = 1;
    sub_1E10AE8AC();
    v22 = v16;
    v21 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE00, &qword_1E10B88A8);
    sub_1E1071BA0();
    sub_1E10AE8AC();
    v22 = v15;
    v21 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE18, &qword_1E10B88B0);
    sub_1E1071C78();
    sub_1E10AE8AC();
  }

  return (*(v5 + 8))(v10, v4);
}

uint64_t PromotionalContent.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1E0FEC1BC(a1, v3);
  sub_1E0FEC1BC(a1, v4);
  sub_1E0FEC108(a1, v6);

  return sub_1E0FEBFF0(a1, v5);
}

uint64_t PromotionalContent.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E10AE9CC();
  sub_1E0FEC1BC(v6, v1);
  sub_1E0FEC1BC(v6, v2);
  sub_1E0FEC108(v6, v4);
  sub_1E0FEBFF0(v6, v3);
  return sub_1E10AEA0C();
}

uint64_t PromotionalContent.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE30, &qword_1E10B88B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1071AC8();
  sub_1E10AEA3C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8ADF0, &qword_1E10B88A0);
  v16 = 0;
  sub_1E1071D50();
  sub_1E10AE7FC();
  v15 = v17;
  v16 = 1;
  sub_1E10AE7FC();
  v11 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE00, &qword_1E10B88A8);
  v16 = 2;
  sub_1E1071DD4();
  sub_1E10AE7FC();
  v14 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE18, &qword_1E10B88B0);
  v16 = 3;
  sub_1E1071EAC();
  sub_1E10AE7FC();
  (*(v4 + 8))(v9, v3);
  MEMORY[0] = v15;
  MEMORY[8] = v11;
  MEMORY[0x10] = v14;
  MEMORY[0x18] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E10705C0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E10AE9CC();
  sub_1E0FEC1BC(v6, v1);
  sub_1E0FEC1BC(v6, v2);
  sub_1E0FEC108(v6, v4);
  sub_1E0FEBFF0(v6, v3);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1070638(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  sub_1E0FEC1BC(a1, v3);
  sub_1E0FEC1BC(a1, v4);
  sub_1E0FEC108(a1, v6);

  return sub_1E0FEBFF0(a1, v5);
}

uint64_t sub_1E107069C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_1E10AE9CC();
  sub_1E0FEC1BC(v6, v1);
  sub_1E0FEC1BC(v6, v2);
  sub_1E0FEC108(v6, v4);
  sub_1E0FEBFF0(v6, v3);
  return sub_1E10AEA0C();
}

uint64_t PromotionalContent.WatchFace.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE60, &qword_1E10B88C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v16 - v8;
  v17 = *v1;
  v10 = *(v1 + 2);
  v11 = *(v1 + 3);
  v12 = *(v1 + 4);
  v16[0] = *(v1 + 5);
  v16[1] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1071F84();

  sub_1E10AEA5C();
  v19 = v17;
  v20 = v10;
  v21 = v11;
  v22 = 0;
  sub_1E0FEDBFC();
  v14 = v18;
  sub_1E10AE8AC();

  if (!v14)
  {
    LOBYTE(v19) = 1;
    sub_1E10AE86C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t PromotionalContent.WatchFace.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1E12EE160](*v0);
  MEMORY[0x1E12EE160](v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t PromotionalContent.WatchFace.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t PromotionalContent.WatchFace.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE70, &qword_1E10B88C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1071F84();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  sub_1E0FEDFB0();
  sub_1E10AE7FC();
  v21 = v24;
  v22 = v23;
  v13 = v26;
  v20 = v25;
  LOBYTE(v23) = 1;
  v14 = sub_1E10AE7BC();
  v16 = v15;
  (*(v6 + 8))(v11, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v17;
  a2[2] = v20;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E1070C30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1070CC4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x1E12EE160](*v0);
  MEMORY[0x1E12EE160](v1);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E1070D44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1E10AE9CC();
  MEMORY[0x1E12EE160](v1);
  MEMORY[0x1E12EE160](v2);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1070E04@<X0>(uint64_t *a1@<X8>)
{
  result = PromotionalContent.WatchFace.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PromotionalContent.Video.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE78, &qword_1E10B88D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v23 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v28 = v1[3];
  v29 = v12;
  v13 = v1[4];
  v26 = v1[5];
  v27 = v13;
  v14 = v1[6];
  v24 = v1[7];
  v25 = v14;
  v15 = v1[9];
  v23[1] = v1[8];
  v23[2] = v15;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1071FD8();

  sub_1E10AEA5C();
  v31 = v10;
  v32 = v11;
  v35 = 0;
  sub_1E0FED9C8();
  v17 = v30;
  sub_1E10AE8AC();

  if (!v17)
  {
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v24;
    LOBYTE(v31) = 1;
    sub_1E10AE86C();
    v31 = v20;
    v32 = v19;
    v33 = v18;
    v34 = v21;
    v35 = 2;
    sub_1E0FEDBFC();

    sub_1E10AE8AC();

    LOBYTE(v31) = 3;
    sub_1E10AE86C();
  }

  return (*(v4 + 8))(v9, v3);
}

uint64_t PromotionalContent.Video.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1E12EE160](v5);
  MEMORY[0x1E12EE160](v6);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t PromotionalContent.Video.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1E12EE160](v5);
  MEMORY[0x1E12EE160](v6);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t PromotionalContent.Video.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AE88, &qword_1E10B88D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1071FD8();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v37) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v13 = v42;
  v36 = v43;
  LOBYTE(v42) = 1;
  v14 = sub_1E10AE7BC();
  v35 = v15;
  v33 = v14;
  v34 = v13;
  LOBYTE(v37) = 2;
  sub_1E0FEDFB0();
  sub_1E10AE7FC();
  v30 = v42;
  v32 = v43;
  v16 = v45;
  v31 = v44;
  v52 = 3;
  v17 = sub_1E10AE7BC();
  v19 = v18;
  (*(v6 + 8))(v11, v5);
  v20 = v16;
  v29 = v16;
  v21 = v34;
  *&v37 = v34;
  *(&v37 + 1) = v36;
  v22 = v33;
  v23 = v35;
  *&v38 = v33;
  *(&v38 + 1) = v35;
  v24 = v30;
  *&v39 = v30;
  *(&v39 + 1) = v32;
  *&v40 = v31;
  *(&v40 + 1) = v20;
  *&v41 = v17;
  *(&v41 + 1) = v19;
  v25 = v40;
  a2[2] = v39;
  a2[3] = v25;
  a2[4] = v41;
  v26 = v38;
  *a2 = v37;
  a2[1] = v26;
  sub_1E107202C(&v37, &v42);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v42 = v21;
  v43 = v36;
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v32;
  v48 = v31;
  v49 = v29;
  v50 = v17;
  v51 = v19;
  return sub_1E1072064(&v42);
}

uint64_t sub_1E107158C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1E12EE160](v5);
  MEMORY[0x1E12EE160](v6);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1071654()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v10 = v0[9];
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1E12EE160](v5);
  MEMORY[0x1E12EE160](v6);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E10716FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[9];
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  MEMORY[0x1E12EE160](v5);
  MEMORY[0x1E12EE160](v6);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t _s12ShazamEvents18PromotionalContentV5VideoV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v18 = a1[7];
  v19 = a1[6];
  v16 = a1[9];
  v17 = a1[8];
  v7 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v14 = a2[9];
  v15 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E10AE8FC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v4 == v6)
  {
    result = 0;
  }

  else
  {
    v13 = sub_1E10AE8FC();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  if (v3 == v8 && v5 == v9)
  {
    if (v19 == v10 && v18 == v11 || (sub_1E10AE8FC() & 1) != 0)
    {
      if (v17 == v15 && v16 == v14)
      {
        return 1;
      }

      return sub_1E10AE8FC();
    }

    return 0;
  }

  return result;
}

uint64_t _s12ShazamEvents18PromotionalContentV9WatchFaceV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  result = 0;
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    if (v4 = a1[4], v5 = a1[5], v6 = a2[4], v7 = a2[5], a1[2] == a2[2]) && a1[3] == a2[3] || (v8 = a1[3], v9 = sub_1E10AE8FC(), result = 0, (v9))
    {
      if (v4 == v6 && v5 == v7)
      {
        return 1;
      }

      else
      {

        return sub_1E10AE8FC();
      }
    }
  }

  return result;
}

uint64_t _s12ShazamEvents18PromotionalContentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_1E0FFE8B4(*a1, *a2) & 1) == 0 || (sub_1E0FFE8B4(v2, v5) & 1) == 0 || (sub_1E0FFE958(v4, v7) & 1) == 0)
  {
    return 0;
  }

  return sub_1E0FFEA58(v3, v6);
}

unint64_t sub_1E1071AC8()
{
  result = qword_1ECE8ADE8;
  if (!qword_1ECE8ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ADE8);
  }

  return result;
}

unint64_t sub_1E1071B1C()
{
  result = qword_1ECE8ADF8;
  if (!qword_1ECE8ADF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8ADF0, &qword_1E10B88A0);
    sub_1E0FEDBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8ADF8);
  }

  return result;
}

unint64_t sub_1E1071BA0()
{
  result = qword_1ECE8AE08;
  if (!qword_1ECE8AE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8AE00, &qword_1E10B88A8);
    sub_1E1071C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE08);
  }

  return result;
}

unint64_t sub_1E1071C24()
{
  result = qword_1ECE8AE10;
  if (!qword_1ECE8AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE10);
  }

  return result;
}

unint64_t sub_1E1071C78()
{
  result = qword_1ECE8AE20;
  if (!qword_1ECE8AE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8AE18, &qword_1E10B88B0);
    sub_1E1071CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE20);
  }

  return result;
}

unint64_t sub_1E1071CFC()
{
  result = qword_1ECE8AE28;
  if (!qword_1ECE8AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE28);
  }

  return result;
}

unint64_t sub_1E1071D50()
{
  result = qword_1ECE8AE38;
  if (!qword_1ECE8AE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8ADF0, &qword_1E10B88A0);
    sub_1E0FEDFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE38);
  }

  return result;
}

unint64_t sub_1E1071DD4()
{
  result = qword_1ECE8AE40;
  if (!qword_1ECE8AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8AE00, &qword_1E10B88A8);
    sub_1E1071E58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE40);
  }

  return result;
}

unint64_t sub_1E1071E58()
{
  result = qword_1ECE8AE48;
  if (!qword_1ECE8AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE48);
  }

  return result;
}

unint64_t sub_1E1071EAC()
{
  result = qword_1ECE8AE50;
  if (!qword_1ECE8AE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8AE18, &qword_1E10B88B0);
    sub_1E1071F30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE50);
  }

  return result;
}

unint64_t sub_1E1071F30()
{
  result = qword_1ECE8AE58;
  if (!qword_1ECE8AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE58);
  }

  return result;
}

unint64_t sub_1E1071F84()
{
  result = qword_1ECE8AE68;
  if (!qword_1ECE8AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE68);
  }

  return result;
}

unint64_t sub_1E1071FD8()
{
  result = qword_1ECE8AE80;
  if (!qword_1ECE8AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE80);
  }

  return result;
}

unint64_t sub_1E10720E8()
{
  result = qword_1ECE8AE90;
  if (!qword_1ECE8AE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE90);
  }

  return result;
}

unint64_t sub_1E107213C()
{
  result = qword_1ECE8AE98;
  if (!qword_1ECE8AE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AE98);
  }

  return result;
}

uint64_t sub_1E10721E4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t sub_1E1072248()
{
  result = qword_1ECE8AEA0;
  if (!qword_1ECE8AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEA0);
  }

  return result;
}

unint64_t sub_1E107229C()
{
  result = qword_1ECE8AEA8;
  if (!qword_1ECE8AEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEA8);
  }

  return result;
}

unint64_t sub_1E10722F4()
{
  result = qword_1ECE8AEB0;
  if (!qword_1ECE8AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEB0);
  }

  return result;
}

unint64_t sub_1E107234C()
{
  result = qword_1ECE8AEB8;
  if (!qword_1ECE8AEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEB8);
  }

  return result;
}

unint64_t sub_1E10723A4()
{
  result = qword_1ECE8AEC0;
  if (!qword_1ECE8AEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEC0);
  }

  return result;
}

uint64_t sub_1E10723F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1072440(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E10724BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1072504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E107259C()
{
  result = qword_1ECE8AEC8;
  if (!qword_1ECE8AEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEC8);
  }

  return result;
}

unint64_t sub_1E10725F4()
{
  result = qword_1ECE8AED0;
  if (!qword_1ECE8AED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AED0);
  }

  return result;
}

unint64_t sub_1E107264C()
{
  result = qword_1ECE8AED8;
  if (!qword_1ECE8AED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AED8);
  }

  return result;
}

unint64_t sub_1E10726A4()
{
  result = qword_1ECE8AEE0;
  if (!qword_1ECE8AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEE0);
  }

  return result;
}

unint64_t sub_1E10726FC()
{
  result = qword_1ECE8AEE8;
  if (!qword_1ECE8AEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEE8);
  }

  return result;
}

unint64_t sub_1E1072754()
{
  result = qword_1ECE8AEF0;
  if (!qword_1ECE8AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEF0);
  }

  return result;
}

unint64_t sub_1E10727AC()
{
  result = qword_1ECE8AEF8;
  if (!qword_1ECE8AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AEF8);
  }

  return result;
}

unint64_t sub_1E1072804()
{
  result = qword_1ECE8AF00;
  if (!qword_1ECE8AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF00);
  }

  return result;
}

unint64_t sub_1E107285C()
{
  result = qword_1ECE8AF08;
  if (!qword_1ECE8AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF08);
  }

  return result;
}

uint64_t sub_1E10728B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736F746F6870 && a2 == 0xE600000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657061706C6C6177 && a2 == 0xEA00000000007372 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6361466863746177 && a2 == 0xEA00000000007365 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736F65646976 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E1072A18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4977656976657270 && a2 == 0xEC0000006567616DLL || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E1072B88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E1072BD0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1E1072C28()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1E12EE180](*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E12EE180](*&v2);
  v3 = *(v0 + 16);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1E12EE180](*&v3);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

float64_t sub_1E1072CAC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E1072F84(a1, v6);
  if (!v2)
  {
    result = v6[0].f64[0];
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1E1072CF4(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA4C();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1E10AE91C();
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

uint64_t sub_1E1072D8C()
{
  sub_1E10AE9CC();
  sub_1E1072C28();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1072DD0()
{
  sub_1E10AE9CC();
  sub_1E1072C28();
  return sub_1E10AEA0C();
}

uint64_t sub_1E1072E0C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  v6 = *(a1 + 24);
  return sub_1E10AE8FC();
}

unint64_t sub_1E1072E64()
{
  result = qword_1ECE8AF10;
  if (!qword_1ECE8AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8AF10);
  }

  return result;
}

CGColorRef sub_1E1072EB8(double a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AF30, &qword_1E10B90D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B80A0;
  *(inited + 32) = a1;
  v7 = (inited + 32);
  *(inited + 40) = a2;
  *(inited + 48) = a3;
  *(inited + 56) = 0x3FF0000000000000;
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
  if (v8)
  {
    v9 = v8;
    v10 = CGColorCreate(v8, v7);
  }

  else
  {

    return 0;
  }

  return v10;
}

void sub_1E1072F84(uint64_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v40 = a2;
  v4 = sub_1E10AE4CC();
  v42.i64[0] = *(v4 - 8);
  v5 = *(v42.i64[0] + 64);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E10ADA5C();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10AEA2C();
  if (v2)
  {
    goto LABEL_4;
  }

  v36 = v15;
  v37 = v4;
  v38 = v9;
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  v17 = sub_1E10AE90C();
  v19 = v18;
  v20 = objc_allocWithZone(MEMORY[0x1E696AE88]);
  v21 = sub_1E10AE04C();
  v35 = v17;
  v22 = v21;
  v23 = [v20 initWithString_];

  v43 = &unk_1F5BED5C0;
  sub_1E10733A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AF20, &qword_1E10B90C8);
  sub_1E10733F8();
  v24 = v36;
  sub_1E10AE56C();
  v25 = sub_1E10ADA4C();
  (*(v41 + 8))(v24, v10);
  [v23 setCharactersToBeSkipped_];

  v26 = v42.i64[0];
  v28 = v37;
  v27 = v38;
  (*(v42.i64[0] + 104))(v38, *MEMORY[0x1E696A020], v37);
  v29 = sub_1E10AE4BC();
  LOBYTE(v22) = v30;
  (*(v26 + 8))(v27, v28);
  if (v22)
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1E10AE5EC();

    v43 = 0xD00000000000002CLL;
    v44 = 0x80000001E10C0AB0;
    MEMORY[0x1E12ED840](v35, *&v19);

    MEMORY[0x1E12ED840](34, 0xE100000000000000);
    sub_1E10AE62C();
    swift_allocError();
    sub_1E10AE60C();

    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v45);
    a1 = v39;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v31 = v35;

  if ((v29 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v42 = vshlq_u64(vdupq_n_s64(v29), xmmword_1E10B8FD0);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v32.i64[0] = 255;
    v32.i64[1] = 255;
    v33 = v40;
    *v40 = vdivq_f64(vcvtq_f64_u64(vandq_s8(v42, v32)), vdupq_n_s64(0x406FE00000000000uLL));
    v33[1].f64[0] = v29 / 255.0;
    *&v33[1].f64[1] = v31;
    v33[2].f64[0] = v19;
  }
}