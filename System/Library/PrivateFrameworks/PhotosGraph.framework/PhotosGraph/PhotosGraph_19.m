uint64_t FlexMLAnalysis.hashValue.getter()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 10);
  v3 = *(v0 + 44);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v11 = v3;
  v10 = v2;
  sub_22F742170();
  FlexMLAnalysis.hash(into:)(v6);
  return sub_22F7421D0();
}

uint64_t FlexMLAnalysis.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B60, &qword_22F77F6A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F259AB4();
  sub_22F742200();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B50, &qword_22F77F690);
  v25 = 0;
  sub_22F259CD0(&qword_2810A9360, sub_22F259D48);
  sub_22F741EA0();
  v11 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2B58, &qword_22F77F698);
  v25 = 1;
  sub_22F259B5C(&qword_2810A9370, sub_22F259D9C);
  sub_22F741EA0();
  v22 = v23;
  v25 = 2;
  sub_22F259DF0();
  sub_22F741EA0();
  v20 = v23;
  v21 = v24;
  v25 = 3;
  sub_22F259E44();
  sub_22F741EA0();
  (*(v6 + 8))(v9, v5);
  v13 = v22;
  v12 = v23;
  v14 = v24;
  v15 = BYTE4(v24);
  *a2 = v11;
  *(a2 + 8) = v13;
  v17 = v20;
  v16 = v21;
  *(a2 + 16) = v20;
  *(a2 + 24) = v16;
  *(a2 + 32) = v12;
  *(a2 + 44) = v15;
  *(a2 + 40) = v14;

  sub_22F13BB74(v17);

  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_22F18B0F4(v17);
}

uint64_t sub_22F259160()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 10);
  v3 = *(v0 + 44);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v11 = v3;
  v10 = v2;
  sub_22F742170();
  FlexMLAnalysis.hash(into:)(v6);
  return sub_22F7421D0();
}

uint64_t sub_22F2591C8()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 10);
  v3 = *(v0 + 44);
  v4 = v0[1];
  v7 = *v0;
  v8 = v4;
  v9 = v1;
  v11 = v3;
  v10 = v2;
  sub_22F742170();
  FlexMLAnalysis.hash(into:)(v6);
  return sub_22F7421D0();
}

uint64_t sub_22F25925C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x231901D30](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      result = sub_22F7421B0();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_22F2592C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x231901D30](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = *v7;
      v9 = *(v7 + 2);
      v10 = v7[2];
      MEMORY[0x231901D30](*(*v7 + 16));
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = (v8 + 32);
        do
        {
          v13 = *v12++;
          sub_22F7421B0();
          --v11;
        }

        while (v11);
      }

      sub_22F7421B0();
      result = MEMORY[0x231901D30](*(v10 + 16));
      v14 = *(v10 + 16);
      if (v14)
      {
        v15 = (v10 + 32);
        do
        {
          v16 = *v15++;
          result = sub_22F7421B0();
          --v14;
        }

        while (v14);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_22F2593BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x231901D30](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = (v6 + 24 * v5);
      v8 = *v7;
      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v11 = v7[2];
      MEMORY[0x231901D30](*(*v7 + 16));
      v12 = *(v8 + 16);
      if (v12)
      {
        v13 = (v8 + 32);
        do
        {
          v14 = *v13++;
          sub_22F7421B0();
          --v12;
        }

        while (v12);
      }

      sub_22F7421B0();
      sub_22F7421B0();
      result = MEMORY[0x231901D30](*(v11 + 16));
      v15 = *(v11 + 16);
      if (v15)
      {
        v16 = (v11 + 32);
        do
        {
          v17 = *v16++;
          result = sub_22F7421B0();
          --v15;
        }

        while (v15);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

void sub_22F2594CC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_22F741A00();
    MEMORY[0x231901D30](v8);
    v3 = sub_22F741A00();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x231901D30](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x2319016F0](i, a2);
      sub_22F741820();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_22F741820();

      --v3;
    }

    while (v3);
  }
}

uint64_t _s11PhotosGraph14FlexMLAnalysisV9ExitPointV2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = a1[2];
  v5 = a1[3];
  result = *(a1 + 2);
  v9 = a2[2];
  v8 = a2[3];
  if (v4)
  {
    v10 = v2 == v3;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a2 + 2);
  if (v10)
  {
LABEL_10:
    if (v6 == v9 && v5 == v8)
    {
      return sub_22F17AA10(result, v11);
    }

    return 0;
  }

  v12 = (v2 + 32);
  v13 = (v3 + 32);
  while (v4)
  {
    if (*v12 != *v13)
    {
      return 0;
    }

    ++v12;
    ++v13;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F25963C()
{
  result = qword_2810ABBB8;
  if (!qword_2810ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBB8);
  }

  return result;
}

uint64_t sub_22F259690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F2596FC()
{
  result = qword_2810ABC30;
  if (!qword_2810ABC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC30);
  }

  return result;
}

unint64_t sub_22F259750()
{
  result = qword_2810ABC08;
  if (!qword_2810ABC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC08);
  }

  return result;
}

unint64_t sub_22F2597A4()
{
  result = qword_2810ABBE0;
  if (!qword_2810ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBE0);
  }

  return result;
}

BOOL _s11PhotosGraph14FlexMLAnalysisV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 44);
  v10 = *(a1 + 40);
  v11 = *a2;
  v13 = *(a2 + 8);
  v12 = *(a2 + 16);
  v15 = *(a2 + 24);
  v14 = *(a2 + 32);
  v19 = *(a2 + 40);
  v20 = *(a2 + 44);
  if (v4)
  {
    if (!v11 || (sub_22F17B1E8(v4, v11) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v13)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v13 || (sub_22F17B314(v6, v13) & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (!v5)
  {
    sub_22F13BB74(0);
    if (!v12)
    {
      sub_22F13BB74(0);
      sub_22F18B0F4(0);
      goto LABEL_22;
    }

    sub_22F13BB74(v12);
    goto LABEL_19;
  }

  if (!v12)
  {
    sub_22F13BB74(v5);
    sub_22F13BB74(0);
    sub_22F13BB74(v5);

LABEL_19:
    sub_22F18B0F4(v5);
    sub_22F18B0F4(v12);
    return 0;
  }

  if ((sub_22F17AA10(v5, v12) & 1) == 0)
  {
    sub_22F13BB74(v5);
    sub_22F13BB74(v12);
    sub_22F13BB74(v5);
    sub_22F18B0F4(v12);

    sub_22F18B0F4(v5);
    return 0;
  }

  v16 = sub_22F17AA10(v7, v15);
  sub_22F13BB74(v5);
  sub_22F13BB74(v12);
  sub_22F13BB74(v5);
  sub_22F18B0F4(v12);

  sub_22F18B0F4(v5);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  if (v8)
  {
    v24 = v8;
    v25 = v10;
    v26 = (v10 | (v9 << 32)) >> 32;
    if (v14)
    {
      v21 = v14;
      v22 = v19;
      v23 = ((v19 | (v20 << 32)) >> 32) & 1;
      v17 = _s11PhotosGraph14FlexMLAnalysisV11VisualTempoV2eeoiySbAE_AEtFZ_0(&v24, &v21);
      swift_bridgeObjectRetain_n();

      return (v17 & 1) != 0;
    }

    goto LABEL_27;
  }

  if (v14)
  {
LABEL_27:

    return 0;
  }

  return 1;
}

unint64_t sub_22F259AB4()
{
  result = qword_2810ABC48[0];
  if (!qword_2810ABC48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ABC48);
  }

  return result;
}

unint64_t sub_22F259B08()
{
  result = qword_2810ABBA0;
  if (!qword_2810ABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBA0);
  }

  return result;
}

uint64_t sub_22F259B5C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2B58, &qword_22F77F698);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F259BD4()
{
  result = qword_2810ABC18;
  if (!qword_2810ABC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC18);
  }

  return result;
}

unint64_t sub_22F259C28()
{
  result = qword_2810ABBF0;
  if (!qword_2810ABBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBF0);
  }

  return result;
}

unint64_t sub_22F259C7C()
{
  result = qword_2810ABBC8;
  if (!qword_2810ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBC8);
  }

  return result;
}

uint64_t sub_22F259CD0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2B50, &qword_22F77F690);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F259D48()
{
  result = qword_2810ABB98;
  if (!qword_2810ABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABB98);
  }

  return result;
}

unint64_t sub_22F259D9C()
{
  result = qword_2810ABC10;
  if (!qword_2810ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC10);
  }

  return result;
}

unint64_t sub_22F259DF0()
{
  result = qword_2810ABBE8;
  if (!qword_2810ABBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBE8);
  }

  return result;
}

unint64_t sub_22F259E44()
{
  result = qword_2810ABBC0;
  if (!qword_2810ABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBC0);
  }

  return result;
}

unint64_t sub_22F259E9C()
{
  result = qword_27DAB2B68;
  if (!qword_27DAB2B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B68);
  }

  return result;
}

unint64_t sub_22F259EF4()
{
  result = qword_27DAB2B70;
  if (!qword_27DAB2B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B70);
  }

  return result;
}

unint64_t sub_22F259F4C()
{
  result = qword_27DAB2B78;
  if (!qword_27DAB2B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B78);
  }

  return result;
}

unint64_t sub_22F259FA4()
{
  result = qword_27DAB2B80;
  if (!qword_27DAB2B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B80);
  }

  return result;
}

unint64_t sub_22F259FFC()
{
  result = qword_27DAB2B88;
  if (!qword_27DAB2B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14FlexMLAnalysisV11VideoEventsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22F25A07C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 45))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22F25A0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_22F25A1E0()
{
  result = qword_27DAB2B90;
  if (!qword_27DAB2B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B90);
  }

  return result;
}

unint64_t sub_22F25A238()
{
  result = qword_27DAB2B98;
  if (!qword_27DAB2B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2B98);
  }

  return result;
}

unint64_t sub_22F25A290()
{
  result = qword_27DAB2BA0;
  if (!qword_27DAB2BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BA0);
  }

  return result;
}

unint64_t sub_22F25A2E8()
{
  result = qword_27DAB2BA8;
  if (!qword_27DAB2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BA8);
  }

  return result;
}

unint64_t sub_22F25A340()
{
  result = qword_27DAB2BB0;
  if (!qword_27DAB2BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BB0);
  }

  return result;
}

unint64_t sub_22F25A398()
{
  result = qword_2810ABC38;
  if (!qword_2810ABC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC38);
  }

  return result;
}

unint64_t sub_22F25A3F0()
{
  result = qword_2810ABC40;
  if (!qword_2810ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC40);
  }

  return result;
}

unint64_t sub_22F25A448()
{
  result = qword_2810ABBD0;
  if (!qword_2810ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBD0);
  }

  return result;
}

unint64_t sub_22F25A4A0()
{
  result = qword_2810ABBD8;
  if (!qword_2810ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBD8);
  }

  return result;
}

unint64_t sub_22F25A4F8()
{
  result = qword_2810ABBF8;
  if (!qword_2810ABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBF8);
  }

  return result;
}

unint64_t sub_22F25A550()
{
  result = qword_2810ABC00;
  if (!qword_2810ABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC00);
  }

  return result;
}

unint64_t sub_22F25A5A8()
{
  result = qword_2810ABC20;
  if (!qword_2810ABC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC20);
  }

  return result;
}

unint64_t sub_22F25A600()
{
  result = qword_2810ABC28;
  if (!qword_2810ABC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABC28);
  }

  return result;
}

unint64_t sub_22F25A658()
{
  result = qword_2810ABBA8;
  if (!qword_2810ABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBA8);
  }

  return result;
}

unint64_t sub_22F25A6B0()
{
  result = qword_2810ABBB0;
  if (!qword_2810ABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABBB0);
  }

  return result;
}

uint64_t sub_22F25A704(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756C61566E696167 && a2 == 0xE900000000000065;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C426F5465646166 && a2 == 0xEB000000006B6361 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65536E49656D6974 && a2 == 0xED000073646E6F63 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F7900B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F25A884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696F5074697865 && a2 == 0xEA00000000007374;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696F507972746E65 && a2 == 0xEB0000000073746ELL || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576456F65646976 && a2 == 0xEB0000000073746ELL || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65546C6175736976 && a2 == 0xEB000000006F706DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_22F742040();

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

uint64_t sub_22F25AA34(uint64_t *a1, void *a2)
{
  v2 = a2[6];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = a2[6];
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[13];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[20];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[20];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[27];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[34];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[34];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[41];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[48];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

uint64_t sub_22F25ABB0(uint64_t *a1, void *a2)
{
  v2 = a2[3];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = a2[3];
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[10];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[17];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[17];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[24];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[31];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[31];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[38];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[45];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

uint64_t sub_22F25AD2C(uint64_t *a1, void *a2)
{
  v2 = *a2;
  if (!*(*a2 + 16))
  {
    return 0;
  }

  v5 = *a2;
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[7];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[14];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[14];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[21];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[28];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[28];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[35];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[42];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

uint64_t sub_22F25AEA8(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = a2[1];
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[8];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[15];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[15];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[22];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[29];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[29];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[36];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[43];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

uint64_t sub_22F25B024(uint64_t *a1, void *a2)
{
  v2 = a2[2];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = a2[2];
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[9];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[16];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[16];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[23];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[30];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[30];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[37];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[44];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

uint64_t sub_22F25B1A0(uint64_t *a1, void *a2)
{
  v2 = a2[5];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = a2[5];
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[12];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[19];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[19];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[26];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[33];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[33];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[40];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[47];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

uint64_t sub_22F25B31C(uint64_t *a1, void *a2)
{
  v2 = a2[4];
  if (!*(v2 + 16))
  {
    return 0;
  }

  v5 = a2[4];
  v6 = sub_22F122A14(a1);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = a2[11];
  if (!*(v8 + 16))
  {
    return 0;
  }

  v9 = *(*(v2 + 56) + 4 * v6);
  v10 = sub_22F122A14(a1);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = a2[18];
  if (!*(v12 + 16))
  {
    return 0;
  }

  v13 = *(*(v8 + 56) + 4 * v10);
  v14 = a2[18];
  v15 = sub_22F122A14(a1);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = a2[25];
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = *(*(v12 + 56) + 4 * v15);
  v19 = sub_22F122A14(a1);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

  v21 = a2[32];
  if (!*(v21 + 16))
  {
    return 0;
  }

  v22 = *(*(v17 + 56) + 4 * v19);
  v23 = a2[32];
  v24 = sub_22F122A14(a1);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

  v26 = a2[39];
  if (!*(v26 + 16))
  {
    return 0;
  }

  v27 = *(*(v21 + 56) + 4 * v24);
  v28 = sub_22F122A14(a1);
  if ((v29 & 1) == 0)
  {
    return 0;
  }

  v30 = a2[46];
  if (!*(v30 + 16))
  {
    return 0;
  }

  v31 = *(*(v26 + 56) + 4 * v28);
  v32 = sub_22F122A14(a1);
  if ((v33 & 1) == 0)
  {
    return 0;
  }

  v34 = *(*(v30 + 56) + 4 * v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  result = swift_allocObject();
  *(result + 16) = xmmword_22F779720;
  *(result + 32) = v9;
  *(result + 36) = v13;
  *(result + 40) = v18;
  *(result + 44) = v22;
  *(result + 48) = v27;
  *(result + 52) = v31;
  *(result + 56) = v34;
  return result;
}

void sub_22F25B498(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      sub_22F25B9B0(v10, v6, v4, a2);
      MEMORY[0x2319033A0](v10, -1, -1);
      goto LABEL_4;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v11 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_22F25B604(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

LABEL_4:
  v9 = *MEMORY[0x277D85DE8];
}

void sub_22F25B604(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v49 = a4;
  v40 = a2;
  v42 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v5 = *(*(v48 - 8) + 64);
  MEMORY[0x28223BE20](v48);
  v7 = (&v39 - v6);
  v8 = type metadata accessor for Song();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v43 = 0;
  v15 = 0;
  v51 = a3;
  v16 = *(a3 + 64);
  v41 = a3 + 64;
  v17 = 1 << *(a3 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v45 = &v39 - v13;
  v46 = v7;
  v44 = v20;
  while (v19)
  {
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_14:
    v24 = v21 | (v15 << 6);
    v25 = v51;
    v26 = *(v51 + 48);
    v53 = *(v47 + 72);
    sub_22F15CAA0(v26 + v53 * v24, v14);
    v27 = *(*(v25 + 56) + 4 * v24);
    sub_22F15CAA0(v14, v7);
    *(v7 + *(v48 + 48)) = v27;
    v28 = *v49;
    if (!*(*v49 + 16))
    {
      goto LABEL_24;
    }

    v50 = v24;
    v52 = v19;
    v29 = *(v28 + 40);
    sub_22F742170();
    v31 = *v7;
    v30 = v7[1];

    sub_22F740D60();
    v32 = sub_22F7421D0();
    v33 = -1 << *(v28 + 32);
    v34 = v32 & ~v33;
    if ((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
    {
      v35 = ~v33;
      while (1)
      {
        sub_22F15CAA0(*(v28 + 48) + v34 * v53, v11);
        if (*v11 == v31 && v11[1] == v30)
        {
          break;
        }

        v37 = sub_22F742040();
        sub_22F15CBD8(v11);
        if (v37)
        {
          goto LABEL_6;
        }

        v34 = (v34 + 1) & v35;
        if (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_22F15CBD8(v11);
LABEL_6:

      v7 = v46;
      sub_22F25DFB0(v46);
      v14 = v45;
      sub_22F15CBD8(v45);
      v20 = v44;
      v19 = v52;
    }

    else
    {
LABEL_23:

      v14 = v45;
      v7 = v46;
      v20 = v44;
      v19 = v52;
      v24 = v50;
LABEL_24:
      sub_22F25DFB0(v7);
      sub_22F15CBD8(v14);
      *(v42 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v43++, 1))
      {
        __break(1u);
LABEL_27:
        sub_22F1B1778(v42, v40, v43, v51);
        return;
      }
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      goto LABEL_27;
    }

    v23 = *(v41 + 8 * v15);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v19 = (v23 - 1) & v23;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void *sub_22F25B9B0(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F25B604(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22F25BA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 124);
  v6 = *(a2 + 132);
  v7 = *(a2 + 140);
  v8 = *(a2 + 148);
  v9 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  v10 = *(a3 + v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  v11 = swift_allocObject();
  v12 = v11;
  *(v11 + 16) = xmmword_22F779720;
  if (v10 == 1)
  {
    v13 = a3 + OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly;
    *(v11 + 32) = *(a3 + OBJC_IVAR___PGMusicCuratorContext_musicForTopicUseTopicOnly + 4);
    *(v11 + 48) = *(v13 + 20);
    *(v11 + 56) = *(v13 + 28);
  }

  else
  {
    *(v11 + 32) = v5;
    *(v11 + 40) = v6;
    *(v11 + 48) = v7;
    *(v11 + 56) = v8;
  }

  v14 = sub_22F256224();
  sub_22F25DE90(a1, &v17);
  v15 = sub_22F25BB90(v14, v12, a1, sub_22F25ABB0);
  sub_22F25DEEC(a1);

  return v15;
}

uint64_t sub_22F25BB90(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v55 = a4;
  v56 = a3;
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v52 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v51 = v45 - v9;
  v47 = type metadata accessor for Song();
  v10 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v53 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = v45 - v13;
  MEMORY[0x28223BE20](v15);
  v18 = v45 - v17;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v48 = (v5 + 8);
  v23 = v16;

  v24 = 0;
  v54 = MEMORY[0x277D84F98];
  while (1)
  {
    v25 = v24;
    if (!v21)
    {
      break;
    }

LABEL_8:
    v26 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v27 = *(v23 + 72);
    sub_22F15CAA0(*(a1 + 48) + v27 * (v26 | (v24 << 6)), v18);
    sub_22F15CB04(v18, v14);
    v28 = v55(v14, v56);
    if (!v28)
    {
      goto LABEL_9;
    }

    v45[0] = v23;
    v46 = v28;
    sub_22F15CAA0(v14, v53);
    v57 = v49;

    v45[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB19F8, &qword_22F7731F0);
    v45[1] = sub_22F25E018();
    sub_22F73FD30();
    v57 = v46;
    sub_22F73FD30();
    sub_22F73FD20();
    v30 = v29;
    v46 = *v48;
    (v46)(v52, v50);
    (v46)(v51, v50);
    v31 = v54;
    LODWORD(v46) = swift_isUniquelyReferenced_nonNull_native();
    v57 = v31;
    v33 = sub_22F122A14(v53);
    v34 = v31[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_22;
    }

    if (v31[3] >= v36)
    {
      v23 = v45[0];
      if ((v46 & 1) == 0)
      {
        v46 = v33;
        LODWORD(v54) = v32;
        sub_22F134678();
        LOBYTE(v32) = v54;
        v33 = v46;
        v23 = v45[0];
      }
    }

    else
    {
      LODWORD(v54) = v32;
      sub_22F125F5C(v36, v46);
      v37 = sub_22F122A14(v53);
      v38 = v32 & 1;
      LOBYTE(v32) = v54;
      if ((v54 & 1) != v38)
      {
        goto LABEL_24;
      }

      v33 = v37;
      v23 = v45[0];
    }

    v54 = v57;
    if (v32)
    {
      *(v57[7] + 4 * v33) = v30;
      sub_22F15CBD8(v53);
LABEL_9:
      sub_22F15CBD8(v14);
    }

    else
    {
      v46 = v33;
      v57[(v33 >> 6) + 8] |= 1 << v33;
      v39 = v54[6] + v33 * v27;
      v40 = v53;
      sub_22F15CAA0(v53, v39);
      *(v54[7] + 4 * v46) = v30;
      sub_22F15CBD8(v40);
      sub_22F15CBD8(v14);
      v41 = v54[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_23;
      }

      v54[2] = v43;
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return v54;
    }

    v21 = *(a1 + 56 + 8 * v24);
    ++v25;
    if (v21)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_22F25DEEC(v56);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F25C054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v334 = a3;
  v326 = a4;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  v7 = *(*(v339 - 8) + 64);
  MEMORY[0x28223BE20](v339);
  v338 = &v324 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v337 = &v324 - v10;
  MEMORY[0x28223BE20](v11);
  v336 = &v324 - v12;
  v13 = type metadata accessor for Song();
  v335 = *(v13 - 8);
  v14 = *(v335 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v327 = &v324 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v328 = &v324 - v17;
  MEMORY[0x28223BE20](v18);
  v329 = &v324 - v19;
  MEMORY[0x28223BE20](v20);
  v330 = &v324 - v21;
  MEMORY[0x28223BE20](v22);
  v331 = &v324 - v23;
  MEMORY[0x28223BE20](v24);
  v332 = &v324 - v25;
  MEMORY[0x28223BE20](v26);
  v333 = &v324 - v27;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v28 = qword_2810B4E90;
  *&v29 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - Slicing", 24, 2u, v29, 0, v28, &v418);
  v30 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 48);
  v428 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 32);
  v429 = v30;
  v430[0] = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 64);
  *(v430 + 12) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 76);
  v31 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 16);
  v426 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration);
  v427 = v31;
  v32 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 92);
  v33 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 96);
  v34 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 100);
  v35 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 104);
  v36 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 108);
  v37 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 112);
  v38 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 116);
  v39 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 136);
  v422 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 120);
  v423 = v39;
  v424 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 152);
  *(&v40 + 1) = *(&v424 + 1);
  v425 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 168);
  v41 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 176);
  LODWORD(v431) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 172);
  LODWORD(v368) = v41;
  v42 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 184);
  LODWORD(v367) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 180);
  LODWORD(v366) = v42;
  v43 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 192);
  LODWORD(v365) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 188);
  LODWORD(v364) = v43;
  *&v40 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 196);
  v369 = v40;
  LODWORD(v39) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 204);
  v347 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 208);
  v348 = v39;
  LODWORD(v39) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 212);
  v345 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 216);
  v346 = v39;
  LODWORD(v39) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 220);
  v343 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 224);
  v344 = v39;
  *&v40 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 228);
  v363 = v40;
  v44 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 252);
  v361 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 236);
  v362 = v44;
  v45 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 268);
  LODWORD(v360) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 272);
  LODWORD(v359) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 276);
  LODWORD(v358) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 280);
  LODWORD(v357) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 284);
  LODWORD(v44) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 288);
  v355 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 292);
  LODWORD(v356) = v44;
  v46 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 344);
  v419 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 328);
  v420 = v46;
  v47 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 296);
  v341 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 300);
  v342 = v45;
  v421 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 360);
  LODWORD(v46) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 304);
  v349 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 308);
  v350 = v46;
  LODWORD(v46) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 312);
  v351 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 316);
  v352 = v46;
  LODWORD(v46) = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 320);
  v353 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_configuration + 324);
  v354 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  v48 = swift_allocObject();
  v340 = xmmword_22F779720;
  *(v48 + 16) = xmmword_22F779720;
  *(v48 + 32) = v32;
  *(v48 + 36) = v33;
  *(v48 + 40) = v34;
  *(v48 + 44) = v35;
  *(v48 + 48) = v36;
  *(v48 + 52) = v37;
  *(v48 + 56) = v38;
  v49 = sub_22F256224();
  sub_22F25DE90(a1, v371);
  v50 = sub_22F25BB90(v49, v48, a1, sub_22F25AA34);
  if (v4)
  {
    sub_22F25DEEC(a1);
  }

  v325 = v50;
  sub_22F25DEEC(a1);

  v371[2] = v428;
  v371[3] = v429;
  *v372 = v430[0];
  *&v372[12] = *(v430 + 12);
  v371[0] = v426;
  v371[1] = v427;
  v373 = v32;
  v374 = v33;
  v375 = v34;
  v376 = v35;
  v377 = v36;
  v378 = v37;
  v379 = v38;
  v380 = v422;
  v381 = v423;
  v382 = v424;
  v407 = v47;
  v415 = v419;
  v416 = v420;
  v383 = v425;
  v384 = v431;
  v385 = v368;
  v386 = v367;
  v387 = v366;
  v388 = v365;
  v389 = v364;
  v390 = v369;
  v51 = v347;
  v52 = v348;
  v391 = v348;
  v392 = v347;
  v53 = v345;
  v54 = v346;
  v393 = v346;
  v394 = v345;
  v55 = v343;
  v56 = v344;
  v395 = v344;
  v396 = v343;
  v397 = v363;
  v398 = v361;
  v399 = v362;
  v57 = v341;
  v58 = v342;
  v400 = v342;
  v401 = v360;
  v402 = v359;
  v403 = v358;
  v404 = v357;
  v405 = v356;
  v406 = v355;
  v408 = v341;
  v409 = v350;
  v410 = v349;
  v411 = v352;
  v412 = v351;
  v413 = v354;
  v414 = v353;
  v417 = v421;
  v59 = sub_22F25BA38(a1, v371, a2);
  v60 = swift_allocObject();
  *(v60 + 16) = v340;
  v61 = v368;
  *(v60 + 32) = v431;
  *(v60 + 36) = v61;
  v62 = v366;
  *(v60 + 40) = v367;
  *(v60 + 44) = v62;
  v63 = v364;
  *(v60 + 48) = v365;
  *(v60 + 52) = v63;
  *(v60 + 56) = v369;
  v64 = sub_22F256224();
  sub_22F25DE90(a1, v371);
  v65 = sub_22F25BB90(v64, v60, a1, sub_22F25AD2C);
  sub_22F25DEEC(a1);

  v66 = swift_allocObject();
  *(v66 + 16) = v340;
  *(v66 + 32) = v52;
  *(v66 + 36) = v51;
  *(v66 + 40) = v54;
  *(v66 + 44) = v53;
  *(v66 + 48) = v56;
  *(v66 + 52) = v55;
  *(v66 + 56) = v363;
  v67 = sub_22F256224();
  sub_22F25DE90(a1, v371);
  *&v369 = sub_22F25BB90(v67, v66, a1, sub_22F25AEA8);
  sub_22F25DEEC(a1);

  v69 = swift_allocObject();
  v71 = v361;
  v70 = v362;
  *(v69 + 16) = v340;
  *(v69 + 32) = v71;
  *(v69 + 48) = v70;
  *(v69 + 56) = DWORD2(v70);
  v72 = sub_22F256224();
  sub_22F25DE90(a1, v371);
  v368 = sub_22F25BB90(v72, v69, a1, sub_22F25B024);
  sub_22F25DEEC(a1);

  v73 = swift_allocObject();
  *(v73 + 16) = v340;
  v74 = v360;
  *(v73 + 32) = v58;
  *(v73 + 36) = v74;
  v75 = v358;
  *(v73 + 40) = v359;
  *(v73 + 44) = v75;
  v76 = v355;
  v77 = v356;
  *(v73 + 48) = v357;
  *(v73 + 52) = v77;
  *(v73 + 56) = v76;
  v78 = sub_22F256224();
  sub_22F25DE90(a1, v371);
  v79 = sub_22F25BB90(v78, v73, a1, sub_22F25B1A0);
  *&v363 = v65;
  v80 = v79;
  sub_22F25DEEC(a1);

  v81 = swift_allocObject();
  *(v81 + 16) = v340;
  v83 = v349;
  v82 = v350;
  *(v81 + 32) = v57;
  *(v81 + 36) = v82;
  v85 = v351;
  v84 = v352;
  *(v81 + 40) = v83;
  *(v81 + 44) = v84;
  v86 = v353;
  v87 = v354;
  *(v81 + 48) = v85;
  *(v81 + 52) = v87;
  *(v81 + 56) = v86;
  v88 = sub_22F256224();
  sub_22F25DE90(a1, v371);
  v89 = sub_22F25BB90(v88, v81, a1, sub_22F25B31C);
  v358 = v80;
  v90 = v89;
  sub_22F25DEEC(a1);

  sub_22F741690();
  v357 = v90;
  *&v371[0] = MEMORY[0x277D84FA0];
  sub_22F25B498(v325, v371);
  v92 = v91;
  v93 = 0;

  *&v361 = v92;
  v94 = *(v92 + 16);
  v95 = MEMORY[0x277D84F90];
  v96 = v363;
  if (v94)
  {
    v359 = 0;
    v370 = MEMORY[0x277D84F90];
    sub_22F146514(0, v94, 0);
    v431 = v370;
    v97 = -1 << *(v361 + 32);
    v367 = v361 + 64;
    result = sub_22F741980();
    v98 = result;
    v99 = v361;
    v100 = 0;
    v360 = v361 + 72;
    v101 = v335;
    v324 = v59;
    *&v362 = v94;
    while ((v98 & 0x8000000000000000) == 0 && v98 < 1 << *(v99 + 32))
    {
      v364 = v100;
      v104 = v98 >> 6;
      if ((*(v367 + 8 * (v98 >> 6)) & (1 << v98)) == 0)
      {
        goto LABEL_149;
      }

      v365 = *(v99 + 36);
      v105 = *(v99 + 48);
      v106 = v99;
      v366 = *(v101 + 72);
      v107 = v336;
      sub_22F15CAA0(v105 + v366 * v98, v336);
      v108 = *(*(v106 + 56) + 4 * v98);
      v109 = v107;
      v110 = v337;
      sub_22F15CB04(v109, v337);
      *(v110 + *(v339 + 48)) = v108;
      v111 = v110;
      v112 = v338;
      sub_22F25DF40(v111, v338);
      v113 = v112;
      v114 = v333;
      sub_22F15CB04(v113, v333);
      v115 = v431;
      v370 = v431;
      v117 = *(v431 + 16);
      v116 = *(v431 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_22F146514(v116 > 1, v117 + 1, 1);
        v114 = v333;
        v115 = v370;
      }

      *(v115 + 16) = v117 + 1;
      v118 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v431 = v115;
      result = sub_22F15CB04(v114, v115 + v118 + v117 * v366);
      v102 = 1 << *(v106 + 32);
      if (v98 >= v102)
      {
        goto LABEL_150;
      }

      v119 = *(v367 + 8 * v104);
      if ((v119 & (1 << v98)) == 0)
      {
        goto LABEL_151;
      }

      v99 = v106;
      v96 = v363;
      v120 = v362;
      if (v365 != *(v106 + 36))
      {
        goto LABEL_152;
      }

      v121 = v119 & (-2 << (v98 & 0x3F));
      if (v121)
      {
        v102 = __clz(__rbit64(v121)) | v98 & 0x7FFFFFFFFFFFFFC0;
        v59 = v324;
        v103 = v364;
      }

      else
      {
        v122 = v104 << 6;
        v123 = v104 + 1;
        v124 = (v360 + 8 * v104);
        v59 = v324;
        while (v123 < (v102 + 63) >> 6)
        {
          v126 = *v124++;
          v125 = v126;
          v122 += 64;
          ++v123;
          if (v126)
          {
            result = sub_22F107D18(v98, v365, 0);
            v99 = v361;
            v102 = __clz(__rbit64(v125)) + v122;
            goto LABEL_23;
          }
        }

        result = sub_22F107D18(v98, v365, 0);
        v99 = v361;
LABEL_23:
        v101 = v335;
        v103 = v364;
      }

      v100 = v103 + 1;
      v98 = v102;
      if (v100 == v120)
      {
        v93 = v359;
        v95 = v431;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  v101 = v335;
LABEL_26:
  sub_22F2F2E24(v95);

  sub_22F25B498(v59, v371);
  v128 = v127;

  v360 = v128;
  v129 = *(v128 + 16);
  v130 = MEMORY[0x277D84F90];
  if (v129)
  {
    v356 = v93;
    v370 = MEMORY[0x277D84F90];
    sub_22F146514(0, v129, 0);
    v431 = v370;
    v131 = v360 + 64;
    v132 = -1 << *(v360 + 32);
    result = sub_22F741980();
    v133 = result;
    v134 = v360;
    v135 = 0;
    v359 = v360 + 72;
    *&v362 = v129;
    v364 = v131;
    while ((v133 & 0x8000000000000000) == 0 && v133 < 1 << *(v134 + 32))
    {
      v366 = v135;
      v138 = v133 >> 6;
      if ((*(v131 + 8 * (v133 >> 6)) & (1 << v133)) == 0)
      {
        goto LABEL_154;
      }

      v365 = *(v134 + 36);
      v139 = *(v134 + 48);
      v140 = v134;
      v367 = *(v101 + 72);
      v141 = v336;
      sub_22F15CAA0(v139 + v367 * v133, v336);
      v142 = *(*(v140 + 56) + 4 * v133);
      v143 = v141;
      v144 = v337;
      sub_22F15CB04(v143, v337);
      *(v144 + *(v339 + 48)) = v142;
      v145 = v144;
      v146 = v338;
      sub_22F25DF40(v145, v338);
      v147 = v146;
      v148 = v332;
      sub_22F15CB04(v147, v332);
      v149 = v431;
      v370 = v431;
      v151 = *(v431 + 16);
      v150 = *(v431 + 24);
      if (v151 >= v150 >> 1)
      {
        sub_22F146514(v150 > 1, v151 + 1, 1);
        v148 = v332;
        v149 = v370;
      }

      *(v149 + 16) = v151 + 1;
      v152 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v431 = v149;
      result = sub_22F15CB04(v148, v149 + v152 + v151 * v367);
      v136 = 1 << *(v140 + 32);
      if (v133 >= v136)
      {
        goto LABEL_155;
      }

      v131 = v364;
      v153 = *(v364 + 8 * v138);
      if ((v153 & (1 << v133)) == 0)
      {
        goto LABEL_156;
      }

      v134 = v140;
      if (v365 != *(v140 + 36))
      {
        goto LABEL_157;
      }

      v154 = v153 & (-2 << (v133 & 0x3F));
      if (v154)
      {
        v136 = __clz(__rbit64(v154)) | v133 & 0x7FFFFFFFFFFFFFC0;
        v137 = v362;
      }

      else
      {
        v155 = v138 << 6;
        v156 = v138 + 1;
        v157 = (v359 + 8 * v138);
        v137 = v362;
        while (v156 < (v136 + 63) >> 6)
        {
          v159 = *v157++;
          v158 = v159;
          v155 += 64;
          ++v156;
          if (v159)
          {
            result = sub_22F107D18(v133, v365, 0);
            v134 = v360;
            v136 = __clz(__rbit64(v158)) + v155;
            goto LABEL_44;
          }
        }

        result = sub_22F107D18(v133, v365, 0);
        v134 = v360;
LABEL_44:
        v101 = v335;
      }

      v135 = v366 + 1;
      v133 = v136;
      if (v366 + 1 == v137)
      {
        v96 = v363;
        v93 = v356;
        v130 = v431;
        goto LABEL_46;
      }
    }

LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

LABEL_46:
  sub_22F2F2E24(v130);

  v160 = v93;
  sub_22F25B498(v96, v371);
  v162 = v161;
  v163 = v93;

  *&v363 = v162;
  v164 = *(v162 + 16);
  v165 = MEMORY[0x277D84F90];
  if (v164)
  {
    v359 = v160;
    v370 = MEMORY[0x277D84F90];
    sub_22F146514(0, v164, 0);
    v165 = v370;
    v166 = v363 + 64;
    v167 = -1 << *(v363 + 32);
    result = sub_22F741980();
    v168 = result;
    v169 = v363;
    v170 = 0;
    *&v362 = v363 + 72;
    v364 = v164;
    v365 = v166;
    while ((v168 & 0x8000000000000000) == 0 && v168 < 1 << *(v169 + 32))
    {
      v367 = v170;
      v172 = v168 >> 6;
      if ((*(v166 + 8 * (v168 >> 6)) & (1 << v168)) == 0)
      {
        goto LABEL_159;
      }

      v366 = *(v169 + 36);
      v173 = *(v169 + 48);
      v431 = *(v101 + 72);
      v174 = v336;
      sub_22F15CAA0(v173 + v431 * v168, v336);
      v175 = *(*(v169 + 56) + 4 * v168);
      v176 = v174;
      v177 = v337;
      sub_22F15CB04(v176, v337);
      *(v177 + *(v339 + 48)) = v175;
      v178 = v177;
      v179 = v338;
      sub_22F25DF40(v178, v338);
      v180 = v179;
      v181 = v331;
      sub_22F15CB04(v180, v331);
      v182 = v165;
      v370 = v165;
      v184 = *(v165 + 16);
      v183 = *(v165 + 24);
      if (v184 >= v183 >> 1)
      {
        sub_22F146514(v183 > 1, v184 + 1, 1);
        v181 = v331;
        v182 = v370;
      }

      *(v182 + 16) = v184 + 1;
      v165 = v182;
      result = sub_22F15CB04(v181, v182 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + v184 * v431);
      v171 = 1 << *(v169 + 32);
      if (v168 >= v171)
      {
        goto LABEL_160;
      }

      v166 = v365;
      v185 = *(v365 + 8 * v172);
      if ((v185 & (1 << v168)) == 0)
      {
        goto LABEL_161;
      }

      if (v366 != *(v169 + 36))
      {
        goto LABEL_162;
      }

      v186 = v185 & (-2 << (v168 & 0x3F));
      if (v186)
      {
        v171 = __clz(__rbit64(v186)) | v168 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v187 = v172 << 6;
        v188 = v172 + 1;
        v189 = (v362 + 8 * v172);
        while (v188 < (v171 + 63) >> 6)
        {
          v191 = *v189++;
          v190 = v191;
          v187 += 64;
          ++v188;
          if (v191)
          {
            result = sub_22F107D18(v168, v366, 0);
            v169 = v363;
            v171 = __clz(__rbit64(v190)) + v187;
            goto LABEL_64;
          }
        }

        result = sub_22F107D18(v168, v366, 0);
        v169 = v363;
LABEL_64:
        v101 = v335;
      }

      v170 = v367 + 1;
      v168 = v171;
      if (v367 + 1 == v364)
      {
        v163 = v359;
        goto LABEL_66;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

LABEL_66:
  sub_22F2F2E24(v165);

  sub_22F25B498(v369, v371);
  v193 = v192;
  v194 = v163;

  v364 = v193;
  v195 = *(v193 + 16);
  v196 = MEMORY[0x277D84F90];
  if (v195)
  {
    v359 = v163;
    v370 = MEMORY[0x277D84F90];
    sub_22F146514(0, v195, 0);
    v196 = v370;
    v197 = v364 + 64;
    v198 = -1 << *(v364 + 32);
    result = sub_22F741980();
    v199 = result;
    v200 = v364;
    v201 = 0;
    *&v362 = v364 + 72;
    v365 = v195;
    v366 = v197;
    while ((v199 & 0x8000000000000000) == 0 && v199 < 1 << *(v200 + 32))
    {
      v431 = v201;
      v203 = v199 >> 6;
      if ((*(v197 + 8 * (v199 >> 6)) & (1 << v199)) == 0)
      {
        goto LABEL_164;
      }

      v367 = *(v200 + 36);
      v204 = *(v200 + 48);
      *&v369 = *(v101 + 72);
      v205 = v336;
      sub_22F15CAA0(v204 + v369 * v199, v336);
      v206 = *(*(v200 + 56) + 4 * v199);
      v207 = v205;
      v208 = v337;
      sub_22F15CB04(v207, v337);
      *(v208 + *(v339 + 48)) = v206;
      v209 = v208;
      v210 = v338;
      sub_22F25DF40(v209, v338);
      v211 = v210;
      v212 = v330;
      sub_22F15CB04(v211, v330);
      v213 = v196;
      v370 = v196;
      v215 = *(v196 + 16);
      v214 = *(v196 + 24);
      if (v215 >= v214 >> 1)
      {
        sub_22F146514(v214 > 1, v215 + 1, 1);
        v212 = v330;
        v213 = v370;
      }

      *(v213 + 16) = v215 + 1;
      v196 = v213;
      result = sub_22F15CB04(v212, v213 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + v215 * v369);
      v202 = 1 << *(v200 + 32);
      if (v199 >= v202)
      {
        goto LABEL_165;
      }

      v197 = v366;
      v216 = *(v366 + 8 * v203);
      if ((v216 & (1 << v199)) == 0)
      {
        goto LABEL_166;
      }

      if (v367 != *(v200 + 36))
      {
        goto LABEL_167;
      }

      v217 = v216 & (-2 << (v199 & 0x3F));
      if (v217)
      {
        v202 = __clz(__rbit64(v217)) | v199 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v218 = v203 << 6;
        v219 = v203 + 1;
        v220 = (v362 + 8 * v203);
        while (v219 < (v202 + 63) >> 6)
        {
          v222 = *v220++;
          v221 = v222;
          v218 += 64;
          ++v219;
          if (v222)
          {
            result = sub_22F107D18(v199, v367, 0);
            v200 = v364;
            v202 = __clz(__rbit64(v221)) + v218;
            goto LABEL_84;
          }
        }

        result = sub_22F107D18(v199, v367, 0);
        v200 = v364;
LABEL_84:
        v101 = v335;
      }

      v201 = v431 + 1;
      v199 = v202;
      if (v431 + 1 == v365)
      {
        v194 = v359;
        goto LABEL_86;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

LABEL_86:
  sub_22F2F2E24(v196);

  sub_22F25B498(v368, v371);
  v224 = v223;

  v225 = *(v224 + 16);
  v226 = MEMORY[0x277D84F90];
  if (v225)
  {
    *&v362 = v194;
    v370 = MEMORY[0x277D84F90];
    sub_22F146514(0, v225, 0);
    v226 = v370;
    v227 = -1 << *(v224 + 32);
    *&v369 = v224 + 64;
    result = sub_22F741980();
    v228 = result;
    v229 = 0;
    v365 = v224 + 72;
    v366 = v225;
    while ((v228 & 0x8000000000000000) == 0 && v228 < 1 << *(v224 + 32))
    {
      v368 = v229;
      v233 = v228 >> 6;
      if ((*(v369 + 8 * (v228 >> 6)) & (1 << v228)) == 0)
      {
        goto LABEL_169;
      }

      v367 = *(v224 + 36);
      v234 = *(v224 + 48);
      v431 = *(v101 + 72);
      v235 = v336;
      sub_22F15CAA0(v234 + v431 * v228, v336);
      v236 = *(*(v224 + 56) + 4 * v228);
      v237 = v235;
      v238 = v337;
      sub_22F15CB04(v237, v337);
      *(v238 + *(v339 + 48)) = v236;
      v239 = v238;
      v240 = v338;
      sub_22F25DF40(v239, v338);
      v241 = v240;
      v242 = v329;
      sub_22F15CB04(v241, v329);
      v243 = v226;
      v370 = v226;
      v245 = *(v226 + 16);
      v244 = *(v226 + 24);
      if (v245 >= v244 >> 1)
      {
        sub_22F146514(v244 > 1, v245 + 1, 1);
        v242 = v329;
        v243 = v370;
      }

      *(v243 + 16) = v245 + 1;
      v226 = v243;
      result = sub_22F15CB04(v242, v243 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + v245 * v431);
      v230 = 1 << *(v224 + 32);
      if (v228 >= v230)
      {
        goto LABEL_170;
      }

      v246 = *(v369 + 8 * v233);
      if ((v246 & (1 << v228)) == 0)
      {
        goto LABEL_171;
      }

      if (v367 != *(v224 + 36))
      {
        goto LABEL_172;
      }

      v247 = v246 & (-2 << (v228 & 0x3F));
      if (v247)
      {
        v230 = __clz(__rbit64(v247)) | v228 & 0x7FFFFFFFFFFFFFC0;
        v231 = v366;
        v232 = v368;
      }

      else
      {
        v248 = v224;
        v249 = v233 << 6;
        v250 = v233 + 1;
        v251 = (v365 + 8 * v233);
        v231 = v366;
        while (v250 < (v230 + 63) >> 6)
        {
          v253 = *v251++;
          v252 = v253;
          v249 += 64;
          ++v250;
          if (v253)
          {
            result = sub_22F107D18(v228, v367, 0);
            v230 = __clz(__rbit64(v252)) + v249;
            goto LABEL_104;
          }
        }

        result = sub_22F107D18(v228, v367, 0);
LABEL_104:
        v101 = v335;
        v224 = v248;
        v232 = v368;
      }

      v229 = v232 + 1;
      v228 = v230;
      if (v229 == v231)
      {
        v194 = v362;
        goto LABEL_106;
      }
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

LABEL_106:
  v359 = v224;
  sub_22F2F2E24(v226);

  v254 = v194;
  sub_22F25B498(v358, v371);
  v256 = v255;
  v257 = v194;

  v258 = *(v256 + 16);
  v259 = MEMORY[0x277D84F90];
  if (v258)
  {
    v358 = v254;
    v370 = MEMORY[0x277D84F90];
    sub_22F146514(0, v258, 0);
    *&v369 = v370;
    v260 = v256 + 64;
    v261 = -1 << *(v256 + 32);
    result = sub_22F741980();
    v262 = result;
    v263 = 0;
    *&v362 = v256 + 72;
    v365 = v258;
    v366 = v256 + 64;
    while ((v262 & 0x8000000000000000) == 0 && v262 < 1 << *(v256 + 32))
    {
      v367 = v263;
      v267 = v262 >> 6;
      if ((*(v260 + 8 * (v262 >> 6)) & (1 << v262)) == 0)
      {
        goto LABEL_174;
      }

      v368 = *(v256 + 36);
      v268 = *(v256 + 48);
      v431 = *(v101 + 72);
      v269 = v336;
      sub_22F15CAA0(v268 + v431 * v262, v336);
      v270 = *(*(v256 + 56) + 4 * v262);
      v271 = v269;
      v272 = v337;
      sub_22F15CB04(v271, v337);
      *(v272 + *(v339 + 48)) = v270;
      v273 = v272;
      v274 = v338;
      sub_22F25DF40(v273, v338);
      v275 = v274;
      v276 = v328;
      sub_22F15CB04(v275, v328);
      v277 = v369;
      v370 = v369;
      v279 = *(v369 + 16);
      v278 = *(v369 + 24);
      if (v279 >= v278 >> 1)
      {
        sub_22F146514(v278 > 1, v279 + 1, 1);
        v276 = v328;
        v277 = v370;
      }

      *(v277 + 16) = v279 + 1;
      v280 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      *&v369 = v277;
      result = sub_22F15CB04(v276, v277 + v280 + v279 * v431);
      v264 = 1 << *(v256 + 32);
      if (v262 >= v264)
      {
        goto LABEL_175;
      }

      v260 = v366;
      v281 = *(v366 + 8 * v267);
      if ((v281 & (1 << v262)) == 0)
      {
        goto LABEL_176;
      }

      if (v368 != *(v256 + 36))
      {
        goto LABEL_177;
      }

      v282 = v281 & (-2 << (v262 & 0x3F));
      if (v282)
      {
        v264 = __clz(__rbit64(v282)) | v262 & 0x7FFFFFFFFFFFFFC0;
        v265 = v365;
        v266 = v367;
      }

      else
      {
        v283 = v267 << 6;
        v284 = v267 + 1;
        v285 = (v362 + 8 * v267);
        v265 = v365;
        while (v284 < (v264 + 63) >> 6)
        {
          v287 = *v285++;
          v286 = v287;
          v283 += 64;
          ++v284;
          if (v287)
          {
            result = sub_22F107D18(v262, v368, 0);
            v264 = __clz(__rbit64(v286)) + v283;
            goto LABEL_124;
          }
        }

        result = sub_22F107D18(v262, v368, 0);
LABEL_124:
        v101 = v335;
        v266 = v367;
      }

      v263 = v266 + 1;
      v262 = v264;
      if (v263 == v265)
      {
        v257 = v358;
        v259 = v369;
        goto LABEL_126;
      }
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

LABEL_126:
  sub_22F2F2E24(v259);

  sub_22F25B498(v357, v371);
  v289 = v288;

  v290 = *(v289 + 16);
  v291 = MEMORY[0x277D84F90];
  if (!v290)
  {
LABEL_145:
    sub_22F2F2E24(v291);

    sub_22F741690();
    if (v257)
    {
    }

    else
    {
      sub_22F1B2BBC(0);
      sub_22F7416A0();

      v321 = v326;
      v322 = v360;
      *v326 = v361;
      v321[1] = v322;
      v323 = v364;
      v321[2] = v363;
      v321[3] = v323;
      v321[4] = v359;
      v321[5] = v256;
      v321[6] = v289;
    }

    return result;
  }

  v357 = v257;
  v358 = v256;
  v370 = MEMORY[0x277D84F90];
  sub_22F146514(0, v290, 0);
  *&v369 = v370;
  v292 = v289 + 64;
  v293 = -1 << *(v289 + 32);
  result = sub_22F741980();
  v294 = result;
  v295 = 0;
  *&v362 = v289 + 72;
  v365 = v290;
  v366 = v289 + 64;
  while ((v294 & 0x8000000000000000) == 0 && v294 < 1 << *(v289 + 32))
  {
    v367 = v295;
    v298 = v294 >> 6;
    v299 = v335;
    if ((*(v292 + 8 * (v294 >> 6)) & (1 << v294)) == 0)
    {
      goto LABEL_179;
    }

    v368 = *(v289 + 36);
    v300 = *(v289 + 48);
    v431 = *(v335 + 72);
    v301 = v336;
    sub_22F15CAA0(v300 + v431 * v294, v336);
    v302 = *(*(v289 + 56) + 4 * v294);
    v303 = v301;
    v304 = v337;
    sub_22F15CB04(v303, v337);
    *(v304 + *(v339 + 48)) = v302;
    v305 = v304;
    v306 = v338;
    sub_22F25DF40(v305, v338);
    v307 = v306;
    v308 = v327;
    sub_22F15CB04(v307, v327);
    v309 = v369;
    v370 = v369;
    v310 = v289;
    v312 = *(v369 + 16);
    v311 = *(v369 + 24);
    if (v312 >= v311 >> 1)
    {
      sub_22F146514(v311 > 1, v312 + 1, 1);
      v308 = v327;
      v309 = v370;
    }

    *(v309 + 16) = v312 + 1;
    v313 = (*(v299 + 80) + 32) & ~*(v299 + 80);
    *&v369 = v309;
    result = sub_22F15CB04(v308, v309 + v313 + v312 * v431);
    v296 = 1 << *(v310 + 32);
    if (v294 >= v296)
    {
      goto LABEL_180;
    }

    v292 = v366;
    v314 = *(v366 + 8 * v298);
    if ((v314 & (1 << v294)) == 0)
    {
      goto LABEL_181;
    }

    v289 = v310;
    if (v368 != *(v310 + 36))
    {
      goto LABEL_182;
    }

    v315 = v314 & (-2 << (v294 & 0x3F));
    if (v315)
    {
      v296 = __clz(__rbit64(v315)) | v294 & 0x7FFFFFFFFFFFFFC0;
      v297 = v365;
    }

    else
    {
      v316 = v298 << 6;
      v317 = v298 + 1;
      v318 = (v362 + 8 * v298);
      v297 = v365;
      while (v317 < (v296 + 63) >> 6)
      {
        v320 = *v318++;
        v319 = v320;
        v316 += 64;
        ++v317;
        if (v320)
        {
          result = sub_22F107D18(v294, v368, 0);
          v296 = __clz(__rbit64(v319)) + v316;
          goto LABEL_129;
        }
      }

      result = sub_22F107D18(v294, v368, 0);
    }

LABEL_129:
    v295 = v367 + 1;
    v294 = v296;
    if (v367 + 1 == v297)
    {
      v257 = v357;
      v256 = v358;
      v291 = v369;
      goto LABEL_145;
    }
  }

LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
  return result;
}

uint64_t sub_22F25DF40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F25DFB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10F0, &qword_22F771540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F25E018()
{
  result = qword_2810A92B8;
  if (!qword_2810A92B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB19F8, &qword_22F7731F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92B8);
  }

  return result;
}

uint64_t PhotosChallengeEvaluationResult.algorithmName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PhotosChallengeEvaluationResult.experimentName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PhotosChallengeEvaluationResult.confusionMatrix.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosChallengeEvaluationResult() + 24);
  v4 = sub_22F73FB70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PhotosChallengeEvaluationResult()
{
  result = qword_27DAB2BB8;
  if (!qword_27DAB2BB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosChallengeEvaluationResult.csvDescription.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](*v1, v1[1]);
  MEMORY[0x231900B10](44, 0xE100000000000000);
  MEMORY[0x231900B10](v1[2], v1[3]);
  MEMORY[0x231900B10](44, 0xE100000000000000);
  v2 = type metadata accessor for PhotosChallengeEvaluationResult();
  v6 = *(v0 + *(v2 + 28));
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](44, 0xE100000000000000);
  v4 = *(v2 + 24);
  sub_22F73FB00();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FAE0();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB20();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB10();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB60();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB30();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB40();
  sub_22F7413E0();
  MEMORY[0x231900B10](44, 0xE100000000000000);
  sub_22F73FB50();
  sub_22F7413E0();
  return 0;
}

uint64_t PhotosChallengeEvaluationResult.description.getter()
{
  v1 = v0;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000011, 0x800000022F796040);
  MEMORY[0x231900B10](*v1, v1[1]);
  MEMORY[0x231900B10](0xD000000000000017, 0x800000022F796060);
  MEMORY[0x231900B10](v1[2], v1[3]);
  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F796080);
  v2 = type metadata accessor for PhotosChallengeEvaluationResult();
  v6 = *(v0 + *(v2 + 28));
  v3 = sub_22F742010();
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F7960A0);
  v4 = *(v2 + 24);
  sub_22F73FB00();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F7960C0);
  sub_22F73FAE0();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F7960E0);
  sub_22F73FB20();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F796100);
  sub_22F73FB10();
  sub_22F7413E0();
  MEMORY[0x231900B10](0xD000000000000012, 0x800000022F796120);
  sub_22F73FB60();
  sub_22F7413E0();
  MEMORY[0x231900B10](0x6163657222090A2CLL, 0xED0000203A226C6CLL);
  sub_22F73FB30();
  sub_22F7413E0();
  MEMORY[0x231900B10](0x3A22316622090A2CLL, 0xE900000000000020);
  sub_22F73FB40();
  sub_22F7413E0();
  MEMORY[0x231900B10](0x2263636D22090A2CLL, 0xEA0000000000203ALL);
  sub_22F73FB50();
  sub_22F7413E0();
  MEMORY[0x231900B10](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_22F25E774()
{
  result = sub_22F73FB70();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id MusicCurationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurationManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F25EA14(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v9 = type metadata accessor for CollectionCuration();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v22 = *&a3[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions];
  if (!*(v22 + 16))
  {
    v35 = a3;
    return;
  }

  v68 = v18;
  v69 = a3;
  v65 = v21;
  v72 = v20;
  v70 = (&v61 - v19);
  v23 = *(type metadata accessor for Song() - 8);
  v24 = (v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)));
  v66 = *v24;
  v74 = v4;
  v25 = v24[1];

  v26 = sub_22F7416B0();
  v73 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v28 = swift_allocObject();
  v67 = xmmword_22F771340;
  *(v28 + 16) = xmmword_22F771340;
  *(v28 + 32) = a1;
  *(v28 + 40) = a2;
  sub_22F25F004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v29 = swift_allocObject();
  v71 = a1;
  v30 = a4;
  v31 = v29;
  *(v29 + 16) = xmmword_22F770DF0;
  *(v29 + 56) = MEMORY[0x277D837D0];
  *(v29 + 64) = sub_22F153470();
  strcpy((v31 + 32), "collectionId");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  *(v31 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v31 + 104) = sub_22F25F050();
  *(v31 + 72) = v28;

  v32 = sub_22F741560();
  v33 = v74;
  v34 = sub_22F33E998();
  if (v33)
  {

    return;
  }

  v62 = a2;
  v63 = v30;
  v36 = v71;
  v64 = v26;
  v74 = 0;
  v37 = v34;

  if (v37[2])
  {
    v38 = v72;
    v39 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    sub_22F25F0B4(v37 + v39, v17);

    v40 = v70;
    sub_22F25F118(v17, v70);
    v41 = v40[3];
    if (v41)
    {
      v42 = v40[2];

      MusicCuration.replaceFirstSongInBestSongSuggestions(with:)(v42, v41);

      sub_22F25F17C(v40);
      return;
    }

    v51 = *v40;
    v50 = v40[1];
    v52 = v40[5];
    v71 = v40[4];
    v53 = *(v68 + 28);

    v54 = v25;
    v55 = v65;
    sub_22F73F680();
    *v55 = v51;
    v55[1] = v50;
    v55[2] = v66;
    v55[3] = v54;
    v55[4] = v71;
    v55[5] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v56 = *(v38 + 72);
    v57 = swift_allocObject();
    *(v57 + 16) = v67;
    sub_22F25F0B4(v55, v57 + v39);
    v58 = v73;
    v59 = v74;
    MusicCache.write(collectionCurations:progressReporter:)(v57);
    if (v59)
    {
      sub_22F25F17C(v55);

      swift_setDeallocating();
      sub_22F25F17C(v57 + v39);
      swift_deallocClassInstance();
      sub_22F25F17C(v40);
      return;
    }

    sub_22F25F17C(v55);

    swift_setDeallocating();
    sub_22F25F17C(v57 + v39);
    swift_deallocClassInstance();
    sub_22F25F17C(v40);
  }

  else
  {

    v43 = v13 + *(v68 + 28);
    sub_22F73F680();
    v44 = v62;
    *v13 = v36;
    v13[1] = v44;
    v13[2] = v66;
    v13[3] = v25;
    v13[4] = 0;
    v13[5] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13C8, &unk_22F780230);
    v45 = *(v72 + 72);
    v46 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v67;
    sub_22F25F0B4(v13, v47 + v46);

    v48 = v73;
    v49 = v74;
    MusicCache.write(collectionCurations:progressReporter:)(v47);
    if (v49)
    {
      sub_22F25F17C(v13);

      swift_setDeallocating();
      sub_22F25F17C(v47 + v46);
      swift_deallocClassInstance();
      return;
    }

    sub_22F25F17C(v13);

    swift_setDeallocating();
    sub_22F25F17C(v47 + v46);
    swift_deallocClassInstance();
  }

  v60 = v69;
}

unint64_t sub_22F25F004()
{
  result = qword_2810A91E0;
  if (!qword_2810A91E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A91E0);
  }

  return result;
}

unint64_t sub_22F25F050()
{
  result = qword_2810A92D0;
  if (!qword_2810A92D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92D0);
  }

  return result;
}

uint64_t sub_22F25F0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionCuration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F25F118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionCuration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F25F17C(uint64_t a1)
{
  v2 = type metadata accessor for CollectionCuration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersonalEventMomentFetcher.init(photoLibrary:graph:cachedMomentUUIDByAssetUUID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PersonalEventMomentFetcher.personalEventGroundingResultByQueryToken(with:associatedPersonUUID:scopedMomentUUIDs:progressReporter:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v6;
  v150 = a4;
  v151 = a1;
  v160 = sub_22F7407B0();
  v147 = *(v160 - 1);
  v10 = *(v147 + 64);
  v11 = MEMORY[0x28223BE20](v160);
  v143 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v142 = &v114 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v154 = &v114 - v16;
  MEMORY[0x28223BE20](v15);
  v153 = &v114 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EA0, &qword_22F777700);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v152 = &v114 - v20;
  v156 = sub_22F740A50();
  v144 = *(v156 - 8);
  v21 = v144[8];
  v22 = MEMORY[0x28223BE20](v156);
  v141 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v155 = &v114 - v25;
  MEMORY[0x28223BE20](v24);
  v159 = &v114 - v26;
  v165 = sub_22F73FDA0();
  v27 = *(v165 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v165);
  v158 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v114 - v31;
  v33 = *v5;
  v34 = v5[1];
  v149 = v5[2];
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v35 = qword_2810B4DF0;
  *&v36 = CACurrentMediaTime();
  sub_22F1B560C("PersonalEventMomentFetcher", 26, 2u, v36, 0, v35, v164);
  sub_22F741690();
  if (v6)
  {
    goto LABEL_49;
  }

  v146 = a5;
  sub_22F191888();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = sub_22F740DF0();
  v39 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (!v39)
  {
    if (qword_2810A9400 != -1)
    {
LABEL_54:
      swift_once();
    }

    v52 = sub_22F740B90();
    __swift_project_value_buffer(v52, qword_2810B4CE0);
    v53 = sub_22F740B70();
    v54 = sub_22F7415E0();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_22F0FC000, v53, v54, "No personLocalIdentifier is found, immediately return", v55, 2u);
      MEMORY[0x2319033A0](v55, -1, -1);
    }

    a2 = sub_22F14F8C0(MEMORY[0x277D84F90]);
    sub_22F1B2BBC(0);

    return a2;
  }

  v138 = sub_22F740E20();
  v41 = v40;

  if (qword_2810A9400 != -1)
  {
LABEL_52:
    swift_once();
  }

  v42 = sub_22F740B90();
  v43 = __swift_project_value_buffer(v42, qword_2810B4CE0);

  v126 = v43;
  v44 = sub_22F740B70();
  v45 = sub_22F7415F0();

  v46 = os_log_type_enabled(v44, v45);
  v135 = v33;
  v134 = v34;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v48 = v27;
    v49 = swift_slowAlloc();
    v161 = v49;
    *v47 = 136315138;
    *(v47 + 4) = sub_22F145F20(v138, v41, &v161);
    _os_log_impl(&dword_22F0FC000, v44, v45, "Associated person localIdentifier for personal event grounding = %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v50 = v49;
    v27 = v48;
    v51 = v160;
    MEMORY[0x2319033A0](v50, -1, -1);
    MEMORY[0x2319033A0](v47, -1, -1);

    a2 = v156;
  }

  else
  {

    a2 = v156;
    v51 = v160;
  }

  v56 = 0.2;
  sub_22F741690();
  if (v7)
  {

LABEL_49:
    sub_22F1B2BBC(0);

    return a2;
  }

  v130 = v41;
  v41 = *(v151 + 16);
  if (!v41)
  {

    v144 = MEMORY[0x277D84F98];
LABEL_47:
    sub_22F7416A0();
    sub_22F1B2BBC(0);

    return v144;
  }

  v58 = 0.8 / v41;
  v60 = *(v27 + 16);
  v59 = v27 + 16;
  v157 = v60;
  v61 = v151 + ((*(v59 + 64) + 32) & ~*(v59 + 64));
  v148 = *(v59 + 56);
  v145 = (v144 + 6);
  v133 = (v144 + 4);
  v137 = (v144 + 2);
  v132 = (v144 + 11);
  v131 = *MEMORY[0x277D3CA70];
  v127 = *MEMORY[0x277D3CA88];
  v125 = *MEMORY[0x277D3CA80];
  v124 = *MEMORY[0x277D3CA78];
  v136 = (v144 + 1);
  v129 = (v147 + 16);
  v128 = (v147 + 8);
  v123 = v147 + 32;
  v151 = v59 - 8;
  v122 = v147 + 40;
  v144 = MEMORY[0x277D84F98];
  *&v57 = 136315138;
  v118 = v57;
  v62 = v152;
  v139 = v32;
  v140 = v59;
  v60(v32, v61, v165);
  while (1)
  {
    v160 = objc_autoreleasePoolPush();
    sub_22F73FD60();
    if ((*v145)(v62, 1, a2) == 1)
    {
      sub_22F2601C8(v62);
      goto LABEL_17;
    }

    v64 = v159;
    (*v133)(v159, v62, a2);
    v65 = *v137;
    v66 = v155;
    (*v137)(v155, v64, a2);
    v67 = (*v132)(v66, a2);
    if (v67 == v131)
    {
      break;
    }

    if (v67 == v127)
    {
      v161 = v135;
      v162 = v134;
      v163 = v149;
      v79 = v142;
      sub_22F2C0C50(v138, v130, v150);
      v80 = v143;
      (*v129)(v143, v79, v51);
      v81 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v161 = v81;
      v83 = v80;
      a2 = v156;
      v32 = v139;
      sub_22F131790(v83, v139, isUniquelyReferenced_nonNull_native);
      v84 = v79;
      v62 = v152;
      (*v128)(v84, v51);
      v144 = v161;
    }

    else
    {
      v85 = v67 == v125 || v67 == v124;
      v32 = v139;
      if (!v85)
      {
        v98 = v141;
        v65(v141, v159, a2);
        v99 = sub_22F740B70();
        v120 = sub_22F7415E0();
        v121 = v99;
        v100 = os_log_type_enabled(v99, v120);
        v101 = v136;
        v102 = v136 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v100)
        {
          v103 = swift_slowAlloc();
          v119 = v103;
          v115 = swift_slowAlloc();
          v161 = v115;
          *v103 = v118;
          v117 = v102;
          v104 = v101;
          v105 = sub_22F740A40();
          v107 = v106;
          v116 = *v104;
          v116(v98, a2);
          v108 = sub_22F145F20(v105, v107, &v161);
          v32 = v139;

          v109 = v119;
          *(v119 + 1) = v108;
          _os_log_impl(&dword_22F0FC000, v121, v120, "Unsupported personal event type: %s", v109, 0xCu);
          v110 = v115;
          __swift_destroy_boxed_opaque_existential_0(v115);
          MEMORY[0x2319033A0](v110, -1, -1);
          MEMORY[0x2319033A0](v119, -1, -1);

          v116(v155, a2);
        }

        else
        {

          v111 = v98;
          v112 = *v101;
          (*v101)(v111, a2);
          v112(v155, a2);
        }

        v62 = v152;
      }
    }

LABEL_44:
    v56 = v58 + v56;
    sub_22F741690();
    (*v136)(v159, a2);
LABEL_17:
    v63 = v165;
    objc_autoreleasePoolPop(v160);
    (*v151)(v32, v63);
    v61 += v148;
    if (!--v41)
    {

      goto LABEL_47;
    }

    v157(v32, v61, v63);
  }

  v32 = v51;
  v33 = 0;
  v161 = v135;
  v162 = v134;
  v163 = v149;
  v68 = v153;
  sub_22F1F4DEC(v138, v130, v150);
  v69 = v158;
  v157(v158, v139, v165);
  v70 = v68;
  v71 = v32;
  (*v129)(v154, v70, v32);
  v7 = v144;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v161 = v7;
  v34 = sub_22F123028(v69);
  v73 = *(v7 + 16);
  v74 = (v72 & 1) == 0;
  v75 = v73 + v74;
  if (__OFADD__(v73, v74))
  {
    __break(1u);
    goto LABEL_52;
  }

  v76 = v72;
  if (*(v7 + 24) >= v75)
  {
    if ((v27 & 1) == 0)
    {
      sub_22F1363A0();
    }

    goto LABEL_35;
  }

  sub_22F12902C(v75, v27);
  v77 = sub_22F123028(v158);
  if ((v76 & 1) == (v78 & 1))
  {
    v34 = v77;
LABEL_35:
    v86 = v161;
    v144 = v161;
    if (v76)
    {
      v87 = v147;
      v51 = v71;
      (*(v147 + 40))(v161[7] + *(v147 + 72) * v34, v154, v71);
      (*v151)(v158, v165);
      (*(v87 + 8))(v153, v71);
    }

    else
    {
      v161[(v34 >> 6) + 8] |= 1 << v34;
      v88 = v158;
      v89 = v165;
      v157((*(v86 + 48) + v34 * v148), v158, v165);
      v90 = *(v86 + 56);
      v91 = v147;
      (*(v147 + 32))(v90 + *(v147 + 72) * v34, v154, v71);
      v92 = v88;
      v51 = v71;
      (*v151)(v92, v89);
      v93 = *(v91 + 8);
      v94 = v144;
      v93(v153, v71);
      v95 = v94[2];
      v96 = __OFADD__(v95, 1);
      v97 = v95 + 1;
      if (v96)
      {
        __break(1u);
        goto LABEL_54;
      }

      v94[2] = v97;
    }

    a2 = v156;
    v62 = v152;
    v32 = v139;
    goto LABEL_44;
  }

  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2601C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EA0, &qword_22F777700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F260240(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F2602A8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F2602F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_22F2603A8()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F2603EC(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F26049C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t sub_22F260504()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_22F26054C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t *sub_22F260604(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22F740460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  sub_22F740B80();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup) = 0;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults) = 0;
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 40))(v10, v11);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 24))(v13, v14);
  v16 = [v15 librarySpecificFetchOptions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771EB0;
  *(v17 + 32) = sub_22F742140();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v18 = sub_22F741160();

  [v16 setIncludedDetectionTypes_];

  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = sub_22F2A6EB8(v12, v19, v20);

  if (v21)
  {
    (*(v6 + 104))(v9, *MEMORY[0x277D3C468], v5);
    v22 = static CollectionTrigger.generateTriggerResults(from:type:)(v21, v9);

    (*(v6 + 8))(v9, v5);
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *(v2 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults) = v22;
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t PeopleRandom.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults);

  return v0;
}

uint64_t PeopleRandom.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults);

  v4 = *(v0 + OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F260A58()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_triggerResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F260AA4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F260AEC()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph12PeopleRandom_futureLookupResults;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t *sub_22F260B48(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22F740460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  v1[5] = 0;
  v11 = [a1 librarySpecificFetchOptions];
  [v11 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F771350;
  *(v12 + 32) = sub_22F742140();
  *(v12 + 40) = sub_22F742140();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v13 = sub_22F741160();

  [v11 setIncludedDetectionTypes_];

  v14 = [objc_opt_self() fetchPersonsWithOptions_];
  (*(v6 + 104))(v10, *MEMORY[0x277D3C440], v5);
  v15 = static CollectionTrigger.generateTriggerResults(from:type:)(v14, v10);

  (*(v6 + 8))(v10, v5);
  v2[3] = v15;
  return v2;
}

uint64_t *sub_22F260DE8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22F740460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  v1[5] = 0;
  v11 = [a1 librarySpecificFetchOptions];
  v12 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:v11];
  (*(v6 + 104))(v10, *MEMORY[0x277D3C450], v5);
  v13 = static CollectionTrigger.generateTriggerResults(from:type:)(v12, v10);

  (*(v6 + 8))(v10, v5);
  v2[3] = v13;
  return v2;
}

uint64_t *sub_22F260F90(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22F740460();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  *&v8 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  v1[5] = 0;
  v11 = [a1 librarySpecificFetchOptions];
  [v11 setIncludePendingMemories_];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F770DF0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  v13 = sub_22F153470();
  strcpy((v12 + 32), "featuredState");
  *(v12 + 46) = -4864;
  v14 = MEMORY[0x277D83C10];
  *(v12 + 96) = MEMORY[0x277D83B88];
  *(v12 + 104) = v14;
  *(v12 + 64) = v13;
  *(v12 + 72) = 1;
  v15 = sub_22F741560();
  [v11 setPredicate_];

  v16 = [objc_opt_self() fetchMemoriesWithOptions_];
  (*(v6 + 104))(v10, *MEMORY[0x277D3C460], v5);
  v17 = static CollectionTrigger.generateTriggerResults(from:type:)(v16, v10);

  (*(v6 + 8))(v10, v5);
  v2[3] = v17;
  return v2;
}

uint64_t _s11PhotosGraph10PetsRandomCfD_0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t keypath_get_9Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t keypath_set_12Tm(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t keypath_get_13Tm@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t type metadata accessor for PeopleRandom()
{
  result = qword_27DAB2BC8;
  if (!qword_27DAB2BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2613D8()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_22F262298(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v29[0] = a4;
  v29[1] = a5;
  v8 = v5;
  v10 = *v5;
  v11 = sub_22F740460();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F740560();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  *(v5 + 16) = 0;
  *(v5 + 32) = 0;
  v5[5] = 0;
  (*(v20 + 104))(v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D3C570], v18);
  v21 = sub_22F740570();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = a1;
  v25 = sub_22F740550();
  a2(0);
  v26 = a3(v25);
  (*(v12 + 104))(v15, *v29[0], v11);
  v27 = static CollectionTrigger.generateTriggerResults(from:type:)(v26, v15);

  (*(v12 + 8))(v15, v11);
  v8[3] = v27;
  return v8;
}

uint64_t sub_22F262784(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v166 = &v148 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v170 = &v148 - v11;
  v12 = sub_22F73F690();
  v171 = *(v12 - 8);
  v172 = v12;
  v13 = *(v171 + 64);
  MEMORY[0x28223BE20](v12);
  v169 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Song();
  v168 = *(v177 - 8);
  v15 = *(v168 + 64);
  v16 = (MEMORY[0x28223BE20])(v177);
  v164 = &v148 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (MEMORY[0x28223BE20])(v16);
  v165 = (&v148 - v19);
  v20 = (MEMORY[0x28223BE20])(v18);
  v167 = &v148 - v21;
  MEMORY[0x28223BE20](v20);
  v180 = (&v148 - v22);
  v23 = sub_22F7416E0();
  v183 = v24;
  v184 = v23;
  v181 = v26;
  v182 = v25;
  v173 = a3;
  v185 = *(a3 + OBJC_IVAR___PGMusicCuratorContext_cache);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v27 = swift_allocObject();
  v175 = xmmword_22F771340;
  *(v27 + 16) = xmmword_22F771340;
  v178 = a1;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  v28 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v30 = swift_allocObject();
  v174 = xmmword_22F770DF0;
  *(v30 + 16) = xmmword_22F770DF0;
  *(v30 + 56) = MEMORY[0x277D837D0];
  v31 = sub_22F153470();
  *(v30 + 64) = v31;
  *(v30 + 32) = 0x44496D616461;
  *(v30 + 40) = 0xE600000000000000;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v30 + 96) = v32;
  v33 = sub_22F25F050();
  *(v30 + 104) = v33;
  *(v30 + 72) = v27;
  v179 = a2;

  v34 = v28;
  v35 = sub_22F741560();
  v186 = 0;
  v187 = 0;
  v188 = 1;
  v36 = v184;
  v37 = v189;
  v38 = sub_22F196B2C(v35, &v186, v184);
  v189 = v37;
  if (v37)
  {
  }

  else
  {
    v159 = v33;
    v160 = v32;
    v161 = v31;
    v162 = v29;
    v163 = v34;
    v40 = v38;

    if (*(v40 + 16))
    {
      v41 = (*(v168 + 80) + 32) & ~*(v168 + 80);
      v42 = v167;
      sub_22F15CAA0(v40 + v41, v167);

      v43 = v42;
      v44 = v180;
      sub_22F15CB04(v43, v180);
      v45 = *(v44 + 72);
      v46 = 20302;
      if (v45)
      {
        v46 = 5457241;
      }

      v47 = 0xE200000000000000;
      if (v45)
      {
        v47 = 0xE300000000000000;
      }

      v48 = v45 == 2;
      v49 = 63;
      if (v45 == 2)
      {
        v50 = 63;
      }

      else
      {
        v50 = v46;
      }

      v154 = v50;
      v51 = 0xE100000000000000;
      if (v48)
      {
        v52 = 0xE100000000000000;
      }

      else
      {
        v52 = v47;
      }

      v168 = v52;
      v53 = v177;
      v54 = v44 + *(v177 + 72);
      v55 = v183;
      if ((v54[4] & 1) == 0)
      {
        v56 = *v54;
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_22F7413E0();
        v49 = v186;
        v51 = v187;
      }

      v57 = v44 + v53[19];
      v58 = v57[4];
      v59 = v171;
      v60 = v169;
      v167 = v51;
      v152 = v49;
      if (v58)
      {
        v158 = 0xE100000000000000;
        v61 = 63;
        v62 = &v181;
      }

      else
      {
        v65 = *v57;
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_22F7413E0();
        v61 = v187;
        v151 = v186;
        v62 = &v188;
      }

      *(v62 - 32) = v61;
      v66 = v44 + v53[20];
      if (v66[4])
      {
        v157 = 0xE100000000000000;
        v67 = 63;
        v68 = &v180;
      }

      else
      {
        v69 = *v66;
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_22F7413E0();
        v67 = v187;
        v150 = v186;
        v68 = &v187;
      }

      *(v68 - 32) = v67;
      v70 = v44 + v53[21];
      if (v70[4])
      {
        v156 = 0xE100000000000000;
        v71 = 63;
        v72 = &v179;
      }

      else
      {
        v73 = *v70;
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_22F7413E0();
        v71 = v187;
        v149 = v186;
        v72 = &v186;
      }

      *(v72 - 32) = v71;
      if (v44[12])
      {
        v155 = 0xE100000000000000;
        v74 = 63;
        v75 = &v178;
      }

      else
      {
        v76 = *(v44 + 23);
        v186 = 0;
        v187 = 0xE000000000000000;
        sub_22F7413E0();
        v74 = v187;
        v148 = v186;
        v75 = &v185;
      }

      *(v75 - 32) = v74;
      v77 = v44 + v53[16];
      v78 = v170;
      sub_22F13BA9C(v77, v170, &qword_27DAB0920, &qword_22F770B20);
      v79 = v172;
      if ((*(v59 + 48))(v78, 1, v172) == 1)
      {
        sub_22F120ADC(v78, &qword_27DAB0920, &qword_22F770B20);
        v170 = 0xE100000000000000;
        v153 = 63;
      }

      else
      {
        (*(v59 + 32))(v60, v78, v79);
        sub_22F1E3D6C();
        v153 = sub_22F742010();
        v170 = v80;
        (*(v59 + 8))(v60, v79);
      }

      v81 = _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(v173);
      v82 = v81 + OBJC_IVAR___PGMusicFeatureExtractionContext_songKeywordProvider;
      swift_beginAccess();
      v83 = *(v82 + 24);
      v84 = *(v82 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(v82, v83);
      v85 = (*(v84 + 8))(v83, v84);
      LOBYTE(v83) = v86;
      swift_endAccess();
      if (v83)
      {
        v186 = v85;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
        swift_willThrowTypedImpl();

        sub_22F21173C(v85);
        v172 = 120;
        v173 = 0xE100000000000000;
        v88 = v180;
      }

      else
      {
        v88 = v180;
        v89 = v189;
        sub_22F20C400(v180);
        if (v89)
        {
          sub_22F21173C(v85);

          v189 = 0;
          v172 = 120;
          v173 = 0xE100000000000000;
        }

        else
        {
          v189 = 0;
          sub_22F21173C(v85);
          v172 = sub_22F740CB0();
          v173 = v90;
          v88 = v180;
        }
      }

      v91 = *v88;
      v92 = v88[1];
      v186 = MEMORY[0x277D84F90];
      v93 = *(v185 + OBJC_IVAR___PGMusicCache_managedObjectContext);
      MEMORY[0x28223BE20](v87);
      *(&v148 - 6) = v91;
      *(&v148 - 5) = v92;
      *(&v148 - 4) = v94;
      *(&v148 - 3) = v55;
      *(&v148 - 2) = &v186;
      v95 = v189;
      sub_22F7417A0();
      if (v95)
      {

        v116 = 0xE100000000000000;
        v171 = 120;
      }

      else
      {
        sub_22F7416A0();
        v171 = MEMORY[0x231900D40](v186, MEMORY[0x277D837D0]);
        v116 = v115;
      }

      v117 = v179;
      v96 = swift_allocObject();
      *(v96 + 16) = v175;
      *(v96 + 32) = v178;
      *(v96 + 40) = v117;
      v97 = swift_allocObject();
      *(v97 + 16) = v174;
      v98 = v161;
      *(v97 + 56) = MEMORY[0x277D837D0];
      *(v97 + 64) = v98;
      *(v97 + 32) = 0x44496D616461;
      *(v97 + 40) = 0xE600000000000000;
      v99 = v159;
      *(v97 + 96) = v160;
      *(v97 + 104) = v99;
      *(v97 + 72) = v96;

      v100 = sub_22F741560();
      v101 = sub_22F2DA3D8(v100);
      v189 = 0;
      v102 = v101;

      if (*(v102 + 16))
      {
        v103 = v164;
        sub_22F15CAA0(v102 + v41, v164);

        v104 = v165;
        sub_22F15CB04(v103, v165);
        v106 = v104[15];
        v105 = v104[16];
        v107 = 63;
        if (!v105)
        {
          v106 = 63;
        }

        *&v175 = v106;
        v108 = 0xE100000000000000;
        if (v105)
        {
          v109 = v105;
        }

        else
        {
          v109 = 0xE100000000000000;
        }

        v176 = v109;
        v110 = v104[18];
        if (v110)
        {
          v107 = v104[17];
        }

        v179 = v107;
        if (v110)
        {
          v108 = v110;
        }

        v185 = v108;
        v111 = v177;
        v112 = *(v104 + *(v177 + 96));
        if (v112 == 2)
        {

          v113 = 0xE100000000000000;
          v114 = 63;
        }

        else
        {
          v186 = 0;
          v187 = 0xE000000000000000;
          if (v112)
          {
            v118 = 1702195828;
          }

          else
          {
            v118 = 0x65736C6166;
          }

          if (v112)
          {
            v119 = 0xE400000000000000;
          }

          else
          {
            v119 = 0xE500000000000000;
          }

          MEMORY[0x231900B10](v118, v119);

          v114 = v186;
          v113 = v187;
        }

        v169 = v114;
        v120 = (v104 + *(v111 + 100));
        v122 = *v120;
        v121 = v120[1];
        v123 = 63;
        if (v121)
        {
          v123 = v122;
        }

        *&v174 = v123;
        v124 = 0xE100000000000000;
        if (v121)
        {
          v124 = v121;
        }

        v178 = v124;

        sub_22F15CBD8(v104);
      }

      else
      {

        v178 = 0xE100000000000000;
        *&v174 = 63;
        v169 = 63;
        v113 = 0xE100000000000000;
        v179 = 63;
        v185 = 0xE100000000000000;
        *&v175 = 63;
        v176 = 0xE100000000000000;
        v111 = v177;
      }

      v186 = 0;
      v187 = 0xE000000000000000;
      sub_22F741B00();
      MEMORY[0x231900B10](0x203A44496D616461, 0xE800000000000000);
      MEMORY[0x231900B10](v91, v92);
      MEMORY[0x231900B10](0x203A656C7469740ALL, 0xE800000000000000);
      v125 = v180;
      v127 = v180[2];
      v126 = v180[3];
      if (v126)
      {
        v128 = v180[2];
      }

      else
      {
        v128 = 63;
      }

      if (v126)
      {
        v129 = v180[3];
      }

      else
      {
        v129 = 0xE100000000000000;
      }

      MEMORY[0x231900B10](v128, v129);

      MEMORY[0x231900B10](0x3A7473697472610ALL, 0xE900000000000020);
      v131 = v125[4];
      v130 = v125[5];
      if (v130)
      {
        v132 = v125[4];
      }

      else
      {
        v132 = 63;
      }

      if (v130)
      {
        v133 = v125[5];
      }

      else
      {
        v133 = 0xE100000000000000;
      }

      MEMORY[0x231900B10](v132, v133);

      MEMORY[0x231900B10](0x203A6D75626C610ALL, 0xE800000000000000);
      v135 = v125[6];
      v134 = v125[7];
      if (v134)
      {
        v136 = v125[6];
      }

      else
      {
        v136 = 63;
      }

      if (v134)
      {
        v137 = v125[7];
      }

      else
      {
        v137 = 0xE100000000000000;
      }

      MEMORY[0x231900B10](v136, v137);

      MEMORY[0x231900B10](0x6173756F72610A0ALL, 0xEB00000000203A6CLL);
      MEMORY[0x231900B10](v152, v167);

      MEMORY[0x231900B10](0x65636E656C61760ALL, 0xEA0000000000203ALL);
      MEMORY[0x231900B10](v151, v158);

      MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F7962B0);
      MEMORY[0x231900B10](v150, v157);

      MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F7962D0);
      MEMORY[0x231900B10](v149, v156);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F7962F0);
      MEMORY[0x231900B10](v148, v155);

      MEMORY[0x231900B10](0x6F4C6F696475610ALL, 0xEE00203A656C6163);
      v138 = v125 + *(v111 + 60);
      v139 = v166;
      sub_22F13BA9C(v138, v166, &qword_27DAB0C90, &unk_22F785B70);
      v140 = sub_22F73F7C0();
      v141 = *(v140 - 8);
      if ((*(v141 + 48))(v139, 1, v140) == 1)
      {
        sub_22F120ADC(v139, &qword_27DAB0C90, &unk_22F785B70);
        v142 = 0xE100000000000000;
        v143 = 63;
      }

      else
      {
        v144 = sub_22F73F6F0();
        v142 = v145;
        (*(v141 + 8))(v139, v140);
        v143 = v144;
      }

      v147 = v182;
      v146 = v183;
      MEMORY[0x231900B10](v143, v142);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F796310);
      MEMORY[0x231900B10](v172, v173);

      MEMORY[0x231900B10](0x696C70784573690ALL, 0xED0000203A746963);
      MEMORY[0x231900B10](v154, v168);

      MEMORY[0x231900B10](0xD000000000000019, 0x800000022F796330);
      MEMORY[0x231900B10](v171, v116);

      MEMORY[0x231900B10](0xD000000000000019, 0x800000022F796350);
      MEMORY[0x231900B10](v153, v170);

      MEMORY[0x231900B10](0x5255676E6F730A0ALL, 0xEF203A687461504CLL);
      MEMORY[0x231900B10](v175, v176);

      MEMORY[0x231900B10](0xD000000000000013, 0x800000022F796370);
      MEMORY[0x231900B10](v179, v185);

      MEMORY[0x231900B10](0xD000000000000021, 0x800000022F796390);
      MEMORY[0x231900B10](v169, v113);

      MEMORY[0x231900B10](0xD000000000000012, 0x800000022F7963C0);
      MEMORY[0x231900B10](v174, v178);

      v29 = v186;
      sub_22F15CBD8(v180);
    }

    else
    {

      sub_22F263F04();
      v29 = swift_allocError();
      v63 = v179;
      *v64 = v178;
      *(v64 + 8) = v63;
      *(v64 + 16) = 0;
      swift_willThrow();
    }
  }

  return v29;
}

void sub_22F263A08(void *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v8 = _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(a3);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
    v14 = [a1 photoLibrary];
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = [v14 librarySpecificFetchOptions];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22F771340;
    v18 = *MEMORY[0x277CD9AA8];
    *(v17 + 32) = sub_22F740E20();
    *(v17 + 40) = v19;
    v20 = sub_22F741160();

    [v16 setFetchPropertySets_];

    [v16 setWantsIncrementalChangeDetails_];
    v21 = [objc_opt_self() fetchAssetsInAssetCollection:a1 options:v16];
    v22 = [v21 fetchedObjects];

    if (v22)
    {
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v23 = sub_22F741180();

      v24 = sub_22F34CE98(v23, a2, v8, a4);
      if (!v4)
      {
        v13 = v24;

        goto LABEL_14;
      }
    }

    else
    {
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v25 = sub_22F740B90();
      __swift_project_value_buffer(v25, qword_2810B4D90);
      v26 = sub_22F740B70();
      v27 = sub_22F7415E0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22F0FC000, v26, v27, "[MemoriesMusic] [Metadata] Extracted assets backing asset collection: 🛑", v28, 2u);
        MEMORY[0x2319033A0](v28, -1, -1);
      }

      sub_22F263F04();
      swift_allocError();
      *v29 = a1;
      *(v29 + 8) = 0;
      *(v29 + 16) = 1;
      swift_willThrow();
      v30 = a1;
    }

LABEL_15:

    return;
  }

  v10 = v9;
  v11 = a1;
  sub_22F2C780C(v10, a2, v8, a4);
  v13 = v12;

  if (v4)
  {
    goto LABEL_15;
  }

LABEL_14:
  sub_22F7416A0();
  v31 = 7104878;
  sub_22F741B00();

  v32 = [a1 uuid];
  if (v32)
  {
    v33 = v32;
    v34 = sub_22F740E20();
    v36 = v35;
  }

  else
  {
    v36 = 0xE300000000000000;
    v34 = 7104878;
  }

  MEMORY[0x231900B10](v34, v36);

  MEMORY[0x231900B10](0x203A656C7469740ALL, 0xE800000000000000);
  v37 = [a1 title];
  v38 = sub_22F740E20();
  v40 = v39;

  MEMORY[0x231900B10](v38, v40);

  MEMORY[0x231900B10](0x6C7469746275730ALL, 0xEB00000000203A65);
  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (v41 && (v42 = [v41 subtitle]) != 0)
  {
    v43 = v42;
    v31 = sub_22F740E20();
    v45 = v44;
  }

  else
  {
    v45 = 0xE300000000000000;
  }

  MEMORY[0x231900B10](v31, v45);

  MEMORY[0x231900B10](2570, 0xE200000000000000);
  v46 = MusicCurationFeatures.description.getter();
  MEMORY[0x231900B10](v46);
}

unint64_t sub_22F263F04()
{
  result = qword_27DAB2BD8;
  if (!qword_27DAB2BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BD8);
  }

  return result;
}

void NodeCollectionBinaryAdjacency.init(sources:relation:targetClass:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [objc_msgSend(a1 graph)];
  swift_unknownObjectRelease();
  v7 = [v6 concreteGraph];

  if (v7)
  {
    v8 = [a1 elementIdentifiers];
    v9 = [v7 adjacencyWithSources:v8 relation:a2];

    swift_unknownObjectRelease();
    *a3 = v9;
    a3[1] = v7;
  }

  else
  {
    sub_22F741D40();
    __break(1u);
  }
}

id NodeCollectionBinaryAdjacency.sources.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(a1 + 16);
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = [v2 sources];
  v7 = [v5 initWithGraph:v3 elementIdentifiers:v6];

  return v7;
}

uint64_t NodeCollectionBinaryAdjacency.enumerateTargetsBySource(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v8;
  *(v9 + 56) = v7;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F264610;
  *(v10 + 24) = v9;
  v14[4] = sub_22F20AE34;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F107F34;
  v14[3] = &block_descriptor_14;
  v11 = _Block_copy(v14);
  v12 = v8;
  swift_unknownObjectRetain();

  [v12 enumerateTargetsBySourceWith_];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a3 + 16);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = v8;
  *(v9 + 56) = v7;
  *(v9 + 64) = &v15;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F264A44;
  *(v10 + 24) = v9;
  v14[4] = sub_22F264C60;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_22F107F34;
  v14[3] = &block_descriptor_13_0;
  v11 = _Block_copy(v14);

  v12 = v8;
  swift_unknownObjectRetain();

  [v12 enumerateTargetsBySourceWith_];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else if (v15)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

id NodeCollectionBinaryAdjacency.targets(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v13 = v5;
  v7 = *(a2 + 16);
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v10 = [v8 initWithGraph:v6 elementIdentifiers:v9];

  v11 = NodeCollectionBinaryAdjacency.targets(for:)(v10, a2);
  swift_unknownObjectRelease();
  return v11;
}

id NodeCollectionBinaryAdjacency.transposed()@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  swift_unknownObjectRetain();
  result = [v4 transposed];
  *a1 = result;
  a1[1] = v3;
  return result;
}

id NodeCollectionBinaryAdjacency.targets.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(a1 + 24);
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = [v2 targets];
  v7 = [v5 initWithGraph:v3 elementIdentifiers:v6];

  return v7;
}

uint64_t NodeCollectionBinaryAdjacency.init(adjacency:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_22F264494(void *a1@<X0>, SEL *a2@<X2>, void *a3@<X8>)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  swift_unknownObjectRetain();
  v9 = [a1 elementIdentifiers];
  v10 = [v8 *a2];

  *a3 = v10;
  a3[1] = v7;
}

uint64_t sub_22F264518(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v14 = [v12 initWithGraph:a7 elementIdentifiers:v13];

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGraph:a7 elementIdentifiers:a2];
  a4(v14, v15, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_22F264610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_22F264518(a1, a2, a3, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F264830(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v14 = [v12 initWithGraph:a7 elementIdentifiers:v13];

  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGraph:a7 elementIdentifiers:a2];
  a4(v14, v15, a3);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

id NodeCollectionBinaryAdjacency.targets(for:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = [a1 elementIdentifiers];
  v7 = [v5 targetsForSources_];

  v8 = *(a2 + 24);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithGraph:v4 elementIdentifiers:v7];

  return v9;
}

uint64_t objectdestroyTm_1(uint64_t a1)
{
  v3 = *(v1 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22F264A44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 64);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  return sub_22F264830(a1, a2, a3, *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
}

id NodeCollectionBinaryAdjacency.union(with:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  swift_unknownObjectRetain();
  result = [v6 unionWith_];
  *a2 = result;
  a2[1] = v5;
  return result;
}

id MAGraphChangeRequest.remove<A>(_:)()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {

    return [v0 removeEdges_];
  }

  else
  {
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000016, 0x800000022F7963E0);
    v3 = sub_22F742240();
    MEMORY[0x231900B10](v3);

    MEMORY[0x231900B10](0xD00000000000003DLL, 0x800000022F796400);
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_22F264BF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id static MusicCurationInflationContext.context(cache:actionSource:shouldForceMetadataRefetch:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___PGMusicCurationInflationContext_cache] = a1;
  v9[OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch] = a4;
  v10 = &v9[OBJC_IVAR___PGMusicCurationInflationContext_actionSource];
  *v10 = a2;
  v10[1] = a3;
  v13.receiver = v9;
  v13.super_class = v4;
  v11 = a1;

  return objc_msgSendSuper2(&v13, sel_init);
}

id MusicCurationInflationContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurationInflationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F264F7C()
{
  v1 = v0;
  v2 = sub_22F14E718(MEMORY[0x277D84F90]);
  if (v1[11] >= 1)
  {
    v3 = v1[2];
    v4 = v1[3];

    v5 = sub_22F740DF0();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v5, 0x6574656D61726170, 0xEE00656D616E5F72, isUniquelyReferenced_nonNull_native);
    sub_22F742010();
    v7 = sub_22F740DF0();

    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v7, 0x5F7463656A627573, 0xEF6E6F6973726576, v8);
    v9 = v1[11];
    v10 = sub_22F7414B0();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v10, 0xD000000000000010, 0x800000022F796880, v11);
    v12 = v1[4];
    v13 = sub_22F741350();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v13, 0xD000000000000011, 0x800000022F7968A0, v14);
    v15 = v1[5];
    v16 = sub_22F741350();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v16, 0x5F6C6C617265766FLL, 0xEE006C6C61636572, v17);
    v18 = v1[10];
    v19 = sub_22F741350();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v19, 0xD000000000000025, 0x800000022F7968C0, v20);
  }

  if (v1[12] >= 1)
  {
    v21 = sub_22F7414B0();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v21, 0xD00000000000001BLL, 0x800000022F796800, v22);
    v23 = v1[6];
    v24 = sub_22F741350();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v24, 0xD000000000000023, 0x800000022F796820, v25);
    v26 = v1[7];
    v27 = sub_22F741350();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v27, 0xD000000000000020, 0x800000022F796850, v28);
  }

  if (v1[13] >= 1)
  {
    v29 = sub_22F7414B0();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v29, 0xD000000000000021, 0x800000022F796780, v30);
    v31 = v1[8];
    v32 = sub_22F741350();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v32, 0xD000000000000021, 0x800000022F7967B0, v33);
    v34 = v1[9];
    v35 = sub_22F741350();
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_22F12FEE8(v35, 0xD00000000000001ELL, 0x800000022F7967E0, v36);
  }

  return v2;
}

uint64_t sub_22F265358()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_22F2653D8()
{
  v1 = (*(v0 + 80))();
  MEMORY[0x231900B10](v1);

  return 0x5F676E696E61654DLL;
}

uint64_t sub_22F265440(void *a1)
{
  if ([a1 type] != 3)
  {
    goto LABEL_10;
  }

  v3 = [a1 additionalInfo];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_22F740CA0();

  if (!*(v5 + 16) || (v6 = sub_22F1229E8(0x4C676E696E61656DLL, 0xEC0000006C656261), (v7 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_22F13A100(*(v5 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  if (v11 == (*(v1 + 80))() && v12 == v8)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F2655C8(char **a1, uint64_t a2, uint64_t a3, void *a4, unint64_t a5)
{
  v58 = a3;
  v10 = sub_22F740E80();
  v11 = *(v10 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22F73F470();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = [objc_allocWithZone(PGPhotosChallengeMeaningAlgorithmWrapper) initWithEvaluationContext_];
  v67 = 0;
  v68 = 0xE000000000000000;
  v18 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_22F741A00())
  {
    v49 = v15;
    v50 = v14;
    v48 = v10;
    v47 = v11;
    v46 = a5;
    v45 = a4;
    v51 = v18;
    if (!result)
    {
      break;
    }

    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v11 = 0;
    v14 = (v5 + 10);
    v15 = v5[10];
    v57 = a1 & 0xC000000000000001;
    a4 = MEMORY[0x277D84F98];
    v20 = &selRef_coworkerScore;
    v54 = result;
    v55 = a1;
    v56 = v5;
    while (1)
    {
      v60 = a4;
      if (v57)
      {
        v21 = MEMORY[0x2319016F0](v11, a1);
      }

      else
      {
        v21 = a1[v11 + 4];
      }

      v22 = v21;
      (v15)();
      v23 = sub_22F740DF0();

      v24 = [v22 v20[436]];
      a1 = v20;
      if (!v24)
      {
        sub_22F740E20();
        v24 = sub_22F740DF0();
      }

      v25 = sub_22F740C80();
      v26 = [v59 predictQuestionStateForMeaningIdentifier:v23 assetUUID:v24 params:v25];

      v10 = v22;
      v27 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v27;
      sub_22F12FBF0(v26, v10, isUniquelyReferenced_nonNull_native);

      v29 = v65;
      v20 = a1;
      v30 = [v10 a1 + 3813];
      v31 = sub_22F740E20();
      v33 = v32;

      v65 = v31;
      v66 = v33;
      a4 = v29;
      v34 = MEMORY[0x231900B10](44, 0xE100000000000000);
      v18 = v56;
      v35 = (v15)(v34);
      a5 = v36;
      v5 = &v65;
      MEMORY[0x231900B10](v35);

      MEMORY[0x231900B10](44, 0xE100000000000000);
      if (!a4[2])
      {
        break;
      }

      v5 = a4;
      v37 = sub_22F122A80(v10);
      a1 = v55;
      if ((v38 & 1) == 0)
      {
        goto LABEL_24;
      }

      ++v11;
      LOWORD(v63) = *(a4[7] + 2 * v37);
      v39 = sub_22F742010();
      MEMORY[0x231900B10](v39);

      MEMORY[0x231900B10](10, 0xE100000000000000);

      MEMORY[0x231900B10](v65, v66);

      if (v54 == v11)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  a4 = MEMORY[0x277D84F98];
LABEL_16:
  v40 = a4;
  if (v51)
  {
    v41 = sub_22F741A00();
  }

  else
  {
    v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v52;
  v42 = v53;
  if (v41 < 1)
  {
  }

  else
  {
    v65 = v45;
    v66 = v46;
    v63 = 0xD000000000000011;
    v64 = 0x800000022F796FA0;
    v61 = 0xD000000000000011;
    v62 = 0x800000022F796FC0;
    sub_22F160DE4();
    sub_22F7418E0();
    sub_22F73F3D0();

    v65 = v67;
    v66 = v68;
    sub_22F740E70();
    sub_22F741900();
    v44 = (v47 + 8);

    (*v44)(v43, v48);

    (*(v49 + 8))(v42, v50);
  }

  return v40;
}

uint64_t sub_22F265C18(unint64_t a1, uint64_t a2)
{
  v33 = [objc_allocWithZone(PGPhotosChallengeMeaningAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_28:
    v3 = sub_22F741A00();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v30 = *(v32 + 80);
      v31 = a1 & 0xC000000000000001;
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      v5 = MEMORY[0x277D84F98];
      v29 = a1;
      while (1)
      {
        if (v31)
        {
          v8 = MEMORY[0x2319016F0](v4, a1);
        }

        else
        {
          if (v4 >= *(v28 + 16))
          {
            goto LABEL_27;
          }

          v8 = *(a1 + 8 * v4 + 32);
        }

        v9 = v8;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v30();
        v11 = sub_22F740DF0();

        v12 = [v9 entityIdentifier];
        if (!v12)
        {
          sub_22F740E20();
          v12 = sub_22F740DF0();
        }

        v13 = [v33 debugInformationForMeaningIdentifier:v11 assetUUID:{v12, v28}];

        v14 = sub_22F740CA0();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = v5;
        a1 = v5;
        v17 = sub_22F122A80(v9);
        v18 = v5[2];
        v19 = (v16 & 1) == 0;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          goto LABEL_25;
        }

        v21 = v16;
        if (v5[3] >= v20)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v5 = v34;
            if (v16)
            {
              goto LABEL_4;
            }
          }

          else
          {
            a1 = &v34;
            sub_22F133A8C();
            v5 = v34;
            if (v21)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_22F125140(v20, isUniquelyReferenced_nonNull_native);
          a1 = v34;
          v22 = sub_22F122A80(v9);
          if ((v21 & 1) != (v23 & 1))
          {
            sub_22F254B18();
            result = sub_22F7420C0();
            __break(1u);
            return result;
          }

          v17 = v22;
          v5 = v34;
          if (v21)
          {
LABEL_4:
            v6 = v5[7];
            v7 = *(v6 + 8 * v17);
            *(v6 + 8 * v17) = v14;

            goto LABEL_5;
          }
        }

        v5[(v17 >> 6) + 8] |= 1 << v17;
        *(v5[6] + 8 * v17) = v9;
        *(v5[7] + 8 * v17) = v14;
        v24 = v5[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_26;
        }

        v5[2] = v26;
LABEL_5:
        ++v4;
        a1 = v29;
        if (v10 == v3)
        {
          goto LABEL_30;
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F98];
LABEL_30:

  return v5;
}

uint64_t sub_22F266450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F266498(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_22F2664F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  sub_22F740D60();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F266570()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x231901D30](*v0);
  sub_22F740D60();

  return sub_22F740D60();
}

uint64_t sub_22F2665E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  sub_22F740D60();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t sub_22F26665C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_22F742040() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_22F742040();
}

unint64_t sub_22F266714()
{
  result = qword_27DAB2BF8;
  if (!qword_27DAB2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2BF8);
  }

  return result;
}

id sub_22F2667C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionCurationEntry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F266818()
{
  v0 = qword_27DAB2C00;

  return v0;
}

id sub_22F266850(id a1, uint64_t *a2)
{
  v4 = objc_opt_self();

  v5 = sub_22F740DF0();

  v6 = [v4 entityForName:v5 inManagedObjectContext:a1];

  if (v6)
  {
    a1 = [objc_allocWithZone(type metadata accessor for CollectionCurationEntry()) initWithEntity:v6 insertIntoManagedObjectContext:a1];

    v7 = *a2;
    v8 = a2[1];
    v9 = sub_22F740DF0();
    [a1 setCollectionId_];

    if (a2[3])
    {
      v10 = a2[2];
      v11 = sub_22F740DF0();
    }

    else
    {
      v11 = 0;
    }

    [a1 setKeySongAdamID_];

    if (a2[5])
    {
      v12 = a2[4];
      v13 = sub_22F740DF0();
    }

    else
    {
      v13 = 0;
    }

    [a1 setKeySongFlexUID_];

    v14 = a2 + *(type metadata accessor for CollectionCuration() + 28);
    v15 = sub_22F73F5B0();
    [a1 setCurationDate_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

unint64_t sub_22F266A18()
{
  result = qword_27DAB2C10;
  if (!qword_27DAB2C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C10);
  }

  return result;
}

char *sub_22F266A70(uint64_t a1)
{
  v2 = sub_22F740270();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = (&v49 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2C18, &qword_22F780E78);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v49 - v10;
  v12 = sub_22F7406B0();
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v64 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v52 = &v49 - v16;
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v17 = sub_22F740B90();
  v55 = __swift_project_value_buffer(v17, qword_2810B4D00);
  v18 = sub_22F740B70();
  v19 = sub_22F7415C0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22F0FC000, v18, v19, "generateGenericLocationExtendedTokens for query tokens has started.", v20, 2u);
    MEMORY[0x2319033A0](v20, -1, -1);
  }

  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(sub_22F73FDA0() - 8);
    v63 = *MEMORY[0x277D3C2B8];
    v50 = (v3 + 16);
    v61 = (v3 + 8);
    v62 = (v3 + 104);
    v59 = (v53 + 48);
    v60 = (v53 + 56);
    v58 = (v53 + 32);
    v23 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v57 = *(v22 + 72);
    v65 = MEMORY[0x277D84F90];
    *&v24 = 136315138;
    v49 = v24;
    v25 = v56;
    v54 = v12;
    while (1)
    {
      v26 = sub_22F73FD50();
      v28 = v27;
      *v25 = sub_22F73FD80();
      (*v62)(v25, v63, v2);
      v29 = sub_22F73FD90();
      if (!v29)
      {
        goto LABEL_13;
      }

      if (!*(v29 + 16))
      {
        break;
      }

      (*v50)(v51, v25, v2);
      sub_22F7406A0();
      (*v61)(v25, v2);
      v30 = 0;
LABEL_17:
      (*v60)(v11, v30, 1, v12);
      if ((*v59)(v11, 1, v12) == 1)
      {
        sub_22F26713C(v11);
      }

      else
      {
        v39 = *v58;
        v40 = v52;
        (*v58)(v52, v11, v12);
        v39(v64, v40, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = sub_22F13EA14(0, *(v65 + 2) + 1, 1, v65);
        }

        v42 = *(v65 + 2);
        v41 = *(v65 + 3);
        if (v42 >= v41 >> 1)
        {
          v65 = sub_22F13EA14(v41 > 1, v42 + 1, 1, v65);
        }

        v43 = v64;
        v44 = v65;
        *(v65 + 2) = v42 + 1;
        v39(&v44[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v42], v43, v12);
        v25 = v56;
      }

      v23 += v57;
      if (!--v21)
      {
        goto LABEL_24;
      }
    }

LABEL_13:
    v31 = v11;
    v32 = v2;

    v33 = sub_22F740B70();
    v34 = sub_22F7415E0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v66 = v36;
      *v35 = v49;
      v37 = sub_22F145F20(v26, v28, &v66);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_22F0FC000, v33, v34, "No assets for generic location query token! Skipping extended token creation for %s.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      v38 = v36;
      v25 = v56;
      MEMORY[0x2319033A0](v38, -1, -1);
      MEMORY[0x2319033A0](v35, -1, -1);
    }

    else
    {
    }

    v2 = v32;
    (*v61)(v25, v32);
    v30 = 1;
    v11 = v31;
    v12 = v54;
    goto LABEL_17;
  }

  v65 = MEMORY[0x277D84F90];
LABEL_24:
  v45 = sub_22F740B70();
  v46 = sub_22F7415C0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_22F0FC000, v45, v46, "generateGenericLocationExtendedTokens for query tokens complete.", v47, 2u);
    MEMORY[0x2319033A0](v47, -1, -1);
  }

  return v65;
}

uint64_t sub_22F26713C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2C18, &qword_22F780E78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

PhotosGraph::LocationIndex::Subdomain_optional __swiftcall LocationIndex.Subdomain.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22F741E30();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t LocationIndex.Subdomain.rawValue.getter()
{
  v1 = 6909808;
  if (*v0 != 1)
  {
    v1 = 6909810;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x687361486F6567;
  }
}

uint64_t sub_22F26725C(_BYTE *a1, _BYTE *a2)
{
  v2 = 6909808;
  v3 = *a1;
  if (v3 == 1)
  {
    v4 = 6909808;
  }

  else
  {
    v4 = 6909810;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x687361486F6567;
  }

  if (v3)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (*a2 != 1)
  {
    v2 = 6909810;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0x687361486F6567;
  }

  if (*a2)
  {
    v8 = 0xE300000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_22F742040();
  }

  return v9 & 1;
}

uint64_t sub_22F26732C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2673C4()
{
  *v0;
  *v0;
  sub_22F740D60();
}

uint64_t sub_22F267448()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

void sub_22F2674E8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 6909808;
  if (v2 != 1)
  {
    v4 = 6909810;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x687361486F6567;
  }

  if (!v5)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

PhotosGraph::LocationIndex::CreationOptions __swiftcall LocationIndex.CreationOptions.init(geoHashSize:positivesOversamplingFactor:negativesOversamplingFactor:)(Swift::Int geoHashSize, Swift::Int positivesOversamplingFactor, Swift::Int negativesOversamplingFactor)
{
  *v3 = geoHashSize;
  v3[1] = positivesOversamplingFactor;
  v3[2] = negativesOversamplingFactor;
  result.negativesOversamplingFactor = negativesOversamplingFactor;
  result.positivesOversamplingFactor = positivesOversamplingFactor;
  result.geoHashSize = geoHashSize;
  return result;
}

uint64_t sub_22F2675D0(uint64_t a1, uint64_t *a2, SEL *a3, void *a4)
{
  v5 = *a2;
  v6 = [objc_opt_self() *a3];
  v7 = sub_22F741420();

  v8 = *(v7 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_22F10B348(*(v7 + 16), 0);
  v10 = sub_22F11A438(&v12, v9 + 4, v8, v7);

  sub_22F0FF590();
  if (v10 != v8)
  {
    __break(1u);
LABEL_4:
    v9 = MEMORY[0x277D84F90];
  }

  v12 = v9;
  sub_22F1AB0EC(&v12);

  *a4 = v12;
  return result;
}

uint64_t static LocationIndex.create(using:with:)(uint64_t a1, uint64_t *a2)
{
  v6 = sub_22F73FE50();
  v229 = *(v6 - 1);
  v7 = *(v229 + 64);
  MEMORY[0x28223BE20](v6);
  v232 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v247 = &v195 - v11;
  MEMORY[0x28223BE20](v12);
  v238 = &v195 - v13;
  MEMORY[0x28223BE20](v14);
  v241 = &v195 - v15;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = (&v195 - v18);
  MEMORY[0x28223BE20](v20);
  v225 = &v195 - v21;
  MEMORY[0x28223BE20](v22);
  v224 = &v195 - v23;
  MEMORY[0x28223BE20](v24);
  v226 = &v195 - v27;
  v223 = *a2;
  if ((v223 - 13) < 0xFFFFFFFFFFFFFFF4)
  {
    sub_22F26B044();
    swift_allocError();
    swift_willThrow();
    return a1;
  }

  v240 = v26;
  v201 = v2;
  v204 = v25;
  isUniquelyReferenced_nonNull_native = a2[1];
  v29 = a2[2];
  if (qword_27DAAFDA8 != -1)
  {
    goto LABEL_97;
  }

LABEL_4:
  v228 = v19;
  v30 = qword_27DAD0E90;
  *&v31 = CACurrentMediaTime();
  sub_22F1B560C("CreateLocationIndex", 19, 2u, v31, 0, v30, v262);
  v260 = MEMORY[0x277D84F98];
  v261 = MEMORY[0x277D84F98];
  v258 = MEMORY[0x277D84F98];
  v259 = MEMORY[0x277D84F98];
  v256 = MEMORY[0x277D84F98];
  v257 = MEMORY[0x277D84F98];
  v254 = MEMORY[0x277D84F98];
  v255 = MEMORY[0x277D84F98];
  sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
  v32 = [swift_getObjCClassFromMetadata() nodesInGraph_];
  v33 = objc_opt_self();
  v34 = v32;
  v246 = v33;
  v35 = v33;
  v36 = v34;
  v37 = [v35 preciseAddressOfMoment];
  v38 = [objc_msgSend(v36 graph)];
  swift_unknownObjectRelease();
  v39 = [v38 concreteGraph];

  if (!v39)
  {
    goto LABEL_112;
  }

  v40 = [v36 elementIdentifiers];
  v41 = [v39 adjacencyWithSources:v40 relation:v37];

  v218 = v36;
  v42 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v43 = [v41 sources];
  v44 = [v42 initWithGraph:v39 elementIdentifiers:v43];

  v45 = swift_allocObject();
  v45[2] = v41;
  v45[3] = v39;
  v45[4] = &v261;
  v45[5] = &v254;
  v45[6] = v223;
  v45[7] = isUniquelyReferenced_nonNull_native;
  v244 = isUniquelyReferenced_nonNull_native;
  *&v245 = v29;
  v45[8] = v29;
  v45[9] = &v260;
  v45[10] = &v255;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_22F26B098;
  *(v46 + 24) = v45;
  v252 = sub_22F15A678;
  v253 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v250 = sub_22F2136B4;
  v251 = &block_descriptor_15;
  v47 = _Block_copy(&aBlock);
  v29 = v253;

  v216 = v41;
  v217 = v39;
  swift_unknownObjectRetain();

  [v44 enumerateUUIDsUsingBlock_];
  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v215 = v45;
  v48 = v44;
  v49 = [v246 poiOfMoment];
  v50 = [objc_msgSend(v48 graph)];
  swift_unknownObjectRelease();
  v51 = [v50 concreteGraph];

  if (!v51)
  {
    goto LABEL_112;
  }

  v52 = [v48 elementIdentifiers];
  v53 = [v51 adjacencyWithSources:v52 relation:v49];

  swift_unknownObjectRetain();
  v3 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
  v54 = [v53 transposed];
  swift_unknownObjectRelease();

  v55 = objc_allocWithZone(PGGraphPOINodeCollection);
  v56 = [v54 sources];
  v57 = [v55 initWithGraph:v51 elementIdentifiers:v56];

  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  *(v58 + 24) = v51;
  *(v58 + 32) = &v261;
  *(v58 + 40) = &v257;
  *(v58 + 48) = &v259;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_22F26B0E8;
  *(v59 + 24) = v58;
  v214 = v58;
  v252 = sub_22F1F68E8;
  v253 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v250 = sub_22F107E24;
  v251 = &block_descriptor_13_1;
  v29 = _Block_copy(&aBlock);

  v60 = v54;
  swift_unknownObjectRetain();

  [v57 enumerateNodesUsingBlock_];

  _Block_release(v29);
  LOBYTE(v58) = swift_isEscapingClosureAtFileLocation();

  if (v58)
  {
    goto LABEL_99;
  }

  v211 = v60;
  v212 = v51;
  v61 = v48;
  v62 = [v246 roiOfMoment];
  v63 = [objc_msgSend(v61 graph)];
  swift_unknownObjectRelease();
  v64 = [v63 concreteGraph];

  if (!v64)
  {
    goto LABEL_112;
  }

  v65 = [v61 elementIdentifiers];
  v66 = [v64 adjacencyWithSources:v65 relation:v62];

  v210 = v61;
  swift_unknownObjectRetain();
  v67 = [v66 transposed];
  swift_unknownObjectRelease();

  v68 = objc_allocWithZone(PGGraphROINodeCollection);
  v69 = [v67 sources];
  v70 = [v68 initWithGraph:v64 elementIdentifiers:v69];

  v71 = swift_allocObject();
  v71[2] = v67;
  v71[3] = v64;
  v71[4] = &v261;
  v71[5] = &v256;
  v71[6] = &v258;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_22F26B14C;
  *(v72 + 24) = v71;
  v252 = sub_22F26B650;
  v253 = v72;
  aBlock = MEMORY[0x277D85DD0];
  v249 = 1107296256;
  v250 = sub_22F107E24;
  v251 = &block_descriptor_23_1;
  v73 = _Block_copy(&aBlock);
  v209 = v67;
  v213 = v64;
  swift_unknownObjectRetain();

  [v70 enumerateNodesUsingBlock_];

  _Block_release(v73);
  LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

  v29 = v228;
  if (v67)
  {
    goto LABEL_100;
  }

  v74 = v260;
  v75 = *(v260 + 16);
  v246 = v6;
  if (v75)
  {
    v3 = sub_22F10B47C(v75, 0);
    v6 = sub_22F120B40(&aBlock, v3 + 4, v75, v74);
    v29 = v250;

    sub_22F0FF590();
    if (v6 != v75)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v29 = v228;
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
  v77 = *(v76 + 48);
  v78 = *(v76 + 52);
  v79 = swift_allocObject();
  v6 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
  sub_22F740830();
  v80 = v244;
  v81 = v245;
  if (v244 < 1 || v245 < 1)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v208 = v71;
  *(v79 + 16) = v3;
  *(v79 + 24) = 1;
  *(v79 + 32) = v80;
  *(v79 + 40) = v81;
  v207 = v79;
  v82 = v259;
  v83 = *(v259 + 16);
  if (v83)
  {
    v3 = sub_22F10B47C(*(v259 + 16), 0);
    v243 = sub_22F120B40(&aBlock, v3 + 4, v83, v82);
    v29 = v249;
    v242 = v252;

    sub_22F0FF590();
    if (v243 == v83)
    {
      v29 = v228;
      v80 = v244;
      goto LABEL_20;
    }

LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:
  v84 = *(v76 + 48);
  v85 = *(v76 + 52);
  v86 = swift_allocObject();
  sub_22F740830();
  *(v86 + 16) = v3;
  *(v86 + 24) = 1;
  v206 = v86;
  v87 = v245;
  *(v86 + 32) = v80;
  *(v86 + 40) = v87;
  v88 = v258;
  v89 = *(v258 + 16);
  if (v89)
  {
    v3 = sub_22F10B47C(*(v258 + 16), 0);
    v90 = sub_22F120B40(&aBlock, v3 + 4, v89, v88);
    v29 = v249;
    v243 = v252;

    sub_22F0FF590();
    if (v90 == v89)
    {
      v29 = v228;
      v80 = v244;
      goto LABEL_24;
    }

LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v3 = MEMORY[0x277D84F90];
LABEL_24:
  v91 = *(v76 + 48);
  v92 = *(v76 + 52);
  v93 = swift_allocObject();
  sub_22F740830();
  *(v93 + 16) = v3;
  *(v93 + 24) = 1;
  v94 = v245;
  *(v93 + 32) = v80;
  *(v93 + 40) = v94;
  v227 = "v24@?0@MANode8^B16";
  v95 = sub_22F740F10();
  v96 = MEMORY[0x277D84F90];
  v205 = v93;
  if (!v95)
  {
    v6 = v246;
    goto LABEL_32;
  }

  v97 = v95;
  aBlock = MEMORY[0x277D84F90];
  sub_22F146454(0, v95 & ~(v95 >> 63), 0);
  v6 = v246;
  if (v97 < 0)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
    goto LABEL_34;
  }

  v96 = aBlock;
  do
  {
    v98 = sub_22F741020();
    aBlock = v96;
    v101 = v96[2];
    v100 = v96[3];
    if (v101 >= v100 >> 1)
    {
      v103 = v98;
      v104 = v99;
      sub_22F146454((v100 > 1), v101 + 1, 1);
      v99 = v104;
      v6 = v246;
      v98 = v103;
      v96 = aBlock;
    }

    v96[2] = v101 + 1;
    v102 = &v96[2 * v101];
    v102[4] = v98;
    v102[5] = v99;
    sub_22F740F20();
    --v97;
  }

  while (v97);
LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2718, &unk_22F7889A0);
  v105 = swift_allocObject();
  v106 = v96[2];

  v108 = sub_22F1515F8(v107);

  v109 = *(v108 + 16);

  if (v106 != v109)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_46:

    swift_deallocPartialClassInstance();

    sub_22F1B2BBC(1);

    a1 = v263;

    return a1;
  }

  *(v105 + 16) = v96;
  v3 = v105;
  if (qword_27DAAFDF8 != -1)
  {
    goto LABEL_106;
  }

LABEL_34:
  v110 = off_27DAB2C20;
  v111 = swift_allocObject();
  v112 = v110[2];
  swift_bridgeObjectRetain_n();
  v113 = sub_22F1515F8(v110);

  v114 = *(v113 + 16);

  if (v112 != v114)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
LABEL_45:

    goto LABEL_46;
  }

  v202 = v111;
  v197 = v110;
  *(v111 + 16) = v110;
  if (qword_27DAAFE00 != -1)
  {
    swift_once();
  }

  v115 = off_27DAB2C28;
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  v116 = v115[2];
  swift_bridgeObjectRetain_n();
  v117 = sub_22F1515F8(v115);

  v118 = *(v117 + 16);

  if (v116 != v118)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F16BC6C(&qword_27DAB2728, &qword_27DAB2720, &qword_22F77AA20);
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_45;
  }

  *(isUniquelyReferenced_nonNull_native + 16) = v115;
  v119 = sub_22F740F10();
  if ((v223 * v119) >> 64 != (v223 * v119) >> 63)
  {
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v198 = v223 * v119;
  sub_22F73FE30();
  v120 = v197[2];
  sub_22F73FE00();
  v196 = v115;
  v121 = v115[2];
  sub_22F73FE00();
  v122 = v261;
  v123 = *(v261 + 16);
  v124 = v247;
  v233 = v3;
  if (v123)
  {
    v3 = isUniquelyReferenced_nonNull_native;
    v125 = sub_22F10B348(v123, 0);
    *&v245 = sub_22F11BAD8(&aBlock, v125 + 4, v123, v122);
    v244 = v252;

    sub_22F0FF590();
    if (v245 != v123)
    {
      goto LABEL_111;
    }

    v29 = v228;
    a1 = v227;
    v126 = v125;
  }

  else
  {
    v126 = MEMORY[0x277D84F90];
    a1 = v227;
  }

  v222 = v126[2];
  if (v222)
  {
    v199 = isUniquelyReferenced_nonNull_native;
    v128 = 0;
    v221 = v126 + 4;
    v19 = (v229 + 8);
    v237 = (v229 + 32);
    v220 = (v229 + 16);
    v203 = v229 + 40;
    v129 = MEMORY[0x277D84F98];
    v219 = v126;
    v245 = xmmword_22F771340;
    while (1)
    {
      if (v128 >= v126[2])
      {
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        swift_once();
        goto LABEL_4;
      }

      v231 = v129;
      v230 = v128;
      v133 = &v221[2 * v128];
      v134 = v133[1];
      v239 = *v133;
      v242 = v134;

      sub_22F73FE40();
      v135 = v255;
      if (!*(v255 + 16))
      {
        goto LABEL_67;
      }

      v136 = sub_22F1229E8(v239, v242);
      if ((v137 & 1) != 0 && (a1 = *(*(v135 + 56) + 8 * v136), *(a1 + 16)))
      {
        v200 = *(a1 + 16);

        sub_22F73FE00();
        v236 = *(a1 + 16);
        if (v236)
        {
          v138 = 0;
          v234 = a1 + 32;
          v235 = a1;
          while (v138 < *(a1 + 16))
          {
            v244 = v138;
            v140 = (v234 + 16 * v138);
            v141 = *v140;
            v142 = v140[1];

            sub_22F73FE40();
            v143 = HIBYTE(v142) & 0xF;
            aBlock = v141;
            v249 = v142;
            if ((v142 & 0x2000000000000000) == 0)
            {
              v143 = v141 & 0xFFFFFFFFFFFFLL;
            }

            v250 = 0;
            v251 = v143;
            v243 = v142;

            v144 = sub_22F740F80();
            v3 = &unk_27DAB1110;
            isUniquelyReferenced_nonNull_native = v240;
            v29 = &unk_22F771270;
            if (v145)
            {
              v146 = v144;
              v147 = v145;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
                inited = swift_initStackObject();
                *(inited + 16) = v245;
                *(inited + 32) = v146;
                v149 = inited + 32;
                *(inited + 40) = v147;

                sub_22F26AF34(inited);
                v124 = v247;
                swift_setDeallocating();
                v150 = v149;
                v6 = v246;
                sub_22F1DF3B0(v150);
                sub_22F73FE10();

                (*v19)(isUniquelyReferenced_nonNull_native, v6);
                v146 = sub_22F740F80();
                v147 = v151;
              }

              while (v151);
            }

            v138 = v244 + 1;

            v139 = v238;
            (*v237)(v238, v124, v6);
            sub_22F73FDE0();

            (*v19)(v139, v6);
            a1 = v235;
            if (v138 == v236)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
          goto LABEL_94;
        }

LABEL_84:

        a1 = v204;
        (*v237)(v204, v241, v6);
        sub_22F73FDD0();
        v29 = v228;
        sub_22F73FE10();
        (*v19)(a1, v6);
      }

      else
      {
LABEL_67:
        sub_22F73FE10();
      }

      v152 = v257;
      if (*(v257 + 16) && (v153 = sub_22F1229E8(v239, v242), (v154 & 1) != 0))
      {
        a1 = *(*(v152 + 56) + 8 * v153);

        v3 = v240;
        sub_22F26AF34(v155);

        sub_22F73FE10();
        (*v19)(v3, v6);
      }

      else
      {
        sub_22F73FE10();
      }

      v156 = v256;
      if (*(v256 + 16) && (v157 = sub_22F1229E8(v239, v242), (v158 & 1) != 0))
      {
        a1 = *(*(v156 + 56) + 8 * v157);

        v3 = v240;
        sub_22F26AF34(v159);

        sub_22F73FE10();
        (*v19)(v3, v6);
      }

      else
      {
        sub_22F73FE10();
      }

      (*v220)(v232, v29, v6);
      v160 = v231;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v160;
      v161 = sub_22F1229E8(v239, v242);
      v163 = v160[2];
      v164 = (v162 & 1) == 0;
      v165 = __OFADD__(v163, v164);
      v166 = v163 + v164;
      if (v165)
      {
        goto LABEL_95;
      }

      v167 = v162;
      if (v160[3] < v166)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_81;
      }

      v174 = v161;
      sub_22F135E28();
      v161 = v174;
      v124 = v247;
      if (v167)
      {
LABEL_51:
        v130 = v161;

        v131 = aBlock;
        v132 = v229;
        (*(v229 + 40))(aBlock[7] + *(v229 + 72) * v130, v232, v6);
        (*(v132 + 8))(v29, v6);
        v129 = v131;
        goto LABEL_52;
      }

LABEL_82:
      v169 = aBlock;
      aBlock[(v161 >> 6) + 8] |= 1 << v161;
      v170 = (v169[6] + 16 * v161);
      v171 = v242;
      *v170 = v239;
      v170[1] = v171;
      a1 = v229;
      (*(v229 + 32))(v169[7] + *(v229 + 72) * v161, v232, v6);
      (*(a1 + 8))(v29, v6);
      v172 = v169[2];
      v165 = __OFADD__(v172, 1);
      v173 = v172 + 1;
      if (v165)
      {
        goto LABEL_96;
      }

      v129 = v169;
      v169[2] = v173;
LABEL_52:
      v128 = v230 + 1;
      a1 = v227;
      v126 = v219;
      if (v230 + 1 == v222)
      {
        v231 = v129;

        goto LABEL_89;
      }
    }

    sub_22F128740(v166, isUniquelyReferenced_nonNull_native);
    v161 = sub_22F1229E8(v239, v242);
    if ((v167 & 1) != (v168 & 1))
    {
      goto LABEL_113;
    }

LABEL_81:
    if (v167)
    {
      goto LABEL_51;
    }

    goto LABEL_82;
  }

  v231 = MEMORY[0x277D84F98];
LABEL_89:
  v175 = sub_22F740F10();
  v176 = v223 * v175;
  if ((v223 * v175) >> 64 != (v223 * v175) >> 63)
  {
    goto LABEL_108;
  }

  v177 = v197[2];
  v165 = __OFADD__(v176, v177);
  v178 = v176 + v177;
  if (v165)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v179 = v196[2];
  v180 = v178 + v179;
  if (__OFADD__(v178, v179))
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    sub_22F741D40();
    __break(1u);
LABEL_113:
    result = sub_22F7420C0();
    __break(1u);
    return result;
  }

  v181 = v240;
  sub_22F73FE40();
  v182 = v226;
  sub_22F73FE10();
  v183 = v224;
  sub_22F73FE10();
  v184 = v225;
  sub_22F73FE10();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v185 = v229;
  v186 = *(v229 + 8);
  v186(v184, v6);
  v186(v183, v6);
  v186(v182, v6);
  v188 = v255;
  v187 = v256;
  v189 = v257;
  v190 = v254;
  v191 = type metadata accessor for LocationIndex();
  v192 = *(v191 + 48);
  v193 = *(v191 + 52);
  a1 = swift_allocObject();
  *(a1 + OBJC_IVAR____TtC11PhotosGraph13LocationIndex_featureVectorLength) = v180;
  *(a1 + 72) = v231;
  (*(v185 + 32))(a1 + OBJC_IVAR____TtC11PhotosGraph13LocationIndex_fallbackFeatureVector, v181, v6);
  *(a1 + 16) = v190;
  *(a1 + 24) = v188;
  *(a1 + 32) = v189;
  *(a1 + 40) = v187;
  v194 = v206;
  *(a1 + 48) = v207;
  *(a1 + 56) = v194;
  *(a1 + 64) = v205;

  sub_22F1B2BBC(0);

  return a1;
}

void sub_22F26962C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, char **a12, uint64_t *a13)
{
  v18 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v72 = a1;
  v19 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v20 = [v18 initWithGraph:a6 elementIdentifiers:v19];

  v21 = [v20 elementIdentifiers];
  v22 = [a5 targetsForSources_];

  v23 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithGraph:a6 elementIdentifiers:v22];
  v73 = v23;
  v24 = [v23 locations];
  sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
  v25 = sub_22F741180();

  v77 = MEMORY[0x277D84F90];
  if (v25 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    v27 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v70 = a7;
    v71 = a8;
    v28 = 0;
    a8 = (v25 & 0xC000000000000001);
    a7 = (v25 & 0xFFFFFFFFFFFFFF8);
    v29 = 0x277D3A000uLL;
    v30 = &selRef_assetIsSafeForWidgetDisplay_;
    v76 = v25 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a8)
      {
        v31 = MEMORY[0x2319016F0](v28, v25);
      }

      else
      {
        if (v28 >= a7[2])
        {
          goto LABEL_32;
        }

        v31 = *(v25 + 8 * v28 + 32);
      }

      v32 = v31;
      v33 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v34 = *(v29 + 3280);
      v35 = objc_opt_self();
      [v32 coordinate];
      if ([v35 v30[169]])
      {
        sub_22F741BA0();
        v36 = a8;
        v37 = i;
        v38 = v25;
        v39 = v30;
        v40 = v29;
        v41 = *(v77 + 16);
        sub_22F741BE0();
        v29 = v40;
        v30 = v39;
        v25 = v38;
        i = v37;
        a8 = v36;
        a7 = v76;
        sub_22F741BF0();
        sub_22F741BB0();
      }

      else
      {
      }

      ++v28;
      if (v33 == i)
      {
        v42 = v77;
        a7 = v70;
        a8 = v71;
        v27 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v42 = MEMORY[0x277D84F90];
LABEL_16:

  if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
  {
    v43 = sub_22F741A00();
    if (v43 > 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v43 = *(v42 + 16);
    if (v43 > 0)
    {
LABEL_19:

      v44 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *a7;
      *a7 = 0x8000000000000000;
      sub_22F1319BC(a2, a3, v72, isUniquelyReferenced_nonNull_native);
      *a7 = v77;

      v46 = *a8;
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v77 = *a8;
      *a8 = 0x8000000000000000;
      sub_22F131994(v42, a2, a3, v47);

      *a8 = v77;
      v77 = v27;
      sub_22F146454(0, v43, 0);
      v48 = 0;
      v49 = v27;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v50 = MEMORY[0x2319016F0](v48, v42);
        }

        else
        {
          v50 = *(v42 + 8 * v48 + 32);
        }

        v51 = v50;
        type metadata accessor for Geohash();
        inited = swift_initStackObject();
        *(inited + 16) = 0;
        *(inited + 24) = 0;
        [v51 coordinate];
        v54 = v53;
        [v51 coordinate];
        v56 = sub_22F34AF8C(a9, v54, v55);
        v58 = v57;

        swift_setDeallocating();
        v59 = *(inited + 16);

        v60 = *(inited + 24);

        v77 = v49;
        v62 = *(v49 + 16);
        v61 = *(v49 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_22F146454((v61 > 1), v62 + 1, 1);
          v49 = v77;
        }

        ++v48;
        *(v49 + 16) = v62 + 1;
        v63 = v49 + 16 * v62;
        *(v63 + 32) = v56;
        *(v63 + 40) = v58;
      }

      while (v43 != v48);

      v64 = sub_22F1515F8(v49);

      sub_22F26B17C(v64, a12, a2, a3);

      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = sub_22F10B348(*(v64 + 16), 0);
        v67 = sub_22F11A438(&v77, v66 + 4, v65, v64);

        sub_22F0FF590();
        if (v67 == v65)
        {
LABEL_30:
          v68 = *a13;
          v69 = swift_isUniquelyReferenced_nonNull_native();
          v77 = *a13;
          *a13 = 0x8000000000000000;
          sub_22F13121C(v66, a2, a3, v69);

          *a13 = v77;

          return;
        }

        __break(1u);
      }

      v66 = MEMORY[0x277D84F90];
      goto LABEL_30;
    }
  }
}

id sub_22F269C24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  result = [a1 label];
  if (result)
  {
    v14 = result;
    v32 = a6;
    v15 = sub_22F740E20();
    v17 = v16;

    v18 = [a1 identifier];
    v19 = objc_allocWithZone(PGGraphPOINodeCollection);
    v20 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
    v21 = [v19 initWithGraph:a4 elementIdentifiers:v20];

    v22 = [v21 elementIdentifiers];
    v23 = [a3 targetsForSources_];

    v24 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v23];
    v34 = MEMORY[0x277D84F90];
    v25 = [v24 elementIdentifiers];
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = &v34;
    v26[4] = v32;
    v26[5] = v15;
    v26[6] = v17;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_22F26B618;
    *(v27 + 24) = v26;
    aBlock[4] = sub_22F21F1BC;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F3618B8;
    aBlock[3] = &block_descriptor_85;
    v28 = _Block_copy(aBlock);

    [v25 enumerateIdentifiersWithBlock_];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v34;

      v30 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = *a7;
      *a7 = 0x8000000000000000;
      sub_22F13121C(v29, v15, v17, isUniquelyReferenced_nonNull_native);

      *a7 = aBlock[0];
    }
  }

  return result;
}

id sub_22F269F34(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  result = [a1 label];
  if (result)
  {
    v14 = result;
    v32 = a6;
    v15 = sub_22F740E20();
    v17 = v16;

    v18 = [a1 identifier];
    v19 = objc_allocWithZone(PGGraphROINodeCollection);
    v20 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
    v21 = [v19 initWithGraph:a4 elementIdentifiers:v20];

    v22 = [v21 elementIdentifiers];
    v23 = [a3 targetsForSources_];

    v24 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:a4 elementIdentifiers:v23];
    v34 = MEMORY[0x277D84F90];
    v25 = [v24 elementIdentifiers];
    v26 = swift_allocObject();
    v26[2] = a5;
    v26[3] = &v34;
    v26[4] = v32;
    v26[5] = v15;
    v26[6] = v17;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_22F26B66C;
    *(v27 + 24) = v26;
    aBlock[4] = sub_22F21F0D4;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F3618B8;
    aBlock[3] = &block_descriptor_75;
    v28 = _Block_copy(aBlock);

    [v25 enumerateIdentifiersWithBlock_];

    _Block_release(v28);
    LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

    if (v28)
    {
      __break(1u);
    }

    else
    {
      v29 = v34;

      v30 = *a7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = *a7;
      *a7 = 0x8000000000000000;
      sub_22F13121C(v29, v15, v17, isUniquelyReferenced_nonNull_native);

      *a7 = aBlock[0];
    }
  }

  return result;
}

uint64_t sub_22F26A244(uint64_t result, uint64_t a2, uint64_t *a3, char **a4, char **a5, uint64_t a6, uint64_t a7)
{
  v7 = *a3;
  if (!*(*a3 + 16))
  {
    return result;
  }

  result = sub_22F122B68(result);
  if ((v12 & 1) == 0)
  {
    return result;
  }

  v13 = (*(v7 + 56) + 16 * result);
  v15 = *v13;
  v14 = v13[1];
  v16 = *a4;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_22F13E1A8(0, *(v16 + 2) + 1, 1, v16);
    *a4 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_22F13E1A8((v18 > 1), v19 + 1, 1, v16);
    *a4 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[16 * v19];
  *(v20 + 4) = v15;
  *(v20 + 5) = v14;
  v21 = *a5;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *a5;
  v38 = *a5;
  *a5 = 0x8000000000000000;
  v25 = sub_22F1229E8(v15, v14);
  v26 = *(v23 + 2);
  v27 = (v24 & 1) == 0;
  v28 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
    __break(1u);
  }

  else
  {
    v29 = v24;
    if (*(v23 + 3) >= v28)
    {
      if ((v22 & 1) == 0)
      {
        sub_22F135844();
        v23 = v38;
      }
    }

    else
    {
      sub_22F127C90(v28, v22);
      v23 = v38;
      v30 = sub_22F1229E8(v15, v14);
      if ((v29 & 1) != (v31 & 1))
      {
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v25 = v30;
    }

    v32 = *a5;
    *a5 = v23;

    v33 = *a5;
    if (v29)
    {
    }

    else
    {
      sub_22F1534CC(v25, v15, v14, MEMORY[0x277D84F90], *a5);
    }

    v14 = *(v33 + 7);
    v23 = *(v14 + 8 * v25);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + 8 * v25) = v23;
    if (v34)
    {
      goto LABEL_18;
    }
  }

  v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
  *(v14 + 8 * v25) = v23;
LABEL_18:
  v36 = *(v23 + 2);
  v35 = *(v23 + 3);
  if (v36 >= v35 >> 1)
  {
    v23 = sub_22F13E1A8((v35 > 1), v36 + 1, 1, v23);
    *(v14 + 8 * v25) = v23;
  }

  *(v23 + 2) = v36 + 1;
  v37 = &v23[16 * v36];
  *(v37 + 4) = a6;
  *(v37 + 5) = a7;
}

uint64_t sub_22F26A4D4(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  if (*a2)
  {
    if (*a2 == 1)
    {
      v5 = sub_22F26B654;
      v6 = 56;
    }

    else
    {
      v5 = sub_22F26B304;
      v6 = 64;
    }
  }

  else
  {
    v5 = sub_22F26B654;
    v6 = 48;
  }

  v7 = *(v2 + v6);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_22F26B658;
  *(v8 + 24) = v3;
  swift_retain_n();
  v9 = sub_22F215A34(a1, 0, v5, v8);

  return v9;
}

uint64_t sub_22F26A5E0(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  if (*a2)
  {
    if (*a2 == 1)
    {
      v5 = 56;
    }

    else
    {
      v5 = 64;
    }
  }

  else
  {
    v5 = 48;
  }

  v6 = *(v2 + v5);
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22F26B30C;
  *(v7 + 24) = v3;
  swift_retain_n();
  v8 = sub_22F216048(a1, 0, sub_22F26B654, v7);

  return v8;
}

uint64_t sub_22F26A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_22F73FE50();
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + 72);
  if (*(v14 + 16) && (v21 = v10, v15 = sub_22F1229E8(a1, a2), v10 = v21, (v16 & 1) != 0))
  {
    (*(v21 + 16))(v13, *(v14 + 56) + *(v21 + 72) * v15, v8);
    return (*(v21 + 32))(a3, v13, v8);
  }

  else
  {
    v18 = *(v10 + 16);
    v19 = v4 + OBJC_IVAR____TtC11PhotosGraph13LocationIndex_fallbackFeatureVector;

    return v18(a3, v19, v8, v11);
  }
}

float sub_22F26A868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  if (!*(v5 + 16))
  {
    return 3.4028e38;
  }

  v8 = sub_22F1229E8(a1, a2);
  if ((v9 & 1) == 0 || !*(v5 + 16))
  {
    return 3.4028e38;
  }

  v10 = *(*(v5 + 56) + 8 * v8);

  v11 = sub_22F1229E8(a3, a4);
  if (v12)
  {
    v13 = *(*(v5 + 56) + 8 * v11);
    if (v10 >> 62)
    {
      goto LABEL_39;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {

      v29 = v10;
      if (!i)
      {
        break;
      }

      v15 = 0;
      v32 = v10 & 0xFFFFFFFFFFFFFF8;
      v33 = v10 & 0xC000000000000001;
      v16 = 3.4028e38;
      v31 = (v10 + 32);
      v10 = &selRef_coworkerScore;
      v30 = i;
      while (1)
      {
        if (v33)
        {
          v17 = MEMORY[0x2319016F0](v15, v29);
        }

        else
        {
          if (v15 >= *(v32 + 16))
          {
            goto LABEL_38;
          }

          v17 = v31[v15];
        }

        v18 = v17;
        if (__OFADD__(v15++, 1))
        {
          break;
        }

        if (v13 >> 62)
        {
          v20 = sub_22F741A00();
          if (v20)
          {
LABEL_16:
            v21 = 0;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v22 = MEMORY[0x2319016F0](v21, v13);
              }

              else
              {
                if (v21 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_36;
                }

                v22 = *(v13 + 8 * v21 + 32);
              }

              v23 = v22;
              v24 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              [v18 distanceFromLocation_];
              v26 = v25;

              v27 = v26;
              if (v16 > v27)
              {
                v16 = v26;
              }

              ++v21;
              if (v24 == v20)
              {
                goto LABEL_9;
              }
            }

            __break(1u);
LABEL_36:
            __break(1u);
            break;
          }
        }

        else
        {
          v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_16;
          }
        }

LABEL_9:

        if (v15 == v30)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      ;
    }

    v16 = 3.4028e38;
LABEL_33:
  }

  else
  {
    v16 = 3.4028e38;
  }

  return v16;
}

uint64_t sub_22F26AAA8()
{
  v1 = *(v0 + 24);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 24);

  for (i = 0; v4; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);

    sub_22F26ABD4(v13, v14, v15, v0);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return 0;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++i;
    if (v4)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F26ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  if (*(v8 + 16) && (v9 = sub_22F1229E8(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(a4 + 40);
  if (*(v12 + 16) && (v13 = sub_22F1229E8(a1, a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  sub_22F741B00();
  MEMORY[0x231900B10](0x5555746E656D6F6DLL, 0xEC000000203A4449);
  MEMORY[0x231900B10](a1, a2);
  MEMORY[0x231900B10](0x61486F6567202D20, 0xEE00203A73656873);
  v16 = MEMORY[0x277D837D0];
  v17 = MEMORY[0x231900D40](a3, MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v17);

  MEMORY[0x231900B10](0x62614C696F70202CLL, 0xED0000203A736C65);
  v18 = MEMORY[0x231900D40](v11, v16);
  v20 = v19;

  MEMORY[0x231900B10](v18, v20);

  MEMORY[0x231900B10](0x62614C696F72202CLL, 0xED0000203A736C65);
  v21 = MEMORY[0x231900D40](v15, v16);
  v23 = v22;

  MEMORY[0x231900B10](v21, v23);

  MEMORY[0x231900B10](10, 0xE100000000000000);
  MEMORY[0x231900B10](0, 0xE000000000000000);
}

char *LocationIndex.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = *(v0 + 6);

  v6 = *(v0 + 7);

  v7 = *(v0 + 8);

  v8 = *(v0 + 9);

  v9 = OBJC_IVAR____TtC11PhotosGraph13LocationIndex_fallbackFeatureVector;
  v10 = sub_22F73FE50();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  return v0;
}

uint64_t LocationIndex.__deallocating_deinit()
{
  LocationIndex.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22F26AF34(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  result = sub_22F73FE00();
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v3 + 40);
    while (v7 < *(v3 + 16))
    {
      v9 = *v8;
      v11[0] = *(v8 - 1);
      v11[1] = v9;
      MEMORY[0x28223BE20](result);
      v10[2] = v11;

      if (sub_22F1C0E04(sub_22F15A388, v10, a1))
      {
        sub_22F73FE80();
      }

      ++v7;

      v8 += 2;
      if (v6 == v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_22F26B044()
{
  result = qword_27DAB2C30;
  if (!qword_27DAB2C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C30);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_2(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_22F26B17C(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v8 = a1 + 56;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  if (v11)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = (*(a1 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v11)))));
      v17 = v16[1];
      v18[0] = *v16;
      v18[1] = v17;

      sub_22F219AC0(v18, a2, a3, v19);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;

      v14 = v15;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
      }

      v11 = *(v8 + 8 * v15);
      ++v14;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for LocationIndex()
{
  result = qword_27DAB2C58;
  if (!qword_27DAB2C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F26B314()
{
  result = qword_27DAB2C40;
  if (!qword_27DAB2C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C40);
  }

  return result;
}

uint64_t sub_22F26B3B4()
{
  result = sub_22F73FE50();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationIndex.CreationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationIndex.CreationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_22F26B5C4()
{
  result = qword_27DAB2C68;
  if (!qword_27DAB2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C68);
  }

  return result;
}

char *sub_22F26B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_27DAAFD80 != -1)
  {
LABEL_37:
    swift_once();
  }

  v6 = qword_27DAD0E70;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("LabelEvents", 11, 2u, v7, 0, v6, v41);
  v8 = *(a1 + 16);
  v9 = sub_22F741670();

  if (v8)
  {
    v10 = 0;
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    v35 = v9 & 0xC000000000000001;
    v12 = a1 + 32;
    v13 = MEMORY[0x277D84F90];
    v36 = v9 >> 62;
    v34 = v8;
    v32 = a1;
    do
    {
      v33 = v13;
      v14 = v12 + 40 * v10;
      v15 = v10;
      while (1)
      {
        if (v15 >= v8)
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_22F15C30C(v14, &v38);
        v16 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_35;
        }

        if (v36)
        {
          v24 = sub_22F741A00();
          v16 = v15 + 1;
          if (v15 == v24)
          {
LABEL_26:

            __swift_destroy_boxed_opaque_existential_0(&v38);
            v13 = v33;
            goto LABEL_29;
          }
        }

        else if (v15 == *(v11 + 16))
        {
          goto LABEL_26;
        }

        v42 = v16;
        if (v35)
        {
          v17 = MEMORY[0x2319016F0](v15, v9);
        }

        else
        {
          if (v15 >= *(v11 + 16))
          {
            goto LABEL_36;
          }

          v17 = *(v9 + 8 * v15 + 32);
        }

        v18 = v17;
        sub_22F100260(&v38, v40);
        v40[5] = v18;
        v19 = objc_autoreleasePoolPush();
        sub_22F26BA28(a3, v40, &v38);
        if (v4)
        {
          objc_autoreleasePoolPop(v19);

          sub_22F1A4394(v40);
          v13 = v33;

          v30 = 1;
          goto LABEL_33;
        }

        v20 = v11;
        v21 = v9;
        objc_autoreleasePoolPop(v19);
        sub_22F1A4394(v40);
        v22 = *(&v38 + 1);
        a1 = v38;
        v23 = v39;
        if (*(&v38 + 1))
        {
          break;
        }

        sub_22F1A43FC(v38, 0);
        ++v15;
        v14 += 40;
        v8 = v34;
        v9 = v21;
        v11 = v20;
        v4 = 0;
        if (v42 == v34)
        {
          v13 = v33;
          goto LABEL_28;
        }
      }

      v25 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_22F13E7A0(0, *(v33 + 2) + 1, 1, v33);
      }

      v27 = *(v25 + 2);
      v26 = *(v25 + 3);
      v28 = v25;
      if (v27 >= v26 >> 1)
      {
        v28 = sub_22F13E7A0((v26 > 1), v27 + 1, 1, v25);
      }

      *(v28 + 2) = v27 + 1;
      v13 = v28;
      v29 = &v28[24 * v27];
      *(v29 + 4) = a1;
      *(v29 + 5) = v22;
      *(v29 + 6) = v23;
      v8 = v34;
      v10 = v42;
      a1 = v32;
      v9 = v21;
      v11 = v20;
      v4 = 0;
    }

    while (v42 != v34);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

LABEL_28:

LABEL_29:
  sub_22F7416A0();
  if (v4)
  {
  }

  v30 = 0;
LABEL_33:
  sub_22F1B2BBC(v30);

  return v13;
}

char *sub_22F26BA28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char **a3@<X8>)
{
  v7 = sub_22F740B90();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[2] = a1;
  result = EspressoEventLabeler.label(event:progressReporter:)(a2);
  if (!v3)
  {
    v13 = result;
    v31 = 0;
    if (qword_27DAAFD80 != -1)
    {
      swift_once();
    }

    sub_22F1B3158(v11);

    v14 = sub_22F740B70();
    v15 = sub_22F7415D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = a3;
      v17 = v16;
      v28 = swift_slowAlloc();
      v32[0] = v28;
      *v17 = 136315138;
      v18 = MEMORY[0x231900D40](v13, &type metadata for EventLabelConfidence);
      v29 = v8;
      v20 = sub_22F145F20(v18, v19, v32);

      *(v17 + 4) = v20;
      _os_log_impl(&dword_22F0FC000, v14, v15, "[EventLabeling] Inferred scores: %s", v17, 0xCu);
      v21 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x2319033A0](v21, -1, -1);
      v22 = v17;
      a3 = v30;
      MEMORY[0x2319033A0](v22, -1, -1);

      (*(v29 + 8))(v11, v7);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    v23 = a2[3];
    v24 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v23);
    v25 = v31;
    result = (*(v24 + 24))(v23, v24);
    if (v25)
    {
    }

    else
    {
      *a3 = result;
      a3[1] = v26;
      a3[2] = v13;
    }
  }

  return result;
}

id EventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EventProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F26BE88(void *a1, id a2)
{
  v35[6] = *MEMORY[0x277D85DE8];
  v5 = [a2 eventLabelingFeaturesCache];
  if (!v5)
  {
    sub_22F26C20C();
    swift_allocError();
    swift_willThrow();
    goto LABEL_9;
  }

  v6 = v5;
  _s11PhotosGraph26EventLabelingConfigurationC10bundlePathSSSgvgZ_0();
  if (!v7)
  {
    sub_22F176594();
    swift_allocError();
    swift_willThrow();
    goto LABEL_8;
  }

  v8 = objc_allocWithZone(PGEventLabelerE5Model);
  v9 = sub_22F212148();
  if (v2)
  {
LABEL_8:

    goto LABEL_9;
  }

  v10 = v9;
  v35[0] = 0;
  v11 = [v9 inputNamesWithError_];
  v12 = v35[0];
  if (!v11)
  {
    v17 = v35[0];
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_8;
  }

  v13 = v11;
  v14 = sub_22F741420();
  v15 = v12;

  sub_22F173D70(v14);

  v32 = v6;
  v31 = [a2 photoLibrary];
  v18 = [a2 graph];
  v19 = type metadata accessor for EventLabelingConfiguration();
  v20 = objc_allocWithZone(v19);
  v21 = a1;
  v22 = [v20 init];
  v35[4] = v19;
  v35[5] = &protocol witness table for EventLabelingConfiguration;
  v35[0] = a2;
  v35[1] = v22;
  v33 = v21;
  sub_22F26C260(v35, v34);
  v23 = a2;
  v24 = sub_22F7416D0();
  v26 = v25;
  v28 = v27;
  sub_22F2E50A0();
  v30 = sub_22F26B670(v29, v26, v10);

  MomentBasedEventLabelWriter.performWrite(clustersWithScoredLabels:progressReporter:)(v30);

  sub_22F26C2BC(v34);

  sub_22F26C2BC(v35);
LABEL_9:
  v16 = *MEMORY[0x277D85DE8];
}

unint64_t sub_22F26C20C()
{
  result = qword_27DAB2C70;
  if (!qword_27DAB2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C70);
  }

  return result;
}

unint64_t sub_22F26C324()
{
  result = qword_27DAB2C78;
  if (!qword_27DAB2C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2C78);
  }

  return result;
}

uint64_t PGUpNextDebugInfoBuilder.wantsVerboseDebugInfo.getter()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PGUpNextDebugInfoBuilder.wantsVerboseDebugInfo.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PGUpNextDebugInfoBuilder.inputDebugInfo.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PGUpNextDebugInfoBuilder.inputDebugInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t PGUpNextDebugInfoBuilder.rootMemoryIsAggregation.getter()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PGUpNextDebugInfoBuilder.rootMemoryIsAggregation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PGUpNextDebugInfoBuilder.rootMemoryNodeUniqueIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t PGUpNextDebugInfoBuilder.rootMemoryNodeUniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_22F26CCCC(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t sub_22F26CD94(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id PGUpNextDebugInfoBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PGUpNextDebugInfoBuilder.init()()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo] = 0;
  v2 = &v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo];
  *v2 = 0xD000000000000013;
  v2[1] = 0x800000022F797260;
  v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation] = 0;
  v3 = &v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_momentUUIDs] = 0;
  *&v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_featureWeightVectors] = 0;
  *&v0[OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs] = MEMORY[0x277D84F90];
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall PGUpNextDebugInfoBuilder.add(suggestionFilteringLog:)(Swift::String suggestionFilteringLog)
{
  object = suggestionFilteringLog._object;
  countAndFlagsBits = suggestionFilteringLog._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
  swift_beginAccess();
  v5 = *(v1 + v4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_22F13E1A8(0, *(v5 + 2) + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_22F13E1A8((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v9 = &v5[16 * v8];
  *(v9 + 4) = countAndFlagsBits;
  *(v9 + 5) = object;
  *(v1 + v4) = v5;
  swift_endAccess();
}

PhotosGraph::PGUpNextDebugInfoBuilder::Keys_optional __swiftcall PGUpNextDebugInfoBuilder.Keys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0xD000000000000015 && 0x800000022F797280 == stringValue._object;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x6265447475706E69 && object == 0xEE006F666E496775 || (sub_22F742040() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0xD00000000000001ELL && 0x800000022F7972A0 == object || (sub_22F742040() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x5555746E656D6F6DLL && object == 0xEB00000000734449 || (sub_22F742040() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0xD000000000000017 && 0x800000022F7972C0 == object || (sub_22F742040() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0xD000000000000014 && 0x800000022F7972E0 == object || (sub_22F742040() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0xD000000000000017 && 0x800000022F797300 == object)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_22F742040();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t PGUpNextDebugInfoBuilder.Keys.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

unint64_t PGUpNextDebugInfoBuilder.Keys.stringValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6265447475706E69;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x5555746E656D6F6DLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_22F26D53C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6265447475706E69;
    if (v1 != 1)
    {
      v5 = 0xD00000000000001ELL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0x5555746E656D6F6DLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22F26D648(uint64_t a1)
{
  v2 = sub_22F26E2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F26D684(uint64_t a1)
{
  v2 = sub_22F26E2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t PGUpNextDebugInfoBuilder.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2CB8, &unk_22F7811F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F26E2E4();
  sub_22F742210();
  v11 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  v12 = *(v3 + v11);
  v50 = 0;
  sub_22F741F90();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = (v3 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];
  v49 = 1;

  sub_22F741F80();

  v17 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryNodeUniqueIdentifier;
  swift_beginAccess();
  v48 = *(v3 + v17);
  LOBYTE(v47) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
  sub_22F26E3E8(&qword_27DAB2CC8, &qword_27DAB1048, &qword_22F78B5C0);
  sub_22F741FE0();
  v18 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_momentUUIDs;
  swift_beginAccess();
  v47 = *(v3 + v18);
  LOBYTE(v46) = 3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2CD0, &unk_22F781200);
  v20 = sub_22F26E338();
  sub_22F741FE0();
  v38 = v20;
  v21 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
  swift_beginAccess();
  v46 = *(v3 + v21);
  v45 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F26E3E8(&qword_2810A92E8, &qword_27DAB0E90, &qword_22F7714A0);
  sub_22F741FE0();
  v22 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_rootMemoryIsAggregation;
  swift_beginAccess();
  v23 = *(v3 + v22);
  v45 = 6;
  sub_22F741F90();
  v24 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_featureWeightVectors;
  swift_beginAccess();
  result = *(v3 + v24);
  if (!result)
  {
    v27 = 0;
LABEL_19:
    v51 = v27;
    v44 = 5;
    sub_22F741FE0();

    return (*(v6 + 8))(v9, v5);
  }

  v25 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_22;
  }

  v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    goto LABEL_19;
  }

  v37 = v25;
  v36 = v19;
  v51 = MEMORY[0x277D84F90];
  v25 = result;

  result = sub_22F146454(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v27 = v51;
    v28 = v25;
    v41 = v25 & 0xC000000000000001;
    v40 = v25;
    v39 = v26;
    while (1)
    {
      if (v41)
      {
        v29 = MEMORY[0x2319016F0](v19, v28);
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v35 = result;
          v26 = sub_22F741A00();
          result = v35;
          goto LABEL_6;
        }

        if (v19 >= *(v37 + 16))
        {
          goto LABEL_21;
        }

        v29 = *(v28 + 8 * v19 + 32);
      }

      v30 = v29;
      v43 = sub_22F26DC94(v29);
      v42 = v31;

      v51 = v27;
      v25 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v25 >= v32 >> 1)
      {
        result = sub_22F146454((v32 > 1), v25 + 1, 1);
        v27 = v51;
      }

      ++v19;
      *(v27 + 16) = v25 + 1;
      v33 = v27 + 16 * v25;
      v34 = v42;
      *(v33 + 32) = v43;
      *(v33 + 40) = v34;
      v28 = v40;
      if (v39 == v19)
      {

        goto LABEL_19;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F26DC94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB23D0, &unk_22F779818);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v7 = &v27 - v6;
  v8 = [a1 wrapper];
  sub_22F73FBC0();

  v9 = sub_22F73FD10();
  (*(v3 + 8))(v7, v2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v31 = MEMORY[0x277D84F90];
    sub_22F146454(0, v10, 0);
    v11 = 32;
    v12 = v31;
    v29 = xmmword_22F771340;
    v13 = MEMORY[0x277D83A90];
    v14 = MEMORY[0x277D83B08];
    do
    {
      v15 = *(v9 + v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v16 = swift_allocObject();
      *(v16 + 16) = v29;
      *(v16 + 56) = v13;
      *(v16 + 64) = v14;
      *(v16 + 32) = v15;
      v17 = sub_22F740E60();
      v31 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        v28 = v17;
        v22 = v18;
        sub_22F146454((v19 > 1), v20 + 1, 1);
        v18 = v22;
        v17 = v28;
        v12 = v31;
      }

      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v11 += 4;
      --v10;
    }

    while (v10);
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  v31 = 91;
  v32 = 0xE100000000000000;
  v30 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v23 = sub_22F740DA0();
  v25 = v24;

  MEMORY[0x231900B10](v23, v25);

  MEMORY[0x231900B10](93, 0xE100000000000000);
  return v31;
}

uint64_t PGUpNextDebugInfoBuilder.debugInfo.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22F740E80();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_wantsVerboseDebugInfo;
  swift_beginAccess();
  if (*(v1 + v4) != 1)
  {
    v8 = (v1 + OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_inputDebugInfo);
    swift_beginAccess();
    v21 = *v8;
    v22 = v8[1];

    MEMORY[0x231900B10](10, 0xE100000000000000);
    v9 = v21;
    v10 = OBJC_IVAR____TtC11PhotosGraph24PGUpNextDebugInfoBuilder_suggestionFilteringLogs;
    swift_beginAccess();
    v11 = *(v1 + v10);
    v12 = *(v11 + 16);
    if (v12)
    {

      v13 = (v11 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;

        MEMORY[0x231900B10](v14, v15);

        MEMORY[0x231900B10](10, 0xE100000000000000);
        v13 += 2;
        --v12;
      }

      while (v12);

      return v21;
    }

    return v9;
  }

  v5 = sub_22F73EFB0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_22F73EFA0();
  sub_22F26E448();
  v16 = sub_22F73EF90();
  v18 = v17;
  sub_22F740E70();
  result = sub_22F740E40();
  if (v20)
  {
    v9 = result;
    sub_22F133BF0(v16, v18);

    return v9;
  }

  __break(1u);
  return result;
}

id PGUpNextDebugInfoBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F26E2E4()
{
  result = qword_27DAB2CC0;
  if (!qword_27DAB2CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CC0);
  }

  return result;
}

unint64_t sub_22F26E338()
{
  result = qword_27DAB2CD8;
  if (!qword_27DAB2CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2CD0, &unk_22F781200);
    sub_22F26E3E8(&qword_2810A92E8, &qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CD8);
  }

  return result;
}

uint64_t sub_22F26E3E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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