uint64_t DatasetColumnDescription.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DatasetColumnDescription.pivot.setter(char a1)
{
  result = type metadata accessor for DatasetColumnDescription();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DatasetColumnDescription.columnName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DatasetColumnDescription.columnType.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DatasetColumnType();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DatasetColumnDescription();
  sub_21B188B7C(v0 + *(v6 + 24), v5, type metadata accessor for DatasetColumnType);
  DynamicType = sub_21B20CCB8();
  v8 = sub_21B20CCE8();
  (*(*(v8 - 8) + 8))(v5, v8);
  if (*(v1 + 16) == 1)
  {
    sub_21B20CE08();
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return DynamicType;
}

uint64_t sub_21B1B3EDC(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for DatasetColumnType();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B188B7C(v1 + *(a1 + 24), v7, type metadata accessor for DatasetColumnType);
  DynamicType = sub_21B20CCB8();
  v9 = sub_21B20CCE8();
  (*(*(v9 - 8) + 8))(v7, v9);
  if (*(v3 + 16) == 1)
  {
    sub_21B20CE08();
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    DynamicType = swift_getDynamicType();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return DynamicType;
}

uint64_t sub_21B1B402C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B1B4FF8(&qword_27CD6EB50, type metadata accessor for DatasetColumnDescription);

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

uint64_t sub_21B1B4124()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1B41D4()
{
  *v0;
  *v0;
  *v0;
  sub_21B20D388();
}

uint64_t sub_21B1B4270()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1B431C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21B1B4FAC();
  *a2 = result;
  return result;
}

void sub_21B1B434C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xE500000000000000;
  v5 = 0x746F766970;
  if (*v1 != 2)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C62616C6C756ELL;
    v2 = 0xE800000000000000;
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

uint64_t sub_21B1B43B8()
{
  v1 = 1701667182;
  v2 = 0x746F766970;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x656C62616C6C756ELL;
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

uint64_t sub_21B1B4420@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B1B4FAC();
  *a1 = result;
  return result;
}

uint64_t sub_21B1B4448(uint64_t a1)
{
  v2 = sub_21B1B4CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1B4484(uint64_t a1)
{
  v2 = sub_21B1B4CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatasetColumnDescription.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for DatasetColumnType();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F5B0, &qword_21B214F20);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for DatasetColumnDescription();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1B4CE0();
  v27 = v10;
  v16 = v28;
  sub_21B20DCD8();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v28 = v3;
  v18 = v6;
  v19 = v25;
  v20 = v26;
  v32 = 0;
  *v14 = sub_21B20D8C8();
  *(v14 + 1) = v21;
  v23 = v21;
  v31 = 1;
  v14[16] = sub_21B20D878() & 1;
  v30 = 2;
  v14[*(v17 + 28)] = sub_21B20D878() & 1;
  v29 = 3;
  sub_21B1B4FF8(&qword_27CD6F5C0, type metadata accessor for DatasetColumnType);
  sub_21B20D918();
  (*(v19 + 8))(v27, v20);
  sub_21B188AC0(v18, &v14[*(v17 + 24)], type metadata accessor for DatasetColumnType);
  sub_21B188B7C(v14, v24, type metadata accessor for DatasetColumnDescription);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_21B17FDE8(v14);
}

uint64_t DatasetColumnDescription.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F5C8, &qword_21B214F28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1B4CE0();
  sub_21B20DD08();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    if (*(v3 + 16) == 1)
    {
      v17[12] = 1;
      sub_21B20D9F8();
    }

    v13 = type metadata accessor for DatasetColumnDescription();
    if (*(v3 + *(v13 + 28)) == 1)
    {
      v14 = v13;
      v17[13] = 2;
      sub_21B20D9F8();
      v13 = v14;
    }

    v15 = *(v13 + 24);
    v17[14] = 3;
    type metadata accessor for DatasetColumnType();
    sub_21B1B4FF8(&qword_27CD6F5D0, type metadata accessor for DatasetColumnType);
    sub_21B20DA48();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Array.partition(on:)()
{
  sub_21B20D248();
  sub_21B20D4C8();

  swift_getWitnessTable();
  result = sub_21B20D708();
  if (v0)
  {
  }

  return result;
}

uint64_t sub_21B1B4B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v13(v10);
  if (!v5 && (v14 & 1) == 0)
  {
    v15 = v14;
    (*(v8 + 16))(v12, a1, a5);
    sub_21B20D4C8();
    sub_21B20D4B8();
    v14 = v15;
  }

  return v14 & 1;
}

uint64_t type metadata accessor for DatasetColumnDescription()
{
  result = qword_27CD6F5E0;
  if (!qword_27CD6F5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B1B4CE0()
{
  result = qword_27CD6F5B8;
  if (!qword_27CD6F5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F5B8);
  }

  return result;
}

uint64_t sub_21B1B4E10()
{
  result = type metadata accessor for DatasetColumnType();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21B1B4EA8()
{
  result = qword_27CD6F5F0;
  if (!qword_27CD6F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F5F0);
  }

  return result;
}

unint64_t sub_21B1B4F00()
{
  result = qword_27CD6F5F8;
  if (!qword_27CD6F5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F5F8);
  }

  return result;
}

unint64_t sub_21B1B4F58()
{
  result = qword_27CD6F600;
  if (!qword_27CD6F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F600);
  }

  return result;
}

uint64_t sub_21B1B4FAC()
{
  v0 = sub_21B20D828();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21B1B4FF8(unint64_t *a1, void (*a2)(uint64_t))
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

PoirotBlocks::DatasetColumnLayout __swiftcall DatasetColumnLayout.init(name:columnDescriptions:)(Swift::String name, Swift::OpaquePointer columnDescriptions)
{
  *v2 = name;
  *(v2 + 16) = columnDescriptions;
  result.name = name;
  result.columnDescriptions = columnDescriptions;
  return result;
}

uint64_t sub_21B1B5058()
{
  if (*v0)
  {
    result = 0x736E6D756C6F63;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t sub_21B1B508C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_21B20DB28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21B20DB28();

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

uint64_t sub_21B1B5168(uint64_t a1)
{
  v2 = sub_21B1B5938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1B51A4(uint64_t a1)
{
  v2 = sub_21B1B5938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DatasetColumnLayout.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DatasetColumnLayout.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F608, &unk_21B2151B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1B5938();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = 0;
  v11 = sub_21B20D868();
  v18[0] = v11;
  v14 = v12;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
  v19 = 1;
  sub_21B1A4798(&qword_27CD6F110, &qword_27CD6F118);
  sub_21B20D918();
  if (v14)
  {
    v16 = v18[0];
  }

  else
  {
    v16 = 0;
  }

  (*(v6 + 8))(v9, v5);
  v17 = v18[1];
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DatasetColumnLayout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F618, &qword_21B2151C0);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1B5938();
  sub_21B20DD08();
  v17 = 0;
  sub_21B20D9E8();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBF0, &unk_21B2115E0);
    sub_21B1A4798(&qword_27CD6EBF8, &qword_27CD6EC00);
    sub_21B20DA48();
  }

  return (*(v14 + 8))(v7, v4);
}

uint64_t static DatasetColumnLayout.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21B20DB28() & 1) == 0)
  {
    return 0;
  }

  return sub_21B1A66B0(v2, v3);
}

uint64_t sub_21B1B5710(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_21B20DB28() & 1) == 0)
  {
    return 0;
  }

  return sub_21B1A66B0(v2, v3);
}

uint64_t sub_21B1B5784(uint64_t a1)
{
  v2 = type metadata accessor for DatasetColumnDescription();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21B18FD70(0, v7, 0);
    v8 = v18;
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_21B17FCC8(v9, v6);
      v18 = v8;
      v12 = *(v8 + 16);
      v11 = *(v8 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21B18FD70((v11 > 1), v12 + 1, 1);
        v8 = v18;
      }

      v16 = v2;
      v17 = sub_21B1A4820(&qword_27CD6EB50);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
      sub_21B17FCC8(v6, boxed_opaque_existential_1);
      *(v8 + 16) = v12 + 1;
      sub_21B17C284(&v15, v8 + 40 * v12 + 32);
      sub_21B17FDE8(v6);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

unint64_t sub_21B1B5938()
{
  result = qword_27CD6F610;
  if (!qword_27CD6F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F610);
  }

  return result;
}

uint64_t DatasetColumnLayout.pivotColumns.getter()
{
  v1 = type metadata accessor for DatasetColumnDescription();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v19 - v8;
  v10 = *(v0 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20 = v6;
    v21 = v1;
    while (v12 < *(v10 + 16))
    {
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = *(v2 + 72);
      sub_21B17FCC8(v10 + v14 + v15 * v12, v9);
      if (v9[*(v1 + 28)] == 1)
      {
        sub_21B1867B4(v9, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21B18FDB0(0, *(v13 + 16) + 1, 1);
          v13 = v22;
        }

        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21B18FDB0(v17 > 1, v18 + 1, 1);
          v13 = v22;
        }

        *(v13 + 16) = v18 + 1;
        v6 = v20;
        result = sub_21B1867B4(v20, v13 + v14 + v18 * v15);
        v1 = v21;
      }

      else
      {
        result = sub_21B17FDE8(v9);
      }

      if (v11 == ++v12)
      {
        return v13;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t DatasetColumnLayout.columnNames.getter()
{
  v1 = type metadata accessor for DatasetColumnDescription();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21B190008(0, v7, 0);
    v8 = v18;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_21B17FCC8(v9, v5);
      v12 = *v5;
      v11 = v5[1];

      sub_21B17FDE8(v5);
      v18 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B190008((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v8;
}

unint64_t sub_21B1B5D1C()
{
  result = qword_27CD6F620;
  if (!qword_27CD6F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F620);
  }

  return result;
}

unint64_t sub_21B1B5D94()
{
  result = qword_27CD6F628;
  if (!qword_27CD6F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F628);
  }

  return result;
}

unint64_t sub_21B1B5DEC()
{
  result = qword_27CD6F630;
  if (!qword_27CD6F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F630);
  }

  return result;
}

unint64_t sub_21B1B5E44()
{
  result = qword_27CD6F638;
  if (!qword_27CD6F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F638);
  }

  return result;
}

uint64_t sub_21B1B6030@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_21B20CCE8();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_21B1B609C()
{
  result = sub_21B1B60BC();
  qword_27CD6F640 = result;
  return result;
}

uint64_t sub_21B1B60BC()
{
  v0 = type metadata accessor for DatasetColumnType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B20CCC8();
  v6 = *(v5 + 16);
  if (v6)
  {
    v18 = MEMORY[0x277D84F90];
    sub_21B190028(0, v6, 0);
    v7 = v18;
    v17 = sub_21B20CCE8();
    v8 = *(v17 - 8);
    v9 = *(v8 + 16);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v16[1] = v5;
    v11 = v5 + v10;
    v12 = *(v8 + 72);
    do
    {
      v9(v4, v11, v17);
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21B190028(v13 > 1, v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_21B1B6CF0(v4, v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v14);
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t static DatasetColumnType.allCases.getter()
{
  if (qword_27CD6E948 != -1)
  {
    swift_once();
  }
}

uint64_t static DatasetColumnType.== infix(_:_:)()
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6EC08, MEMORY[0x277D3E200]);
  sub_21B20D3F8();
  sub_21B20D3F8();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21B20DB28();
  }

  return v1 & 1;
}

uint64_t DatasetColumnType.hash(into:)()
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200]);

  return sub_21B20D288();
}

uint64_t DatasetColumnType.hashValue.getter()
{
  sub_21B20DC88();
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200]);
  sub_21B20D288();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B64CC()
{
  sub_21B20DC88();
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200]);
  sub_21B20D288();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B6554()
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200]);

  return sub_21B20D288();
}

uint64_t sub_21B1B65D8()
{
  sub_21B20DC88();
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F648, MEMORY[0x277D3E200]);
  sub_21B20D288();
  return sub_21B20DCA8();
}

uint64_t sub_21B1B665C@<X0>(void *a1@<X8>)
{
  if (qword_27CD6E948 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CD6F640;
}

uint64_t sub_21B1B66D0()
{
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6EC08, MEMORY[0x277D3E200]);
  sub_21B20D3F8();
  sub_21B20D3F8();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21B20DB28();
  }

  return v1 & 1;
}

uint64_t DatasetColumnType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21B20CCE8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCC8();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_21B1B6A6C(&qword_27CD6F650, MEMORY[0x277D3E200]);
    sub_21B20DB68();
    (*(v6 + 32))(a2, v9, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DatasetColumnType.encode(to:)(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCF8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F658, MEMORY[0x277D3E200]);
  sub_21B20DBB8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_21B1B6A6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for DatasetColumnType()
{
  result = qword_27CD6F678;
  if (!qword_27CD6F678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21B1B6B04()
{
  result = qword_27CD6F668;
  if (!qword_27CD6F668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD6F670, &qword_21B215498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F668);
  }

  return result;
}

uint64_t sub_21B1B6B80(void *a1)
{
  v1 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B20DCF8();
  __swift_mutable_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21B20CCE8();
  sub_21B1B6A6C(&qword_27CD6F658, MEMORY[0x277D3E200]);
  sub_21B20DBB8();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_21B1B6C84()
{
  result = sub_21B20CCE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B1B6CF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1B6D54(uint64_t a1)
{
  result = MEMORY[0x21CEEBD20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_21B1B9C24(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DatasetDescription.add(_:)(PoirotBlocks::DatasetColumnLayout a1)
{
  v2 = *a1.name._countAndFlagsBits;
  v3 = *(a1.name._countAndFlagsBits + 8);
  v4 = *(a1.name._countAndFlagsBits + 16);
  swift_bridgeObjectRetain_n();

  v5 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  *v1 = 0x8000000000000000;
  sub_21B1BB4EC(v2, v3, v4, v2, v3, isUniquelyReferenced_nonNull_native);

  *v1 = v7;
}

unint64_t DatasetDescription.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *v3;
  if (*(v5 + 16) && (result = sub_21B1B9778(result, a2), (v6 & 1) != 0))
  {
    v7 = (*(v5 + 56) + 24 * result);
    v8 = v7[1];
    v9 = v7[2];
    *a3 = *v7;
    a3[1] = v8;
    a3[2] = v9;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

uint64_t DatasetDescription.layoutNames.getter()
{
  v1 = *v0;

  return sub_21B1B6D54(v2);
}

PoirotBlocks::DatasetDescription __swiftcall DatasetDescription.init()()
{
  v1 = v0;
  result.layouts._rawValue = sub_21B197C00(MEMORY[0x277D84F90]);
  v1->layouts._rawValue = result.layouts._rawValue;
  return result;
}

uint64_t DatasetDescription.forEach(_:)(void (*a1)(uint64_t, uint64_t, void *))
{
  v3 = v2;
  v4 = *v1 + 64;
  v5 = 1 << *(*v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v1 + 64);
  v8 = (v5 + 63) >> 6;
  v21 = *v1;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v21 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = (*(v21 + 56) + 24 * v12);
      v17 = v16[1];
      v18 = v16[2];
      v20[0] = *v16;
      v20[1] = v17;
      v20[2] = v18;

      a1(v14, v15, v20);
      if (v3)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
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
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1B717C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatasetColumnDescription();
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = &v47 - v11;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v13 = 0;
  v14 = *(a1 + 64);
  v50 = a1 + 64;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v51 = v18;
  v52 = a2;
  if (v17)
  {
    do
    {
      v19 = __clz(__rbit64(v17));
      v53 = (v17 - 1) & v17;
LABEL_12:
      v22 = v19 | (v13 << 6);
      v23 = (*(a1 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = (*(a1 + 56) + 24 * v22);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];

      v54 = v28;

      if (!v24)
      {
        return 1;
      }

      v30 = v52;
      v31 = sub_21B1B9778(v25, v24);
      v33 = v32;

      if ((v33 & 1) == 0 || ((v34 = (*(v30 + 56) + 24 * v31), v35 = v34[1], v36 = v34[2], *v34 == v27) ? (v37 = v54 == v35) : (v37 = 0), !v37 && (v38 = v34[1], (sub_21B20DB28() & 1) == 0) || (v39 = *(v36 + 16), v39 != *(v29 + 16))))
      {

LABEL_32:

        return 0;
      }

      if (v39 && v36 != v29)
      {
        v48 = a1;
        v40 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v41 = v35;
        v42 = v36 + v40;
        v43 = v29 + v40;
        v49 = v41;

        v44 = 0;
        while (v44 < *(v36 + 16))
        {
          v45 = *(v56 + 72) * v44;
          result = sub_21B17FCC8(v42 + v45, v12);
          if (v44 >= *(v29 + 16))
          {
            goto LABEL_37;
          }

          sub_21B17FCC8(v43 + v45, v9);
          sub_21B1BC1A4();
          v46 = sub_21B20D2A8();
          sub_21B17FDE8(v9);
          result = sub_21B17FDE8(v12);
          if ((v46 & 1) == 0)
          {

            goto LABEL_32;
          }

          if (v39 == ++v44)
          {

            a1 = v48;
            goto LABEL_28;
          }
        }

        goto LABEL_36;
      }

LABEL_28:

      v18 = v51;
      v17 = v53;
    }

    while (v53);
  }

  v20 = v13;
  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return 1;
    }

    v21 = *(v50 + 8 * v13);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_21B1B7508(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_21B1B9778(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_21B20DB28();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1B76AC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
LABEL_192:
    *&v4 = 1;
    return *&v4;
  }

  v6 = a2;
  v7 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_245;
  }

  v8 = 0;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v268 = a2;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (v11)
        {
          v13 = __clz(__rbit64(v11));
          v269 = (v11 - 1) & v11;
        }

        else
        {
          v14 = v8;
          do
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              __break(1u);
LABEL_197:
              sub_21B1A7C74(a1, a2, v5);
              sub_21B1A7C74(*&v4, v6, 0);
              sub_21B1A7C90(*&v4, v6, 0);
              sub_21B1A7C90(v3, *&v2, v5);
              v5 = v271;
              LOBYTE(v3) = v264;
              goto LABEL_241;
            }

            if (v8 >= v12)
            {
              goto LABEL_192;
            }

            v15 = *(v7 + 64 + 8 * v8);
            ++v14;
          }

          while (!v15);
          v13 = __clz(__rbit64(v15));
          v269 = (v15 - 1) & v15;
        }

        v16 = v13 | (v8 << 6);
        v17 = (*(v7 + 48) + 16 * v16);
        v18 = *v17;
        v19 = v17[1];
        v20 = *(v7 + 56) + 24 * v16;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);

        v270 = v21;
        sub_21B1A7C74(v22, v21, v23);
        *&v4 = v19 == 0;
        if (!v19)
        {
          return *&v4;
        }

        v271 = v22;
        v2 = COERCE_DOUBLE(sub_21B1B9778(v18, v19));
        v25 = v24;

        if ((v25 & 1) == 0)
        {
          v5 = v271;
          goto LABEL_244;
        }

        v26 = *(v6 + 56) + 24 * *&v2;
        v27 = *(v26 + 8);
        v272 = *v26;
        v3 = *(v26 + 16);
        if (*(v26 + 16) <= 2u)
        {
          break;
        }

        v5 = v271;
        if (v3 == 3)
        {
          sub_21B1A7C90(v272, v27, 3u);
          if (v23 != 3)
          {
            goto LABEL_244;
          }

          a1 = sub_21B1A7C90(v271, v270, 3u);
          v32 = v272 == v271;
          goto LABEL_32;
        }

        if (v3 == 4)
        {
          if (v23 != 4)
          {
            goto LABEL_243;
          }

          sub_21B1A7C90(v272, v27, 4u);
          a1 = sub_21B1A7C90(v271, v270, 4u);
          v32 = *&v272 == *&v271;
LABEL_32:
          v11 = v269;
          if (!v32)
          {
            return *&v4;
          }
        }

        else
        {
          sub_21B1A7C90(v272, v27, 5u);
          if (v23 != 5)
          {
            goto LABEL_244;
          }

          a1 = sub_21B1A7C90(v271, v270, 5u);
          v11 = v269;
          if ((v272 ^ v271))
          {
            return *&v4;
          }
        }
      }

      v5 = v271;
      if (!*(v26 + 16))
      {
        if (v23)
        {
          goto LABEL_194;
        }

        v2 = *v26;
        v3 = *(v26 + 8);
        sub_21B1A7C74(v272, v27, 0);
        sub_21B1A7C74(v272, v3, 0);
        sub_21B1A7C74(v271, v270, 0);
        v33 = sub_21B1B76AC(v272, v271);
        sub_21B1A7C90(v271, v270, 0);
        sub_21B1A7C90(v272, v3, 0);
        sub_21B1A7C90(v272, v3, 0);
        v34 = v271;
        v35 = v270;
        v6 = v268;
        v36 = 0;
        goto LABEL_40;
      }

      if (v3 == 1)
      {
        break;
      }

      if (v23 != 2)
      {
LABEL_194:
        v162 = *(v26 + 8);

        v27 = v162;
        goto LABEL_243;
      }

      v29 = v270;
      if (v272 == v271 && v27 == v270)
      {

        sub_21B1A7C90(v271, v270, 2u);
        goto LABEL_47;
      }

      v3 = *(v26 + 8);
      v2 = *&v270;
      LOBYTE(v33) = sub_21B20DB28();

      v6 = v268;
      sub_21B1A7C90(v272, v3, 2u);
      v34 = v271;
      v35 = v270;
      v36 = 2;
LABEL_40:
      a1 = sub_21B1A7C90(v34, v35, v36);
      v11 = v269;
      if ((v33 & 1) == 0)
      {
        return *&v4;
      }
    }

    if (v23 != 1)
    {
      goto LABEL_194;
    }

    v28 = *(v272 + 16);
    if (v28 != *(v271 + 16))
    {
      LOBYTE(v23) = 1;
      v163 = *(v26 + 8);
      sub_21B1A7C74(v272, v27, 1u);
      goto LABEL_242;
    }

    if (v28)
    {
      break;
    }

    v2 = *v26;
    v4 = *(v26 + 8);
    sub_21B1A7C74(v272, v27, 1u);
    sub_21B1A7C90(v272, *&v4, 1u);
    v29 = v270;
LABEL_47:
    a1 = sub_21B1A7C90(v5, v29, v3);
    v11 = v269;
  }

  v267 = *(v272 + 16);
  v29 = v270;
  if (v272 == v271)
  {
    v2 = *(v26 + 8);
    sub_21B1A7C74(v271, v27, 1u);
    v30 = v271;
    v31 = *&v2;
LABEL_23:
    sub_21B1A7C90(v30, v31, 1u);
    goto LABEL_47;
  }

  v38 = *(v26 + 8);
  sub_21B1A7C74(v272, v27, 1u);
  sub_21B1A7C74(v272, v38, 1u);
  sub_21B1A7C74(v271, v270, 1u);
  v251 = v38;
  sub_21B1A7C74(v272, v38, 1u);
  v39 = sub_21B1A7C74(v271, v270, 1u);
  v43 = 0;
  v264 = 1;
LABEL_52:
  v44 = *(v272 + 16);
  if (v43 >= v44)
  {
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    v218 = v39;
    v219 = v40;
    v190 = v44;
    v191 = v42;
    v192 = v41;
    sub_21B1A7C74(v44, v41, v42);
    v193 = v218;
    v194 = v219;
    v195 = 3;
LABEL_230:
    sub_21B1A7C90(v193, v194, v195);
    sub_21B1A7C90(v190, v192, v191);
LABEL_231:
    v216 = v240;
    v215 = v241;
    sub_21B1A7C90(v240, v241, 1u);
    v214 = v253;
LABEL_232:
    v217 = v242;
    sub_21B1A7C90(v214, v242, 1u);
LABEL_233:
    sub_21B1A7C90(v214, v217, 1u);
    sub_21B1A7C90(v216, v215, 1u);
    sub_21B1A7C90(v216, v215, 1u);
    v206 = v214;
    v207 = v217;
    v211 = 1;
    goto LABEL_234;
  }

  v44 = *(v5 + 16);
  if (v43 >= v44)
  {
    goto LABEL_225;
  }

  v45 = v272 + 32 + 24 * v43;
  v4 = *v45;
  v46 = *(v45 + 8);
  v47 = *(v45 + 16);
  v48 = v271 + 32 + 24 * v43;
  v49 = *v48;
  v50 = *(v48 + 8);
  LODWORD(v5) = *(v48 + 16);
  if (v47 > 2)
  {
    if (v47 == 3)
    {
      if (v5 == 3)
      {
        sub_21B1A7C90(*v45, v46, 3u);
        v39 = sub_21B1A7C90(v49, v50, 3u);
        v5 = v271;
        if (*&v4 != v49)
        {
          goto LABEL_241;
        }

        goto LABEL_83;
      }

      v170 = *(v45 + 8);
      sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
      v165 = *&v4;
      v166 = v170;
      v167 = 3;
    }

    else if (v47 == 4)
    {
      if (v5 == 4)
      {
        v55 = *v48;
        sub_21B1A7C90(*v45, v46, 4u);
        v39 = sub_21B1A7C90(v49, v50, 4u);
        v5 = v271;
        if (v4 != *&v49)
        {
          goto LABEL_241;
        }

        goto LABEL_83;
      }

      v169 = *(v45 + 8);
      sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
      v165 = *&v4;
      v166 = v169;
      v167 = 4;
    }

    else
    {
      if (v5 == 5)
      {
        sub_21B1A7C90(*v45, v46, 5u);
        v39 = sub_21B1A7C90(v49, v50, 5u);
        v5 = v271;
        if ((v49 ^ LODWORD(v4)))
        {
          goto LABEL_241;
        }

        goto LABEL_83;
      }

      v168 = *(v45 + 8);
      sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
      v165 = *&v4;
      v166 = v168;
      v167 = 5;
    }

LABEL_203:
    sub_21B1A7C90(v165, v166, v167);
    sub_21B1A7C90(v49, v50, v5);
    v5 = v271;
    goto LABEL_241;
  }

  if (!*(v45 + 16))
  {
    v3 = *v48;
    v2 = *(v48 + 8);
    v6 = *(v45 + 8);
    a1 = *v48;
    a2 = *&v2;
    if (*(v48 + 16))
    {
      goto LABEL_197;
    }

    sub_21B1A7C74(a1, *&v2, 0);
    sub_21B1A7C74(*&v4, v6, 0);
    sub_21B1A7C74(v3, *&v2, 0);
    sub_21B1A7C74(*&v4, v6, 0);
    v56 = *&v4;
    v57 = sub_21B1B76AC(*&v4, v3);
    sub_21B1A7C90(v56, v6, 0);
    sub_21B1A7C90(v3, *&v2, 0);
    sub_21B1A7C90(v3, *&v2, 0);
    v39 = sub_21B1A7C90(v56, v6, 0);
    v5 = v271;
    v3 = 1;
    if ((v57 & 1) == 0)
    {
      goto LABEL_241;
    }

    goto LABEL_83;
  }

  if (v47 != 1)
  {
    if (v5 == 2)
    {
      if (*&v4 == v49 && v46 == v50)
      {
        v260 = v47;
        v65 = *(v45 + 8);
        sub_21B1A7C74(*&v4, v46, 2u);
        sub_21B1A7C74(*&v4, v65, 2u);
        sub_21B1A7C90(*&v4, v65, 2u);
        v5 = v271;
        v39 = sub_21B1A7C90(*&v4, v65, v260);
      }

      else
      {
        v59 = *v48;
        v60 = *(v48 + 8);
        v61 = *(v45 + 8);
        v62 = *v45;
        v63 = sub_21B20DB28();
        sub_21B1A7C74(v59, v60, 2u);
        sub_21B1A7C74(v62, v61, 2u);
        sub_21B1A7C90(v62, v61, 2u);
        v64 = v59;
        v3 = 1;
        v39 = sub_21B1A7C90(v64, v60, 2u);
        v5 = v271;
        if ((v63 & 1) == 0)
        {
          goto LABEL_241;
        }
      }

      goto LABEL_83;
    }

    v171 = *(v45 + 8);
    sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
    sub_21B1A7C74(*&v4, v171, 2u);
    v165 = *&v4;
    v166 = v171;
    v167 = 2;
    goto LABEL_203;
  }

  if (v5 != 1)
  {
    v164 = *(v45 + 8);
    sub_21B1A7C74(*v48, *(v48 + 8), *(v48 + 16));
    sub_21B1A7C74(*&v4, v164, 1u);
    v165 = *&v4;
    v166 = v164;
    v167 = 1;
    goto LABEL_203;
  }

  v51 = *(*&v4 + 16);
  if (v51 != *(v49 + 16))
  {
    v172 = v46;
    sub_21B1A7C74(v49, v50, 1u);
    sub_21B1A7C74(*&v4, v172, 1u);
    sub_21B1A7C74(v49, v50, 1u);
    sub_21B1A7C74(*&v4, v172, 1u);
    goto LABEL_240;
  }

  v259 = *(v48 + 8);
  v5 = v271;
  v265 = *(*&v4 + 16);
  if (!v51)
  {
    v53 = v46;
    v54 = *v48;
    v52 = *(v48 + 8);
    sub_21B1A7C74(*v48, v259, 1u);
    sub_21B1A7C74(*&v4, v53, 1u);
    sub_21B1A7C74(v54, v259, 1u);
    sub_21B1A7C74(*&v4, v53, 1u);
    goto LABEL_82;
  }

  v250 = v46;
  if (*&v4 == v49)
  {
    v52 = *(v48 + 8);
    sub_21B1A7C74(*&v4, v50, 1u);
    v53 = v250;
    sub_21B1A7C74(*&v4, v250, 1u);
    sub_21B1A7C74(*&v4, v259, 1u);
    sub_21B1A7C74(*&v4, v250, 1u);
    v54 = *&v4;
    goto LABEL_82;
  }

  v262 = *&v4 + 32;
  v261 = v49 + 32;
  v266 = *v48;
  sub_21B1A7C74(v49, v50, 1u);
  sub_21B1A7C74(*&v4, v250, 1u);
  sub_21B1A7C74(v49, v50, 1u);
  sub_21B1A7C74(*&v4, v250, 1u);
  sub_21B1A7C74(v49, v50, 1u);
  *&v263 = v4;
  result = sub_21B1A7C74(*&v4, v250, 1u);
  v67 = 0;
LABEL_89:
  if (v67 >= *(v263 + 16))
  {
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
    return result;
  }

  if (v67 >= *(v266 + 16))
  {
    goto LABEL_248;
  }

  v69 = v262 + 24 * v67;
  v71 = *v69;
  v70 = *(v69 + 8);
  LODWORD(v72) = *(v69 + 16);
  v73 = v261 + 24 * v67;
  v75 = *v73;
  v74 = *(v73 + 8);
  v76 = *(v73 + 16);
  if (v72 > 2)
  {
    if (v72 == 3)
    {
      if (v76 == 3)
      {
        v90 = *v73;
        v91 = v67;
        v92 = *(v73 + 8);
        sub_21B1A7C90(v71, v70, 3u);
        v93 = v92;
        v67 = v91;
        result = sub_21B1A7C90(v90, v93, 3u);
        if (v71 != v90)
        {
          goto LABEL_239;
        }

        goto LABEL_88;
      }

      v184 = v70;
      v174 = *v73;
      v175 = *(v73 + 8);
      sub_21B1A7C74(*v73, v175, *(v73 + 16));
      v176 = v71;
      v177 = v184;
      v178 = 3;
    }

    else if (v72 == 4)
    {
      if (v76 == 4)
      {
        v80 = *&v71;
        v81 = *v73;
        v82 = v71;
        v83 = *v73;
        v84 = v67;
        v85 = *(v73 + 8);
        sub_21B1A7C90(v82, v70, 4u);
        v86 = v85;
        v67 = v84;
        result = sub_21B1A7C90(v83, v86, 4u);
        if (v80 != v81)
        {
          goto LABEL_239;
        }

        goto LABEL_88;
      }

      v173 = v70;
      v174 = *v73;
      v175 = *(v73 + 8);
      sub_21B1A7C74(*v73, v175, *(v73 + 16));
      v176 = v71;
      v177 = v173;
      v178 = 4;
    }

    else
    {
      if (v76 == 5)
      {
        v100 = *v73;
        v101 = v67;
        v102 = *(v73 + 8);
        sub_21B1A7C90(v71, v70, 5u);
        v103 = v102;
        v67 = v101;
        result = sub_21B1A7C90(v100, v103, 5u);
        if ((v100 ^ v71))
        {
          goto LABEL_239;
        }

        goto LABEL_88;
      }

      v181 = v70;
      v174 = *v73;
      v175 = *(v73 + 8);
      sub_21B1A7C74(*v73, v175, *(v73 + 16));
      v176 = v71;
      v177 = v181;
      v178 = 5;
    }

    goto LABEL_211;
  }

  if (!v72)
  {
    v255 = v67;
    v87 = v70;
    if (*(v73 + 16))
    {
      v182 = *v73;
      v175 = *(v73 + 8);
      sub_21B1A7C74(v75, v74, v76);
      sub_21B1A7C74(v71, v87, 0);
      sub_21B1A7C90(v71, v87, 0);
      v183 = v182;
LABEL_212:
      v185 = v175;
      v186 = v76;
      goto LABEL_238;
    }

    v88 = *v73;
    v89 = *(v73 + 8);
    sub_21B1A7C74(v75, v74, 0);
    sub_21B1A7C74(v71, v87, 0);
    sub_21B1A7C74(v88, v89, 0);
    sub_21B1A7C74(v71, v87, 0);
    v257 = sub_21B1B76AC(v71, v88);
    sub_21B1A7C90(v71, v87, 0);
    sub_21B1A7C90(v88, v89, 0);
    sub_21B1A7C90(v88, v89, 0);
    result = sub_21B1A7C90(v71, v87, 0);
    v67 = v255;
    goto LABEL_115;
  }

  if (v72 != 1)
  {
    if (v76 != 2)
    {
      v179 = v70;
      v174 = *v73;
      v175 = *(v73 + 8);
      sub_21B1A7C74(*v73, v175, *(v73 + 16));
      sub_21B1A7C74(v71, v179, 2u);
      v176 = v71;
      v177 = v179;
      v178 = 2;
LABEL_211:
      sub_21B1A7C90(v176, v177, v178);
      v183 = v174;
      goto LABEL_212;
    }

    if (v71 == v75 && v70 == v74)
    {
      v68 = v70;
      sub_21B1A7C74(v71, v70, 2u);
      sub_21B1A7C74(v71, v68, 2u);
      sub_21B1A7C90(v71, v68, 2u);
      goto LABEL_87;
    }

    v256 = v67;
    v95 = v70;
    v96 = *v73;
    v97 = v71;
    v98 = *(v73 + 8);
    v257 = sub_21B20DB28();
    sub_21B1A7C74(v96, v98, 2u);
    sub_21B1A7C74(v97, v95, 2u);
    v99 = v95;
    v67 = v256;
    sub_21B1A7C90(v97, v99, 2u);
    result = sub_21B1A7C90(v96, v98, 2u);
LABEL_115:
    if ((v257 & 1) == 0)
    {
      goto LABEL_239;
    }

    goto LABEL_88;
  }

  if (v76 != 1)
  {
    v180 = v70;
    v174 = *v73;
    v175 = *(v73 + 8);
    sub_21B1A7C74(*v73, v175, *(v73 + 16));
    sub_21B1A7C74(v71, v180, 1u);
    v176 = v71;
    v177 = v180;
    v178 = 1;
    goto LABEL_211;
  }

  v77 = *(v71 + 16);
  if (v77 != *(v75 + 16))
  {
    v187 = v70;
    v188 = *v73;
    v189 = *(v73 + 8);
    sub_21B1A7C74(v75, v74, 1u);
    sub_21B1A7C74(v71, v187, 1u);
    sub_21B1A7C74(v188, v189, 1u);
    sub_21B1A7C74(v71, v187, 1u);
    goto LABEL_237;
  }

  v239 = *(v73 + 8);
  v254 = v67;
  if (!v77)
  {
    v68 = v70;
    v79 = *v73;
    sub_21B1A7C74(v75, v74, 1u);
    sub_21B1A7C74(v71, v68, 1u);
    sub_21B1A7C74(v79, v239, 1u);
    sub_21B1A7C74(v71, v68, 1u);
    goto LABEL_121;
  }

  v238 = v70;
  if (v71 == v75)
  {
    v78 = *(v73 + 8);
    sub_21B1A7C74(v71, v74, 1u);
    v68 = v238;
    sub_21B1A7C74(v71, v238, 1u);
    sub_21B1A7C74(v71, v78, 1u);
    sub_21B1A7C74(v71, v238, 1u);
    v79 = v71;
    goto LABEL_121;
  }

  v248 = v71 + 32;
  v246 = *(v71 + 16);
  v247 = v75 + 32;
  v104 = *v73;
  v105 = *(v73 + 8);
  sub_21B1A7C74(v75, v74, 1u);
  sub_21B1A7C74(v71, v238, 1u);
  sub_21B1A7C74(v104, v105, 1u);
  sub_21B1A7C74(v71, v238, 1u);
  v252 = v104;
  sub_21B1A7C74(v104, v105, 1u);
  v249 = v71;
  v106 = v246;
  result = sub_21B1A7C74(v71, v238, 1u);
  v107 = 0;
  while (2)
  {
    if (v107 >= *(v249 + 16))
    {
      goto LABEL_249;
    }

    if (v107 >= *(v252 + 16))
    {
      goto LABEL_250;
    }

    v109 = v248 + 24 * v107;
    v110 = *v109;
    v111 = *(v109 + 8);
    v112 = *(v109 + 16);
    v113 = v247 + 24 * v107;
    v114 = *v113;
    v115 = *(v113 + 8);
    v116 = *(v113 + 16);
    v258 = v107;
    if (v112 <= 2)
    {
      v241 = *(v113 + 8);
      v242 = v111;
      v253 = v110;
      if (v112)
      {
        if (v112 == 1)
        {
          if (v116 != 1)
          {
            v208 = v110;
            v209 = *v113;
            sub_21B1A7C74(v114, v115, v116);
            sub_21B1A7C74(v208, v242, 1u);
            sub_21B1A7C90(v208, v242, 1u);
            v206 = v209;
            v207 = v115;
            goto LABEL_221;
          }

          v117 = *(v110 + 16);
          if (v117 != *(v114 + 16))
          {
            v214 = v110;
            v215 = *(v113 + 8);
            v216 = *v113;
            sub_21B1A7C74(v114, v241, 1u);
            v217 = v242;
            sub_21B1A7C74(v214, v242, 1u);
            sub_21B1A7C74(v216, v241, 1u);
            sub_21B1A7C74(v214, v242, 1u);
            goto LABEL_233;
          }

          v234 = 1;
          if (v117)
          {
            if (v110 == v114)
            {
              v118 = *(v113 + 8);
              sub_21B1A7C74(v110, v115, 1u);
              v72 = v242;
              sub_21B1A7C74(v253, v242, 1u);
              sub_21B1A7C74(v253, v115, 1u);
              sub_21B1A7C74(v253, v242, 1u);
              v108 = v253;
              v240 = v253;
              goto LABEL_189;
            }

            v235 = *(v110 + 16);
            v240 = *v113;
            sub_21B1A7C74(v114, v115, 1u);
            sub_21B1A7C74(v253, v242, 1u);
            sub_21B1A7C74(v240, v115, 1u);
            sub_21B1A7C74(v253, v242, 1u);
            sub_21B1A7C74(v240, v115, 1u);
            result = sub_21B1A7C74(v253, v242, 1u);
            v135 = v240;
            v136 = v253;
            v137 = 0;
            v138 = (v240 + 48);
            v139 = (v253 + 48);
            while (2)
            {
              if (v137 >= *(v136 + 16))
              {
                goto LABEL_251;
              }

              if (v137 >= *(v135 + 16))
              {
                goto LABEL_252;
              }

              v39 = *(v139 - 2);
              v40 = *(v139 - 1);
              v145 = *v139;
              v44 = *(v138 - 2);
              v41 = *(v138 - 1);
              v42 = *v138;
              v243 = v138;
              v245 = v139;
              if (v145 > 2)
              {
                if (v145 == 3)
                {
                  if (v42 != 3)
                  {
                    goto LABEL_226;
                  }

                  v153 = *(v139 - 2);
                  v154 = v44;
                  v155 = v41;
                  sub_21B1A7C90(v39, v40, 3u);
                  result = sub_21B1A7C90(v154, v155, 3u);
                  if (v153 != v154)
                  {
                    goto LABEL_231;
                  }
                }

                else if (v145 == 4)
                {
                  if (v42 != 4)
                  {
                    v220 = *(v139 - 2);
                    v221 = *(v139 - 1);
                    v190 = *(v138 - 2);
                    v191 = *v138;
                    v192 = *(v138 - 1);
                    sub_21B1A7C74(v44, v41, v42);
                    v193 = v220;
                    v194 = v221;
                    v195 = 4;
                    goto LABEL_230;
                  }

                  v148 = *(v139 - 2);
                  v149 = *(v138 - 2);
                  v150 = *(v138 - 1);
                  sub_21B1A7C90(v39, v40, 4u);
                  result = sub_21B1A7C90(v149, v150, 4u);
                  if (v148 != *&v149)
                  {
                    goto LABEL_231;
                  }
                }

                else
                {
                  if (v42 != 5)
                  {
                    v227 = *(v139 - 2);
                    v228 = *(v139 - 1);
                    v190 = *(v138 - 2);
                    v191 = *v138;
                    v192 = *(v138 - 1);
                    sub_21B1A7C74(v44, v41, v42);
                    v193 = v227;
                    v194 = v228;
                    v195 = 5;
                    goto LABEL_230;
                  }

                  v156 = *(v139 - 2);
                  v157 = v44;
                  v158 = v41;
                  sub_21B1A7C90(v39, v40, 5u);
                  result = sub_21B1A7C90(v157, v158, 5u);
                  if ((v157 ^ v156))
                  {
                    goto LABEL_231;
                  }
                }

                goto LABEL_162;
              }

              if (*v139)
              {
                if (v145 != 1)
                {
                  if (v42 != 2)
                  {
                    v214 = v136;
                    v222 = v39;
                    v223 = v40;
                    v216 = v135;
                    v224 = *(v138 - 2);
                    v225 = *v138;
                    v226 = *(v138 - 1);
                    sub_21B1A7C74(v44, v41, v42);
                    sub_21B1A7C74(v222, v223, 2u);
                    sub_21B1A7C90(v222, v223, 2u);
                    sub_21B1A7C90(v224, v226, v225);
                    v215 = v241;
                    sub_21B1A7C90(v216, v241, 1u);
                    goto LABEL_232;
                  }

                  if (v39 == v44 && v40 == v41)
                  {
                    v146 = *(v139 - 2);
                    v147 = *(v139 - 1);
                    sub_21B1A7C74(v39, v40, 2u);
                    sub_21B1A7C74(v146, v147, 2u);
                    sub_21B1A7C90(v146, v147, 2u);
                    result = sub_21B1A7C90(v146, v147, 2u);
                  }

                  else
                  {
                    v159 = *(v139 - 2);
                    v237 = *(v139 - 1);
                    v160 = *(v138 - 2);
                    v229 = v44;
                    v161 = v41;
                    v233 = sub_21B20DB28();
                    sub_21B1A7C74(v160, v161, 2u);
                    sub_21B1A7C74(v159, v237, 2u);
                    sub_21B1A7C90(v159, v237, 2u);
                    result = sub_21B1A7C90(v229, v161, 2u);
                    if ((v233 & 1) == 0)
                    {
                      goto LABEL_231;
                    }
                  }

                  goto LABEL_162;
                }

                v236 = *(v139 - 1);
                v232 = *(v139 - 2);
                if (v42 != 1)
                {
                  goto LABEL_214;
                }

                v140 = *(v138 - 2);
                v141 = *(v138 - 1);
                sub_21B1A7C74(v44, v41, 1u);
                sub_21B1A7C74(v232, v236, 1u);
                sub_21B1A7C74(v140, v141, 1u);
                sub_21B1A7C74(v232, v236, 1u);
                v230 = sub_21B1A6CB8(v232, v140);
                sub_21B1A7C90(v232, v236, 1u);
                sub_21B1A7C90(v140, v141, 1u);
                sub_21B1A7C90(v140, v141, 1u);
                v142 = v232;
                v143 = v236;
                v144 = 1;
              }

              else
              {
                v236 = *(v139 - 1);
                v232 = *(v139 - 2);
                if (*v138)
                {
LABEL_214:
                  v190 = *(v138 - 2);
                  v191 = *v138;
                  v192 = *(v138 - 1);
                  sub_21B1A7C74(v44, v41, v42);
                  sub_21B1A7C74(v232, v236, v145);
                  v193 = v232;
                  v194 = v236;
                  v195 = v145;
                  goto LABEL_230;
                }

                v151 = *(v138 - 2);
                v152 = v41;
                v231 = v41;
                sub_21B1A7C74(v44, v41, 0);
                sub_21B1A7C74(v232, v236, 0);
                sub_21B1A7C74(v151, v152, 0);
                sub_21B1A7C74(v232, v236, 0);
                v230 = sub_21B1B76AC(v232, v151);
                sub_21B1A7C90(v232, v236, 0);
                sub_21B1A7C90(v151, v231, 0);
                sub_21B1A7C90(v151, v231, 0);
                v142 = v232;
                v143 = v236;
                v144 = 0;
              }

              result = sub_21B1A7C90(v142, v143, v144);
              if ((v230 & 1) == 0)
              {
                goto LABEL_231;
              }

LABEL_162:
              ++v137;
              v138 = v243 + 24;
              v139 = v245 + 24;
              v136 = v253;
              v135 = v240;
              if (v235 == v137)
              {
                v118 = v241;
                sub_21B1A7C90(v240, v241, 1u);
                v72 = v242;
                sub_21B1A7C90(v253, v242, 1u);
                goto LABEL_188;
              }

              continue;
            }
          }

          v118 = *(v113 + 8);
          v134 = *v113;
          sub_21B1A7C74(v114, v115, 1u);
          v72 = v242;
          sub_21B1A7C74(v253, v242, 1u);
          v240 = v134;
          sub_21B1A7C74(v134, v115, 1u);
          sub_21B1A7C74(v253, v242, 1u);
LABEL_188:
          v108 = v253;
LABEL_189:
          sub_21B1A7C90(v108, v72, 1u);
          sub_21B1A7C90(v240, v118, 1u);
          sub_21B1A7C90(v240, v118, 1u);
          v106 = v246;
LABEL_124:
          result = sub_21B1A7C90(v108, v72, v234);
          LOBYTE(v72) = 1;
        }

        else
        {
          if (v116 != 2)
          {
            v212 = v110;
            v188 = v252;
            v213 = *v113;
            sub_21B1A7C74(v114, v115, v116);
            sub_21B1A7C74(v212, v242, 2u);
            sub_21B1A7C90(v212, v242, 2u);
            sub_21B1A7C90(v213, v115, v116);
            goto LABEL_236;
          }

          v72 = v111;
          if (v110 == v114 && v111 == v115)
          {
            v234 = v112;
            v108 = v110;
            sub_21B1A7C74(v110, v111, 2u);
            sub_21B1A7C74(v108, v242, 2u);
            sub_21B1A7C90(v108, v242, 2u);
            goto LABEL_124;
          }

          v128 = v110;
          v129 = *v113;
          LODWORD(v253) = sub_21B20DB28();
          sub_21B1A7C74(v129, v241, 2u);
          sub_21B1A7C74(v128, v242, 2u);
          sub_21B1A7C90(v128, v242, 2u);
          v130 = v129;
          v106 = v246;
          result = sub_21B1A7C90(v130, v241, 2u);
          LOBYTE(v72) = 1;
          if ((v253 & 1) == 0)
          {
            goto LABEL_235;
          }
        }
      }

      else
      {
        if (*(v113 + 16))
        {
          v210 = *v113;
          sub_21B1A7C74(v114, v115, v116);
          sub_21B1A7C74(v253, v242, 0);
          sub_21B1A7C90(v253, v242, 0);
          v206 = v210;
          v207 = v115;
          goto LABEL_221;
        }

        v123 = *v113;
        sub_21B1A7C74(v114, v115, 0);
        sub_21B1A7C74(v253, v242, 0);
        sub_21B1A7C74(v123, v115, 0);
        sub_21B1A7C74(v253, v242, 0);
        v244 = sub_21B1B76AC(v253, v123);
        sub_21B1A7C90(v253, v242, 0);
        sub_21B1A7C90(v123, v115, 0);
        v124 = v123;
        v106 = v246;
        sub_21B1A7C90(v124, v115, 0);
        LOBYTE(v72) = 1;
        result = sub_21B1A7C90(v253, v242, 0);
        if ((v244 & 1) == 0)
        {
          goto LABEL_235;
        }
      }

LABEL_125:
      v107 = v258 + 1;
      if (v258 + 1 != v106)
      {
        continue;
      }

      v79 = v252;
      sub_21B1A7C90(v252, v239, 1u);
      v71 = v249;
      v68 = v238;
      sub_21B1A7C90(v249, v238, 1u);
LABEL_121:
      v252 = v79;
      sub_21B1A7C90(v71, v68, 1u);
      sub_21B1A7C90(v79, v239, 1u);
      sub_21B1A7C90(v79, v239, 1u);
      v67 = v254;
LABEL_87:
      result = sub_21B1A7C90(v71, v68, v72);
LABEL_88:
      if (++v67 != v265)
      {
        goto LABEL_89;
      }

      v54 = v266;
      v52 = v259;
      sub_21B1A7C90(v266, v259, 1u);
      v4 = *&v263;
      v53 = v250;
      sub_21B1A7C90(v263, v250, 1u);
      v5 = v271;
LABEL_82:
      sub_21B1A7C90(*&v4, v53, 1u);
      sub_21B1A7C90(v54, v52, 1u);
      sub_21B1A7C90(v54, v52, 1u);
      v3 = 1;
      v39 = sub_21B1A7C90(*&v4, v53, 1u);
LABEL_83:
      ++v43;
      v6 = v268;
      if (v43 == v267)
      {
        v29 = v270;
        sub_21B1A7C90(v5, v270, 1u);
        v2 = *&v272;
        v4 = *&v251;
        sub_21B1A7C90(v272, v251, 1u);
        sub_21B1A7C90(v5, v270, 1u);
        sub_21B1A7C90(v272, v251, 1u);
        v30 = v272;
        v31 = v251;
        goto LABEL_23;
      }

      goto LABEL_52;
    }

    break;
  }

  if (v112 == 3)
  {
    if (v116 != 3)
    {
      v202 = v110;
      v203 = v111;
      v198 = *v113;
      sub_21B1A7C74(v114, v115, v116);
      v199 = v202;
      v200 = v203;
      v201 = 3;
      goto LABEL_218;
    }

    v125 = v110;
    v126 = *v113;
    sub_21B1A7C90(v110, v111, 3u);
    result = sub_21B1A7C90(v126, v115, 3u);
    v32 = v125 == v126;
    v106 = v246;
    if (!v32)
    {
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  if (v112 != 4)
  {
    if (v116 != 5)
    {
      v196 = v110;
      v197 = v111;
      v198 = *v113;
      sub_21B1A7C74(v114, v115, v116);
      v199 = v196;
      v200 = v197;
      v201 = 5;
      goto LABEL_218;
    }

    v131 = v110;
    v132 = *v113;
    sub_21B1A7C90(v110, v111, 5u);
    result = sub_21B1A7C90(v132, v115, 5u);
    v133 = v132 ^ v131;
    v106 = v246;
    if (v133)
    {
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  if (v116 == 4)
  {
    v119 = *&v110;
    v120 = *v113;
    v121 = *v113;
    sub_21B1A7C90(v110, v111, 4u);
    v122 = v121;
    v106 = v246;
    result = sub_21B1A7C90(v122, v115, 4u);
    if (v119 != v120)
    {
      goto LABEL_235;
    }

    goto LABEL_125;
  }

  v204 = v110;
  v205 = v111;
  v198 = *v113;
  sub_21B1A7C74(v114, v115, v116);
  v199 = v204;
  v200 = v205;
  v201 = 4;
LABEL_218:
  sub_21B1A7C90(v199, v200, v201);
  v206 = v198;
  v207 = v115;
LABEL_221:
  v211 = v116;
LABEL_234:
  sub_21B1A7C90(v206, v207, v211);
LABEL_235:
  v188 = v252;
LABEL_236:
  v189 = v239;
  sub_21B1A7C90(v188, v239, 1u);
  v71 = v249;
  v187 = v238;
  sub_21B1A7C90(v249, v238, 1u);
LABEL_237:
  sub_21B1A7C90(v71, v187, 1u);
  sub_21B1A7C90(v188, v189, 1u);
  sub_21B1A7C90(v188, v189, 1u);
  v183 = v71;
  v185 = v187;
  v186 = 1;
LABEL_238:
  sub_21B1A7C90(v183, v185, v186);
LABEL_239:
  v50 = v259;
  sub_21B1A7C90(v266, v259, 1u);
  v4 = *&v263;
  v172 = v250;
  v49 = v266;
  sub_21B1A7C90(v263, v250, 1u);
LABEL_240:
  v5 = v271;
  sub_21B1A7C90(*&v4, v172, 1u);
  sub_21B1A7C90(v49, v50, 1u);
  sub_21B1A7C90(v49, v50, 1u);
  sub_21B1A7C90(*&v4, v172, 1u);
LABEL_241:
  LOBYTE(v23) = 1;
  sub_21B1A7C90(v5, v270, 1u);
  v163 = v251;
  sub_21B1A7C90(v272, v251, 1u);
  sub_21B1A7C90(v5, v270, 1u);
  sub_21B1A7C90(v272, v251, 1u);
LABEL_242:
  v27 = v163;
LABEL_243:
  sub_21B1A7C90(v272, v27, v3);
LABEL_244:
  sub_21B1A7C90(v5, v270, v23);
LABEL_245:
  v4 = 0.0;
  return *&v4;
}

uint64_t sub_21B1B94D4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v28 = result;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v29 = (v8 - 1) & v8;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v3 + 56) + 8 * v13);
    v18 = v15 == 0;

    if (!v15)
    {
      return v18;
    }

    v19 = sub_21B1B9778(v16, v15);
    v21 = v20;

    if ((v21 & 1) == 0 || *(*(*(a2 + 56) + 8 * v19) + 16) != *(v17 + 16))
    {

      return 0;
    }

    MEMORY[0x28223BE20](v22);

    v24 = sub_21B1BBDC0(v23, sub_21B1BC110);
    v26 = ~v25;
    sub_21B1BC124(v24, v27, v25);

    v3 = v28;
    v8 = v29;
    if (v26)
    {
      return v18;
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1B96CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 1;
  }

  v5 = sub_21B1B9778(a1, a2);
  if (v6)
  {
    sub_21B17FB4C(*(a4 + 56) + 40 * v5, v10);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v7 = sub_21B20CE18();
    __swift_destroy_boxed_opaque_existential_1(v10);
    v8 = v7 ^ 1;
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_21B1B9778(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_21B20DC88();
  sub_21B20D388();
  v6 = sub_21B20DCA8();

  return sub_21B1B98E0(a1, a2, v6);
}

unint64_t sub_21B1B97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  v10[9] = a1;
  v10[10] = a2;
  v10[11] = a3;
  sub_21B20DC88();
  DatasetRow.hash(into:)(v10);
  v8 = sub_21B20DCA8();

  return sub_21B1B9998(a1, a2, a3, v8);
}

unint64_t sub_21B1B987C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_21B20D7B8();
  v5 = sub_21B20D278();

  return sub_21B1B9A8C(a1, v5);
}

unint64_t sub_21B1B98E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_21B20DB28())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21B1B9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v10 = ~v5;
    do
    {
      v11 = (*(v4 + 48) + 24 * v6);
      v12 = v11[2];
      if (*(v12 + 16) == *(a3 + 16))
      {
        v13 = v11[1];
        v15[3] = *v11;
        v15[4] = v13;
        v15[5] = v12;
        v15[0] = a1;
        v15[1] = a2;
        v15[2] = a3;
        if (sub_21B1DB110(v15))
        {
          break;
        }
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_21B1B9A8C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_21B20D7B8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_21B20D2A8();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_21B1B9C24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_21B20DC88();
  sub_21B20D388();
  v9 = sub_21B20DCA8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_21B20DB28() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_21B1B9FD4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_21B1B9D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  result = sub_21B20D678();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_21B20DC88();
      sub_21B20D388();
      result = sub_21B20DCA8();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_21B1B9FD4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_21B1B9D74(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_21B18AFEC();
      goto LABEL_16;
    }

    sub_21B1BA154(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_21B20DC88();
  sub_21B20D388();
  result = sub_21B20DCA8();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_21B20DB28();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_21B20DBE8();
  __break(1u);
  return result;
}

uint64_t sub_21B1BA154(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC68, &qword_21B211CA8);
  result = sub_21B20D678();
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_21B20DC88();

      sub_21B20D388();
      result = sub_21B20DCA8();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21B1BA38C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_21B1B9778(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21B203648();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_21B1BA8B0(v7, v10);
  *v3 = v10;
  return v12;
}

unint64_t _s12PoirotBlocks18DatasetDescriptionV12removeLayout8withNameAA0c6ColumnF0VSgSS_tF_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  result = sub_21B1B9778(a1, a2);
  if (v8)
  {
    v9 = result;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B2037CC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 24 * v9;
    *a3 = *v14;
    *(a3 + 8) = *(v14 + 8);
    result = sub_21B1BAA60(v9, v12);
    *v4 = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

double sub_21B1BA4D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_21B1B9778(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B203964();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_21B17C284((*(v12 + 56) + 40 * v9), a3);
    sub_21B1BAC1C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_21B1BA5C0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_21B1B987C(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21B2040D8();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_21B20D7B8();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_21B17C304((*(v11 + 56) + 32 * v8), a2);
    sub_21B1BAE04(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21B1BA6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_21B1B9778(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v29;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    v20 = *(v18 + 56);
    v21 = a3(0);
    v28 = *(v21 - 8);
    (*(v28 + 32))(a6, v20 + *(v28 + 72) * v15, v21);
    sub_21B1BB0E8(v15, v18, a4);
    *v10 = v18;
    v22 = *(v28 + 56);
    v23 = a6;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a3(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a6;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_21B1BA8B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B20D658() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_21B20DC88();

      sub_21B20D388();
      v13 = sub_21B20DCA8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B1BAA60(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B20D658() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_21B20DC88();

      sub_21B20D388();
      v14 = sub_21B20DCA8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = v19 + 24 * v3;
        v21 = (v19 + 24 * v6);
        if (v3 != v6 || v20 >= v21 + 24)
        {
          v9 = *v21;
          *(v20 + 16) = *(v21 + 2);
          *v20 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B1BAC1C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B20D658() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_21B20DC88();

      sub_21B20D388();
      v15 = sub_21B20DCA8();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21B1BAE04(int64_t a1, uint64_t a2)
{
  v4 = sub_21B20D7B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_21B20D658();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_21B20D278();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21B1BB0E8(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_21B20D658() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_21B20DC88();

      sub_21B20D388();
      v15 = sub_21B20DCA8();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_21B1BB2F0(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_21B20D658() + 1) & ~v7;
    while (1)
    {
      v13 = *(a2 + 40);
      v14 = (*(a2 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_21B20DC88();

      sub_21B20D388();
      v17 = sub_21B20DCA8();

      v18 = v17 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v18 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + 16 * v8);
      if (v5 != v8 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B1BB4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_21B1B9778(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_21B2037CC();
      v15 = v23;
      goto LABEL_8;
    }

    sub_21B200DD8(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_21B1B9778(a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_21B20DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = (v26[7] + 24 * v15);
    v29 = v27[1];
    v28 = v27[2];
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
  }

  else
  {
    sub_21B204FA8(v15, a4, a5, a1, a2, a3, v26);
  }
}

uint64_t sub_21B1BB660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_21B1B97F0(a4, a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = v17;
      sub_21B203D84();
      v17 = v25;
      goto LABEL_8;
    }

    sub_21B2016F0(v22, a7 & 1);
    v26 = *v8;
    v17 = sub_21B1B97F0(a4, a5, a6);
    if ((v23 & 1) != (v27 & 1))
    {
LABEL_16:
      result = sub_21B20DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 24 * v17);
    v31 = v29[1];
    v30 = v29[2];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
  }

  else
  {
    sub_21B2050A8(v17, a4, a5, a6, a1, a2, a3, v28);
  }
}

_OWORD *sub_21B1BB840(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21B20D7B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_21B1B987C(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_21B2040D8();
      goto LABEL_7;
    }

    sub_21B201FBC(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_21B1B987C(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_21B20511C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_21B17C304(a1, v22);
}

uint64_t sub_21B1BBAC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_21B1B9778(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = *(v16 + 24);
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = *v11;
    v33 = sub_21B1B9778(a2, a3);
    if ((v22 & 1) == (v34 & 1))
    {
      v18 = v33;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_21B20DBF8();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = *(v24 + 56);
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  a8(v18, a2, a3, a1, v24);
}

uint64_t sub_21B1BBC7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_21B1B9778(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_21B20498C();
      result = v19;
      goto LABEL_8;
    }

    sub_21B202D08(v16, a4 & 1);
    v20 = *v5;
    result = sub_21B1B9778(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_21B20DBF8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
  }

  else
  {
    sub_21B204F60(result, a2, a3, a1, v22);
  }

  return result;
}

uint64_t sub_21B1BBDC0(uint64_t a1, uint64_t (*a2)(void *, _BYTE *))
{
  v26 = a2;
  v2 = a1;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = sub_21B20D648();
  v6 = 1 << *(v2 + 32);
  if (result == v6)
  {
    return 0;
  }

  else
  {
    v7 = result;
    v21 = v2;
    v22 = v2 + 72;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v6)
    {
      v9 = v7 >> 6;
      if ((*(v3 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_21;
      }

      v10 = *(v2 + 36);
      v11 = (*(v2 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      sub_21B17FB4C(*(v2 + 56) + 40 * v7, v25);
      v23[0] = v12;
      v23[1] = v13;
      sub_21B17C284(v25, v24);

      LOBYTE(v13) = v26(v23, v24);
      result = sub_21B1BC13C(v23);
      if (v13)
      {
        return v7;
      }

      v8 = 1 << *(v2 + 32);
      if (v7 >= v8)
      {
        goto LABEL_22;
      }

      v14 = *(v3 + 8 * v9);
      if ((v14 & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (v10 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v7 & 0x3F));
      if (v15)
      {
        v8 = __clz(__rbit64(v15)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v9 << 6;
        v17 = v9 + 1;
        v18 = (v22 + 8 * v9);
        while (v17 < (v8 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_21B17C2EC(v7, v10, 0);
            v2 = v21;
            v8 = __clz(__rbit64(v19)) + v16;
            goto LABEL_5;
          }
        }

        result = sub_21B17C2EC(v7, v10, 0);
        v2 = v21;
      }

LABEL_5:
      v6 = 1 << *(v2 + 32);
      v7 = v8;
      if (v8 == v6)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B1BBFE4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CEEBD20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_21B1B9C24(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_21B1BC07C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21B1BC0C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B1BC124(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21B17C2EC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_21B1BC13C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBA8, &qword_21B2115C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B1BC1A4()
{
  result = qword_27CD6F210;
  if (!qword_27CD6F210)
  {
    type metadata accessor for DatasetColumnDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F210);
  }

  return result;
}

uint64_t sub_21B1BC200()
{
  sub_21B20D388();
}

unint64_t BlockType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v5 = 0x646E6957656D6974;
    v6 = 0x6C656E69746E6573;
    if (v1 != 8)
    {
      v6 = 0x6574656D61726170;
    }

    if (v1 != 7)
    {
      v5 = v6;
    }

    v7 = 1852403562;
    if (v1 != 5)
    {
      v7 = 0x6966654472657375;
    }

    if (*v0 <= 6u)
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
    v2 = 0x7461676572676761;
    v3 = 0x6974636172747865;
    if (v1 != 2)
    {
      v3 = 0x6574616C706D6574;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
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

PoirotBlocks::BlockType_optional __swiftcall BlockType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B20D828();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_21B1BC550()
{
  result = qword_27CD6F698;
  if (!qword_27CD6F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F698);
  }

  return result;
}

uint64_t sub_21B1BC5A4()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B1BC200();
  return sub_21B20DCA8();
}

uint64_t sub_21B1BC5F4()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B1BC200();
  return sub_21B20DCA8();
}

unint64_t sub_21B1BC644@<X0>(unint64_t *a1@<X8>)
{
  result = BlockType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BlockType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BlockType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B1BC86C()
{
  result = qword_27CD6F6A0;
  if (!qword_27CD6F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6A0);
  }

  return result;
}

void __swiftcall RecipeMetadata.init(name:version:endToEndTelemetryEventName:)(PoirotBlocks::RecipeMetadata *__return_ptr retstr, Swift::String name, Swift::UInt version, Swift::String_optional endToEndTelemetryEventName)
{
  retstr->name = name;
  retstr->version = version;
  retstr->endToEndTelemetryEventName = endToEndTelemetryEventName;
}

uint64_t RecipeMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F6A8, &qword_21B215750);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1BCB10();
  sub_21B20DCD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v27 = 0;
  v11 = sub_21B20D8C8();
  v14 = v13;
  v15 = v11;
  v26 = 1;
  v16 = sub_21B20D8A8();
  LODWORD(v23) = v17;
  v24 = v16;
  v25 = 2;
  v18 = sub_21B20D868();
  v20 = v19;
  v21 = v24;
  if (v23)
  {
    v21 = 0;
  }

  v23 = v18;
  v24 = v21;
  (*(v6 + 8))(v9, v5);
  *a2 = v15;
  a2[1] = v14;
  v22 = v23;
  a2[2] = v24;
  a2[3] = v22;
  a2[4] = v20;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_21B1BCB10()
{
  result = qword_27CD6F6B0;
  if (!qword_27CD6F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6B0);
  }

  return result;
}

uint64_t RecipeMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F6B8, &qword_21B215758);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v15 = v10;
  v14[0] = v1[4];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1BCB10();
  sub_21B20DD08();
  v19 = 0;
  v12 = v16;
  sub_21B20D9E8();
  if (v12)
  {
    return (*(v4 + 8))(v7, v3);
  }

  if (v15)
  {
    v18 = 1;
    sub_21B20DA38();
  }

  v17 = 2;
  sub_21B20D998();
  return (*(v4 + 8))(v7, v3);
}

uint64_t RecipeMetadata.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t RecipeMetadata.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RecipeMetadata.endToEndTelemetryEventName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t RecipeMetadata.endToEndTelemetryEventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall RecipeMetadata.init(name:version:)(PoirotBlocks::RecipeMetadata *__return_ptr retstr, Swift::String name, Swift::UInt version)
{
  retstr->endToEndTelemetryEventName.value._countAndFlagsBits = 0;
  retstr->endToEndTelemetryEventName.value._object = 0;
  retstr->name = name;
  retstr->version = version;
}

uint64_t sub_21B1BCE7C(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xED00006E6F697372;
  v3 = 0x6556657069636572;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x6556657069636572;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v4 == 1)
  {
    v6 = 0xED00006E6F697372;
  }

  else
  {
    v6 = 0x800000021B20E820;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x800000021B20E800;
  }

  if (*a2 != 1)
  {
    v3 = 0xD00000000000001ALL;
    v2 = 0x800000021B20E820;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000010;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x800000021B20E800;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_21B20DB28();
  }

  return v11 & 1;
}

uint64_t sub_21B1BCF64()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1BD01C()
{
  *v0;
  *v0;
  sub_21B20D388();
}

uint64_t sub_21B1BD0C0()
{
  v1 = *v0;
  sub_21B20DC88();
  sub_21B20D388();

  return sub_21B20DCA8();
}

uint64_t sub_21B1BD174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21B1BD810();
  *a2 = result;
  return result;
}

void sub_21B1BD1A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697372;
  v4 = 0x6556657069636572;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v3 = 0x800000021B20E820;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x800000021B20E800;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_21B1BD218()
{
  v1 = 0x6556657069636572;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_21B1BD288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B1BD810();
  *a1 = result;
  return result;
}

uint64_t sub_21B1BD2B0(uint64_t a1)
{
  v2 = sub_21B1BCB10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1BD2EC(uint64_t a1)
{
  v2 = sub_21B1BCB10();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 RecipeMetadata.init(recipeURL:)@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v27[0] = a2;
  v3 = sub_21B20C548();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B20C678();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B20C338();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_21B20C328();
  v27[1] = 0x6A2E657069636572;
  v27[2] = 0xEB000000006E6F73;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_21B17FBB0();
  sub_21B20C658();
  (*(v4 + 8))(v7, v3);
  v16 = v30;
  v17 = sub_21B20C688();
  if (v16)
  {

    v19 = *(v9 + 8);
    v19(a1, v8);
    v19(v12, v8);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v30 = a1;
    v23 = *(v9 + 8);
    v23(v12, v8);
    sub_21B198044();
    sub_21B20C308();
    v23(v30, v8);
    sub_21B17DAF8(v21, v22);

    v24 = v27[4];
    v25 = v29;
    result = v28;
    v26 = v27[0];
    *v27[0] = v27[3];
    v26->n128_u64[1] = v24;
    v26[1] = result;
    v26[2].n128_u64[0] = v25;
  }

  return result;
}

uint64_t sub_21B1BD658(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_21B1BD6A0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_21B1BD70C()
{
  result = qword_27CD6F6C0;
  if (!qword_27CD6F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6C0);
  }

  return result;
}

unint64_t sub_21B1BD764()
{
  result = qword_27CD6F6C8;
  if (!qword_27CD6F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6C8);
  }

  return result;
}

unint64_t sub_21B1BD7BC()
{
  result = qword_27CD6F6D0;
  if (!qword_27CD6F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD6F6D0);
  }

  return result;
}

uint64_t sub_21B1BD810()
{
  v0 = sub_21B20D828();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_21B1BD85C(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(v34);
  v5 = v34[0];
  v4 = v34[1];
  v7 = v35;
  v6 = v36;
  v8 = v37;
  v9 = v38;
  if (v35 < 0)
  {
    v27 = v38;
    v17 = *(a2 + 16);
    if (v35)
    {
      sub_21B1BDBF0();
      v18 = v17(a1, a2);
      v19 = swift_allocObject();
      *(v19 + 16) = v5;
      *(v19 + 24) = v4;
      v20 = objc_allocWithZone(MEMORY[0x277CF1B50]);
      v32 = sub_21B1BDE4C;
      v33 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B1BDD28;
      v31 = &block_descriptor_6;
      v21 = _Block_copy(&aBlock);
      v22 = [v20 initWithSchema:v18 publisherBlockWithOptions:v21 acceptPublisherOptions:1];
    }

    else
    {
      sub_21B1BDBF0();
      v18 = v17(a1, a2);
      v25 = swift_allocObject();
      *(v25 + 16) = v5;
      *(v25 + 24) = v4;
      v26 = objc_allocWithZone(MEMORY[0x277CF1B50]);
      v32 = sub_21B1BDCE0;
      v33 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = sub_21B1BDD28;
      v31 = &block_descriptor;
      v21 = _Block_copy(&aBlock);
      v22 = [v26 initWithSchema:v18 publisherBlockWithOptions:v21 acceptPublisherOptions:0];
    }

    v15 = v22;
    sub_21B1BDDA8(v5, v4, v7, v6, v8, v27);

    v16 = v21;
  }

  else
  {
    if ((v35 & 1) == 0)
    {
      v23 = [objc_allocWithZone(MEMORY[0x277CF1B50]) initWithStream_];
      sub_21B1BDDA8(v5, v4, v7, v6, v8, v9);
      return v23;
    }

    v10 = v35 & 1;
    v11 = (*(a2 + 16))(a1, a2);
    v12 = swift_allocObject();
    *(v12 + 16) = v5;
    *(v12 + 24) = v4;
    *(v12 + 32) = v10;
    *(v12 + 40) = v6;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    v13 = objc_allocWithZone(MEMORY[0x277CF1B50]);
    v32 = sub_21B1BDE9C;
    v33 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21B1BDD28;
    v31 = &block_descriptor_12;
    v14 = _Block_copy(&aBlock);
    v15 = [v13 initWithSchema:v11 publisherBlockWithOptions:v14 acceptPublisherOptions:1];

    v16 = v14;
  }

  _Block_release(v16);

  return v15;
}

id sub_21B1BDBF8(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x21CEEC5F0]();
  v5 = *(a2 + 40);
  if (v5 == 255)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    if (v10)
    {
      v11 = [v9 publisherWithUseCase:v10 options:a1];
    }

    else
    {
      v11 = [v9 publisherWithOptions_];
    }

    v13 = v11;
  }

  else
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    if (v5)
    {
      sub_21B1BDBF0();
      v8 = v6(a1);
    }

    else
    {
      v12 = sub_21B1BDBF0();
      v8 = v6(v12);
    }

    v13 = v8;
    sub_21B1BDE2C(v6, v7, v5);
  }

  objc_autoreleasePoolPop(v4);
  return v13;
}

uint64_t sub_21B1BDCE0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = MEMORY[0x21CEEC5F0]();
  v4 = v2();
  objc_autoreleasePoolPop(v3);
  return v4;
}

id sub_21B1BDD28(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21B1BDDA8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 < 0)
  {

    return sub_21B1BDE44();
  }

  else
  {

    return sub_21B1BDE2C(a4, a5, a6);
  }
}

uint64_t sub_21B1BDE2C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_21B1BDE44();
  }

  return result;
}

uint64_t sub_21B1BDE4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = MEMORY[0x21CEEC5F0]();
  v6 = v4(a1);
  objc_autoreleasePoolPop(v5);
  return v6;
}

uint64_t sub_21B1BDEB4()
{
  v43 = sub_21B20C828();
  v1 = *(v43 - 8);
  v2 = *(v1 + 8);
  v3 = MEMORY[0x28223BE20](v43);
  v42 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v41 = &v26[-v5];
  v40 = sub_21B20CA68();
  v6 = *(v40 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [v0 columns];
  sub_21B1BE468();
  v11 = sub_21B20D448();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v44 = MEMORY[0x277D84F90];
      sub_21B18FFC4(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        break;
      }

      v13 = 0;
      v14 = v44;
      v15 = v11;
      v39 = v11 & 0xC000000000000001;
      v30 = v11 & 0xFFFFFFFFFFFFFF8;
      v29 = *MEMORY[0x277D3E5B8];
      v35 = (v1 + 104);
      v31 = *MEMORY[0x277D3E5C8];
      v28 = *MEMORY[0x277D3E608];
      v27 = *MEMORY[0x277D3E5E8];
      v32 = *MEMORY[0x277D3E5E0];
      v33 = v6 + 32;
      v34 = (v1 + 32);
      v37 = v11;
      v38 = v9;
      v36 = v12;
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v39)
        {
          v17 = MEMORY[0x21CEEBED0](v13, v15);
        }

        else
        {
          if (v13 >= *(v30 + 16))
          {
            goto LABEL_25;
          }

          v17 = *(v15 + 8 * v13 + 32);
        }

        v18 = v17;
        v19 = [v17 name];
        sub_21B20D2F8();

        v20 = [v18 dataType];
        if (v20 <= 2)
        {
          v21 = v32;
          if (v20)
          {
            v21 = v27;
            if (v20 != 1)
            {
              v21 = v31;
              if (v20 != 2)
              {
                goto LABEL_30;
              }
            }
          }
        }

        else if (v20 > 4)
        {
          v21 = v31;
          if (v20 != 5)
          {
            v21 = v29;
            if (v20 != 6)
            {
              goto LABEL_30;
            }
          }
        }

        else
        {
          v21 = v28;
          if (v20 != 3)
          {
            v21 = v29;
          }
        }

        v23 = v42;
        v22 = v43;
        (*v35)(v42, v21, v43);
        (*v34)(v41, v23, v22);
        [v18 requestOnly];
        v11 = v38;
        sub_21B20CA28();

        v44 = v14;
        v9 = *(v14 + 16);
        v24 = *(v14 + 24);
        v1 = (v9 + 1);
        if (v9 >= v24 >> 1)
        {
          sub_21B18FFC4(v24 > 1, v9 + 1, 1);
          v14 = v44;
        }

        *(v14 + 16) = v1;
        (*(v6 + 32))(v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v9, v11, v40);
        ++v13;
        v15 = v37;
        if (v16 == v36)
        {

          return v14;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v12 = sub_21B20D7D8();
      if (!v12)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    result = sub_21B20D7C8();
    __break(1u);
  }

  else
  {
LABEL_27:

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t (*sub_21B1BE360(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEEBED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21B1BE4B4;
  }

  __break(1u);
  return result;
}

void (*sub_21B1BE3E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x21CEEBED0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_21B1BE460;
  }

  __break(1u);
  return result;
}

unint64_t sub_21B1BE468()
{
  result = qword_27CD6F6D8[0];
  if (!qword_27CD6F6D8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27CD6F6D8);
  }

  return result;
}

uint64_t sub_21B1BE4B8@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = [a1 schema];
  v7 = [v6 tableName];

  v8 = sub_21B20D2F8();
  v10 = v9;

  sub_21B20D6A8();

  if (a2)
  {
    v33[0] = 0xD000000000000016;
    v33[1] = 0x800000021B20F810;
    v11 = [a1 schema];
    v12 = [v11 tableName];

    v13 = sub_21B20D2F8();
    v15 = v14;

    MEMORY[0x21CEEBBB0](v13, v15);

    MEMORY[0x21CEEBBB0](0x20726F662027, 0xE600000000000000);
    v16 = [a1 configuration];
    [v16 eventClass];

    swift_getObjCClassMetadata();
    v17 = sub_21B20DD38();
    MEMORY[0x21CEEBBB0](v17);

    MEMORY[0x21CEEBBB0](0x73746E65766520, 0xE700000000000000);
    v18 = 0xD000000000000016;
    v19 = 0x800000021B20F810;
    v20 = 2;
  }

  else
  {
    strcpy(v33, "Biome stream '");
    HIBYTE(v33[1]) = -18;
    v21 = [a1 schema];
    v22 = [v21 tableName];

    v23 = sub_21B20D2F8();
    v25 = v24;

    MEMORY[0x21CEEBBB0](v23, v25);

    MEMORY[0x21CEEBBB0](0x20726F662027, 0xE600000000000000);
    v26 = [a1 configuration];
    [v26 eventClass];

    swift_getObjCClassMetadata();
    v27 = sub_21B20DD38();
    MEMORY[0x21CEEBBB0](v27);

    MEMORY[0x21CEEBBB0](0x73746E65766520, 0xE700000000000000);
    v20 = 0;
    v18 = v33[0];
    v19 = v33[1];
  }

  v28 = [a1 schema];
  v29 = sub_21B1BDEB4();

  v30 = *(type metadata accessor for DataSourceModel() + 32);
  v31 = sub_21B20D0C8();
  result = (*(*(v31 - 8) + 56))(a3 + v30, 1, 1, v31);
  *a3 = v8;
  *(a3 + 8) = v10;
  *(a3 + 16) = v18;
  *(a3 + 24) = v19;
  *(a3 + 32) = v20;
  *(a3 + 40) = v29;
  return result;
}

uint64_t sub_21B1BE888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = a3(0, a1, a2);
  v11 = sub_21B20D0C8();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = *(v10 + 48);
  v13 = *(v10 + 52);
  swift_allocObject();
  return sub_21B1BEC08(MEMORY[0x277D84F90], v9);
}

uint64_t sub_21B1BE9AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_21B1BEC08(a1, a2);
}

uint64_t sub_21B1BEAF4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  v9 = *v4;
  sub_21B20C988();
  v10 = sub_21B20C998();
  result = v10(a1);
  if (!v5)
  {
    v12 = *(sub_21B20C948() + 16);

    if (!v12)
    {
      WitnessTable = swift_getWitnessTable();
      a4(a1, v9, WitnessTable, *(v9 + *a3 + 8));
      return sub_21B20C958();
    }
  }

  return result;
}

uint64_t sub_21B1BEC08(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21B18C904(a2, &v8 - v5);
  v6 = sub_21B20C938();
  sub_21B192958(a2);
  return v6;
}

uint64_t sub_21B1BECC4()
{
  v0 = sub_21B20C9A8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_21B1BED64(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_21B1BEE18(uint64_t a1)
{
  v4 = *v1;
  sub_21B20C988();
  v5 = sub_21B20C998();
  result = v5(a1);
  if (!v2)
  {
    v7 = *(sub_21B20C948() + 16);

    if (!v7)
    {
      swift_getWitnessTable();
      v8 = *(v4 + qword_27CD7E060 + 8);
      static MessageToColumnMapping<>.makeDefaultColumns(with:)();
      return sub_21B20C958();
    }
  }

  return result;
}

uint64_t sub_21B1BEF28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  swift_allocObject();
  return sub_21B1BEF7C(a1, a2);
}

uint64_t sub_21B1BEF7C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_21B18C904(a2, &v8 - v5);
  v6 = sub_21B20C938();
  sub_21B192958(a2);
  return v6;
}

uint64_t sub_21B1BF050(uint64_t a1)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BiomePublisherSchemaProviding.configureManifest()()
{
  v3 = v1;
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EC78, &unk_21B215AD0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v38 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v37 = &v33 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = sub_21B20D0C8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v36 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - v21;
  (*(*(v3 + 16) + 16))(v4);
  v23 = *(v17 + 48);
  if (v23(v15, 1, v16) == 1)
  {
    sub_21B186488(v15, &qword_27CD6EC78, &unk_21B215AD0);
  }

  else
  {
    v35 = v2;
    v24 = v22;
    v25 = *(v17 + 32);
    v34 = v24;
    v25();
    sub_21B20C918();
    if (v23(v13, 1, v16) == 1)
    {
      sub_21B186488(v13, &qword_27CD6EC78, &unk_21B215AD0);
      v26 = v38;
      v27 = v34;
      (*(v17 + 16))(v38, v34, v16);
      (*(v17 + 56))(v26, 0, 1, v16);
      sub_21B20C928();
      (*(v17 + 8))(v27, v16);
    }

    else
    {
      v28 = v36;
      (v25)(v36, v13, v16);
      v29 = v37;
      v31 = v34;
      v30 = v35;
      sub_21B20D0A8();
      if (!v30)
      {
        (*(v17 + 56))(v29, 0, 1, v16);
        sub_21B20C928();
      }

      v32 = *(v17 + 8);
      v32(v28, v16);
      v32(v31, v16);
    }
  }
}

void BiomePublisherSchemaProviding.makeBiomeSchema(forTable:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(sub_21B20C948() + 16);

  v17 = MEMORY[0x277D84F90];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v16 = i;
      v9 = sub_21B1BF7D0(&v16, v4, a3, a4, &v15);
      if (v15)
      {
        MEMORY[0x21CEEBC40](v9);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_21B20D478();
        }

        sub_21B20D498();
      }
    }
  }

  v10 = objc_allocWithZone(MEMORY[0x277CF1AA0]);
  v11 = sub_21B20D2C8();
  sub_21B1BE468();
  v12 = sub_21B20D438();

  v13 = [v10 initWithTableName:v11 columns:v12];

  if (!v13)
  {
    __break(1u);
  }
}

void sub_21B1BF6C4()
{
  v1 = *v0;
  swift_getWitnessTable();
  BiomePublisherSchemaProviding.configureManifest()();
}

void sub_21B1BF754(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  WitnessTable = swift_getWitnessTable();
  BiomePublisherSchemaProviding.makeBiomeSchema(forTable:)(a1, a2, v5, WitnessTable);
}

uint64_t sub_21B1BF7D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v28 = a3;
  v9 = sub_21B20CA68();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  result = sub_21B20C948();
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v14 < *(result + 16))
  {
    (*(v10 + 16))(v13, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, v9);

    sub_21B20CA38();
    v26 = a5;
    v25 = sub_21B1980F4();
    v16 = sub_21B20CA58();
    v17 = swift_allocObject();
    v18 = a4;
    v19 = v17;
    v17[2] = v28;
    v17[3] = v18;
    v17[4] = a2;
    v17[5] = v14;
    v20 = objc_allocWithZone(MEMORY[0x277CF1A80]);

    v21 = sub_21B20D2C8();

    aBlock[4] = sub_21B1BFDE4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21B1E89A4;
    aBlock[3] = &block_descriptor_0;
    v22 = _Block_copy(aBlock);

    v23 = [v20 initWithName:v21 dataType:v25 requestOnly:v16 & 1 extractBlock:v22];
    _Block_release(v22);

    result = (*(v10 + 8))(v13, v9);
    *v26 = v23;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B1BFA40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v31 = a2;
  v32 = a4;
  v33 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F860, &unk_21B215C40);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - v13;
  v15 = *(a6 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_21B20D5D8();
  v30 = *(v17 - 8);
  v18 = *(v30 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  v25 = &v29 - v24;
  sub_21B19DB00(a1, v34);
  v26 = swift_dynamicCast();
  v27 = *(v22 + 56);
  if (v26)
  {
    v27(v21, 0, 1, AssociatedTypeWitness);
    (*(v22 + 32))(v25, v21, AssociatedTypeWitness);
    v34[0] = a3;
    (*(*(a6 + 24) + 32))(v32, v25, a5);
    sub_21B20C968();
    sub_21B186488(v14, &qword_27CD6F860, &unk_21B215C40);
    return (*(v22 + 8))(v25, AssociatedTypeWitness);
  }

  else
  {
    v27(v21, 1, 1, AssociatedTypeWitness);
    (*(v30 + 8))(v21, v17);
    result = sub_21B20D7C8();
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t AutomaticDSCFileProtobufFactory.dscUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v4 = sub_21B20C678();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AutomaticDSCFileProtobufFactory.__allocating_init(dscUrl:updateFileAutomatically:messageNameMap:columnsLayout:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v46 = a3;
  v5 = v4;
  v47 = a4;
  v8 = sub_21B20D0C8();
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = *(v5 + 48);
  v15 = *(v5 + 52);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v18 = sub_21B20C678();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v42 = v17;
  v20(v16 + v17, a1, v18);
  v41 = a2;
  *(v16 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v21 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v22 = sub_21B20D2C8();

  v23 = [v21 fileExistsAtPath_];

  if (v23)
  {
    v24 = v45;
    sub_21B20C688();
    if (v24)
    {
      v25 = *(v19 + 8);
      v25(a1, v18);

      v25(v16 + v42, v18);
      v26 = *(*v16 + 48);
      v27 = *(*v16 + 52);
      swift_deallocPartialClassInstance();
      return v16;
    }

    sub_21B20D048();
  }

  else
  {
    sub_21B20D058();
    v24 = v45;
  }

  v28 = AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(v13, v46, v47);
  v30 = v43;
  v29 = v44;
  if (!v24 && (v16 = v28, (v41 & 1) != 0) && (swift_beginAccess(), (*(v16 + 24) & 1) != 0))
  {
    v32 = *(v16 + 16);
    v33 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v34 = v32 + v33;
    v35 = v40;
    (*(v30 + 16))(v40, v34, v29);
    v36 = sub_21B20D0B8();
    v47 = v37;
    v38 = v36;
    (*(v30 + 8))(v35, v29);
    sub_21B20C6C8();
    (*(v19 + 8))(a1, v18);
    sub_21B17DAF8(v38, v47);
    *(v16 + 24) = 0;
  }

  else
  {
    (*(v19 + 8))(a1, v18);
  }

  return v16;
}

uint64_t AutomaticDSCFileProtobufFactory.init(dscUrl:updateFileAutomatically:messageNameMap:columnsLayout:)(uint64_t a1, int a2, uint64_t a3, unint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v43 = a4;
  v42 = a3;
  v10 = sub_21B20D0C8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v37 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v16 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v17 = sub_21B20C678();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v39 = v16;
  v19(v7 + v16, a1, v17);
  v38 = a2;
  *(v7 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v20 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v21 = sub_21B20D2C8();

  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
    sub_21B20C688();
    if (v5)
    {
      v23 = *(v18 + 8);
      v23(a1, v17);

      v23(v7 + v39, v17);
      type metadata accessor for AutomaticDSCFileProtobufFactory();
      v24 = *(*v7 + 48);
      v25 = *(*v7 + 52);
      swift_deallocPartialClassInstance();
      return v7;
    }

    sub_21B20D048();
    v6 = 0;
  }

  else
  {
    sub_21B20D058();
  }

  v26 = AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(v15, v42, v43);
  v28 = v40;
  v27 = v41;
  if (!v6 && (v7 = v26, (v38 & 1) != 0) && (swift_beginAccess(), *(v7 + 24) == 1))
  {
    v30 = *(v7 + 16);
    v31 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v32 = v30 + v31;
    v33 = v37;
    (*(v28 + 16))(v37, v32, v27);
    v34 = sub_21B20D0B8();
    v43 = v35;
    v36 = v34;
    (*(v28 + 8))(v33, v27);
    sub_21B20C6C8();
    (*(v18 + 8))(a1, v17);
    sub_21B17DAF8(v36, v43);
    *(v7 + 24) = 0;
  }

  else
  {
    (*(v18 + 8))(a1, v17);
  }

  return v7;
}

uint64_t AutomaticDSCFileProtobufFactory.__allocating_init(dscUrl:updateFileAutomatically:messageNameMap:allColumnsArePivots:)(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v47 = a3;
  v5 = v4;
  v43 = a4;
  v41 = sub_21B20D0C8();
  v45 = *(v41 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - v11;
  v13 = *(v5 + 48);
  v14 = *(v5 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v17 = sub_21B20C678();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v48 = v17;
  v19(v15 + v16, a1);
  v42 = a2;
  *(v15 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v20 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v21 = sub_21B20D2C8();

  v22 = [v20 fileExistsAtPath_];

  if (v22)
  {
    v23 = v46;
    sub_21B20C688();
    v24 = a1;
    if (v23)
    {
      v25 = *(v18 + 8);
      v26 = a1;
      v27 = v48;
      v25(v26, v48);

      v25(v15 + v16, v27);
      v28 = *(*v15 + 48);
      v29 = *(*v15 + 52);
      swift_deallocPartialClassInstance();
      return v5;
    }

    sub_21B20D048();
  }

  else
  {
    sub_21B20D058();
    v23 = v46;
    v24 = a1;
  }

  v30 = AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(v12, v47, v43 & 1);
  v32 = v44;
  v31 = v45;
  if (!v23 && (v5 = v30, (v42 & 1) != 0) && (swift_beginAccess(), (*(v5 + 24) & 1) != 0))
  {
    v34 = *(v5 + 16);
    v35 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v36 = v34 + v35;
    v37 = v41;
    (*(v31 + 16))(v32, v36, v41);
    v38 = sub_21B20D0B8();
    v40 = v39;
    (*(v31 + 8))(v32, v37);
    sub_21B20C6C8();
    (*(v18 + 8))(v24, v48);
    sub_21B17DAF8(v38, v40);
    *(v5 + 24) = 0;
  }

  else
  {
    (*(v18 + 8))(v24, v48);
  }

  return v5;
}

uint64_t AutomaticDSCFileProtobufFactory.init(dscUrl:updateFileAutomatically:messageNameMap:allColumnsArePivots:)(uint64_t a1, int a2, unint64_t a3, int a4)
{
  v5 = v4;
  v39 = a4;
  v42 = a3;
  v37 = sub_21B20D0C8();
  v40 = *(v37 - 8);
  v8 = *(v40 + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v14 = sub_21B20C678();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5 + v13, a1, v14);
  v38 = a2;
  *(v5 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) = a2;
  v16 = [objc_opt_self() defaultManager];
  sub_21B20C608();
  v17 = sub_21B20D2C8();

  v18 = [v16 fileExistsAtPath_];

  if (v18)
  {
    v19 = v41;
    sub_21B20C688();
    v20 = a1;
    if (v19)
    {
      v21 = *(v15 + 8);
      v21(a1, v14);

      v21(v5 + v13, v14);
      type metadata accessor for AutomaticDSCFileProtobufFactory();
      v22 = *(*v5 + 48);
      v23 = *(*v5 + 52);
      swift_deallocPartialClassInstance();
      return v5;
    }

    sub_21B20D048();
  }

  else
  {
    sub_21B20D058();
    v20 = a1;
    v19 = v41;
  }

  v24 = AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(v12, v42, v39 & 1);
  v25 = v40;
  if (!v19 && (v5 = v24, (v38 & 1) != 0) && (swift_beginAccess(), *(v5 + 24) == 1))
  {
    v27 = *(v5 + 16);
    v28 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    v29 = v27 + v28;
    v30 = v36;
    v31 = v37;
    (*(v25 + 16))(v36, v29, v37);
    v32 = sub_21B20D0B8();
    v42 = v33;
    v34 = v32;
    (*(v25 + 8))(v30, v31);
    sub_21B20C6C8();
    (*(v15 + 8))(v20, v14);
    sub_21B17DAF8(v34, v42);
    *(v5 + 24) = 0;
  }

  else
  {
    (*(v15 + 8))(v20, v14);
  }

  return v5;
}

uint64_t sub_21B1C0F88()
{
  v2 = sub_21B20D0C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_beginAccess();
  if (*(v0 + 24) == 1)
  {
    v8 = v0;
    v9 = *(v0 + 16);
    v10 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
    swift_beginAccess();
    (*(v3 + 16))(v6, v9 + v10, v2);
    v11 = sub_21B20D0B8();
    if (v1)
    {
      return (*(v3 + 8))(v6, v2);
    }

    else
    {
      v13 = v11;
      v14 = v6;
      v15 = v12;
      (*(v3 + 8))(v14, v2);
      sub_21B20C6C8();
      result = sub_21B17DAF8(v13, v15);
      *(v8 + 24) = 0;
    }
  }

  return result;
}

uint64_t sub_21B1C1134(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_21B20D0C8();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v25 = *a1;
  v26 = v9;
  v27 = v10;
  v11 = *(v2 + 16);
  v12 = *(v11 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);

  v13 = v28;
  sub_21B1C1E48(&v25, v12);

  if (!v13)
  {
    v15 = v7;
    v16 = v24;
    v25 = v8;
    v26 = v9;
    v27 = v10;
    result = sub_21B1C4C58(&v25);
    if (*(v2 + OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_updateFileAutomatically) == 1)
    {
      v23 = result;
      v28 = v17;
      swift_beginAccess();
      if (*(v2 + 24) == 1)
      {
        v18 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
        swift_beginAccess();
        v19 = v16;
        (*(v16 + 16))(v15, v11 + v18, v4);
        v20 = sub_21B20D0B8();
        v22 = v21;
        (*(v19 + 8))(v15, v4);
        sub_21B20C6C8();
        sub_21B17DAF8(v20, v22);
        *(v2 + 24) = 0;
      }

      return v23;
    }
  }

  return result;
}

uint64_t sub_21B1C1424()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v2 = sub_21B20C678();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t AutomaticDSCFileProtobufFactory.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v3 = sub_21B20C678();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t AutomaticDSCFileProtobufFactory.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC12PoirotBlocks31AutomaticDSCFileProtobufFactory_dscUrl;
  v3 = sub_21B20C678();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t type metadata accessor for AutomaticDSCFileProtobufFactory()
{
  result = qword_27CD6F868;
  if (!qword_27CD6F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B1C15EC()
{
  result = sub_21B20C678();
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

uint64_t AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(char *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = v38 - v9;
  v10 = sub_21B20D0C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v43 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v38 - v15;
  v17 = *(v11 + 16);
  v45 = a1;
  v42 = v17;
  v17(v38 - v15, a1, v10);
  v46[0] = MEMORY[0x277D84FA0];

  v18 = a2;
  v19 = sub_21B1C3A48(0, a3, a2, v16, v46);
  v20 = (v11 + 8);
  if (v3)
  {

    swift_bridgeObjectRelease_n();
    v21 = *v20;
    (*v20)(v45, v10);

    v21(v16, v10);
    type metadata accessor for AutomaticProtobufFactory();
    v22 = v47;
    swift_deallocPartialClassInstance();
  }

  else
  {
    v23 = v19;

    v39 = v18;

    v24 = sub_21B1C2650(0, v46[0], v16);
    v38[1] = 0;
    v40 = *(v11 + 8);
    v41 = v11 + 8;
    v40(v45, v10);

    v25 = v47;
    *(v47 + 24) = (v24 | v23) & 1;
    *(v25 + 25) = 2;
    v26 = v43;
    v42(v43, v16, v10);
    v27 = type metadata accessor for ProtobufFactory();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
    v32 = sub_21B20CF68();
    v33 = *(*(v32 - 8) + 56);
    v33(v30 + v31, 1, 1, v32);
    (*(v11 + 32))(v30 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest, v26, v10);
    *(v30 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = v39;
    v34 = v44;
    v33(v44, 1, 1, v32);
    v35 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
    swift_beginAccess();
    v36 = v30 + v35;
    v22 = v47;
    sub_21B1C3DEC(v34, v36);
    swift_endAccess();
    v40(v16, v10);
    *(v22 + 16) = v30;
  }

  return v22;
}

uint64_t AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(uint64_t a1, uint64_t a2, char a3)
{
  v22 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - v8;
  *(v3 + 24) = 0;
  *(v3 + 25) = a3;
  v10 = type metadata accessor for ProtobufFactory();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  v15 = sub_21B20CF68();
  v16 = *(*(v15 - 8) + 56);
  v16(v13 + v14, 1, 1, v15);
  v17 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v18 = sub_21B20D0C8();
  (*(*(v18 - 8) + 32))(v13 + v17, a1, v18);
  *(v13 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = v22;
  v16(v9, 1, 1, v15);
  v19 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v9, v13 + v19);
  swift_endAccess();
  *(v3 + 16) = v13;
  return v3;
}

uint64_t sub_21B1C1CB4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v6 = *(*(v1 + 16) + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);

  sub_21B1C1E48(&v8, v6);

  if (!v2)
  {
    v8 = v3;
    v9 = v4;
    v10 = v5;
    return sub_21B1C4C58(&v8);
  }

  return result;
}

uint64_t AutomaticProtobufFactory.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_21B1C1D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v5 = sub_21B20D0C8();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_21B1C1E48(uint64_t *a1, uint64_t a2)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v35 - v6;
  v7 = sub_21B20D0C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *(v2 + 16);
  v18 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v19 = *(v8 + 16);
  v36 = v17;
  v40 = v7;
  v19(v13, v17 + v18, v7);
  v38 = v2;
  v20 = *(v2 + 25);
  if (v20 == 2)
  {
    v21 = v44;
    v22 = v39;
    v23 = 0;
  }

  else
  {
    v41 = v14;
    v42 = v15;
    v43 = v16;
    v24 = v39;
    v25 = sub_21B1CD904(&v41, v44, v20 & 1);
    v22 = v24;
    if (v24)
    {
      return (*(v8 + 8))(v13, v40);
    }

    v23 = v25;
    v21 = v44;
  }

  v41 = v14;
  v42 = v15;
  v43 = v16;
  v26 = sub_21B1CDC80(&v41, v21);
  if (!v22 && ((v26 | v23) & 1) != 0)
  {
    v27 = v35;
    v28 = v40;
    (*(v8 + 32))(v35, v13, v40);
    v29 = v36;
    swift_beginAccess();
    (*(v8 + 40))(v29 + v18, v27, v28);
    swift_endAccess();
    v30 = sub_21B20CF68();
    v31 = v37;
    (*(*(v30 - 8) + 56))(v37, 1, 1, v30);
    v32 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
    swift_beginAccess();
    sub_21B1C3DEC(v31, v29 + v32);
    swift_endAccess();
    v33 = v38;
    result = swift_beginAccess();
    *(v33 + 24) = 1;
    return result;
  }

  return (*(v8 + 8))(v13, v40);
}

uint64_t sub_21B1C2168(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B20CF68();
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20D038();
  v33 = *(v10 - 8);
  v11 = *(v33 + 64);
  MEMORY[0x28223BE20](v10);
  v34 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  v16 = *a1 == a2 && v13 == a3;
  if (v16 || (v17 = *a1, v18 = a1[1], (sub_21B20DB28() & 1) != 0))
  {
    v19 = sub_21B197D24(MEMORY[0x277D84F90]);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F880, &qword_21B215CA8);
    inited = swift_initStackObject();
    v32 = v7;
    v21 = inited;
    *(inited + 16) = xmmword_21B2110C0;
    v31 = v10;
    *(inited + 32) = v14;
    v22 = inited + 32;
    *(inited + 40) = v13;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    v19 = sub_21B197D24(v21);
    v7 = v32;
    swift_setDeallocating();
    v23 = v22;
    v10 = v31;
    sub_21B186488(v23, &qword_27CD6F888, &qword_21B215CB0);
  }

  v37[0] = v14;
  v37[1] = v13;
  v37[2] = v15;
  v24 = v37[12];
  sub_21B1C1E48(v37, v19);
  v25 = v24;

  if (!v24)
  {
    v26 = *(v3 + 16);
    v27 = v36;
    sub_21B1C4780(v36);
    v28 = v34;
    sub_21B20CF58();
    (*(v35 + 8))(v27, v7);
    v25 = sub_21B20D028();
    (*(v33 + 8))(v28, v10);
  }

  return v25;
}

uint64_t sub_21B1C2490()
{
  result = swift_beginAccess();
  *(v0 + 24) = 0;
  return result;
}

uint64_t AutomaticProtobufFactory.__allocating_init(manifest:messageNameMap:allColumnsArePivots:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  AutomaticProtobufFactory.init(manifest:messageNameMap:allColumnsArePivots:)(a1, a2, a3);
  return v6;
}

uint64_t AutomaticProtobufFactory.__allocating_init(manifest:messageNameMap:columnsLayout:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  AutomaticProtobufFactory.init(manifest:messageNameMap:columnsLayout:)(a1, a2, a3);
  return v6;
}

uint64_t AutomaticProtobufFactory.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 26, 7);
}

uint64_t sub_21B1C2650(int a1, uint64_t a2, uint64_t a3)
{
  v87 = a3;
  LODWORD(v85) = a1;
  v86 = sub_21B20CFB8();
  v4 = *(v86 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v86);
  v75 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F890, &qword_21B215D30);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v78 = v70 - v13;
  MEMORY[0x28223BE20](v12);
  v82 = v70 - v14;
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v72 = v4 + 16;
  v84 = (v4 + 56);
  v76 = (v4 + 32);
  v77 = (v4 + 48);
  v80 = v4;
  v70[0] = v4 + 40;

  v20 = 0;
  v81 = a2;
  v73 = v11;
  v74 = v19;
  while (v18)
  {
LABEL_13:
    v23 = (*(a2 + 48) + ((v20 << 10) | (16 * __clz(__rbit64(v18)))));
    v24 = *v23;
    v25 = v23[1];

    v26 = sub_21B20D078();
    if (!*(v26 + 16) || (v27 = sub_21B1B9778(v24, v25), (v28 & 1) == 0))
    {
      v85 = v24;

      v32 = *v84;
      v33 = v82;
      v34 = v86;
      (*v84)(v82, 1, 1, v86);
      sub_21B186488(v33, &qword_27CD6F890, &qword_21B215D30);

      v35 = v78;
      sub_21B20CF88();
      v32(v35, 0, 1, v34);
      v36 = v32;
      v37 = v35;
      v83 = sub_21B20D068();
      v39 = v38;
      if ((*v77)(v37, 1, v34) == 1)
      {
        sub_21B186488(v37, &qword_27CD6F890, &qword_21B215D30);
        v40 = *v39;
        v41 = sub_21B1B9778(v85, v25);
        if (v42)
        {
          v43 = v41;
          v85 = v32;
          v44 = *v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = *v39;
          v89 = *v39;
          v79 = v39;
          v19 = v74;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_21B2046DC();
            v46 = v89;
          }

          v47 = *(*(v46 + 48) + 16 * v43 + 8);

          v48 = *(v46 + 56) + *(v80 + 72) * v43;
          v49 = v43;
          v21 = v73;
          v50 = v86;
          (*(v80 + 32))(v73, v48, v86);
          sub_21B1BB0D0(v49, v46);
          *v79 = v46;
          (v85)(v21, 0, 1, v50);
        }

        else
        {
          v21 = v73;
          v19 = v74;
          v36(v73, 1, 1, v86);
        }

        sub_21B186488(v21, &qword_27CD6F890, &qword_21B215D30);
        a2 = v81;
        goto LABEL_6;
      }

      v51 = *v76;
      (*v76)(v75, v37, v34);
      v52 = *v39;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v39;
      v89 = *v39;
      v54 = v89;
      v56 = sub_21B1B9778(v85, v25);
      v57 = v54[2];
      v58 = (v55 & 1) == 0;
      v59 = v57 + v58;
      if (__OFADD__(v57, v58))
      {
        goto LABEL_35;
      }

      v60 = v55;
      v71 = v51;
      if (v54[3] >= v59)
      {
        v19 = v74;
        if (v53)
        {
          v63 = v89;
          if ((v55 & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        else
        {
          sub_21B2046DC();
          v63 = v89;
          if ((v60 & 1) == 0)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
        sub_21B20295C(v59, v53);
        v61 = sub_21B1B9778(v85, v25);
        v19 = v74;
        if ((v60 & 1) != (v62 & 1))
        {
          goto LABEL_37;
        }

        v56 = v61;
        v63 = v89;
        if ((v60 & 1) == 0)
        {
LABEL_30:
          v63[(v56 >> 6) + 8] |= 1 << v56;
          v64 = (v63[6] + 16 * v56);
          v65 = v86;
          *v64 = v85;
          v64[1] = v25;
          v71(v63[7] + *(v80 + 72) * v56, v75, v65);
          v66 = v63[2];
          v67 = __OFADD__(v66, 1);
          v68 = v66 + 1;
          if (v67)
          {
            goto LABEL_36;
          }

          v63[2] = v68;
          goto LABEL_32;
        }
      }

      (*(v80 + 40))(v63[7] + *(v80 + 72) * v56, v75, v86);

LABEL_32:
      *v79 = v63;
      a2 = v81;
LABEL_6:
      v83(v88, 0);
      LODWORD(v85) = 1;
      goto LABEL_7;
    }

    v29 = v80;
    v30 = v82;
    v31 = v86;
    (*(v80 + 16))(v82, *(v26 + 56) + *(v80 + 72) * v27, v86);

    (*(v29 + 56))(v30, 0, 1, v31);
    sub_21B186488(v30, &qword_27CD6F890, &qword_21B215D30);
    a2 = v81;
LABEL_7:
    v18 &= v18 - 1;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return v85 & 1;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      v20 = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1C2CF8(int a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v145 = a7;
  v146 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F898, qword_21B215D38);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v116 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v132 = v114 - v18;
  v131 = sub_21B20D118();
  v19 = *(v131 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v131);
  v130 = v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_21B20CFD8();
  v22 = *(v133 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v133);
  v129 = v114 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v128 = v114 - v26;
  v27 = sub_21B20D018();
  v117 = *(v27 - 8);
  v28 = *(v117 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v127 = v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v114 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v115 = v114 - v35;
  MEMORY[0x28223BE20](v34);
  v118 = v114 - v36;
  v37 = type metadata accessor for DatasetColumnDescription();
  v144 = *(v37 - 8);
  v38 = *(v144 + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v143 = (v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = type metadata accessor for InferredProtobufType();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x28223BE20](v40);
  v126 = v114 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v42);
  v46 = v114 - v45;
  if (a2 == a3)
  {
    return a1 & 1;
  }

  if (a3 < a2)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v139 = result;
  v114[1] = a10;
  v154 = a9;
  v137 = (v117 + 16);
  v134 = (v117 + 32);
  v147 = (v117 + 8);
  v125 = (v22 + 16);
  v124 = (v19 + 16);
  v123 = (v19 + 8);
  v122 = (v22 + 88);
  v121 = *MEMORY[0x277D3E4F0];
  v120 = (v22 + 8);
  v141 = (v117 + 56);
  v119 = (v117 + 48);
  v138 = a2;
  v140 = v114 - v45;
  v135 = a3;
  v136 = a6;
  v142 = v33;
  while (1)
  {
    if (a3 == a2)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if ((v138 & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    if (a2 >= *(a6 + 16))
    {
      goto LABEL_43;
    }

    v51 = v143;
    v52 = (a6 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * a2);
    sub_21B17FCC8(v52, v143);
    v53 = v146;

    sub_21B1CC190(v51, v145, v53, v46);
    v54 = *v52;
    v55 = v52[1];
    v56 = sub_21B20D108();
    v57 = *(v56 + 16);
    v149 = v54;
    if (!v57 || (v58 = sub_21B1B9778(v54, v55), (v59 & 1) == 0))
    {
      v148 = v55;
      v74 = v27;

      v75 = v46;
      v76 = v46;
      v77 = v133;
      (*v125)(v128, v75, v133);
      v78 = &v76[*(v139 + 20)];
      v79 = *v78;
      v80 = *(v78 + 1);
      v81 = v130;
      v82 = v131;
      (*v124)(v130, v154, v131);

      sub_21B20D0D8();
      (*v123)(v81, v82);
      LOBYTE(v152) = 1;
      v83 = v142;
      sub_21B20CFE8();
      v84 = v129;
      sub_21B20CFF8();
      LODWORD(v81) = (*v122)(v84, v77);
      (*v120)(v84, v77);
      if (v81 == v121)
      {
        v85 = sub_21B20D008();
        if (v86)
        {
          sub_21B1B9C24(&v152, v85, v86);
        }
      }

      v27 = v74;
      v87 = v132;
      (*v137)();
      v88 = *v141;
      (*v141)(v87, 0, 1, v27);
      v89 = v148;

      v90 = sub_21B20D0F8();
      v92 = v91;
      if ((*v119)(v87, 1, v27) == 1)
      {
        sub_21B186488(v87, &qword_27CD6F898, qword_21B215D38);
        v93 = *v92;
        v94 = sub_21B1B9778(v149, v89);
        if (v95)
        {
          v96 = v94;
          v97 = *v92;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v99 = *v92;
          v150 = *v92;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_21B2046B4();
            v99 = v150;
          }

          v100 = *(*(v99 + 48) + 16 * v96 + 8);

          v101 = v116;
          (*(v117 + 32))(v116, *(v99 + 56) + *(v117 + 72) * v96, v27);
          sub_21B1BB0B8(v96, v99);
          v102 = 0;
          *v92 = v99;
        }

        else
        {
          v102 = 1;
          v101 = v116;
        }

        v88(v101, v102, 1, v27);

        sub_21B186488(v101, &qword_27CD6F898, qword_21B215D38);
        a6 = v136;
        v83 = v142;
      }

      else
      {
        v47 = v89;
        v48 = v127;
        (*v134)(v127, v87, v27);
        v49 = *v92;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v150 = *v92;
        sub_21B1BBA18(v48, v149, v47, v50);

        *v92 = v150;
        a6 = v136;
      }

      v90(&v152, 0);
      (*v147)(v83, v27);
      a1 = 1;
      v46 = v140;
      goto LABEL_7;
    }

    LODWORD(v148) = a1;
    v60 = v117;
    v61 = *(v117 + 16);
    v62 = v115;
    v61(v115, *(v56 + 56) + *(v117 + 72) * v58, v27);

    v63 = v118;
    (*(v60 + 32))(v118, v62, v27);
    v64 = v127;
    v61(v127, v63, v27);
    v65 = v126;
    sub_21B20CFF8();
    v66 = sub_21B20D008();
    v68 = v67;
    v69 = *(v60 + 8);
    v69(v64, v27);
    v70 = v139;
    v71 = (v65 + *(v139 + 20));
    *v71 = v66;
    v71[1] = v68;
    v46 = v140;
    if ((sub_21B20CFC8() & 1) == 0)
    {
      goto LABEL_33;
    }

    v72 = &v46[*(v70 + 20)];
    v73 = *(v72 + 1);
    if (v68)
    {
      if (!v73 || (v66 != *v72 || v68 != v73) && (sub_21B20DB28() & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v73)
    {
      break;
    }

LABEL_31:
    v69(v118, v27);
    sub_21B1C416C(v126);
    a1 = v148;
    a6 = v136;
LABEL_7:
    ++a2;
    result = sub_21B1C416C(v46);
    a3 = v135;
    if (v135 == a2)
    {
      return a1 & 1;
    }
  }

  v68 = 0;
LABEL_33:
  v152 = 0;
  v153 = 0xE000000000000000;
  sub_21B20D6A8();
  v103 = v146;

  v152 = v145;
  v153 = v103;
  MEMORY[0x21CEEBBB0](46, 0xE100000000000000);
  MEMORY[0x21CEEBBB0](v149, v55);
  MEMORY[0x21CEEBBB0](0x2073616820, 0xE500000000000000);
  v150 = 0;
  v151 = 0xE000000000000000;
  if (v68)
  {
    MEMORY[0x21CEEBBB0](v66, v68);
    MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
    sub_21B20D768();
    v104 = 0x657079742029;
    v105 = 0xE600000000000000;
  }

  else
  {
    sub_21B20D768();
    v104 = 0x6570797420;
    v105 = 0xE500000000000000;
  }

  MEMORY[0x21CEEBBB0](v104, v105);
  MEMORY[0x21CEEBBB0](v150, v151);

  MEMORY[0x21CEEBBB0](0x20656C696877202CLL, 0xE800000000000000);
  v106 = v140;
  v107 = &v140[*(v139 + 20)];
  LOBYTE(a1) = v148;
  if (*(v107 + 1))
  {
    v108 = *v107;
    v150 = 0;
    v151 = 0xE000000000000000;
    MEMORY[0x21CEEBBB0](v108);
    MEMORY[0x21CEEBBB0](10272, 0xE200000000000000);
    sub_21B20D768();
    v109 = 0x657079742029;
    v110 = 0xE600000000000000;
  }

  else
  {
    v150 = 0;
    v151 = 0xE000000000000000;
    sub_21B20D768();
    v109 = 0x6570797420;
    v110 = 0xE500000000000000;
  }

  MEMORY[0x21CEEBBB0](v109, v110);
  MEMORY[0x21CEEBBB0](v150, v151);

  MEMORY[0x21CEEBBB0](0x65666E6920736920, 0xEC00000064657272);
  v111 = v152;
  v112 = v153;
  sub_21B186430();
  swift_allocError();
  *v113 = v111;
  *(v113 + 8) = v112;
  *(v113 + 16) = 5;
  swift_willThrow();
  v69(v118, v27);
  sub_21B1C416C(v126);
  sub_21B1C416C(v106);
  return a1 & 1;
}

uint64_t sub_21B1C3A48(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52 = a5;
  v53 = a4;
  v10 = sub_21B20D118();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v49 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  if (!v13)
  {
    return a1 & 1;
  }

  v14 = (a2 + 48);
  v50 = a3;
  while (1)
  {
    v54 = v13;
    v58 = a1;
    v59 = v6;
    v15 = *(v14 - 2);
    v16 = *(v14 - 1);
    v17 = *v14;
    v18 = *(a3 + 16);
    swift_bridgeObjectRetain_n();
    v56 = v17;

    v19 = v15;
    v20 = v16;
    if (v18)
    {
      v21 = sub_21B1B9778(v15, v16);
      v19 = v15;
      v20 = v16;
      if (v22)
      {
        v23 = (*(a3 + 56) + 16 * v21);
        v19 = *v23;
        v20 = v23[1];
      }
    }

    v57 = v15;
    v55 = sub_21B20D088();
    v25 = v24;
    v26 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *v25;
    v28 = v61;
    *v25 = 0x8000000000000000;
    v29 = v19;
    v31 = sub_21B1B9778(v19, v20);
    v32 = v28[2];
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      break;
    }

    v35 = v30;
    if (v28[3] >= v34)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21B2044CC();
      }
    }

    else
    {
      sub_21B202604(v34, isUniquelyReferenced_nonNull_native);
      v36 = sub_21B1B9778(v29, v20);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_20;
      }

      v31 = v36;
    }

    v38 = v59;
    a1 = v58;
    v39 = *v25;
    *v25 = v61;

    v40 = *v25;
    if ((v35 & 1) == 0)
    {
      v41 = v49;
      sub_21B20D0E8();
      sub_21B2051DC(v31, v29, v20, v41, v40);
    }

    v42 = v40[7] + *(v51 + 72) * v31;
    v43 = v56;
    v44 = *(v56 + 16);

    v45 = sub_21B1C2CF8(0, 0, v44, v57, v16, v43, v29, v20, v42, v52);
    v6 = v38;
    if (v38)
    {

      v55(v60, 1);

      return a1 & 1;
    }

    v46 = v45;

    v55(v60, 0);

    a1 |= v46;
    v14 += 3;
    v13 = v54 - 1;
    a3 = v50;
    if (v54 == 1)
    {
      return a1 & 1;
    }
  }

  __break(1u);
LABEL_20:
  result = sub_21B20DBF8();
  __break(1u);
  return result;
}

uint64_t sub_21B1C3DEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for AutomaticProtobufFactory.DrivenBy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AutomaticProtobufFactory.DrivenBy(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21B1C4128(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_21B1C4144(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_21B1C416C(uint64_t a1)
{
  v2 = type metadata accessor for InferredProtobufType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProtobufFactory.__allocating_init(manifest:messageNameMap:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *(v3 + 48);
  v11 = *(v3 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  v14 = sub_21B20CF68();
  v15 = *(*(v14 - 8) + 56);
  v15(v12 + v13, 1, 1, v14);
  v16 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v17 = sub_21B20D0C8();
  (*(*(v17 - 8) + 32))(v12 + v16, a1, v17);
  *(v12 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = a2;
  v15(v9, 1, 1, v14);
  v18 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v9, v12 + v18);
  swift_endAccess();
  return v12;
}

uint64_t sub_21B1C43C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v5 = sub_21B20D0C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21B1C4450(uint64_t a1, uint64_t *a2)
{
  v4 = sub_21B20D0C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_21B1C4568@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  v4 = sub_21B20D0C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t ProtobufFactory.init(manifest:messageNameMap:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  v10 = sub_21B20CF68();
  v11 = *(*(v10 - 8) + 56);
  v11(v2 + v9, 1, 1, v10);
  v12 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v13 = sub_21B20D0C8();
  (*(*(v13 - 8) + 32))(v2 + v12, a1, v13);
  *(v2 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap) = a2;
  v11(v8, 1, 1, v10);
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v8, v2 + v14);
  swift_endAccess();
  return v2;
}

uint64_t sub_21B1C4780@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B20D0C8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v23 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - v12;
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C573C(v1 + v14, v13);
  v15 = sub_21B20CF68();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return (*(v16 + 32))(a1, v13, v15);
  }

  sub_21B1C546C(v13);
  v17 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v17, v3);
  v18 = v24;
  sub_21B20CF38();
  if (v18)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v20 = *(v4 + 8);
  v24 = 0;
  v20(v7, v3);
  swift_getObjectType();
  v21 = v1;
  sub_21B20D128();
  swift_unknownObjectRelease();
  v22 = v23;
  (*(v16 + 16))(v23, a1, v15);
  (*(v16 + 56))(v22, 0, 1, v15);
  swift_beginAccess();
  sub_21B1C3DEC(v22, v21 + v14);
  return swift_endAccess();
}

uint64_t sub_21B1C4A8C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_21B20D0C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  v12 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  swift_beginAccess();
  (*(v8 + 40))(v1 + v12, v11, v7);
  swift_endAccess();
  v13 = sub_21B20CF68();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store;
  swift_beginAccess();
  sub_21B1C3DEC(v6, v1 + v14);
  return swift_endAccess();
}

uint64_t sub_21B1C4C58(uint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_21B20CF68();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20D038();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v24 = a1[2];
  v16 = *(v4 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = sub_21B1B9778(v15, v14);
    if (v19)
    {
      v20 = (*(v16 + 56) + 16 * v18);
      v22 = *v20;
      v21 = v20[1];
    }
  }

  sub_21B1C4780(v9);
  if (v3)
  {
  }

  else
  {
    sub_21B20CF58();

    (*(v26 + 8))(v9, v6);
    v6 = sub_21B20D028();
    (*(v25 + 8))(v13, v10);
  }

  return v6;
}

uint64_t sub_21B1C4ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[3] = a3;
  v17[1] = a2;
  v5 = sub_21B20CF68();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B20D038();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  sub_21B1C4780(v9);
  if (!v3)
  {
    sub_21B20CF58();
    (*(v6 + 8))(v9, v5);
    v5 = sub_21B20D028();
    (*(v11 + 8))(v14, v10);
  }

  return v5;
}

uint64_t ProtobufFactory.deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v2 = sub_21B20D0C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);

  sub_21B1C546C(v0 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store);
  return v0;
}

uint64_t ProtobufFactory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_manifest;
  v2 = sub_21B20D0C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_messageNameMap);

  sub_21B1C546C(v0 + OBJC_IVAR____TtC12PoirotBlocks15ProtobufFactory_store);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_21B1C525C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[3] = a3;
  v19[1] = a2;
  v6 = sub_21B20CF68();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B20D038();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v3;
  v17 = *(a1 + 16);
  sub_21B1C4780(v10);
  if (!v4)
  {
    sub_21B20CF58();
    (*(v7 + 8))(v10, v6);
    v6 = sub_21B20D028();
    (*(v12 + 8))(v15, v11);
  }

  return v6;
}

uint64_t sub_21B1C546C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ProtobufFactory()
{
  result = qword_27CD6F8A8;
  if (!qword_27CD6F8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B1C5528()
{
  v0 = sub_21B20D0C8();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_21B1C56E4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B1C56E4()
{
  if (!qword_27CD6F8B8)
  {
    sub_21B20CF68();
    v0 = sub_21B20D5D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD6F8B8);
    }
  }
}

uint64_t sub_21B1C573C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F878, &qword_21B215CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B1C57AC()
{
  v0 = sub_21B20D218();
  __swift_allocate_value_buffer(v0, qword_27CD7E090);
  __swift_project_value_buffer(v0, qword_27CD7E090);
  return sub_21B20D208();
}

uint64_t sub_21B1C5824(void (*a1)(__int128 *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v16 = MEMORY[0x277D84F90];
    sub_21B18FE78(0, v5, 0);
    v6 = v16;
    for (i = (a3 + 32); ; ++i)
    {
      v14 = *i;

      a1(v15, &v14, &v13);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v16 = v6;
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B18FE78((v10 > 1), v11 + 1, 1);
        v6 = v16;
      }

      *(v6 + 16) = v11 + 1;
      sub_21B17C284(v15, v6 + 40 * v11 + 32);
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_21B1C595C(void (*a1)(void *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_21B19006C(0, v4, 0);
    v5 = v27;
    v7 = (a3 + 56);
    while (1)
    {
      v8 = *(v7 - 2);
      v9 = *(v7 - 1);
      v10 = *v7;
      v22[0] = *(v7 - 3);
      v22[1] = v8;
      v22[2] = v9;
      v23 = v10;

      a1(v24, v22, &v21);
      if (v3)
      {
        break;
      }

      v12 = v24[0];
      v11 = v24[1];
      v13 = v25;
      v14 = v26;
      v27 = v5;
      v16 = *(v5 + 16);
      v15 = *(v5 + 24);
      if (v16 >= v15 >> 1)
      {
        v19 = v25;
        sub_21B19006C((v15 > 1), v16 + 1, 1);
        v13 = v19;
        v5 = v27;
      }

      *(v5 + 16) = v16 + 1;
      v17 = v5 + 40 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v11;
      *(v17 + 48) = v13;
      *(v17 + 64) = v14;
      v7 += 32;
      --v4;
      v3 = 0;
      if (!v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_21B1C5AB4(void (*a1)(uint64_t *__return_ptr, char *, void *), uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = sub_21B20CA88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B20CAA8();
  v10 = sub_21B1C83C0();
  v11 = sub_21B20D538();
  result = MEMORY[0x277D84F90];
  if (v11)
  {
    v37 = MEMORY[0x277D84F90];
    sub_21B18FD38(0, v11 & ~(v11 >> 63), 0);
    *&v33 = v37;
    result = sub_21B20D528();
    if ((v11 & 0x8000000000000000) == 0)
    {
      v32 = v10;
      v13 = 0;
      v27 = (v5 + 16);
      v28 = (v5 + 8);
      v25 = v4;
      v26 = v8;
      v24[1] = v9;
      while (1)
      {
        v14 = v11;
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v16 = sub_21B20D558();
        (*v27)(v8);
        v16(v34, 0);
        v29(&v35, v8, v34);
        if (v3)
        {
          (*v28)(v8, v4);
        }

        v31 = 0;
        (*v28)(v8, v4);
        v17 = v35;
        v18 = v36;
        v19 = v33;
        v37 = v33;
        v21 = *(v33 + 16);
        v20 = *(v33 + 24);
        if (v21 >= v20 >> 1)
        {
          v33 = v36;
          sub_21B18FD38((v20 > 1), v21 + 1, 1);
          v18 = v33;
          v19 = v37;
        }

        *(v19 + 16) = v21 + 1;
        *&v33 = v19;
        v22 = v19 + 24 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v18;
        result = sub_21B20D548();
        ++v13;
        v23 = v15 == v14;
        v11 = v14;
        v4 = v25;
        v8 = v26;
        v3 = v31;
        if (v23)
        {
          return v33;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B1C5D74(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(a2 + 32);
      __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
      sub_21B1A7C74(v5, v6, v7);
      sub_21B1ACF78();
      sub_21B20DAE8();
      if (v2)
      {
        break;
      }

      result = sub_21B1A7C90(v5, v6, v7);
      if (!--v3)
      {
        return result;
      }
    }

    return sub_21B1A7C90(v5, v6, v7);
  }

  return result;
}

uint64_t sub_21B1C5E60@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_21B1C5E74()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

void sub_21B1C5E80(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_21B1C5E90(uint64_t a1)
{
  v2 = sub_21B1C7EBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B1C5ECC(uint64_t a1)
{
  v2 = sub_21B1C7EBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnyCodable.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void AnyCodable.init(floatLiteral:)(uint64_t a1@<X8>, double a2@<D0>)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t AnyCodable.init(BOOLeanLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

uint64_t AnyCodable.init(integerLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

void AnyCodable.init(dictionaryLiteral:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
    v4 = sub_21B20D808();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_21B1C70C0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t AnyCodable.init(stringLiteral:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
  return result;
}

uint64_t AnyCodable.init(from:)@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C8, &qword_21B215D98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8D0, &qword_21B215DA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1C7EBC();
  sub_21B20DCD8();
  if (v2)
  {

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_21B186488(v7, &qword_27CD6F8C8, &qword_21B215D98);
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21B20DCB8();
    sub_21B17C284(&v28, v30);
    __swift_project_boxed_opaque_existential_1(v30, v31);
    v17 = sub_21B20DAD8();
    v18 = MEMORY[0x277D84F90];
    if ((v17 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
        sub_21B1ACF24();
        sub_21B20DAC8();
        v21 = v28;
        v22 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_21B1D31A0(0, *(v18 + 2) + 1, 1, v18);
        }

        v24 = *(v18 + 2);
        v23 = *(v18 + 3);
        if (v24 >= v23 >> 1)
        {
          v18 = sub_21B1D31A0((v23 > 1), v24 + 1, 1, v18);
        }

        *(v18 + 2) = v24 + 1;
        v25 = &v18[24 * v24];
        *(v25 + 2) = v21;
        v25[48] = v22;
        __swift_project_boxed_opaque_existential_1(v30, v31);
      }

      while ((sub_21B20DAD8() & 1) == 0);
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
    v19 = 1;
  }

  else
  {
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v12, v7, v8);
    v15 = sub_21B20D968();
    MEMORY[0x28223BE20](v15);
    *(&v28 - 2) = v12;
    v16 = sub_21B1C595C(sub_21B1C7F10, (&v28 - 2), v15);

    if (*(v16 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
      v20 = sub_21B20D808();
    }

    else
    {
      v20 = MEMORY[0x277D84F98];
    }

    v30[0] = v20;
    sub_21B1C70C0(v16, 1, v30);
    v18 = v30[0];
    (*(v9 + 8))(v12, v8);
    v19 = 0;
  }

  v26 = v32;
  *v32 = v18;
  v26[1] = 0;
  *(v26 + 16) = v19;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21B1C6624@<X0>(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *a3 = *a1;
  a3[1] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8D0, &qword_21B215DA0);
  sub_21B1ACF24();
  result = sub_21B20D918();
  if (v3)
  {

    *a2 = v3;
  }

  return result;
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8E8, &qword_21B215DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v24 - v8;
  v10 = *v1;
  v11 = *(v1 + 16);
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        v14 = *v1;
        v15 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_21B20DCF8();
        __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
        sub_21B20DBA8();
      }

      else
      {
        v21 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_21B20DCF8();
        __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
        sub_21B20DB98();
      }

      return __swift_destroy_boxed_opaque_existential_1(v27);
    }

    goto LABEL_11;
  }

  v12 = *(v1 + 8);
  if (*(v1 + 16))
  {
    if (v11 == 1)
    {
      v13 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21B20DCE8();
      sub_21B1C5D74(v10, v27);
    }

    else
    {
      v20 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21B20DCF8();
      __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      sub_21B20DB88();
    }

    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v26 = v7;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B1C7EBC();
  sub_21B20DD08();
  a1 = *(v10 + 16);
  if (a1)
  {
    v17 = sub_21B1C703C(*(v10 + 16), 0);
    v18 = sub_21B1C7A9C(v27, v17 + 4, a1, v10);
    v24[2] = v27[1];
    v25 = v18;
    v24[0] = v29;
    v24[1] = v28;
    sub_21B1A7C74(v10, v12, 0);
    sub_21B1A7C74(v10, v12, 0);
    sub_21B17AB4C();
    if (v25 != a1)
    {
      __break(1u);
LABEL_11:
      v19 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_21B20DCF8();
      __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      sub_21B20DBC8();
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v27[0] = v17;
  sub_21B1836B8(v27);
  if (v2)
  {

    __break(1u);
  }

  else
  {
    sub_21B1A7C90(v10, v12, 0);
    v23 = v27[0];
    sub_21B1A7C74(v10, v12, 0);
    sub_21B1C7F30(v23, v9, v10);
    sub_21B1A7C90(v10, v12, 0);

    return (*(v5 + 8))(v9, v26);
  }

  return result;
}

void AnyCodable.asAny()(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = MEMORY[0x277D84A28];
    }

    else
    {
      if (v3 != 4)
      {
        *(a1 + 24) = MEMORY[0x277D839B0];
        *a1 = v2 & 1;
        return;
      }

      v5 = MEMORY[0x277D839F8];
    }

    *(a1 + 24) = v5;
    *a1 = v2;
    return;
  }

  if (*(v1 + 16))
  {
    if (v3 == 1)
    {
      *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8F0, &qword_21B215DB8);
      *a1 = v2;
    }

    else
    {
      v29 = v1[1];
      *(a1 + 24) = MEMORY[0x277D837D0];
      *a1 = v2;
      *(a1 + 8) = v29;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EBB8, &qword_21B2115D0);
    v6 = sub_21B20D7E8();
    v7 = v6;
    v8 = 0;
    v9 = v2 + 64;
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    v31 = v6 + 64;
    v32 = v6;
    if (v12)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56);
        v19 = v2;
        v20 = (*(v2 + 48) + 16 * v17);
        v21 = *v20;
        v22 = v20[1];
        v23 = (v18 + 24 * v17);
        v33 = *v23;
        v34 = *(v23 + 16);

        AnyCodable.asAny()(v35, v24);
        v7 = v32;
        *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        v25 = (v32[6] + 16 * v17);
        *v25 = v21;
        v25[1] = v22;
        sub_21B17C304(v35, (v32[7] + 32 * v17));
        v26 = v32[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          break;
        }

        v32[2] = v28;
        v2 = v19;
        if (!v12)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
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
          *(a1 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8F8, &qword_21B215DC0);
          *a1 = v7;
          return;
        }

        v16 = *(v9 + 8 * v8);
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

    __break(1u);
  }
}

void sub_21B1C6D94(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6F8C0, &qword_21B215D90);
    v4 = sub_21B20D808();
    a1 = v3;
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v5 = v4;
  sub_21B1C70C0(a1, 1, &v5);
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

uint64_t sub_21B1C6E50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void *sub_21B1C6E60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 4;
  return result;
}

unsigned __int8 *sub_21B1C6E74@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 5;
  return result;
}

void *sub_21B1C6E88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  return result;
}

void *sub_21B1C6EB0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB90, &qword_21B2115B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

size_t sub_21B1C6F40(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE38, &qword_21B214180);
  v4 = *(type metadata accessor for DatasetColumnDescription() - 8);
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

void *sub_21B1C703C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EE20, &qword_21B212318);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_21B1C70C0(uint64_t a1, char a2, uint64_t *a3)
{
  v49 = *(a1 + 16);
  if (!v49)
  {
    goto LABEL_24;
  }

  v6 = *(a1 + 64);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);

  sub_21B1A7C74(v8, v7, v6);
  if (!v10)
  {
    goto LABEL_24;
  }

  v51 = v6;
  v50 = a3;
  v11 = *a3;
  v13 = sub_21B1B9778(v9, v10);
  v14 = *(v11 + 16);
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v12;
  if (*(v11 + 24) >= v16)
  {
    if (a2)
    {
      if ((v12 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_21B2044F4();
      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_21B20262C(v16, a2 & 1);
  v18 = *v50;
  v19 = sub_21B1B9778(v9, v10);
  if ((v17 & 1) == (v20 & 1))
  {
    v13 = v19;
    if ((v17 & 1) == 0)
    {
LABEL_13:
      v23 = v50;
      v24 = *v50;
      *(*v50 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v25 = (v24[6] + 16 * v13);
      *v25 = v9;
      v25[1] = v10;
      v26 = v24[7] + 24 * v13;
      *v26 = v8;
      *(v26 + 8) = v7;
      *(v26 + 16) = v51;
      v27 = v24[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v24[2] = v29;
      if (v49 != 1)
      {
        v30 = (a1 + 104);
        v31 = 1;
        while (v31 < *(a1 + 16))
        {
          v32 = *v30;
          v8 = *(v30 - 2);
          v7 = *(v30 - 1);
          v34 = *(v30 - 4);
          v33 = *(v30 - 3);

          sub_21B1A7C74(v8, v7, v32);
          if (!v33)
          {
            goto LABEL_24;
          }

          v51 = v32;
          v35 = *v23;
          v36 = sub_21B1B9778(v34, v33);
          v38 = *(v35 + 16);
          v39 = (v37 & 1) == 0;
          v28 = __OFADD__(v38, v39);
          v40 = v38 + v39;
          if (v28)
          {
            goto LABEL_26;
          }

          v41 = v37;
          if (*(v35 + 24) < v40)
          {
            sub_21B20262C(v40, 1);
            v42 = *v50;
            v36 = sub_21B1B9778(v34, v33);
            if ((v41 & 1) != (v43 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v41)
          {
            goto LABEL_10;
          }

          v23 = v50;
          v44 = *v50;
          *(*v50 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          v45 = (v44[6] + 16 * v36);
          *v45 = v34;
          v45[1] = v33;
          v46 = v44[7] + 24 * v36;
          *v46 = v8;
          *(v46 + 8) = v7;
          *(v46 + 16) = v51;
          v47 = v44[2];
          v28 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          ++v31;
          v44[2] = v48;
          v30 += 40;
          if (v49 == v31)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD6EB28, &qword_21B2126E0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_21B1A7C90(v8, v7, v51);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_21B20DBF8();
  __break(1u);
LABEL_29:
  sub_21B20D6A8();
  MEMORY[0x21CEEBBB0](0xD00000000000001BLL, 0x800000021B20EA00);
  sub_21B20D768();
  MEMORY[0x21CEEBBB0](39, 0xE100000000000000);
  sub_21B20D7C8();
  __break(1u);
}

uint64_t sub_21B1C74BC(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (!a2)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = a3;
  if (!a3)
  {
LABEL_12:
    *v5 = a4;
    v5[1] = v6;
    return v6;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v7 = *(a4 + 16);
    if (v7)
    {
      v8 = a2;
      v9 = 0;
      v10 = (a4 + 48);
      v11 = a3 - 1;
      while (v9 < *(a4 + 16))
      {
        v12 = *(v10 - 1);
        v13 = *v10;
        *v8 = *(v10 - 2);
        v8[1] = v12;
        v8[2] = v13;
        if (v11 == v9)
        {

          goto LABEL_12;
        }

        ++v9;
        v10 += 3;
        v8 += 3;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_9:
    v6 = v7;
    goto LABEL_12;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_21B1C7598(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v23 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 56) + 24 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v20 = v18[2];
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        goto LABEL_23;
      }

      v11 += 3;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v22 = v12 + 1;
    }

    else
    {
      v22 = v13;
    }

    v12 = v22 - 1;
    v10 = result;
LABEL_23:
    v7 = v23;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21B1C7718(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for DatasetColumnDescription();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_21B17FCC8(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_21B1867B4(v12, v15);
      sub_21B1867B4(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}