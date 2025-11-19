uint64_t sub_266A2A8B4()
{
  v1 = *v0;
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](v1);
  return sub_266A468D0();
}

uint64_t sub_266A2A928()
{
  v1 = *v0;
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](v1);
  return sub_266A468D0();
}

uint64_t sub_266A2A96C()
{
  v1 = *v0;
  v2 = 0x6F69736E656D6964;
  v3 = 0x6552726573557369;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x54746E6572727563;
  if (v1 != 1)
  {
    v5 = 0x6E7275547478656ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_266A2AA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A2BCE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A2AA90(uint64_t a1)
{
  v2 = sub_266A2AEE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A2AACC(uint64_t a1)
{
  v2 = sub_266A2AEE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProcessedSiriTurn.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9A0, &qword_266A46E30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A2AEE4();
  sub_266A46900();
  v10 = v2[2];
  v11 = *v2;
  v42 = v2[1];
  v43 = v10;
  v12 = v2[2];
  v13 = v2[4];
  v44 = v2[3];
  v45 = v13;
  v14 = *v2;
  v38 = v12;
  v39 = v44;
  v40 = v2[4];
  v41 = v14;
  v36 = v11;
  v37 = v42;
  v35 = 0;
  sub_266A2AF38(&v41, &v30);
  sub_266A2AF94();
  v15 = v46;
  sub_266A46810();
  if (v15)
  {
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v30 = v36;
    v31 = v37;
    sub_266A2AFE8(&v30);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v46 = v5;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v30 = v36;
    v31 = v37;
    sub_266A2AFE8(&v30);
    v16 = type metadata accessor for ProcessedSiriTurn();
    v17 = v16[5];
    v29 = 1;
    sub_266A46040();
    sub_266A2C934(&qword_2800AE9B8, MEMORY[0x277CC95F0]);
    sub_266A467F0();
    v18 = v16[6];
    v29 = 2;
    sub_266A467F0();
    v20 = *(v2 + v16[7]);
    v29 = 3;
    sub_266A467D0();
    v21 = v46;
    v22 = v2 + v16[8];
    v23 = *v22;
    v24 = v22[8];
    v29 = 4;
    sub_266A467E0();
    v25 = v2 + v16[9];
    v26 = *v25;
    v27 = v25[8];
    v29 = 5;
    sub_266A467E0();
    return (*(v21 + 8))(v8, 0);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266A2AEE4()
{
  result = qword_2800AE9A8;
  if (!qword_2800AE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9A8);
  }

  return result;
}

unint64_t sub_266A2AF94()
{
  result = qword_2800AE9B0;
  if (!qword_2800AE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9B0);
  }

  return result;
}

uint64_t type metadata accessor for ProcessedSiriTurn()
{
  result = qword_2800AEA08;
  if (!qword_2800AEA08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProcessedSiriTurn.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38) - 8) + 64);
  v5 = (MEMORY[0x28223BE20])();
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C8, &qword_266A46E40);
  v35 = *(v10 - 8);
  v36 = v10;
  v11 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ProcessedSiriTurn();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_266A2AEE4();
  v37 = v13;
  sub_266A468F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v33 = v7;
  v20 = v35;
  v45 = 0;
  sub_266A2B610();
  sub_266A467B0();
  v21 = v42;
  v17[2] = v41;
  v17[3] = v21;
  v17[4] = v43;
  v22 = v40;
  *v17 = v39;
  v17[1] = v22;
  sub_266A46040();
  v44 = 1;
  sub_266A2C934(&qword_2800AE9D8, MEMORY[0x277CC95F0]);
  sub_266A46790();
  v23 = v14;
  sub_266A2B664(v9, v17 + *(v14 + 20));
  v44 = 2;
  v24 = v33;
  sub_266A46790();
  sub_266A2B664(v24, v17 + v23[6]);
  v44 = 3;
  *(v17 + v23[7]) = sub_266A46770();
  v44 = 4;
  v25 = sub_266A46780();
  v26 = v17 + v23[8];
  *v26 = v25;
  v26[8] = v27 & 1;
  v44 = 5;
  v28 = sub_266A46780();
  v30 = v29;
  (*(v20 + 8))(v37, v36);
  v31 = v17 + v23[9];
  *v31 = v28;
  v31[8] = v30 & 1;
  sub_266A2B6D4(v17, v34);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_266A2B738(v17);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_266A2B5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266A2B610()
{
  result = qword_2800AE9D0;
  if (!qword_2800AE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9D0);
  }

  return result;
}

uint64_t sub_266A2B664(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A2B6D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessedSiriTurn();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A2B738(uint64_t a1)
{
  v2 = type metadata accessor for ProcessedSiriTurn();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266A2B7CC()
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](0);
  return sub_266A468D0();
}

uint64_t sub_266A2B838()
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](0);
  return sub_266A468D0();
}

uint64_t sub_266A2B89C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65737365636F7270 && a2 == 0xEE00736E72755464)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_266A46840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_266A2B938(uint64_t a1)
{
  v2 = sub_266A2BB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A2B974(uint64_t a1)
{
  v2 = sub_266A2BB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ProcessedSiriConversation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9E0, &qword_266A46E48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A2BB44();
  sub_266A46900();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9F0, &qword_266A46E50);
  sub_266A2C898(&qword_2800AE9F8, &qword_2800AEA00);
  sub_266A46810();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_266A2BB44()
{
  result = qword_2800AE9E8;
  if (!qword_2800AE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AE9E8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_266A2BBF8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_266A2BF08(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266A2BCE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL || (sub_266A46840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54746E6572727563 && a2 == 0xED000064496E7275 || (sub_266A46840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E7275547478656ELL && a2 == 0xEA00000000006449 || (sub_266A46840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552726573557369 && a2 == 0xED00007473657571 || (sub_266A46840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000266A48AE0 == a2 || (sub_266A46840() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000266A48B00 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_266A46840();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

void *sub_266A2BF08(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEA68, &qword_266A471B0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A2BB44();
  sub_266A468F0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9F0, &qword_266A46E50);
    sub_266A2C898(&qword_2800AEA70, &qword_2800AEA78);
    sub_266A467B0();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_266A2C0D8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_266A2C1A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_266A2C258()
{
  sub_266A2C34C();
  if (v0 <= 0x3F)
  {
    sub_266A2C3DC(319, &qword_2800AEA20, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_266A2C3DC(319, &qword_2800AEA28, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266A2C34C()
{
  if (!qword_2800AEA18)
  {
    sub_266A46040();
    v0 = sub_266A466A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2800AEA18);
    }
  }
}

void sub_266A2C3DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for ProcessedSiriConversation.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ProcessedSiriConversation.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ProcessedSiriTurn.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProcessedSiriTurn.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A2C68C()
{
  result = qword_2800AEA38;
  if (!qword_2800AEA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA38);
  }

  return result;
}

unint64_t sub_266A2C6E4()
{
  result = qword_2800AEA40;
  if (!qword_2800AEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA40);
  }

  return result;
}

unint64_t sub_266A2C73C()
{
  result = qword_2800AEA48;
  if (!qword_2800AEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA48);
  }

  return result;
}

unint64_t sub_266A2C794()
{
  result = qword_2800AEA50;
  if (!qword_2800AEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA50);
  }

  return result;
}

unint64_t sub_266A2C7EC()
{
  result = qword_2800AEA58;
  if (!qword_2800AEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA58);
  }

  return result;
}

unint64_t sub_266A2C844()
{
  result = qword_2800AEA60;
  if (!qword_2800AEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEA60);
  }

  return result;
}

uint64_t sub_266A2C898(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AE9F0, &qword_266A46E50);
    sub_266A2C934(a2, type metadata accessor for ProcessedSiriTurn);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A2C934(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SiriCoreMetricsResultsV2.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t SiriCoreMetricsResultsV2.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriCoreMetricsCalculatorV2.__allocating_init(logger:bookmarkService:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v9 = sub_266A46510();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService) = a2;
  return v7;
}

uint64_t SiriCoreMetricsCalculatorV2.init(logger:bookmarkService:)(uint64_t a1, uint64_t a2)
{
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService) = a2;
  return v2;
}

uint64_t SiriCoreMetricsCalculatorV2.doWork(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_266A45FF0();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v7 = sub_266A46040();
  v2[9] = v7;
  v8 = *(v7 - 8);
  v2[10] = v8;
  v9 = *(v8 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEA98, &qword_266A471D0);
  v2[14] = v10;
  v11 = *(v10 - 8);
  v2[15] = v11;
  v12 = *(v11 + 64) + 15;
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A2CD54, 0, 0);
}

void sub_266A2CD54()
{
  v1 = v0[2];
  v86 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAA0, &qword_266A471D8);
  v2 = sub_266A46110();
  v3 = v2;
  v4 = *(v2 + 16);
  if (!v4)
  {

    v52 = MEMORY[0x277D84FA0];
LABEL_32:
    v53 = v0[3];

    v54 = sub_266A464F0();
    v55 = sub_266A46680();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = *(v52 + 16);

      _os_log_impl(&dword_266A29000, v54, v55, "marker: read %ld Siri turns in this run", v56, 0xCu);
      MEMORY[0x26D5E7060](v56, -1, -1);
    }

    else
    {
    }

    v57 = *(v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService);
    sub_266A46230();
    v85 = v52;
    if (v58)
    {
      v59 = v0[5];
      v60 = v0[6];
      v61 = v0[4];
      v62 = v0[3] + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_calendar;
      sub_266A46170();
      sub_266A45FA0();
      (*(v59 + 8))(v60, v61);
    }

    v63 = v0[16];
    v65 = v0[12];
    v64 = v0[13];
    v66 = v0[11];
    v68 = v0[7];
    v67 = v0[8];
    v69 = v0[5];
    v84 = v0[6];
    v70 = v0[4];
    sub_266A45F90();
    v71 = sub_266A46130();
    (*(v69 + 8))(v68, v70);

    v72 = v0[1];
    v73 = MEMORY[0x277D84F90];

    v72(v71, v73, v85);
    return;
  }

  v5 = 0;
  v6 = v0[15];
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = v0[10];
  v78 = (v8 + 48);
  v79 = *(v2 + 16);
  v75 = (v8 + 16);
  v76 = (v8 + 32);
  v74 = (v8 + 8);
  v9 = &off_279BD9000;
  v83 = v7;
  v80 = v2;
  while (v5 < *(v3 + 16))
  {
    v10 = v0[16];
    v11 = v0[14];
    (*(v6 + 16))(v10, v7 + *(v6 + 72) * v5, v11);
    v12 = sub_266A460F0();
    (*(v6 + 8))(v10, v11);
    v13 = [v12 eventData];

    if (v13)
    {
      v14 = sub_266A45F80();
      v16 = v15;

      v13 = sub_266A45F70();
      sub_266A2D8B8(v14, v16);
    }

    v17 = [objc_allocWithZone(MEMORY[0x277D5A790]) v9[109]];

    if (!v17)
    {
      goto LABEL_41;
    }

    if ([v17 anyEventType] == 6)
    {
      v18 = [v17 payload];
      if (v18)
      {
        v19 = v18;
        v20 = sub_266A45F80();
        v22 = v21;

        v23 = sub_266A45F70();
        v24 = v20;
        v9 = &off_279BD9000;
        v25 = v22;
        v7 = v83;
        sub_266A2D8B8(v24, v25);
      }

      else
      {
        v23 = 0;
      }

      v26 = [objc_allocWithZone(MEMORY[0x277D5A978]) v9[109]];

      if (v26)
      {
        v27 = [v26 event];
        if (v27)
        {
          v28 = v27;

          v17 = v28;
        }
      }
    }

    if ([v17 anyEventType] == 1)
    {
      v29 = [v17 payload];
      if (v29)
      {
        v30 = v29;
        v31 = sub_266A45F80();
        v33 = v32;

        v34 = sub_266A45F70();
        v35 = v33;
        v9 = &off_279BD9000;
        sub_266A2D8B8(v31, v35);
      }

      else
      {
        v34 = 0;
      }

      v36 = [objc_allocWithZone(MEMORY[0x277D5A800]) v9[109]];

      if (v36)
      {
        v37 = [v36 eventMetadata];
        if (v37)
        {
          v38 = v37;
          v39 = [v37 turnID];

          if (v39)
          {
            v40 = v0[8];
            v81 = v0[9];
            v41 = sub_266A45F80();
            v43 = v42;

            v44 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            sub_266A2D864(v41, v43);
            v45 = sub_266A45F70();
            v46 = [v44 initWithBytesAsData_];

            sub_266A2D8B8(v41, v43);
            sub_266A46660();

            if ((*v78)(v40, 1, v81) == 1)
            {
              v47 = v0[8];

              sub_266A2D8B8(v41, v43);
              sub_266A2B5A8(v47);
            }

            else
            {
              v48 = v0[13];
              v82 = v48;
              v49 = v0[11];
              v77 = v0[12];
              v50 = v0[9];
              (*v76)(v48, v0[8], v50);
              (*v75)(v49, v48, v50);
              sub_266A2D90C(v77, v49);

              sub_266A2D8B8(v41, v43);
              v51 = *v74;
              (*v74)(v77, v50);
              v51(v82, v50);
            }

            v4 = v79;
            v3 = v80;
            v7 = v83;
            v9 = &off_279BD9000;
          }

          else
          {

            v9 = &off_279BD9000;
          }

          goto LABEL_5;
        }
      }
    }

LABEL_5:
    if (v4 == ++v5)
    {

      v52 = v86;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t SiriCoreMetricsCalculatorV2.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService);

  return v0;
}

uint64_t SiriCoreMetricsCalculatorV2.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15SiriCoreMetrics27SiriCoreMetricsCalculatorV2_bookmarkService);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t sub_266A2D5F8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_266A2D694;

  return SiriCoreMetricsCalculatorV2.doWork(_:)(a2);
}

uint64_t sub_266A2D694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *(*v4 + 24);
  v10 = *v4;

  if (!v3)
  {
    v11 = *(v8 + 16);
    *v11 = a1;
    v11[1] = a2;
    v11[2] = a3;
  }

  v12 = *(v10 + 8);

  return v12();
}

uint64_t sub_266A2D7B8(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_266A2D804@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_266A2D834(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

_BYTE **sub_266A2D854(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_266A2D864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266A2D8B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_266A2D90C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_266A46040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_266A2DE5C(&qword_2800AEAC8);
  v36 = a2;
  v13 = sub_266A46540();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_266A2DE5C(&qword_2800AEAD0);
      v23 = sub_266A46560();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_266A2E1E8(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

unint64_t sub_266A2DBC4()
{
  result = qword_2800AEAA8;
  if (!qword_2800AEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEAA8);
  }

  return result;
}

unint64_t sub_266A2DC1C()
{
  result = qword_2800AEAB0;
  if (!qword_2800AEAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800AEAA0, &qword_266A471D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEAB0);
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

uint64_t sub_266A2DC98(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_266A2DCE0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for SiriCoreMetricsCalculatorV2()
{
  result = qword_2800AEAB8;
  if (!qword_2800AEAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A2DD84()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_266A460E0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_266A2DE5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_266A46040();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266A2DEA0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_266A46040();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAD8, &qword_266A47310);
  result = sub_266A466D0();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_266A2DE5C(&qword_2800AEAC8);
      result = sub_266A46540();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_266A2E1E8(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_266A46040();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_266A2DEA0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_266A2E464();
      goto LABEL_12;
    }

    sub_266A2E69C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_266A2DE5C(&qword_2800AEAC8);
  v15 = sub_266A46540();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_266A2DE5C(&qword_2800AEAD0);
      v23 = sub_266A46560();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_266A46850();
  __break(1u);
  return result;
}

void *sub_266A2E464()
{
  v1 = v0;
  v2 = sub_266A46040();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAD8, &qword_266A47310);
  v7 = *v0;
  v8 = sub_266A466C0();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_266A2E69C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_266A46040();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAD8, &qword_266A47310);
  v10 = sub_266A466D0();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_266A2DE5C(&qword_2800AEAC8);
      result = sub_266A46540();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v10;
  }

  return result;
}

uint64_t SiriCoreMetricsCalculator.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v4 = sub_266A460E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SiriCoreMetricsCalculator.__allocating_init(logger:conversationTurnType:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v8 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v9 = sub_266A46510();
  (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(v7 + 16) = a2;
  return v7;
}

uint64_t SiriCoreMetricsCalculator.init(logger:conversationTurnType:)(uint64_t a1, uint64_t a2)
{
  _s15SiriCoreMetrics0abC10CalculatorC8calendar10Foundation8CalendarVvpfi_0();
  v5 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v6 = sub_266A46510();
  (*(*(v6 - 8) + 32))(v2 + v5, a1, v6);
  *(v2 + 16) = a2;
  return v2;
}

uint64_t SiriCoreMetricsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_266A461E0();
  v3[33] = v4;
  v5 = *(v4 - 8);
  v3[34] = v5;
  v6 = *(v5 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v7 = type metadata accessor for SiriCountsAll(0);
  v3[38] = v7;
  v8 = *(v7 - 8);
  v3[39] = v8;
  v9 = *(v8 + 64) + 15;
  v3[40] = swift_task_alloc();
  v10 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v3[41] = v10;
  v11 = *(v10 - 8);
  v3[42] = v11;
  v12 = *(v11 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAE8, &qword_266A47338) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAF0, &qword_266A47340) - 8) + 64) + 15;
  v3[47] = swift_task_alloc();
  v15 = type metadata accessor for ProcessedSiriTurn();
  v3[48] = v15;
  v16 = *(v15 - 8);
  v3[49] = v16;
  v17 = *(v16 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v18 = sub_266A45FF0();
  v3[52] = v18;
  v19 = *(v18 - 8);
  v3[53] = v19;
  v20 = *(v19 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266A2EE44, 0, 0);
}

void (*sub_266A2EE44())(void)
{
  v279 = v0;
  v1 = *(v0 + 248);
  v2 = objc_allocWithZone(sub_266A464D0());
  v220 = sub_266A464C0();
  v3 = sub_266A46290();
  v4 = MEMORY[0x277D84F90];
  v5 = sub_266A37478(MEMORY[0x277D84F90]);
  v247 = sub_266A37478(v4);
  v275 = sub_266A37574(v4);
  v6 = sub_266A37758(v4);
  v7 = v3;
  v224 = v6;
  v276 = v4;
  v221 = v3;
  if (v3 >> 62)
  {
    goto LABEL_177;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v239 = v0;
  v222 = result;
  if (!result)
  {
LABEL_55:
    sub_266A46450();

    v64 = &unk_2800B0000;
    if (v222)
    {
      v65 = 0;
      v66 = *(v0 + 256);
      v244 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
      v267 = (*(v0 + 424) + 8);
      v229 = *(v0 + 392);
      v232 = MEMORY[0x277D84F90];
      v250 = v66;
      do
      {
        if ((v221 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D5E6A00](v65, v221);
          v35 = __OFADD__(v65, 1);
          v67 = (v65 + 1);
          if (v35)
          {
            goto LABEL_170;
          }
        }

        else
        {
          if (v65 >= *((v221 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_175;
          }

          v68 = *(v221 + 32 + 8 * v65);

          v35 = __OFADD__(v65, 1);
          v67 = (v65 + 1);
          if (v35)
          {
            goto LABEL_170;
          }
        }

        v223 = v67;
        v69 = sub_266A46420();
        v70 = v69;
        if (v69 >> 62)
        {
          v71 = sub_266A46730();
          if (v71)
          {
LABEL_65:
            v72 = 0;
            v272 = v70 & 0xC000000000000001;
            v236 = v70 & 0xFFFFFFFFFFFFFF8;
            v242 = MEMORY[0x277D84F90];
            v254 = v70;
            v260 = v71;
            while (1)
            {
              if (v272)
              {
                MEMORY[0x26D5E6A00](v72, v70);
                v80 = v72 + 1;
                if (__OFADD__(v72, 1))
                {
                  goto LABEL_160;
                }
              }

              else
              {
                if (v72 >= *(v236 + 16))
                {
                  goto LABEL_161;
                }

                v81 = *(v70 + 8 * v72 + 32);

                v80 = v72 + 1;
                if (__OFADD__(v72, 1))
                {
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
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
LABEL_173:
                  __break(1u);
LABEL_174:
                  __break(1u);
LABEL_175:
                  __break(1u);
LABEL_176:
                  __break(1u);
LABEL_177:
                  result = sub_266A46730();
                  v7 = v221;
                  goto LABEL_3;
                }
              }

              if (sub_266A46480())
              {
                v83 = *(v0 + 440);
                v82 = *(v0 + 448);
                v84 = *(v0 + 416);
                sub_266A464A0();
                sub_266A45F90();
                sub_266A45FB0();
                v264 = *v267;
                (*v267)(v83, v84);
                if (MEMORY[0x26D5E6400](v82, v66 + v244))
                {
                  v85 = sub_266A464F0();
                  v86 = sub_266A46670();
                  v87 = os_log_type_enabled(v85, v86);
                  v5 = *(v0 + 448);
                  v88 = *(v0 + 416);
                  v71 = v260;
                  if (v87)
                  {
                    v89 = swift_slowAlloc();
                    *v89 = 0;
                    _os_log_impl(&dword_266A29000, v85, v86, "Skipping turns that happen today or in the future.", v89, 2u);
                    MEMORY[0x26D5E7060](v89, -1, -1);
                  }

                  else
                  {
                  }

                  v264(v5, v88);
                  v66 = v250;
                  v70 = v254;
                }

                else
                {
                  v92 = *(v0 + 376);
                  v91 = *(v0 + 384);
                  v93 = *(v0 + 256);
                  SiriCoreMetricsCalculator.processTurn(turn:turnIdToConvIdx:counts:)(v247, &v275, v92);
                  v71 = v260;
                  if ((*(v229 + 48))(v92, 1, v91) == 1)
                  {
                    sub_266A38274(*(v0 + 376), &qword_2800AEAF0, &qword_266A47340);

                    v5 = sub_266A464F0();
                    v94 = sub_266A46690();

                    v95 = os_log_type_enabled(v5, v94);
                    v96 = *(v0 + 448);
                    v97 = *(v0 + 416);
                    if (v95)
                    {
                      v226 = *(v0 + 416);
                      v98 = swift_slowAlloc();
                      v99 = swift_slowAlloc();
                      v278[0] = v99;
                      *v98 = 136315138;
                      v100 = sub_266A46490();
                      v102 = sub_266A333F0(v100, v101, v278);

                      *(v98 + 4) = v102;
                      v66 = v250;
                      _os_log_impl(&dword_266A29000, v5, v94, "    Could not create processed turn struct from featurizd turn:\n    %s", v98, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v99);
                      v103 = v99;
                      v0 = v239;
                      MEMORY[0x26D5E7060](v103, -1, -1);
                      MEMORY[0x26D5E7060](v98, -1, -1);

                      v104 = v96;
                      v105 = v226;
                    }

                    else
                    {

                      v104 = v96;
                      v105 = v97;
                    }

                    v264(v104, v105);
                    v70 = v254;
                  }

                  else
                  {
                    v107 = *(v0 + 400);
                    v106 = *(v0 + 408);
                    sub_266A37B38(*(v0 + 376), v106, type metadata accessor for ProcessedSiriTurn);
                    sub_266A37BA0(v106, v107, type metadata accessor for ProcessedSiriTurn);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v242 = sub_266A33190(0, v242[2] + 1, 1, v242, &qword_2800AEB98, &qword_266A47460, type metadata accessor for ProcessedSiriTurn);
                    }

                    v109 = v242[2];
                    v108 = v242[3];
                    if (v109 >= v108 >> 1)
                    {
                      v242 = sub_266A33190(v108 > 1, v109 + 1, 1, v242, &qword_2800AEB98, &qword_266A47460, type metadata accessor for ProcessedSiriTurn);
                    }

                    v0 = v239;
                    v5 = v239[56];
                    v111 = v239[51];
                    v110 = v239[52];
                    v112 = v239[50];

                    sub_266A37C08(v111, type metadata accessor for ProcessedSiriTurn);
                    v264(v5, v110);
                    v242[2] = v109 + 1;
                    sub_266A37B38(v112, v242 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v109, type metadata accessor for ProcessedSiriTurn);
                    v66 = v250;
                    v70 = v254;
                    v71 = v260;
                  }
                }
              }

              else
              {

                v5 = sub_266A464F0();
                v90 = sub_266A46690();

                if (os_log_type_enabled(v5, v90))
                {
                  v73 = swift_slowAlloc();
                  v74 = swift_slowAlloc();
                  v278[0] = v74;
                  *v73 = 136315138;
                  v75 = sub_266A46490();
                  v77 = sub_266A333F0(v75, v76, v278);

                  *(v73 + 4) = v77;
                  v70 = v254;
                  _os_log_impl(&dword_266A29000, v5, v90, "Turn: %s has an invalid timestamp", v73, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v74);
                  v78 = v74;
                  v71 = v260;
                  MEMORY[0x26D5E7060](v78, -1, -1);
                  v79 = v73;
                  v66 = v250;
                  MEMORY[0x26D5E7060](v79, -1, -1);
                }

                else
                {
                }
              }

              ++v72;
              if (v80 == v71)
              {
                goto LABEL_94;
              }
            }
          }
        }

        else
        {
          v71 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v71)
          {
            goto LABEL_65;
          }
        }

        v242 = MEMORY[0x277D84F90];
LABEL_94:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = sub_266A33084(0, *(v232 + 2) + 1, 1, v232);
        }

        v114 = *(v232 + 2);
        v113 = *(v232 + 3);
        if (v114 >= v113 >> 1)
        {
          v232 = sub_266A33084((v113 > 1), v114 + 1, 1, v232);
        }

        *(v232 + 2) = v114 + 1;
        *&v232[8 * v114 + 32] = v242;
        v65 = v223;
        v64 = &unk_2800B0000;
      }

      while (v223 != v222);
    }

    else
    {
      v232 = MEMORY[0x277D84F90];
    }

    v251 = (v0 + 176);
    v234 = (v0 + 208);
    v115 = *(v0 + 432);
    v237 = *(v0 + 336);
    v257 = *(v0 + 328);
    v245 = *(v0 + 312);
    v255 = *(v0 + 304);
    v116 = *(v0 + 272);
    v118 = *(v0 + 248);
    v117 = *(v0 + 256);
    v119 = v64;

    v120 = v117 + v119[470];
    sub_266A46170();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEAF8, &qword_266A47348);
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_266A47320;
    *(v121 + 32) = sub_266A46270();
    v227 = sub_266A46120();

    v122 = sub_266A37940(MEMORY[0x277D84F90]);
    v5 = 0;
    v124 = v275 + 64;
    v123 = *(v275 + 64);
    v125 = -1;
    v243 = v275;
    v126 = -1 << *(v275 + 32);
    v277 = v122;
    if (-v126 < 64)
    {
      v125 = ~(-1 << -v126);
    }

    v127 = v125 & v123;
    v128 = (63 - v126) >> 6;
    v268 = (v116 + 16);
    v235 = v116;
    v261 = (v116 + 8);
    v247 = v275 + 64;
    v230 = v128;
    v265 = 0;
    if ((v125 & v123) == 0)
    {
LABEL_105:
      if (v128 <= &v5->isa + 1)
      {
        v130 = &v5->isa + 1;
      }

      else
      {
        v130 = v128;
      }

      v131 = (v130 - 1);
      while (1)
      {
        v129 = (&v5->isa + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_162;
        }

        if (v129 >= v128)
        {
          v200 = *(v0 + 360);
          v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB00, &unk_266A47350);
          (*(*(v201 - 8) + 56))(v200, 1, 1, v201);
          v127 = 0;
          v5 = v131;
          goto LABEL_114;
        }

        v127 = *(v124 + 8 * v129);
        v5 = (v5 + 1);
        if (v127)
        {
          v5 = v129;
          goto LABEL_113;
        }
      }
    }

    while (1)
    {
      v129 = v5;
LABEL_113:
      v134 = v0 + 352;
      v133 = *(v0 + 352);
      v132 = *(v134 + 8);
      v135 = __clz(__rbit64(v127));
      v127 &= v127 - 1;
      v136 = v135 | (v129 << 6);
      sub_266A37BA0(*(v243 + 48) + *(v237 + 72) * v136, v133, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v137 = *(v243 + 56);
      v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB00, &unk_266A47350);
      v139 = *(v138 + 48);
      v140 = *(v137 + 8 * v136);
      sub_266A37B38(v133, v132, type metadata accessor for SiriCoreMetricsAggregationKeys);
      *(v132 + v139) = v140;
      v0 = v239;
      (*(*(v138 - 8) + 56))(v132, 0, 1, v138);
LABEL_114:
      v141 = *(v0 + 368);
      sub_266A382D4(*(v0 + 360), v141, &qword_2800AEAE8, &qword_266A47338);
      v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB00, &unk_266A47350);
      if ((*(*(v142 - 8) + 48))(v141, 1, v142) == 1)
      {
        v206 = *(v0 + 440);
        v207 = *(v0 + 448);
        v209 = *(v0 + 424);
        v208 = *(v0 + 432);
        v210 = *(v0 + 416);
        v238 = *(v0 + 408);
        v240 = *(v0 + 400);
        v246 = *(v0 + 376);
        v248 = *(v0 + 368);
        v252 = *(v0 + 360);
        v256 = *(v0 + 352);
        v258 = *(v0 + 344);
        v262 = *(v0 + 320);
        v269 = *(v0 + 296);
        v274 = *(v0 + 288);
        v211 = *(v0 + 280);
        v213 = *(v0 + 248);
        v212 = *(v0 + 256);
        v214 = *(v0 + 240);

        v215 = *(v213 + *(type metadata accessor for SiriCoreMetricsDataRecord(0) + 20));
        v216 = v277;
        v217 = SiriCoreMetricsCalculator.calculateTwoByThree(previousRequestCounts:totalCounts:)(v215, v277);

        (*(v209 + 8))(v208, v210);

        sub_266A37B28(v265);

        *v214 = v232;
        v214[1] = v224;
        v214[2] = MEMORY[0x277D84F90];
        v214[3] = v227;
        v214[4] = v216;
        v214[5] = v217;
        v218 = *(v0 + 8);

        return v218();
      }

      v143 = *(v0 + 368);
      v144 = *(v0 + 344);
      v145 = *(v0 + 320);
      v146 = *(v0 + 264);
      v273 = *(v143 + *(v142 + 48));
      sub_266A37B38(v143, v144, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v147 = *v268;
      (*v268)(v145, v144, v146);
      v148 = (v144 + *(v257 + 20));
      v150 = v148[3];
      v149 = v148[4];
      v151 = v148[2];
      *(v0 + 32) = v148[1];
      *(v0 + 48) = v151;
      *(v0 + 64) = v150;
      *(v0 + 80) = v149;
      *(v0 + 16) = *v148;
      memmove((v145 + *(v255 + 20)), v148, 0x50uLL);
      *(v145 + *(v255 + 24)) = v273;
      sub_266A2AF38(v0 + 16, v0 + 96);
      sub_266A37B28(v265);
      v152 = v224;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v278[0] = v224;
      v155 = sub_266A33B48(v144);
      v156 = *(v224 + 16);
      v157 = (v154 & 1) == 0;
      v158 = v156 + v157;
      if (__OFADD__(v156, v157))
      {
        goto LABEL_171;
      }

      v159 = v154;
      if (*(v224 + 24) >= v158)
      {
        break;
      }

      v0 = v239[43];
      sub_266A347BC(v158, isUniquelyReferenced_nonNull_native);
      v152 = v278[0];
      v160 = sub_266A33B48(v0);
      if ((v159 & 1) != (v161 & 1))
      {
        goto LABEL_156;
      }

      v155 = v160;
      if ((v159 & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_124:
      v224 = v152;
      v166 = v152[7];
      v167 = *(v166 + 8 * v155);
      v168 = swift_isUniquelyReferenced_nonNull_native();
      *(v166 + 8 * v155) = v167;
      if ((v168 & 1) == 0)
      {
        v167 = sub_266A33190(0, v167[2] + 1, 1, v167, &qword_2800AEBB8, &qword_266A47480, type metadata accessor for SiriCountsAll);
        *(v166 + 8 * v155) = v167;
      }

      v170 = v167[2];
      v169 = v167[3];
      if (v170 >= v169 >> 1)
      {
        v167 = sub_266A33190(v169 > 1, v170 + 1, 1, v167, &qword_2800AEBB8, &qword_266A47480, type metadata accessor for SiriCountsAll);
        *(v166 + 8 * v155) = v167;
      }

      v171 = v239[40];
      v167[2] = v170 + 1;
      sub_266A37B38(v171, v167 + ((*(v245 + 80) + 32) & ~*(v245 + 80)) + *(v245 + 72) * v170, type metadata accessor for SiriCountsAll);
      v172 = v277;
      if (v277[2] && (sub_266A33B48(v239[43]), (v173 & 1) != 0))
      {
        v147(v239[37], v239[43], v239[33]);
        result = sub_266A308D0(v251);
        if ((*(v174 + 8) & 1) == 0)
        {
          v175 = *(v174 + 4);
          v176 = __CFADD__(v175, HIDWORD(v273));
          v177 = v175 + HIDWORD(v273);
          if (v176)
          {
            goto LABEL_179;
          }

          *(v174 + 4) = v177;
        }

        (result)(v251, 0);
        v178 = v239[43];
        v179 = v239[36];
        v180 = v239[33];
        v181 = *v261;
        (*v261)(v239[37], v180);
        v147(v179, v178, v180);
        result = sub_266A308D0(v234);
        if (*(v182 + 8))
        {
          v183 = v239[43];
          v184 = v239[36];
          v185 = v239[33];
          result();
          v181(v184, v185);
          sub_266A37C08(v183, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v0 = v239;
          v124 = v247;
          v128 = v230;
        }

        else
        {
          if (__CFADD__(*v182, v273))
          {
            goto LABEL_180;
          }

          v202 = v239[43];
          v203 = v239[36];
          v204 = v239[33];
          *v182 += v273;
          result();
          v181(v203, v204);
          v0 = v239;
          sub_266A37C08(v202, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v124 = v247;
          v128 = v230;
        }
      }

      else
      {
        v0 = v239[35];
        v147(v0, v239[43], v239[33]);
        v186 = swift_isUniquelyReferenced_nonNull_native();
        v278[0] = v172;
        v187 = sub_266A33B48(v0);
        v189 = v172[2];
        v190 = (v188 & 1) == 0;
        v35 = __OFADD__(v189, v190);
        v191 = v189 + v190;
        if (v35)
        {
          goto LABEL_172;
        }

        v192 = v188;
        if (v172[3] >= v191)
        {
          if ((v186 & 1) == 0)
          {
            v205 = v187;
            sub_266A369F0();
            v187 = v205;
            v172 = v278[0];
          }
        }

        else
        {
          v193 = v239[35];
          sub_266A343F8(v191, v186);
          v172 = v278[0];
          v187 = sub_266A33B48(v193);
          if ((v192 & 1) != (v194 & 1))
          {
LABEL_156:
            v219 = v239[33];
            goto LABEL_157;
          }
        }

        v195 = v239[43];
        v196 = v239[35];
        v197 = v239[33];
        if (v192)
        {
          *(v172[7] + 8 * v187) = v273;
          (*v261)(v196, v197);
          sub_266A37C08(v195, type metadata accessor for SiriCoreMetricsAggregationKeys);
        }

        else
        {
          v172[(v187 >> 6) + 8] |= 1 << v187;
          v0 = v187;
          v147(v172[6] + *(v235 + 72) * v187, v196, v197);
          *(v172[7] + 8 * v0) = v273;
          (*(v235 + 8))(v196, v197);
          sub_266A37C08(v195, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v198 = v172[2];
          v35 = __OFADD__(v198, 1);
          v199 = v198 + 1;
          if (v35)
          {
            goto LABEL_176;
          }

          v172[2] = v199;
        }

        v277 = v172;
        v0 = v239;
        v124 = v247;
      }

      v265 = sub_266A30774;
      if (!v127)
      {
        goto LABEL_105;
      }
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v154)
      {
        goto LABEL_124;
      }
    }

    else
    {
      sub_266A36C64();
      v152 = v278[0];
      if (v159)
      {
        goto LABEL_124;
      }
    }

LABEL_122:
    v162 = v239[43];
    v163 = v239[33];
    v152[(v155 >> 6) + 8] |= 1 << v155;
    v147(v152[6] + *(v235 + 72) * v155, v162, v163);
    *(v152[7] + 8 * v155) = MEMORY[0x277D84F90];
    v164 = v152[2];
    v35 = __OFADD__(v164, 1);
    v165 = v164 + 1;
    if (v35)
    {
      goto LABEL_173;
    }

    v152[2] = v165;
    goto LABEL_124;
  }

  v9 = 0;
  v10 = 0;
  v249 = *(v0 + 256);
  v228 = v7 & 0xFFFFFFFFFFFFFF8;
  v231 = v7 & 0xC000000000000001;
  v225 = v7 + 32;
  while (v231)
  {
    MEMORY[0x26D5E6A00](v9);
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      goto LABEL_174;
    }

LABEL_12:
    v233 = v11;
    v13 = sub_266A46420();
    v14 = v13;
    if (v13 >> 62)
    {
      v15 = sub_266A46730();
      if (!v15)
      {
        goto LABEL_5;
      }

LABEL_14:
      v253 = v9;
      v16 = 0;
      v266 = v14 & 0xC000000000000001;
      v241 = v14 & 0xFFFFFFFFFFFFFF8;
      v259 = v14;
      v263 = v15;
      while (2)
      {
        if (v266)
        {
          MEMORY[0x26D5E6A00](v16, v14);
          v0 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_163;
          }
        }

        else
        {
          if (v16 >= *(v241 + 16))
          {
            goto LABEL_167;
          }

          v17 = *(v14 + 8 * v16 + 32);

          v0 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_163;
          }
        }

        v18 = sub_266A46480();

        if (v18)
        {
          v270 = v10;
          MEMORY[0x26D5E68F0](v19);
          if (*((v276 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v276 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v59 = *((v276 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_266A46610();
          }

          sub_266A46630();
          v20 = sub_266A46490();
          v22 = v21;
          v23 = swift_isUniquelyReferenced_nonNull_native();
          v278[0] = v247;
          v25 = sub_266A33AD0(v20, v22);
          v26 = *(v247 + 16);
          v27 = (v24 & 1) == 0;
          v28 = v26 + v27;
          if (__OFADD__(v26, v27))
          {
            goto LABEL_164;
          }

          v29 = v24;
          if (*(v247 + 24) >= v28)
          {
            if (v23)
            {
              v15 = v263;
              if ((v24 & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            else
            {
              sub_266A36EE4();
              v15 = v263;
              if ((v29 & 1) == 0)
              {
                goto LABEL_30;
              }
            }
          }

          else
          {
            sub_266A34B98(v28, v23);
            v30 = sub_266A33AD0(v20, v22);
            if ((v29 & 1) != (v31 & 1))
            {
              goto LABEL_157;
            }

            v25 = v30;
            v15 = v263;
            if ((v29 & 1) == 0)
            {
LABEL_30:
              v32 = v278[0];
              *(v278[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
              v33 = (v32[6] + 16 * v25);
              *v33 = v20;
              v33[1] = v22;
              *(v32[7] + 8 * v25) = v253;
              v34 = v32[2];
              v35 = __OFADD__(v34, 1);
              v36 = v34 + 1;
              if (v35)
              {
                goto LABEL_168;
              }

              v247 = v32;
              v32[2] = v36;
LABEL_37:
              v46 = sub_266A46490();
              v48 = v47;
              v49 = swift_isUniquelyReferenced_nonNull_native();
              v278[0] = v5;
              v50 = sub_266A33AD0(v46, v48);
              isa = v5[2].isa;
              v53 = (v51 & 1) == 0;
              v35 = __OFADD__(isa, v53);
              v54 = isa + v53;
              if (v35)
              {
                goto LABEL_165;
              }

              v55 = v51;
              if (v5[3].isa >= v54)
              {
                if (v49)
                {
                  goto LABEL_42;
                }

                v60 = v50;
                sub_266A36EE4();
                v50 = v60;
                v57 = v270;
                if ((v55 & 1) == 0)
                {
                  goto LABEL_47;
                }

LABEL_43:
                v58 = v50;

                v5 = v278[0];
                *(*(v278[0] + 56) + 8 * v58) = v57;
              }

              else
              {
                sub_266A34B98(v54, v49);
                v50 = sub_266A33AD0(v46, v48);
                if ((v55 & 1) != (v56 & 1))
                {
LABEL_157:

                  return sub_266A46860();
                }

LABEL_42:
                v57 = v270;
                if (v55)
                {
                  goto LABEL_43;
                }

LABEL_47:
                v5 = v278[0];
                *(v278[0] + 8 * (v50 >> 6) + 64) |= 1 << v50;
                v61 = (v5[6].isa + 16 * v50);
                *v61 = v46;
                v61[1] = v48;
                *(v5[7].isa + v50) = v57;

                v62 = v5[2].isa;
                v35 = __OFADD__(v62, 1);
                v63 = (v62 + 1);
                if (v35)
                {
                  goto LABEL_169;
                }

                v5[2].isa = v63;
              }

              v35 = __OFADD__(v57, 1);
              v10 = v57 + 1;
              v14 = v259;
              if (v35)
              {
                goto LABEL_166;
              }

LABEL_16:
              ++v16;
              if (v0 == v15)
              {
                goto LABEL_5;
              }

              continue;
            }
          }

          v247 = v278[0];
          *(*(v278[0] + 56) + 8 * v25) = v253;
          goto LABEL_37;
        }

        break;
      }

      v37 = sub_266A464F0();
      v38 = sub_266A46690();

      if (os_log_type_enabled(v37, v38))
      {
        v271 = v10;
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v278[0] = v40;
        *v39 = 136315138;
        v41 = sub_266A46490();
        v43 = sub_266A333F0(v41, v42, v278);

        *(v39 + 4) = v43;
        v15 = v263;
        _os_log_impl(&dword_266A29000, v37, v38, "Turn: %s has an invalid timestamp", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        v44 = v40;
        v14 = v259;
        MEMORY[0x26D5E7060](v44, -1, -1);
        v45 = v39;
        v10 = v271;
        MEMORY[0x26D5E7060](v45, -1, -1);
      }

      else
      {
      }

      goto LABEL_16;
    }

    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_14;
    }

LABEL_5:

    v9 = v233;
    v0 = v239;
    if (v233 == v222)
    {
      goto LABEL_55;
    }
  }

  if (v9 < *(v228 + 16))
  {
    v12 = *(v225 + 8 * v9);

    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      goto LABEL_174;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
  return result;
}

void (*sub_266A30784(uint64_t *a1, uint64_t a2))(void *a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *(*(type metadata accessor for SiriCoreMetricsAggregationKeys(0) - 8) + 64);
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v6[4] = v8;
  sub_266A37BA0(a2, v8, type metadata accessor for SiriCoreMetricsAggregationKeys);
  v6[5] = sub_266A3505C(v6, v9);
  return sub_266A30860;
}

void sub_266A30860(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*a1 + 40))(*a1, 0);
  sub_266A37C08(v2, type metadata accessor for SiriCoreMetricsAggregationKeys);
  free(v2);

  free(v1);
}

void (*sub_266A308D0(uint64_t *a1))(void *a1)
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_266A461E0();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_266A351E8(v4, v9);
  return sub_266A309E8;
}

void sub_266A309E8(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void (*SiriCoreMetricsCalculator.processTurn(turn:turnIdToConvIdx:counts:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X2>, _OWORD *a3@<X8>))(void *a1)
{
  v146 = a2;
  v149 = a1;
  v157 = a3;
  v145 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v4 = *(*(v145 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v145);
  v141 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v140 = &v126 - v8;
  MEMORY[0x28223BE20](v7);
  v147 = &v126 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AE9C0, &qword_266A46E38);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v150 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v151 = &v126 - v15;
  MEMORY[0x28223BE20](v14);
  v152 = &v126 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB08, &qword_266A47360);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v126 - v19;
  v156 = sub_266A46090();
  v155 = *(v156 - 8);
  v21 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_266A460B0();
  v153 = *(v154 - 8);
  v24 = *(v153 + 64);
  MEMORY[0x28223BE20](v154);
  v26 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_266A45FF0();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v126 - v33;
  if (sub_266A46480())
  {
    sub_266A464A0();
    sub_266A45F90();
    v142 = v3;
    v134 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
    v138 = v34;
    sub_266A45FB0();
    v35 = *(v28 + 8);
    v135 = v32;
    v143 = v27;
    v144 = v28 + 8;
    v139 = v35;
    v35(v32, v27);
    sub_266A46330();
    sub_266A46310();
    sub_266A46470();

    v136 = v159;
    sub_266A46370();
    sub_266A46340();
    sub_266A46470();

    v36 = v159;
    v131 = BYTE8(v159);
    sub_266A46350();
    sub_266A46470();

    v37 = v159;
    v130 = BYTE8(v159);
    sub_266A46360();
    sub_266A46470();

    v148 = *(&v159 + 1);
    v127 = v159;
    v38 = [objc_opt_self() autoupdatingCurrentLocale];
    sub_266A46070();
    sub_266A460A0();
    (*(v153 + 8))(v26, v154);
    sub_266A46080();
    (*(v155 + 8))(v23, v156);
    v39 = sub_266A46060();
    v40 = *(v39 - 8);
    result = (*(v40 + 48))(v20, 1, v39);
    if (result == 1)
    {
LABEL_61:
      __break(1u);
      return result;
    }

    v129 = v37;

    v42 = sub_266A46050();
    v44 = v43;
    (*(v40 + 8))(v20, v39);
    v45 = @"ODMSIRIUIVIEWMODE_UNKNOWN";
    v133 = sub_266A46580();
    v153 = v46;

    v47 = @"AUDIOINPUTROUTE_UNKNOWN";
    v128 = sub_266A46580();
    v156 = v48;

    v49 = @"UNKNOWN";
    v50 = sub_266A46580();
    v52 = v51;

    v53 = @"PRODUCT_UNKNOWN";
    v137 = sub_266A46580();
    v155 = v54;

    sub_266A463C0();
    sub_266A463B0();
    sub_266A46470();

    v55 = *(&v159 + 1);
    if (*(&v159 + 1))
    {
      v42 = v159;

      v154 = v55;
    }

    else
    {
      v154 = v44;
    }

    v66 = v143;
    sub_266A463A0();
    type metadata accessor for SISchemaDataSharingOptInState(0);
    sub_266A46470();

    if (BYTE4(v159) != 1)
    {
      v67 = v159;

      if (v67 > 3)
      {
        v68 = @"UNKNOWN";
        v69 = @"UNKNOWN";
      }

      else
      {
        v68 = off_279BD9298[v67];
        v69 = off_279BD92B8[v67];
      }

      v70 = v68;
      v71 = v69;
      v50 = sub_266A46580();
      v52 = v72;
    }

    sub_266A46320();
    sub_266A46470();

    v73 = v159;
    if (v159 != 2)
    {

      if (v73)
      {
        v74 = @"PRODUCT_DICTATION";
      }

      else
      {
        v74 = @"PRODUCT_ASSISTANT";
      }

      v75 = v74;
      v137 = sub_266A46580();
      v155 = v76;
    }

    v132 = v50;
    sub_266A46390();
    sub_266A46380();
    sub_266A46470();

    v77 = *(&v159 + 1);
    if (*(&v159 + 1))
    {
      v78 = v42;
      v79 = v159;

      v156 = v77;
    }

    else
    {
      v79 = v128;
      v78 = v42;
    }

    sub_266A46490();
    v80 = v152;
    sub_266A46000();

    v81 = sub_266A46040();
    v82 = *(v81 - 8);
    if ((*(v82 + 48))(v80, 1, v81) == 1)
    {

      sub_266A38274(v80, &qword_2800AE9C0, &qword_266A46E38);
      v83 = sub_266A464F0();
      v84 = sub_266A46690();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_266A29000, v83, v84, "Turn Id is not available", v85, 2u);
        MEMORY[0x26D5E7060](v85, -1, -1);
      }

      v139(v138, v66);
      v86 = type metadata accessor for ProcessedSiriTurn();
      return (*(*(v86 - 8) + 56))(v157, 1, 1, v86);
    }

    sub_266A38274(v80, &qword_2800AE9C0, &qword_266A46E38);
    sub_266A46490();
    sub_266A46000();

    v126 = v36;
    if (!v148)
    {
      goto LABEL_38;
    }

    v87 = v149;
    if (*(v149 + 16) && (v88 = sub_266A33AD0(v127, v148), (v89 & 1) != 0))
    {
      v90 = 0;
      v152 = *(*(v87 + 56) + 8 * v88);
    }

    else
    {
      v152 = 0;
      v90 = 1;
    }

    v91 = sub_266A46490();
    if (*(v149 + 16))
    {
      v93 = sub_266A33AD0(v91, v92);
      v95 = v94;

      v96 = v150;
      if (v95)
      {
        if ((v90 & 1) != 0 || v152 != *(*(v149 + 56) + 8 * v93))
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }
    }

    else
    {

      v96 = v150;
    }

    if ((v90 & 1) == 0)
    {
LABEL_37:

      v66 = v143;
LABEL_38:
      v96 = v150;
      (*(v82 + 56))(v150, 1, 1, v81);
      goto LABEL_42;
    }

LABEL_41:
    sub_266A46000();

    v66 = v143;
LABEL_42:
    *&v159 = v78;
    *(&v159 + 1) = v154;
    *&v160 = v133;
    *(&v160 + 1) = v153;
    *&v161 = v79;
    *(&v161 + 1) = v156;
    *&v162 = v137;
    *(&v162 + 1) = v155;
    *&v163 = v132;
    *(&v163 + 1) = v52;
    sub_266A2AF38(&v159, &v158);
    v97 = v135;
    v98 = v138;
    sub_266A45FB0();
    sub_266A45FA0();
    v99 = v97;
    v100 = v139;
    v139(v99, v66);
    v101 = v147;
    sub_266A461B0();
    v102 = (v101 + *(v145 + 20));
    v103 = v163;
    v104 = v161;
    v102[3] = v162;
    v102[4] = v103;
    v105 = v160;
    *v102 = v159;
    v102[1] = v105;
    v102[2] = v104;
    v106 = v146;
    v107 = *v146;
    v108 = v157;
    if (*(*v146 + 16))
    {
      v109 = sub_266A33998(v101);
      v110 = v136;
      if (v111)
      {
        v112 = (*(v107 + 56) + 8 * v109);
        v113 = *v112;
        v114 = v141;
        if (v136)
        {
          v115 = v112[1];
          v116 = v140;
          sub_266A37BA0(v101, v140, type metadata accessor for SiriCoreMetricsAggregationKeys);
          result = sub_266A30784(&v158, v116);
          if (*(v117 + 8))
          {
            (result)(&v158, 0);
          }

          else
          {
            if (v115 == -1)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            *(v117 + 4) = v115 + 1;
            (result)(&v158, 0);
          }

          v66 = v143;
          sub_266A37C08(v140, type metadata accessor for SiriCoreMetricsAggregationKeys);
        }

        sub_266A37BA0(v101, v114, type metadata accessor for SiriCoreMetricsAggregationKeys);
        result = sub_266A30784(&v158, v114);
        if (*(v120 + 8))
        {
          (result)(&v158, 0);
LABEL_57:
          sub_266A37C08(v114, type metadata accessor for SiriCoreMetricsAggregationKeys);
          sub_266A37C08(v101, type metadata accessor for SiriCoreMetricsAggregationKeys);
          v139(v98, v66);
          v110 = v136;
          goto LABEL_58;
        }

        if (v113 != -1)
        {
          *v120 = v113 + 1;
          (result)(&v158, 0);
          goto LABEL_57;
        }

        __break(1u);
        goto LABEL_60;
      }

      v118 = *v106;
    }

    else
    {
      v110 = v136;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v158 = *v106;
    sub_266A3704C(((v110 & 1) << 32) | 1, v101, isUniquelyReferenced_nonNull_native);
    sub_266A37C08(v101, type metadata accessor for SiriCoreMetricsAggregationKeys);
    v100(v98, v66);
    *v106 = v158;
LABEL_58:
    v121 = v162;
    v108[2] = v161;
    v108[3] = v121;
    v108[4] = v163;
    v122 = v160;
    *v108 = v159;
    v108[1] = v122;
    v123 = type metadata accessor for ProcessedSiriTurn();
    sub_266A382D4(v151, v108 + v123[5], &qword_2800AE9C0, &qword_266A46E38);
    sub_266A382D4(v96, v108 + v123[6], &qword_2800AE9C0, &qword_266A46E38);
    *(v108 + v123[7]) = v110 & 1;
    v124 = v108 + v123[8];
    *v124 = v126;
    v124[8] = v131;
    v125 = v108 + v123[9];
    *v125 = v129;
    v125[8] = v130;
    return (*(*(v123 - 1) + 56))(v108, 0, 1, v123);
  }

  v56 = v157;

  v57 = sub_266A464F0();
  v58 = sub_266A46690();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v159 = v60;
    *v59 = 136315138;
    v61 = sub_266A46490();
    v63 = sub_266A333F0(v61, v62, &v159);

    *(v59 + 4) = v63;
    _os_log_impl(&dword_266A29000, v57, v58, "Turn %s has an invalid timestamp", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x26D5E7060](v60, -1, -1);
    MEMORY[0x26D5E7060](v59, -1, -1);
  }

  v64 = type metadata accessor for ProcessedSiriTurn();
  v65 = *(*(v64 - 8) + 56);

  return v65(v56, 1, 1, v64);
}

uint64_t SiriCoreMetricsCalculator.calculateTwoByThree(previousRequestCounts:totalCounts:)(id *a1, uint64_t a2)
{
  v45 = a1;
  v3 = sub_266A461E0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v40 - v13;
  v15 = sub_266A37C68(MEMORY[0x277D84F90]);
  v16 = *(a2 + 64);
  v40[0] = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v40[1] = v4 + 16;
  v47 = (v4 + 32);
  v48 = a2;
  v43 = v4;
  v44 = (v4 + 8);

  v22 = 0;
  v41 = v14;
  v42 = v12;
  if (v19)
  {
    while (1)
    {
      v46 = v15;
      v23 = v22;
LABEL_13:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v48;
      v29 = v43;
      (*(v43 + 16))(v7, *(v48 + 48) + *(v43 + 72) * v27, v3);
      v30 = v7;
      v31 = v3;
      v32 = *(v28 + 56);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
      v34 = *(v33 + 48);
      v35 = *(v32 + 8 * v27);
      v3 = v31;
      v7 = v30;
      v12 = v42;
      (*(v29 + 32))(v42, v7, v3);
      *&v12[v34] = v35;
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      v25 = v23;
      v14 = v41;
      v15 = v46;
LABEL_14:
      sub_266A382D4(v12, v14, &qword_2800AEB10, &qword_266A47368);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
      if ((*(*(v36 - 8) + 48))(v14, 1, v36) == 1)
      {
        break;
      }

      (*v47)(v7, v14, v3);
      sub_266A461A0();
      v37 = sub_266A3209C(v45, v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v15;
      sub_266A371C8(v37, v7, isUniquelyReferenced_nonNull_native);
      result = (*v44)(v7, v3);
      v15 = v49;
      v22 = v25;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    return v15;
  }

  else
  {
LABEL_5:
    if (v20 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v20;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
        (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
        v19 = 0;
        goto LABEL_14;
      }

      v19 = *(v40[0] + 8 * v23);
      ++v22;
      if (v19)
      {
        v46 = v15;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_266A3209C(id *a1, uint64_t a2)
{
  v106 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB68, &qword_266A47430);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v108 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = &v104 - v7;
  v118 = sub_266A45FF0();
  v8 = *(v118 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v118);
  v107 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = &v104 - v13;
  MEMORY[0x28223BE20](v12);
  v116 = &v104 - v14;
  v130 = sub_266A461E0();
  v15 = *(v130 - 1);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v130);
  v19 = (&v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v121 = &v104 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB10, &qword_266A47368);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v104 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB70, &qword_266A47438);
  v28 = sub_266A46620();
  *(v28 + 16) = 7;
  *(v28 + 32) = 33686018;
  v104 = (v28 + 32);
  *(v28 + 35) = 33686018;
  v29 = *(a2 + 64);
  v113 = a2 + 64;
  v30 = 1 << *(a2 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v115 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v126 = v27 + 4;
  v127 = v27;
  v112 = (v30 + 63) >> 6;
  v119 = v15 + 16;
  v129 = (v15 + 32);
  v122 = v15;
  v125 = (v15 + 8);
  v105 = v8;
  v117 = (v8 + 8);
  v111 = v28;
  v109 = v28 + 31;
  v123 = a2;

  v33 = 0;
  v34 = &unk_266A47370;
  v128 = v19;
  v120 = v25;
  while (1)
  {
    if (!v32)
    {
      if (v112 <= v33 + 1)
      {
        v36 = v33 + 1;
      }

      else
      {
        v36 = v112;
      }

      v37 = v36 - 1;
      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v35 >= v112)
        {
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
          (*(*(v57 - 8) + 56))(v25, 1, 1, v57);
          v32 = 0;
          goto LABEL_15;
        }

        v32 = *(v113 + 8 * v35);
        ++v33;
        if (v32)
        {
          goto LABEL_14;
        }
      }

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

    v35 = v33;
LABEL_14:
    v38 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v39 = v38 | (v35 << 6);
    v41 = v122;
    v40 = v123;
    (*(v122 + 16))(v121, *(v123 + 48) + *(v122 + 72) * v39, v130);
    v42 = *(v40 + 56);
    v34 = &unk_266A47370;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
    v44 = *(v43 + 48);
    v45 = *(v42 + 8 * v39);
    v25 = v120;
    (*(v41 + 32))();
    *&v25[v44] = v45;
    (*(*(v43 - 8) + 56))(v25, 0, 1, v43);
    v37 = v35;
    v19 = v128;
LABEL_15:
    v46 = v127;
    sub_266A382D4(v25, v127, &qword_2800AEB10, &qword_266A47368);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB18, &unk_266A47370);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {
      break;
    }

    v48 = *&v126[*(v47 + 48)];
    (*v129)(v19, v46, v130);
    if (sub_266A461C0() == 1)
    {
      v124 = v37;
      v49 = v130;
      sub_266A461A0();
      v50 = v19;
      v51 = v116;
      sub_266A45F90();
      v52 = v114;
      sub_266A45F90();
      v53 = sub_266A460D0();
      v54 = *v117;
      v55 = v52;
      v56 = v118;
      (*v117)(v55, v118);
      v54(v51, v56);
      if (v53 < 1)
      {
        (*v125)(v50, v49);
        v33 = v124;
        v19 = v50;
LABEL_22:
        v34 = &unk_266A47370;
      }

      else
      {
        if (v53 > 7)
        {
          v19 = v128;
          (*v125)(v128, v130);
          v33 = v124;
          goto LABEL_22;
        }

        v19 = v128;
        (*v125)(v128, v130);
        v58 = *(v111 + 16);
        v34 = &unk_266A47370;
        v59 = v124;
        if (v48 >= 2)
        {
          if (v53 > v58)
          {
            goto LABEL_63;
          }

          *(v109 + v53) = 1;
        }

        else
        {
          if (v53 > v58)
          {
            goto LABEL_64;
          }

          *(v109 + v53) = 0;
        }

        v33 = v59;
      }
    }

    else
    {
      (*v125)(v19, v130);
      v33 = v37;
    }
  }

  v34 = v106;
  if (v106 >> 62)
  {
LABEL_65:
    v60 = sub_266A46730();
    if (!v60)
    {
      goto LABEL_66;
    }

LABEL_31:
    v61 = 0;
    v62 = v34 & 0xC000000000000001;
    v63 = v34 & 0xFFFFFFFFFFFFFF8;
    v129 = (v105 + 48);
    v130 = (v105 + 56);
    v127 = (v34 & 0xFFFFFFFFFFFFFF8);
    v128 = (v105 + 32);
    v64 = &off_279BD9000;
    while (1)
    {
      if (v62)
      {
        v65 = MEMORY[0x26D5E6A00](v61, v34);
      }

      else
      {
        if (v61 >= *(v63 + 16))
        {
          goto LABEL_62;
        }

        v65 = *(v34 + 8 * v61 + 32);
      }

      v66 = v65;
      v67 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_61;
      }

      v68 = [v65 v64[116]];
      if (v68 && (v69 = v68, v70 = [v68 schedule], v69, v70 == 1))
      {
        v71 = [v66 v64[116]];
        if (!v71)
        {

          v76 = v110;
          (*v130)(v110, 1, 1, v118);
LABEL_48:
          sub_266A38274(v76, &qword_2800AEB68, &qword_266A47430);
          goto LABEL_33;
        }

        v72 = v71;
        v73 = [v71 aggregationWindowStartTimestamp];

        if (v73)
        {
          v74 = v108;
          sub_266A45FE0();

          v75 = 0;
        }

        else
        {
          v75 = 1;
          v74 = v108;
        }

        v77 = v118;
        (*v130)(v74, v75, 1, v118);
        v76 = v110;
        sub_266A382D4(v74, v110, &qword_2800AEB68, &qword_266A47430);
        if ((*v129)(v76, 1, v77) == 1)
        {

          v64 = &off_279BD9000;
          goto LABEL_48;
        }

        v78 = v107;
        (*v128)(v107, v76, v77);
        v79 = v116;
        sub_266A45F90();
        v80 = sub_266A460D0();
        v81 = *v117;
        (*v117)(v79, v77);
        if (v80 < 1)
        {
          v82 = v78;
          v83 = v77;
          goto LABEL_53;
        }

        if (v80 > 7)
        {
          v82 = v107;
          v83 = v118;
LABEL_53:
          v81(v82, v83);

          v34 = v106;
          v63 = v127;
          v64 = &off_279BD9000;
          goto LABEL_33;
        }

        result = [v66 statistics];
        v64 = &off_279BD9000;
        if (!result)
        {
          goto LABEL_90;
        }

        v85 = result;
        LODWORD(v126) = [result userRequestCount];

        result = (v81)(v107, v118);
        v86 = *(v111 + 16);
        if (v126 >= 2)
        {
          v34 = v106;
          v63 = v127;
          if (v80 > v86)
          {
            goto LABEL_89;
          }

          *(v109 + v80) = 1;
        }

        else
        {
          v34 = v106;
          v63 = v127;
          if (v80 > v86)
          {
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
            return result;
          }

          *(v109 + v80) = 0;
        }
      }

      else
      {
      }

LABEL_33:
      ++v61;
      if (v67 == v60)
      {
        goto LABEL_66;
      }
    }
  }

  v60 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v60)
  {
    goto LABEL_31;
  }

LABEL_66:
  v87 = *(v111 + 16);
  if (v87)
  {
    v88 = MEMORY[0x277D84F90];
    v89 = v104;
    v90 = v104;
    v91 = *(v111 + 16);
    do
    {
      v95 = *v90++;
      v94 = v95;
      if (v95 != 2 && (v94 & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v131 = v88;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_266A37364(0, *(v88 + 16) + 1, 1);
          v88 = v131;
        }

        v93 = *(v88 + 16);
        v92 = *(v88 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_266A37364((v92 > 1), v93 + 1, 1);
          v88 = v131;
        }

        *(v88 + 16) = v93 + 1;
        *(v88 + v93 + 32) = v94;
      }

      --v91;
    }

    while (v91);
    v97 = *(v88 + 16);

    v98 = MEMORY[0x277D84F90];
    do
    {
      v101 = *v89++;
      if (v101 == 2)
      {
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v131 = v98;
        if ((v102 & 1) == 0)
        {
          sub_266A37364(0, *(v98 + 16) + 1, 1);
          v98 = v131;
        }

        v100 = *(v98 + 16);
        v99 = *(v98 + 24);
        if (v100 >= v99 >> 1)
        {
          sub_266A37364((v99 > 1), v100 + 1, 1);
          v98 = v131;
        }

        *(v98 + 16) = v100 + 1;
        *(v98 + v100 + 32) = 2;
      }

      --v87;
    }

    while (v87);
  }

  else
  {
    v98 = MEMORY[0x277D84F90];
    v97 = *(MEMORY[0x277D84F90] + 16);
  }

  v103 = *(v98 + 16) >= 3 - v97;

  if (v97 >= 3)
  {
    return 1;
  }

  else
  {
    return (2 * v103);
  }
}

uint64_t SiriCoreMetricsCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t SiriCoreMetricsCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_logger;
  v2 = sub_266A46510();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15SiriCoreMetrics25SiriCoreMetricsCalculator_calendar;
  v4 = sub_266A460E0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_266A32EC4(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a1;
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_266A32F68;

  return SiriCoreMetricsCalculator.doWork(_:)(v3 + 16, a2);
}

uint64_t sub_266A32F68()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v8 = *v0;

  v4 = v1[1];
  v5 = v1[3];
  v3[1] = v1[2];
  v3[2] = v5;
  *v3 = v4;
  v6 = *(v8 + 8);

  return v6();
}

char *sub_266A33084(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBD0, &qword_266A47490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_266A33190(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_266A33394(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_266A333F0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_266A333F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_266A334BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_266A38340(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_266A334BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_266A335C8(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_266A46710();
    a6 = v11;
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

uint64_t sub_266A335C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_266A33614(a1, a2);
  sub_266A33744(&unk_287838DE0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_266A33614(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_266A33830(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_266A46710();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_266A465E0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_266A33830(v10, 0);
        result = sub_266A466E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_266A33744(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_266A338A4(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_266A33830(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA0, &qword_266A47468);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_266A338A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA0, &qword_266A47468);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_266A33998(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
  sub_266A46550();
  v4 = (a1 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = v4[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  v15 = sub_266A468D0();

  return sub_266A36000(a1, v15);
}

unint64_t sub_266A33AD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_266A468B0();
  sub_266A465C0();
  v6 = sub_266A468D0();

  return sub_266A362CC(a1, a2, v6);
}

unint64_t sub_266A33B48(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_266A461E0();
  sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
  v5 = sub_266A46540();

  return sub_266A36384(a1, v5);
}

uint64_t sub_266A33BE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = *(v58 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB88, &qword_266A47450);
  v60 = a2;
  v12 = sub_266A46750();
  v13 = v12;
  if (*(v10 + 16))
  {
    v52 = v3;
    v14 = 0;
    v15 = *(v10 + 64);
    v53 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v20 = v12 + 64;
    v56 = v12;
    v57 = v10;
    v54 = v19;
    v55 = v9;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v23 = (v18 - 1) & v18;
LABEL_17:
      v27 = v22 | (v14 << 6);
      v28 = *(v10 + 48);
      v61 = *(v58 + 72);
      v62 = v23;
      v29 = v28 + v61 * v27;
      if (v60)
      {
        sub_266A37B38(v29, v9, type metadata accessor for SiriCoreMetricsAggregationKeys);
      }

      else
      {
        sub_266A37BA0(v29, v9, type metadata accessor for SiriCoreMetricsAggregationKeys);
      }

      v30 = *(*(v10 + 56) + 8 * v27);
      v31 = v13[5];
      sub_266A468B0();
      sub_266A461E0();
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
      sub_266A46550();
      v32 = &v9[*(v59 + 20)];
      v33 = *v32;
      v34 = *(v32 + 1);
      v35 = *(v32 + 2);
      v36 = *(v32 + 3);
      v37 = *(v32 + 4);
      v38 = *(v32 + 5);
      v40 = *(v32 + 6);
      v39 = *(v32 + 7);
      v41 = *(v32 + 8);
      v42 = *(v32 + 9);
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      result = sub_266A468D0();
      v13 = v56;
      v43 = -1 << *(v56 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v20 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v10 = v57;
        v9 = v55;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v20 + 8 * v45);
          if (v49 != -1)
          {
            v21 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v44) & ~*(v20 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v10 = v57;
      v9 = v55;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      sub_266A37B38(v9, v13[6] + v61 * v21, type metadata accessor for SiriCoreMetricsAggregationKeys);
      *(v13[7] + 8 * v21) = v30;
      ++v13[2];
      v19 = v54;
      v18 = v62;
    }

    v24 = v14;
    result = v53;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v26 = v53[v14];
      ++v24;
      if (v26)
      {
        v22 = __clz(__rbit64(v26));
        v23 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v60 & 1) == 0)
    {

      v3 = v52;
      goto LABEL_36;
    }

    v50 = 1 << *(v10 + 32);
    v3 = v52;
    if (v50 >= 64)
    {
      bzero(v53, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v53 = -1 << v50;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_266A34038(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_266A461E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB58, &qword_266A47428);
  v44 = a2;
  result = sub_266A46750();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + v27);
      v31 = *(v14 + 40);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
      result = sub_266A46540();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_266A343F8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_266A461E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBB0, &qword_266A47478);
  v43 = a2;
  result = sub_266A46750();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v27 = v24 | (v15 << 6);
      v28 = *(v11 + 48);
      v45 = *(v22 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v46, v29, v47);
      }

      else
      {
        (*v41)(v46, v29, v47);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
      result = sub_266A46540();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v14 + 48) + v45 * v23, v46, v47);
      *(*(v14 + 56) + 8 * v23) = v30;
      ++*(v14 + 16);
      v22 = v42;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v19 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_266A347BC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_266A461E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA8, &qword_266A47470);
  v43 = a2;
  result = sub_266A46750();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
      result = sub_266A46540();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_266A34B98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB90, &qword_266A47458);
  v38 = a2;
  result = sub_266A46750();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_266A468B0();
      sub_266A465C0();
      result = sub_266A468D0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_266A34E38(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  result = sub_266A37B38(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for SiriCoreMetricsAggregationKeys);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_266A34EEC(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_266A461E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_266A34FA4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_266A461E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void (*sub_266A3505C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x58uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = *(*(type metadata accessor for SiriCoreMetricsAggregationKeys(0) - 8) + 64);
  if (v5)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v7[8] = v9;
  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_266A37BA0(a2, v10, type metadata accessor for SiriCoreMetricsAggregationKeys);
  v7[9] = sub_266A35918(v7);
  v7[10] = sub_266A353BC(v7 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_266A35158;
}

void sub_266A35158(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 64);
  (*(*a1 + 80))();
  sub_266A37C08(v3, type metadata accessor for SiriCoreMetricsAggregationKeys);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_266A351E8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = sub_266A461E0();
  v7[8] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v7[9] = v9;
  if (v5)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v9 + 64));
  }

  v12 = v11;
  v7[10] = v11;
  v13 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v10 + 16))(v12, a2, v8);
  v7[11] = sub_266A35940(v7);
  v7[12] = sub_266A3566C(v7 + 4, v12, isUniquelyReferenced_nonNull_native);
  return sub_266A35324;
}

void sub_266A35324(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_266A353BC(void *a1, uint64_t a2, char a3))(uint64_t *a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x38uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v4;
  v11 = *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) - 8);
  v10[2] = v11;
  if (v8)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v10[3] = v12;
  v13 = *v4;
  v14 = sub_266A33998(a2);
  *(v10 + 49) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = v15 ^ 1;
  v18 = __OFADD__(v16, (v15 ^ 1) & 1);
  v19 = v16 + ((v15 ^ 1) & 1);
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_266A36544();
      v14 = v22;
      goto LABEL_14;
    }

    sub_266A33BE0(v19, a3 & 1);
    v23 = *v4;
    v14 = sub_266A33998(a2);
    if ((v20 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

LABEL_14:
  v10[4] = v14;
  if (v20)
  {
    v25 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v25 = 0;
  }

  v10[5] = v25;
  *(v10 + 48) = v17 & 1;
  return sub_266A35578;
}

void sub_266A35578(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 49);
  if (*(*a1 + 48))
  {
    if (*(*a1 + 49))
    {
      v3 = *(v1 + 32);
      v4 = **(v1 + 8);
      sub_266A37C08(*(v4 + 48) + *(*(v1 + 16) + 72) * v3, type metadata accessor for SiriCoreMetricsAggregationKeys);
      sub_266A35974(v3, v4);
    }
  }

  else
  {
    v6 = *(v1 + 32);
    v5 = *(v1 + 40);
    if (*(*a1 + 49))
    {
      *(*(**(v1 + 8) + 56) + 8 * v6) = v5;
    }

    else
    {
      v7 = *(v1 + 24);
      v8 = **(v1 + 8);
      sub_266A37BA0(*v1, v7, type metadata accessor for SiriCoreMetricsAggregationKeys);
      sub_266A34E38(v6, v7, v5, v8);
    }
  }

  free(*(v1 + 24));

  free(v1);
}

void (*sub_266A3566C(void *a1, uint64_t a2, char a3))(uint64_t a1)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x40uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = a2;
  v9[1] = v4;
  v11 = sub_266A461E0();
  v10[2] = v11;
  v12 = *(v11 - 8);
  v10[3] = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v10[4] = v13;
  v14 = *v4;
  v15 = sub_266A33B48(a2);
  *(v10 + 57) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = v16 ^ 1;
  v19 = __OFADD__(v17, (v16 ^ 1) & 1);
  v20 = v17 + ((v16 ^ 1) & 1);
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_266A369F0();
      v15 = v23;
      goto LABEL_14;
    }

    sub_266A343F8(v20, a3 & 1);
    v24 = *v4;
    v15 = sub_266A33B48(a2);
    if ((v21 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

LABEL_14:
  v10[5] = v15;
  if (v21)
  {
    v26 = *(*(*v4 + 56) + 8 * v15);
  }

  else
  {
    v26 = 0;
  }

  v10[6] = v26;
  *(v10 + 56) = v18 & 1;
  return sub_266A3582C;
}

void sub_266A3582C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 57);
  if (*(*a1 + 56))
  {
    if (*(*a1 + 57))
    {
      v3 = v1[5];
      v4 = *v1[1];
      (*(v1[3] + 8))(*(v4 + 48) + *(v1[3] + 72) * v3, v1[2]);
      sub_266A35CE0(v3, v4);
    }
  }

  else
  {
    v6 = v1[5];
    v5 = v1[6];
    if (*(*a1 + 57))
    {
      *(*(*v1[1] + 56) + 8 * v6) = v5;
    }

    else
    {
      v7 = v1[4];
      v8 = *v1[1];
      (*(v1[3] + 16))(v7, *v1, v1[2]);
      sub_266A34FA4(v6, v7, v5, v8);
    }
  }

  free(v1[4]);

  free(v1);
}

uint64_t (*sub_266A35918(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266A3844C;
}

uint64_t (*sub_266A35940(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_266A35968;
}

unint64_t sub_266A35974(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_266A466B0() + 1) & ~v9;
    v13 = *(v4 + 72);
    v42 = a2 + 64;
    v43 = a2;
    v40 = v13;
    v41 = v11;
    do
    {
      v48 = a1;
      v49 = v10;
      v14 = *(a2 + 48);
      v46 = v13 * v10;
      v47 = type metadata accessor for SiriCoreMetricsAggregationKeys;
      v15 = v44;
      sub_266A37BA0(v14 + v13 * v10, v44, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v16 = *(a2 + 40);
      sub_266A468B0();
      sub_266A461E0();
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
      sub_266A46550();
      v17 = (v15 + *(v45 + 20));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      v23 = v17[4];
      v22 = v17[5];
      v24 = v17[6];
      v25 = v17[7];
      v26 = v17[8];
      v27 = v17[9];
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      sub_266A465C0();
      a1 = v48;
      sub_266A465C0();
      v28 = sub_266A468D0();
      v29 = v15;
      v30 = v41;
      result = sub_266A37C08(v29, v47);
      v31 = v28 & v30;
      if (a1 >= v12)
      {
        if (v31 < v12)
        {
          v8 = v42;
          a2 = v43;
          v32 = v49;
          v13 = v40;
        }

        else
        {
          v8 = v42;
          a2 = v43;
          v32 = v49;
          v13 = v40;
          if (a1 >= v31)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v8 = v42;
        a2 = v43;
        v32 = v49;
        v13 = v40;
        if (v31 >= v12 || a1 >= v31)
        {
LABEL_11:
          v33 = *(a2 + 48);
          result = v33 + v13 * a1;
          if (v13 * a1 < v46 || result >= v33 + v46 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v46)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          v34 = *(a2 + 56);
          v35 = (v34 + 8 * a1);
          v36 = (v34 + 8 * v32);
          if (a1 != v32 || v35 >= v36 + 1)
          {
            *v35 = *v36;
            a1 = v32;
          }
        }
      }

      v10 = (v32 + 1) & v30;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(a2 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v39;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_266A35CE0(int64_t a1, uint64_t a2)
{
  v43 = sub_266A461E0();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_266A466B0();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_266A3839C(&qword_2800AEB60, MEMORY[0x277D04450]);
      v26 = sub_266A46540();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_266A36000(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v29 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v4 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v2 + 64;
  v41 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = *(v5 + 72);
    v38 = ~v8;
    v39 = v10;
    while (1)
    {
      sub_266A37BA0(*(v41 + 48) + v39 * v9, v7, type metadata accessor for SiriCoreMetricsAggregationKeys);
      if (sub_266A461D0())
      {
        v11 = *(v29 + 20);
        v12 = *&v7[v11];
        v13 = *&v7[v11 + 8];
        v14 = *&v7[v11 + 16];
        v15 = *&v7[v11 + 24];
        v17 = *&v7[v11 + 32];
        v16 = *&v7[v11 + 40];
        v18 = *&v7[v11 + 48];
        v33 = *&v7[v11 + 56];
        v19 = *&v7[v11 + 64];
        v31 = *&v7[v11 + 72];
        v20 = (v42 + v11);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = v20[3];
        v26 = v20[4];
        v25 = v20[5];
        v36 = v20[6];
        v37 = v18;
        v27 = v20[8];
        v32 = v20[7];
        v34 = v27;
        v35 = v19;
        v30 = v20[9];
        if (v12 == v21 && v13 == v22)
        {
          goto LABEL_3;
        }

        if (sub_266A46840())
        {
LABEL_3:
          if (v14 == v23 && v15 == v24 || (sub_266A46840()) && (v17 == v26 && v16 == v25 || (sub_266A46840()) && (v37 == v36 && v33 == v32 || (sub_266A46840()) && (v35 == v34 && v31 == v30 || (sub_266A46840()))
          {
            break;
          }
        }
      }

      sub_266A37C08(v7, type metadata accessor for SiriCoreMetricsAggregationKeys);
      v9 = (v9 + 1) & v38;
      if (((*(v40 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        return v9;
      }
    }

    sub_266A37C08(v7, type metadata accessor for SiriCoreMetricsAggregationKeys);
  }

  return v9;
}

unint64_t sub_266A362CC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_266A46840())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_266A36384(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_266A461E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_266A3839C(&qword_2800AEBC0, MEMORY[0x277D04450]);
      v16 = sub_266A46560();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_266A36544()
{
  v1 = v0;
  v2 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB88, &qword_266A47450);
  v7 = *v0;
  v8 = sub_266A46740();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_266A37BA0(*(v7 + 48) + v23, v6, type metadata accessor for SiriCoreMetricsAggregationKeys);
        v24 = *(*(v7 + 56) + 8 * v22);
        result = sub_266A37B38(v6, *(v9 + 48) + v23, type metadata accessor for SiriCoreMetricsAggregationKeys);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
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

        v1 = v26;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

char *sub_266A36780()
{
  v1 = v0;
  v32 = sub_266A461E0();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB58, &qword_266A47428);
  v4 = *v0;
  v5 = sub_266A46740();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_266A369F0()
{
  v1 = v0;
  v30 = sub_266A461E0();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBB0, &qword_266A47478);
  v4 = *v0;
  v5 = sub_266A46740();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v23 + 56) + 8 * v18) = v24)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = v31;
      v24 = *(*(v4 + 56) + 8 * v18);
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_266A36C64()
{
  v1 = v0;
  v34 = sub_266A461E0();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA8, &qword_266A47470);
  v4 = *v0;
  v5 = sub_266A46740();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_266A36EE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB90, &qword_266A47458);
  v2 = *v0;
  v3 = sub_266A46740();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

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
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_266A3704C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_266A33998(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_266A36544();
    goto LABEL_7;
  }

  sub_266A33BE0(result, a3 & 1);
  v21 = *v4;
  result = sub_266A33998(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_266A37BA0(a2, v11, type metadata accessor for SiriCoreMetricsAggregationKeys);
  return sub_266A34E38(v14, v11, a1, v20);
}

uint64_t sub_266A371C8(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_266A461E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_266A33B48(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      *(v21[7] + v15) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v20 >= result && (a3 & 1) == 0)
  {
    result = sub_266A36780();
    goto LABEL_7;
  }

  sub_266A34038(result, a3 & 1);
  v22 = *v4;
  result = sub_266A33B48(a2);
  if ((v19 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_266A46860();
    __break(1u);
    return result;
  }

  v15 = result;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_266A34EEC(v15, v12, a1, v21);
}

char *sub_266A37364(char *a1, int64_t a2, char a3)
{
  result = sub_266A37384(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_266A37384(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB78, &qword_266A47440);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_266A37478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB90, &qword_266A47458);
    v3 = sub_266A46760();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_266A33AD0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_266A37574(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBE0, &unk_266A474A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB88, &qword_266A47450);
    v8 = sub_266A46760();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v10, v6, &qword_2800AEBE0, &unk_266A474A0);
      result = sub_266A33998(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SiriCoreMetricsAggregationKeys(0);
      result = sub_266A37B38(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for SiriCoreMetricsAggregationKeys);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_266A37758(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBD8, &qword_266A47498);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBA8, &qword_266A47470);
    v8 = sub_266A46760();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v10, v6, &qword_2800AEBD8, &qword_266A47498);
      result = sub_266A33B48(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_266A461E0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_266A37940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBC8, &qword_266A47488);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBB0, &qword_266A47478);
    v8 = sub_266A46760();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v10, v6, &qword_2800AEBC8, &qword_266A47488);
      result = sub_266A33B48(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_266A461E0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_266A37B28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_266A37B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_266A37BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266A37C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_266A37C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB80, &qword_266A47448);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB58, &qword_266A47428);
    v8 = sub_266A46760();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_266A383E4(v10, v6, &qword_2800AEB80, &qword_266A47448);
      result = sub_266A33B48(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_266A461E0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_266A37E9C()
{
  result = qword_2800AEB28;
  if (!qword_2800AEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEB28);
  }

  return result;
}

uint64_t type metadata accessor for SiriCoreMetricsCalculator()
{
  result = qword_2800AEB30;
  if (!qword_2800AEB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266A37F44()
{
  result = sub_266A46510();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_266A460E0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_266A38020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB48, &qword_266A47418);
    v3 = sub_266A46760();
    v4 = a1 + 32;

    while (1)
    {
      sub_266A383E4(v4, &v13, &qword_2800AEB50, &qword_266A47420);
      v5 = v13;
      v6 = v14;
      result = sub_266A33AD0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_266A38264(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_266A38150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEB40, &qword_266A47410);
    v3 = sub_266A46760();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_266A33AD0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

_OWORD *sub_266A38264(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_266A38274(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_266A382D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_266A38340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_266A3839C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_266A383E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SiriCoreMetricsResults.init(processedConversations:countsReportedAll:totalCounts:conversationStreamMetadata:eventStreamMetadata:twoByThreeResults:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a5;
  a7[3] = a4;
  a7[4] = a3;
  a7[5] = a6;
  return result;
}

__n128 SiriCoreMetricsAggregationKeys.init(aggregationStartTimeSince2001:aggregationIntervalInDays:siriInputLocale:viewMode:audioInputRoute:product:siriDataSharingOptInStatus:)@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __n128 a9, uint64_t a10)
{
  sub_266A461B0();
  v18 = a8 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20);
  *v18 = a1;
  *(v18 + 8) = a2;
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6;
  *(v18 + 48) = a7;
  result = a9;
  *(v18 + 56) = a9;
  *(v18 + 72) = a10;
  return result;
}

uint64_t TwoByThreeSegment.hashValue.getter(unsigned __int8 a1)
{
  sub_266A468B0();
  MEMORY[0x26D5E6BC0](a1);
  return sub_266A468D0();
}

uint64_t sub_266A38590()
{
  v1 = *v0;
  v2 = 0x75706E4969726973;
  v3 = 0x746E496F69647561;
  v4 = 0x746375646F7270;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65646F4D77656976;
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

uint64_t sub_266A38648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A3A738(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A3867C(uint64_t a1)
{
  v2 = sub_266A3A414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A386B8(uint64_t a1)
{
  v2 = sub_266A3A414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DynamicDimensionsSiriCoreMetrics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBE8, &qword_266A474B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3A414();
  sub_266A46900();
  v11 = *v3;
  v12 = v3[1];
  v22[15] = 0;
  sub_266A46800();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v22[14] = 1;
  sub_266A46800();
  v15 = v3[4];
  v16 = v3[5];
  v22[13] = 2;
  sub_266A46800();
  v17 = v3[6];
  v18 = v3[7];
  v22[12] = 3;
  sub_266A46800();
  v20 = v3[8];
  v21 = v3[9];
  v22[11] = 4;
  sub_266A46800();
  return (*(v6 + 8))(v9, v5);
}

uint64_t DynamicDimensionsSiriCoreMetrics.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_266A465C0();
  v3 = v0[2];
  v4 = v0[3];
  sub_266A465C0();
  v5 = v0[4];
  v6 = v0[5];
  sub_266A465C0();
  v7 = v0[6];
  v8 = v0[7];
  sub_266A465C0();
  v9 = v0[8];
  v10 = v0[9];

  return sub_266A465C0();
}

uint64_t DynamicDimensionsSiriCoreMetrics.hashValue.getter()
{
  sub_266A468B0();
  v1 = *v0;
  v2 = v0[1];
  sub_266A465C0();
  v3 = v0[2];
  v4 = v0[3];
  sub_266A465C0();
  v5 = v0[4];
  v6 = v0[5];
  sub_266A465C0();
  v7 = v0[6];
  v8 = v0[7];
  sub_266A465C0();
  v9 = v0[8];
  v10 = v0[9];
  sub_266A465C0();
  return sub_266A468D0();
}

__n128 DynamicDimensionsSiriCoreMetrics.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_266A3A900(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_266A389FC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_266A468B0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A38AB8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t sub_266A38B5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v10 = v0[8];
  v9 = v0[9];
  sub_266A468B0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

__n128 sub_266A38C14@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_266A3A900(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_266A38C78(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return _s15SiriCoreMetrics017DynamicDimensionsabC0V23__derived_struct_equalsySbAC_ACtFZ_0(v8, v9) & 1;
}

__n128 SiriCoreMetricsAggregationKeys.init(aggregationInterval:dimension:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_266A461E0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20);
  v8 = *(a2 + 48);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = v8;
  *(v7 + 64) = *(a2 + 64);
  result = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = result;
  return result;
}

uint64_t SiriCoreMetricsAggregationKeys.description.getter()
{
  sub_266A466F0();
  MEMORY[0x26D5E68D0](0xD000000000000039, 0x8000000266A48C70);
  v4 = sub_266A461C0();
  v1 = sub_266A46830();
  MEMORY[0x26D5E68D0](v1);

  MEMORY[0x26D5E68D0](0xD000000000000038, 0x8000000266A48CB0);
  sub_266A461A0();
  sub_266A46650();
  MEMORY[0x26D5E68D0](0xD000000000000014, 0x8000000266A48CF0);
  v2 = (v0 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20));
  MEMORY[0x26D5E68D0](*v2, v2[1]);
  MEMORY[0x26D5E68D0](0x4D77656976090A2CLL, 0xED0000203A65646FLL);
  MEMORY[0x26D5E68D0](v2[2], v2[3]);
  MEMORY[0x26D5E68D0](0xD000000000000013, 0x8000000266A48D10);
  MEMORY[0x26D5E68D0](v2[4], v2[5]);
  MEMORY[0x26D5E68D0](0x75646F7270090A2CLL, 0xEC000000203A7463);
  MEMORY[0x26D5E68D0](v2[6], v2[7]);
  MEMORY[0x26D5E68D0](0xD00000000000001BLL, 0x8000000266A48D30);
  MEMORY[0x26D5E68D0](v2[8], v2[9]);
  return HIDWORD(v4);
}

uint64_t SiriCoreMetricsAggregationKeys.hash(into:)()
{
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450]);
  sub_266A46550();
  v1 = (v0 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t SiriCoreMetricsAggregationKeys.hashValue.getter()
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450]);
  sub_266A46550();
  v1 = (v0 + *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A39178(uint64_t a1)
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450]);
  sub_266A46550();
  v3 = (v1 + *(a1 + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = v3[8];
  v13 = v3[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

uint64_t sub_266A39280(uint64_t a1, uint64_t a2)
{
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450]);
  sub_266A46550();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = v4[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();

  return sub_266A465C0();
}

uint64_t sub_266A39384(uint64_t a1, uint64_t a2)
{
  sub_266A468B0();
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEB60, MEMORY[0x277D04450]);
  sub_266A46550();
  v4 = (v2 + *(a2 + 20));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  v10 = v4[5];
  v11 = v4[6];
  v12 = v4[7];
  v13 = v4[8];
  v14 = v4[9];
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  sub_266A465C0();
  return sub_266A468D0();
}

unint64_t sub_266A394A4()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x65757165526C6C61;
  }

  *v0;
  return result;
}

uint64_t sub_266A394F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65757165526C6C61 && a2 == 0xEF746E756F437473;
  if (v6 || (sub_266A46840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266A48D70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_266A46840();

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

uint64_t sub_266A395E8(uint64_t a1)
{
  v2 = sub_266A3ACD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A39624(uint64_t a1)
{
  v2 = sub_266A3ACD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriRequestCounts.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEBF8, &qword_266A474B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3ACD8();
  sub_266A46900();
  v10[15] = 0;
  sub_266A46820();
  if (!v1)
  {
    v10[14] = 1;
    sub_266A46820();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_266A39804@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266A3AD2C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t SiriCountsAll.aggregationInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266A461E0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SiriCountsAll.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriCountsAll(0) + 20);

  return sub_266A2AF38(v3, a1);
}

uint64_t SiriCountsAll.dimensions.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SiriCountsAll(0) + 20);

  return sub_266A3AF2C(a1, v3);
}

uint64_t SiriCountsAll.requestCounts.setter(uint64_t a1)
{
  result = type metadata accessor for SiriCountsAll(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

unint64_t sub_266A39A4C()
{
  v1 = 0x6F69736E656D6964;
  if (*v0 != 1)
  {
    v1 = 0x4374736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_266A39ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A3BE3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A39AF0(uint64_t a1)
{
  v2 = sub_266A3AF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A39B2C(uint64_t a1)
{
  v2 = sub_266A3AF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriCountsAll.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEC08, &qword_266A474C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3AF64();
  sub_266A46900();
  v33 = 0;
  sub_266A461E0();
  sub_266A3AFB8(&qword_2800AEC18, MEMORY[0x277D04450]);
  sub_266A46810();
  if (!v2)
  {
    v11 = type metadata accessor for SiriCountsAll(0);
    v12 = (v3 + *(v11 + 20));
    v13 = v12[2];
    v14 = *v12;
    v29 = v12[1];
    v30 = v13;
    v15 = v12[2];
    v16 = v12[4];
    v31 = v12[3];
    v32 = v16;
    v17 = *v12;
    v25 = v15;
    v26 = v31;
    v27 = v12[4];
    v28 = v17;
    v23 = v14;
    v24 = v29;
    v22 = 1;
    sub_266A2AF38(&v28, v21);
    sub_266A2AF94();
    sub_266A46810();
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v21[0] = v23;
    v21[1] = v24;
    sub_266A2AFE8(v21);
    v20 = *(v3 + *(v11 + 24));
    v19[7] = 2;
    sub_266A3B000();
    sub_266A46810();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SiriCountsAll.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_266A461E0();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AEC28, &qword_266A474C8);
  v28 = *(v31 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x28223BE20](v31);
  v9 = &v25 - v8;
  v10 = type metadata accessor for SiriCountsAll(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3AF64();
  sub_266A468F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  v15 = v29;
  v25 = v13;
  v26 = a1;
  LOBYTE(v33) = 0;
  sub_266A3AFB8(&qword_2800AEC30, MEMORY[0x277D04450]);
  v18 = v30;
  v17 = v31;
  sub_266A467B0();
  (*(v15 + 32))(v25, v18, v4);
  v39 = 1;
  sub_266A2B610();
  sub_266A467B0();
  v19 = &v25[*(v10 + 20)];
  v20 = v36;
  *(v19 + 2) = v35;
  *(v19 + 3) = v20;
  *(v19 + 4) = v37;
  v21 = v34;
  *v19 = v33;
  *(v19 + 1) = v21;
  v38 = 2;
  sub_266A3B054();
  sub_266A467B0();
  (*(v16 + 8))(v9, v17);
  v22 = *(v10 + 24);
  v23 = v25;
  *&v25[v22] = v32;
  sub_266A3B0A8(v23, v27);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_266A3B10C(v23);
}

uint64_t SiriCoreMetricsResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t SiriCoreMetricsResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  return result;
}

uint64_t _s15SiriCoreMetrics017DynamicDimensionsabC0V23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266A46840() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  if (a1[8] == a2[8] && a1[9] == a2[9])
  {
    return 1;
  }

  return sub_266A46840();
}

unint64_t sub_266A3A414()
{
  result = qword_2800AEBF0;
  if (!qword_2800AEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEBF0);
  }

  return result;
}

BOOL _s15SiriCoreMetrics0A9CountsAllV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_266A461D0() & 1) == 0)
  {
    return 0;
  }

  v29 = type metadata accessor for SiriCountsAll(0);
  v4 = *(v29 + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v7 = *(a1 + v4 + 24);
  v9 = *(a1 + v4 + 32);
  v10 = *(a1 + v4 + 40);
  v36 = *(a1 + v4 + 56);
  v37 = *(a1 + v4 + 48);
  v32 = *(a1 + v4 + 72);
  v33 = *(a1 + v4 + 64);
  v11 = (a2 + v4);
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];
  v15 = v11[5];
  v34 = v11[7];
  v35 = v11[6];
  v30 = v11[9];
  v31 = v11[8];
  v16 = v5 == *v11 && v6 == v11[1];
  if (!v16 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v17 = v8 == v12 && v7 == v13;
  if (!v17 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v18 = v9 == v14 && v10 == v15;
  if (!v18 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v19 = v37 == v35 && v36 == v34;
  if (!v19 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v20 = v33 == v31 && v32 == v30;
  if (!v20 && (sub_266A46840() & 1) == 0)
  {
    return 0;
  }

  v21 = *(v29 + 24);
  v23 = *(a1 + v21);
  v22 = *(a1 + v21 + 4);
  v24 = (a2 + v21);
  v26 = *v24;
  v25 = v24[1];
  return v23 == v26 && v22 == v25;
}

uint64_t _s15SiriCoreMetrics0abC15AggregationKeysV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_266A461D0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for SiriCoreMetricsAggregationKeys(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = *(a1 + v4 + 16);
  v8 = *(a1 + v4 + 24);
  v9 = *(a1 + v4 + 32);
  v10 = *(a1 + v4 + 40);
  v28 = *(a1 + v4 + 56);
  v29 = *(a1 + v4 + 48);
  v26 = *(a1 + v4 + 72);
  v27 = *(a1 + v4 + 64);
  v11 = (a2 + v4);
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];
  v15 = v11[5];
  v16 = v11[6];
  v17 = v11[7];
  v24 = v11[9];
  v25 = v11[8];
  v18 = v5 == *v11 && v6 == v11[1];
  if (v18 || (sub_266A46840()) && (v7 == v12 ? (v19 = v8 == v13) : (v19 = 0), (v19 || (sub_266A46840()) && (v9 == v14 ? (v20 = v10 == v15) : (v20 = 0), (v20 || (sub_266A46840()) && (v29 == v16 ? (v21 = v28 == v17) : (v21 = 0), (v21 || (sub_266A46840()) && (v27 == v25 ? (v22 = v26 == v24) : (v22 = 0), v22 || (sub_266A46840())))))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266A3A738(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75706E4969726973 && a2 == 0xEF656C61636F4C74;
  if (v4 || (sub_266A46840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D77656976 && a2 == 0xE800000000000000 || (sub_266A46840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E496F69647561 && a2 == 0xEE00656361667265 || (sub_266A46840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746375646F7270 && a2 == 0xE700000000000000 || (sub_266A46840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000266A48D50 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_266A46840();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_266A3A900@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECC8, &qword_266A47C38);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3A414();
  sub_266A468F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_266A467A0();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_266A467A0();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_266A467A0();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_266A467A0();
  v29 = v16;
  v39 = 4;
  v17 = sub_266A467A0();
  v19 = v18;
  (*(v6 + 8))(v9, v5);
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v31;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  *&v37 = v17;
  *(&v37 + 1) = v19;
  sub_266A2AF38(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v32;
  v38[2] = v28;
  v38[3] = v20;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v38[8] = v17;
  v38[9] = v19;
  result = sub_266A2AFE8(v38);
  v24 = v36;
  a2[2] = v35;
  a2[3] = v24;
  a2[4] = v37;
  v25 = v34;
  *a2 = v33;
  a2[1] = v25;
  return result;
}

unint64_t sub_266A3ACD8()
{
  result = qword_2800AEC00;
  if (!qword_2800AEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC00);
  }

  return result;
}

uint64_t sub_266A3AD2C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800AECC0, &qword_266A47C30);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A3ACD8();
  sub_266A468F0();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12[15] = 0;
  v9 = sub_266A467C0();
  v12[14] = 1;
  v10 = sub_266A467C0();
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 | (v10 << 32);
}

uint64_t sub_266A3AEF4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_266A3AF64()
{
  result = qword_2800AEC10;
  if (!qword_2800AEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC10);
  }

  return result;
}

uint64_t sub_266A3AFB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_266A3B000()
{
  result = qword_2800AEC20;
  if (!qword_2800AEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC20);
  }

  return result;
}

unint64_t sub_266A3B054()
{
  result = qword_2800AEC38;
  if (!qword_2800AEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC38);
  }

  return result;
}

uint64_t sub_266A3B0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriCountsAll(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A3B10C(uint64_t a1)
{
  v2 = type metadata accessor for SiriCountsAll(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266A3B16C()
{
  result = qword_2800AEC40;
  if (!qword_2800AEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC40);
  }

  return result;
}

unint64_t sub_266A3B1C4()
{
  result = qword_2800AEC48;
  if (!qword_2800AEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC48);
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

uint64_t sub_266A3B28C(uint64_t a1, int a2)
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

uint64_t sub_266A3B2D4(uint64_t result, int a2, int a3)
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

uint64_t sub_266A3B368()
{
  result = sub_266A461E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriRequestCounts(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SiriRequestCounts(uint64_t result, int a2, int a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266A461E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_266A461E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_266A3B5E4()
{
  result = sub_266A461E0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_266A3B67C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_266A3B6C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266A3B724(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_266A3B7B8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriRequestCounts.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriRequestCounts.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicDimensionsSiriCoreMetrics.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicDimensionsSiriCoreMetrics.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A3BB28()
{
  result = qword_2800AEC78;
  if (!qword_2800AEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC78);
  }

  return result;
}

unint64_t sub_266A3BB80()
{
  result = qword_2800AEC80;
  if (!qword_2800AEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC80);
  }

  return result;
}

unint64_t sub_266A3BBD8()
{
  result = qword_2800AEC88;
  if (!qword_2800AEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC88);
  }

  return result;
}

unint64_t sub_266A3BC30()
{
  result = qword_2800AEC90;
  if (!qword_2800AEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC90);
  }

  return result;
}

unint64_t sub_266A3BC88()
{
  result = qword_2800AEC98;
  if (!qword_2800AEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AEC98);
  }

  return result;
}

unint64_t sub_266A3BCE0()
{
  result = qword_2800AECA0;
  if (!qword_2800AECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECA0);
  }

  return result;
}

unint64_t sub_266A3BD38()
{
  result = qword_2800AECA8;
  if (!qword_2800AECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECA8);
  }

  return result;
}

unint64_t sub_266A3BD90()
{
  result = qword_2800AECB0;
  if (!qword_2800AECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECB0);
  }

  return result;
}

unint64_t sub_266A3BDE8()
{
  result = qword_2800AECB8;
  if (!qword_2800AECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800AECB8);
  }

  return result;
}

uint64_t sub_266A3BE3C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000266A48D90 == a2 || (sub_266A46840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL || (sub_266A46840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4374736575716572 && a2 == 0xED000073746E756FLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_266A46840();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}