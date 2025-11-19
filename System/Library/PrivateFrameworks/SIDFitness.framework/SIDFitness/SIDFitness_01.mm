__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2629B407C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2629B40C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_2629B4120(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262A2A9F8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    v4 = sub_262A2A8B8();
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v4;
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

unint64_t sub_2629B43FC()
{
  result = qword_27FF3C220;
  if (!qword_27FF3C220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C220);
  }

  return result;
}

uint64_t sub_2629B4474@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2629B458C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2629B44B8()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2BC98[v1]);
  return sub_262A2A9D8();
}

uint64_t sub_2629B4540()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2BC98[v1]);
  return sub_262A2A9D8();
}

uint64_t sub_2629B458C(uint64_t result)
{
  if (result <= 19)
  {
    switch(result)
    {
      case 0:
        return result;
      case 5:
        return 1;
      case 10:
        return 2;
    }
  }

  else if (result > 44)
  {
    if (result == 45)
    {
      return 5;
    }

    if (result == 60)
    {
      return 6;
    }
  }

  else
  {
    if (result == 20)
    {
      return 3;
    }

    if (result == 30)
    {
      return 4;
    }
  }

  return 7;
}

uint64_t sub_2629B4608(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v1 = a1;
  if (a1 < 0xB5)
  {
    return 0;
  }

  if ((v1 - 421) > 0xFFFFFFFFFFFFFF0ELL)
  {
    return 1;
  }

  if ((v1 - 751) > 0xFFFFFFFFFFFFFEF0)
  {
    return 2;
  }

  if ((v1 - 1351) > 0xFFFFFFFFFFFFFEF0)
  {
    return 3;
  }

  if ((v1 - 1951) > 0xFFFFFFFFFFFFFEF0)
  {
    return 4;
  }

  if ((v1 - 2851) > 0xFFFFFFFFFFFFFEF0)
  {
    return 5;
  }

  if (v1 >= 2850)
  {
    return 6;
  }

  return 7;
}

uint64_t getEnumTagSinglePayload for MediaDuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaDuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SIDCatalogMediaType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7552646564697567;
  v2 = 0x697461746964656DLL;
  if (a1 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (a1)
  {
    v1 = 0x6157646564697567;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2629B48BC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x7552646564697567;
  v4 = *a1;
  v5 = 0xEA00000000006E6FLL;
  v6 = 0x6F65646976;
  if (v4 == 2)
  {
    v6 = 0x697461746964656DLL;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v7 = 0x6157646564697567;
  if (*a1)
  {
    v8 = 0xEA00000000006B6CLL;
  }

  else
  {
    v7 = 0x7552646564697567;
    v8 = 0xE90000000000006ELL;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0x697461746964656DLL;
  v12 = 0xEA00000000006E6FLL;
  if (*a2 != 2)
  {
    v11 = 0x6F65646976;
    v12 = 0xE500000000000000;
  }

  if (*a2)
  {
    v3 = 0x6157646564697567;
    v2 = 0xEA00000000006B6CLL;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_262A2A878();
  }

  return v15 & 1;
}

uint64_t sub_2629B4A08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10SIDFitness19SIDCatalogMediaTypeO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_2629B4A38(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x7552646564697567;
  v4 = 0xEA00000000006E6FLL;
  v5 = 0x697461746964656DLL;
  if (*v1 != 2)
  {
    v5 = 0x6F65646976;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6157646564697567;
    v2 = 0xEA00000000006B6CLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2629B4AD4()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B4BA4()
{
  *v0;
  *v0;
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629B4C60()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness19SIDCatalogMediaTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_262A2A788();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2629B4D7C()
{
  result = qword_27FF3C228;
  if (!qword_27FF3C228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C230, &qword_262A2BD30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C228);
  }

  return result;
}

unint64_t sub_2629B4DE4()
{
  result = qword_27FF3C238;
  if (!qword_27FF3C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C238);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDCatalogMediaType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SIDCatalogMediaType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SIDCatalogWorkoutReference.init(identifier:bodyFocusIdentifiers:contentRating:contributorIdentifiers:equipmentIdentifiers:dateReleased:duration:mediaType:modalityIdentifier:musicGenreIdentifiers:skillLevelIdentifiers:themeIdentifiers:trainerIdentifiers:traits:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  v20 = type metadata accessor for SIDCatalogWorkoutReference();
  v21 = v20[9];
  v22 = sub_262A29F38();
  result = (*(*(v22 - 8) + 32))(a9 + v21, a7, v22);
  *(a9 + v20[10]) = a10;
  *(a9 + v20[11]) = a8;
  v24 = (a9 + v20[12]);
  *v24 = a11;
  v24[1] = a12;
  *(a9 + v20[13]) = a13;
  *(a9 + v20[14]) = a14;
  *(a9 + v20[15]) = a15;
  *(a9 + v20[16]) = a16;
  *(a9 + v20[17]) = a17;
  return result;
}

uint64_t type metadata accessor for SIDCatalogWorkoutReference()
{
  result = qword_27FF3C250;
  if (!qword_27FF3C250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDCatalogWorkoutReference.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_262A2A448();
  v6 = v1[2];
  MEMORY[0x26672F240](*(v6 + 16));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      sub_262A2A448();

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  *(v2 + 24);
  sub_262A2A448();

  v11 = v2[4];
  MEMORY[0x26672F240](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 40);
    do
    {
      v14 = *(v13 - 1);
      v15 = *v13;

      sub_262A2A448();

      v13 += 2;
      --v12;
    }

    while (v12);
  }

  v16 = v2[5];
  MEMORY[0x26672F240](*(v16 + 16));
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = (v16 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      sub_262A2A448();

      v18 += 2;
      --v17;
    }

    while (v17);
  }

  v21 = type metadata accessor for SIDCatalogWorkoutReference();
  v22 = v21[9];
  sub_262A29F38();
  sub_2629B66C4(&qword_27FF3C240, MEMORY[0x277CC8990]);
  sub_262A2A388();
  v23 = *(v2 + v21[10]);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x26672F260](*&v23);
  *(v2 + v21[11]);
  *(v2 + v21[11]);
  sub_262A2A448();

  v24 = (v2 + v21[12]);
  v25 = *v24;
  v26 = v24[1];
  sub_262A2A448();
  v27 = *(v2 + v21[13]);
  MEMORY[0x26672F240](*(v27 + 16));
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = (v27 + 40);
    do
    {
      v30 = *(v29 - 1);
      v31 = *v29;

      sub_262A2A448();

      v29 += 2;
      --v28;
    }

    while (v28);
  }

  v32 = *(v2 + v21[14]);
  MEMORY[0x26672F240](*(v32 + 16));
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = (v32 + 40);
    do
    {
      v35 = *(v34 - 1);
      v36 = *v34;

      sub_262A2A448();

      v34 += 2;
      --v33;
    }

    while (v33);
  }

  v37 = *(v2 + v21[15]);
  MEMORY[0x26672F240](*(v37 + 16));
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v37 + 40);
    do
    {
      v40 = *(v39 - 1);
      v41 = *v39;

      sub_262A2A448();

      v39 += 2;
      --v38;
    }

    while (v38);
  }

  v42 = *(v2 + v21[16]);
  MEMORY[0x26672F240](*(v42 + 16));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 40);
    do
    {
      v45 = *(v44 - 1);
      v46 = *v44;

      sub_262A2A448();

      v44 += 2;
      --v43;
    }

    while (v43);
  }

  v47 = *(v2 + v21[17]);

  return sub_2629B55DC(a1, v47);
}

uint64_t SIDCatalogWorkoutReference.hashValue.getter()
{
  sub_262A2A998();
  SIDCatalogWorkoutReference.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629B5554()
{
  sub_262A2A998();
  SIDCatalogWorkoutReference.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629B5598()
{
  sub_262A2A998();
  SIDCatalogWorkoutReference.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629B55DC(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_262A2A9D8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = *(*(a2 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));
    sub_262A2A998();
    v5 &= v5 - 1;
    sub_262A2A448();

    result = sub_262A2A9D8();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x26672F240](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B5854(__int128 *a1, uint64_t a2)
{
  v18 = a1[2];
  v19 = a1[3];
  v20 = *(a1 + 8);
  v16 = *a1;
  v17 = a1[1];
  sub_262A2A9D8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v15)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];
    sub_262A2A998();

    sub_262A2A448();
    v15 = sub_262A2A9D8();
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x26672F240](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B59B0(__int128 *a1, uint64_t a2)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = *(a1 + 8);
  v12 = *a1;
  v13 = a1[1];
  sub_262A2A9D8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    v11 = *(*(a2 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));
    sub_262A2A998();
    v5 &= v5 - 1;
    sub_262A2A448();

    result = sub_262A2A9D8();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x26672F240](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B5B40(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_262A2A9D8();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + ((v10 << 9) | (8 * v11)));
    result = sub_262A2A988();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x26672F240](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B5C50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v18[13] = *(a1 + 32);
  *&v18[15] = v3;
  v18[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v18[9] = *a1;
  *&v18[11] = v4;
  sub_262A2A9D8();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_12:
    v15 = *(a2 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7))));
    v16 = *v15;
    v17 = *(v15 + 8);
    sub_262A2A998();
    if (v17 <= 4)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v12 = 2;
        }

        else if (v17 == 3)
        {
          v12 = 3;
        }

        else
        {
          v12 = 4;
        }

        goto LABEL_5;
      }

      if (v17)
      {
        MEMORY[0x26672F240](1);

        sub_2629B59B0(v18, v16);
      }

      else
      {
        MEMORY[0x26672F240](0);

        sub_2629B5B40(v18, v16);
      }
    }

    else
    {
      if (v17 <= 7)
      {
        if (v17 == 5)
        {
          v12 = 5;
        }

        else if (v17 == 6)
        {
          v12 = 6;
        }

        else
        {
          v12 = 7;
        }

        goto LABEL_5;
      }

      if (v17 == 8)
      {
        v12 = 8;
LABEL_5:
        MEMORY[0x26672F240](v12);

        sub_2629B5854(v18, v16);
        goto LABEL_6;
      }

      if (v17 != 9)
      {
        v12 = 10;
        goto LABEL_5;
      }

      MEMORY[0x26672F240](9);

      sub_2629B55DC(v18, v16);
    }

LABEL_6:
    v7 &= v7 - 1;
    v13 = sub_262A2A9D8();

    v10 ^= v13;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return MEMORY[0x26672F240](v10);
    }

    v7 = *(a2 + 56 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B5EB8(__int128 *a1, uint64_t a2)
{
  v19 = a1[2];
  v20 = a1[3];
  v21 = *(a1 + 8);
  v17 = *a1;
  v18 = a1[1];
  sub_262A2A9D8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; v8 ^= v16)
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v12 = *(a2 + 48) + 24 * (v11 | (v10 << 6));
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    sub_262A2A998();
    MEMORY[0x26672F240](v15);

    sub_262A2A448();
    v16 = sub_262A2A9D8();
    result = sub_2629B6A68(v13, v14, v15);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x26672F240](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B602C(__int128 *a1, uint64_t a2)
{
  v15 = a1[2];
  v16 = a1[3];
  v17 = *(a1 + 8);
  v13 = *a1;
  v14 = a1[1];
  result = sub_262A2A9D8();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_262A2A998();
    MEMORY[0x26672F240](v12);
    result = sub_262A2A9D8();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x26672F240](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629B6158(__int128 *a1, uint64_t a2)
{
  v39 = a1[2];
  v40 = a1[3];
  v41 = *(a1 + 8);
  v37 = *a1;
  v38 = a1[1];
  sub_262A2A9D8();
  v34 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v35 = v9;
LABEL_11:
    v13 = (*(v34 + 48) + 48 * (__clz(__rbit64(v6)) | (v10 << 6)));
    v14 = *v13;
    v15 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    v18 = v13[4];
    v19 = v13[5];
    sub_262A2A998();

    v36 = v16;

    sub_262A2A448();
    MEMORY[0x26672F240](*(v17 + 16));
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = (v17 + 32);
      do
      {
        v22 = *v21++;
        MEMORY[0x26672F240](v22);
        --v20;
      }

      while (v20);
    }

    MEMORY[0x26672F240](*(v36 + 16));
    v23 = *(v36 + 16);
    if (v23)
    {
      v24 = (v36 + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;

        sub_262A2A448();

        v24 += 2;
        --v23;
      }

      while (v23);
    }

    MEMORY[0x26672F240](*(v18 + 16));
    v27 = *(v18 + 16);
    if (v27)
    {
      v28 = (v18 + 40);
      do
      {
        v29 = *(v28 - 1);
        v30 = *v28;

        sub_262A2A448();

        v28 += 2;
        --v27;
      }

      while (v27);
    }

    MEMORY[0x26672F240](*(v19 + 16));
    v31 = *(v19 + 16);
    if (v31)
    {
      v32 = (v19 + 32);
      do
      {
        v33 = *v32++;
        MEMORY[0x26672F240](v33);
        --v31;
      }

      while (v31);
    }

    v6 &= v6 - 1;
    v11 = sub_262A2A9D8();

    v9 = v11 ^ v35;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x26672F240](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v35 = v9;
      v10 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10SIDFitness26SIDCatalogWorkoutReferenceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_262A2A878() & 1) == 0 || (sub_2629E7890(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v5 = 0xE800000000000000;
  v6 = 0x746963696C707865;
  if (*(a1 + 24) != 1)
  {
    v6 = 0x6669636570736E75;
    v5 = 0xEB00000000646569;
  }

  if (*(a1 + 24))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E61656C63;
  }

  if (*(a1 + 24))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = 0xE800000000000000;
  v10 = 0x746963696C707865;
  if (*(a2 + 24) != 1)
  {
    v10 = 0x6669636570736E75;
    v9 = 0xEB00000000646569;
  }

  if (*(a2 + 24))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x6E61656C63;
  }

  if (*(a2 + 24))
  {
    v12 = v9;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  if (v7 != v11 || v8 != v12)
  {
    v13 = sub_262A2A878();

    if (v13)
    {
      goto LABEL_27;
    }

    return 0;
  }

LABEL_27:
  if ((sub_2629E7890(*(a1 + 32), *(a2 + 32)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_2629E7890(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for SIDCatalogWorkoutReference();
  if ((MEMORY[0x26672E780](a1 + v14[9], a2 + v14[9]) & 1) == 0 || *(a1 + v14[10]) != *(a2 + v14[10]) || (sub_2629C9088(*(a1 + v14[11]), *(a2 + v14[11])) & 1) == 0)
  {
    return 0;
  }

  v15 = v14[12];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  if ((v16 != *v18 || v17 != v18[1]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((sub_2629E7890(*(a1 + v14[13]), *(a2 + v14[13])) & 1) == 0 || (sub_2629E7890(*(a1 + v14[14]), *(a2 + v14[14])) & 1) == 0 || (sub_2629E7890(*(a1 + v14[15]), *(a2 + v14[15])) & 1) == 0 || (sub_2629E7890(*(a1 + v14[16]), *(a2 + v14[16])) & 1) == 0)
  {
    return 0;
  }

  v19 = v14[17];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);

  return sub_2629D47AC(v20, v21);
}

uint64_t sub_2629B66C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629B6720(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A29F38();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629B67E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A29F38();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629B6884()
{
  sub_2629B6968();
  if (v0 <= 0x3F)
  {
    sub_262A29F38();
    if (v1 <= 0x3F)
    {
      sub_2629B69B8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2629B6968()
{
  if (!qword_27FF3C260)
  {
    v0 = sub_262A2A558();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C260);
    }
  }
}

void sub_2629B69B8()
{
  if (!qword_27FF3C268)
  {
    sub_2629B6A14();
    v0 = sub_262A2A5C8();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C268);
    }
  }
}

unint64_t sub_2629B6A14()
{
  result = qword_27FF3C270;
  if (!qword_27FF3C270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C270);
  }

  return result;
}

uint64_t sub_2629B6A68(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
  }

  return result;
}

unint64_t SIDCatalogWorkoutTrait.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7053747369747261;
    v6 = 0x796164696C6F68;
    if (a1 != 2)
    {
      v6 = 0x77654E72616E756CLL;
    }

    if (a1)
    {
      v5 = 0x6565776F6C6C6168;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x576D6172676F7270;
    v2 = 0x7261655977656ELL;
    if (a1 != 7)
    {
      v2 = 0x6967736B6E616874;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6564697270;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2629B6BD8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = SIDCatalogWorkoutTrait.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SIDCatalogWorkoutTrait.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_262A2A878();
  }

  return v8 & 1;
}

uint64_t sub_2629B6C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10SIDFitness22SIDCatalogWorkoutTraitO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

unint64_t sub_2629B6C90@<X0>(unint64_t *a1@<X8>)
{
  result = SIDCatalogWorkoutTrait.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2629B6CCC()
{
  v1 = *v0;
  sub_262A2A998();
  SIDCatalogWorkoutTrait.rawValue.getter(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B6D30()
{
  SIDCatalogWorkoutTrait.rawValue.getter(*v0);
  sub_262A2A448();
}

uint64_t sub_2629B6D84()
{
  v1 = *v0;
  sub_262A2A998();
  SIDCatalogWorkoutTrait.rawValue.getter(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness22SIDCatalogWorkoutTraitO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_262A2A788();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2629B6EE4()
{
  result = qword_27FF3C278;
  if (!qword_27FF3C278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C280, &qword_262A2BED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C278);
  }

  return result;
}

unint64_t sub_2629B6F4C()
{
  result = qword_27FF3C288;
  if (!qword_27FF3C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C288);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDCatalogWorkoutTrait(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SIDCatalogWorkoutTrait(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2629B70F0()
{
  result = qword_27FF3C290;
  if (!qword_27FF3C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C290);
  }

  return result;
}

uint64_t SIDContentRating.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E61656C63;
  }

  if (a1 == 1)
  {
    return 0x746963696C707865;
  }

  return 0x6669636570736E75;
}

uint64_t sub_2629B71A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x746963696C707865;
  if (v2 != 1)
  {
    v4 = 0x6669636570736E75;
    v3 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E61656C63;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x746963696C707865;
  if (*a2 != 1)
  {
    v8 = 0x6669636570736E75;
    v7 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E61656C63;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_262A2A878();
  }

  return v11 & 1;
}

uint64_t sub_2629B72B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10SIDFitness16SIDContentRatingO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

void sub_2629B72E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x746963696C707865;
  if (v2 != 1)
  {
    v5 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E61656C63;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2629B7348()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B73F0()
{
  *v0;
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629B7484()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness16SIDContentRatingO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_262A2A788();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2629B7578()
{
  result = qword_27FF3C298;
  if (!qword_27FF3C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C298);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDContentRating(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SIDContentRating(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2629B7758@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s10SIDFitness16SIDMediaDurationO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2629B779C()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2C168[v1]);
  return sub_262A2A9D8();
}

uint64_t sub_2629B7824()
{
  v1 = *v0;
  sub_262A2A998();
  MEMORY[0x26672F240](qword_262A2C168[v1]);
  return sub_262A2A9D8();
}

uint64_t static SIDMediaDuration.from(duration:)(double a1)
{
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (a1 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v1 = a1;
  if ((a1 - 421) > 0xFFFFFFFFFFFFFF0ELL)
  {
    return 0;
  }

  if ((v1 - 751) > 0xFFFFFFFFFFFFFEF0)
  {
    return 1;
  }

  if ((v1 - 1351) > 0xFFFFFFFFFFFFFEF0)
  {
    return 2;
  }

  if ((v1 - 1951) > 0xFFFFFFFFFFFFFEF0)
  {
    return 3;
  }

  if ((v1 - 2851) >= 0xFFFFFFFFFFFFFEF1)
  {
    return 4;
  }

  return 5;
}

uint64_t _s10SIDFitness16SIDMediaDurationO8rawValueACSgSi_tcfC_0(uint64_t a1)
{
  if (a1 <= 19)
  {
    if (a1 == 5)
    {
      return 0;
    }

    if (a1 == 10)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 45:
        return 4;
      case 30:
        return 3;
      case 20:
        return 2;
    }
  }

  return 5;
}

unint64_t sub_2629B7980()
{
  result = qword_27FF3C2A0;
  if (!qword_27FF3C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDMediaDuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SIDMediaDuration(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

SIDFitness::SIDWorkoutBodyFocus_optional __swiftcall SIDWorkoutBodyFocus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SIDWorkoutBodyFocus.rawValue.getter()
{
  v1 = 12337;
  if (*v0 != 1)
  {
    v1 = 12593;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 57;
  }
}

uint64_t sub_2629B7BC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 12337;
  if (v2 != 1)
  {
    v3 = 12593;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 57;
  }

  if (v2)
  {
    v5 = 0xE200000000000000;
  }

  else
  {
    v5 = 0xE100000000000000;
  }

  v6 = 12337;
  if (*a2 != 1)
  {
    v6 = 12593;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 57;
  }

  if (*a2)
  {
    v8 = 0xE200000000000000;
  }

  else
  {
    v8 = 0xE100000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_262A2A878();
  }

  return v9 & 1;
}

void sub_2629B7C9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE100000000000000;
  v4 = 12337;
  if (v2 != 1)
  {
    v4 = 12593;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 57;
  }

  if (!v5)
  {
    v3 = 0xE200000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_2629B7CDC()
{
  result = qword_27FF3C2A8;
  if (!qword_27FF3C2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C2B0, &qword_262A2C1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2A8);
  }

  return result;
}

unint64_t sub_2629B7D54()
{
  result = qword_27FF3C2B8;
  if (!qword_27FF3C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2B8);
  }

  return result;
}

uint64_t sub_2629B7DA8()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B7E28()
{
  *v0;
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629B7E94()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t sub_2629B7FD0()
{
  result = qword_27FF3C2C0;
  if (!qword_27FF3C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2C0);
  }

  return result;
}

SIDFitness::SIDWorkoutEquipmentIdentifier_optional __swiftcall SIDWorkoutEquipmentIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SIDWorkoutEquipmentIdentifier.rawValue.getter()
{
  v1 = 0x3931333738353531;
  v2 = 0x3032383934393431;
  if (*v0 != 6)
  {
    v2 = 0x3930393836383531;
  }

  if (*v0 <= 5u)
  {
    v2 = 0x3932343038373431;
  }

  if (*v0)
  {
    v1 = 0x3932343038373431;
  }

  if (*v0 <= 1u)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0x3932343038373431;
  }

  *v0;
  if (*v0 <= 3u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2629B8178@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x3931333738353531;
  v4 = 0xEA00000000003735;
  v5 = 0x3032383934393431;
  if (v2 != 6)
  {
    v5 = 0x3930393836383531;
    v4 = 0xEA00000000003638;
  }

  v6 = 0xEA00000000003836;
  result = 0x3932343038373431;
  if (v2 != 4)
  {
    v6 = 0xEA00000000003736;
  }

  if (*v1 <= 5u)
  {
    v5 = 0x3932343038373431;
    v4 = v6;
  }

  v8 = 0xEA00000000003636;
  if (v2 != 2)
  {
    v8 = 0xEA00000000003037;
  }

  v9 = 0xEA00000000003936;
  if (*v1)
  {
    v3 = 0x3932343038373431;
  }

  else
  {
    v9 = 0xEA00000000003739;
  }

  if (*v1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0x3932343038373431;
  }

  if (*v1 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (*v1 <= 3u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (*v1 <= 3u)
  {
    v13 = v11;
  }

  else
  {
    v13 = v4;
  }

  *a1 = v12;
  a1[1] = v13;
  return result;
}

unint64_t sub_2629B8270()
{
  result = qword_27FF3C2C8;
  if (!qword_27FF3C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDWorkoutEquipmentIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SIDWorkoutEquipmentIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SIDWorkoutModality.rawValue.getter(char a1)
{
  result = 0x3932343038373431;
  switch(a1)
  {
    case 4:
      result = 0x3532363037343631;
      break;
    case 5:
      result = 0x3332373831363531;
      break;
    case 7:
      result = 0x3332373831363531;
      break;
    case 9:
      result = 0x3332373831363531;
      break;
    case 12:
      result = 0x3032383934393431;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2629B856C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SIDWorkoutModality.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SIDWorkoutModality.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_262A2A878();
  }

  return v8 & 1;
}

uint64_t sub_2629B85F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0();
  *a2 = result;
  return result;
}

uint64_t sub_2629B8624@<X0>(uint64_t *a1@<X8>)
{
  result = SIDWorkoutModality.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2629B8700()
{
  v1 = *v0;
  sub_262A2A998();
  SIDWorkoutModality.rawValue.getter(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B8764()
{
  SIDWorkoutModality.rawValue.getter(*v0);
  sub_262A2A448();
}

uint64_t sub_2629B87B8()
{
  v1 = *v0;
  sub_262A2A998();
  SIDWorkoutModality.rawValue.getter(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B8818(uint64_t a1)
{
  v2 = sub_2629AC1C8(&unk_287533A20);
  sub_2629AC5B8(&unk_287533CE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C2D8, &unk_262A30A30);
  swift_arrayDestroy();

  if (*(v2 + 16) && (v3 = sub_2629CB1E4(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

uint64_t _s10SIDFitness18SIDWorkoutModalityO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_262A2A788();

  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_2629B8910()
{
  result = qword_27FF3C2D0;
  if (!qword_27FF3C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SIDWorkoutModality(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SIDWorkoutModality(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2629B8AB4()
{
  result = qword_27FF3C2E0;
  if (!qword_27FF3C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2E0);
  }

  return result;
}

SIDFitness::SIDWorkoutMusicGenreIdentifier_optional __swiftcall SIDWorkoutMusicGenreIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2629B8B94@<X0>(unint64_t *a1@<X8>)
{
  result = SIDWorkoutMusicGenreIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE300000000000000;
  return result;
}

unint64_t sub_2629B8BC4()
{
  result = qword_27FF3C2E8;
  if (!qword_27FF3C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2E8);
  }

  return result;
}

uint64_t sub_2629B8C18()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BE150();
  return sub_262A2A9D8();
}

uint64_t sub_2629B8C68()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BE150();
  return sub_262A2A9D8();
}

unint64_t sub_2629B8D6C()
{
  result = qword_27FF3C2F0;
  if (!qword_27FF3C2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2F0);
  }

  return result;
}

SIDFitness::SIDWorkoutSkillLevelIdentifier_optional __swiftcall SIDWorkoutSkillLevelIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SIDWorkoutSkillLevelIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 52;
  }

  else
  {
    return 53;
  }
}

uint64_t sub_2629B8E3C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 52;
  }

  else
  {
    v2 = 53;
  }

  if (*a2)
  {
    v3 = 52;
  }

  else
  {
    v3 = 53;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_262A2A878();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2629B8EA8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_262A2A788();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2629B8F08(uint64_t *a1@<X8>)
{
  v2 = 52;
  if (!*v1)
  {
    v2 = 53;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

unint64_t sub_2629B8F28()
{
  result = qword_27FF3C2F8;
  if (!qword_27FF3C2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C2F8);
  }

  return result;
}

uint64_t sub_2629B8F7C()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B8FD8()
{
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629B9018()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

unint64_t sub_2629B9130()
{
  result = qword_27FF3C300;
  if (!qword_27FF3C300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C300);
  }

  return result;
}

SIDFitness::SIDWorkoutThemeIdentifier_optional __swiftcall SIDWorkoutThemeIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A788();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SIDWorkoutThemeIdentifier.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 57;
    v7 = 12337;
    if (v1 != 8)
    {
      v7 = 12593;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 55;
    if (v1 != 5)
    {
      v8 = 56;
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
    v2 = 50;
    v3 = 52;
    v4 = 53;
    if (v1 != 3)
    {
      v4 = 54;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 51;
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

uint64_t sub_2629B92B8@<X0>(uint64_t *a1@<X8>)
{
  result = SIDWorkoutThemeIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2629B92E4()
{
  result = qword_27FF3C308;
  if (!qword_27FF3C308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C308);
  }

  return result;
}

uint64_t sub_2629B9338()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BE190();
  return sub_262A2A9D8();
}

uint64_t sub_2629B9388()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BE190();
  return sub_262A2A9D8();
}

uint64_t getEnumTagSinglePayload for PlanGeneration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanGeneration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2629B95CC()
{
  result = qword_27FF3C310;
  if (!qword_27FF3C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C310);
  }

  return result;
}

SIDFitness::SIDWorkoutTrainerIdentifier_optional __swiftcall SIDWorkoutTrainerIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_262A2A918();

  v5 = 0;
  v6 = 13;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
LABEL_25:
      v6 = v5;
      break;
    case 13:
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    default:
      v6 = 31;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t SIDWorkoutTrainerIdentifier.rawValue.getter()
{
  result = 0x3936313931323531;
  switch(*v0)
  {
    case 1:
      result = 0x3236313931323531;
      break;
    case 2:
      result = 0x3637313931323531;
      break;
    case 3:
      result = 0x3337313931323531;
      break;
    case 4:
      result = 0x3536313931323531;
      break;
    case 5:
      result = 0x3331303236323531;
      break;
    case 6:
      result = 0x3131303236323531;
      break;
    case 7:
      result = 0x3337313931323531;
      break;
    case 8:
      result = 0x3337313931323531;
      break;
    case 9:
      result = 0x3535313931323531;
      break;
    case 0xA:
      result = 0x3136393933373531;
      break;
    case 0xB:
      result = 0x3637313931323531;
      break;
    case 0xC:
      result = 0x3835313931323531;
      break;
    case 0xE:
      result = 0x3035343739323631;
      break;
    case 0xF:
      result = 0x3236313931323531;
      break;
    case 0x10:
      result = 0x3534333231373531;
      break;
    case 0x11:
      result = 0x3036313931323531;
      break;
    case 0x13:
      result = 0x3835313931323531;
      break;
    case 0x14:
      result = 0x3439303330373531;
      break;
    case 0x15:
      result = 0x3331393535343631;
      break;
    case 0x16:
      result = 0x3236313931323531;
      break;
    case 0x17:
      result = 0x3439303330373531;
      break;
    case 0x18:
      result = 0x3531393535343631;
      break;
    case 0x19:
      result = 0x3337313931323531;
      break;
    case 0x1A:
      result = 0x3331303236323531;
      break;
    case 0x1B:
      result = 0x3331393535343631;
      break;
    case 0x1C:
      result = 0x3637313931323531;
      break;
    case 0x1D:
      result = 0x3436393933373531;
      break;
    case 0x1E:
      result = 0x3835313931323531;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2629B9B80(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = SIDWorkoutTrainerIdentifier.rawValue.getter();
  v4 = v3;
  if (v2 == SIDWorkoutTrainerIdentifier.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_262A2A878();
  }

  return v7 & 1;
}

uint64_t sub_2629B9C28@<X0>(uint64_t *a1@<X8>)
{
  result = SIDWorkoutTrainerIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2629B9C54()
{
  result = qword_27FF3C318;
  if (!qword_27FF3C318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C318);
  }

  return result;
}

uint64_t sub_2629B9CA8()
{
  v1 = *v0;
  sub_262A2A998();
  SIDWorkoutTrainerIdentifier.rawValue.getter();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629B9D10()
{
  v2 = *v0;
  SIDWorkoutTrainerIdentifier.rawValue.getter();
  sub_262A2A448();
}

uint64_t sub_2629B9D74()
{
  v1 = *v0;
  sub_262A2A998();
  SIDWorkoutTrainerIdentifier.rawValue.getter();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t getEnumTagSinglePayload for SIDWorkoutTrainerIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SIDWorkoutTrainerIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2629B9FD8()
{
  result = qword_27FF3C320;
  if (!qword_27FF3C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C320);
  }

  return result;
}

unint64_t sub_2629BA064()
{
  result = qword_27FF3C328;
  if (!qword_27FF3C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C328);
  }

  return result;
}

unint64_t sub_2629BA0BC()
{
  result = qword_27FF3C330;
  if (!qword_27FF3C330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C338, qword_262A2CAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C330);
  }

  return result;
}

unint64_t sub_2629BA124()
{
  result = qword_27FF3C340;
  if (!qword_27FF3C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C340);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlanGenerationError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlanGenerationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SIDFitnessResponseError.hashValue.getter(unsigned __int8 a1)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a1);
  return sub_262A2A9D8();
}

unint64_t sub_2629BA35C()
{
  result = qword_27FF3C348;
  if (!qword_27FF3C348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C348);
  }

  return result;
}

uint64_t SIDWorkoutPlanError.hashValue.getter(unsigned __int8 a1)
{
  sub_262A2A998();
  MEMORY[0x26672F240](a1);
  return sub_262A2A9D8();
}

unint64_t sub_2629BA444()
{
  result = qword_27FF3C350;
  if (!qword_27FF3C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C350);
  }

  return result;
}

uint64_t sub_2629BA4BC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A2A018();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629BA57C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A2A018();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CreatePlanScaffoldEvent()
{
  result = qword_27FF3C358;
  if (!qword_27FF3C358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629BA66C()
{
  sub_2629BA7EC(319, &qword_27FF3C260);
  if (v0 <= 0x3F)
  {
    sub_2629BA7EC(319, &qword_27FF3C368);
    if (v1 <= 0x3F)
    {
      sub_262A2A018();
      if (v2 <= 0x3F)
      {
        sub_2629BA788();
        if (v3 <= 0x3F)
        {
          sub_2629BA7EC(319, &qword_27FF3C378);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2629BA788()
{
  if (!qword_27FF3C370)
  {
    v0 = sub_262A2A368();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C370);
    }
  }
}

void sub_2629BA7EC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_262A2A558();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_2629BA83C()
{
  result = qword_27FF3C380;
  if (!qword_27FF3C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C380);
  }

  return result;
}

uint64_t sub_2629BA890(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x74655361746164;
  }

  else
  {
    v4 = 0xD000000000000012;
  }

  if (v3)
  {
    v5 = 0x8000000262A31AD0;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x74655361746164;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0x8000000262A31AD0;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_262A2A878();
  }

  return v9 & 1;
}

uint64_t sub_2629BA93C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_262A2A788();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_2629BA99C(unint64_t *a1@<X8>)
{
  v2 = 0x8000000262A31AD0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x74655361746164;
    v2 = 0xE700000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2629BA9E0()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629BAA68()
{
  *v0;
  sub_262A2A448();
}

uint64_t sub_2629BAADC()
{
  v1 = *v0;
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629BAB70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C3A0, &qword_262A2CF30);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629BB2F8();
  sub_262A2AA28();
  v16 = 0;
  sub_262A2A828();
  if (!v5)
  {
    v15 = 1;
    sub_262A2A828();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2629BAD04()
{
  if (*v0)
  {
    result = 0x7265566C65646F6DLL;
  }

  else
  {
    result = 0x6D614E6C65646F6DLL;
  }

  *v0;
  return result;
}

uint64_t sub_2629BAD4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
  if (v6 || (sub_262A2A878() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265566C65646F6DLL && a2 == 0xEC0000006E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262A2A878();

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

uint64_t sub_2629BAE34(uint64_t a1)
{
  v2 = sub_2629BB2F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629BAE70(uint64_t a1)
{
  v2 = sub_2629BB2F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629BAEAC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629BAF14()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262A2A448();

  return sub_262A2A448();
}

uint64_t sub_2629BAF64()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_262A2A998();
  sub_262A2A448();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629BAFC8(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_262A2A878(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_262A2A878();
    }
  }

  return result;
}

uint64_t sub_2629BB06C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2629BB114(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_2629BB0C0()
{
  result = qword_27FF3C388;
  if (!qword_27FF3C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C388);
  }

  return result;
}

uint64_t sub_2629BB114(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C390, &qword_262A2CF28);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629BB2F8();
  sub_262A2AA08();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_262A2A7C8();
    v11 = 1;
    sub_262A2A7C8();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_2629BB2F8()
{
  result = qword_27FF3C398;
  if (!qword_27FF3C398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C398);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2629BB368(uint64_t a1, int a2)
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

uint64_t sub_2629BB3B0(uint64_t result, int a2, int a3)
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

unint64_t sub_2629BB404()
{
  result = qword_27FF3C3A8;
  if (!qword_27FF3C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C3A8);
  }

  return result;
}

unint64_t sub_2629BB45C()
{
  result = qword_27FF3C3B0;
  if (!qword_27FF3C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C3B0);
  }

  return result;
}

unint64_t sub_2629BB4B4()
{
  result = qword_27FF3C3B8;
  if (!qword_27FF3C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C3B8);
  }

  return result;
}

unint64_t sub_2629BB50C()
{
  result = qword_27FF3C3C0;
  if (!qword_27FF3C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C3C0);
  }

  return result;
}

uint64_t sub_2629BB568@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_262A2A788();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2629BB5DC()
{
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629BB650()
{
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t getEnumTagSinglePayload for ModelName(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ModelName(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2629BB790()
{
  result = qword_27FF3C3C8;
  if (!qword_27FF3C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C3C8);
  }

  return result;
}

uint64_t sub_2629BB7E4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_262A2A788();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2629BB85C()
{
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629BB8D8()
{
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629BB940(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  sub_262A2A448();
  v6 = v1[2];
  v7 = v1[3];
  sub_262A2A448();
  v8 = v1[4];
  v9 = v1[5];
  sub_262A2A448();
  v10 = v1[6];
  v11 = v1[7];
  sub_262A2A448();
  v12 = v1[8];
  v13 = v1[9];
  sub_262A2A448();
  v14 = v1[10];
  v15 = v1[11];
  sub_262A2A448();
  v16 = v1[12];
  v17 = v1[13];
  sub_262A2A448();
  v18 = v1[14];
  v19 = v1[15];
  sub_262A2A448();
  v20 = v1[16];
  MEMORY[0x26672F240](*(v20 + 16));
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = (v20 + 56);
    do
    {
      v23 = *(v22 - 3);
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      v26 = *v22;

      sub_262A2A448();

      sub_262A2A448();
      swift_bridgeObjectRelease_n();

      v22 += 4;
      --v21;
    }

    while (v21);
  }

  v27 = type metadata accessor for PlanDataSetEvent();
  v28 = v27[13];
  sub_262A2A018();
  sub_2629BBC60(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  v29 = v2 + v27[14];
  sub_262A2A388();
  sub_2629BF80C(a1, *(v2 + v27[15]));
  v30 = (v2 + v27[16]);
  v31 = *v30;
  v32 = v30[1];
  sub_262A2A448();
  v33 = *(v2 + v27[17]);
  result = MEMORY[0x26672F240](*(v33 + 16));
  v35 = *(v33 + 16);
  if (v35)
  {
    v36 = (v33 + 40);
    do
    {
      v37 = *(v36 - 1);
      v38 = *v36;

      sub_262A2A448();

      v36 += 2;
      --v35;
    }

    while (v35);
  }

  return result;
}

uint64_t sub_2629BBB48()
{
  sub_262A2A998();
  sub_2629BB940(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629BBB8C()
{
  sub_262A2A998();
  sub_2629BB940(v1);
  return sub_262A2A9D8();
}

uint64_t type metadata accessor for PlanDataSetEvent()
{
  result = qword_27FF3C3E0;
  if (!qword_27FF3C3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629BBC60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629BBCA8(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_262A2A878() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((a1[8] != a2[8] || a1[9] != a2[9]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((a1[10] != a2[10] || a1[11] != a2[11]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((a1[12] != a2[12] || a1[13] != a2[13]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((a1[14] != a2[14] || a1[15] != a2[15]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  if ((sub_2629E80A0(a1[16], a2[16]) & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for PlanDataSetEvent();
  v7 = v6[13];
  if ((sub_262A29FF8() & 1) == 0)
  {
    return 0;
  }

  v8 = v6[14];
  if ((sub_262A29FF8() & 1) == 0 || (sub_2629E7738(*(a1 + v6[15]), *(a2 + v6[15])) & 1) == 0)
  {
    return 0;
  }

  v9 = v6[16];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if ((v10 != *v12 || v11 != v12[1]) && (sub_262A2A878() & 1) == 0)
  {
    return 0;
  }

  v13 = v6[17];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);

  return sub_2629E7890(v14, v15);
}

uint64_t sub_2629BBEBC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_262A2A018();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629BBF7C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A2A018();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629BC020()
{
  sub_2629BA7EC(319, &qword_27FF3C3F0);
  if (v0 <= 0x3F)
  {
    sub_262A2A018();
    if (v1 <= 0x3F)
    {
      sub_2629BA7EC(319, &qword_27FF3C378);
      if (v2 <= 0x3F)
      {
        sub_2629BA7EC(319, &qword_27FF3C260);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy200_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_2629BC164(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 200))
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

uint64_t sub_2629BC1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
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
      *(result + 200) = 1;
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

    *(result + 200) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2629BC22C(char a1)
{
  result = 0x617461645F326261;
  switch(a1)
  {
    case 1:
      result = 0x56676F6C61746163;
      break;
    case 2:
      result = 0x644974726F686F63;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x54746E656D656C65;
      break;
    case 7:
      result = 0x707954746E657665;
      break;
    case 8:
      result = 25705;
      break;
    case 9:
      result = 0x657079546469;
      break;
    case 10:
      result = 0x74654D6C65646F6DLL;
      break;
    case 11:
      result = 0x64496E616C70;
      break;
    case 12:
      result = 0x5272656767697274;
      break;
    case 13:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2629BC400(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C450, &qword_262A2D3E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629BD8A8();
  sub_262A2AA28();
  v35 = *v3;
  HIBYTE(v34) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C418, &qword_262A2D3C8);
  sub_2629BDA84(&qword_27FF3C458, sub_2629BDAFC);
  sub_262A2A848();
  if (!v2)
  {
    v11 = v3[1];
    v12 = v3[2];
    LOBYTE(v35) = 1;
    sub_262A2A828();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v35) = 2;
    sub_262A2A828();
    v15 = v3[5];
    v16 = v3[6];
    LOBYTE(v35) = 3;
    sub_262A2A828();
    v17 = v3[7];
    v18 = v3[8];
    LOBYTE(v35) = 4;
    sub_262A2A828();
    v19 = v3[9];
    v20 = v3[10];
    LOBYTE(v35) = 5;
    sub_262A2A828();
    v21 = v3[11];
    v22 = v3[12];
    LOBYTE(v35) = 6;
    sub_262A2A828();
    v23 = v3[13];
    v24 = v3[14];
    LOBYTE(v35) = 7;
    sub_262A2A828();
    v25 = v3[15];
    v26 = v3[16];
    LOBYTE(v35) = 8;
    sub_262A2A828();
    v27 = v3[17];
    v28 = v3[18];
    LOBYTE(v35) = 9;
    sub_262A2A828();
    v35 = v3[19];
    HIBYTE(v34) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C430, &unk_262A2D3D0);
    sub_2629BD950(&qword_27FF3C468, sub_2629BDB50);
    sub_262A2A848();
    v29 = v3[20];
    v30 = v3[21];
    LOBYTE(v35) = 11;
    sub_262A2A828();
    v31 = v3[22];
    v32 = v3[23];
    LOBYTE(v35) = 12;
    sub_262A2A828();
    v35 = v3[24];
    HIBYTE(v34) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
    sub_2629BDBA4(&qword_27FF3C478);
    sub_262A2A848();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2629BC830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629BCA58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629BC864(uint64_t a1)
{
  v2 = sub_2629BD8A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629BC8A0(uint64_t a1)
{
  v2 = sub_2629BD8A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2629BC8DC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

__n128 sub_2629BC90C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2629BCED0(a1, v10);
  if (!v2)
  {
    v5 = v10[11];
    *(a2 + 160) = v10[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11;
    v6 = v10[7];
    *(a2 + 96) = v10[6];
    *(a2 + 112) = v6;
    v7 = v10[9];
    *(a2 + 128) = v10[8];
    *(a2 + 144) = v7;
    v8 = v10[3];
    *(a2 + 32) = v10[2];
    *(a2 + 48) = v8;
    v9 = v10[5];
    *(a2 + 64) = v10[4];
    *(a2 + 80) = v9;
    result = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_2629BC9AC()
{
  result = qword_27FF3C3F8;
  if (!qword_27FF3C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C3F8);
  }

  return result;
}

unint64_t sub_2629BCA04()
{
  result = qword_27FF3C400;
  if (!qword_27FF3C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C400);
  }

  return result;
}

uint64_t sub_2629BCA58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461645F326261 && a2 == 0xE800000000000000;
  if (v4 || (sub_262A2A878() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x56676F6C61746163 && a2 == 0xEE006E6F69737265 || (sub_262A2A878() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x644974726F686F63 && a2 == 0xE800000000000000 || (sub_262A2A878() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000262A313B0 == a2 || (sub_262A2A878() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000262A32360 == a2 || (sub_262A2A878() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000262A32380 == a2 || (sub_262A2A878() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x54746E656D656C65 && a2 == 0xEB00000000657079 || (sub_262A2A878() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_262A2A878() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_262A2A878() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x657079546469 && a2 == 0xE600000000000000 || (sub_262A2A878() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74654D6C65646F6DLL && a2 == 0xED00006174616461 || (sub_262A2A878() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x64496E616C70 && a2 == 0xE600000000000000 || (sub_262A2A878() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x5272656767697274 && a2 == 0xED00006E6F736165 || (sub_262A2A878() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000262A323A0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_262A2A878();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_2629BCED0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C408, &qword_262A2D3C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2629BD8A8();
  sub_262A2AA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v62);
  }

  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C418, &qword_262A2D3C8);
  LOBYTE(v63) = 0;
  sub_2629BDA84(&qword_27FF3C420, sub_2629BD8FC);
  sub_262A2A7E8();
  v61 = v76[0];
  LOBYTE(v76[0]) = 1;
  v13 = sub_262A2A7C8();
  *&v60 = v14;
  v15 = v13;
  LOBYTE(v76[0]) = 2;
  *(&v60 + 1) = sub_262A2A7C8();
  v59 = v16;
  LOBYTE(v76[0]) = 3;
  v52 = sub_262A2A7C8();
  v58 = v17;
  LOBYTE(v76[0]) = 4;
  v51 = sub_262A2A7C8();
  v57 = v18;
  LOBYTE(v76[0]) = 5;
  v50 = sub_262A2A7C8();
  v56 = v19;
  LOBYTE(v76[0]) = 6;
  v49 = sub_262A2A7C8();
  v55 = v20;
  LOBYTE(v76[0]) = 7;
  v48 = sub_262A2A7C8();
  v54 = v21;
  LOBYTE(v76[0]) = 8;
  v47 = sub_262A2A7C8();
  v53 = v22;
  LOBYTE(v76[0]) = 9;
  v45 = sub_262A2A7C8();
  v46 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C430, &unk_262A2D3D0);
  LOBYTE(v63) = 10;
  sub_2629BD950(&qword_27FF3C438, sub_2629BD9C8);
  sub_262A2A7E8();
  v43 = v76[0];
  LOBYTE(v76[0]) = 11;
  v41 = sub_262A2A7C8();
  v44 = v24;
  LOBYTE(v76[0]) = 12;
  v40 = sub_262A2A7C8();
  v42 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  v77 = 13;
  sub_2629BDBA4(&qword_27FF3C448);
  sub_262A2A7E8();
  (*(v12 + 8))(v9, v5);
  v39 = v78;
  v26 = *(&v60 + 1);
  v27 = v61;
  *&v63 = v61;
  *(&v63 + 1) = v15;
  v29 = v59;
  v28 = v60;
  v64 = v60;
  *&v65 = v59;
  *(&v65 + 1) = v52;
  v30 = v57;
  *&v66 = v58;
  *(&v66 + 1) = v51;
  *&v67 = v57;
  *(&v67 + 1) = v50;
  *&v68 = v56;
  *(&v68 + 1) = v49;
  *&v69 = v55;
  *(&v69 + 1) = v48;
  *&v70 = v54;
  *(&v70 + 1) = v47;
  *&v71 = v53;
  *(&v71 + 1) = v45;
  *&v72 = v46;
  *(&v72 + 1) = v43;
  *&v73 = v41;
  *(&v73 + 1) = v44;
  *&v74 = v40;
  *(&v74 + 1) = v42;
  v75 = v78;
  sub_2629BDA1C(&v63, v76);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v76[0] = v27;
  v76[1] = v15;
  v76[2] = v28;
  v76[3] = v26;
  v76[4] = v29;
  v76[5] = v52;
  v76[6] = v58;
  v76[7] = v51;
  v76[8] = v30;
  v76[9] = v50;
  v76[10] = v56;
  v76[11] = v49;
  v76[12] = v55;
  v76[13] = v48;
  v76[14] = v54;
  v76[15] = v47;
  v76[16] = v53;
  v76[17] = v45;
  v76[18] = v46;
  v76[19] = v43;
  v76[20] = v41;
  v76[21] = v44;
  v76[22] = v40;
  v76[23] = v42;
  v76[24] = v39;
  result = sub_2629BDA54(v76);
  v32 = v74;
  *(a2 + 160) = v73;
  *(a2 + 176) = v32;
  *(a2 + 192) = v75;
  v33 = v70;
  *(a2 + 96) = v69;
  *(a2 + 112) = v33;
  v34 = v72;
  *(a2 + 128) = v71;
  *(a2 + 144) = v34;
  v35 = v66;
  *(a2 + 32) = v65;
  *(a2 + 48) = v35;
  v36 = v68;
  *(a2 + 64) = v67;
  *(a2 + 80) = v36;
  v37 = v64;
  *a2 = v63;
  *(a2 + 16) = v37;
  return result;
}

unint64_t sub_2629BD8A8()
{
  result = qword_27FF3C410;
  if (!qword_27FF3C410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C410);
  }

  return result;
}

unint64_t sub_2629BD8FC()
{
  result = qword_27FF3C428;
  if (!qword_27FF3C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C428);
  }

  return result;
}

uint64_t sub_2629BD950(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C430, &unk_262A2D3D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629BD9C8()
{
  result = qword_27FF3C440;
  if (!qword_27FF3C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C440);
  }

  return result;
}

uint64_t sub_2629BDA84(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C418, &qword_262A2D3C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629BDAFC()
{
  result = qword_27FF3C460;
  if (!qword_27FF3C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C460);
  }

  return result;
}

unint64_t sub_2629BDB50()
{
  result = qword_27FF3C470;
  if (!qword_27FF3C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C470);
  }

  return result;
}

uint64_t sub_2629BDBA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF3C0C0, &unk_262A2BA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2629BDC24()
{
  result = qword_27FF3C480;
  if (!qword_27FF3C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C480);
  }

  return result;
}

unint64_t sub_2629BDC7C()
{
  result = qword_27FF3C488;
  if (!qword_27FF3C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C488);
  }

  return result;
}

unint64_t sub_2629BDCD4()
{
  result = qword_27FF3C490;
  if (!qword_27FF3C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C490);
  }

  return result;
}

unint64_t sub_2629BDD38(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000017;
    v6 = 0x6E656D7461657274;
    if (a1 == 8)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 == 5)
    {
      v7 = 0x656E65476E616C70;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6546676142736D61;
    v2 = 0xD000000000000020;
    v3 = 0xD00000000000001BLL;
    if (a1 != 3)
    {
      v3 = 0x666E496C65646F6DLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000022;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2629BDEB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2629BDD38(*a1);
  v5 = v4;
  if (v3 == sub_2629BDD38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_262A2A878();
  }

  return v8 & 1;
}

uint64_t sub_2629BDF38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2629BE104();
  *a2 = result;
  return result;
}

unint64_t sub_2629BDF68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2629BDD38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2629BDF98()
{
  result = qword_27FF3C498;
  if (!qword_27FF3C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C498);
  }

  return result;
}

uint64_t sub_2629BDFEC()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BDD38(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629BE050()
{
  sub_2629BDD38(*v0);
  sub_262A2A448();
}

uint64_t sub_2629BE0A4()
{
  v1 = *v0;
  sub_262A2A998();
  sub_2629BDD38(v1);
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629BE104()
{
  v0 = sub_262A2A788();

  if (v0 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2629BE150()
{
  sub_262A2A448();
}

uint64_t sub_2629BE190()
{
  sub_262A2A448();
}

uint64_t sub_2629BE284()
{
  sub_262A2A448();
}

uint64_t SIDMetricCreatePlanScaffold.algorithmScore.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t SIDMetricCreatePlanScaffold.planId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 48);

  return sub_2629BE470(v3, a1);
}

uint64_t type metadata accessor for SIDMetricCreatePlanScaffold()
{
  result = qword_27FF3C4A8;
  if (!qword_27FF3C4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629BE470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SIDMetricCreatePlanScaffold.planId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 48);

  return sub_2629BE524(a1, v3);
}

uint64_t sub_2629BE524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SIDMetricCreatePlanScaffold.cohortId.getter()
{
  v1 = (v0 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t SIDMetricCreatePlanScaffold.cohortId.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for SIDMetricCreatePlanScaffold();
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t SIDMetricCreatePlanScaffold.recoId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 56);

  return sub_2629BE470(v3, a1);
}

uint64_t SIDMetricCreatePlanScaffold.recoId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 56);

  return sub_2629BE524(a1, v3);
}

uint64_t SIDMetricCreatePlanScaffold.scaffold.getter()
{
  v1 = *(v0 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 60));
}

uint64_t SIDMetricCreatePlanScaffold.scaffold.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SIDMetricCreatePlanScaffold() + 60);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SIDMetricCreatePlanScaffold.totalDailyDuration.setter(uint64_t a1)
{
  result = type metadata accessor for SIDMetricCreatePlanScaffold();
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t SIDMetricCreatePlanScaffold.treatments.getter()
{
  v1 = *(v0 + *(type metadata accessor for SIDMetricCreatePlanScaffold() + 68));
}

uint64_t SIDMetricCreatePlanScaffold.treatments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SIDMetricCreatePlanScaffold() + 68);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SIDMetricCreatePlanScaffold.init(algorithmMetadata:algorithmEndTime:algorithmStartTime:modalitySelections:planId:algorithmRandomSeed:scaffold:algorithmScore:totalDailyDuration:variation:weekdays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, uint64_t a13)
{
  v26 = *a12;
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v19 = PlanScaffold[12];
  v20 = sub_262A2A018();
  v21 = *(*(v20 - 8) + 56);
  v21(a9 + v19, 1, 1, v20);
  v22 = PlanScaffold[14];
  v23 = a9 + PlanScaffold[13];
  v21(a9 + v22, 1, 1, v20);
  *a9 = a1;
  *(a9 + 8) = a10;
  *(a9 + 16) = a11;
  *(a9 + 24) = a2;
  sub_2629BEB44(a3, a9 + v19);
  *(a9 + 32) = a4;
  *(a9 + PlanScaffold[15]) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + PlanScaffold[16]) = a8;
  *(a9 + 49) = v26;
  *(a9 + 56) = a13;
  sub_2629ADF2C(a9 + v22, &unk_27FF3CD10, &qword_262A2D5B0);
  v21(a9 + v22, 1, 1, v20);
  result = sub_2629ADF2C(a3, &unk_27FF3CD10, &qword_262A2D5B0);
  *(a9 + PlanScaffold[17]) = MEMORY[0x277D84F90];
  *v23 = 0;
  *(v23 + 8) = 1;
  return result;
}

uint64_t sub_2629BEB44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SIDMetricCreatePlanScaffold.hash(into:)(__int128 *a1)
{
  v3 = sub_262A2A018();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_2629BFD60(a1, *v1);
  v14 = *(v1 + 8);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26672F260](*&v14);
  v15 = *(v1 + 16);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26672F260](*&v15);
  sub_2629B6158(a1, *(v1 + 24));
  MEMORY[0x26672F260](*(v1 + 32));
  if (*(v1 + 48) == 1)
  {
    sub_262A2A9B8();
  }

  else
  {
    v16 = *(v1 + 40);
    sub_262A2A9B8();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x26672F260](v17);
  }

  *(v1 + 49);
  sub_262A2A448();

  sub_2629B602C(a1, *(v1 + 56));
  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  sub_2629BE470(v1 + PlanScaffold[12], v13);
  v19 = *(v4 + 48);
  v20 = v19(v13, 1, v3);
  v31 = v4;
  if (v20 == 1)
  {
    sub_262A2A9B8();
  }

  else
  {
    v21 = *(v4 + 32);
    v30 = v11;
    v22 = v32;
    v21(v32, v13, v3);
    sub_262A2A9B8();
    sub_2629C1E48(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
    sub_262A2A388();
    v23 = v22;
    v11 = v30;
    (*(v4 + 8))(v23, v3);
  }

  v24 = (v1 + PlanScaffold[13]);
  if (*(v24 + 8) == 1)
  {
    sub_262A2A9B8();
  }

  else
  {
    v25 = *v24;
    sub_262A2A9B8();
    MEMORY[0x26672F240](v25);
  }

  sub_2629BE470(v1 + PlanScaffold[14], v11);
  if (v19(v11, 1, v3) == 1)
  {
    sub_262A2A9B8();
  }

  else
  {
    v27 = v31;
    v26 = v32;
    (*(v31 + 32))(v32, v11, v3);
    sub_262A2A9B8();
    sub_2629C1E48(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
    sub_262A2A388();
    (*(v27 + 8))(v26, v3);
  }

  sub_2629BFD60(a1, *(v1 + PlanScaffold[15]));
  MEMORY[0x26672F240](*(v1 + PlanScaffold[16]));
  return sub_2629BF80C(a1, *(v1 + PlanScaffold[17]));
}

uint64_t SIDMetricCreatePlanScaffold.hashValue.getter()
{
  sub_262A2A998();
  SIDMetricCreatePlanScaffold.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629BF064()
{
  sub_262A2A998();
  SIDMetricCreatePlanScaffold.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629BF0A8()
{
  sub_262A2A998();
  SIDMetricCreatePlanScaffold.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629BF0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_262A2A448();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF458(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_262A2A448();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF4C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_262A2A448();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF530(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_262A2A448();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF640(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_262A2A448();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF768(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      sub_262A2A448();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF80C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *v5;
      v5 += 5;

      sub_262A2A448();
      sub_262A2A448();
      MEMORY[0x26672F240](v10);

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_2629BF8B8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SIDWorkoutPlanProgressWorkout();
  v4 = *(v3 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x26672F240](v8);
  if (v8)
  {
    v10 = v3[6];
    v18[1] = v3[5];
    v12 = v3[7];
    v11 = v3[8];
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_2629C1CD8(v13, v7);
      v15 = *v7;
      v16 = v7[1];
      sub_262A2A448();
      sub_262A29FD8();
      sub_2629C1E48(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
      sub_262A2A388();
      v17 = *(v7 + v10);
      if (v17 == 0.0)
      {
        v17 = 0.0;
      }

      MEMORY[0x26672F260](*&v17);
      *(v7 + v12);
      sub_262A2A448();

      MEMORY[0x26672F240](*(v7 + v11));
      result = sub_2629C1D3C(v7);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2629BFB8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26672F240](v3);
  v27 = v3;
  if (v3)
  {
    v5 = 0;
    v26 = a2 + 32;
    do
    {
      v6 = (v26 + 48 * v5);
      v8 = *v6;
      v7 = v6[1];
      v9 = v6[2];
      v10 = v6[3];
      v11 = v6[4];
      v12 = v6[5];

      sub_262A2A448();
      MEMORY[0x26672F240](*(v9 + 16));
      v13 = *(v9 + 16);
      if (v13)
      {
        v14 = (v9 + 32);
        do
        {
          v15 = *v14++;
          MEMORY[0x26672F240](v15);
          --v13;
        }

        while (v13);
      }

      MEMORY[0x26672F240](*(v10 + 16));
      v16 = *(v10 + 16);
      if (v16)
      {
        v17 = (v10 + 40);
        do
        {
          v18 = *(v17 - 1);
          v19 = *v17;

          sub_262A2A448();

          v17 += 2;
          --v16;
        }

        while (v16);
      }

      MEMORY[0x26672F240](*(v11 + 16));
      v20 = *(v11 + 16);
      if (v20)
      {
        v21 = (v11 + 40);
        do
        {
          v22 = *(v21 - 1);
          v23 = *v21;

          sub_262A2A448();

          v21 += 2;
          --v20;
        }

        while (v20);
      }

      MEMORY[0x26672F240](*(v12 + 16));
      v24 = *(v12 + 16);
      if (v24)
      {
        v25 = 32;
        do
        {
          MEMORY[0x26672F240](*(v12 + v25++));
          --v24;
        }

        while (v24);
      }

      ++v5;
    }

    while (v5 != v27);
  }

  return result;
}

uint64_t sub_2629BFD60(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v7)) | (v12 << 6);
      v14 = (*(a2 + 48) + 16 * v13);
      v16 = *v14;
      v15 = v14[1];
      sub_2629C1D98(*(a2 + 56) + 40 * v13, &v22);
      v20 = v22;
      v21 = v23;
      v17 = v24;

      if (!v15)
      {
        break;
      }

      v7 &= v7 - 1;
      v27[0] = v20;
      v27[1] = v21;
      v28 = v17;
      v18 = a1[3];
      v24 = a1[2];
      v25 = v18;
      v26 = *(a1 + 8);
      v19 = a1[1];
      v22 = *a1;
      v23 = v19;
      sub_262A2A448();

      sub_262A2A698();
      sub_2629C1DF4(v27);
      result = sub_262A2A9D8();
      v10 ^= result;
      v11 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_11:

    return MEMORY[0x26672F240](v10);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v12);
      ++v11;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2629BFEE0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v25 = v2;
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a2 + 48) + 32 * v11);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(*(a2 + 56) + 8 * v11);

    if (!v17)
    {
LABEL_15:

      return MEMORY[0x26672F240](v8);
    }

    v28 = v8;
    v18 = *(a1 + 48);
    v29[2] = *(a1 + 32);
    v29[3] = v18;
    v30 = *(a1 + 64);
    v19 = *(a1 + 16);
    v29[0] = *a1;
    v29[1] = v19;
    MEMORY[0x26672F240](v14);
    MEMORY[0x26672F240](v13);
    MEMORY[0x26672F240](v16);
    MEMORY[0x26672F240](v15);
    MEMORY[0x26672F240](*(v17 + 16));
    v20 = *(v17 + 16);
    if (v20)
    {
      v21 = (v17 + 56);
      do
      {
        v22 = *(v21 - 2);
        v23 = *(v21 - 1);
        v24 = *v21;
        MEMORY[0x26672F240](*(v21 - 3));

        sub_2629B5EB8(v29, v22);
        sub_262A2A448();

        v21 += 4;
        --v20;
      }

      while (v20);
    }

    v5 &= v5 - 1;

    result = sub_262A2A9D8();
    v8 = result ^ v28;
    v2 = v25;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629C00C4(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v7)
  {
LABEL_9:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = *(*(a2 + 56) + 8 * v12);
    v7 &= v7 - 1;
    v18 = a1[2];
    v19 = a1[3];
    v20 = *(a1 + 8);
    v16 = *a1;
    v17 = a1[1];
    sub_262A2A448();

    MEMORY[0x26672F240](v14);
    v9 ^= sub_262A2A9D8();
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      JUMPOUT(0x2629C02C8);
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  return MEMORY[0x26672F240](v9);
}

uint64_t sub_2629C0300(__int128 *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v7)
  {
    v19 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = *(*(a2 + 48) + v12);
    v14 = *(*(a2 + 56) + 8 * v12);
    v7 &= v7 - 1;
    v22 = a1[2];
    v23 = a1[3];
    v24 = *(a1 + 8);
    v20 = *a1;
    v21 = a1[1];

    sub_262A2A448();

    MEMORY[0x26672F240](*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = (v14 + 32);
      do
      {
        v17 = *v16++;
        MEMORY[0x26672F240](v17);
        --v15;
      }

      while (v15);
    }

    v9 = sub_262A2A9D8() ^ v19;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      JUMPOUT(0x2629C0554);
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v19 = v9;
      v10 = v11;
      goto LABEL_11;
    }
  }

  return MEMORY[0x26672F240](v9);
}

uint64_t sub_2629C058C(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_10:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a2 + 48) + 32 * v11);
    v14 = *v12;
    v13 = v12[1];
    v16 = v12[2];
    v15 = v12[3];
    v17 = *(*(a2 + 56) + 8 * v11);

    if (!v17)
    {
LABEL_15:

      return MEMORY[0x26672F240](v8);
    }

    v26 = a1[2];
    v27 = a1[3];
    v28 = *(a1 + 8);
    v24 = *a1;
    v25 = a1[1];
    MEMORY[0x26672F240](v14);
    MEMORY[0x26672F240](v13);
    MEMORY[0x26672F240](v16);
    MEMORY[0x26672F240](v15);
    MEMORY[0x26672F240](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        MEMORY[0x26672F240](0);

        sub_262A2A448();

        v19 += 2;
        --v18;
      }

      while (v18);
    }

    v5 &= v5 - 1;

    result = sub_262A2A9D8();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629C074C(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v18 = (v3 + 63) >> 6;

  v6 = 0;
  v7 = 0;
  v15 = v2;
  while (v5)
  {
LABEL_10:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = *(*(a2 + 48) + v9);
    v19 = v6;
    v20 = *(*(a2 + 56) + 8 * v9);
    v5 &= v5 - 1;
    v23 = a1[2];
    v24 = a1[3];
    v25 = *(a1 + 8);
    v21 = *a1;
    v22 = a1[1];

    sub_262A2A448();

    MEMORY[0x26672F240](*(v20 + 16));
    v11 = *(v20 + 16);
    if (v11)
    {
      v12 = (v20 + 32);
      do
      {
        v13 = *v12++;
        sub_262A2A448();

        --v11;
      }

      while (v11);
    }

    v6 = sub_262A2A9D8() ^ v19;
    v2 = v15;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      JUMPOUT(0x2629C0A6CLL);
    }

    if (v8 >= v18)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  return MEMORY[0x26672F240](v6);
}

uint64_t sub_2629C0AA4(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  v33 = v6;
  v34 = v2;
LABEL_6:
  if (v5)
  {
    v38 = v8;
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    v12 = (*(a2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(a2 + 56) + 8 * v11);
    v37 = (v5 - 1) & v5;
    v43 = a1[2];
    v44 = a1[3];
    v45 = *(a1 + 8);
    v41 = *a1;
    v42 = a1[1];

    sub_262A2A448();

    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = v15;

    v21 = 0;
    v22 = 0;
    while (v19)
    {
      v40 = v21;
LABEL_24:
      v24 = __clz(__rbit64(v19)) | (v22 << 6);
      v25 = (*(v39 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v39 + 56) + 24 * v24;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);

      sub_2629C1CA8(v29, v30, v31);
      sub_262A2A448();

      if (v31 > 1)
      {
        if (v31 == 2)
        {
          MEMORY[0x26672F240](2);
          MEMORY[0x26672F240](v29);
        }

        else
        {
          MEMORY[0x26672F240](3);
          sub_262A2A448();
          sub_2629C1CC0(v29, v30, 3);
        }
      }

      else if (v31)
      {
        MEMORY[0x26672F240](1);
        sub_262A2A9B8();
      }

      else
      {
        MEMORY[0x26672F240](0);
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0;
        }

        MEMORY[0x26672F260](v32);
      }

      v19 &= v19 - 1;
      result = sub_262A2A9D8();
      v21 = result ^ v40;
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        MEMORY[0x26672F240](v21);

        result = sub_262A2A9D8();
        v5 = v37;
        v8 = result ^ v38;
        v9 = v10;
        v6 = v33;
        v2 = v34;
        goto LABEL_6;
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        v40 = v21;
        v22 = v23;
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {

        return MEMORY[0x26672F240](v8);
      }

      v5 = *(v2 + 8 * v10);
      ++v9;
      if (v5)
      {
        v38 = v8;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2629C0DC4(__int128 *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v22 = v9;
LABEL_12:
    v12 = __clz(__rbit64(v6)) | (v10 << 6);
    v13 = (*(a2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(a2 + 56) + 24 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v25 = a1[2];
    v26 = a1[3];
    v27 = *(a1 + 8);
    v23 = *a1;
    v24 = a1[1];

    sub_2629C1CA8(v17, v18, v19);
    sub_262A2A448();

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        MEMORY[0x26672F240](2);
        MEMORY[0x26672F240](v17);
      }

      else
      {
        MEMORY[0x26672F240](3);
        sub_262A2A448();
        sub_2629C1CC0(v17, v18, 3);
      }
    }

    else if (v19)
    {
      MEMORY[0x26672F240](1);
      sub_262A2A9B8();
    }

    else
    {
      MEMORY[0x26672F240](0);
      if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v20 = v17;
      }

      else
      {
        v20 = 0;
      }

      MEMORY[0x26672F260](v20);
    }

    v6 &= v6 - 1;
    result = sub_262A2A9D8();
    v9 = result ^ v22;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x26672F240](v9);
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      v22 = v9;
      v10 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s10SIDFitness27SIDMetricCreatePlanScaffoldV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_262A2A018();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C4F0, &unk_262A2D6A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v22 = &v44[-v21];
  if ((sub_2629C93D0(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || (sub_2629D607C(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_33;
  }

  v23 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!*(a2 + 48))
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (*(a1 + 40) != *(a2 + 40))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_33;
    }
  }

  v24 = 0xEA0000000000746ELL;
  v25 = 0x65747369736E6F63;
  if (*(a1 + 49))
  {
    if (*(a1 + 49) == 1)
    {
      v26 = 0xE600000000000000;
      v27 = 0x6D6F74737563;
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x68637465727473;
    }
  }

  else
  {
    v27 = 0x65747369736E6F63;
    v26 = 0xEA0000000000746ELL;
  }

  if (*(a2 + 49))
  {
    if (*(a2 + 49) == 1)
    {
      v24 = 0xE600000000000000;
      v25 = 0x6D6F74737563;
    }

    else
    {
      v24 = 0xE700000000000000;
      v25 = 0x68637465727473;
    }
  }

  v50 = v24;
  if (v27 == v25 && v26 == v24)
  {
  }

  else
  {
    v48 = v26;
    LODWORD(v49) = sub_262A2A878();

    if ((v49 & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  if ((sub_2629D6494(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_33;
  }

  PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
  v28 = *(v16 + 48);
  v49 = PlanScaffold[12];
  v50 = v28;
  sub_2629BE470(a1 + v49, v22);
  sub_2629BE470(a2 + v49, &v50[v22]);
  v48 = *(v5 + 48);
  v49 = v5 + 48;
  if (v48(v22, 1, v4) == 1)
  {
    if (v48(&v50[v22], 1, v4) == 1)
    {
      sub_2629ADF2C(v22, &unk_27FF3CD10, &qword_262A2D5B0);
      goto LABEL_36;
    }

LABEL_31:
    v29 = v22;
LABEL_32:
    sub_2629ADF2C(v29, &qword_27FF3C4F0, &unk_262A2D6A0);
    goto LABEL_33;
  }

  sub_2629BE470(v22, v15);
  if (v48(&v50[v22], 1, v4) == 1)
  {
    (*(v5 + 8))(v15, v4);
    goto LABEL_31;
  }

  (*(v5 + 32))(v8, &v50[v22], v4);
  sub_2629C1E48(&qword_27FF3C4F8, MEMORY[0x277CC95F0]);
  v45 = sub_262A2A3B8();
  v32 = *(v5 + 8);
  v46 = v5 + 8;
  v50 = v32;
  (v32)(v8, v4);
  (v50)(v15, v4);
  sub_2629ADF2C(v22, &unk_27FF3CD10, &qword_262A2D5B0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_36:
  v33 = PlanScaffold[13];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      goto LABEL_33;
    }
  }

  v38 = PlanScaffold[14];
  v39 = *(v16 + 48);
  sub_2629BE470(a1 + v38, v20);
  sub_2629BE470(a2 + v38, &v20[v39]);
  v40 = v48;
  if (v48(v20, 1, v4) != 1)
  {
    sub_2629BE470(v20, v13);
    if (v40(&v20[v39], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v20[v39], v4);
      sub_2629C1E48(&qword_27FF3C4F8, MEMORY[0x277CC95F0]);
      v41 = sub_262A2A3B8();
      v42 = *(v5 + 8);
      v42(v8, v4);
      v42(v13, v4);
      sub_2629ADF2C(v20, &unk_27FF3CD10, &qword_262A2D5B0);
      if ((v41 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_49;
    }

    (*(v5 + 8))(v13, v4);
    goto LABEL_47;
  }

  if (v40(&v20[v39], 1, v4) != 1)
  {
LABEL_47:
    v29 = v20;
    goto LABEL_32;
  }

  sub_2629ADF2C(v20, &unk_27FF3CD10, &qword_262A2D5B0);
LABEL_49:
  v43 = PlanScaffold;
  if ((sub_2629C93D0(*(a1 + PlanScaffold[15]), *(a2 + PlanScaffold[15])) & 1) != 0 && *(a1 + v43[16]) == *(a2 + v43[16]))
  {
    v30 = sub_2629E7738(*(a1 + v43[17]), *(a2 + v43[17]));
    return v30 & 1;
  }

LABEL_33:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_2629C1730(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_2629C1800(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3CD10, &qword_262A2D5B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2629C18B0()
{
  sub_2629C1A98();
  if (v0 <= 0x3F)
  {
    sub_2629C1B4C(319, &qword_27FF3C4C0, sub_2629C1AF8);
    if (v1 <= 0x3F)
    {
      sub_2629C1C58(319, &qword_27FF3C4C8, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_2629C1B4C(319, &qword_27FF3C4D0, sub_2629C1BAC);
        if (v3 <= 0x3F)
        {
          sub_2629C1C00();
          if (v4 <= 0x3F)
          {
            sub_2629C1C58(319, &qword_27FF3C4E0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_2629C1C58(319, &qword_27FF3C378, &type metadata for SIDTreatment, MEMORY[0x277D83940]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_2629C1A98()
{
  if (!qword_27FF3C4B8)
  {
    v0 = sub_262A2A368();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C4B8);
    }
  }
}

unint64_t sub_2629C1AF8()
{
  result = qword_27FF3CEC0;
  if (!qword_27FF3CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CEC0);
  }

  return result;
}

void sub_2629C1B4C(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_262A2A5C8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2629C1BAC()
{
  result = qword_27FF3CED0;
  if (!qword_27FF3CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CED0);
  }

  return result;
}

void sub_2629C1C00()
{
  if (!qword_27FF3C4D8)
  {
    sub_262A2A018();
    v0 = sub_262A2A618();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C4D8);
    }
  }
}

void sub_2629C1C58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2629C1CA8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_2629C1CC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_2629C1CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SIDWorkoutPlanProgressWorkout();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629C1D3C(uint64_t a1)
{
  v2 = type metadata accessor for SIDWorkoutPlanProgressWorkout();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2629C1E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629C1EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
    v11 = *(*(PlanScaffold - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, PlanScaffold);
  }
}

uint64_t sub_2629C1FA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SIDPersonalizedWorkoutPlan();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    PlanScaffold = type metadata accessor for SIDMetricCreatePlanScaffold();
    v13 = *(*(PlanScaffold - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, PlanScaffold);
  }
}

uint64_t type metadata accessor for ConsistentWorkoutPlanResult()
{
  result = qword_27FF3C500;
  if (!qword_27FF3C500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2629C20F0()
{
  result = type metadata accessor for SIDPersonalizedWorkoutPlan();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SIDMetricCreatePlanScaffold();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2629C2188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_262A2A018();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2629C2248(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_262A2A018();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PlanGenerationContext()
{
  result = qword_27FF3C510;
  if (!qword_27FF3C510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629C2338()
{
  sub_262A2A018();
  if (v0 <= 0x3F)
  {
    sub_2629C2458();
    if (v1 <= 0x3F)
    {
      sub_2629C2524();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2629C2458()
{
  if (!qword_27FF3C520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C528, &qword_262A303D0);
    sub_2629C24D0();
    v0 = sub_262A2A368();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C520);
    }
  }
}

unint64_t sub_2629C24D0()
{
  result = qword_27FF3CEF0;
  if (!qword_27FF3CEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3CEF0);
  }

  return result;
}

void sub_2629C2524()
{
  if (!qword_27FF3C530)
  {
    sub_2629C24D0();
    v0 = sub_262A2A368();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C530);
    }
  }
}

uint64_t sub_2629C2588(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  if (*v1 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26672F260](*&v4);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  sub_262A2A448();
  v7 = type metadata accessor for PlanGenerationContext();
  v8 = v7[6];
  sub_262A2A018();
  sub_2629C28E8(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  v9 = *(v2 + v7[7]);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26672F260](*&v9);
  MEMORY[0x26672F240](*(v2 + v7[8]));
  MEMORY[0x26672F240](*(v2 + v7[9]));
  v10 = *(v2 + v7[10]);
  sub_262A2A9B8();
  MEMORY[0x26672F240](*(v2 + v7[11]));
  MEMORY[0x26672F240](*(v2 + v7[12]));
  MEMORY[0x26672F240](*(v2 + v7[13]));
  MEMORY[0x26672F240](*(v2 + v7[14]));
  MEMORY[0x26672F240](*(v2 + v7[15]));
  MEMORY[0x26672F240](*(v2 + v7[16]));
  MEMORY[0x26672F240](*(v2 + v7[17]));
  MEMORY[0x26672F240](*(v2 + v7[18]));
  MEMORY[0x26672F240](*(v2 + v7[19]));
  MEMORY[0x26672F240](*(v2 + v7[20]));
  MEMORY[0x26672F240](*(v2 + v7[21]));
  v11 = *(v2 + v7[22]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26672F260](*&v11);
  sub_2629C0300(a1, *(v2 + v7[23]));
  sub_2629C00C4(a1, *(v2 + v7[24]));
  sub_2629C00C4(a1, *(v2 + v7[25]));
  v12 = *(v2 + v7[26]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26672F260](*&v12);
  v13 = *(v2 + v7[27]);
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26672F260](*&v13);
  v14 = *(v2 + v7[28]);
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26672F260](*&v14);
  MEMORY[0x26672F240](*(v2 + v7[29]));
  v15 = *(v2 + v7[30]);
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26672F260](*&v15);
  v16 = *(v2 + v7[31]);
  if (v16 == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26672F260](*&v16);
  v17 = *(v2 + v7[32]);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x26672F260](*&v17);
  v18 = *(v2 + v7[33]);
  sub_262A2A9B8();
  v19 = *(v2 + v7[34]);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  return MEMORY[0x26672F260](*&v19);
}

uint64_t sub_2629C281C()
{
  sub_262A2A998();
  sub_2629C2588(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629C2860()
{
  sub_262A2A998();
  sub_2629C2588(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629C28E8(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_2629C2930(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (v4 || (sub_262A2A878()) && (v5 = type metadata accessor for PlanGenerationContext(), v6 = v5[6], (sub_262A29FF8()) && *(a1 + v5[7]) == *(a2 + v5[7]) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]) && *(a1 + v5[13]) == *(a2 + v5[13]) && *(a1 + v5[14]) == *(a2 + v5[14]) && *(a1 + v5[15]) == *(a2 + v5[15]) && *(a1 + v5[16]) == *(a2 + v5[16]) && *(a1 + v5[17]) == *(a2 + v5[17]) && *(a1 + v5[18]) == *(a2 + v5[18]) && *(a1 + v5[19]) == *(a2 + v5[19]) && *(a1 + v5[20]) == *(a2 + v5[20]) && *(a1 + v5[21]) == *(a2 + v5[21]) && *(a1 + v5[22]) == *(a2 + v5[22]) && (sub_2629C9854(*(a1 + v5[23]), *(a2 + v5[23])) & 1) != 0 && (sub_2629C99E4(*(a1 + v5[24]), *(a2 + v5[24])) & 1) != 0 && (sub_2629C99E4(*(a1 + v5[25]), *(a2 + v5[25])) & 1) != 0 && *(a1 + v5[26]) == *(a2 + v5[26]) && *(a1 + v5[27]) == *(a2 + v5[27]) && *(a1 + v5[28]) == *(a2 + v5[28]) && *(a1 + v5[29]) == *(a2 + v5[29]) && *(a1 + v5[30]) == *(a2 + v5[30]) && *(a1 + v5[31]) == *(a2 + v5[31]) && *(a1 + v5[32]) == *(a2 + v5[32]) && *(a1 + v5[33]) == *(a2 + v5[33]))
  {
    return *(a1 + v5[34]) == *(a2 + v5[34]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2629C2BF8()
{
  result = qword_27FF3C540;
  if (!qword_27FF3C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C540);
  }

  return result;
}

uint64_t sub_2629C2C4C()
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629C2D58()
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629C2E80()
{
  sub_262A2A998();
  sub_262A2A448();

  return sub_262A2A9D8();
}

uint64_t sub_2629C2F94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_2629C32DC();
  *a2 = result;
  return result;
}

void sub_2629C2FC4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x72656E69617274;
  v5 = 0x6E656D7069757165;
  v6 = 0xE500000000000000;
  v7 = 0x656D656874;
  if (v2 != 4)
  {
    v7 = 0x76654C6C6C696B73;
    v6 = 0xEA00000000006C65;
  }

  if (v2 == 3)
  {
    v8 = 0xE900000000000074;
  }

  else
  {
    v5 = v7;
    v8 = v6;
  }

  v9 = 0xE500000000000000;
  v10 = 0x636973756DLL;
  if (v2 != 1)
  {
    v10 = 0x75636F4679646F62;
    v9 = 0xE900000000000073;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v8;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2629C3090()
{
  *v0;
  *v0;
  *v0;
  sub_262A2A448();
}

uint64_t getEnumTagSinglePayload for RecommendableModalityAttributes(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecommendableModalityAttributes(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2629C32DC()
{
  v0 = sub_262A2A788();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

__n128 SIDActiveWorkoutPlan.init(dateCreated:identifier:items:startDate:state:variation:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __n128 *a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v20 = *a4;
  v12 = a4[1].n128_u64[0];
  v13 = *a6;
  v14 = sub_262A29FD8();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for SIDActiveWorkoutPlan();
  v16 = v15[5];
  v17 = sub_262A2A018();
  (*(*(v17 - 8) + 32))(a7 + v16, a2, v17);
  *(a7 + v15[6]) = a3;
  v18 = (a7 + v15[7]);
  result = v20;
  *v18 = v20;
  v18[1].n128_u64[0] = v12;
  *(a7 + v15[8]) = a5;
  *(a7 + v15[9]) = v13;
  return result;
}

uint64_t type metadata accessor for SIDActiveWorkoutPlan()
{
  result = qword_27FF3C550;
  if (!qword_27FF3C550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SIDActiveWorkoutPlan.hash(into:)(__int128 *a1)
{
  v2 = v1;
  sub_262A29FD8();
  sub_2629C38C8(&qword_27FF3C4E8, MEMORY[0x277CC9578]);
  sub_262A2A388();
  v4 = type metadata accessor for SIDActiveWorkoutPlan();
  v5 = v4[5];
  sub_262A2A018();
  sub_2629C38C8(&qword_27FF3C3D8, MEMORY[0x277CC95F0]);
  sub_262A2A388();
  sub_2629C058C(a1, *(v2 + v4[6]));
  v6 = (v2 + v4[7]);
  v7 = v6[1];
  v8 = v6[2];
  MEMORY[0x26672F240](*v6);
  MEMORY[0x26672F240](v7);
  MEMORY[0x26672F240](v8);
  MEMORY[0x26672F240](*(v2 + v4[8]));
  if (*(v2 + v4[9]))
  {
    *(v2 + v4[9]);
  }

  sub_262A2A448();
}

uint64_t SIDActiveWorkoutPlan.hashValue.getter()
{
  sub_262A2A998();
  SIDActiveWorkoutPlan.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629C3670()
{
  sub_262A2A998();
  SIDActiveWorkoutPlan.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t sub_2629C36B4()
{
  sub_262A2A998();
  SIDActiveWorkoutPlan.hash(into:)(v1);
  return sub_262A2A9D8();
}

uint64_t _s10SIDFitness20SIDActiveWorkoutPlanV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_262A29FB8() & 1) == 0)
  {
    goto LABEL_16;
  }

  v4 = type metadata accessor for SIDActiveWorkoutPlan();
  v5 = v4[5];
  if ((sub_262A29FF8() & 1) == 0 || (sub_2629C9B14(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = *(a1 + v6 + 16);
  v10 = (a2 + v6);
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v7 == v11 && v8 == v12;
  v15 = v14 && v9 == v13;
  if (v15 && *(a1 + v4[8]) == *(a2 + v4[8]))
  {
    v16 = 0xEA0000000000746ELL;
    v17 = 0x65747369736E6F63;
    v18 = v4[9];
    v19 = *(a1 + v18);
    v20 = *(a2 + v18);
    if (v19)
    {
      if (v19 == 1)
      {
        v21 = 0xE600000000000000;
        v22 = 0x6D6F74737563;
      }

      else
      {
        v21 = 0xE700000000000000;
        v22 = 0x68637465727473;
      }
    }

    else
    {
      v22 = 0x65747369736E6F63;
      v21 = 0xEA0000000000746ELL;
    }

    if (v20)
    {
      if (v20 == 1)
      {
        v16 = 0xE600000000000000;
        v17 = 0x6D6F74737563;
      }

      else
      {
        v16 = 0xE700000000000000;
        v17 = 0x68637465727473;
      }
    }

    if (v22 == v17 && v21 == v16)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_262A2A878();
    }
  }

  else
  {
LABEL_16:
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t sub_2629C38C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2629C3924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_262A29FD8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_262A2A018();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2629C3A44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_262A29FD8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_262A2A018();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_2629C3B4C()
{
  sub_262A29FD8();
  if (v0 <= 0x3F)
  {
    sub_262A2A018();
    if (v1 <= 0x3F)
    {
      sub_2629C3C04();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2629C3C04()
{
  if (!qword_27FF3C560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF3C568, &qword_262A2D8B8);
    sub_2629C3C7C();
    v0 = sub_262A2A368();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF3C560);
    }
  }
}

unint64_t sub_2629C3C7C()
{
  result = qword_27FF3C570;
  if (!qword_27FF3C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C570);
  }

  return result;
}

uint64_t SIDContextData.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_262A2A448();
}

uint64_t SIDContextData.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629C3D2C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t sub_2629C3D78()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_262A2A448();
}

uint64_t sub_2629C3D80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_262A2A998();
  sub_262A2A448();
  return sub_262A2A9D8();
}

uint64_t static SIDContextData.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262A2A878();
  }
}

unint64_t sub_2629C3DFC()
{
  result = qword_27FF3C578;
  if (!qword_27FF3C578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF3C578);
  }

  return result;
}

uint64_t sub_2629C3E50(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_262A2A878();
  }
}

uint64_t sub_2629C3E80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2629C3EC8(uint64_t result, int a2, int a3)
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

uint64_t SIDModalityPreference.modalityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall SIDModalityPreference.init(modalityIdentifier:durations:musicGenreIdentifiers:trainerIdentifiers:weekdays:)(SIDFitness::SIDModalityPreference *__return_ptr retstr, Swift::String modalityIdentifier, Swift::OpaquePointer durations, Swift::OpaquePointer musicGenreIdentifiers, Swift::OpaquePointer trainerIdentifiers, Swift::OpaquePointer weekdays)
{
  retstr->modalityIdentifier = modalityIdentifier;
  retstr->durations = durations;
  retstr->musicGenreIdentifiers = musicGenreIdentifiers;
  retstr->trainerIdentifiers = trainerIdentifiers;
  retstr->weekdays = weekdays;
}

unint64_t sub_2629C3F74()
{
  v1 = *v0;
  v2 = 0x6E6F697461727564;
  v3 = 0xD000000000000015;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x737961646B656577;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_2629C4024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2629C4FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2629C4058(uint64_t a1)
{
  v2 = sub_2629C4BB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2629C4094(uint64_t a1)
{
  v2 = sub_2629C4BB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SIDModalityPreference.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_262A2A448();
  MEMORY[0x26672F240](*(v4 + 16));
  v7 = *(v4 + 16);
  if (v7)
  {
    v8 = (v4 + 32);
    do
    {
      v9 = *v8++;
      MEMORY[0x26672F240](v9);
      --v7;
    }

    while (v7);
  }

  MEMORY[0x26672F240](*(v3 + 16));
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = (v3 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;

      sub_262A2A448();

      v11 += 2;
      --v10;
    }

    while (v10);
  }

  MEMORY[0x26672F240](*(v6 + 16));
  v14 = *(v6 + 16);
  if (v14)
  {
    v15 = (v6 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_262A2A448();

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  result = MEMORY[0x26672F240](*(v5 + 16));
  v19 = *(v5 + 16);
  if (v19)
  {
    v20 = (v5 + 32);
    do
    {
      v21 = *v20++;
      result = MEMORY[0x26672F240](v21);
      --v19;
    }

    while (v19);
  }

  return result;
}

uint64_t SIDModalityPreference.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = v0[5];
  sub_262A2A998();
  SIDModalityPreference.hash(into:)();
  return sub_262A2A9D8();
}

uint64_t sub_2629C4254()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = v0[5];
  sub_262A2A998();
  SIDModalityPreference.hash(into:)();
  return sub_262A2A9D8();
}

uint64_t sub_2629C42BC()
{
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 3);
  v5 = v0[5];
  sub_262A2A998();
  SIDModalityPreference.hash(into:)();
  return sub_262A2A9D8();
}

uint64_t SIDModalityPreference.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C580, &qword_262A2D970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629C4BB8();
  sub_262A2AA28();
  LOBYTE(v24) = 0;
  v13 = v22;
  sub_262A2A828();
  if (!v13)
  {
    v15 = v19;
    v14 = v20;
    v16 = v18;
    v24 = v21;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C528, &qword_262A303D0);
    sub_2629C4C60(&qword_27FF3C590);
    sub_262A2A848();
    v24 = v14;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
    sub_2629BDBA4(&qword_27FF3C478);
    sub_262A2A848();
    v24 = v15;
    v23 = 3;
    sub_262A2A848();
    v24 = v16;
    v23 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C598, &qword_262A2D978);
    sub_2629C4CCC(&qword_27FF3C5A0, sub_2629C4C0C);
    sub_262A2A848();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t SIDModalityPreference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C5B0, &qword_262A2D980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2629C4BB8();
  sub_262A2AA08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v24) = 0;
  v11 = sub_262A2A7C8();
  v22 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C528, &qword_262A303D0);
  v23 = 1;
  sub_2629C4C60(&qword_27FF3C5B8);
  sub_262A2A7E8();
  v19 = v11;
  v21 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF3C0C0, &unk_262A2BA70);
  v23 = 2;
  v20 = sub_2629BDBA4(&qword_27FF3C448);
  sub_262A2A7E8();
  v18 = v24;
  v23 = 3;
  sub_262A2A7E8();
  v20 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF3C598, &qword_262A2D978);
  v23 = 4;
  sub_2629C4CCC(&qword_27FF3C5C0, sub_2629C4D44);
  sub_262A2A7E8();
  (*(v6 + 8))(v9, v5);
  v14 = v24;
  v15 = v18;
  v17 = v21;
  v16 = v22;
  *a2 = v19;
  a2[1] = v16;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v20;
  a2[5] = v14;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}