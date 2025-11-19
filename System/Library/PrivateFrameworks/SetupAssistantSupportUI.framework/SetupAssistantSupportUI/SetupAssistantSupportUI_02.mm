uint64_t sub_265A79798()
{
  result = v0;
  *(v0 + 16) = 28267;
  *(v0 + 24) = 0xE200000000000000;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_265A79840(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 24) = a1;
  return result;
}

unint64_t sub_265A79880()
{
  v1 = v0[2];
  v2 = *(*v0 + 96);
  result = v2();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v1 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v1 + 16 * result + 32);

  result = (v2)(v5);
  if (__OFADD__(result, 1))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    (*(*v0 + 104))((result + 1) % v6);
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_265A79974()
{

  return swift_deallocClassInstance();
}

uint64_t sub_265A799AC()
{
  result = swift_allocObject();
  *(result + 16) = &unk_287756560;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_265A799DC()
{
  result = v0;
  *(v0 + 16) = &unk_287756560;
  *(v0 + 24) = 0;
  return result;
}

float sub_265A79AC4(float a1)
{
  v2 = powf(a1, 0.9);
  v3 = v2 * (1.0 - powf(a1, 10.0));
  return powf(a1, 12.0) + v3;
}

uint64_t sub_265A79B20(uint64_t a1)
{
  v35 = *(a1 + 16);
  if (!v35)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDE0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_265AAB1D0;
    *(v4 + 32) = MEMORY[0x277D84F90];
    return v4;
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v34 = a1 + 32;
  do
  {
    v5 = *(v34 + 8 * v3);
    v6 = v5[1].u64[0];
    if (!v6)
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    ++v3;
    v36 = v5[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265AAB1D0;
    *(inited + 32) = 0;

    v8 = v36;
    v9 = 0;
    v10 = 0.0;
    v2 = 32;
    do
    {
      v1 = v9 + 1;
      v11 = *(v5 + v2);
      v12 = *(inited + 24);
      if (v9 + 1 >= v12 >> 1)
      {
        v37 = v8;
        v33 = *(v5 + v2);
        v13 = sub_265A79F94((v12 > 1), v9 + 2, 1, inited);
        v11 = v33;
        v8 = v37;
        inited = v13;
      }

      v10 = v10 + (1.0 - (1.0 / (fmaxf(fabsf(COERCE_FLOAT(vsubq_f32(v11, v8).i32[1])), 1.0) + 1.0)));
      *(inited + 16) = v9 + 2;
      *(inited + 4 * v9 + 36) = v10;
      v2 += 32;
      v8 = v11;
      ++v9;
    }

    while (v6 != v1);
    v14 = v5[3].f32[1];
    v15 = powf(v14, 0.9);
    v16 = powf(v14, 10.0);
    v17 = powf(v14, 12.0);
    if (v6 > v5[1].i64[0])
    {
      goto LABEL_28;
    }

    if (v6 > v1 + 1)
    {
      goto LABEL_29;
    }

    v18 = v17 + (v15 * (1.0 - v16));
    v19 = v5[2 * v6 + 1].f32[1];
    v20 = powf(v19, 12.0);
    v21 = powf(v19, 0.9);
    v22 = (v20 + (v21 * (1.0 - powf(v19, 10.0)))) - v18;
    v23 = 32;
    v24 = 13;
    v25 = MEMORY[0x277D84F90];
    do
    {
      v26 = v5->f32[v24];
      v27 = *(inited + v23);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_265A79F94(0, *(v25 + 2) + 1, 1, v25);
      }

      v29 = *(v25 + 2);
      v28 = *(v25 + 3);
      if (v29 >= v28 >> 1)
      {
        v25 = sub_265A79F94((v28 > 1), v29 + 1, 1, v25);
      }

      *(v25 + 2) = v29 + 1;
      *&v25[4 * v29 + 32] = (v26 + ((v18 + ((v27 / v10) * v22)) * 3.0)) * 0.25;
      v24 += 8;
      v23 += 4;
      --v6;
    }

    while (v6);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_265A7A098(0, *(v4 + 16) + 1, 1, v4);
    }

    v1 = *(v4 + 16);
    v30 = *(v4 + 24);
    if (v1 >= v30 >> 1)
    {
      v4 = sub_265A7A098((v30 > 1), v1 + 1, 1, v4);
    }

    *(v4 + 16) = v1 + 1;
    v2 = v4 + 32;
    *(v4 + 32 + 8 * v1) = v25;
  }

  while (v3 != v35);
  if (!*(v4 + 16))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v1 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (*(v1 + 16))
    {
      goto LABEL_24;
    }

LABEL_32:
    __break(1u);
  }

LABEL_31:
  v1 = sub_265A79F80(v1);
  *v2 = v1;
  if (!*(v1 + 16))
  {
    goto LABEL_32;
  }

LABEL_24:
  *(v1 + 32) = 0;
  return v4;
}

char *sub_265A79F94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_265A7A098(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDE8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t NewFeaturesContext.titleText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t NewFeaturesContext.bodyText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t NewFeaturesContext.deinit()
{

  return v0;
}

uint64_t NewFeaturesContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t static NewFeaturesContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  if (v3 == *(a1 + 16) && v4 == *(a1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_265AA7B50();
  }
}

uint64_t sub_265A7A32C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = *(*a2 + 24);
  if (v3 == *(v2 + 16) && v4 == *(v2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_265AA7B50();
  }
}

uint64_t NewFeaturesContext.hashValue.getter()
{
  sub_265AA7C10();
  sub_265AA75B0();
  return sub_265AA7C40();
}

uint64_t sub_265A7A3A4()
{
  sub_265AA7C10();
  sub_265AA75B0();
  return sub_265AA7C40();
}

uint64_t sub_265A7A3EC()
{

  sub_265AA75B0();
}

uint64_t sub_265A7A448()
{
  sub_265AA7C10();

  sub_265AA75B0();

  return sub_265AA7C40();
}

uint64_t NewFeaturesContext.description.getter()
{
  sub_265AA7950();
  MEMORY[0x266767E10](v0[2], v0[3]);
  MEMORY[0x266767E10](8250, 0xE200000000000000);
  sub_265AA7720();
  MEMORY[0x266767E10](540945696, 0xE400000000000000);
  sub_265AA7720();
  MEMORY[0x266767E10](10, 0xE100000000000000);
  v1 = v0[7];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v0[7];
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x266767E10](v2, v3);

  MEMORY[0x266767E10](10, 0xE100000000000000);
  v4 = v0[9];
  if (v4)
  {
    v5 = v0[8];
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    v6 = v0[9];
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x266767E10](v5, v6);

  return 0;
}

uint64_t sub_265A7A624()
{
  v1 = 0x6D69547472617473;
  if (*v0 != 1)
  {
    v1 = 0x656D6954646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_265A7A688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_265A7BC88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_265A7A6BC(uint64_t a1)
{
  v2 = sub_265A7BFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A7A6F8(uint64_t a1)
{
  v2 = sub_265A7BFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_265A7A734(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_265A7BDB0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_265A7A764()
{
  v1 = sub_265AA7590();
  v3 = v2;
  sub_265AA6C90();
  swift_allocObject();
  sub_265AA6C80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FDF0);
  sub_265A7ABB8();
  sub_265AA6C70();
  if (v0)
  {
  }

  else
  {

    v5 = v36[0];
    v6 = *(v36[0] + 16);
    if (v6)
    {
      v31 = v3;
      v36[5] = MEMORY[0x277D84F90];
      sub_265AA79B0();
      v7 = 0;
      v8 = (v36[0] + 56);
      v29 = v6;
      v30 = v36[0];
      while (v7 < *(v5 + 16))
      {
        v35 = v7;
        v9 = *(v8 - 1);
        v10 = *v8;

        v32 = sub_265AA7590();
        v12 = v11;
        type metadata accessor for NewFeaturesContext();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v13 = objc_opt_self();
        v14 = [v13 bundleForClass_];

        MEMORY[0x266767E10](95, 0xE100000000000000);
        MEMORY[0x266767E10](v1, v31);
        MEMORY[0x266767E10](0x454C5449545FLL, 0xE600000000000000);
        v15 = sub_265AA7540();

        v16 = sub_265AA7540();
        v17 = [v14 localizedStringForKey:v15 value:0 table:v16];

        v18 = sub_265AA7570();
        v34 = v19;

        v20 = [v13 bundleForClass_];
        v36[0] = v32;
        v36[1] = v12;

        MEMORY[0x266767E10](95, 0xE100000000000000);
        MEMORY[0x266767E10](v1, v31);
        MEMORY[0x266767E10](0x59444F425FLL, 0xE500000000000000);
        v21 = sub_265AA7540();

        v22 = sub_265AA7540();
        v23 = [v20 localizedStringForKey:v21 value:0 table:v22];

        v24 = sub_265AA7570();
        v26 = v25;

        v27 = swift_allocObject();
        v27[2] = v32;
        v27[3] = v12;
        v27[4] = v9;
        v27[5] = v10;
        v27[6] = v18;
        v27[7] = v34;
        v27[8] = v24;
        v27[9] = v26;
        v7 = v35 + 1;

        sub_265AA7990();
        sub_265AA79C0();
        sub_265AA79D0();
        sub_265AA79A0();
        v8 += 4;
        v5 = v30;
        if (v29 == v35 + 1)
        {
          goto LABEL_7;
        }
      }

      __break(1u);

      __break(1u);

      __break(1u);
    }

    else
    {
LABEL_7:

      v36[0] = sub_265A7B8B0(v28);
      sub_265A7AE40(v36);

      return v36[0];
    }
  }

  return result;
}

unint64_t sub_265A7ABB8()
{
  result = qword_28002FDF8;
  if (!qword_28002FDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002FDF0);
    sub_265A7AC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FDF8);
  }

  return result;
}

unint64_t sub_265A7AC3C()
{
  result = qword_2800320D0[0];
  if (!qword_2800320D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800320D0);
  }

  return result;
}

uint64_t sub_265A7AC90(unint64_t a1)
{
  v21 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_18:
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_265AA79F0();
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v15 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2667681B0](v3, a1);
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v3 >= *(v16 + 16))
      {
        goto LABEL_17;
      }

      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v5 = sub_265AA7890();
    v7 = v6;
    v9 = v8;
    v10 = HIDWORD(v6);
    v11 = objc_opt_self();
    v17 = v5;
    v18 = v7;
    v19 = v10;
    v20 = v9;
    v12 = [v11 valueWithCMTime_];

    ++v3;
    if (v12)
    {
      MEMORY[0x266767E70](v13);
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_265AA7660();
      }

      sub_265AA7680();
      v15 = v21;
      v3 = v4;
    }
  }

  return v15;
}

uint64_t sub_265A7AE40(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_265A7BC74(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_265A7AF44(v6);
  return sub_265AA79A0();
}

void *sub_265A7AEBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F918);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_265A7AF44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_265AA7B00();
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
        type metadata accessor for NewFeaturesContext();
        v6 = sub_265AA7670();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_265A7B0B0(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_265A7B044(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_265A7B044(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 32) >= *(*v9 + 32))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_265A7B0B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v82;
    if (!*v82)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_265A713C4(v10);
      v10 = result;
    }

    v77 = *(v10 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = *&v10[16 * v77];
        v79 = *&v10[16 * v77 + 24];
        sub_265A7B620((*a3 + 8 * v78), (*a3 + 8 * *&v10[16 * v77 + 16]), (*a3 + 8 * v79), v5);
        if (v4)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_265A713C4(v10);
        }

        if (v77 - 2 >= *(v10 + 2))
        {
          goto LABEL_114;
        }

        v80 = &v10[16 * v77];
        *v80 = v78;
        *(v80 + 1) = v79;
        result = sub_265A7B824(v77 - 1);
        v77 = *(v10 + 2);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*(*a3 + 8 * v9) + 32);
      v13 = *(*(*a3 + 8 * v11) + 32);
      v14 = v11 + 2;
      v15 = v12;
      while (v7 != v14)
      {
        v16 = *(*(*a3 + 8 * v14) + 32);
        v17 = v16 >= v15;
        ++v14;
        v15 = v16;
        if ((((v12 < v13) ^ v17) & 1) == 0)
        {
          v9 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v9 = v7;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v9 < v11)
      {
        goto LABEL_117;
      }

      if (v11 < v9)
      {
        v18 = 8 * v9 - 8;
        v19 = 8 * v11;
        v20 = v9;
        v21 = v11;
        do
        {
          if (v21 != --v20)
          {
            v23 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v22 = *(v23 + v19);
            *(v23 + v19) = *(v23 + v18);
            *(v23 + v18) = v22;
          }

          ++v21;
          v18 -= 8;
          v19 += 8;
        }

        while (v21 < v20);
        v7 = a3[1];
      }
    }

LABEL_20:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_116;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_118;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v9 < v11)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_265A70938(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v32 = *(v10 + 3);
    v33 = v5 + 1;
    if (v5 >= v32 >> 1)
    {
      result = sub_265A70938((v32 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v33;
    v34 = &v10[16 * v5];
    *(v34 + 4) = v11;
    *(v34 + 5) = v9;
    v35 = *v82;
    if (!*v82)
    {
      goto LABEL_125;
    }

    if (v5)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v10 + 4);
          v38 = *(v10 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = &v10[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_107;
          }

          v59 = &v10[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v63 = &v10[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_71:
        if (v58)
        {
          goto LABEL_106;
        }

        v66 = &v10[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_109;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_78:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v75 = *&v10[16 * v74 + 32];
        v5 = *&v10[16 * v36 + 40];
        sub_265A7B620((*a3 + 8 * v75), (*a3 + 8 * *&v10[16 * v36 + 32]), (*a3 + 8 * v5), v35);
        if (v4)
        {
        }

        if (v5 < v75)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_265A713C4(v10);
        }

        if (v74 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v76 = &v10[16 * v74];
        *(v76 + 4) = v75;
        *(v76 + 5) = v5;
        result = sub_265A7B824(v36);
        v33 = *(v10 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v10[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = &v10[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_108;
      }

      if (v52 >= v44)
      {
        v70 = &v10[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_112;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_88;
    }
  }

  v24 = *a3;
  v25 = *a3 + 8 * v9 - 8;
  v26 = v11 - v9;
LABEL_30:
  v27 = *(v24 + 8 * v9);
  v28 = v26;
  v29 = v25;
  while (1)
  {
    v30 = *v29;
    if (*(v27 + 32) >= *(*v29 + 32))
    {
LABEL_29:
      ++v9;
      v25 += 8;
      --v26;
      if (v9 != v7)
      {
        goto LABEL_30;
      }

      v9 = v7;
      goto LABEL_37;
    }

    if (!v24)
    {
      break;
    }

    *v29 = v27;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_265A7B620(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 32) < *(*v4 + 32))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 32) < *(*v17 + 32))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_265A7B824(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_265A713C4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_265A7B8B0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_265AA79F0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_265A7AEBC(v3, 0);
  sub_265A7B944((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_265A7B944(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_265AA79F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_265AA79F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_265A7C010();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE10);
            v9 = sub_265A7BAC0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NewFeaturesContext();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t (*sub_265A7BAC0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2667681B0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_265A7BB40;
  }

  __break(1u);
  return result;
}

unint64_t sub_265A7BB48()
{
  result = qword_28002FE00;
  if (!qword_28002FE00)
  {
    type metadata accessor for NewFeaturesContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FE00);
  }

  return result;
}

uint64_t sub_265A7BBDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_265A7BC24(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_265A7BC88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_265AA7B50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_265AA7B50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_265AA7B50();

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

double sub_265A7BDB0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE08);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A7BFBC();
  sub_265AA7C50();
  if (!v1)
  {
    v10[15] = 0;
    sub_265AA7A80();
    v10[14] = 1;
    sub_265AA7A90();
    v2 = v9;
    v10[13] = 2;
    sub_265AA7A90();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v2;
}

unint64_t sub_265A7BFBC()
{
  result = qword_280032360[0];
  if (!qword_280032360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280032360);
  }

  return result;
}

unint64_t sub_265A7C010()
{
  result = qword_28002FE18;
  if (!qword_28002FE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002FE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FE18);
  }

  return result;
}

unint64_t sub_265A7C088()
{
  result = qword_280032470[0];
  if (!qword_280032470[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280032470);
  }

  return result;
}

unint64_t sub_265A7C0E0()
{
  result = qword_280032580;
  if (!qword_280032580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280032580);
  }

  return result;
}

unint64_t sub_265A7C138()
{
  result = qword_280032588[0];
  if (!qword_280032588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280032588);
  }

  return result;
}

SetupAssistantSupportUI::NewFeaturesProviderError_optional __swiftcall NewFeaturesProviderError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_265AA7A40();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_265A7C1F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000064696C61;
  v3 = 0xD000000000000010;
  if (a1 > 4u)
  {
    v4 = 0x8000000265AAF450;
    v12 = 0x4364696C61766E69;
    v13 = 0x8000000265AAF470;
    v14 = 0xD000000000000013;
    if (a1 == 8)
    {
      v13 = 0xEE00747865746E6FLL;
    }

    else
    {
      v12 = 0xD000000000000013;
    }

    if (a1 == 7)
    {
      v12 = 0xD000000000000010;
    }

    else
    {
      v4 = v13;
    }

    v8 = 0x8000000265AAF410;
    if (a1 == 5)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v8 = 0x8000000265AAF430;
    }

    v10 = a1 <= 6u;
    if (a1 <= 6u)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0x8000000265AAF3C0;
    v5 = 0xD000000000000012;
    v6 = 0x746F4E7465737361;
    v7 = 0xEE00646564616F4CLL;
    if (a1 != 3)
    {
      v6 = 0xD000000000000010;
      v7 = 0x8000000265AAF3F0;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x8000000265AAF390;
    v9 = 0xD000000000000013;
    if (a1)
    {
      v9 = 0x766E497465737361;
      v8 = 0xEC00000064696C61;
    }

    v10 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v5;
    }
  }

  if (v10)
  {
    v15 = v8;
  }

  else
  {
    v15 = v4;
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 != 5)
      {
        v16 = "assetQueryFoundNone";
        goto LABEL_46;
      }

      v17 = "assetQueryFailed";
    }

    else
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v3 = 0x4364696C61766E69;
          v2 = 0xEE00747865746E6FLL;
          goto LABEL_47;
        }

        v16 = "playerNotConfigured";
LABEL_46:
        v2 = (v16 - 32) | 0x8000000000000000;
        v3 = 0xD000000000000013;
        goto LABEL_47;
      }

      v17 = "assetUnavailable";
    }

LABEL_42:
    v2 = (v17 - 32) | 0x8000000000000000;
    goto LABEL_47;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = 0x766E497465737361;
      goto LABEL_47;
    }

    v16 = "assetDownloadFailed";
    goto LABEL_46;
  }

  if (a2 == 2)
  {
    v2 = 0x8000000265AAF3C0;
    v3 = 0xD000000000000012;
    goto LABEL_47;
  }

  if (a2 != 3)
  {
    v17 = "assetPurgeFailed";
    goto LABEL_42;
  }

  v3 = 0x746F4E7465737361;
  v2 = 0xEE00646564616F4CLL;
LABEL_47:
  if (v11 == v3 && v15 == v2)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_265AA7B50();
  }

  return v18 & 1;
}

uint64_t sub_265A7C4B0()
{
  sub_265AA7C10();
  sub_265A7C500();
  return sub_265AA7C40();
}

uint64_t sub_265A7C500()
{
  sub_265AA75B0();
}

uint64_t sub_265A7C6A4()
{
  sub_265AA7C10();
  sub_265A7C500();
  return sub_265AA7C40();
}

uint64_t sub_265A7C6F4@<X0>(uint64_t *a1@<X8>)
{
  result = NewFeaturesProviderError.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_265A7C728(uint64_t a1)
{
  v2 = sub_265A7C9E0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_265A7C764(uint64_t a1)
{
  v2 = sub_265A7C9E0();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_265A7C7AC()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000010;
    v7 = 0x4364696C61766E69;
    if (v1 != 8)
    {
      v7 = 0xD000000000000013;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000010;
    if (v1 != 5)
    {
      v8 = 0xD000000000000013;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x766E497465737361;
    v3 = 0xD000000000000012;
    v4 = 0x746F4E7465737361;
    if (v1 != 3)
    {
      v4 = 0xD000000000000010;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_265A7C920()
{
  result = qword_28002FE20;
  if (!qword_28002FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FE20);
  }

  return result;
}

unint64_t sub_265A7C978()
{
  result = qword_28002FE28;
  if (!qword_28002FE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FE28);
  }

  return result;
}

unint64_t sub_265A7C9E0()
{
  result = qword_28002FE30;
  if (!qword_28002FE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FE30);
  }

  return result;
}

uint64_t NewFeaturesHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  NewFeaturesHandler.init()();
  return v0;
}

uint64_t NewFeaturesHandler.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoURL;
  v2 = sub_265AA6D60();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoAsset) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts) = 0;
  *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_pauseAtContext) = 0;
  v4 = (v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_timeObserver);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_lastBoundaryTime);
  v6 = MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  *v5 = *MEMORY[0x277CC08F0];
  v5[1] = *(v6 + 8);
  v5[2] = v7;
  v8 = v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_boundaryLeeway;
  sub_265A7A1CC();
  *v8 = sub_265AA7890();
  *(v8 + 8) = v9;
  *(v8 + 12) = v10;
  *(v8 + 16) = v11;
  v3(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation, 1, 1, v2);
  return v0;
}

double sub_265A7CBCC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_265A7CBEC()
{
  sub_265A7A1CC();

  return sub_265AA7890();
}

uint64_t sub_265A7CC20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265AA6D60();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id sub_265A7CC8C()
{
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
    goto LABEL_5;
  }

  result = [result view];
  if (!result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_265A7CCC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_265A7CD14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 224);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_265A7CDB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_265A7CE14(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_265A7CEA8;
}

void sub_265A7CEA8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_265A7CF78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_265A79488(a1, &v8 - v5, &qword_28002FF70);
  return (*(**a2 + 464))(v6);
}

uint64_t sub_265A7D058@<X0>(uint64_t a1@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    sub_265AA7570();

    sub_265AA75A0();
  }

  has_internal_content = os_variant_has_internal_content();
  swift_unknownObjectRelease();
  if (has_internal_content)
  {
    v6 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation;
    swift_beginAccess();
    return sub_265A79488(v1 + v6, a1, &qword_28002FF70);
  }

  else
  {
    v8 = sub_265AA6D60();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_265A7D1BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation;
  swift_beginAccess();
  sub_265A84F9C(a1, v1 + v3, &qword_28002FF70);
  return swift_endAccess();
}

void (*sub_265A7D22C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    sub_265AA7570();

    sub_265AA75A0();
  }

  has_internal_content = os_variant_has_internal_content();
  swift_unknownObjectRelease();
  if (has_internal_content)
  {
    v12 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation;
    swift_beginAccess();
    sub_265A79488(v1 + v12, v8, &qword_28002FF70);
  }

  else
  {
    v13 = sub_265AA6D60();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  }

  return sub_265A7D41C;
}

void sub_265A7D41C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  if (a2)
  {
    v5 = v2[9];
    sub_265A79488(v2[11], v2[10], &qword_28002FF70);
    v6 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation;
    swift_beginAccess();
    sub_265A84F9C(v4, v5 + v6, &qword_28002FF70);
    swift_endAccess();
    sub_265A65EE0(v3, &qword_28002FF70);
  }

  else
  {
    v7 = v2[9];
    v8 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation;
    swift_beginAccess();
    sub_265A84F9C(v3, v7 + v8, &qword_28002FF70);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

void sub_265A7D53C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v43[-v3];
  v5 = sub_265AA6D60();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = objc_opt_self();
  v10 = [v9 defaultCenter];
  [v10 setNowPlayingInfo_];

  v11 = [v9 defaultCenter];
  [v11 setPlaybackState_];

  MRMediaRemoteSetCanBeNowPlayingApplication();
  v12 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoURL;
  swift_beginAccess();
  sub_265A79488(v1 + v12, v4, &qword_28002FF70);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_265AA6D50();
  v13 = *(v6 + 8);
  v13(v4, v5);
  sub_265AA6CF0();

  v14 = objc_allocWithZone(MEMORY[0x277CE65B0]);
  v15 = sub_265AA6D10();
  v16 = [v14 initWithURL_];

  v13(v8, v5);
  v17 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoAsset);
  *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoAsset) = v16;
  v18 = v16;

  v19 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
  v20 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer;
  v21 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer) = v19;
  v22 = v19;

  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v22 setAllowsExternalPlayback_];

  v23 = *(v1 + v20);
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v23 setMuted_];
  v24 = [objc_allocWithZone(MEMORY[0x277CB85E0]) init];
  v25 = *(v1 + 16);
  *(v1 + 16) = v24;
  v26 = v24;

  v27 = *(v1 + v20);
  [v26 setPlayer_];

  v28 = *(v1 + 16);
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v28 setExitsFullScreenWhenPlaybackEnds_];
  v29 = *(v1 + 16);
  if (!v29)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v29 setShowsPlaybackControls_];
  v30 = *(v1 + 16);
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v30 setUpdatesNowPlayingInfoCenter_];
  v31 = *(v1 + 16);
  if (!v31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v31 setAllowsVideoFrameAnalysis_];
  v32 = *(v1 + 16);
  if (!v32)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v32 setAllowsPictureInPicturePlayback_];
  v33 = *(v1 + v20);
  if (!v33)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v33 setActionAtItemEnd_];
  v34 = *(v1 + v20);
  if (!v34)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (*(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts))
  {
    v35 = v34;

    sub_265A7AC90(v36);

    sub_265A59E2C(0, &qword_28002FE70);
    v37 = sub_265AA7630();

    sub_265A59E2C(0, &qword_28002F6E0);
    v38 = sub_265AA7830();
    v39 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_265A84F30;
    aBlock[5] = v39;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265A554D0;
    aBlock[3] = &block_descriptor_58;
    v40 = _Block_copy(aBlock);

    v41 = [v35 addBoundaryTimeObserverForTimes:v37 queue:v38 usingBlock:v40];
    _Block_release(v40);

    sub_265AA78D0();
    swift_unknownObjectRelease();
    v42 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_timeObserver;
    swift_beginAccess();
    sub_265A84F9C(aBlock, v1 + v42, &qword_280030120);
    swift_endAccess();
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_265A7DAEC()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - v6;
  v45 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer;
  v8 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  if (!v8)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v49 = v5;
  [v8 currentTime];
  v9 = v52;
  v11 = v53;
  v10 = v54;
  v12 = v55;
  v13 = sub_265A781E0();
  v50 = v3;
  v46 = *(v3 + 16);
  v47 = v13;
  v46(v7);
  v14 = sub_265AA6E00();
  v15 = sub_265AA77A0();
  v16 = os_log_type_enabled(v14, v15);
  v48 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v44 = v1;
    v18 = v2;
    v19 = v17;
    *v17 = 134217984;
    sub_265AA78A0();
    *(v19 + 1) = v20;
    _os_log_impl(&dword_265A4C000, v14, v15, "Handling boundary time: %f", v19, 0xCu);
    v21 = v19;
    v2 = v18;
    v1 = v44;
    MEMORY[0x2667691D0](v21, -1, -1);
  }

  v22 = *(v50 + 8);
  v22(v7, v2);
  v23 = v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_lastBoundaryTime;
  sub_265AA7880();
  if (sub_265AA7870())
  {
    v24 = v49;
    (v46)(v49, v47, v2);
    v25 = sub_265AA6E00();
    v26 = sub_265AA77A0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = v2;
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_265A4C000, v25, v26, "Unexpectedly got invalid boundary time callback", v28, 2u);
      MEMORY[0x2667691D0](v28, -1, -1);

      v22(v24, v27);
    }

    else
    {

      v22(v24, v2);
    }

    return;
  }

  *v23 = v9;
  *(v23 + 8) = v48;
  *(v23 + 12) = v10;
  *(v23 + 16) = v12;
  v29 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex);
  v30 = v29 + 1;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts;
    v31 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);
    if (!v31)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!(v31 >> 62))
    {
      if (v30 < *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

LABEL_25:
      if (!(*(*v1 + 216))())
      {
        return;
      }

      v41 = v40;
      ObjectType = swift_getObjectType();
      (*(v41 + 24))(ObjectType, v41);
      goto LABEL_27;
    }
  }

  if (v30 >= sub_265AA79F0())
  {
    goto LABEL_25;
  }

LABEL_11:
  sub_265A7E01C();
  v32 = *(v1 + v2);
  if (!v32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v32 & 0xC000000000000001) == 0)
  {
    if (v30 < 0)
    {
      __break(1u);
    }

    else if (v30 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v33 = *(v32 + 8 * v30 + 32);

      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_32;
  }

  v33 = MEMORY[0x2667681B0](v30, v32);

LABEL_16:
  v34 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_pauseAtContext);
  v52 = v33;
  if (!v34)
  {

    return;
  }

  v51 = v34;
  type metadata accessor for NewFeaturesContext();
  sub_265A84EB0(&qword_28002FE00, type metadata accessor for NewFeaturesContext);
  v35 = sub_265AA7530();

  if (v35)
  {
    v36 = *(v1 + v45);
    if (v36)
    {
      if (!(*(*v1 + 216))([v36 pause]))
      {
        return;
      }

      v38 = v37;
      v39 = swift_getObjectType();
      (*(v38 + 16))(v39, v38);
LABEL_27:
      swift_unknownObjectRelease();
      return;
    }

LABEL_35:
    __break(1u);
  }
}

void sub_265A7E01C()
{
  v6 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex;
  v7 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v0 = v1;
    v4 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts;
    v9 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);
    if (!v9)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (!(v9 >> 62))
    {
      if (v8 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

LABEL_5:
      if (!(*(*v0 + 216))())
      {
LABEL_20:
        *(v0 + v6) = v8;
        return;
      }

      v11 = *(v0 + v4);
      if (!v11)
      {
        goto LABEL_36;
      }

      v12 = v10;
      if ((v11 & 0xC000000000000001) == 0)
      {
        if (v8 < 0)
        {
          __break(1u);
        }

        else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v2 = *(v11 + 8 * v8 + 32);

          v13 = v11;
          if ((v11 & 0xC000000000000001) == 0)
          {
            goto LABEL_11;
          }

          goto LABEL_27;
        }

        __break(1u);
        goto LABEL_30;
      }

      v18 = MEMORY[0x2667681B0](v8, v11);
      v13 = *(v0 + v4);
      if (!v13)
      {
LABEL_38:
        __break(1u);
        return;
      }

      v2 = v18;
      if ((v13 & 0xC000000000000001) == 0)
      {
LABEL_11:
        if ((v8 & 0x8000000000000000) == 0)
        {
          if (v8 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v14 = *(v13 + 8 * v8 + 32);

            goto LABEL_14;
          }

LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

LABEL_27:

      v14 = MEMORY[0x2667681B0](v8, v13);
LABEL_14:
      v5 = *(v14 + 32);

      v3 = *(v0 + v4);
      if (!v3)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v4 = *(v0 + v6);

      if ((v3 & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v3 + 8 * v4 + 32);

LABEL_19:

          ObjectType = swift_getObjectType();
          v17 = *(v15 + 40);

          (*(v12 + 32))(v2, ObjectType, v12, v5 - v17);

          swift_unknownObjectRelease();
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_32:
      v15 = MEMORY[0x2667681B0](v4, v3);
      goto LABEL_19;
    }
  }

  if (v8 < sub_265AA79F0())
  {
    goto LABEL_5;
  }
}

uint64_t sub_265A7E298(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A7E36C, 0, 0);
}

uint64_t sub_265A7E36C()
{
  if (sub_265AA6CE0() == 3436653 && v1 == 0xE300000000000000)
  {

    goto LABEL_14;
  }

  v3 = sub_265AA7B50();

  if (v3)
  {
LABEL_14:
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v18 = sub_265AA6D60();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v15, v16, v18);
    (*(v19 + 56))(v15, 0, 1, v18);
    goto LABEL_15;
  }

  v4 = [objc_opt_self() defaultManager];
  sub_265AA6D40();
  v5 = sub_265AA7540();

  v0[11] = 0;
  v6 = [v4 contentsOfDirectoryAtPath:v5 error:v0 + 11];

  v7 = v0[11];
  if (!v6)
  {
    v30 = v7;
    sub_265AA6CC0();

    goto LABEL_17;
  }

  v8 = sub_265AA7640();
  v9 = v7;

  v10 = *(v8 + 16);
  if (!v10)
  {
LABEL_12:

LABEL_16:
    sub_265A7C978();
    swift_allocError();
    *v25 = 7;
LABEL_17:
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }

  v11 = 0;
  v12 = (v8 + 40);
  while (1)
  {
    if (v11 >= *(v8 + 16))
    {
      __break(1u);
    }

    v14 = *(v12 - 1);
    v13 = *v12;

    if (sub_265AA75F0())
    {
      break;
    }

    ++v11;
    v12 += 2;
    if (v10 == v11)
    {
      goto LABEL_12;
    }
  }

  v15 = v0[15];
  v17 = v0[13];

  sub_265AA6D40();

  MEMORY[0x266767E10](v14, v13);

  sub_265AA6CF0();

  v18 = sub_265AA6D60();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
LABEL_15:
  v20 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoURL;
  swift_beginAccess();
  sub_265A84F9C(v15, v17 + v20, &qword_28002FF70);
  swift_endAccess();
  v22 = v0[13];
  v21 = v0[14];
  v23 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoURL;
  swift_beginAccess();
  sub_265A79488(v22 + v23, v21, &qword_28002FF70);
  sub_265AA6D60();
  v24 = (*(*(v18 - 8) + 48))(v21, 1, v18);
  sub_265A65EE0(v21, &qword_28002FF70);
  if (v24 == 1)
  {
    goto LABEL_16;
  }

  sub_265AA76F0();
  v0[16] = sub_265AA76E0();
  v29 = sub_265AA76B0();

  return MEMORY[0x2822009F8](sub_265A7E850, v29, v28);
}

uint64_t sub_265A7E850()
{

  sub_265A7D53C();

  return MEMORY[0x2822009F8](sub_265A7E8EC, 0, 0);
}

uint64_t sub_265A7E8EC()
{
  v1 = *(v0[13] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  v0[17] = v1;
  if (!v1)
  {
    __break(1u);
  }

  v1;
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_265A7E9D8;

  return sub_265A85214();
}

uint64_t sub_265A7E9D8()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_265A7EB7C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_265A7EB7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265A7EC24()
{
  v0 = sub_265AA6D60();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v26 - v5;
  type metadata accessor for NewFeaturesHandler();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v26[2] = 0x6B72616D6B6F6F42;
  v26[3] = 0xE900000000000073;
  v9 = objc_opt_self();
  v10 = [v9 currentDevice];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 1)
  {
    v12 = 1684099177;
  }

  else
  {
    v12 = 0x656E6F685069;
  }

  if (v11 == 1)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  MEMORY[0x266767E10](v12, v13);

  v14 = sub_265AA7540();

  v15 = sub_265AA7540();
  v16 = [v8 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_265AA6D30();

    (*(v1 + 32))(v6, v4, v0);
    v17 = v26[5];
    v18 = sub_265AA6D70();
    if (v17)
    {
      return (*(v1 + 8))(v6, v0);
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v24 = [v9 currentDevice];
      [v24 userInterfaceIdiom];

      type metadata accessor for NewFeaturesContext();
      v25 = sub_265A7A764();

      sub_265A6572C(v22, v23);
      (*(v1 + 8))(v6, v0);
      *(v26[1] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts) = v25;
    }
  }

  else
  {
    sub_265A7C978();
    swift_allocError();
    *v21 = 8;
    return swift_willThrow();
  }
}

_OWORD *NewFeaturesHandler.deinit()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_timeObserver;
  swift_beginAccess();
  sub_265A79488(v0 + v1, &v5, &qword_280030120);
  if (!v6)
  {
    sub_265A65EE0(&v5, &qword_280030120);
    goto LABEL_5;
  }

  result = sub_265A5A3B4(&v5, &v7);
  v3 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(&v7, v8);
    v4 = v3;
    [v4 removeTimeObserver_];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(&v7);
LABEL_5:

    sub_265A7F188(v0 + 24);
    sub_265A65EE0(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoURL, &qword_28002FF70);

    sub_265A65EE0(v0 + v1, &qword_280030120);
    sub_265A65EE0(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler__overrideAssetLocation, &qword_28002FF70);
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t NewFeaturesHandler.__deallocating_deinit()
{
  NewFeaturesHandler.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NewFeaturesHandler.playNewFeaturesContent()()
{
  v1 = v0;
  v2 = sub_265AA6E20();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex) && (*(*v0 + 216))(v4))
  {
    v8 = *(v0 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);
    if (!v8)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v9 = v7;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v22 = v3;
      v20 = v8;

      v10 = MEMORY[0x2667681B0](0, v20);
      v3 = v22;
    }

    else
    {
      if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(v8 + 32);
    }

    ObjectType = swift_getObjectType();
    (*(v9 + 32))(v10, ObjectType, v9, 0.0);

    swift_unknownObjectRelease();
  }

  v12 = sub_265A781E0();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_265AA6E00();
  v14 = sub_265AA77A0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_265A4C000, v13, v14, "Continuing video playback", v15, 2u);
    MEMORY[0x2667691D0](v15, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v16 = *(v1 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  if (!v16)
  {
    goto LABEL_16;
  }

  if ((*(*v1 + 216))([v16 play]))
  {
    v18 = v17;
    v19 = swift_getObjectType();
    (*(v18 + 8))(v19, v18);
    swift_unknownObjectRelease();
  }
}

void NewFeaturesHandler.pauseNewFeaturesContent(at:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_265AA6E20();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer;
  v14 = *(v3 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  if (v14)
  {
    v44 = v2;
    v45 = v10;
    v15 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_pauseAtContext;
    *(v3 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_pauseAtContext) = 0;
    v16 = v14;

    if (a1)
    {
      v43 = v16;

      v17 = sub_265A781E0();
      v18 = v45;
      (*(v6 + 16))(v12, v17, v45);

      v19 = sub_265AA6E00();
      v20 = sub_265AA77A0();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v41 = v21;
        v42 = swift_slowAlloc();
        v46[0] = v42;
        *v21 = 136315138;
        v46[4] = a1;
        type metadata accessor for NewFeaturesContext();
        sub_265A84EB0(&qword_28002FE38, type metadata accessor for NewFeaturesContext);
        v22 = v20;
        v23 = sub_265AA7B10();
        v25 = sub_265A63AC0(v23, v24, v46);

        v26 = v41;
        *(v41 + 1) = v25;
        _os_log_impl(&dword_265A4C000, v19, v22, "Preparing to pause at beginning of context: %s", v26, 0xCu);
        v27 = v42;
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x2667691D0](v27, -1, -1);
        MEMORY[0x2667691D0](v26, -1, -1);

        (*(v6 + 8))(v12, v45);
      }

      else
      {

        (*(v6 + 8))(v12, v18);
      }

      *(v3 + v15) = a1;
    }

    else
    {
      v29 = sub_265A781E0();
      v30 = v45;
      (*(v6 + 16))(v9, v29, v45);
      v31 = v16;
      v32 = sub_265AA6E00();
      v33 = sub_265AA77A0();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 134217984;
        [v31 currentTime];
        sub_265AA78A0();
        *(v34 + 4) = v35;
        _os_log_impl(&dword_265A4C000, v32, v33, "Pausing video now, at time: %f", v34, 0xCu);
        v36 = v34;
        v30 = v45;
        MEMORY[0x2667691D0](v36, -1, -1);
      }

      (*(v6 + 8))(v9, v30);
      v37 = *(v3 + v13);
      if (v37)
      {
        if ((*(*v3 + 216))([v37 pause]))
        {
          v39 = v38;
          ObjectType = swift_getObjectType();
          (*(v39 + 16))(ObjectType, v39);
          swift_unknownObjectRelease();
        }
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_265A7C978();
    swift_allocError();
    *v28 = 9;
    swift_willThrow();
  }
}

uint64_t NewFeaturesHandler.resetNewFeaturesContent()()
{
  v1[18] = v0;
  v2 = sub_265AA6E20();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_265AA76F0();
  v1[22] = sub_265AA76E0();
  v4 = sub_265AA76B0();
  v1[23] = v4;
  v1[24] = v3;

  return MEMORY[0x2822009F8](sub_265A7FA30, v4, v3);
}

uint64_t sub_265A7FA30()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = sub_265A781E0();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_265AA6E00();
  v6 = sub_265AA77A0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_265A4C000, v5, v6, "Resetting and pausing video playback", v7, 2u);
    MEMORY[0x2667691D0](v7, -1, -1);
  }

  v9 = *(v0 + 160);
  v8 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);

  (*(v9 + 8))(v8, v10);
  v12 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer;
  v13 = *(v11 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  if (!v13)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return MEMORY[0x282200938](v13);
  }

  if ((*(**(v0 + 144) + 216))([v13 pause]))
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 16))(ObjectType, v15);
    swift_unknownObjectRelease();
  }

  *(*(v0 + 144) + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_pauseAtContext) = 0;

  v17 = *(v11 + v12);
  *(v0 + 200) = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = (v0 + 16);
  v19 = v0 + 80;
  v20 = MEMORY[0x277CC08F0];
  v21 = *MEMORY[0x277CC08F0];
  v22 = *(MEMORY[0x277CC08F0] + 8);
  v23 = *(MEMORY[0x277CC08F0] + 12);
  *(v0 + 296) = v22;
  *(v0 + 300) = v23;
  v24 = *(v20 + 16);
  *(v0 + 208) = v21;
  *(v0 + 216) = v24;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_265A7FCF8;
  v25 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE40);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_265A7FEB0;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v25;
  v26 = v17;
  *(v0 + 224) = v21;
  v27 = v0 + 224;
  *(v27 + 8) = v22;
  *(v27 + 12) = v23;
  *(v27 + 16) = v24;
  *(v27 + 24) = v21;
  *(v27 + 32) = v22;
  *(v27 + 36) = v23;
  *(v27 + 40) = v24;
  *(v27 + 48) = v21;
  *(v27 + 56) = v22;
  *(v27 + 60) = v23;
  *(v27 + 64) = v24;
  [v26 seekToTime:v27 toleranceBefore:v27 + 24 toleranceAfter:v27 + 48 completionHandler:v19];
  v13 = v18;

  return MEMORY[0x282200938](v13);
}

uint64_t sub_265A7FCF8()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);

  return MEMORY[0x2822009F8](sub_265A7FE00, v2, v1);
}

uint64_t sub_265A7FE00()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  v5 = v0[37];

  v6 = (v4 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_lastBoundaryTime);
  *v6 = v2;
  v6[1] = v5;
  v6[2] = v1;
  *(v4 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex) = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_265A7FEB0(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t NewFeaturesHandler.skip(to:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_265AA76F0();
  v2[20] = sub_265AA76E0();
  v4 = sub_265AA76B0();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_265A7FFA4, v4, v3);
}

uint64_t sub_265A7FFA4(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = *(v2 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoPlayer);
  *(v1 + 184) = v3;
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);
    if (v4)
    {
      if (v4 >> 62)
      {
LABEL_25:
        v5 = sub_265AA79F0();
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v6 = v3;

      v7 = 0;
      while (1)
      {
        *(v1 + 192) = v7;
        if (v5 == v7)
        {

          sub_265A7C978();
          swift_allocError();
          *v12 = 8;
          swift_willThrow();

          goto LABEL_17;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2667681B0](v7, v4);
        }

        else
        {
          if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v4 + 8 * v7 + 32);
        }

        v9 = *(v1 + 144);
        type metadata accessor for NewFeaturesContext();
        v3 = static NewFeaturesContext.== infix(_:_:)(v8, v9);

        if (v3)
        {
          break;
        }

        if (__OFADD__(v7++, 1))
        {
          goto LABEL_24;
        }
      }

      v15 = v1 + 16;

      [v6 pause];
      v16 = sub_265A7A4A4();
      v18 = v17;
      v28 = v19;
      v20 = MEMORY[0x277CC08F0];
      v21 = *MEMORY[0x277CC08F0];
      v22 = *(MEMORY[0x277CC08F0] + 8);
      v23 = *(MEMORY[0x277CC08F0] + 12);
      *(v1 + 288) = v22;
      *(v1 + 292) = v23;
      v24 = *(v20 + 16);
      *(v1 + 200) = v21;
      *(v1 + 208) = v24;
      *(v1 + 16) = v1;
      *(v1 + 56) = v1 + 296;
      *(v1 + 24) = sub_265A80304;
      v25 = swift_continuation_init();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE40);
      *(v1 + 216) = v16;
      v27 = v1 + 216;
      *(v27 - 80) = v26;
      *(v27 - 136) = MEMORY[0x277D85DD0];
      *(v27 - 128) = 1107296256;
      *(v27 - 120) = sub_265A7FEB0;
      *(v27 - 112) = &block_descriptor_5;
      *(v27 - 104) = v25;
      *(v27 + 8) = v18;
      *(v27 + 16) = v28;
      *(v27 + 24) = v21;
      *(v27 + 32) = v22;
      *(v27 + 36) = v23;
      *(v27 + 40) = v24;
      *(v27 + 48) = v21;
      *(v27 + 56) = v22;
      *(v27 + 60) = v23;
      *(v27 + 64) = v24;
      [v6 seekToTime:v27 toleranceBefore:v27 + 24 toleranceAfter:v27 + 48 completionHandler:?];
      a1 = v15;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](a1);
  }

  else
  {

    sub_265A7C978();
    swift_allocError();
    *v11 = 9;
    swift_willThrow();
LABEL_17:
    v13 = *(v1 + 8);

    return v13();
  }
}

uint64_t sub_265A80304()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_265A8040C, v2, v1);
}

uint64_t sub_265A8040C()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[19];
  v6 = v0[36];

  v7 = (v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_lastBoundaryTime);
  *v7 = v2;
  v7[1] = v6;
  v7[2] = v1;
  [v3 play];

  *(v5 + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_currentIndex) = v4;
  v8 = v0[1];

  return v8();
}

uint64_t NewFeaturesHandler.loadNewFeaturesContexts()()
{
  v1[5] = v0;
  v2 = sub_265AA6D60();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_265AA6E20();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A8069C, 0, 0);
}

uint64_t sub_265A8069C()
{
  v63 = v0;
  v1 = v0[23];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];
  v5 = OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_videoURL;
  swift_beginAccess();
  sub_265A79488(v4 + v5, v1, &qword_28002FF70);
  v6 = *(v3 + 48);
  v0[24] = v6;
  v0[25] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v6(v1, 1, v2);
  sub_265A65EE0(v1, &qword_28002FF70);
  if (v2 == 1 || !*(v0[5] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts))
  {
    v20 = sub_265A7EC24();
    v21 = v0[22];
    v22 = v0[6];
    (*(*v0[5] + 456))(v20);
    if (v6(v21, 1, v22) == 1)
    {
      sub_265A65EE0(v0[22], &qword_28002FF70);
      v23 = sub_265A8387C();
      v25 = v24;
      v0[29] = v24;
      v0[30] = sub_265A83AD4();
      v0[31] = v26;
      sub_265AA7950();

      MEMORY[0x266767E10](v23, v25);
      MEMORY[0x266767E10](126, 0xE100000000000000);
      v27 = [objc_opt_self() currentDevice];
      [v27 userInterfaceIdiom];

      v28 = sub_265AA7580();
      v30 = v29;

      MEMORY[0x266767E10](v28, v30);

      v0[32] = 0xD000000000000011;
      v0[33] = 0x8000000265AAF4A0;
      v31 = swift_task_alloc();
      v0[34] = v31;
      *v31 = v0;
      v31[1] = sub_265A810C8;

      return sub_265A83CDC(1);
    }

    else
    {
      v32 = v0[17];
      v33 = v0[12];
      v34 = v0[13];
      v36 = v0[10];
      v35 = v0[11];
      v37 = v0[6];
      v38 = v0[7];
      (*(v38 + 32))(v35, v0[22], v37);
      v39 = sub_265A781E0();
      (*(v34 + 16))(v32, v39, v33);
      (*(v38 + 16))(v36, v35, v37);
      v40 = sub_265AA6E00();
      v41 = sub_265AA77A0();
      v42 = os_log_type_enabled(v40, v41);
      v43 = v0[17];
      v45 = v0[12];
      v44 = v0[13];
      v46 = v0[10];
      v48 = v0[6];
      v47 = v0[7];
      if (v42)
      {
        v61 = v0[12];
        v49 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v62 = v59;
        *v49 = 136315138;
        sub_265A84EB0(&qword_28002FE48, MEMORY[0x277CC9260]);
        v50 = sub_265AA7B10();
        v58 = v43;
        v52 = v51;
        v57 = v41;
        v53 = *(v47 + 8);
        v53(v46, v48);
        v54 = sub_265A63AC0(v50, v52, &v62);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_265A4C000, v40, v57, "Loading assets from override location: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        MEMORY[0x2667691D0](v59, -1, -1);
        MEMORY[0x2667691D0](v49, -1, -1);

        (*(v44 + 8))(v58, v61);
      }

      else
      {

        v53 = *(v47 + 8);
        v53(v46, v48);
        (*(v44 + 8))(v43, v45);
      }

      v0[26] = v53;
      v55 = swift_task_alloc();
      v0[27] = v55;
      *v55 = v0;
      v55[1] = sub_265A80E5C;
      v56 = v0[11];

      return sub_265A7E298(v56);
    }
  }

  else
  {
    v7 = v0[18];
    v9 = v0[12];
    v8 = v0[13];
    v60 = *(v0[5] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);

    v10 = sub_265A781E0();
    (*(v8 + 16))(v7, v10, v9);
    v11 = sub_265AA6E00();
    v12 = sub_265AA77A0();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[18];
    v16 = v0[12];
    v15 = v0[13];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_265A4C000, v11, v12, "Assets already loaded, skipping asset lookup", v17, 2u);
      MEMORY[0x2667691D0](v17, -1, -1);
    }

    (*(v15 + 8))(v14, v16);

    v18 = v0[1];

    return v18(v60);
  }
}

uint64_t sub_265A80E5C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_265A82194;
  }

  else
  {
    v2 = sub_265A80F70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_265A80F70()
{
  v1 = *(v0[5] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);
  if (v1)
  {
    v2 = v0[26];
    v3 = v0[11];
    v4 = v0[6];

    v2(v3, v4);

    v5 = v0[1];

    v5(v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265A810C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
    v4 = sub_265A819C4;
  }

  else
  {
    v4 = sub_265A811DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265A811DC()
{
  v81 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = sub_265A781E0();
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  v7 = v1;
  v8 = sub_265AA6E00();
  v9 = sub_265AA77A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 280);
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = [v10 state];

    _os_log_impl(&dword_265A4C000, v8, v9, "Asset state: %ld", v11, 0xCu);
    MEMORY[0x2667691D0](v11, -1, -1);
    v12 = *(v0 + 280);
  }

  else
  {

    v12 = *(v0 + 280);
    v8 = v12;
  }

  v13 = *(v0 + 128);
  v14 = *(v0 + 96);
  v15 = *(v0 + 104);

  v16 = *(v15 + 8);
  v16(v13, v14);
  if (-[NSObject state](v12, sel_state) == 2 && (v17 = [*(v0 + 280) getLocalUrl]) != 0)
  {
    v18 = v16;
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    v21 = v17;
    sub_265AA6D30();

    v6(v19, v5, v20);

    v22 = sub_265AA6E00();
    v23 = sub_265AA77A0();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 280);
    if (v24)
    {
      v26 = *(v0 + 240);
      v27 = *(v0 + 248);
      v76 = *(v0 + 96);
      v78 = *(v0 + 120);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v80[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_265A63AC0(v26, v27, v80);
      _os_log_impl(&dword_265A4C000, v22, v23, "Loading downloaded asset for: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      MEMORY[0x2667691D0](v29, -1, -1);
      MEMORY[0x2667691D0](v28, -1, -1);

      v31 = v76;
      v30 = v78;
    }

    else
    {
      v61 = *(v0 + 120);
      v62 = *(v0 + 96);

      v30 = v61;
      v31 = v62;
    }

    v18(v30, v31);
    v63 = *(v0 + 168);
    v64 = *(v0 + 48);
    v65 = *(v0 + 56);
    (*(v65 + 32))(v63, *(v0 + 72), v64);
    (*(v65 + 56))(v63, 0, 1, v64);
  }

  else
  {
    v32 = *(v0 + 280);
    sub_265A7C978();
    v33 = swift_allocError();
    *v34 = 1;
    swift_willThrow();

    v36 = *(v0 + 104);
    v35 = *(v0 + 112);
    v37 = *(v0 + 96);
    v38 = sub_265A781E0();
    (*(v36 + 16))(v35, v38, v37);
    v39 = v33;

    v40 = sub_265AA6E00();
    v41 = sub_265AA77A0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 256);
      v43 = *(v0 + 264);
      v44 = *(v0 + 104);
      v77 = *(v0 + 96);
      v79 = *(v0 + 112);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v80[0] = v47;
      *v45 = 138412546;
      v48 = v33;
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 4) = v49;
      *v46 = v49;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_265A63AC0(v42, v43, v80);
      _os_log_impl(&dword_265A4C000, v40, v41, "Unable to use downloadable asset due to error: %@, using local asset: %s.mp4", v45, 0x16u);
      sub_265A65EE0(v46, &qword_28002F770);
      MEMORY[0x2667691D0](v46, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v47);
      MEMORY[0x2667691D0](v47, -1, -1);
      MEMORY[0x2667691D0](v45, -1, -1);

      (*(v44 + 8))(v79, v77);
    }

    else
    {
      v51 = *(v0 + 104);
      v50 = *(v0 + 112);
      v52 = *(v0 + 96);

      (*(v51 + 8))(v50, v52);
    }

    type metadata accessor for NewFeaturesHandler();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v54 = [objc_opt_self() bundleForClass_];
    v55 = sub_265AA7540();
    v56 = sub_265AA7540();
    v57 = [v54 URLForResource:v55 withExtension:v56];

    if (v57)
    {
      sub_265AA6D30();

      v58 = 0;
    }

    else
    {

      v58 = 1;
    }

    v59 = *(v0 + 168);
    v60 = *(v0 + 152);
    (*(*(v0 + 56) + 56))(v60, v58, 1, *(v0 + 48));
    sub_265A8448C(v60, v59);
  }

  v66 = *(v0 + 192);
  v67 = *(v0 + 160);
  v68 = *(v0 + 48);
  sub_265A79488(*(v0 + 168), v67, &qword_28002FF70);
  if (v66(v67, 1, v68) == 1)
  {
    v69 = *(v0 + 160);
    v70 = *(v0 + 168);

    sub_265A65EE0(v69, &qword_28002FF70);
    sub_265A7C978();
    swift_allocError();
    *v71 = 1;
    swift_willThrow();
    sub_265A65EE0(v70, &qword_28002FF70);

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 160), *(v0 + 48));
    v74 = swift_task_alloc();
    *(v0 + 296) = v74;
    *v74 = v0;
    v74[1] = sub_265A81EC4;
    v75 = *(v0 + 64);

    return sub_265A7E298(v75);
  }
}

uint64_t sub_265A819C4()
{
  v41 = v0;
  v1 = v0[36];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = sub_265A781E0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;

  v7 = sub_265AA6E00();
  v8 = sub_265AA77A0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[32];
    v10 = v0[33];
    v11 = v0[13];
    v38 = v0[12];
    v39 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v40 = v14;
    *v12 = 138412546;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v16;
    *v13 = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_265A63AC0(v9, v10, &v40);
    _os_log_impl(&dword_265A4C000, v7, v8, "Unable to use downloadable asset due to error: %@, using local asset: %s.mp4", v12, 0x16u);
    sub_265A65EE0(v13, &qword_28002F770);
    MEMORY[0x2667691D0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x2667691D0](v14, -1, -1);
    MEMORY[0x2667691D0](v12, -1, -1);

    (*(v11 + 8))(v39, v38);
  }

  else
  {
    v18 = v0[13];
    v17 = v0[14];
    v19 = v0[12];

    (*(v18 + 8))(v17, v19);
  }

  type metadata accessor for NewFeaturesHandler();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v22 = sub_265AA7540();
  v23 = sub_265AA7540();
  v24 = [v21 URLForResource:v22 withExtension:v23];

  if (v24)
  {
    sub_265AA6D30();

    v25 = 0;
  }

  else
  {

    v25 = 1;
  }

  v26 = v0[21];
  v27 = v0[19];
  (*(v0[7] + 56))(v27, v25, 1, v0[6]);
  sub_265A8448C(v27, v26);
  v28 = v0[24];
  v29 = v0[20];
  v30 = v0[6];
  sub_265A79488(v0[21], v29, &qword_28002FF70);
  if (v28(v29, 1, v30) == 1)
  {
    v31 = v0[20];
    v32 = v0[21];

    sub_265A65EE0(v31, &qword_28002FF70);
    sub_265A7C978();
    swift_allocError();
    *v33 = 1;
    swift_willThrow();
    sub_265A65EE0(v32, &qword_28002FF70);

    v34 = v0[1];

    return v34();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[20], v0[6]);
    v36 = swift_task_alloc();
    v0[37] = v36;
    *v36 = v0;
    v36[1] = sub_265A81EC4;
    v37 = v0[8];

    return sub_265A7E298(v37);
  }
}

uint64_t sub_265A81EC4()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_265A822C4;
  }

  else
  {
    v2 = sub_265A82000;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_265A82000()
{
  if (*(v0[5] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts))
  {
    v1 = v0[21];
    v2 = v0[7];
    v3 = v0[8];
    v4 = v0[6];
    v6 = *(v0[5] + OBJC_IVAR____TtC23SetupAssistantSupportUI18NewFeaturesHandler_contexts);

    (*(v2 + 8))(v3, v4);
    sub_265A65EE0(v1, &qword_28002FF70);

    v5 = v0[1];

    v5(v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_265A82194()
{
  (*(v0 + 208))(*(v0 + 88), *(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265A822C4()
{
  v1 = v0[21];
  (*(v0[7] + 8))(v0[8], v0[6]);
  sub_265A65EE0(v1, &qword_28002FF70);

  v2 = v0[1];

  return v2();
}

void (*sub_265A82478(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 232))();
  return sub_265A8520C;
}

void (*sub_265A82560(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 472))();
  return sub_265A825F8;
}

uint64_t sub_265A825FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265A82688;

  return NewFeaturesHandler.loadNewFeaturesContexts()();
}

uint64_t sub_265A82688(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_265A827B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265A638BC;

  return NewFeaturesHandler.resetNewFeaturesContent()();
}

uint64_t sub_265A82844(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265A6614C;

  return NewFeaturesHandler.skip(to:)(a1);
}

uint64_t static NewFeaturesHandler.retrieveAssetFromServer()()
{
  v1[19] = v0;
  v2 = sub_265AA6E20();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A82998, 0, 0);
}

uint64_t sub_265A82998()
{
  v1 = objc_opt_self();
  v2 = sub_265AA7540();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_265A82AF0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE50);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_265A85210;
  v0[13] = &block_descriptor_13;
  v0[14] = v3;
  [v1 startCatalogDownload:v2 then:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265A82AF0()
{

  return MEMORY[0x2822009F8](sub_265A82BD0, 0, 0);
}

uint64_t sub_265A82BD0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);

  v5 = sub_265A781E0();
  (*(v3 + 16))(v1, v5, v2);
  v6 = sub_265AA6E00();
  v7 = sub_265AA77A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_265A4C000, v6, v7, "Catalog download result: %ld", v8, 0xCu);
    MEMORY[0x2667691D0](v8, -1, -1);
  }

  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);

  (*(v10 + 8))(v9, v11);
  if (v4 <= 0xE && ((1 << v4) & 0x4401) != 0)
  {
    v12 = swift_task_alloc();
    *(v0 + 192) = v12;
    *v12 = v0;
    v12[1] = sub_265A82DC0;

    return sub_265A83CDC(0);
  }

  else
  {
    sub_265A7C978();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_265A82DC0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 200) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_265A82F10, 0, 0);
  }
}

uint64_t sub_265A82F10()
{
  v1 = [*(v0 + 200) state];
  v2 = *(v0 + 200);
  if (v1 == 2)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 152);
    v6 = swift_task_alloc();
    *(v0 + 208) = v6;
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    *v7 = v0;
    v7[1] = sub_265A83064;

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_265A83064()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_265A831EC;
  }

  else
  {

    v2 = sub_265A83180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265A83180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_265A831EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_265A83264(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v8 setAllowsCellularAccess_];
  [v8 setDiscretionary_];
  [v8 setRequiresPowerPluggedIn_];
  [v8 setAllowsExpensiveAccess_];
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_265A85098;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265A83484;
  aBlock[3] = &block_descriptor_81_0;
  v11 = _Block_copy(aBlock);

  [a2 startDownload:v8 completionWithError:v11];
  _Block_release(v11);
}

void sub_265A83484(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t static NewFeaturesHandler.removeAsset()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265A648CC;

  return sub_265A84504();
}

uint64_t sub_265A8359C(uint64_t a1, uint64_t a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_265A835F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265A6614C;

  return static NewFeaturesHandler.retrieveAssetFromServer()();
}

uint64_t sub_265A83684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265A6614C;

  return sub_265A84504();
}

uint64_t sub_265A83724()
{
  result = sub_265A83788(&unk_287756C70);
  qword_280032918 = &unk_287756BB0;
  return result;
}

uint64_t sub_265A83788(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_265A639B4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_265A8387C()
{
  v0 = sub_265AA6DC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265AA6DB0();
  v4 = sub_265AA6DA0();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = v4 == 0x54505F7470 && v6 == 0xE500000000000000;
  if (v8 || (sub_265AA7B50() & 1) != 0)
  {

    return 28261;
  }

  v10 = objc_opt_self();
  v11 = sub_265AA7630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_265AAB1D0;
  sub_265AA6DB0();
  v13 = sub_265AA6DA0();
  v15 = v14;
  v7(v3, v0);
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_265AA7630();

  v17 = [v10 preferredLocalizationsFromArray:v11 forPreferences:v16];

  v18 = sub_265AA7640();
  if (!*(v18 + 16))
  {
    goto LABEL_12;
  }

  if (!*(v18 + 16))
  {
    __break(1u);
LABEL_12:

    __break(1u);
    return result;
  }

  v19 = *(v18 + 32);

  return v19;
}

uint64_t sub_265A83AD4()
{
  v0 = sub_265AA6DC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265AA6DB0();
  v4 = sub_265AA6DA0();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = objc_opt_self();
  if (qword_280032910 != -1)
  {
    swift_once();
  }

  v8 = sub_265AA7630();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F938);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_265AAB1D0;
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;

  v10 = sub_265AA7630();

  v11 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v10];

  v12 = sub_265AA7640();
  if (*(v12 + 16))
  {

    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      return v13;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_265A83CDC(char a1)
{
  *(v1 + 184) = a1;
  v2 = sub_265AA6E20();
  *(v1 + 152) = v2;
  *(v1 + 160) = *(v2 - 8);
  *(v1 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A83D9C, 0, 0);
}

uint64_t sub_265A83D9C()
{
  v1 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v2 = sub_265AA7540();
  v3 = [v1 initWithType_];
  v0[22] = v3;

  if (v3)
  {
    v4 = sub_265AA7540();
    sub_265A83AD4();
    v5 = sub_265AA7540();

    [v3 addKeyValuePair:v4 with:v5];

    v6 = sub_265AA7540();
    v7 = [objc_opt_self() currentDevice];
    [v7 userInterfaceIdiom];

    v8 = sub_265AA7540();

    [v3 addKeyValuePair:v6 with:v8];

    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_265A84098;
    v9 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE90);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_265A85210;
    v0[13] = &block_descriptor_86;
    v0[14] = v9;
    [v3 queryMetaData_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_265A7C978();
    swift_allocError();
    *v10 = 7;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_265A84098()
{

  return MEMORY[0x2822009F8](sub_265A84178, 0, 0);
}

id sub_265A84178()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = sub_265A781E0();
  (*(v2 + 16))(v1, v5, v3);
  v6 = sub_265AA6E00();
  v7 = sub_265AA77A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v4;
    _os_log_impl(&dword_265A4C000, v6, v7, "Query result: %ld", v8, 0xCu);
    MEMORY[0x2667691D0](v8, -1, -1);
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v11 = *(v0 + 152);
  v12 = *(v0 + 184);

  (*(v10 + 8))(v9, v11);
  if (v12 == 1)
  {
    if (v4)
    {
LABEL_5:
      v13 = *(v0 + 176);
      sub_265A7C978();
      swift_allocError();
      v15 = 5;
LABEL_18:
      *v14 = v15;
      swift_willThrow();

      v23 = *(v0 + 8);

      return v23();
    }
  }

  else if ((v4 | 2) != 2)
  {
    goto LABEL_5;
  }

  result = [*(v0 + 176) results];
  if (!result)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v17 = result;
  sub_265A59E2C(0, &qword_28002FE98);
  v18 = sub_265AA7640();

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:
    v13 = *(v0 + 176);

    sub_265A7C978();
    swift_allocError();
    v15 = 6;
    goto LABEL_18;
  }

  result = sub_265AA79F0();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x2667681B0](0, v18);
    goto LABEL_13;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_23;
  }

  v19 = *(v18 + 32);
LABEL_13:
  v20 = v19;
  v21 = *(v0 + 176);

  v22 = *(v0 + 8);

  return v22(v20);
}

uint64_t type metadata accessor for NewFeaturesHandler()
{
  result = qword_280032970;
  if (!qword_280032970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A8448C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A84504()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_265A84594;

  return sub_265A83CDC(0);
}

uint64_t sub_265A84594(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 296) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_265A846C8, 0, 0);
  }
}

uint64_t sub_265A846C8()
{
  v1 = v0[37];
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_265A847E4;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE78);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_265A85210;
  v0[21] = &block_descriptor_71;
  v0[22] = v2;
  [v1 cancelDownload_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_265A847E4()
{

  return MEMORY[0x2822009F8](sub_265A848C4, 0, 0);
}

uint64_t sub_265A848C4()
{
  v1 = v0[34];
  if (v1 == 3 || v1 == 0)
  {
    v3 = v0[37];
    v0[10] = v0;
    v0[15] = v0 + 35;
    v0[11] = sub_265A84A64;
    v4 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE80);
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_265A85210;
    v0[29] = &block_descriptor_74;
    v0[30] = v4;
    [v3 purge_];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {
    v5 = v0[37];
    sub_265A7C978();
    swift_allocError();
    *v6 = 4;
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_265A84A64()
{

  return MEMORY[0x2822009F8](sub_265A84B44, 0, 0);
}

uint64_t sub_265A84B44()
{
  v1 = *(v0 + 280);
  if (v1 == 3 || v1 == 0)
  {
  }

  else
  {
    v3 = *(v0 + 296);
    sub_265A7C978();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_265A84C0C()
{
  sub_265A84E1C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_265A84E1C()
{
  if (!qword_28002FE58)
  {
    sub_265AA6D60();
    v0 = sub_265AA78C0();
    if (!v1)
    {
      atomic_store(v0, &qword_28002FE58);
    }
  }
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_265A84EB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265A84EF8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A84F30()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265A7DAEC();
  }

  return result;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A84F9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_265A85004()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265A85098(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    if (!a1)
    {
      return sub_265AA76D0();
    }

    sub_265A7C978();
    swift_allocError();
    *v5 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  return sub_265AA76C0();
}

uint64_t sub_265A85214()
{
  v1[3] = v0;
  v1[4] = sub_265AA76F0();
  v1[5] = sub_265AA76E0();
  v3 = sub_265AA76B0();
  v1[6] = v3;
  v1[7] = v2;

  return MEMORY[0x2822009F8](sub_265A852B0, v3, v2);
}

uint64_t sub_265A852B0()
{
  v1 = v0[3];
  _s4DoneCMa();
  v2 = swift_allocObject();
  v0[8] = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0;
  v0[2] = 0;
  v0[9] = sub_265AA76E0();
  v3 = swift_task_alloc();
  v0[10] = v3;
  v3[2] = v0 + 2;
  v3[3] = v1;
  v3[4] = v2;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_265A853E8;

  return MEMORY[0x2822008A0]();
}

uint64_t sub_265A853E8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_265A8558C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_265A8550C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_265A8550C()
{

  v1 = *(v0 + 16);
  if (v1)
  {
    sub_265AA6CA0();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265A8558C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_265A85644(uint64_t a1, void **a2, void *a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - v10;
  v17[1] = a3;
  swift_getKeyPath();
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a3;
  (*(v9 + 32))(v13 + v12, v11, v8);

  v14 = a3;
  v15 = sub_265AA6CD0();

  v16 = *a2;
  *a2 = v15;
}

id sub_265A857FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_265A85830(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_265AA7710();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a3, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a1;
  *(v15 + 5) = a2;
  (*(v7 + 32))(&v15[v14], v9, v6);

  v16 = a2;
  sub_265A5DCBC(0, 0, v12, &unk_265AACD90, v15);
}

uint64_t sub_265A85A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_265A85A50, a4, 0);
}

uint64_t sub_265A85A78()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = [*(v0 + 32) status];
    if (v1 == 2)
    {
      v2 = *(v0 + 24);
      v3 = sub_265A85BE4;
      goto LABEL_9;
    }

    if (v1 == 1)
    {
      v2 = *(v0 + 24);
      v3 = sub_265A85B44;
LABEL_9:

      return MEMORY[0x2822009F8](v3, v2, 0);
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_265A85B6C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  sub_265AA76D0();
  v1 = *(v0 + 8);

  return v1();
}

id sub_265A85C0C()
{
  result = [*(v0 + 32) error];
  if (result)
  {
    *(v0 + 16) = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
    sub_265AA76C0();
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265A85CB0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265A85CF8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265A85DD0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_265A85830(v2, v3, v4);
}

uint64_t sub_265A85E40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265A85F20()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FE88) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_265A648CC;

  return sub_265A85A2C(v6, v7, v8, v4, v5, v0 + v3);
}

uint64_t sub_265A86008(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002F930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A86070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void type metadata accessor for Status()
{
  if (!qword_28002FEC0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28002FEC0);
    }
  }
}

uint64_t dispatch thunk of NewFeaturesProvider.loadNewFeaturesContexts()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 64) + **(a2 + 64));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265A862A0;

  return v7(a1, a2);
}

uint64_t sub_265A862A0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of NewFeaturesProvider.resetNewFeaturesContent()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 88) + **(a2 + 88));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265A648CC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of NewFeaturesProvider.skip(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_265A6614C;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of static NewFeaturesAssetAcquisition.retrieveAssetFromServer()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265A6614C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of static NewFeaturesAssetAcquisition.removeAsset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265A6614C;

  return v7(a1, a2);
}

uint64_t sub_265A868AC()
{
  v1 = (v0 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredTermOfAddress);
  swift_beginAccess();
  v2 = *v1;
  sub_265A66BC8(*v1);
  return v2;
}

uint64_t sub_265A86908(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredTermOfAddress);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_265A66150(v6, v7);
}

uint64_t sub_265A86968()
{
  v1 = v0 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_265A869B4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_265A86A14()
{
  v1 = OBJC_IVAR___SASBookendAnimationConfiguration_useWatchVariant;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_265A86A58(char a1)
{
  v3 = OBJC_IVAR___SASBookendAnimationConfiguration_useWatchVariant;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_265A86AA8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint;
  result = swift_beginAccess();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t sub_265A86B9C(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredTermOfAddress);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      swift_beginAccess();
      v3 = *v2;
      v4 = v2[1];
      v5 = sub_265A86D3C;
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      swift_beginAccess();
      v3 = *v2;
      v4 = v2[1];
      v5 = sub_265A86D48;
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      swift_beginAccess();
      v3 = *v2;
      v4 = v2[1];
      v5 = sub_265A86CC4;
      goto LABEL_11;
    }

    if (a1 == 1)
    {
      swift_beginAccess();
      v3 = *v2;
      v4 = v2[1];
      v5 = sub_265A86D30;
LABEL_11:
      *v2 = v5;
      v2[1] = 0;
      return sub_265A66150(v3, v4);
    }
  }

  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  return sub_265A66150(v3, v4);
}

uint64_t sub_265A86CC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_265AA6BD0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_265A86D54@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_265AA6BD0();
  v7 = *(v4 - 8);
  (*(v7 + 104))(a2, v3, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

void __swiftcall SASBookendAnimationConfiguration.init()(SASBookendAnimationConfiguration *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id SASBookendAnimationConfiguration.init()()
{
  v1 = (v0 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredTermOfAddress);
  *v1 = 0;
  v1[1] = 0;
  v2 = v0 + OBJC_IVAR___SASBookendAnimationConfiguration_preferredStartingPoint;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR___SASBookendAnimationConfiguration_useWatchVariant) = 2;
  v4.super_class = SASBookendAnimationConfiguration;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t type metadata accessor for SASBookendAnimationConfiguration()
{
  result = qword_280032C88[0];
  if (!qword_280032C88[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280032C88);
  }

  return result;
}

uint64_t sub_265A87008()
{
  v7 = sub_265AA7820();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265AA77F0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_265AA7440();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_265A56C08();
  sub_265AA7430();
  v8 = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_265AA7860();
}

uint64_t sub_265A87250()
{
  v7 = sub_265AA7820();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265AA77F0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_265AA7440();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_265A56C08();
  sub_265AA7430();
  v8 = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_265AA7860();
}

uint64_t sub_265A87498(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = a6;
  v35 = a4;
  v36 = a5;
  v38 = a2;
  v39 = a3;
  v37 = a1;
  v40 = sub_265AA7820();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265AA77F0();
  MEMORY[0x28223BE20](v8);
  v9 = sub_265AA7440();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 2;
  v11 = sub_265A56C08();
  v33 = "gPoint";
  v34 = v11;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  sub_265AA7430();
  v43 = MEMORY[0x277D84F90];
  v32 = sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  v12 = *MEMORY[0x277D85260];
  v13 = *(v42 + 104);
  v42 += 104;
  v30 = v7;
  v13(v7, v12, v40);
  *(v10 + 48) = sub_265AA7860();
  v14 = MEMORY[0x277D84F90];
  *(v10 + 56) = MEMORY[0x277D84F90];
  sub_265AA7430();
  v43 = v14;
  v15 = v35;
  v16 = v41;
  sub_265AA78E0();
  v13(v30, v12, v40);
  v18 = v36;
  v17 = v37;
  *(v10 + 64) = sub_265AA7860();
  *(v10 + 16) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v10 + 24) = v38 & 1;
  v19 = v39;
  *(v10 + 25) = v39;
  *(v10 + 32) = v15;
  *(v10 + 40) = v18;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v10 + 72) = v16;

  ObjectType = swift_getObjectType();
  v21 = *(v18 + 8);
  v22 = v21(ObjectType, v18);
  if (v23)
  {
    sub_265A880A8(v22, v23);
  }

  if (v19)
  {
    v24 = v21(ObjectType, v18);
    if (v25)
    {
      sub_265A880A8(v24, v25);
    }

    v26 = v21(ObjectType, v18);
    sub_265A87D74(v26, v27, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v10;
}

uint64_t sub_265A8790C(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a6;
  v30 = a1;
  v31 = a5;
  v29 = a4;
  v32 = a2;
  v33 = a3;
  v35 = sub_265AA7820();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265AA77F0();
  MEMORY[0x28223BE20](v9);
  v10 = sub_265AA7440();
  MEMORY[0x28223BE20](v10 - 8);
  *(v6 + 16) = 0;
  *(v6 + 24) = 2;
  sub_265A56C08();
  v28[2] = "gPoint";
  *(v6 + 32) = 0;
  *(v6 + 40) = 0;
  sub_265AA7430();
  v38 = MEMORY[0x277D84F90];
  v28[1] = sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  v11 = *MEMORY[0x277D85260];
  v12 = *(v37 + 104);
  v37 += 104;
  v12(v34, v11, v35);
  *(v6 + 48) = sub_265AA7860();
  v13 = MEMORY[0x277D84F90];
  *(v7 + 56) = MEMORY[0x277D84F90];
  sub_265AA7430();
  v38 = v13;
  v14 = v29;
  v15 = v36;
  sub_265AA78E0();
  v12(v34, v11, v35);
  v16 = v30;
  v17 = v31;
  *(v7 + 64) = sub_265AA7860();
  *(v7 + 72) = 0;
  *(v7 + 16) = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v7 + 24) = v32 & 1;
  v18 = v33;
  *(v7 + 25) = v33;
  *(v7 + 32) = v14;
  *(v7 + 40) = v17;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v7 + 72) = v15;

  ObjectType = swift_getObjectType();
  v20 = *(v17 + 8);
  v21 = v20(ObjectType, v17);
  if (v22)
  {
    sub_265A880A8(v21, v22);
  }

  if (v18)
  {
    v23 = v20(ObjectType, v17);
    if (v24)
    {
      sub_265A880A8(v23, v24);
    }

    v25 = v20(ObjectType, v17);
    sub_265A87D74(v25, v26, 0);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v7;
}

uint64_t sub_265A87D74(unint64_t a1, void *a2, char a3)
{
  v7 = sub_265AA7410();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265AA7440();
  result = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a3)
    {

      sub_265A880A8(a1, a2);
    }

    else
    {
      v22 = v8;
      v23 = result;
      v16 = *(v3 + 48);
      v17 = v13;
      v18 = swift_allocObject();
      v18[2] = v3;
      v18[3] = a1;
      v18[4] = a2;
      aBlock[4] = sub_265A8E4F4;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_265A554D0;
      aBlock[3] = &block_descriptor_73;
      v19 = _Block_copy(aBlock);

      v20 = v16;

      sub_265AA7420();
      v24 = MEMORY[0x277D84F90];
      sub_265A659B0(&qword_280030190, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FAE0);
      sub_265A659F8(&qword_2800301A0, &unk_28002FAE0);
      sub_265AA78E0();
      MEMORY[0x2667680A0](0, v15, v10, v19);
      _Block_release(v19);

      (*(v22 + 8))(v10, v7);
      (*(v17 + 8))(v15, v23);
    }
  }

  return result;
}

void sub_265A880A8(unint64_t a1, void *a2)
{
  v3 = v2;
  v150 = a2;
  v149.n128_u64[0] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v135 - v5;
  v7 = sub_265AA6D60();
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v135 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v151 = *(v2 + 16);
  if (v151)
  {
    if (!*(v2 + 32))
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v152.n128_u64[0] = v15;
    v145 = &v135 - v13;
    v147 = v14;
    v148 = v12;
    v16 = *(v2 + 24);
    if (v16 == 2)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v17 = *(v3 + 40);
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v149.n128_u64[0], v150, v16 & 1, ObjectType, v17);
    v21 = v20;
    swift_unknownObjectRelease();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = v3;
    v24 = objc_opt_self();
    v25 = [v24 bundleForClass_];
    v146.n128_u64[0] = v21;
    v26 = sub_265AA7540();
    v27 = sub_265AA7540();
    v144 = v23;
    v28 = *(v23 + 24);
    if (v28 == 2)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v29 = v27;
    sub_265A69E4C(v28 & 1);
    v30 = sub_265AA7540();

    v31 = [v25 URLForResource:v26 withExtension:v29 subdirectory:v30];

    if (v31)
    {
      sub_265AA6D30();

      v32 = v147;
      v33 = *(v147 + 32);
      v34 = v148;
      v33(v6, v11, v148);
      (*(v32 + 56))(v6, 0, 1, v34);
      v35 = v145;
      v33(v145, v6, v34);
      v36 = v144;
    }

    else
    {
      (*(v147 + 56))(v6, 1, 1, v148);
      v37 = [v24 bundleForClass_];
      v38 = sub_265AA7540();
      v39 = sub_265AA7540();
      v36 = v144;
      v40 = *(v144 + 24);
      if (v40 == 2)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v41 = v39;
      sub_265A69E4C(v40 & 1);
      v42 = sub_265AA7540();

      v43 = [v37 URLForResource:v38 withExtension:v41 subdirectory:v42];

      if (!v43)
      {
LABEL_53:
        __break(1u);
        return;
      }

      v35 = v145;
      sub_265AA6D30();

      v32 = v147;
      v34 = v148;
      if ((*(v147 + 48))(v6, 1, v148) != 1)
      {
        sub_265A77944(v6);
      }
    }

    v44 = *(v32 + 16);
    v45 = v152.n128_u64[0];
    v44(v152.n128_u64[0], v35, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF78);
    inited = swift_initStackObject();
    *(inited + 32) = 0;
    v47 = MEMORY[0x277D83B88];
    *(inited + 16) = xmmword_265AAABB0;
    *(inited + 64) = v47;
    *(inited + 40) = 0;
    *(inited + 72) = 1;
    v48 = *(v36 + 72);
    if (!v48)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v49 = inited;
    type metadata accessor for CursiveTextPath();

    v51.n128_f64[0] = (*(*v48 + 280))(v50);
    v146 = v51;

    *(v49 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF80);
    v52 = swift_allocObject();
    *(v49 + 80) = v52;
    v52[1] = v146;
    v53 = sub_265A8DCBC(v49);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF88);
    swift_arrayDestroy();
    v54 = sub_265A6B9DC(v45, v53);
    v55 = (*(*v54 + 152))();
    v56 = sub_265A79B20(v55);
    v57 = sub_265A891FC(v55, v56);

    v58 = sub_265A6F104(v57);

    if ((*(v58 + 2) * 96) >> 64 != (96 * *(v58 + 2)) >> 63)
    {
      goto LABEL_43;
    }

    v59 = &_OBJC_LABEL_PROTOCOL___UITraitChangeRegistration;
    v137 = (v58 + 32);
    v142 = [v151 newBufferWithBytes_length_options_];
    v60 = (*(*v54 + 272))();
    v61.n128_f32[0] = ceilf(v60 * 1.2);
    v152 = v61;
    v62 = (*v54 + 224);
    v140 = *v62;
    v139 = v62;
    *&v63 = v140();
    *&v64 = sub_265A79F44(v63, v152.n128_f64[0]);
    v143 = v64;

    v65 = nullsub_1(v152, v152.n128_f32[0], *&v143);
    v146 = v66;
    sub_265A6F314(v58, *&v65, v67, v66);
    v69 = v68;
    v70 = sub_265A6F958(v58, v68);
    v71 = *(v70 + 16);
    v72 = MEMORY[0x277D84F90];
    v141 = v58;
    if (v71)
    {
      v135 = v69;
      v136 = v54;
      aBlock[0] = MEMORY[0x277D84F90];
      v138 = v70;
      sub_265A8D868(0, v71, 0);
      v73 = v138;
      v74 = 32;
      v75 = aBlock[0];
      while (1)
      {
        v76 = *&v73[v74];
        if (v76 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v76 > 0x7FFFFFFF)
        {
          goto LABEL_40;
        }

        aBlock[0] = v75;
        v78 = *(v75 + 16);
        v77 = *(v75 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_265A8D868((v77 > 1), v78 + 1, 1);
          v73 = v138;
          v75 = aBlock[0];
        }

        *(v75 + 16) = v78 + 1;
        *(v75 + 4 * v78 + 32) = v76;
        v74 += 8;
        if (!--v71)
        {

          v54 = v136;
          v58 = v141;
          v59 = &_OBJC_LABEL_PROTOCOL___UITraitChangeRegistration;
          v69 = v135;
          v72 = MEMORY[0x277D84F90];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v75 = MEMORY[0x277D84F90];
LABEL_22:
    v79 = *(v75 + 16);
    if (v79 >> 61)
    {
      goto LABEL_44;
    }

    v138 = [v151 v59[137]];

    v80 = sub_265A6FCDC(v58, v69);

    v81 = *(v80 + 16);
    if (v81)
    {
      aBlock[0] = v72;
      sub_265A8D868(0, v81, 0);
      v82 = 32;
      v83 = aBlock[0];
      while (1)
      {
        v84 = *(v80 + v82);
        if (v84 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v84 > 0x7FFFFFFF)
        {
          goto LABEL_42;
        }

        aBlock[0] = v83;
        v86 = *(v83 + 16);
        v85 = *(v83 + 24);
        if (v86 >= v85 >> 1)
        {
          sub_265A8D868((v85 > 1), v86 + 1, 1);
          v83 = aBlock[0];
        }

        *(v83 + 16) = v86 + 1;
        *(v83 + 4 * v86 + 32) = v84;
        v82 += 8;
        if (!--v81)
        {

          v58 = v141;
          v59 = &_OBJC_LABEL_PROTOCOL___UITraitChangeRegistration;
          goto LABEL_32;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v83 = MEMORY[0x277D84F90];
LABEL_32:
    v87 = *(v83 + 16);
    if (v87 >> 61)
    {
      goto LABEL_45;
    }

    v88 = [v151 v59[137]];

    type metadata accessor for CursiveTextMetalRenderPassData();
    v89 = swift_allocObject();
    *(v89 + 24) = 0;
    *(v89 + 32) = 0;
    *(v89 + 16) = 0;
    *(v89 + 40) = 0;
    *(v89 + 56) = 0;
    *(v89 + 64) = 0;
    *(v89 + 48) = 0;
    *(v89 + 80) = 0u;
    *(v89 + 96) = 0u;
    *(v89 + 112) = 0u;
    *(v89 + 128) = 0u;
    *(v89 + 143) = 0;
    *(v89 + 160) = 0u;
    *(v89 + 176) = 0u;
    *(v89 + 192) = 0u;
    *(v89 + 208) = 0u;
    *(v89 + 224) = 0u;
    *(v89 + 240) = 0u;
    *(v89 + 256) = 0u;
    *(v89 + 272) = 0u;
    *(v89 + 288) = 0u;
    *(v89 + 304) = 0u;
    *(v89 + 320) = 0u;
    *(v89 + 336) = 0u;
    *(v89 + 352) = 0u;
    *(v89 + 368) = 0u;
    v146 = 0u;
    *(v89 + 384) = 1;
    *(v89 + 392) = 0;
    v90 = *(*v89 + 224);
    v91 = v150;

    v90(v149.n128_u64[0], v91);
    v92 = *(*v89 + 248);

    v92(v93);
    v94 = *(v58 + 2);
    if (v94)
    {
      v95 = v137;
      (*(*v89 + 272))(v137[6 * v94 - 5].n128_f32[0] < *(v58 + 8));
      if (!*(v58 + 2))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v146 = *v95;
    }

    else
    {
      (*(*v89 + 272))(0);
    }

    (*(*v89 + 368))(v96, v146);
    v97 = *(*v89 + 392);
    v98 = swift_unknownObjectRetain();
    v97(v98);
    v99 = *(*v89 + 416);
    v100 = swift_unknownObjectRetain();
    v99(v100);
    v101 = *(*v89 + 440);
    v102 = swift_unknownObjectRetain();
    v103 = v101(v102);
    (*(*v54 + 176))(v103);
    v104 = (*v89 + 568);
    v150 = v88;
    v105 = *v104;
    v107 = 1.0 / v106;
    v108 = (*v104)(aBlock);
    *(v109 + 160) = v107;
    v110 = v108(aBlock, 0);
    v111.n128_f64[0] = (v140)(v110);
    v149 = v111;
    v112 = v105(aBlock);
    v113[6] = v149;
    v114 = v112(aBlock, 0);
    v115 = (*(*v54 + 248))(v114);
    v116 = v152;
    v117 = v116.n128_f32[0] + v116.n128_f32[0];
    v116.n128_f32[0] = *&v115 - v152.n128_f32[0];
    v116.n128_f32[1] = v117 + *(&v115 + 1);
    v149 = v116;
    v118 = v105(aBlock);
    *(v119 + 112) = v149.n128_u64[0];
    v118(aBlock, 0);
    v120 = v105(aBlock);
    *(v121 + 80) = v143;
    v120(aBlock, 0);
    v122 = v152;
    v122.n128_f32[1] = 1.0 / v152.n128_f32[0];
    v152 = v122;
    v123 = v105(aBlock);
    *(v124 + 144) = v152.n128_u64[0];
    v123(aBlock, 0);
    v125 = v105(aBlock);
    *(v126 + 172) = 1065353216;
    v125(aBlock, 0);
    v127 = v144;
    v128 = *(*v89 + 608);

    v128(v129);
    v130 = *(v127 + 64);
    v131 = swift_allocObject();
    *(v131 + 16) = v127;
    *(v131 + 24) = v89;
    v132 = swift_allocObject();
    *(v132 + 16) = sub_265A8E324;
    *(v132 + 24) = v131;
    aBlock[4] = sub_265A5A200;
    aBlock[5] = v132;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265A5993C;
    aBlock[3] = &block_descriptor_5;
    v133 = _Block_copy(aBlock);
    v134 = v130;

    dispatch_sync(v134, v133);
    _Block_release(v133);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v147 + 8))(v145, v148);
    LOBYTE(v133) = swift_isEscapingClosureAtFileLocation();

    if (v133)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }
}

uint64_t sub_265A891FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v31 = MEMORY[0x277D84F90];
  result = sub_265A8D888(0, v6, 0);
  v28 = a1;
  v30 = v5;
  v26 = v6;
  v27 = v4;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *v8;
      v11 = *v9;

      sub_265A89438(v10, v11);
      v13 = v12;

      v15 = *(v31 + 16);
      v14 = *(v31 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_265A8D888((v14 > 1), v15 + 1, 1);
      }

      --v5;
      *(v31 + 16) = v15 + 1;
      *(v31 + 8 * v15 + 32) = v13;
      --v4;
      ++v9;
      ++v8;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v30;
    if (v27 <= v30)
    {
      return v31;
    }

    v29 = v28 + 32;
    v17 = v26;
    while (v17 < v27)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_24;
      }

      if (v16 != v17)
      {
        if (v17 >= v16)
        {
          goto LABEL_25;
        }

        v19 = *(v29 + 8 * v17);
        v20 = *(v25 + 32 + 8 * v17);

        sub_265A89438(v19, v20);
        v22 = v21;

        v24 = *(v31 + 16);
        v23 = *(v31 + 24);
        if (v24 >= v23 >> 1)
        {
          result = sub_265A8D888((v23 > 1), v24 + 1, 1);
        }

        *(v31 + 16) = v24 + 1;
        *(v31 + 8 * v24 + 32) = v22;
        ++v17;
        v16 = v30;
        if (v18 != v27)
        {
          continue;
        }
      }

      return v31;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void sub_265A89438(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v34 = MEMORY[0x277D84F90];
  sub_265A8D8A8(0, v6, 0);
  v32 = v5;
  v33 = v4;
  v29 = a2;
  v30 = a1;
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = (a1 + 48);
    v9 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      *&v10 = nullsub_1(*(v8 - 4), *v8, *v7);
      v14 = *(v34 + 16);
      v13 = *(v34 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v11;
        v17 = v12;
        v28 = v10;
        sub_265A8D8A8((v13 > 1), v14 + 1, 1);
        v10 = v28;
        v12 = v17;
        v11 = v16;
      }

      *(v34 + 16) = v14 + 1;
      v15 = v34 + 32 * v14;
      *(v15 + 32) = v10;
      --v5;
      *(v15 + 48) = v11;
      *(v15 + 52) = v12;
      --v4;
      v8 += 8;
      ++v7;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    if (v33 <= v32)
    {
      return;
    }

    v18 = (v30 + 32 * v6 + 48);
    while (v6 < v33)
    {
      v19 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_24;
      }

      if (v32 != v6)
      {
        if (v6 >= v32)
        {
          goto LABEL_25;
        }

        *&v20 = nullsub_1(*(v18 - 4), *v18, *(v29 + 32 + 4 * v6));
        v24 = *(v34 + 16);
        v23 = *(v34 + 24);
        if (v24 >= v23 >> 1)
        {
          v26 = v21;
          v27 = v22;
          v31 = v20;
          sub_265A8D8A8((v23 > 1), v24 + 1, 1);
          v20 = v31;
          v22 = v27;
          v21 = v26;
        }

        *(v34 + 16) = v24 + 1;
        v25 = v34 + 32 * v24;
        *(v25 + 32) = v20;
        *(v25 + 48) = v21;
        *(v25 + 52) = v22;
        ++v6;
        v18 += 8;
        if (v19 != v33)
        {
          continue;
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

double sub_265A89644()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 16) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 143) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 1;
  *(v0 + 392) = 0;
  return result;
}

uint64_t sub_265A896B4()
{
  v1 = v0;
  v2 = *(v0 + 64);
  sub_265AA7840();

  result = 0;
  if ((v12 & 1) == 0)
  {
    if (*(v1 + 25) == 1)
    {
      if (!*(v1 + 32))
      {
        __break(1u);
        return result;
      }

      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 8);
      swift_unknownObjectRetain();
      v7 = v6(ObjectType, v4);
      v9 = v8;
      swift_unknownObjectRelease();
      sub_265A87D74(v7, v9, 0);
    }

    v10 = *(v1 + 64);
    type metadata accessor for CursiveTextMetalRenderPassData();
    v11 = v10;
    sub_265AA7840();

    return v12;
  }

  return result;
}

void sub_265A897F8()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_265AA79F0())
  {
    if (sub_265AA79F0())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x2667681B0](0, v1);
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_265AA79F0();
LABEL_13:
      if (v3)
      {
        sub_265A8DEC0(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_265A898D0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_265A89918()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_265A899B4(unsigned __int8 a1)
{
  sub_265AA7C10();
  MEMORY[0x266768470](a1);
  return sub_265AA7C40();
}

uint64_t sub_265A89A58()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_265A89AA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_265A89B30(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_265A89BFC(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

__n128 sub_265A89CC0(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[3] = a1;
  return result;
}

uint64_t sub_265A89D80(double a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

__n128 sub_265A89E44(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[5] = a1;
  return result;
}

__n128 sub_265A89F04(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[6] = a1;
  return result;
}

uint64_t sub_265A89FC8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_265A8A098(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_265A8A168(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 128) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_265A8A238(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 136) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_265A8A304(char a1)
{
  result = swift_beginAccess();
  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_265A8A3C8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 145) = a1;
  return result;
}

uint64_t sub_265A8A48C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 146) = a1;
  return result;
}

double sub_265A8A51C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_265A8A53C@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 304);
  *(a1 + 128) = *(v1 + 288);
  *(a1 + 144) = v3;
  v4 = *(v1 + 336);
  *(a1 + 160) = *(v1 + 320);
  *(a1 + 176) = v4;
  v5 = *(v1 + 240);
  *(a1 + 64) = *(v1 + 224);
  *(a1 + 80) = v5;
  v6 = *(v1 + 272);
  *(a1 + 96) = *(v1 + 256);
  *(a1 + 112) = v6;
  v7 = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v7;
  result = *(v1 + 192);
  v9 = *(v1 + 208);
  *(a1 + 32) = result;
  *(a1 + 48) = v9;
  return result;
}

__n128 sub_265A8A5A8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 144);
  *(v1 + 288) = *(a1 + 128);
  *(v1 + 304) = v3;
  v4 = *(a1 + 176);
  *(v1 + 320) = *(a1 + 160);
  *(v1 + 336) = v4;
  v5 = *(a1 + 80);
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = v5;
  v6 = *(a1 + 112);
  *(v1 + 256) = *(a1 + 96);
  *(v1 + 272) = v6;
  v7 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 192) = result;
  *(v1 + 208) = v9;
  return result;
}

double sub_265A8A664@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_265A8A678@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 384);
  result = *(v1 + 352);
  v5 = *(v1 + 368);
  *a1 = result;
  *(a1 + 16) = v5;
  *(a1 + 32) = v3;
  return result;
}

__n128 sub_265A8A6C4(uint64_t a1)
{
  swift_beginAccess();
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 352) = *a1;
  *(v1 + 368) = v4;
  *(v1 + 384) = *(a1 + 32);
  return result;
}

uint64_t sub_265A8A798(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 392) = a1;
}

void *sub_265A8A830(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, float a5)
{
  v6 = v5;
  v12 = *(*v5 + 552);
  result = v12(v126);
  if ((LODWORD(v126[0]) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v126[0] <= -9.2234e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v126[0] >= 9.2234e18)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v126[0] != a2)
  {
    goto LABEL_9;
  }

  result = (v12)(&v127, result);
  if ((HIDWORD(v127) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_33;
  }

  if (*(&v127 + 1) <= -9.2234e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (*(&v127 + 1) >= 9.2234e18)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (*(&v127 + 1) == a3)
  {
    return result;
  }

LABEL_9:
  v14 = (*v5 + 600);
  v15 = *v14;
  result = (*v14)(result);
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v16 = *(*result + 792);
  LOBYTE(v156[0]) = 0;
  v16(a2, 0, a3, 0, LODWORD(a5), a4 | ((HIDWORD(a4) & 1) << 32));

  result = v15(v17);
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = (*(*result + 304))(result);

  result = v15(v19);
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v20 = (*(*result + 328))(result);

  result = v15(v21);
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v22 = (*(*result + 352))(result);

  result = v15(v23);
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v24 = (*(*result + 376))(result);

  result = v15(v25);
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = (*(*result + 352))(result);

  result = (*(*v5 + 240))(v27);
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v28 = result;
  v29.i64[0] = a2;
  v29.i64[1] = a3;
  v30 = vcvt_f32_f64(vcvtq_f64_s64(v29));
  v31 = vmuls_lane_f32(v20, v30, 1);
  v125 = v30;
  v115 = v30.f32[1];
  v112 = v30.f32[1] * 0.5;
  v32 = (v30.f32[1] * 0.5) + ((v31 * v22) * v24);
  v33 = (v18 * v30.f32[0]) * 0.5;
  v34 = v31 * 0.5;
  v116 = 0.5 * v30.f32[0];
  v122 = (0.5 * v30.f32[0]) - v33;
  v113 = v32 - (v31 * 0.5);
  v35 = (v18 * v30.f32[0]);
  v36 = v31;
  v37 = (v31 * v26);
  v38 = sub_265A54BDC();
  (*(*v28 + 392))(v128, v38 & 1, v122, v113, v35, v36, v37);

  *&v40.f64[0] = v128[0];
  *&v40.f64[1] = v128[3];
  __asm { FMOV            V9.2S, #1.0 }

  v46 = (*(*v6 + 296))(v39, vcvt_hight_f32_f64(vdiv_f32(_D9, vcvt_f32_f64(v40)), v129));
  result = v15(v46);
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = (*(*result + 424))(result);
  v111 = LODWORD(v47);

  result = v15(v48);
  if (!result)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v49 = v116 + v33;
  v50 = (*(*result + 448))(result);
  v110 = LODWORD(v50);

  v52 = *(*v6 + 288);
  *v53.i64 = (v52)(v51);
  v54 = sub_265A69C48(v53);
  v55.n128_f64[0] = v52();
  v58.n128_u64[0] = vmul_f32(vsub_f32(vadd_f32(__PAIR64__(LODWORD(v112), LODWORD(v116)), __PAIR64__(v110, v111)), *&v54), COERCE_FLOAT32X2_T(j_nullsub_1(v55, v56, v57)));
  v59 = (*(*v6 + 320))(v58);
  v60.n128_f64[0] = (v52)(v59);
  v117 = j_nullsub_1(v60, v61, v62);
  *v63.i64 = v52();
  v64 = sub_265A69C48(v63);
  v65.n128_f64[0] = v52();
  *&v68 = j_nullsub_1(v65, v66, v67);
  *&v69 = v117;
  *(&v69 + 1) = vmul_f32(vsub_f32(0, *&v64), v68);
  v118 = v69;
  v70 = *(*v6 + 568);
  v71 = v70(v156);
  *(v72 + 64) = v118;
  v71(v156, 0);
  *&v73 = v125;
  *(&v73 + 1) = vdiv_f32(_D9, v125);
  v119 = v73;
  v74 = v70(v156);
  *v75 = v119;
  v74(v156, 0);
  *&v76 = v122;
  *(&v76 + 1) = v34 + v32;
  *(&v76 + 2) = v49 - v122;
  *(&v76 + 3) = v113 - (v34 + v32);
  v123 = v76;
  v77 = v70(v156);
  *(v78 + 16) = v123;
  v79 = v77(v156, 0);
  v80 = (v12)(v130, v79);
  LODWORD(v64) = v131;
  v81 = (v12)(v132, v80);
  *&v64 = *&v64 - v133;
  v82 = (v12)(v134, v81);
  v83 = *&v64 / v135;
  if ((*&v64 / v135) < 0.0)
  {
    v83 = 0.0;
  }

  v124 = v83;
  v84 = (v12)(v136, v82);
  v85 = v137;
  v86 = (v12)(v138, v84);
  v87 = v85 - v139;
  v88 = (v12)(v140, v86);
  v89 = v87 / v141;
  if ((v87 / v141) < 0.0)
  {
    v89 = 0.0;
  }

  v120 = v89;
  v90 = (v12)(v142, v88);
  v91 = v143;
  v92 = (v12)(v144, v90);
  v93 = v91 + v145;
  v94 = (v12)(v146, v92);
  v95 = v93 - v147;
  v96 = (v12)(v148, v94);
  if ((v95 / v149) >= v125.f32[0])
  {
    v97 = v125.f32[0];
  }

  else
  {
    v97 = v95 / v149;
  }

  v98 = (v12)(v150, v96);
  v99 = v151;
  v100 = (v12)(v152, v98);
  v101 = v99 + v153;
  v102 = (v12)(v154, v100);
  v103 = v101 - v155;
  v104 = (v12)(v156, v102);
  if ((v103 / v157) >= v115)
  {
    v105 = v115;
  }

  else
  {
    v105 = v103 / v157;
  }

  v106.n128_u64[0] = __PAIR64__(LODWORD(v120), LODWORD(v124));
  v106.n128_f32[2] = v97 - v124;
  v106.n128_f32[3] = v105 - v120;
  (*(*v6 + 344))(v104, v106);
  *&v114 = ((v124 / v125.f32[0]) + (v124 / v125.f32[0])) + -1.0;
  *&v121 = ((v120 / v115) + (v120 / v115)) + -1.0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FEE0);
  v107 = swift_allocObject();
  v107[4] = __PAIR64__(v121, v114);
  *&v108 = ((v97 / v125.f32[0]) + (v97 / v125.f32[0])) + -1.0;
  v107[5] = __PAIR64__(v121, v108);
  v107[6] = __PAIR64__(((v105 / v115) + (v105 / v115)) + -1.0, v114);
  *(&v108 + 1) = ((v105 / v115) + (v105 / v115)) + -1.0;
  v107[7] = v108;
  v109 = [a1 newBufferWithBytes:v107 + 4 length:32 options:0];
  swift_setDeallocating();
  swift_deallocClassInstance();
  return (*(*v6 + 464))(v109);
}

uint64_t sub_265A8B2CC(void *a1, char a2, char a3, char a4, char a5, float a6)
{
  v7 = v6;
  v14 = (*(*v6 + 480))();
  if (v14 <= 1)
  {
    if (v14)
    {
      v15 = sub_265A8C3E4(a4 & 1, a5 & 1, a6);
    }

    else
    {
      v15 = 0;
    }

    return v15 & 1;
  }

  if (v14 != 2)
  {
    sub_265A8C9B8(a2 & 1, a3 & 1, a6);
    return v15 & 1;
  }

  v16 = *(*v6 + 240);
  result = v16();
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v18 = (*(*result + 200))(result);

  v20 = *(*v6 + 600);
  result = (v20)(v19);
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v21 = (*(*result + 568))(result);

  result = (v20)(v22);
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v23 = (*(*result + 592))(result);

  result = (v20)(v24);
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v25 = (*(*result + 616))(result);

  result = (v20)(v26);
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v27 = (*(*result + 568))(result);

  result = (v20)(v28);
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v29 = (*(*result + 592))(result);

  result = (v20)(v30);
  if (!result)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v171 = (*(*result + 688))(result);

  v176 = (v21 + v23) + v25;
  v170 = (a6 - v176) / v18;
  v31 = *(*v6 + 568);
  v32 = v31(v204);
  *(v33 + 180) = v170 <= 0.0;
  v34 = v32(v204, 0);
  result = (v20)(v34);
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = (*(*result + 544))(result);

  result = (v20)(v36);
  if (!result)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v168 = v18;
  v37 = (*(*result + 568))(result);

  result = (v20)(v38);
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v39 = a6 - (v35 * 0.5);
  v40 = (*(*result + 544))(result);

  v41 = fminf(fmaxf(v39 / (v37 + (v40 * 0.5)), 0.0), 1.0);
  v42 = (v41 * v41) * ((v41 * -2.0) + 3.0);
  v43 = v31(v204);
  *(v44 + 152) = v42;
  v45 = v43(v204, 0);
  result = (v20)(v45);
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v46 = a6 - (v27 + v29);
  v47 = (*(*result + 616))(result);

  v48 = fminf(fmaxf(v46 / v47, 0.0), 1.0);
  v49 = (v48 * v48) * ((v48 * -2.0) + 3.0);
  v50 = v31(v204);
  *(v51 + 156) = v49;
  v50(v204, 0);
  v52 = fminf(fmaxf(v170, 0.0), 1.0);
  v53 = v31(v204);
  *(v54 + 32) = 0;
  v53(v204, 0);
  v55 = ((v52 * v52) * (1.0 - v52)) + powf(v52, 1.5);
  v56 = v31(v204);
  *(v57 + 36) = v55;
  v56(v204, 0);
  v58 = v31(v204);
  *(v59 + 40) = 0;
  v58(v204, 0);
  v60 = v31(v204);
  *(v61 + 44) = 0;
  v62 = v60(v204, 0);
  result = (v20)(v62);
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v63 = (*(*result + 544))(result);

  result = (v20)(v64);
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v65 = a6 - v63;
  v66 = (*(*result + 568))(result);

  v67 = fminf(fmaxf((v65 - (v66 * 0.5)) * 0.5, 0.0), 1.0);
  v68 = (v67 * v67) * ((v67 * -2.0) + 3.0);
  v69 = v31(v204);
  *(v70 + 184) = v68;
  v71 = v69(v204, 0);
  result = (v20)(v71);
  if (!result)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v72 = (*(*result + 544))(result);

  v73 = fminf(fmaxf(a6 / v72, 0.0), 1.0);
  v74 = (v73 * v73) * ((v73 * -2.0) + 3.0);
  v75 = v31(v204);
  *(v76 + 188) = v74;
  v75(v204, 0);
  v77 = fminf(fmaxf(a6 / v176, 0.0), 1.0);
  v78 = (v77 * v77) * ((v77 * -2.0) + 3.0);
  v79 = fabsf(sqrtf(v78));
  if (v78 == -INFINITY)
  {
    v79 = INFINITY;
  }

  v80.n128_u32[3] = 0;
  v80.n128_f32[0] = (v79 * -180.0) + 140.0;
  v80.n128_f32[1] = v79 * 22.0;
  v80.n128_f32[2] = v79 * -15.0;
  v81 = sub_265A8D48C(v80, v79);
  result = (v20)(v81);
  if (!result)
  {
    goto LABEL_49;
  }

  v82 = (*(*result + 520))(result);

  v83 = v31(v204);
  *(v84 + 176) = v82;
  v85 = v83(v204, 0);
  result = (v20)(v85);
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v86 = (*(*result + 616))(result);

  result = (v20)(v87);
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v88 = v46 + (v86 * -0.75);
  v89 = (*(*result + 640))(result);

  v90 = v31(v204);
  *(v91 + 164) = 1.0 - fminf(fmaxf(v88 / v89, 0.0), 1.0);
  v92 = v90(v204, 0);
  result = (v16)(v92);
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v93 = (*(*result + 152))(result);

  if (*(v93 + 16))
  {
    v94 = *(v93 + 32);

    if (*(v94 + 16))
    {
      v95 = *(v94 + 48);
    }

    else
    {
      v95 = 50.0;
    }
  }

  else
  {
    v95 = 50.0;
  }

  v97 = (*v7 + 288);
  v98 = *v97;
  v99 = (*v97)(v96);
  v166 = *&v99;
  result = v20();
  if (result)
  {
    v100 = v95 / v166;
    v169 = (v168 + v176) + v171;
    v101 = (*(*result + 400))(result);

    v102 = v31(v204);
    *(v103 + 168) = v101 / (v100 + v100);
    v104 = v102(v204, 0);
    v105 = *(*v7 + 552);
    v105(v181, v104);
    v106 = powf(v182, 16.0);
    v107 = (v105)(v183);
    v177 = v184;
    v105(v185, v107);
    v108.i32[0] = v177;
    v108.f32[1] = (v186 + -0.25) / 0.75;
    v109 = vmaxnm_f32(v108, 0);
    __asm { FMOV            V1.2S, #1.0 }

    v115 = vminnm_f32(v109, _D1);
    __asm { FMOV            V3.2S, #3.0 }

    v117 = vmul_f32(vmul_f32(v115, v115), vmla_f32(_D3, 0xC0000000C0000000, v115));
    v172 = v117.f32[0];
    v178 = powf(v117.f32[1], 8.0);
    v118.f32[0] = powf(v172, 16.0);
    v118.f32[1] = v178;
    v173 = v118;
    v119 = (v105)(v187);
    *v120.i32 = (v106 * (v188 + -1.0)) + 1.0;
    v179 = v120;
    v121 = *(*v7 + 312);
    v122 = COERCE_FLOAT32X2_T((v121)(v119));
    v123.n128_f64[0] = (*(*v7 + 360))();
    v126 = vmla_f32(v122, vsub_f32(COERCE_FLOAT32X2_T(j_nullsub_1(v123, v124, v125)), v122), v173);
    v127.i32[1] = v179.i32[1];
    *v127.i32 = 1.0 / *v179.i32;
    v174 = v127;
    *&v128 = v121();
    v129.n128_u64[0] = vdup_lane_s32(v174, 0);
    *&v129.n128_i8[8] = vsub_f32(v126, vdiv_f32(v128, vdup_lane_s32(v179, 0)));
    v175 = v129;
    v130.n128_f64[0] = v98();
    v133 = COERCE_FLOAT32X2_T(j_nullsub_1(v130, v131, v132));
    v180 = vmul_f32(v133, COERCE_FLOAT32X2_T(j_nullsub_1(v175, v134, v135)));
    *v136.i64 = v98();
    v137 = sub_265A69C48(v136);
    v138.n128_f64[0] = v98();
    v141 = COERCE_FLOAT32X2_T(j_nullsub_1(v138, v139, v140));
    v144 = COERCE_FLOAT32X2_T(j_nullsub_1(v175, v142, v143));
    v175.n128_u64[0] = vadd_f32(COERCE_FLOAT32X2_T(sub_265A69C48(v175)), vmul_f32(vsub_f32(0, *&v137), vmul_f32(v141, v144)));
    *&v145 = v180;
    *(&v145 + 1) = v175.n128_u64[0];
    v167 = v145;
    v146 = v31(v204);
    *(v147 + 64) = v167;
    v148 = v146(v204, 0);
    v149 = (v105)(v189, v148);
    *&v137 = (v190 - v175.n128_f32[0]) / v180.f32[0];
    v150 = (v105)(v191, v149);
    v151 = (v192 - v175.n128_f32[1]) / v180.f32[1];
    v152 = (v105)(v193, v150);
    v153 = v194;
    v154 = (v105)(v195, v152);
    v155 = ((v153 + v196) - v175.n128_f32[0]) / v180.f32[0];
    v156 = (v105)(v197, v154);
    v157 = v198;
    v158 = (v105)(v199, v156);
    v141.f32[0] = ((v157 + v200) - v175.n128_f32[1]) / v180.f32[1];
    v159 = (v105)(v201, v158);
    v180.f32[0] = ((*&v137 / v201[0]) + (*&v137 / v201[0])) + -1.0;
    v160 = (v105)(&v202, v159);
    v175.n128_f32[0] = ((v151 / *(&v202 + 1)) + (v151 / *(&v202 + 1))) + -1.0;
    v161 = (v105)(v203, v160);
    *&v167 = ((v155 / v203[0]) + (v155 / v203[0])) + -1.0;
    v105(v204, v161);
    *&v165 = ((v141.f32[0] / *(v204 + 1)) + (v141.f32[0] / *(v204 + 1))) + -1.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FEE0);
    v162 = swift_allocObject();
    v162[4] = __PAIR64__(v175.n128_u32[0], v180.u32[0]);
    LODWORD(v163) = v167;
    v162[5] = __PAIR64__(v175.n128_u32[0], v167);
    v162[6] = __PAIR64__(v165, v180.u32[0]);
    HIDWORD(v163) = v165;
    v162[7] = v163;
    v164 = [a1 newBufferWithBytes:v162 + 4 length:32 options:0];
    swift_setDeallocating();
    swift_deallocClassInstance();
    (*(*v7 + 464))(v164);
    memset(v205, 0, sizeof(v205));
    v206 = 1;
    (*(*v7 + 584))(v205);
    v15 = v169 < a6;
    return v15 & 1;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_265A8C3E4(char a1, char a2, float a3)
{
  result = (*(*v3 + 240))();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = (*(*result + 200))(result);

  v10 = *(*v3 + 600);
  result = v10(v9);
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = (*(*result + 688))(result);

  if (a1)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = a3 / v8;
  }

  v13 = *(*v3 + 568);
  v14 = v13(v60);
  *(v15 + 180) = 0;
  v14(v60, 0);
  v16 = v13(v60);
  *(v17 + 152) = 1065353216;
  v16(v60, 0);
  v18 = v13(v60);
  *(v19 + 156) = 1065353216;
  v18(v60, 0);
  v20 = fminf(fmaxf(v12, 0.0), 1.0);
  v21 = v13(v60);
  *(v22 + 32) = 0;
  v21(v60, 0);
  v23 = (v20 * (1.0 - v20)) + powf(v20, 1.8);
  v24 = v13(v60);
  *(v25 + 36) = v23;
  v24(v60, 0);
  v26 = v13(v60);
  *(v27 + 40) = 0;
  v26(v60, 0);
  v28 = v13(v60);
  *(v29 + 44) = 0;
  v28(v60, 0);
  v30 = v13(v60);
  *(v31 + 184) = 1065353216;
  v30(v60, 0);
  v32 = v13(v60);
  *(v33 + 188) = 1065353216;
  v32(v60, 0);
  if (a2)
  {
    v34.n128_f32[0] = (((((v20 * v20) * ((v20 * -2.0) + 3.0)) * (fmodf(a3, 10.0) / 10.0)) + 0.0) * -360.0) + -40.0;
    v34.n128_u32[1] = 22.0;
    v34.n128_u64[1] = COERCE_UNSIGNED_INT(-15.0);
  }

  else
  {
    v34 = xmmword_265AACE80;
  }

  v35 = sub_265A8D48C(v34, 1.0);
  result = v10(v35);
  if (result)
  {
    v36 = v8 + v11;
    v37 = (*(*result + 520))(result);

    v38 = v13(v60);
    *(v39 + 176) = v37;
    v38(v60, 0);
    v40 = v13(v60);
    *(v41 + 164) = 0;
    v40(v60, 0);
    v42 = v13(v60);
    *(v43 + 168) = 1065353216;
    v44 = v42(v60, 0);
    v45 = *(*v3 + 288);
    v46.n128_f64[0] = (v45)(v44);
    v58 = j_nullsub_1(v46, v47, v48);
    *v49.i64 = v45();
    v50 = sub_265A69C48(v49);
    v51.n128_f64[0] = v45();
    *&v54 = j_nullsub_1(v51, v52, v53);
    *&v55 = v58;
    *(&v55 + 1) = vmul_f32(vsub_f32(0, *&v50), v54);
    v59 = v55;
    v56 = v13(v60);
    *(v57 + 64) = v59;
    v56(v60, 0);
    memset(v60, 0, sizeof(v60));
    v61 = 1;
    (*(*v3 + 584))(v60);
    return (v36 < a3) | (a1 & 1);
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_265A8C9B8(unsigned __int8 a1, unsigned __int8 a2, float a3)
{
  v7 = (*v3 + 600);
  v8 = *v7;
  v9 = (*v7)();
  if (!v9)
  {
    goto LABEL_68;
  }

  v10 = (*(*v9 + 712))(v9);

  v12 = (v8)(v11);
  if (!v12)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  (*(*v12 + 736))(v12);

  v14 = (*v3 + 552);
  v15 = *v14;
  v16 = (*v14)(v102, v13);
  v17 = (v8)(v16);
  if (!v17)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v18 = (*(*v17 + 304))(v17);

  v20 = (v8)(v19);
  if (v20)
  {
    v21 = fminf(fmaxf(fminf(fmaxf(a3 / v10, 0.0), 1.0), 0.0), 1.0);
    v22 = (v21 * v21) * ((v21 * -2.0) + 3.0);
    v23 = v18 * *v102;
    v24 = (*(*v20 + 496))(v20);

    v98 = v23 * v24;
    v26 = v15(&v103, v25);
    v15(v105, v26);
    v27 = -40.0;
    v28 = 1.0;
    v29 = fminf(fmaxf((a3 + (v10 * -0.25)) / (v10 * 0.5), 0.0), 1.0);
    v30 = ((v29 * v29) * ((v29 * -2.0) + 3.0)) * -180.0;
    if (a1)
    {
      v27 = 140.0;
    }

    v31.n128_f32[0] = v27 + v30;
    v31.n128_u32[1] = 22.0;
    v31.n128_u64[1] = COERCE_UNSIGNED_INT(-15.0);
    sub_265A8D48C(v31, 1.0);
    v32 = (v104 - v98) + (v22 * ((v98 + v98) + v106));
    v33 = *(*v3 + 568);
    v34 = v33(v110);
    *(v35 + 180) = 0;
    v34(v110, 0);
    v36 = v33(v110);
    *(v37 + 152) = 1065353216;
    v36(v110, 0);
    v38 = v33(v110);
    *(v39 + 156) = 1065353216;
    v38(v110, 0);
    v40 = v33(v110);
    *(v41 + 32) = 0;
    v40(v110, 0);
    v42 = v33(v110);
    *(v43 + 36) = 1065353216;
    v44 = v42(v110, 0);
    if (a2)
    {
      v15(v107, v44);
      v32 = *v107 - v32;
    }

    v45 = v33(v110);
    *(v46 + 40) = v32;
    v45(v110, 0);
    if ((a1 ^ a2))
    {
      v28 = -1.0;
    }

    v47 = v33(v110);
    *(v48 + 44) = v28;
    v47(v110, 0);
    v49 = v33(v110);
    *(v50 + 48) = LODWORD(v98);
    v49(v110, 0);
    v51 = v33(v110);
    *(v52 + 184) = 1065353216;
    v51(v110, 0);
    v53 = v33(v110);
    *(v54 + 188) = 1065353216;
    v55 = v53(v110, 0);
    v56 = (v8)(v55);
    if (!v56)
    {
      goto LABEL_72;
    }

    v57 = (*(*v56 + 520))(v56);

    v58 = v33(v110);
    *(v59 + 176) = v57;
    v58(v110, 0);
    v60 = v33(v110);
    *(v61 + 164) = 0;
    v60(v110, 0);
    v62 = v33(v110);
    *(v63 + 168) = 1065353216;
    v64 = v62(v110, 0);
    v65 = *(*v3 + 288);
    v66.n128_f64[0] = (v65)(v64);
    v99 = j_nullsub_1(v66, v67, v68);
    *v69.i64 = v65();
    v70 = sub_265A69C48(v69);
    v71.n128_f64[0] = v65();
    *&v74 = j_nullsub_1(v71, v72, v73);
    *&v75 = v99;
    *(&v75 + 1) = vmul_f32(vsub_f32(0, *&v70), v74);
    v100 = v75;
    v76 = v33(v110);
    *(v77 + 64) = v100;
    v78 = v76(v110, 0);
    v79 = v15(v108, v78);
    LODWORD(v70) = v109;
    v80 = *(*v3 + 336);
    v81 = (v80)(v79);
    LODWORD(v100) = LODWORD(v81);
    v82 = v80();
    v83 = fminf(fmaxf(*&v70, *&v100), *&v82 + COERCE_FLOAT((v80)().n128_u32[2]));
    if ((LODWORD(v83) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v83 > -9.2234e18)
    {
      if (v83 < 9.2234e18)
      {
        v84 = v83;
        if (((a1 ^ a2) & 1) == 0)
        {
          v93 = (v15)(v110);
          v94 = *(v110 + 1);
          LODWORD(v95) = (v80)(v93).n128_u32[3];
          v89 = v94 - (v95 + COERCE_FLOAT((v80)().n128_u32[1]));
          if ((LODWORD(v89) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
          {
            if (v89 > -9.2234e18)
            {
              if (v89 < 9.2234e18)
              {
                v96 = v80();
                v97 = *&v96 + COERCE_FLOAT((v80)().n128_u32[2]);
                if (COERCE_INT(fabs(v97)) <= 2139095039)
                {
                  if (v97 > -9.2234e18)
                  {
                    if (v97 < 9.2234e18)
                    {
                      v91 = v97 - v84;
                      if (!__OFSUB__(v97, v84))
                      {
                        v92 = (v80)();
                        v92.n128_u32[0] = v92.n128_u32[3];
                        if ((v92.n128_u32[3] & 0x7FFFFFFF) <= 0x7F7FFFFF)
                        {
                          if (v92.n128_f32[3] > -9.2234e18)
                          {
                            if (v92.n128_f32[3] < 9.2234e18)
                            {
                              v111 = v84;
                              goto LABEL_41;
                            }

                            goto LABEL_64;
                          }

                          goto LABEL_62;
                        }

                        goto LABEL_60;
                      }

                      goto LABEL_58;
                    }

                    goto LABEL_56;
                  }

                  goto LABEL_54;
                }

                goto LABEL_52;
              }

              goto LABEL_50;
            }

            goto LABEL_48;
          }

          goto LABEL_46;
        }

        v85 = v80();
        if ((LODWORD(v85) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          if (v85 > -9.2234e18)
          {
            if (v85 < 9.2234e18)
            {
              v101 = v85;
              v86 = (v15)(v110);
              v87 = *(v110 + 1);
              LODWORD(v88) = (v80)(v86).n128_u32[3];
              v89 = v87 - (v88 + COERCE_FLOAT((v80)().n128_u32[1]));
              if ((LODWORD(v89) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
              {
                if (v89 > -9.2234e18)
                {
                  if (v89 < 9.2234e18)
                  {
                    v90 = v80();
                    if ((LODWORD(v90) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
                    {
                      if (v90 > -9.2234e18)
                      {
                        if (v90 < 9.2234e18)
                        {
                          v91 = v84 - v90;
                          if (!__OFSUB__(v84, v90))
                          {
                            v92 = (v80)();
                            v92.n128_u32[0] = v92.n128_u32[3];
                            if ((v92.n128_u32[3] & 0x7FFFFFFF) <= 0x7F7FFFFF)
                            {
                              if (v92.n128_f32[3] > -9.2234e18)
                              {
                                if (v92.n128_f32[3] < 9.2234e18)
                                {
                                  v111 = v101;
LABEL_41:
                                  v112 = v89;
                                  v113 = v91;
                                  v114 = v92.n128_f32[0];
                                  v115 = 0;
                                  (*(*v3 + 584))();
                                  return;
                                }

                                goto LABEL_67;
                              }

LABEL_66:
                              __break(1u);
LABEL_67:
                              __break(1u);
LABEL_68:
                              __break(1u);
                              goto LABEL_69;
                            }

LABEL_65:
                            __break(1u);
                            goto LABEL_66;
                          }

                          goto LABEL_63;
                        }

                        goto LABEL_61;
                      }

                      goto LABEL_59;
                    }

                    goto LABEL_57;
                  }

                  goto LABEL_55;
                }

                goto LABEL_53;
              }

              goto LABEL_51;
            }

            goto LABEL_49;
          }

          goto LABEL_47;
        }

LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
    goto LABEL_44;
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
}

uint64_t sub_265A8D48C(__n128 a1, float32_t a2)
{
  v3 = __sincosf_stret(((a1.n128_f32[0] / -180.0) * 3.1416) * 0.5);
  v31 = vmulq_n_f32(xmmword_265AACE90, v3.__sinval);
  v4 = __sincosf_stret(((a1.n128_f32[1] / -180.0) * 3.1416) * 0.5);
  v5 = vmulq_n_f32(xmmword_265AACEA0, v4.__sinval);
  v5.i32[3] = LODWORD(v4.__cosval);
  v30 = v5;
  v6 = __sincosf_stret(((a1.n128_f32[2] / -180.0) * 3.1416) * 0.5);
  v7 = vmulq_n_f32(xmmword_265AACEB0, v6.__sinval);
  v7.i32[3] = LODWORD(v6.__cosval);
  v8 = vnegq_f32(v30);
  v9 = vtrn2q_s32(v30, vtrn1q_s32(v30, v8));
  v10 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v30, v8, 8uLL), *v31.f32, 1), vextq_s8(v9, v9, 8uLL), v31.f32[0]);
  v11 = vrev64q_s32(v30);
  v11.i32[0] = v8.i32[1];
  v11.i32[3] = v8.i32[2];
  v12 = vaddq_f32(vmlaq_laneq_f32(vmulq_n_f32(v30, v3.__cosval), v11, v31, 2), v10);
  v13 = vnegq_f32(v7);
  v14 = vtrn2q_s32(v7, vtrn1q_s32(v7, v13));
  v15 = vrev64q_s32(v7);
  v15.i32[0] = v13.i32[1];
  v15.i32[3] = v13.i32[2];
  v16 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v7, v13, 8uLL), *v12.f32, 1), vextq_s8(v14, v14, 8uLL), v12.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(v7, v12, 3), v15, v12, 2));
  v17 = vmulq_f32(v16, xmmword_265AACEC0);
  v18 = vnegq_f32(v17);
  v19 = vtrn2q_s32(v17, vtrn1q_s32(v17, v18));
  v20 = vmlaq_f32(vnegq_f32(vextq_s8(v17, v18, 8uLL)), 0, vextq_s8(v19, v19, 8uLL));
  v21 = vrev64q_s32(v17);
  v21.i32[0] = v18.i32[1];
  v21.i32[3] = v18.i32[2];
  v22 = vmlaq_f32(v20, 0, v21);
  v23 = vnegq_f32(v22);
  v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
  v25 = vrev64q_s32(v22);
  v25.i32[0] = v23.i32[1];
  v25.i32[3] = v23.i32[2];
  v26 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v22, v16, 3), v25, v16, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v23, 8uLL), *v16.f32, 1), vextq_s8(v24, v24, 8uLL), v16.f32[0]));
  v26.f32[3] = a2;
  v34 = v26;
  v27 = (*(*v2 + 568))(v35);
  v28[8] = v34;
  return v27(v35, 0);
}

uint64_t sub_265A8D694()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_265A8D6E4()
{
  sub_265A8D694();

  return swift_deallocClassInstance();
}

double sub_265A8D718()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 143) = 0;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 336) = 0u;
  *(v0 + 352) = 0u;
  *(v0 + 368) = 0u;
  *(v0 + 384) = 1;
  *(v0 + 392) = 0;
  return result;
}

uint64_t sub_265A8D76C@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  if (v3 >> 62)
  {
    result = sub_265AA79F0();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *a1 = result == 0;
  return result;
}

uint64_t sub_265A8D7E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  sub_265A897F8();
  *a1 = v2;
  return swift_endAccess();
}

char *sub_265A8D868(char *a1, int64_t a2, char a3)
{
  result = sub_265A8D8C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265A8D888(void *a1, int64_t a2, char a3)
{
  result = sub_265A8D9CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265A8D8A8(char *a1, int64_t a2, char a3)
{
  result = sub_265A8DB00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265A8D8C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FF90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_265A8D9CC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002FFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_265A8DB00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FC68);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 32 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

uint64_t sub_265A8DC00(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_265AA79F0();
    }

    result = sub_265AA7970();
    *v1 = result;
  }

  return result;
}

unint64_t sub_265A8DCBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FFB0);
    v3 = sub_265AA7A20();
    v4 = a1 + 32;

    while (1)
    {
      sub_265A8E3F0(v4, v11);
      v5 = v11[0];
      result = sub_265A6CCC4(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_265A5A3B4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_265A8DDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CursiveTextMetalRenderPassData();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_265AA79F0();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_265AA79F0();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_265A8DEC0(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_265AA79F0();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_265AA79F0();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_265A8DC00(result);

  return sub_265A8DDC4(v4, v2, 0);
}

unint64_t sub_265A8DF9C()
{
  result = qword_28002FEE8;
  if (!qword_28002FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FEE8);
  }

  return result;
}

unint64_t sub_265A8DFF4()
{
  result = qword_28002FEF0;
  if (!qword_28002FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FEF0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimationStatus(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy192_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_265A8E1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 192))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 180);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_265A8E24C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 180) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_265A8E2E4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A8E324()
{
  v1 = *(v0 + 16);
  swift_beginAccess();

  MEMORY[0x266767E70](v2);
  if (*((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_265AA7660();
  }

  sub_265AA7680();
  return swift_endAccess();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A8E3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002FF88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265A8E460()
{
  result = qword_28002FFB8;
  if (!qword_28002FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002FFB8);
  }

  return result;
}

uint64_t sub_265A8E4B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_265A8E534(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_265A8E598(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink] = 0;
  v4[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for HelloView();
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  type metadata accessor for HelloMetalLayer();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() mainScreen];
    [v13 scale];
    v15 = v14;

    [v12 setContentsScale_];
    v16 = v10;
    v10 = v9;
  }

  else
  {
    v16 = v9;
  }

  return v9;
}

id sub_265A8E714(void *a1)
{
  *&v1[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink] = 0;
  v1[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] = 0;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for HelloView();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = [v5 layer];
    type metadata accessor for HelloMetalLayer();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      v9 = [objc_opt_self() mainScreen];
      [v9 scale];
      v11 = v10;

      [v8 setContentsScale_];
      v12 = v6;
    }

    else
    {
      v12 = v5;
      v5 = a1;
      a1 = v6;
    }
  }

  return v4;
}

id sub_265A8E864()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xC0))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HelloView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_265A8E990()
{
  v1 = [v0 layer];
  type metadata accessor for HelloMetalLayer();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    [v0 bounds];
    v6 = v5;
    v7 = v4;
    [v3 contentsScale];
    v9 = v6 * v8;
    [v0 bounds];
    v11 = v10;
    [v3 contentsScale];
    v13 = v12;

    [v3 setDrawableSize_];
  }

  v15.receiver = v0;
  v15.super_class = type metadata accessor for HelloView();
  return objc_msgSendSuper2(&v15, sel_layoutSubviews);
}

void sub_265A8EAE8(char a1)
{
  v4 = [v1 layer];
  type metadata accessor for HelloMetalLayer();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    (*((*MEMORY[0x277D85000] & *v3) + 0x340))(a1 & 1);
  }
}

void sub_265A8EB9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v19 = [v9 layer];
  type metadata accessor for HelloMetalLayer();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    (*((*MEMORY[0x277D85000] & *v18) + 0x350))(a1 & 1, a2, a3, a4, a5, a6, a7 & 1, a8, a9);
  }
}

void sub_265A8ECB4()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink;
  if (!*&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink])
  {
    v12 = [v0 layer];
    type metadata accessor for HelloMetalLayer();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v2;
      v4 = [objc_allocWithZone(MEMORY[0x277CD9F08]) initWithMetalLayer_];
      v5 = *&v0[v1];
      *&v0[v1] = v4;
      v6 = v4;

      if (v6)
      {
        sub_265AA77B0();
        [v6 setPreferredFrameRateRange_];
      }

      v7 = *&v0[v1];
      if (v7)
      {
        v7 = [v7 setPreferredFrameLatency_];
        v8 = *&v0[v1];
        if (v8)
        {
          v9 = objc_opt_self();
          v10 = v8;
          v11 = [v9 mainRunLoop];
          [v10 addToRunLoop:v11 forMode:*MEMORY[0x277CBE738]];

          v7 = *&v0[v1];
          if (v7)
          {
            v7 = [v7 setDelegate_];
          }
        }
      }

      (*((*MEMORY[0x277D85000] & *v3) + 0x358))(v7);

      v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] = 0;
    }

    else
    {
    }
  }
}

void sub_265A8EEAC()
{
  v1 = *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink];
  if (v1 && (v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] = 1;
    v2 = objc_opt_self();
    v7 = v1;
    v3 = [v2 mainRunLoop];
    [v7 removeFromRunLoop:v3 forMode:*MEMORY[0x277CBE738]];

    v4 = [v0 layer];
    type metadata accessor for HelloMetalLayer();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*((*MEMORY[0x277D85000] & *v5) + 0x360))();
      v6 = v4;
    }

    else
    {
      v6 = v7;
      v7 = v4;
    }
  }
}

void sub_265A8F008()
{
  v1 = *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink];
  if (v1 && v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] == 1)
  {
    v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused] = 0;
    v2 = objc_opt_self();
    v7 = v1;
    v3 = [v2 mainRunLoop];
    [v7 addToRunLoop:v3 forMode:*MEMORY[0x277CBE738]];

    v4 = [v0 layer];
    type metadata accessor for HelloMetalLayer();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      (*((*MEMORY[0x277D85000] & *v5) + 0x368))();
      v6 = v4;
    }

    else
    {
      v6 = v7;
      v7 = v4;
    }
  }
}

void sub_265A8F164()
{
  v1 = OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink;
  [*&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink] invalidate];
  v2 = *&v0[v1];
  *&v0[v1] = 0;

  v4 = [v0 layer];
  type metadata accessor for HelloMetalLayer();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    (*((*MEMORY[0x277D85000] & *v3) + 0x378))();
  }
}

void sub_265A8F234()
{
  v3 = [v0 layer];
  type metadata accessor for HelloMetalLayer();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    if (*&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_displayLink])
    {
      v2 = v0[OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused];
    }

    else
    {
      v2 = 1;
    }

    (*((*MEMORY[0x277D85000] & *v1) + 0x370))(v2);
  }
}

double sub_265A8F308()
{
  v1 = [v0 layer];
  type metadata accessor for HelloMetalLayer();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v0 bounds];
    v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x380))(v4);
  }

  else
  {

    return 0.0;
  }

  return v5;
}

uint64_t sub_265A8F40C()
{
  v1 = [v0 layer];
  type metadata accessor for HelloMetalLayer();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = (*((*MEMORY[0x277D85000] & *v2) + 0x388))();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_265A8F530(void *a1)
{
  v2 = v1;
  v4 = [v2 layer];
  type metadata accessor for HelloMetalLayer();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = [a1 drawable];
    (*((*MEMORY[0x277D85000] & *v6) + 0x3A0))(v7, 0);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC23SetupAssistantSupportUI9HelloView_isPaused) == 1)
  {
    v9 = [v2 layer];
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      (*((*MEMORY[0x277D85000] & *v8) + 0x360))();
    }
  }
}

uint64_t sub_265A8F734(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_265A8F7A0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_265A8F840;
}

void sub_265A8F840(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_265A8F934()
{
  v7 = sub_265AA7820();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_265AA77F0();
  MEMORY[0x28223BE20](v3);
  v4 = sub_265AA7440();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_265A56C08();
  sub_265AA7430();
  v8 = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  return sub_265AA7860();
}

id sub_265A8FB7C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *sub_265A8FBB0()
{
  v34 = sub_265AA7820();
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_265AA77F0();
  MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265AA7440();
  MEMORY[0x28223BE20](v4 - 8);
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_variant] = 0;
  v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_multilanguage] = 0;
  v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_isWatchPreview] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundPipelineState] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_fadePipelineState] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_textPipelineState] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer] = 0;
  v5 = &v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundUniforms];
  *v5 = 1065353216;
  *(v5 + 2) = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_background] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundBlurred] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_blurFilter] = 0;
  v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_enableBackgroundRenderPass] = 1;
  v6 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_timeTracker;
  type metadata accessor for TimeTracker();
  *&v0[v6] = sub_265A6631C();
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_dataProvider] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassData] = 0;
  *&v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_renderPassDataNext] = 0;
  v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_animationPhase] = 0;
  v7 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_metrics;
  type metadata accessor for HelloMetrics();
  *&v0[v7] = sub_265A9E688(5u);
  v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_forceAnimationToEnd] = 0;
  v8 = &v0[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_pixelsPerMM];
  *v8 = 0;
  v8[4] = 1;
  v9 = OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_helloMetalBackgroundQueue;
  sub_265A56C08();
  sub_265AA7430();
  v38 = MEMORY[0x277D84F90];
  sub_265A659B0(&unk_280030050, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F900);
  sub_265A659F8(&qword_280030060, &unk_28002F900);
  sub_265AA78E0();
  (*(v33 + 104))(v32, *MEMORY[0x277D85260], v34);
  *&v0[v9] = sub_265AA7860();
  v10 = type metadata accessor for HelloMetalLayer();
  v37.receiver = v0;
  v37.super_class = v10;
  v11 = objc_msgSendSuper2(&v37, sel_init);
  v12 = MTLCreateSystemDefaultDevice();
  if (v12)
  {
    v13 = v12;
    [v11 setDevice_];
    v14 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4A8]);
    [v11 setColorspace_];

    v15 = [objc_opt_self() mainBundle];
    v16 = [v15 bundleIdentifier];

    if (v16)
    {
      v17 = sub_265AA7570();
      v19 = v18;

      if (v17 == 0xD000000000000015 && 0x8000000265AAEB20 == v19)
      {

LABEL_7:
        [v11 setPixelFormat_];
        goto LABEL_8;
      }

      v20 = sub_265AA7B50();

      if (v20)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    [v11 setMaximumDrawableCount_];
    v21 = [v13 newCommandQueue];
    *&v11[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_commandQueue] = v21;
    swift_unknownObjectRelease();
    __asm
    {
      FMOV            V0.2S, #-1.0
      FMOV            V9.2S, #1.0
    }

    v36[0] = -_D0;
    v36[1] = _D9;
    v36[2] = _D0;
    v36[3] = -_D9;
    v28 = [v13 newBufferWithBytes:v36 length:32 options:0];
    *&v11[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundVertexCoordsBuffer] = v28;
    swift_unknownObjectRelease();
    v35[0] = 0;
    v35[1] = 1065353216;
    v35[2] = 0x3F80000000000000;
    *&v35[3] = _D9;
    v29 = [v13 newBufferWithBytes:v35 length:32 options:0];
    swift_unknownObjectRelease();
    *&v11[OBJC_IVAR____TtC23SetupAssistantSupportUI15HelloMetalLayer_backgroundTextureCoordsBuffer] = v29;
    swift_unknownObjectRelease();
  }

  return v11;
}