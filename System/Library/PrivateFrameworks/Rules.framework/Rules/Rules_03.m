uint64_t sub_262422C64(uint64_t a1)
{
  v4 = sub_26240CF48(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D198, qword_262468F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1A0, &qword_2624697E0);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_2623EB668(v20, v25);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v21, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    v9 = v8;
    v10 = v22;
    if (v22 && *(v5 + 16) && (v11 = v21, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v20);
      sub_2623EB668(v20, &v21);
      v15 = v23;
      v16 = v24;
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      (*(v16 + 24))(&v28, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v21);
    }

    else
    {
      v17 = v26;
      v18 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v18 + 24))(&v28, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v25);
    return v28;
  }
}

uint64_t sub_262422ECC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_262422C64(a2);
  result = v5;
  if (!v2)
  {
    *a1 = v4;
  }

  return result;
}

unint64_t sub_262422F1C()
{
  result = qword_27FF0D1B0;
  if (!qword_27FF0D1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1B0);
  }

  return result;
}

unint64_t sub_262422F70()
{
  result = qword_27FF0D1B8;
  if (!qword_27FF0D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1B8);
  }

  return result;
}

unint64_t sub_262422FC4()
{
  result = qword_27FF0D1C0;
  if (!qword_27FF0D1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1C0);
  }

  return result;
}

unint64_t sub_262423018()
{
  result = qword_27FF0D1C8;
  if (!qword_27FF0D1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1C8);
  }

  return result;
}

unint64_t sub_26242306C()
{
  result = qword_27FF0D1D0;
  if (!qword_27FF0D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1D0);
  }

  return result;
}

unint64_t sub_2624230C0()
{
  result = qword_27FF0D1D8;
  if (!qword_27FF0D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1D8);
  }

  return result;
}

uint64_t type metadata accessor for StringListRule()
{
  result = qword_27FF0D248;
  if (!qword_27FF0D248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_262423160(uint64_t *a1)
{
  v3 = sub_262462A88();
  v14 = *(v3 - 8);
  v4 = *(v14 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D1F8, &qword_262468FC8);
  v15 = *(v5 - 8);
  v6 = *(v15 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262423948();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4C8, &qword_262463340);
    sub_262424D7C(&qword_27FF0C4D0);
    sub_262462BB8();
    (*(v15 + 8))(v8, v5);
    v10 = v16;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v10;
}

uint64_t sub_2624234E4(uint64_t *a1)
{
  v3 = sub_262462A88();
  v15 = *(v3 - 8);
  v4 = *(v15 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D210, &qword_262468FD8);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_26242399C();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13[2] = v6;
    v14 = a1;
    LOBYTE(v17) = 0;
    v11 = sub_262462B88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D220, &qword_262468FE0);
    LOBYTE(v18) = 1;
    sub_2624239F0();
    sub_262462BB8();
    (*(v16 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return v11;
}

unint64_t sub_2624238A0()
{
  result = qword_27FF0D1E8;
  if (!qword_27FF0D1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1E8);
  }

  return result;
}

unint64_t sub_2624238F4()
{
  result = qword_27FF0D1F0;
  if (!qword_27FF0D1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D1F0);
  }

  return result;
}

unint64_t sub_262423948()
{
  result = qword_27FF0D200;
  if (!qword_27FF0D200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D200);
  }

  return result;
}

unint64_t sub_26242399C()
{
  result = qword_27FF0D218;
  if (!qword_27FF0D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D218);
  }

  return result;
}

unint64_t sub_2624239F0()
{
  result = qword_27FF0D228;
  if (!qword_27FF0D228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D220, &qword_262468FE0);
    sub_262424D7C(&qword_27FF0C4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D228);
  }

  return result;
}

unint64_t sub_262423A98()
{
  result = qword_27FF0D240;
  if (!qword_27FF0D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D240);
  }

  return result;
}

uint64_t sub_262423AEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringListRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_262423B50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_262423C28()
{
  sub_262423CD4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RulesValidity();
    if (v1 <= 0x3F)
    {
      sub_262423D38();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_262423CD4()
{
  if (!qword_27FF0D258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4C8, &qword_262463340);
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF0D258);
    }
  }
}

unint64_t sub_262423D38()
{
  result = qword_27FF0D260;
  if (!qword_27FF0D260)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0D260);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StringListExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StringListExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_262423F20()
{
  result = qword_27FF0D268;
  if (!qword_27FF0D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D268);
  }

  return result;
}

unint64_t sub_262423F74(uint64_t a1)
{
  result = sub_262422F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262423F9C(uint64_t a1)
{
  result = sub_262423018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262423FC4(uint64_t a1)
{
  result = sub_2624230C0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_262423FEC(uint64_t a1)
{
  result = sub_2624245A4(&qword_27FF0D270, type metadata accessor for StringListRule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262424044(uint64_t a1)
{
  result = sub_26242406C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242406C()
{
  result = qword_27FF0D278;
  if (!qword_27FF0D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D278);
  }

  return result;
}

unint64_t sub_2624240C0(uint64_t a1)
{
  result = sub_2624240E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624240E8()
{
  result = qword_27FF0D280;
  if (!qword_27FF0D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D280);
  }

  return result;
}

unint64_t sub_262424140()
{
  result = qword_27FF0D288;
  if (!qword_27FF0D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D288);
  }

  return result;
}

unint64_t sub_262424198()
{
  result = qword_27FF0D290;
  if (!qword_27FF0D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D290);
  }

  return result;
}

unint64_t sub_2624241F0()
{
  result = qword_27FF0D298;
  if (!qword_27FF0D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D298);
  }

  return result;
}

unint64_t sub_262424248()
{
  result = qword_27FF0D2A0;
  if (!qword_27FF0D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2A0);
  }

  return result;
}

unint64_t sub_2624242A0()
{
  result = qword_27FF0D2A8;
  if (!qword_27FF0D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2A8);
  }

  return result;
}

unint64_t sub_2624242F8()
{
  result = qword_27FF0D2B0;
  if (!qword_27FF0D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2B0);
  }

  return result;
}

unint64_t sub_262424350()
{
  result = qword_27FF0D2B8;
  if (!qword_27FF0D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2B8);
  }

  return result;
}

unint64_t sub_2624243A8()
{
  result = qword_27FF0D2C0;
  if (!qword_27FF0D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2C0);
  }

  return result;
}

unint64_t sub_262424400()
{
  result = qword_27FF0D2C8;
  if (!qword_27FF0D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2C8);
  }

  return result;
}

unint64_t sub_262424454(uint64_t a1)
{
  result = sub_26242447C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242447C()
{
  result = qword_27FF0D2D0;
  if (!qword_27FF0D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2D0);
  }

  return result;
}

unint64_t sub_2624244D0(uint64_t a1)
{
  result = sub_2624244F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624244F8()
{
  result = qword_27FF0D2D8;
  if (!qword_27FF0D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2D8);
  }

  return result;
}

uint64_t sub_26242454C(uint64_t a1)
{
  result = sub_2624245A4(&qword_27FF0D2E0, type metadata accessor for StringListRule);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2624245A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2624245EC(uint64_t a1)
{
  result = sub_262424614();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262424614()
{
  result = qword_27FF0D2E8;
  if (!qword_27FF0D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2E8);
  }

  return result;
}

unint64_t sub_262424668(uint64_t a1)
{
  result = sub_262424690();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262424690()
{
  result = qword_27FF0D2F0;
  if (!qword_27FF0D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2F0);
  }

  return result;
}

unint64_t sub_2624246E4(uint64_t a1)
{
  result = sub_26242470C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242470C()
{
  result = qword_27FF0D2F8;
  if (!qword_27FF0D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D2F8);
  }

  return result;
}

unint64_t sub_262424764()
{
  result = qword_27FF0D300;
  if (!qword_27FF0D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D300);
  }

  return result;
}

unint64_t sub_2624247BC()
{
  result = qword_27FF0D308;
  if (!qword_27FF0D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D308);
  }

  return result;
}

uint64_t sub_262424810(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000262469020 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000262469000 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000262468FE0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

unint64_t sub_262424B48()
{
  result = qword_27FF0D318;
  if (!qword_27FF0D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D318);
  }

  return result;
}

unint64_t sub_262424C04()
{
  result = qword_27FF0D328;
  if (!qword_27FF0D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D328);
  }

  return result;
}

unint64_t sub_262424CC0()
{
  result = qword_27FF0D338;
  if (!qword_27FF0D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D338);
  }

  return result;
}

uint64_t sub_262424D7C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0C4C8, &qword_262463340);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_262424DE8()
{
  result = qword_27FF0CAC8;
  if (!qword_27FF0CAC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FF0CAC8);
  }

  return result;
}

unint64_t sub_262424E68()
{
  result = qword_27FF0D340;
  if (!qword_27FF0D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D340);
  }

  return result;
}

unint64_t sub_262424EC0()
{
  result = qword_27FF0D348;
  if (!qword_27FF0D348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D348);
  }

  return result;
}

unint64_t sub_262424F18()
{
  result = qword_27FF0D350;
  if (!qword_27FF0D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D350);
  }

  return result;
}

unint64_t sub_262424F70()
{
  result = qword_27FF0D358;
  if (!qword_27FF0D358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D358);
  }

  return result;
}

unint64_t sub_262424FC8()
{
  result = qword_27FF0D360;
  if (!qword_27FF0D360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D360);
  }

  return result;
}

unint64_t sub_262425020()
{
  result = qword_27FF0D368;
  if (!qword_27FF0D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D368);
  }

  return result;
}

unint64_t sub_262425078()
{
  result = qword_27FF0D370;
  if (!qword_27FF0D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D370);
  }

  return result;
}

unint64_t sub_2624250D0()
{
  result = qword_27FF0D378;
  if (!qword_27FF0D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D378);
  }

  return result;
}

unint64_t sub_262425128()
{
  result = qword_27FF0D380;
  if (!qword_27FF0D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D380);
  }

  return result;
}

uint64_t sub_262425180(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_262462C58() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_262425210(uint64_t result, uint64_t a2)
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

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t NemesisError.hash(into:)()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 32);
  v7 = v0[5];
  switch(*(v0 + 64))
  {
    case 1:
      v8 = 1;
      goto LABEL_29;
    case 2:
      v8 = 2;
      goto LABEL_29;
    case 3:
      v8 = 3;
      goto LABEL_29;
    case 4:
      MEMORY[0x2667289D0](4);
      sub_262462778();
      sub_262462778();
      goto LABEL_30;
    case 5:
      v9 = 5;
      goto LABEL_25;
    case 6:
      v9 = 6;
      goto LABEL_25;
    case 7:
      v8 = 7;
      goto LABEL_29;
    case 8:
      v8 = 8;
      goto LABEL_29;
    case 9:
      MEMORY[0x2667289D0](9);
      sub_262462778();
      MEMORY[0x2667289D0](*(v4 + 16));
      v12 = *(v4 + 16);
      if (v12)
      {
        v13 = (v4 + 40);
        do
        {
          v14 = *(v13 - 1);
          v15 = *v13;

          sub_262462778();

          v13 += 2;
          --v12;
        }

        while (v12);
      }

      goto LABEL_30;
    case 0xA:
      MEMORY[0x2667289D0](10);
      sub_262462778();
      v18 = v4;
      goto LABEL_34;
    case 0xB:
      MEMORY[0x2667289D0](11);
      sub_262462778();
      MEMORY[0x2667289D0](v4);
      if (v5)
      {
        result = sub_262462D18();
      }

      else
      {
        sub_262462D18();
        v18 = v3;
LABEL_34:
        result = MEMORY[0x2667289D0](v18);
      }

      break;
    case 0xC:
      MEMORY[0x2667289D0](12);
      MEMORY[0x2667289D0](v2);
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v11 = v1;
      }

      else
      {
        v11 = 0;
      }

      return MEMORY[0x2667289F0](v11);
    case 0xD:
      v9 = 13;
      goto LABEL_25;
    case 0xE:
      v9 = 14;
LABEL_25:
      MEMORY[0x2667289D0](v9);
      goto LABEL_30;
    case 0xF:
      v8 = 15;
      goto LABEL_29;
    case 0x10:
      v8 = 16;
      goto LABEL_29;
    case 0x11:
      v17 = v0[6];
      v16 = v0[7];
      MEMORY[0x2667289D0](17);
      sub_262462778();
      sub_262462778();
      sub_262462778();
      goto LABEL_30;
    case 0x12:
      v18 = 18;
      goto LABEL_34;
    default:
      v8 = 0;
LABEL_29:
      MEMORY[0x2667289D0](v8);
      sub_262462778();
LABEL_30:

      result = sub_262462778();
      break;
  }

  return result;
}

uint64_t NemesisError.hashValue.getter()
{
  sub_262462CF8();
  NemesisError.hash(into:)();
  return sub_262462D38();
}

uint64_t sub_2624255A8()
{
  sub_262462CF8();
  NemesisError.hash(into:)();
  return sub_262462D38();
}

uint64_t sub_2624255EC()
{
  sub_262462CF8();
  NemesisError.hash(into:)();
  return sub_262462D38();
}

uint64_t NemesisError.metric.getter()
{
  v1 = sub_262462D68();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[3];
  v32 = v0[2];
  v33 = v6;
  v34 = *(v0 + 64);
  v7 = v0[1];
  v30 = *v0;
  v31 = v7;
  v26 = &type metadata for NemesisError;
  v8 = swift_allocObject();
  v25 = v8;
  v9 = v0[3];
  *(v8 + 48) = v0[2];
  *(v8 + 64) = v9;
  *(v8 + 80) = *(v0 + 64);
  v10 = v0[1];
  *(v8 + 16) = *v0;
  *(v8 + 32) = v10;
  sub_26242706C(&v30, v23);
  sub_262462D48();
  v11 = sub_262462D58();
  (*(v2 + 8))(v5, v1);
  v12 = v11[2];
  v13 = v11[3];
  v14 = v11[4];
  v15 = v11[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_262462A48();
  swift_getObjectType();
  result = sub_262462A48();
  if (v16 == result)
  {
    v18 = sub_262462A58();
    swift_unknownObjectRelease();
    if (v18)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_262462AB8();
      swift_unknownObjectRelease();

      v19 = v27;
      v20 = v28;
      __swift_destroy_boxed_opaque_existential_1(v29);
      if (v20)
      {
        goto LABEL_6;
      }
    }

    v27 = 0;
    v28 = 0xE000000000000000;
    v23[2] = v32;
    v23[3] = v33;
    v24 = v34;
    v23[1] = v31;
    v23[0] = v30;
    sub_262462AA8();

    v19 = v27;
    v20 = v28;
LABEL_6:
    v21 = v30;
    if (v34 > 0xEu)
    {
      if (v34 - 15 >= 2)
      {
        if (v34 != 17)
        {
          return v19;
        }

        v22 = v32;
        *&v23[0] = v19;
        *(&v23[0] + 1) = v20;
        MEMORY[0x266728460](46, 0xE100000000000000);
        MEMORY[0x266728460](v22, *(&v22 + 1));
        return *&v23[0];
      }
    }

    else if (v34 - 5 >= 3 && v34 >= 2u)
    {
      return v19;
    }

    *&v23[0] = v19;
    *(&v23[0] + 1) = v20;
    MEMORY[0x266728460](46, 0xE100000000000000);
    MEMORY[0x266728460](v21, *(&v21 + 1));

    return *&v23[0];
  }

  __break(1u);
  return result;
}

uint64_t NemesisError.errorDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v6 = *(v0 + 33) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 32);
  v7 = v0[5];
  switch(*(v0 + 64))
  {
    case 1:
      sub_262462A28();
      MEMORY[0x266728460](0x736973656D656E5BLL, 0xE90000000000002ELL);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000014, 0x8000000262471F90);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000010, 0x8000000262471FB0);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 2:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000021, 0x8000000262471EC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000031, 0x8000000262471F20);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x4B676E69646F432ELL, 0xED00002E27737965);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 3:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000021, 0x8000000262471EC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000031, 0x8000000262471F20);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0xD00000000000002BLL, 0x8000000262471F60);
      v18 = MEMORY[0x266728520](&unk_2874FBAB0, MEMORY[0x277D837D0]);
      MEMORY[0x266728460](v18);

      MEMORY[0x266728460](46, 0xE100000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 4:
      v12 = v5 | (v6 << 8);
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000021, 0x8000000262471EC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000022, 0x8000000262471EF0);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x7079742073612027, 0xEB00000000272065);
      MEMORY[0x266728460](v12, v7);
      MEMORY[0x266728460](11815, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 5:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002ELL, 0x8000000262471E60);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x756E207361772027, 0xEB000000002E6C6CLL);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 6:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002ELL, 0x8000000262471E60);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x727020746F6E2027, 0xEE002E746E657365);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 7:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002ELL, 0x8000000262471E60);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000023, 0x8000000262471E90);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](11815, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 8:
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000028, 0x8000000262471E30);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x727265207B202E27, 0xEB000000003D726FLL);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 9:
      v16 = v5 | (v6 << 8);
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000002BLL, 0x8000000262471E00);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D68746170202CLL, 0xE700000000000000);
      v17 = MEMORY[0x266728520](v4, MEMORY[0x277D837D0]);
      MEMORY[0x266728460](v17);

      MEMORY[0x266728460](0x3D726F727265202CLL, 0xE800000000000000);
      MEMORY[0x266728460](v3, v16);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 0xA:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003BLL, 0x8000000262471DC0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D7865646E69202CLL, 0xE800000000000000);
      v24 = sub_262462C28();
      MEMORY[0x266728460](v24);

      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xB:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003BLL, 0x8000000262471D80);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D7472617473202CLL, 0xE800000000000000);
      v9 = sub_262462C28();
      MEMORY[0x266728460](v9);

      MEMORY[0x266728460](0x3D646E65202CLL, 0xE600000000000000);
      if (v5)
      {
        v10 = 0xE400000000000000;
        v11 = 1701736270;
      }

      else
      {
        v11 = sub_262462C28();
        v10 = v25;
      }

      MEMORY[0x266728460](v11, v10);

      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xC:
      v14 = v0[1];
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000037, 0x8000000262471D40);
      v15 = sub_262462C28();
      MEMORY[0x266728460](v15);

      MEMORY[0x266728460](0x3D7865646E69202CLL, 0xE800000000000000);
      sub_262462898();
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 0xD:
      sub_262462A28();

      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xE:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003ALL, 0x8000000262471CD0);
      MEMORY[0x266728460](v1, v2);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0xF:
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003ALL, 0x8000000262471C90);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D726F727265202CLL, 0xE800000000000000);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0x10:
      sub_262462A28();

      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x3D656C7572207B20, 0xE800000000000000);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
      goto LABEL_24;
    case 0x11:
      v20 = v0[6];
      v19 = v0[7];
      v21 = v5 | (v6 << 8);
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000003FLL, 0x8000000262471C50);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0x3D656D616E202CLL, 0xE700000000000000);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](0x3D6469202CLL, 0xE500000000000000);
      MEMORY[0x266728460](v21, v7);
      MEMORY[0x266728460](0x6F727265207B202ELL, 0xEA00000000003D72);
      MEMORY[0x266728460](v20, v19);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v13 = [objc_opt_self() mainBundle];
      goto LABEL_25;
    case 0x12:
      v22 = [objc_opt_self() mainBundle];
      v23 = sub_262462538();

      return v23;
    default:
      sub_262462A28();
      MEMORY[0x266728460](0x736973656D656E5BLL, 0xE90000000000002ELL);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000017, 0x8000000262471FD0);
      MEMORY[0x266728460](v1, v2);
      MEMORY[0x266728460](0xD000000000000010, 0x8000000262471FB0);
      MEMORY[0x266728460](v4, v3);
      MEMORY[0x266728460](32032, 0xE200000000000000);
      v8 = [objc_opt_self() mainBundle];
LABEL_24:
      v13 = v8;
LABEL_25:
      v23 = sub_262462538();

      return v23;
  }
}

uint64_t _s5Rules12NemesisErrorO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v26 = a1[2];
  v27 = v3;
  v4 = a1[1];
  v24 = *a1;
  v25 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  *&v30[16] = *(a2 + 32);
  v31 = v6;
  v7 = *(a2 + 16);
  v29 = *a2;
  *v30 = v7;
  v8 = a1[3];
  v33[2] = v26;
  v33[3] = v8;
  v33[0] = v24;
  v33[1] = v2;
  v36 = v5;
  v37 = *&v30[16];
  v38 = *(a2 + 48);
  v28 = *(a1 + 64);
  v32 = *(a2 + 64);
  v34 = *(a1 + 64);
  v39 = *(a2 + 64);
  v35 = v29;
  v9 = v25;
  v10 = v26;
  v11 = *(&v26 + 1) | ((*(&v26 + 5) | (BYTE7(v26) << 16)) << 32);
  switch(v28)
  {
    case 1:
      if (v32 != 1)
      {
        goto LABEL_77;
      }

      goto LABEL_5;
    case 2:
      if (v32 == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 3:
      if (v32 == 3)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 4:
      if (v32 != 4)
      {
        goto LABEL_76;
      }

      if (v24 != *&v29 && (sub_262462C58() & 1) == 0 || v25 != *v30 && (sub_262462C58() & 1) == 0)
      {
        goto LABEL_54;
      }

      if (__PAIR128__(*(&v26 + 1), v26 | (v11 << 8)) != *&v30[16])
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    case 5:
      if (v32 != 5)
      {
        goto LABEL_78;
      }

      goto LABEL_60;
    case 6:
      if (v32 == 6)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    case 7:
      if (v32 == 7)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 8:
      if (v32 == 8)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 9:
      if (v32 != 9)
      {
        goto LABEL_76;
      }

      if (v24 != *&v29 && (sub_262462C58() & 1) == 0 || (sub_262425180(v25, *v30) & 1) == 0)
      {
        goto LABEL_54;
      }

      if (__PAIR128__(v26 | (v11 << 8), *(&v25 + 1)) != *&v30[8])
      {
        goto LABEL_63;
      }

      goto LABEL_61;
    case 10:
      if (v32 != 10)
      {
        goto LABEL_78;
      }

      v19 = *v30;
      if (v24 == *&v29)
      {
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
      }

      else
      {
        v21 = sub_262462C58();
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        if ((v21 & 1) == 0)
        {
          return 0;
        }
      }

      return v9 == v19;
    case 11:
      if (v32 != 11)
      {
        goto LABEL_78;
      }

      v12 = *v30;
      v13 = v30[16];
      if (v24 == *&v29)
      {
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        if (v9 != v12)
        {
          return 0;
        }
      }

      else
      {
        v20 = sub_262462C58();
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        result = 0;
        if ((v20 & 1) == 0 || v9 != v12)
        {
          return result;
        }
      }

      if (v10)
      {
        return (v13 & 1) != 0;
      }

      return (v13 & 1) == 0 && *(&v9 + 1) == *(&v12 + 1);
    case 12:
      if (v32 != 12)
      {
        goto LABEL_79;
      }

      sub_26242721C(v33);
      return *&v29.i64[1] == *(&v24 + 1) && v24 == v29.i64[0];
    case 13:
      if (v32 == 13)
      {
        goto LABEL_60;
      }

      goto LABEL_78;
    case 14:
      if (v32 != 14)
      {
        goto LABEL_78;
      }

LABEL_60:
      if (v24 == *&v29)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    case 15:
      if (v32 == 15)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 16:
      if (v32 == 16)
      {
        goto LABEL_5;
      }

      goto LABEL_77;
    case 17:
      if (v32 != 17)
      {

LABEL_76:

LABEL_77:

LABEL_78:

LABEL_79:
        v16 = &v29;
        goto LABEL_80;
      }

      *&v22 = v31.i64[1];
      *(&v22 + 1) = v31.i64[0];
      if (v24 != *&v29 && (sub_262462C58() & 1) == 0 || v25 != *v30 && (sub_262462C58() & 1) == 0 || __PAIR128__(*(&v26 + 1), v26 | (v11 << 8)) != *&v30[16] && (sub_262462C58() & 1) == 0)
      {
LABEL_54:
        sub_26242706C(&v29, v23);
        v16 = &v24;
LABEL_80:
        sub_26242706C(v16, v23);
        sub_26242721C(v33);
        return 0;
      }

      if (__PAIR128__(v27, *(&v27 + 1)) == v22)
      {
LABEL_61:
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
LABEL_62:
        sub_26242721C(v33);
        return 1;
      }

      else
      {
LABEL_63:
        v17 = sub_262462C58();
        sub_26242706C(&v29, v23);
        sub_26242706C(&v24, v23);
        sub_26242721C(v33);
        return v17 & 1;
      }

    case 18:
      if (v32 != 18)
      {
        goto LABEL_79;
      }

      v18 = vorrq_s8(vorrq_s8(v29, *&v30[16]), vorrq_s8(*v30, v31));
      if (vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
      {
        goto LABEL_79;
      }

      goto LABEL_62;
    default:
      if (v32)
      {
        goto LABEL_77;
      }

LABEL_5:
      if (v24 != *&v29 && (sub_262462C58() & 1) == 0)
      {
        goto LABEL_54;
      }

      if (v25 != *v30)
      {
        goto LABEL_63;
      }

      goto LABEL_61;
  }
}

uint64_t sub_262426F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  result = a2;
  if (a9 > 6u)
  {
    if (a9 > 0x11u)
    {
      goto LABEL_11;
    }

    if (((1 << a9) & 0x6C00) != 0)
    {
      goto LABEL_15;
    }

    if (((1 << a9) & 0x18000) != 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    if (a9 == 17)
    {
    }

    else
    {
LABEL_11:
      if (a9 - 7 < 2)
      {
        goto LABEL_14;
      }

      if (a9 != 9)
      {
        return result;
      }
    }

LABEL_13:

    goto LABEL_14;
  }

  if (a9 < 4u)
  {
    goto LABEL_14;
  }

  if (a9 - 5 >= 2)
  {
    if (a9 != 4)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_15:
}

unint64_t sub_2624270A8()
{
  result = qword_2813BD958[0];
  if (!qword_2813BD958[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813BD958);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_5Rules12NemesisErrorO(uint64_t a1)
{
  if ((*(a1 + 64) & 0x1Fu) <= 0x11)
  {
    return *(a1 + 64) & 0x1F;
  }

  else
  {
    return (*a1 + 18);
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_262427140(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xEE && *(a1 + 65))
  {
    return (*a1 + 238);
  }

  v3 = *(a1 + 64);
  if (v3 <= 0x12)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_262427188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xED)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 238;
    if (a3 >= 0xEE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_2624271E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x12)
  {
    *result = a2 - 18;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    LOBYTE(a2) = 18;
  }

  *(result + 64) = a2;
  return result;
}

uint64_t sub_26242721C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D388, &qword_262469EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2624272B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_2624272F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26242736C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  v5 = *(*(sub_262462718() - 8) + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  *(v3 + 144) = *a2;
  *(v3 + 160) = *(a2 + 16);
  *(v3 + 168) = *(a2 + 24);
  *(v3 + 184) = *(a2 + 40);
  *(v3 + 192) = *(a2 + 48);

  return MEMORY[0x2822009F8](sub_262427428, 0, 0);
}

uint64_t sub_262427428()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 120);
  v4 = sub_262462738();
  v6 = v5;
  *(v3 + 128) = v4;
  *(v3 + 136) = v5;
  v7 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v8 = *(v0 + 152);
  if (!v7)
  {
    goto LABEL_11;
  }

  v9 = *(v0 + 144);
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_11;
  }

  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v13 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v14 = *(v0 + 192);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);
    *v19 = v9;
    *(v19 + 8) = v8;
    *(v19 + 16) = v16;
    *(v19 + 24) = v15;
    *(v19 + 32) = v12;
    *(v19 + 40) = v11;
    *(v19 + 48) = v14;
    sub_262462708();
    v20 = sub_2624626C8();
    v22 = v21;
    v23 = sub_262462418();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    sub_262462408();
    v26 = sub_2623F47D4(v20, v22);
    v28 = v27;
    sub_2624278F4();
    sub_2624623F8();
    v37 = *(v0 + 128);
    v36 = *(v0 + 136);
    v38 = *(v0 + 120);
    v39 = sub_262462588();
    (*(*(v39 - 8) + 8))(v37, v39);
    sub_2623F4694(v26, v28);

    *(v38 + 56) = *(v0 + 16);
    v40 = *(v0 + 32);
    v41 = *(v0 + 48);
    v42 = *(v0 + 64);
    *(v38 + 120) = *(v0 + 80);
    *(v38 + 104) = v42;
    *(v38 + 88) = v41;
    *(v38 + 72) = v40;

    v43 = *(v0 + 8);
  }

  else
  {
LABEL_11:
    v29 = *(v0 + 184);
    v30 = *(v0 + 168);
    v31 = *(v0 + 128);

    sub_2623F1BBC();
    swift_allocError();
    *v32 = v4;
    *(v32 + 8) = v6;
    *(v32 + 16) = 0xD00000000000002BLL;
    *(v32 + 24) = 0x8000000262471FF0;
    *(v32 + 32) = v44;
    *(v32 + 48) = v45;
    *(v32 + 64) = 0;
    swift_willThrow();
    v33 = sub_262462588();
    (*(*(v33 - 8) + 8))(v31, v33);
    v34 = *(v0 + 136);

    v43 = *(v0 + 8);
  }

  return v43();
}

uint64_t sub_2624277F0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v7;
}

uint64_t sub_262427854(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_262427874, 0, 0);
}

uint64_t sub_262427874()
{
  v1 = v0[3] + 56;
  v2 = sub_26245E934(v0[2]);
  v3 = v0[1];

  return v3(v2);
}

unint64_t sub_2624278F4()
{
  result = qword_2813BDB20;
  if (!qword_2813BDB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BDB20);
  }

  return result;
}

uint64_t sub_262427948@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_26242795C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_262427968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_262462C28();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2624279C4(uint64_t a1)
{
  v2 = sub_2623F3688();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262427A00(uint64_t a1)
{
  v2 = sub_2623F3688();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262427A60(uint64_t a1)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_26243CD20(0, v1, 0);
    v2 = v16;
    v4 = a1 + 32;
    do
    {
      sub_2623F3CA4(v4, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      v5 = sub_262462DA8();
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_1(v15);
      v16 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_26243CD20((v8 > 1), v9 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  v11 = MEMORY[0x266728520](v2, MEMORY[0x277D837D0]);
  v13 = v12;

  MEMORY[0x266728460](v11, v13);

  return v17;
}

uint64_t sub_262427BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v3;
  v18 = *(a2 + 64);
  v4 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v4;
  v5 = *(a1 + 16);

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v6, &v13);
  v11[0] = v13;
  v11[1] = v14;
  v12 = v15;
  if (!*(&v14 + 1))
  {
    sub_262427D98(v11);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
  if (!swift_dynamicCast())
  {
LABEL_7:
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_8;
  }

  v8 = v16;
LABEL_8:
  v16 = v8;
  sub_26242706C(v17, v11);
  sub_26243A4DC(v11, v17);
  sub_2623F3C50(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
  sub_262427D34();
  sub_2624629E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_262461260(&v13, 0x45736973656D656ELL, 0xED000073726F7272, isUniquelyReferenced_nonNull_native);
  return a1;
}

unint64_t sub_262427D34()
{
  result = qword_2813BD3C0;
  if (!qword_2813BD3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF0D390, "Η");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD3C0);
  }

  return result;
}

uint64_t sub_262427D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_262427E14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_262427E5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_262427EB4()
{
  result = qword_27FF0D398;
  if (!qword_27FF0D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D398);
  }

  return result;
}

unint64_t sub_262427F0C()
{
  result = qword_27FF0D3A0;
  if (!qword_27FF0D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3A0);
  }

  return result;
}

uint64_t sub_262427F88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0CEB0, &qword_262467DA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262428EB4();
  result = sub_262462D88();
  if (!v2)
  {
    v12 = sub_262462BC8();
    if (*(v12 + 16))
    {
      v13 = *(v12 + 32);

      v14 = *(sub_262462BC8() + 16);

      if (v14 == 1 || (sub_26240A818() & 1) != 0)
      {
        switch(v13)
        {
          case 1:
          case 2:
            sub_2623F3CA4(a1, v33);
            v23 = sub_26242F3F0(v33);
            v25 = v24;
            v27 = v26;
            v29 = v28;
            a2[3] = &type metadata for NumberField;
            a2[4] = sub_26242F5C8();
            v30 = swift_allocObject();
            *a2 = v30;
            *(v30 + 16) = v23;
            *(v30 + 24) = v25;
            *(v30 + 32) = v27;
            *(v30 + 40) = v29 & 1;
            return (*(v6 + 8))(v9, v5);
          case 3:
          case 4:
          case 5:
          case 6:
            sub_2623F3CA4(a1, v33);
            a2[3] = type metadata accessor for NumberRule();
            a2[4] = sub_26243056C(&qword_27FF0D480, type metadata accessor for NumberRule);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
            sub_26242898C(v33, boxed_opaque_existential_1);
            return (*(v6 + 8))(v9, v5);
          case 7:
            LOBYTE(v33[0]) = 7;
            a2[3] = &type metadata for Ratio;
            a2[4] = sub_26242F0D0();
            *a2 = swift_allocObject();
            sub_26242F124();
            sub_262462BB8();
            return (*(v6 + 8))(v9, v5);
          case 8:
            LOBYTE(v33[0]) = 8;
            a2[3] = &type metadata for Max;
            a2[4] = sub_26242F028();
            sub_26242F07C();
            goto LABEL_26;
          case 9:
            LOBYTE(v33[0]) = 9;
            a2[3] = &type metadata for GetIntegerBits;
            a2[4] = sub_26242EF80();
            *a2 = swift_allocObject();
            sub_26242EFD4();
            goto LABEL_26;
          case 10:
            LOBYTE(v33[0]) = 10;
            a2[3] = &type metadata for NumberListGetIndex;
            a2[4] = sub_26242EED8();
            *a2 = swift_allocObject();
            sub_26242EF2C();
            goto LABEL_26;
          case 11:
            LOBYTE(v33[0]) = 11;
            a2[3] = &type metadata for NumberListLength;
            a2[4] = sub_26242EE30();
            *a2 = swift_allocObject();
            sub_26242EE84();
            goto LABEL_26;
          case 12:
            LOBYTE(v33[0]) = 12;
            a2[3] = &type metadata for StringListLength;
            a2[4] = sub_26242ED88();
            *a2 = swift_allocObject();
            sub_26242EDDC();
            goto LABEL_26;
          case 13:
            LOBYTE(v33[0]) = 13;
            a2[3] = &type metadata for StringLength;
            a2[4] = sub_26242ECE0();
            *a2 = swift_allocObject();
            sub_26242ED34();
            goto LABEL_26;
          case 14:
            LOBYTE(v33[0]) = 14;
            a2[3] = &type metadata for NumberReplaceFailure;
            a2[4] = sub_26242EC38();
            *a2 = swift_allocObject();
            sub_26242EC8C();
            goto LABEL_26;
          case 15:
            LOBYTE(v33[0]) = 15;
            a2[3] = &type metadata for NumberMatchCase;
            a2[4] = sub_26242EB90();
            *a2 = swift_allocObject();
            sub_26242EBE4();
            goto LABEL_26;
          case 16:
            LOBYTE(v33[0]) = 16;
            a2[3] = &type metadata for ToNumber;
            a2[4] = sub_26242EAE8();
            *a2 = swift_allocObject();
            sub_26242EB3C();
            goto LABEL_26;
          case 17:
            LOBYTE(v33[0]) = 17;
            a2[3] = &type metadata for NumberBooleanLabel;
            a2[4] = sub_26242EA40();
            *a2 = swift_allocObject();
            sub_26242EA94();
            goto LABEL_26;
          case 18:
            LOBYTE(v33[0]) = 18;
            a2[3] = &type metadata for NumberStringLabel;
            a2[4] = sub_26242E998();
            *a2 = swift_allocObject();
            sub_26242E9EC();
            goto LABEL_26;
          case 19:
            LOBYTE(v33[0]) = 19;
            a2[3] = &type metadata for NumberNumberLabel;
            a2[4] = sub_26242E8F0();
            *a2 = swift_allocObject();
            sub_26242E944();
LABEL_26:
            sub_262462BB8();
            break;
          default:
            sub_2623F3CA4(a1, v33);
            v31 = sub_26242F1C4(v33);
            a2[3] = &type metadata for NumberValue;
            a2[4] = sub_26242F61C();
            *a2 = v31;
            break;
        }

        return (*(v6 + 8))(v9, v5);
      }
    }

    else
    {
    }

    v16 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v17 = sub_262462D78();
    v18 = sub_262427A60(v17);
    v20 = v19;

    sub_2623F1BBC();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 0xD000000000000010;
    *(v21 + 24) = 0x800000026246A080;
    v22 = v33[1];
    *(v21 + 32) = v33[0];
    *(v21 + 48) = v22;
    *(v21 + 64) = 3;
    swift_willThrow();
    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

unint64_t sub_2624286CC(char a1)
{
  result = 0x65756C6176;
  switch(a1)
  {
    case 1:
      result = 0x6D614E646C656966;
      break;
    case 2:
      result = 0x746C7561666564;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C615673656C7572;
      break;
    case 6:
      result = 0x6369676F6CLL;
      break;
    case 7:
      result = 0x6F69746152;
      break;
    case 8:
      result = 7889229;
      break;
    case 9:
      result = 0x6765746E49746547;
      break;
    case 10:
    case 17:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x654C676E69727453;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x614D7265626D754ELL;
      break;
    case 16:
      result = 0x7265626D754E6F54;
      break;
    case 18:
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2624288E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262430CB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_262428914(uint64_t a1)
{
  v2 = sub_262428EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262428950(uint64_t a1)
{
  v2 = sub_262428EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242898C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C4E8, &qword_262463350);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v36 - v5;
  v6 = type metadata accessor for RulesValidity();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E8, &qword_262464BD0);
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - v12;
  v14 = type metadata accessor for NumberRule();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26242F718();
  v19 = v42;
  sub_262462D88();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v9;
  v20 = v39;
  v21 = v40;
  LOBYTE(v44[0]) = 0;
  v22 = v13;
  v24 = v17;
  *v17 = sub_262462B88();
  *(v17 + 1) = v25;
  v36[1] = v25;
  *(v17 + 2) = sub_2623F7270(v22, 1u);
  v17[24] = v26 & 1;
  LOBYTE(v44[0]) = 2;
  sub_26243056C(&qword_2813BDBE8, type metadata accessor for RulesValidity);
  v27 = v21;
  v28 = v20;
  sub_262462B78();
  v36[0] = v22;
  v29 = v38 + 48;
  v30 = *(v38 + 48);
  if (v30(v27, 1, v28) == 1)
  {
    v38 = v29;
    v31 = v42;
    *v42 = 0;
    swift_storeEnumTagMultiPayload();
    v32 = v30(v27, 1, v28) == 1;
    v33 = v27;
    v34 = v37;
    if (!v32)
    {
      sub_2623F39E0(v33, &qword_27FF0C4E8, &qword_262463350);
    }
  }

  else
  {
    v31 = v42;
    sub_2623F2530(v27, v42);
    v34 = v37;
  }

  sub_2623F2530(v31, v24 + *(v14 + 24));
  v45 = 3;
  sub_262462B58();
  v35 = v41;
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v44, v43);
  __swift_destroy_boxed_opaque_existential_1(v43);
  (*(v35 + 8))(v36[0], v10);
  sub_2623EB668(v44, v24 + *(v14 + 28));
  sub_26242F76C(v24, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26242F7D0(v24, type metadata accessor for NumberRule);
}

unint64_t sub_262428EB4()
{
  result = qword_27FF0D3A8;
  if (!qword_27FF0D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3A8);
  }

  return result;
}

uint64_t sub_262428F08(uint64_t a1)
{
  v2 = sub_26242F670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262428F44(uint64_t a1)
{
  v2 = sub_26242F670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262428F80(uint64_t a1, uint64_t a2)
{
  *a1 = *v2;
  *(a1 + 8) = 0;

  return a2;
}

void sub_262428FB8(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = sub_26242F1C4(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_262428FE4(uint64_t a1)
{
  v2 = sub_26242F6C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262429020(uint64_t a1)
{
  v2 = sub_26242F6C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242905C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *&a4;
  if (a5)
  {
    v62 = 0;
    memset(v61, 0, sizeof(v61));

    if (!*(a1 + 16))
    {
      goto LABEL_9;
    }
  }

  else
  {
    *&v55 = a4;

    sub_2624629E8();
    if (!*(a1 + 16))
    {
LABEL_9:
      sub_2623F3970(v61, &v58);
      if (*(&v59 + 1))
      {
        v63 = v58;
        v64 = v59;
        v14 = v60;
        goto LABEL_15;
      }

      sub_2623F39E0(&v58, &qword_27FF0C5F0, &qword_262463A90);
      sub_2623F1BBC();
      swift_allocError();
      *v15 = a2;
      *(v15 + 8) = a3;
      v17 = v56;
      v16 = v57;
      *(v15 + 16) = v55;
      *(v15 + 32) = v17;
      *(v15 + 48) = v16;
      *(v15 + 64) = 6;
      swift_willThrow();
LABEL_29:
      sub_2623F39E0(v61, &qword_27FF0C5F0, &qword_262463A90);
      return *&v6;
    }
  }

  v10 = sub_2624414FC(a2, a3);
  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_2623F3970(*(a1 + 56) + 40 * v10, &v55);
  v58 = v55;
  v59 = v56;
  v60 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5F0, &qword_262463A90);
  v12 = sub_262462918();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];

  swift_unknownObjectRelease();
  if (v12 != v13)
  {
    sub_2623F3970(&v58, &v55);
    if (*(&v56 + 1))
    {
      sub_2623F39E0(&v58, &qword_27FF0C5F0, &qword_262463A90);
      v63 = v55;
      v64 = v56;
      v14 = v57;
      goto LABEL_15;
    }

    sub_2623F39E0(&v55, &qword_27FF0C5F0, &qword_262463A90);
  }

  sub_2623F3970(v61, &v52);
  if (!*(&v53 + 1))
  {
    sub_2623F39E0(&v52, &qword_27FF0C5F0, &qword_262463A90);
    sub_2623F1BBC();
    swift_allocError();
    *v34 = a2;
    *(v34 + 8) = a3;
    v36 = v56;
    v35 = v57;
    *(v34 + 16) = v55;
    *(v34 + 32) = v36;
    *(v34 + 48) = v35;
    *(v34 + 64) = 5;
    swift_willThrow();
    sub_2623F39E0(&v58, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_29;
  }

  sub_2623F39E0(&v58, &qword_27FF0C5F0, &qword_262463A90);
  v63 = v52;
  v64 = v53;
  v14 = v54;
LABEL_15:
  v65 = v14;
  sub_2623F39E0(v61, &qword_27FF0C5F0, &qword_262463A90);
  sub_2623F3A40(&v63, &v55);
  v18 = MEMORY[0x277D839F8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2623F3A40(&v63, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D680, &qword_26246AED0);
    if (swift_dynamicCast())
    {

      sub_2623EB668(&v58, &v55);
      v19 = *(&v56 + 1);
      v20 = __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v21 = *(v19 - 8);
      v22 = *(v21 + 64);
      MEMORY[0x28223BE20](v20);
      v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24);
      if (sub_262462978() < 65)
      {
        v31 = sub_262462988();
        v32 = sub_262462968();
        (*(v21 + 8))(v24, v19);
        sub_2623F3A9C(&v63);
        if (v31)
        {
          v25 = v32;
        }

        else
        {
          v25 = v32;
        }
      }

      else
      {
        sub_2623F3B3C();
        sub_2623F3BFC();
        sub_262462678();
        (*(v21 + 8))(v24, v19);
        sub_2623F3A9C(&v63);
        v25 = *v61;
      }

      v6 = v25;
    }

    else
    {
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      sub_2623F39E0(&v58, &qword_27FF0D688, &qword_26246AED8);
      sub_2623F3A40(&v63, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D690, &qword_26246AEE0);
      if (!swift_dynamicCast())
      {
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        sub_2623F39E0(&v58, &qword_27FF0D698, &qword_26246AEE8);
        sub_2623F3A40(&v63, &v55);
        if ((swift_dynamicCast() & 1) != 0 && (*&v55 = 0, v33 = sub_2623F95B0(*&v61[0], *(&v61[0] + 1)), , v33))
        {

          v6 = *&v55;
        }

        else
        {
          v37 = sub_2624629D8();
          objc_opt_self();
          v38 = swift_dynamicCastObjCClass();
          if (v38)
          {
            v39 = v38;
            if ([v38 type] == 2)
            {

              [v39 doubleValue];
              v41 = v40;

              sub_2623F3A9C(&v63);
              v6 = v41;
              goto LABEL_17;
            }
          }

          v42 = sub_2624629D8();
          objc_opt_self();
          v43 = swift_dynamicCastObjCClass();
          if (v43)
          {
            v44 = v43;
            if ([v43 type] == 1)
            {

              v45 = [v44 int64Value];

              sub_2623F3A9C(&v63);
              v6 = v45;
              goto LABEL_17;
            }
          }

          if (a5)
          {
            *&v55 = v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
            v47 = sub_262462728();
            v49 = v48;
            sub_2623F1BBC();
            swift_allocError();
            *v50 = a2;
            *(v50 + 8) = a3;
            *(v50 + 16) = v47;
            *(v50 + 24) = v49;
            v51 = v56;
            *(v50 + 32) = v55;
            *(v50 + 48) = v51;
            *(v50 + 64) = 7;
            swift_willThrow();
            sub_2623F3A9C(&v63);
            return *&v6;
          }
        }

        sub_2623F3A9C(&v63);
        goto LABEL_17;
      }

      sub_2623EB668(&v58, &v55);
      v26 = *(&v56 + 1);
      v27 = __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
      v28 = *(*(v26 - 8) + 64);
      MEMORY[0x28223BE20](v27);
      (*(v30 + 16))(&v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_2623F3B3C();
      sub_262462668();
      sub_2623F3A9C(&v63);
      v6 = *v61;
    }

    __swift_destroy_boxed_opaque_existential_1(&v55);
    return *&v6;
  }

  sub_2623F3A9C(&v63);
  v6 = *v61;
LABEL_17:

  return *&v6;
}

uint64_t sub_262429934(uint64_t a1, uint64_t a2)
{
  v6 = sub_26242905C(a2, *v2, *(v2 + 8), *(v2 + 16), *(v2 + 24));
  result = v7;
  if (!v3)
  {
    *a1 = v6;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_262429984@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26242F3F0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_2624299BC(uint64_t a1)
{
  v2 = sub_26242F718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2624299F8(uint64_t a1)
{
  v2 = sub_26242F718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262429A34(uint64_t a1)
{
  v4 = type metadata accessor for NumberRule();
  sub_2623F3CA4(v1 + *(v4 + 28), &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (swift_dynamicCast())
  {
    sub_2623EB668(&v6, v8);
    sub_26240C544(&v7, a1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), v1 + *(v4 + 24), v8);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
    if (!v2)
    {
      return v7;
    }
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_262429B3C(uint64_t a1, uint64_t a2)
{
  v5 = sub_262429A34(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

unint64_t sub_262429B94()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x6F746172656D756ELL;
  }

  *v0;
  return result;
}

uint64_t sub_262429BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F746172656D756ELL && a2 == 0xEE007475706E4972;
  if (v6 || (sub_262462C58() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624721C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_262462C58();

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

uint64_t sub_262429CCC(uint64_t a1)
{
  v2 = sub_262431CA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_262429D08(uint64_t a1)
{
  v2 = sub_262431CA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_262429D44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D670, &unk_26246AEC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262431CA0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262431CF4(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262431D2C(v15);
}

uint64_t sub_262429F90(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  *&result = COERCE_DOUBLE((*(*(v6 + 8) + 24))(&v13, a1, v5));
  if (!v2)
  {
    v8 = v13;
    v9 = v14;
    v10 = v3[8];
    v11 = v3[9];
    v12 = result;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v10);
    (*(*(v11 + 8) + 24))(&v13, v12, v10);

    if ((v9 | v14))
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v8 / v13;
    }
  }

  return result;
}

uint64_t sub_26242A0EC(uint64_t a1)
{
  v2 = sub_262431C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242A128(uint64_t a1)
{
  v2 = sub_262431C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242A164(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 + 16);

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = a2 + 32;
    v9 = a1;
    do
    {
      sub_2623F3CA4(v8, v22);
      v11 = v23;
      v10 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v12 = (*(*(v10 + 8) + 24))(&v20, v9, v11);
      if (v3)
      {

        __swift_destroy_boxed_opaque_existential_1(v22);
        return v10;
      }

      v13 = v12;
      if (v21)
      {
      }

      else
      {
        v14 = v20;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D6A0, &unk_26246AEF0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_262463D10;
        *(inited + 32) = v14;
        v16 = *(v7 + 16);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0 || (v18 = *(v7 + 24) >> 1, v18 <= v16))
        {
          result = sub_26243C488(result, v16 + 1, 1, v7);
          v7 = result;
          v18 = *(result + 24) >> 1;
        }

        v19 = *(v7 + 16);
        if (v18 <= v19)
        {
          __break(1u);
          return result;
        }

        *(v7 + 8 * v19 + 32) = *(inited + 32);

        ++*(v7 + 16);
        v9 = v13;
      }

      __swift_destroy_boxed_opaque_existential_1(v22);
      v8 += 40;
      --v6;
    }

    while (v6);
  }

  v10 = sub_26241807C(v7);

  return v10;
}

uint64_t sub_26242A358(uint64_t a1, uint64_t a2)
{
  v6 = sub_26242A164(a2, *v2);
  result = v7;
  if (!v3)
  {
    *a1 = v6;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void *sub_26242A3A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_26243196C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_26242A3CC()
{
  v1 = 0x7472617473;
  if (*v0 != 1)
  {
    v1 = 6581861;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_26242A418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_262432B94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26242A440(uint64_t a1)
{
  v2 = sub_2624318B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242A47C(uint64_t a1)
{
  v2 = sub_2624318B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242A4B8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C800, &qword_262464BE8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v38[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624318B0();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38[7] = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v39, v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  sub_2623EB668(v40, v41);
  v12 = COERCE_DOUBLE(sub_2623F7498(v9, 1));
  if ((v13 & 1) != 0 || ((v14 = trunc(v12), v12 > -9.22337204e18) ? (v15 = v12 < 9.22337204e18) : (v15 = 0), v15 ? (v16 = v14 == v12) : (v16 = 0), !v16))
  {
    v17 = sub_262462B48();
    v18 = sub_262427A60(v17);
    v20 = v19;

    *&v40[0] = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v21 = sub_262462728();
    v23 = v22;
    sub_2623F1BBC();
    swift_allocError();
    *v24 = v18;
    *(v24 + 8) = v20;
    v25 = 0x7472617473;
    v26 = 0xE500000000000000;
LABEL_13:
    *(v24 + 16) = v25;
    *(v24 + 24) = v26;
    *(v24 + 32) = v21;
    *(v24 + 40) = v23;
    *(v24 + 48) = v40[0];
    *(v24 + 64) = 4;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v41;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v12;
  v27 = COERCE_DOUBLE(sub_2623F7498(v9, 2));
  if ((v29 & 1) != 0 || ((v30 = v27, v28.n128_f64[0] = trunc(v27), v27 > -9.22337204e18) ? (v31 = v27 < 9.22337204e18) : (v31 = 0), v31 ? (v32 = v28.n128_f64[0] == v27) : (v32 = 0), !v32))
  {
    v33 = sub_262462B48();
    v34 = sub_262427A60(v33);
    v36 = v35;

    *&v40[0] = MEMORY[0x277D83B88];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C6D0, &qword_26246AEB0);
    v21 = sub_262462728();
    v23 = v37;
    sub_2623F1BBC();
    swift_allocError();
    *v24 = v34;
    *(v24 + 8) = v36;
    v25 = 6581861;
    v26 = 0xE300000000000000;
    goto LABEL_13;
  }

  (*(v6 + 8))(v9, v5, v28);
  v43 = v30;
  sub_262431904(v41, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26243193C(v41);
}

void sub_26242A884(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(*(v6 + 8) + 24))(v26, a1, v5);
  if (!v2)
  {
    v8 = v3[5];
    v7 = v3[6];
    if (v7 < v8)
    {

      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000001CLL, 0x8000000262472180);
      v9 = sub_262462C28();
      MEMORY[0x266728460](v9);

      MEMORY[0x266728460](0xD000000000000014, 0x80000002624721A0);
LABEL_4:
      v10 = sub_262462C28();
      MEMORY[0x266728460](v10);

      v11 = 11817;
      v12 = 0xE200000000000000;
LABEL_13:
      MEMORY[0x266728460](v11, v12);
      v20 = v26[0];
      sub_2623F1BBC();
      swift_allocError();
      *v21 = v20;
      v23 = v26[1];
      v22 = v26[2];
      *(v21 + 16) = v26[0];
      *(v21 + 32) = v23;
      *(v21 + 48) = v22;
      *(v21 + 64) = 13;
      swift_willThrow();
      return;
    }

    if (v8 < 0 || v7 >= 65)
    {

      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0xD00000000000001CLL, 0x8000000262472120);
      v17 = sub_262462C28();
      MEMORY[0x266728460](v17);

      MEMORY[0x266728460](0xD000000000000019, 0x8000000262472140);
      v18 = sub_262462C28();
      MEMORY[0x266728460](v18);

      v19 = ") is less than 0 or end (";
      v11 = 0xD000000000000015;
    }

    else
    {
      if (BYTE8(v26[0]))
      {
        return;
      }

      v13 = sub_262462878();
      v14 = sub_262462CD8();

      if ((v14 & 0x100000000) == 0)
      {
        if (v7 >= 33)
        {

          *&v26[0] = 0;
          *(&v26[0] + 1) = 0xE000000000000000;
          sub_262462A28();
          MEMORY[0x266728460](0xD00000000000001ALL, 0x80000002624720B0);
          v15 = sub_262462C28();
          MEMORY[0x266728460](v15);

          MEMORY[0x266728460](0xD000000000000026, 0x80000002624720D0);
          v16 = sub_262462C28();
          MEMORY[0x266728460](v16);

          MEMORY[0x266728460](0xD000000000000011, 0x8000000262472100);
          goto LABEL_4;
        }

        MEMORY[0x2667285C0](2);
        sub_262462598();
        v24 = sub_262462908();
        v25 = sub_262462CD8();

        if ((v25 & 0x100000000) == 0)
        {
          if (!__OFSUB__(v25, 1))
          {
            return;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

      *&v26[0] = 0;
      *(&v26[0] + 1) = 0xE000000000000000;
      sub_262462A28();
      MEMORY[0x266728460](0xD000000000000017, 0x8000000262472070);
      sub_262462898();
      v19 = "Invalid Input: Number (";
      v11 = 0xD00000000000001BLL;
    }

    v12 = v19 | 0x8000000000000000;
    goto LABEL_13;
  }
}

uint64_t sub_26242AD50(uint64_t a1, uint64_t a2)
{
  sub_26242A884(a2);
  v6 = v5;
  result = v7;
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_26242ADA8(uint64_t a1)
{
  v2 = sub_2624317F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242ADE4(uint64_t a1)
{
  v2 = sub_2624317F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242AE20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D648, &unk_26246AEA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624317F4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  sub_262462B58();
  type metadata accessor for NumberListExpressionDecoder();
  sub_2623ED108(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_2623EB668(v14, v15);
  v17 = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v13);
  (*(v6 + 8))(v9, v5);
  sub_2623EB668(v14, &v16);
  sub_262431848(v15, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_262431880(v15);
}

uint64_t sub_26242B078(uint64_t a1)
{
  v3 = v1;
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v7 = (*(*(v6 + 8) + 24))(v21, a1, v5);
  if (!v2)
  {
    v8 = *&v21[0];
    v5 = v3[8];
    v9 = v3[9];
    v10 = v7;
    __swift_project_boxed_opaque_existential_1(v3 + 5, v5);
    (*(*(v9 + 8) + 24))(v21, v10, v5);

    if (v8)
    {
      if (BYTE8(v21[0]))
      {
        v5 = 0;
      }

      else
      {
        v12 = *&v21[0];
        v13 = trunc(*v21);
        v15 = *v21 > -9.22337204e18 && *v21 < 9.22337204e18 && *v21 == v13;
        if (!v15 || (v16 = *v21, *v21 < 0) || *(v8 + 16) <= v16)
        {

          v17 = *(v8 + 16);

          sub_2623F1BBC();
          swift_allocError();
          *v18 = v17;
          *(v18 + 8) = v12;
          v20 = v21[1];
          v19 = v21[2];
          *(v18 + 16) = v21[0];
          *(v18 + 32) = v20;
          *(v18 + 48) = v19;
          *(v18 + 64) = 12;
          swift_willThrow();
          return v5;
        }

        v5 = *(v8 + 8 * v16 + 32);
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_26242B28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

uint64_t sub_26242B304(uint64_t a1)
{
  v2 = sub_2624317A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242B340(uint64_t a1)
{
  v2 = sub_2624317A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242B37C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D638, &qword_26246AE98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624317A0();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for NumberListExpressionDecoder();
    sub_2623ED108(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26242B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x75706E497473696CLL && a2 == 0xE900000000000074)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26242B5E0(uint64_t a1)
{
  v2 = sub_26243174C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242B61C(uint64_t a1)
{
  v2 = sub_26243174C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242B658@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D628, &qword_26246AE90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243174C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringListExpressionDecoder();
    sub_26241FE98(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26242B814(uint64_t a1, uint64_t a2)
{
  v6 = v2[3];
  v7 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v6);
  result = (*(*(v7 + 8) + 24))(&v13, a2, v6);
  if (!v3)
  {
    v9 = v13;
    if (v13)
    {
      v10 = *(v13 + 16);
      v11 = result;

      result = v11;
      v12 = v10;
    }

    else
    {
      v12 = 0.0;
    }

    *a1 = v12;
    *(a1 + 8) = v9 == 0;
  }

  return result;
}

uint64_t sub_26242B900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475706E69 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26242B984(uint64_t a1)
{
  v2 = sub_2624316F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242B9C0(uint64_t a1)
{
  v2 = sub_2624316F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242B9FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D618, &qword_26246AE88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2624316F8();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26242BBB8(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  *&result = COERCE_DOUBLE((*(*(v5 + 8) + 24))(v8, a1, v4));
  if (!v2)
  {
    if (v8[1])
    {

      v7 = sub_2624627E8();
      swift_bridgeObjectRelease_n();
      *&result = v7;
    }

    else
    {
      *&result = 0.0;
    }
  }

  return result;
}

uint64_t sub_26242BD08(uint64_t a1)
{
  v2 = sub_26243163C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242BD44(uint64_t a1)
{
  v2 = sub_26243163C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242BD80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F8, &qword_262464BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243163C();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v16, v17);
  __swift_destroy_boxed_opaque_existential_1(v16);
  sub_2623EB668(v17, v18);
  v11 = sub_2623F768C(v9, 1);
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  v19 = v11;
  v20 = v13 & 1;
  sub_262431690(v18, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624316C8(v18);
}

uint64_t sub_26242BF98(uint64_t a1)
{
  sub_2623F3CA4(v1, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if (!swift_dynamicCast())
  {

    return 0;
  }

  sub_2623EB668(v12, v22);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = v23;
  v7 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v7 + 24))(&v20, a1, v6, v7);
  if (!v2)
  {
    goto LABEL_6;
  }

  v19 = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C638, &qword_26246BDD0);
  if (swift_dynamicCast())
  {
    MEMORY[0x266728D50](v2);
    v12[2] = v16;
    v12[3] = v17;
    v13 = v18;
    v12[0] = v14;
    v12[1] = v15;
    v20 = v4;
    v21 = v5;
    v10[2] = v16;
    v10[3] = v17;
    v11 = v18;
    v10[0] = v14;
    v10[1] = v15;
    sub_262427BA0(a1, v10);
    sub_2623F3C50(v12);
    MEMORY[0x266728D50](v19);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v22);
    return v20;
  }

  MEMORY[0x266728D50](v19);
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_26242C168(uint64_t a1, uint64_t a2)
{
  v5 = sub_26242BF98(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_26242C1C0(uint64_t a1)
{
  v2 = sub_262431580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242C1FC(uint64_t a1)
{
  v2 = sub_262431580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242C238@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D600, &unk_26246AE78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = a1[3];
  v13 = a1[4];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_262431580();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v48 = v7;
  LOBYTE(v51) = 0;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, v57);
  LOBYTE(v51) = 2;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v55, v56);
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_2623EB668(v56, &v59);
  LOBYTE(v56[0]) = 1;
  sub_2623F3688();
  sub_262462B38();
  v43 = v4;
  v16 = sub_262462BC8();
  v42 = *(v16 + 16);
  if (!v42)
  {
    v19 = MEMORY[0x277D84F98];
LABEL_20:

    (*(v50 + 8))(v48, v43);
    (*(v9 + 8))(v12, v8);
    v58 = v19;
    sub_2624315D4(v57, v49);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return sub_26243160C(v57);
  }

  v17 = 0;
  v18 = (v16 + 56);
  v19 = MEMORY[0x277D84F98];
  v41 = v16;
  while (1)
  {
    v47 = v19;
    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v21 = *(v18 - 3);
    v22 = *(v18 - 2);
    v23 = *v18;
    v46 = v18;
    v24 = *(v18 - 1);
    v25 = v21;
    v51 = v21;
    v52 = v22;
    v53 = v24;
    v54 = v23;
    swift_bridgeObjectRetain_n();
    sub_262462B58();

    sub_262427F88(v55, v56);
    v44 = v17;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_2623EB668(v56, v55);
    v26 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v26;
    v27 = v22;
    v29 = sub_2624414FC(v25, v22);
    v30 = v26[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_22;
    }

    v33 = v28;
    if (v26[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v28)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_262461AD4();
        if (v33)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_262460574(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_2624414FC(v25, v27);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_24;
      }

      v29 = v34;
      if (v33)
      {
LABEL_5:

        v19 = v51;
        v20 = (v51[7] + 40 * v29);
        __swift_destroy_boxed_opaque_existential_1(v20);
        sub_2623EB668(v55, v20);
        goto LABEL_6;
      }
    }

    v36 = v25;
    v19 = v51;
    v51[(v29 >> 6) + 8] |= 1 << v29;
    v37 = (v19[6] + 16 * v29);
    *v37 = v36;
    v37[1] = v27;
    sub_2623EB668(v55, v19[7] + 40 * v29);
    v38 = v19[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_23;
    }

    v19[2] = v40;
LABEL_6:
    v16 = v41;
    v17 = v44 + 1;
    v18 = v46 + 32;
    if (v42 == v44 + 1)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_26242C95C(uint64_t a1)
{
  v4 = sub_26240DE0C(v1[5]);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  sub_2623F3CA4((v1 + 6), &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D170, &qword_262468F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D178, &unk_26246E150);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_2623EB668(v21, v26);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  v8 = (*(*(v7 + 8) + 24))(&v22, a1, v6);
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v9 = v8;
    v10 = v23;
    if (v23 && *(v5 + 16) && (v11 = v22, , v12 = sub_2624414FC(v11, v10), v14 = v13, , (v14 & 1) != 0))
    {
      sub_2623F3CA4(*(v5 + 56) + 40 * v12, v21);
      sub_2623EB668(v21, &v22);
      v15 = v24;
      v16 = v25;
      __swift_project_boxed_opaque_existential_1(&v22, v24);
      (*(v16 + 24))(&v20, v9, v15, v16);

      __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      v17 = v27;
      v18 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      (*(v18 + 24))(&v20, v9, v17, v18);
    }

    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }
}

uint64_t sub_26242CBCC(uint64_t a1, uint64_t a2)
{
  v5 = sub_26242C95C(a2);
  result = v6;
  if (!v2)
  {
    *a1 = v5;
    *(a1 + 8) = v4 & 1;
  }

  return result;
}

uint64_t sub_26242CC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E49676E69727473 && a2 == 0xEB00000000747570)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_262462C58();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26242CCD0(uint64_t a1)
{
  v2 = sub_26243152C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242CD0C(uint64_t a1)
{
  v2 = sub_26243152C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242CD48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D5F0, &qword_26246AE70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26243152C();
  sub_262462D88();
  if (!v2)
  {
    sub_262462B58();
    type metadata accessor for StringExpressionDecoder();
    sub_2623FB53C(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v14);
    (*(v6 + 8))(v9, v5);
    sub_2623EB668(v15, v16);
    v11 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v11;
    *(a2 + 32) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *sub_26242CF04(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(*(v5 + 8) + 24))(&v11, a1, v4);
  if (!v2)
  {
    v7 = v12;
    if (v12)
    {
      v8 = v11;
      v11 = 0;

      v9 = sub_2623F95B0(v8, v7);

      if (v9)
      {
        v6 = v11;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_26242D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

uint64_t sub_26242D07C(uint64_t a1)
{
  v2 = sub_262431470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242D0B8(uint64_t a1)
{
  v2 = sub_262431470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242D0F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7F0, &qword_262464BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v31[-1] - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_262431470();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34[55] = 2;
  sub_262462B58();
  type metadata accessor for BooleanExpressionDecoder();
  sub_262441880(v31, v32);
  __swift_destroy_boxed_opaque_existential_1(v31);
  sub_2623EB668(v32, v34);
  v12 = sub_2623F7874(v9, 0);
  if (v13)
  {
    v14 = sub_262462B48();
    v30 = sub_262427A60(v14);
    v16 = v15;

    *&v32[0] = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
    v17 = sub_262462728();
    v19 = v18;
    sub_2623F1BBC();
    swift_allocError();
    *v20 = v30;
    *(v20 + 8) = v16;
    v21 = 0x6562614C65757274;
    v22 = 0xE90000000000006CLL;
LABEL_6:
    *(v20 + 16) = v21;
    *(v20 + 24) = v22;
    *(v20 + 32) = v17;
    *(v20 + 40) = v19;
    *(v20 + 48) = v32[0];
    *(v20 + 64) = 4;
    swift_willThrow();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    a1 = v34;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33[0] = v12;
  v23 = sub_2623F7874(v9, 1);
  if (v24)
  {
    v25 = sub_262462B48();
    v30 = sub_262427A60(v25);
    v27 = v26;

    *&v32[0] = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
    v17 = sub_262462728();
    v19 = v28;
    sub_2623F1BBC();
    swift_allocError();
    *v20 = v30;
    *(v20 + 8) = v27;
    v21 = 0x62614C65736C6166;
    v22 = 0xEA00000000006C65;
    goto LABEL_6;
  }

  v29 = v23;
  (*(v6 + 8))(v9, v5);
  v33[1] = v29;
  sub_2624314C4(v33, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2624314FC(v33);
}

uint64_t sub_26242D490(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v7);
  result = (*(*(v8 + 8) + 24))(&v10, a2, v7);
  if (!v3)
  {
    if (v10 == 2 || (v10 & 1) == 0)
    {
      ++v4;
    }

    *a1 = *v4;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_26242D550(uint64_t a1)
{
  v2 = sub_2624313B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242D58C(uint64_t a1)
{
  v2 = sub_2624313B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242D5C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D5D8, &unk_26246AE60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v48 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2624313B4();
  sub_262462D88();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v59);
  }

  v55 = v7;
  v54 = v4;
  v60 = 1;
  sub_262462B58();
  type metadata accessor for StringExpressionDecoder();
  sub_2623FB53C(v61, &v62);
  v15 = v9;
  __swift_destroy_boxed_opaque_existential_1(v61);
  sub_2623EB668(&v62, v66);
  LOBYTE(v62) = 0;
  sub_2623F3688();
  v16 = v55;
  sub_262462B38();
  v49 = v12;
  v50 = v15;
  v51 = v8;
  v18 = v54;
  v19 = sub_262462BC8();
  v52 = *(v19 + 16);
  if (!v52)
  {
    v22 = MEMORY[0x277D84F98];
    v41 = v57;
    v40 = v58;
LABEL_20:

    (*(v40 + 8))(v16, v18);
    (*(v50 + 8))(v49, v51);
    v65 = v22;
    sub_262431408(&v65, v41);
    __swift_destroy_boxed_opaque_existential_1(v59);
    return sub_262431440(&v65);
  }

  v48 = v66;
  v20 = 0;
  v21 = (v19 + 56);
  v22 = MEMORY[0x277D84F98];
  while (v20 < *(v19 + 16))
  {
    v23 = v19;
    v24 = *(v21 - 2);
    v25 = *v21;
    v26 = *(v21 - 1);
    v53 = *(v21 - 3);
    *&v62 = v53;
    *(&v62 + 1) = v24;
    v63 = v26;
    v64 = v25;
    v56 = v24;

    sub_262462BA8();
    v28 = v27;
    v29 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62 = v22;
    v31 = v53;
    v33 = sub_2624414FC(v53, v56);
    v34 = v29[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_22;
    }

    v37 = v32;
    if (v29[3] >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v41 = v57;
        v40 = v58;
        if (v32)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_262461AFC();
        v41 = v57;
        v40 = v58;
        if (v37)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      sub_26246059C(v36, isUniquelyReferenced_nonNull_native);
      v38 = sub_2624414FC(v31, v56);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_24;
      }

      v33 = v38;
      v41 = v57;
      v40 = v58;
      if (v37)
      {
LABEL_5:

        v22 = v62;
        *(*(v62 + 56) + 8 * v33) = v28;
        goto LABEL_6;
      }
    }

    v42 = v31;
    v22 = v62;
    *(v62 + 8 * (v33 >> 6) + 64) |= 1 << v33;
    v43 = (v22[6] + 16 * v33);
    v44 = v56;
    *v43 = v42;
    v43[1] = v44;
    *(v22[7] + 8 * v33) = v28;
    v45 = v22[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_23;
    }

    v22[2] = v47;
LABEL_6:
    v18 = v54;
    v16 = v55;
    v19 = v23;
    ++v20;
    v21 += 32;
    if (v52 == v20)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_262462C78();
  __break(1u);
  return result;
}

void *sub_26242DDAC(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  v6 = v3[5];
  v7 = __swift_project_boxed_opaque_existential_1(v3 + 1, v5);
  v8 = a1;
  v9 = v7;
  (*(*(v6 + 8) + 24))(&v17, v8, v5);
  if (!v2)
  {
    v10 = v18;
    if (v18)
    {
      v11 = *v3;
      if (*(*v3 + 16) && (v12 = v17, , v13 = sub_2624414FC(v12, v10), v15 = v14, , (v15 & 1) != 0))
      {
        v9 = *(*(v11 + 56) + 8 * v13);
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

uint64_t sub_26242DEFC(uint64_t a1)
{
  v2 = sub_2624312F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26242DF38(uint64_t a1)
{
  v2 = sub_2624312F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26242DF74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C5C0, &qword_262467DD0);
  v67 = *(v4 - 8);
  v5 = *(v67 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D5C8, &qword_26246AE58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = a1[3];
  v14 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2624312F8();
  sub_262462D88();
  if (v2)
  {
    v15 = v68;
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  v74[79] = 1;
  sub_262462B58();
  type metadata accessor for NumberExpressionDecoder();
  sub_262427F88(v69, &v70);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v60 = v74;
  sub_2623EB668(&v70, v74);
  LOBYTE(v70) = 0;
  sub_2623F3688();
  sub_262462B38();
  v57 = v12;
  v58 = v8;
  v59 = v9;
  v17 = v4;
  v64 = v7;
  v18 = sub_262462BC8();
  v62 = *(v18 + 16);
  if (!v62)
  {
    v21 = MEMORY[0x277D84F98];
    v23 = v66;
    v22 = v67;
LABEL_23:

    (*(v22 + 8))(v64, v17);
    (*(v59 + 8))(v57, v58);
    v73 = v21;
    sub_26243134C(&v73, v23);
    __swift_destroy_boxed_opaque_existential_1(v68);
    return sub_262431384(&v73);
  }

  v19 = 0;
  v20 = (v18 + 56);
  v21 = MEMORY[0x277D84F98];
  v65 = v17;
  v63 = v18;
  while (v19 < *(v18 + 16))
  {
    v24 = v19;
    v26 = *(v20 - 3);
    v25 = *(v20 - 2);
    v27 = *(v20 - 1);
    v28 = *v20;
    *&v70 = 0;
    swift_bridgeObjectRetain_n();
    v29 = v25;
    LOBYTE(v25) = sub_2623F95B0(v26, v25);

    v61 = v26;
    if ((v25 & 1) == 0)
    {

      v45 = v59;
      v46 = v65;
      v47 = v64;
      v48 = v58;
      v49 = sub_262462B48();
      v66 = sub_262427A60(v49);
      v51 = v50;

      *&v70 = MEMORY[0x277D839F8];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
      v52 = sub_262462728();
      v54 = v53;
      sub_2623F1BBC();
      swift_allocError();
      *v55 = v66;
      *(v55 + 8) = v51;
      *(v55 + 16) = v61;
      *(v55 + 24) = v29;
      *(v55 + 32) = v52;
      *(v55 + 40) = v54;
      *(v55 + 48) = v70;
      *(v55 + 64) = 4;
      swift_willThrow();
      (*(v67 + 8))(v47, v46);
      (*(v45 + 8))(v57, v48);
      __swift_destroy_boxed_opaque_existential_1(v68);
      v15 = v60;
      return __swift_destroy_boxed_opaque_existential_1(v15);
    }

    v30 = *&v70;
    *&v70 = v26;
    *(&v70 + 1) = v29;
    v71 = v27;
    v72 = v28;
    sub_262462BA8();
    v32 = v31;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v70 = v21;
    v35 = sub_262441574(v30);
    v36 = v21[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_26;
    }

    v39 = v34;
    if (v21[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v70;
        if (v34)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_262461C64();
        v21 = v70;
        if (v39)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
      sub_262460840(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_262441574(v30);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_28;
      }

      v35 = v40;
      v21 = v70;
      if (v39)
      {
LABEL_7:
        *(v21[7] + 8 * v35) = v32;
        goto LABEL_8;
      }
    }

    v21[(v35 >> 6) + 8] |= 1 << v35;
    *(v21[6] + 8 * v35) = v30;
    *(v21[7] + 8 * v35) = v32;
    v42 = v21[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      goto LABEL_27;
    }

    v21[2] = v44;
LABEL_8:
    v17 = v65;
    v23 = v66;
    v22 = v67;
    v19 = v24 + 1;
    v20 += 32;
    v18 = v63;
    if (v62 == v24 + 1)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_262462C78();
  __break(1u);
  return result;
}

uint64_t sub_26242E780(uint64_t a1)
{
  v3 = v1;
  v5 = v3[4];
  v6 = v3[5];
  __swift_project_boxed_opaque_existential_1(v3 + 1, v5);
  result = (*(*(v6 + 8) + 24))(&v11, a1, v5);
  if (!v2)
  {
    result = *&v11;
    if ((v12 & 1) == 0)
    {
      v8 = *v3;
      if (*(*v3 + 16))
      {
        v9 = sub_262441574(v11);
        if (v10)
        {
          return *(*(v8 + 56) + 8 * v9);
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26242E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = a5(a2);
  result = v9;
  if (!v5)
  {
    *a1 = v8;
    *(a1 + 8) = v7 & 1;
  }

  return result;
}

unint64_t sub_26242E8F0()
{
  result = qword_27FF0D3B0;
  if (!qword_27FF0D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3B0);
  }

  return result;
}

unint64_t sub_26242E944()
{
  result = qword_27FF0D3B8;
  if (!qword_27FF0D3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3B8);
  }

  return result;
}

unint64_t sub_26242E998()
{
  result = qword_27FF0D3C0;
  if (!qword_27FF0D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3C0);
  }

  return result;
}

unint64_t sub_26242E9EC()
{
  result = qword_27FF0D3C8;
  if (!qword_27FF0D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3C8);
  }

  return result;
}

unint64_t sub_26242EA40()
{
  result = qword_27FF0D3D0;
  if (!qword_27FF0D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3D0);
  }

  return result;
}

unint64_t sub_26242EA94()
{
  result = qword_27FF0D3D8;
  if (!qword_27FF0D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3D8);
  }

  return result;
}

unint64_t sub_26242EAE8()
{
  result = qword_27FF0D3E0;
  if (!qword_27FF0D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3E0);
  }

  return result;
}

unint64_t sub_26242EB3C()
{
  result = qword_27FF0D3E8;
  if (!qword_27FF0D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3E8);
  }

  return result;
}

unint64_t sub_26242EB90()
{
  result = qword_27FF0D3F0;
  if (!qword_27FF0D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3F0);
  }

  return result;
}

unint64_t sub_26242EBE4()
{
  result = qword_27FF0D3F8;
  if (!qword_27FF0D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D3F8);
  }

  return result;
}

unint64_t sub_26242EC38()
{
  result = qword_27FF0D400;
  if (!qword_27FF0D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D400);
  }

  return result;
}

unint64_t sub_26242EC8C()
{
  result = qword_27FF0D408;
  if (!qword_27FF0D408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D408);
  }

  return result;
}

unint64_t sub_26242ECE0()
{
  result = qword_27FF0D410;
  if (!qword_27FF0D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D410);
  }

  return result;
}

unint64_t sub_26242ED34()
{
  result = qword_27FF0D418;
  if (!qword_27FF0D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D418);
  }

  return result;
}

unint64_t sub_26242ED88()
{
  result = qword_27FF0D420;
  if (!qword_27FF0D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D420);
  }

  return result;
}

unint64_t sub_26242EDDC()
{
  result = qword_27FF0D428;
  if (!qword_27FF0D428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D428);
  }

  return result;
}

unint64_t sub_26242EE30()
{
  result = qword_27FF0D430;
  if (!qword_27FF0D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D430);
  }

  return result;
}

unint64_t sub_26242EE84()
{
  result = qword_27FF0D438;
  if (!qword_27FF0D438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D438);
  }

  return result;
}

unint64_t sub_26242EED8()
{
  result = qword_27FF0D440;
  if (!qword_27FF0D440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D440);
  }

  return result;
}

unint64_t sub_26242EF2C()
{
  result = qword_27FF0D448;
  if (!qword_27FF0D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D448);
  }

  return result;
}

unint64_t sub_26242EF80()
{
  result = qword_27FF0D450;
  if (!qword_27FF0D450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D450);
  }

  return result;
}

unint64_t sub_26242EFD4()
{
  result = qword_27FF0D458;
  if (!qword_27FF0D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D458);
  }

  return result;
}

unint64_t sub_26242F028()
{
  result = qword_27FF0D460;
  if (!qword_27FF0D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D460);
  }

  return result;
}

unint64_t sub_26242F07C()
{
  result = qword_27FF0D468;
  if (!qword_27FF0D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D468);
  }

  return result;
}

unint64_t sub_26242F0D0()
{
  result = qword_27FF0D470;
  if (!qword_27FF0D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D470);
  }

  return result;
}

unint64_t sub_26242F124()
{
  result = qword_27FF0D478;
  if (!qword_27FF0D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D478);
  }

  return result;
}

uint64_t type metadata accessor for NumberRule()
{
  result = qword_27FF0D4B0;
  if (!qword_27FF0D4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26242F1C4(uint64_t *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7D8, &unk_262464BC0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26242F670();
  sub_262462D88();
  if (!v1)
  {
    v10 = sub_2623F6EB0(v8);
    if ((v11 & 1) == 0)
    {
      v2 = *&v10;
      (*(v5 + 8))(v8, v4);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v2;
    }

    v12 = sub_262462B48();
    v13 = sub_262427A60(v12);
    v15 = v14;

    *&v21 = MEMORY[0x277D839F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7C0, &qword_262464BA8);
    v16 = sub_262462728();
    v18 = v17;
    sub_2623F1BBC();
    swift_allocError();
    *v19 = v13;
    *(v19 + 8) = v15;
    *(v19 + 16) = 0x65756C6176;
    *(v19 + 24) = 0xE500000000000000;
    *(v19 + 32) = v16;
    *(v19 + 40) = v18;
    *(v19 + 48) = v21;
    *(v19 + 64) = 4;
    swift_willThrow();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_26242F3F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0C7E0, &unk_26246A0E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_26242F6C4();
  sub_262462D88();
  if (!v1)
  {
    v11 = 0;
    v8 = sub_262462B88();
    sub_2623F7084(v7, 1);
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_26242F5C8()
{
  result = qword_27FF0D488;
  if (!qword_27FF0D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D488);
  }

  return result;
}

unint64_t sub_26242F61C()
{
  result = qword_27FF0D490;
  if (!qword_27FF0D490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D490);
  }

  return result;
}

unint64_t sub_26242F670()
{
  result = qword_27FF0D498;
  if (!qword_27FF0D498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D498);
  }

  return result;
}

unint64_t sub_26242F6C4()
{
  result = qword_27FF0D4A0;
  if (!qword_27FF0D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4A0);
  }

  return result;
}

unint64_t sub_26242F718()
{
  result = qword_27FF0D4A8;
  if (!qword_27FF0D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4A8);
  }

  return result;
}

uint64_t sub_26242F76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NumberRule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26242F7D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_26242F8A8()
{
  sub_26242F954();
  if (v0 <= 0x3F)
  {
    type metadata accessor for RulesValidity();
    if (v1 <= 0x3F)
    {
      sub_26242F9A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26242F954()
{
  if (!qword_27FF0D4C0)
  {
    v0 = sub_262462928();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF0D4C0);
    }
  }
}

unint64_t sub_26242F9A4()
{
  result = qword_27FF0D4C8;
  if (!qword_27FF0D4C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27FF0D4C8);
  }

  return result;
}

uint64_t sub_26242FA78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_26242FAC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26242FB40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26242FB88(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for NumberExpressionDecoder.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NumberExpressionDecoder.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26242FD58()
{
  result = qword_27FF0D4D0;
  if (!qword_27FF0D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4D0);
  }

  return result;
}

unint64_t sub_26242FDAC(uint64_t a1)
{
  result = sub_26242E944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FDD4(uint64_t a1)
{
  result = sub_26242E9EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FDFC(uint64_t a1)
{
  result = sub_26242EA94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE24(uint64_t a1)
{
  result = sub_26242EB3C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE4C(uint64_t a1)
{
  result = sub_26242EBE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE74(uint64_t a1)
{
  result = sub_26242EC8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FE9C(uint64_t a1)
{
  result = sub_26242ED34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FEC4(uint64_t a1)
{
  result = sub_26242EDDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FEEC(uint64_t a1)
{
  result = sub_26242EE84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF14(uint64_t a1)
{
  result = sub_26242EF2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF3C(uint64_t a1)
{
  result = sub_26242EFD4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF64(uint64_t a1)
{
  result = sub_26242F07C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26242FF8C(uint64_t a1)
{
  result = sub_26242F124();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26242FFB4(uint64_t a1)
{
  result = sub_26243056C(&qword_27FF0D4D8, type metadata accessor for NumberRule);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26243000C(uint64_t a1)
{
  result = sub_262430034();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430034()
{
  result = qword_27FF0D4E0;
  if (!qword_27FF0D4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4E0);
  }

  return result;
}

unint64_t sub_262430088(uint64_t a1)
{
  result = sub_2624300B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624300B0()
{
  result = qword_27FF0D4E8;
  if (!qword_27FF0D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4E8);
  }

  return result;
}

unint64_t sub_262430108()
{
  result = qword_27FF0D4F0;
  if (!qword_27FF0D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4F0);
  }

  return result;
}

unint64_t sub_262430160()
{
  result = qword_27FF0D4F8;
  if (!qword_27FF0D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D4F8);
  }

  return result;
}

unint64_t sub_2624301B8()
{
  result = qword_27FF0D500;
  if (!qword_27FF0D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D500);
  }

  return result;
}

unint64_t sub_262430210()
{
  result = qword_27FF0D508;
  if (!qword_27FF0D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D508);
  }

  return result;
}

unint64_t sub_262430268()
{
  result = qword_27FF0D510;
  if (!qword_27FF0D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D510);
  }

  return result;
}

unint64_t sub_2624302C0()
{
  result = qword_27FF0D518;
  if (!qword_27FF0D518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D518);
  }

  return result;
}

unint64_t sub_262430318()
{
  result = qword_27FF0D520;
  if (!qword_27FF0D520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D520);
  }

  return result;
}

unint64_t sub_262430370()
{
  result = qword_27FF0D528;
  if (!qword_27FF0D528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D528);
  }

  return result;
}

unint64_t sub_2624303C8()
{
  result = qword_27FF0D530;
  if (!qword_27FF0D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D530);
  }

  return result;
}

unint64_t sub_26243041C(uint64_t a1)
{
  result = sub_262430444();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430444()
{
  result = qword_27FF0D538;
  if (!qword_27FF0D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D538);
  }

  return result;
}

unint64_t sub_262430498(uint64_t a1)
{
  result = sub_2624304C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624304C0()
{
  result = qword_27FF0D540;
  if (!qword_27FF0D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D540);
  }

  return result;
}

uint64_t sub_262430514(uint64_t a1)
{
  result = sub_26243056C(&qword_27FF0D548, type metadata accessor for NumberRule);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26243056C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2624305B4(uint64_t a1)
{
  result = sub_2624305DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624305DC()
{
  result = qword_27FF0D550;
  if (!qword_27FF0D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D550);
  }

  return result;
}

unint64_t sub_262430630(uint64_t a1)
{
  result = sub_262430658();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430658()
{
  result = qword_27FF0D558;
  if (!qword_27FF0D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D558);
  }

  return result;
}

unint64_t sub_2624306AC(uint64_t a1)
{
  result = sub_2624306D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624306D4()
{
  result = qword_27FF0D560;
  if (!qword_27FF0D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D560);
  }

  return result;
}

unint64_t sub_262430728(uint64_t a1)
{
  result = sub_262430750();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430750()
{
  result = qword_27FF0D568;
  if (!qword_27FF0D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D568);
  }

  return result;
}

unint64_t sub_2624307A4(uint64_t a1)
{
  result = sub_2624307CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624307CC()
{
  result = qword_27FF0D570;
  if (!qword_27FF0D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D570);
  }

  return result;
}

unint64_t sub_262430820(uint64_t a1)
{
  result = sub_262430848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430848()
{
  result = qword_27FF0D578;
  if (!qword_27FF0D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D578);
  }

  return result;
}

unint64_t sub_26243089C(uint64_t a1)
{
  result = sub_2624308C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624308C4()
{
  result = qword_27FF0D580;
  if (!qword_27FF0D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D580);
  }

  return result;
}

unint64_t sub_262430918(uint64_t a1)
{
  result = sub_262430940();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430940()
{
  result = qword_27FF0D588;
  if (!qword_27FF0D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D588);
  }

  return result;
}

unint64_t sub_262430994(uint64_t a1)
{
  result = sub_2624309BC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2624309BC()
{
  result = qword_27FF0D590;
  if (!qword_27FF0D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D590);
  }

  return result;
}

unint64_t sub_262430A10(uint64_t a1)
{
  result = sub_262430A38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430A38()
{
  result = qword_27FF0D598;
  if (!qword_27FF0D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D598);
  }

  return result;
}

unint64_t sub_262430A8C(uint64_t a1)
{
  result = sub_262430AB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430AB4()
{
  result = qword_27FF0D5A0;
  if (!qword_27FF0D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5A0);
  }

  return result;
}

unint64_t sub_262430B08(uint64_t a1)
{
  result = sub_262430B30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430B30()
{
  result = qword_27FF0D5A8;
  if (!qword_27FF0D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5A8);
  }

  return result;
}

unint64_t sub_262430B84(uint64_t a1)
{
  result = sub_262430BAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_262430BAC()
{
  result = qword_27FF0D5B0;
  if (!qword_27FF0D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5B0);
  }

  return result;
}

unint64_t sub_262430C04()
{
  result = qword_27FF0D5B8;
  if (!qword_27FF0D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5B8);
  }

  return result;
}

unint64_t sub_262430C5C()
{
  result = qword_27FF0D5C0;
  if (!qword_27FF0D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5C0);
  }

  return result;
}

uint64_t sub_262430CB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E646C656966 && a2 == 0xE900000000000065 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746C7561666564 && a2 == 0xE700000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002624717E0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C615673656C7572 && a2 == 0xED00007974696469 || (sub_262462C58() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369676F6CLL && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F69746152 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7889229 && a2 == 0xE300000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6765746E49746547 && a2 == 0xEE00737469427265 || (sub_262462C58() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246A190 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246A170 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026246A150 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x654C676E69727453 && a2 == 0xEC0000006874676ELL || (sub_262462C58() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026246A130 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x614D7265626D754ELL && a2 == 0xEF65736143686374 || (sub_262462C58() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7265626D754E6F54 && a2 == 0xE800000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026246A110 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026246A0F0 == a2 || (sub_262462C58() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000026246A0D0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_262462C58();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

unint64_t sub_2624312F8()
{
  result = qword_27FF0D5D0;
  if (!qword_27FF0D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5D0);
  }

  return result;
}

unint64_t sub_2624313B4()
{
  result = qword_27FF0D5E0;
  if (!qword_27FF0D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5E0);
  }

  return result;
}

unint64_t sub_262431470()
{
  result = qword_27FF0D5E8;
  if (!qword_27FF0D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5E8);
  }

  return result;
}

unint64_t sub_26243152C()
{
  result = qword_27FF0D5F8;
  if (!qword_27FF0D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D5F8);
  }

  return result;
}

unint64_t sub_262431580()
{
  result = qword_27FF0D608;
  if (!qword_27FF0D608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D608);
  }

  return result;
}

unint64_t sub_26243163C()
{
  result = qword_27FF0D610;
  if (!qword_27FF0D610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D610);
  }

  return result;
}

unint64_t sub_2624316F8()
{
  result = qword_27FF0D620;
  if (!qword_27FF0D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D620);
  }

  return result;
}

unint64_t sub_26243174C()
{
  result = qword_27FF0D630;
  if (!qword_27FF0D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D630);
  }

  return result;
}

unint64_t sub_2624317A0()
{
  result = qword_27FF0D640;
  if (!qword_27FF0D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D640);
  }

  return result;
}

unint64_t sub_2624317F4()
{
  result = qword_27FF0D650;
  if (!qword_27FF0D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D650);
  }

  return result;
}

unint64_t sub_2624318B0()
{
  result = qword_27FF0D658;
  if (!qword_27FF0D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D658);
  }

  return result;
}

void *sub_26243196C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D660, &qword_26246AEB8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_262431C4C();
  sub_262462D88();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_262462B28();
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = sub_262462C48();
    v8 = MEMORY[0x277D84F90];
    if ((v10 & 1) == 0)
    {
      do
      {
        __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
        sub_262462C38();
        type metadata accessor for NumberExpressionDecoder();
        sub_262427F88(v14, v15);
        __swift_destroy_boxed_opaque_existential_1(v14);
        sub_2623F3CA4(v15, v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_26243C81C(0, v8[2] + 1, 1, v8);
        }

        v12 = v8[2];
        v11 = v8[3];
        if (v12 >= v11 >> 1)
        {
          v8 = sub_26243C81C((v11 > 1), v12 + 1, 1, v8);
        }

        __swift_destroy_boxed_opaque_existential_1(v15);
        v8[2] = v12 + 1;
        sub_2623EB668(v14, &v8[5 * v12 + 4]);
        __swift_project_boxed_opaque_existential_1(v16, v17);
      }

      while ((sub_262462C48() & 1) == 0);
    }

    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_262431C4C()
{
  result = qword_27FF0D668;
  if (!qword_27FF0D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D668);
  }

  return result;
}

unint64_t sub_262431CA0()
{
  result = qword_27FF0D678;
  if (!qword_27FF0D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D678);
  }

  return result;
}

unint64_t sub_262431E30()
{
  result = qword_27FF0D6A8;
  if (!qword_27FF0D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6A8);
  }

  return result;
}

unint64_t sub_262431E88()
{
  result = qword_27FF0D6B0;
  if (!qword_27FF0D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6B0);
  }

  return result;
}

unint64_t sub_262431EE0()
{
  result = qword_27FF0D6B8;
  if (!qword_27FF0D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6B8);
  }

  return result;
}

unint64_t sub_262431F38()
{
  result = qword_27FF0D6C0;
  if (!qword_27FF0D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6C0);
  }

  return result;
}

unint64_t sub_262431F90()
{
  result = qword_27FF0D6C8;
  if (!qword_27FF0D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6C8);
  }

  return result;
}

unint64_t sub_262431FE8()
{
  result = qword_27FF0D6D0;
  if (!qword_27FF0D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6D0);
  }

  return result;
}

unint64_t sub_262432040()
{
  result = qword_27FF0D6D8;
  if (!qword_27FF0D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6D8);
  }

  return result;
}

unint64_t sub_262432098()
{
  result = qword_27FF0D6E0;
  if (!qword_27FF0D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6E0);
  }

  return result;
}

unint64_t sub_2624320F0()
{
  result = qword_27FF0D6E8;
  if (!qword_27FF0D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6E8);
  }

  return result;
}

unint64_t sub_262432148()
{
  result = qword_27FF0D6F0;
  if (!qword_27FF0D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6F0);
  }

  return result;
}

unint64_t sub_2624321A0()
{
  result = qword_27FF0D6F8;
  if (!qword_27FF0D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D6F8);
  }

  return result;
}

unint64_t sub_2624321F8()
{
  result = qword_27FF0D700;
  if (!qword_27FF0D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D700);
  }

  return result;
}

unint64_t sub_262432250()
{
  result = qword_27FF0D708;
  if (!qword_27FF0D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D708);
  }

  return result;
}

unint64_t sub_2624322A8()
{
  result = qword_27FF0D710;
  if (!qword_27FF0D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D710);
  }

  return result;
}

unint64_t sub_262432300()
{
  result = qword_27FF0D718;
  if (!qword_27FF0D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D718);
  }

  return result;
}

unint64_t sub_262432358()
{
  result = qword_27FF0D720;
  if (!qword_27FF0D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D720);
  }

  return result;
}

unint64_t sub_2624323B0()
{
  result = qword_27FF0D728;
  if (!qword_27FF0D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D728);
  }

  return result;
}

unint64_t sub_262432408()
{
  result = qword_27FF0D730;
  if (!qword_27FF0D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D730);
  }

  return result;
}

unint64_t sub_262432460()
{
  result = qword_27FF0D738;
  if (!qword_27FF0D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D738);
  }

  return result;
}

unint64_t sub_2624324B8()
{
  result = qword_27FF0D740;
  if (!qword_27FF0D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D740);
  }

  return result;
}

unint64_t sub_262432510()
{
  result = qword_27FF0D748;
  if (!qword_27FF0D748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D748);
  }

  return result;
}

unint64_t sub_262432568()
{
  result = qword_27FF0D750;
  if (!qword_27FF0D750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D750);
  }

  return result;
}

unint64_t sub_2624325C0()
{
  result = qword_27FF0D758;
  if (!qword_27FF0D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D758);
  }

  return result;
}

unint64_t sub_262432618()
{
  result = qword_27FF0D760;
  if (!qword_27FF0D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D760);
  }

  return result;
}

unint64_t sub_262432670()
{
  result = qword_27FF0D768;
  if (!qword_27FF0D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D768);
  }

  return result;
}

unint64_t sub_2624326C8()
{
  result = qword_27FF0D770;
  if (!qword_27FF0D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D770);
  }

  return result;
}

unint64_t sub_262432720()
{
  result = qword_27FF0D778;
  if (!qword_27FF0D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D778);
  }

  return result;
}

unint64_t sub_262432778()
{
  result = qword_27FF0D780;
  if (!qword_27FF0D780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D780);
  }

  return result;
}

unint64_t sub_2624327D0()
{
  result = qword_27FF0D788;
  if (!qword_27FF0D788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D788);
  }

  return result;
}

unint64_t sub_262432828()
{
  result = qword_27FF0D790;
  if (!qword_27FF0D790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D790);
  }

  return result;
}

unint64_t sub_262432880()
{
  result = qword_27FF0D798;
  if (!qword_27FF0D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D798);
  }

  return result;
}

unint64_t sub_2624328D8()
{
  result = qword_27FF0D7A0;
  if (!qword_27FF0D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7A0);
  }

  return result;
}

unint64_t sub_262432930()
{
  result = qword_27FF0D7A8;
  if (!qword_27FF0D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7A8);
  }

  return result;
}

unint64_t sub_262432988()
{
  result = qword_27FF0D7B0;
  if (!qword_27FF0D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7B0);
  }

  return result;
}

unint64_t sub_2624329E0()
{
  result = qword_27FF0D7B8;
  if (!qword_27FF0D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7B8);
  }

  return result;
}

unint64_t sub_262432A38()
{
  result = qword_27FF0D7C0;
  if (!qword_27FF0D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7C0);
  }

  return result;
}

unint64_t sub_262432A90()
{
  result = qword_27FF0D7C8;
  if (!qword_27FF0D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7C8);
  }

  return result;
}

unint64_t sub_262432AE8()
{
  result = qword_27FF0D7D0;
  if (!qword_27FF0D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7D0);
  }

  return result;
}

unint64_t sub_262432B40()
{
  result = qword_27FF0D7D8;
  if (!qword_27FF0D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF0D7D8);
  }

  return result;
}

uint64_t sub_262432B94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_262462C58() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_262462C58() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_262462C58();

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

uint64_t sub_262432CC8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2624629B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_26243E250(v3, *(a1 + 36), 0, a1);

  return v5;
}

uint64_t sub_262432D44(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2624629B8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_26243DF24(v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_262432DB4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_262432E60(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v7 - 2);
      v14 = v9;
      v15 = v10;
      sub_2623F989C(v13, v9, v10);
      v11 = a1(&v13);
      sub_2623F98B8(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_262432F18(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = v6;
      v9 = *(v7 - 1);
      v10 = *v7;
      v13 = *(v7 - 2);
      v14 = v9;
      v15 = v10;
      sub_262419944(v13, v9, v10);
      v11 = a1(&v13);
      sub_262419958(v13, v14, v15);
      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 24;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_262432FD0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      v10 = *(v7 - 2);
      v14[0] = *(v7 - 3);
      v14[1] = v10;
      v14[2] = v8;
      v14[3] = v9;

      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 4;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

uint64_t sub_262433094(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_262432CC8(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v7[2] = v8;
      v3 = sub_262432DB4(sub_26243FDD8, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_26243A920(a1, a2);
  }

  return result;
}

uint64_t sub_262433174(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_262432D44(a2);
    v10[0] = result;
    v10[1] = v6;
    v10[2] = v7;
    v10[3] = v8;
    if (v6)
    {
      MEMORY[0x28223BE20](result);
      v9[2] = v10;
      v3 = sub_262432FD0(sub_26243FFB8, v9, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_26243AAA0(a1, a2);
  }

  return result;
}

uint64_t LogicGraphAsset.init(with:and:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 1096) = a3;
  *(v3 + 1088) = a1;
  v5 = *(*(sub_262462718() - 8) + 64) + 15;
  *(v3 + 1104) = swift_task_alloc();
  v6 = sub_262462558();
  *(v3 + 1112) = v6;
  v7 = *(v6 - 8);
  *(v3 + 1120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v3 + 1128) = swift_task_alloc();
  v9 = sub_262462588();
  *(v3 + 1136) = v9;
  v10 = *(v9 - 8);
  *(v3 + 1144) = v10;
  v11 = *(v10 + 64) + 15;
  *(v3 + 1152) = swift_task_alloc();
  *(v3 + 1160) = swift_task_alloc();
  *(v3 + 1168) = swift_task_alloc();
  *(v3 + 1176) = swift_task_alloc();
  *(v3 + 1184) = swift_task_alloc();
  *(v3 + 1192) = *a2;
  *(v3 + 1208) = *(a2 + 16);
  *(v3 + 1216) = *(a2 + 24);
  *(v3 + 1232) = *(a2 + 40);
  *(v3 + 689) = *(a2 + 48);

  return MEMORY[0x2822009F8](sub_26243340C, 0, 0);
}

uint64_t sub_26243340C()
{
  v1 = *(v0 + 1216);
  v2 = *(v0 + 1208);
  *(v0 + 1056) = sub_262462738();
  *(v0 + 1064) = v3;
  *(v0 + 1240) = v3;
  v4 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  v5 = *(v0 + 1200);
  if (!v4)
  {
    goto LABEL_12;
  }

  v6 = *(v0 + 1192) & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  if (v6 && ((v7 = *(v0 + 1232), (v7 & 0x2000000000000000) != 0) ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(v0 + 1224) & 0xFFFFFFFFFFFFLL), v8))
  {
    v9 = *(v0 + 1184);
    v10 = *(v0 + 1128);
    v11 = *(v0 + 1120);
    v12 = *(v0 + 1112);
    v13 = *(v0 + 1104);
    v14 = *(v0 + 1096);
    strcpy((v0 + 1008), "metadata.json");
    *(v0 + 1022) = -4864;
    *(v0 + 692) = *MEMORY[0x277CC91D8];
    v15 = *(v11 + 104);
    *(v0 + 1248) = v15;
    *(v0 + 1256) = (v11 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v15(v10);
    *(v0 + 1264) = sub_262436704();
    sub_262462578();
    v16 = *(v11 + 8);
    *(v0 + 1272) = v16;
    *(v0 + 1280) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v10, v12);
    sub_262462708();
    v17 = sub_2624626C8();
    v19 = v18;
    v20 = sub_262462418();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_262462408();
    v23 = sub_2623F47D4(v17, v19);
    v25 = v24;
    sub_262436758();
    sub_2624623F8();
    sub_2623F4694(v23, v25);

    v48 = *(v0 + 936);

    result = *(v0 + 944);
    *(v0 + 1288) = result;
    v49 = *(v0 + 952);
    *(v0 + 1296) = v49;
    v50 = *(result + 16);
    *(v0 + 1304) = v50;
    if (v50)
    {
      v51 = *(v0 + 1144);
      *(v0 + 1320) = MEMORY[0x277D84F90];
      *(v0 + 1312) = 0;
      if (*(result + 16))
      {
        v126 = *(v0 + 1272);
        v128 = *(v0 + 1280);
        v118 = *(v0 + 1248);
        v119 = *(v0 + 1256);
        v117 = *(v0 + 692);
        v120 = *(v0 + 1176);
        v52 = *(v0 + 1128);
        v53 = *(v0 + 1112);
        v122 = *(v0 + 1096);
        v124 = *(v0 + 1264);
        v54 = *(result + 32);
        v55 = *(result + 40);
        *(v0 + 1328) = v55;
        v57 = *(result + 48);
        v56 = *(result + 56);
        *(v0 + 1336) = v56;
        v58 = *(result + 72);
        v116 = *(result + 64);
        *(v0 + 1344) = v58;
        v59 = *(result + 80);
        v115 = v54;
        *(v0 + 1024) = v54;
        *(v0 + 1032) = v55;
        swift_bridgeObjectRetain_n();

        MEMORY[0x266728460](47, 0xE100000000000000);

        MEMORY[0x266728460](v57, v56);

        MEMORY[0x266728460](1954051118, 0xE400000000000000);
        v60 = *(v0 + 1032);
        *(v0 + 1040) = *(v0 + 1024);
        *(v0 + 1048) = v60;
        v118(v52, v117, v53);
        sub_262462578();
        v126(v52, v53);

        v61 = *(v0 + 1176);
        v62 = *(v0 + 1144);
        v63 = *(v0 + 1136);
        if (v59)
        {
          if (v59 == 1)
          {
            v64 = *(v0 + 1160);
            *(v0 + 696) = v115;
            *(v0 + 704) = v55;
            *(v0 + 712) = v57;
            *(v0 + 720) = v56;
            *(v0 + 728) = v116;
            *(v0 + 736) = v58;
            *(v0 + 744) = 1;
            (*(v62 + 16))(v64, v61, v63);

            v65 = swift_task_alloc();
            *(v0 + 1368) = v65;
            *v65 = v0;
            v65[1] = sub_262434A78;
            v66 = *(v0 + 1160);

            return sub_26243FFEC(v0 + 480, v0 + 696, v66);
          }

          else
          {
            v76 = *(v0 + 1152);
            *(v0 + 640) = v115;
            *(v0 + 648) = v55;
            *(v0 + 656) = v57;
            *(v0 + 664) = v56;
            *(v0 + 672) = v116;
            *(v0 + 680) = v58;
            *(v0 + 688) = 2;
            (*(v62 + 16))(v76, v61, v63);

            v77 = swift_task_alloc();
            *(v0 + 1384) = v77;
            *v77 = v0;
            v77[1] = sub_262435530;
            v78 = *(v0 + 1152);

            return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v78);
          }
        }

        else
        {
          v73 = *(v0 + 1168);
          *(v0 + 752) = v115;
          *(v0 + 760) = v55;
          *(v0 + 768) = v57;
          *(v0 + 776) = v56;
          *(v0 + 784) = v116;
          *(v0 + 792) = v58;
          *(v0 + 800) = 0;
          (*(v62 + 16))(v73, v61, v63);

          v74 = swift_task_alloc();
          *(v0 + 1352) = v74;
          *v74 = v0;
          v74[1] = sub_262433FC0;
          v75 = *(v0 + 1168);

          return sub_26242736C(v0 + 16, v0 + 752, v75);
        }
      }

LABEL_46:
      __break(1u);
      return result;
    }

    v67 = 0;
    v68 = *(v49 + 16);
    v69 = v49 + 32;
    while (v68 != v67)
    {
      v70 = *(v69 + 8 * v67++);
      if (*(v70 + 16) != 2)
      {
        v71 = *(v0 + 1296);

        sub_2623F1BBC();
        swift_allocError();
        *v72 = 0x6172676369676F6CLL;
        *(v72 + 8) = 0xEA00000000006870;
        *(v72 + 16) = 0xD00000000000004ALL;
        *(v72 + 24) = 0x8000000262472240;
        *(v72 + 32) = v130;
        *(v72 + 48) = v132;
        *(v72 + 64) = 0;
        swift_willThrow();
        v26 = *(v0 + 1240);
        v27 = *(v0 + 1232);
        v28 = *(v0 + 1216);
        v29 = *(v0 + 1200);
        v30 = *(v0 + 1184);
        v31 = *(v0 + 1136);
        v32 = *(*(v0 + 1144) + 8);
        v32(*(v0 + 1096), v31);
        v32(v30, v31);

        goto LABEL_13;
      }
    }

    if (v68)
    {
      v131 = MEMORY[0x277D84F90];
      result = sub_26243CDC0(0, v68, 0);
      v79 = v131;
      while (1)
      {
        v80 = *v69;
        v81 = *(*v69 + 16);
        if (!v81)
        {
          break;
        }

        if (v81 == 1)
        {
          goto LABEL_45;
        }

        v82 = v80[5];
        v83 = v80[7];
        v123 = v80[6];
        v125 = v80[4];
        v84 = v80[9];
        v121 = v80[8];
        v85 = v80[11];
        v87 = *(v131 + 16);
        v86 = *(v131 + 24);
        v127 = v80[10];
        v129 = v87 + 1;

        if (v87 >= v86 >> 1)
        {
          result = sub_26243CDC0((v86 > 1), v129, 1);
        }

        *(v131 + 16) = v129;
        v88 = (v131 + (v87 << 6));
        v88[4] = v125;
        v88[5] = v82;
        v88[6] = v123;
        v88[7] = v83;
        v88[8] = v121;
        v88[9] = v84;
        v69 += 8;
        v88[10] = v127;
        v88[11] = v85;
        if (!--v68)
        {
          v89 = *(v0 + 1296);
          v90 = *(v0 + 1184);
          v91 = *(v0 + 1144);
          v92 = *(v0 + 1136);
          v93 = *(v0 + 1096);

          v94 = *(v91 + 8);
          v94(v93, v92);
          v94(v90, v92);
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v95 = *(v0 + 1296);
    v96 = *(v0 + 1184);
    v97 = *(v0 + 1144);
    v98 = *(v0 + 1136);
    v99 = *(v0 + 1096);

    v100 = *(v97 + 8);
    v100(v99, v98);
    v100(v96, v98);
    v79 = MEMORY[0x277D84F90];
LABEL_43:
    v101 = *(v0 + 1240);
    v102 = *(v0 + 1056);
    v103 = *(v0 + 689);
    v104 = *(v0 + 1232);
    v105 = *(v0 + 1224);
    v106 = *(v0 + 1208);
    v107 = *(v0 + 1184);
    v108 = *(v0 + 1176);
    v109 = *(v0 + 1168);
    v110 = *(v0 + 1160);
    v111 = *(v0 + 1152);
    v112 = *(v0 + 1128);
    v113 = *(v0 + 1104);
    v114 = *(v0 + 1088);
    *v114 = *(v0 + 1192);
    *(v114 + 16) = v106;
    *(v114 + 32) = v105;
    *(v114 + 40) = v104;
    *(v114 + 48) = v103;
    *(v114 + 56) = MEMORY[0x277D84F90];
    *(v114 + 64) = v79;
    *(v114 + 72) = v102;
    *(v114 + 80) = v101;

    v46 = *(v0 + 8);
  }

  else
  {
LABEL_12:
    v33 = *(v0 + 1232);
    v34 = *(v0 + 1216);
    v35 = *(v0 + 1144);
    v36 = *(v0 + 1136);
    v37 = *(v0 + 1096);

    sub_2623F1BBC();
    swift_allocError();
    *v38 = 0x6172676369676F6CLL;
    *(v38 + 8) = 0xEA00000000006870;
    *(v38 + 16) = 0xD00000000000002BLL;
    *(v38 + 24) = 0x8000000262471FF0;
    *(v38 + 32) = v130;
    *(v38 + 48) = v132;
    *(v38 + 64) = 0;
    swift_willThrow();
    (*(v35 + 8))(v37, v36);
LABEL_13:

    v39 = *(v0 + 1184);
    v40 = *(v0 + 1176);
    v41 = *(v0 + 1168);
    v42 = *(v0 + 1160);
    v43 = *(v0 + 1152);
    v44 = *(v0 + 1128);
    v45 = *(v0 + 1104);

    v46 = *(v0 + 8);
  }

  return v46();
}

uint64_t sub_262433FC0()
{
  v2 = *v1;
  v3 = *(*v1 + 1352);
  v9 = *v1;
  *(*v1 + 1360) = v0;

  if (v0)
  {
    v4 = v2[165];
    v5 = v2[162];
    v6 = v2[161];

    v7 = sub_262435FFC;
  }

  else
  {
    v7 = sub_2624340F4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2624340F4()
{
  v1 = *(v0 + 1320);
  sub_26243CDE0(v0 + 16, v0 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 1320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_26243CBD8((v4 > 1), v5 + 1, 1, v3, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
    }

    v6 = *(v0 + 1344);
    v7 = *(v0 + 1336);
    v8 = *(v0 + 1328);
    v9 = *(v0 + 1176);
    v10 = *(v0 + 1144);
    v11 = *(v0 + 1136);

    sub_26243CE3C(v0 + 16);
    (*(v10 + 8))(v9, v11);
    *(v0 + 912) = &type metadata for RuleAsset;
    *(v0 + 920) = &off_281EC4F60;
    v12 = swift_allocObject();
    *(v0 + 888) = v12;
    sub_26243CDE0(v0 + 160, v12 + 16);
    v3[2] = v5 + 1;
    sub_2623EB668((v0 + 888), &v3[5 * v5 + 4]);
    result = sub_26243CE3C(v0 + 160);
    v14 = *(v0 + 1312) + 1;
    if (v14 != *(v0 + 1304))
    {
      break;
    }

    v15 = *(v0 + 1296);
    v16 = *(v0 + 1288);

    v17 = 0;
    v18 = *(v15 + 16);
    v19 = v15 + 32;
    while (v18 != v17)
    {
      v20 = *(v19 + 8 * v17++);
      if (*(v20 + 16) != 2)
      {
        v21 = *(v0 + 1296);

        sub_2623F1BBC();
        swift_allocError();
        *v22 = 0x6172676369676F6CLL;
        *(v22 + 8) = 0xEA00000000006870;
        *(v22 + 16) = 0xD00000000000004ALL;
        *(v22 + 24) = 0x8000000262472240;
        *(v22 + 32) = v119;
        *(v22 + 48) = v120;
        *(v22 + 64) = 0;
        swift_willThrow();
        v23 = *(v0 + 1240);
        v24 = *(v0 + 1232);
        v25 = *(v0 + 1216);
        v26 = *(v0 + 1200);
        v27 = *(v0 + 1184);
        v28 = *(v0 + 1136);
        v29 = *(*(v0 + 1144) + 8);
        v29(*(v0 + 1096), v28);
        v29(v27, v28);

        v30 = *(v0 + 1184);
        v31 = *(v0 + 1176);
        v32 = *(v0 + 1168);
        v33 = *(v0 + 1160);
        v34 = *(v0 + 1152);
        v35 = *(v0 + 1128);
        v36 = *(v0 + 1104);

        v37 = *(v0 + 8);
LABEL_31:

        return v37();
      }
    }

    v110 = v3;
    if (!v18)
    {
      v83 = *(v0 + 1296);
      v84 = *(v0 + 1184);
      v85 = *(v0 + 1144);
      v86 = *(v0 + 1136);
      v87 = *(v0 + 1096);

      v88 = *(v85 + 8);
      v88(v87, v86);
      v88(v84, v86);
      v56 = MEMORY[0x277D84F90];
LABEL_30:
      v89 = *(v0 + 1240);
      v90 = *(v0 + 1056);
      v91 = *(v0 + 689);
      v92 = *(v0 + 1232);
      v93 = *(v0 + 1224);
      v94 = *(v0 + 1208);
      v95 = *(v0 + 1184);
      v96 = *(v0 + 1176);
      v97 = *(v0 + 1168);
      v98 = *(v0 + 1160);
      v99 = *(v0 + 1152);
      v100 = *(v0 + 1128);
      v101 = *(v0 + 1104);
      v102 = *(v0 + 1088);
      *v102 = *(v0 + 1192);
      *(v102 + 16) = v94;
      *(v102 + 32) = v93;
      *(v102 + 40) = v92;
      *(v102 + 48) = v91;
      *(v102 + 56) = v110;
      *(v102 + 64) = v56;
      *(v102 + 72) = v90;
      *(v102 + 80) = v89;

      v37 = *(v0 + 8);
      goto LABEL_31;
    }

    v108 = v0;
    *&v119 = MEMORY[0x277D84F90];
    sub_26243CDC0(0, v18, 0);
    v56 = v119;
    while (1)
    {
      v57 = *v19;
      v58 = *(*v19 + 16);
      if (!v58)
      {
        break;
      }

      if (v58 == 1)
      {
        goto LABEL_35;
      }

      v59 = v57[5];
      v60 = v57[7];
      v114 = v57[6];
      v116 = v57[4];
      v61 = v57[9];
      v112 = v57[8];
      v62 = v57[11];
      v118 = v57[10];
      *&v119 = v56;
      v0 = *(v56 + 16);
      v63 = *(v56 + 24);
      v3 = (v0 + 1);

      if (v0 >= v63 >> 1)
      {
        sub_26243CDC0((v63 > 1), v0 + 1, 1);
      }

      *(v56 + 16) = v3;
      v64 = (v56 + (v0 << 6));
      v64[4] = v116;
      v64[5] = v59;
      v64[6] = v114;
      v64[7] = v60;
      v64[8] = v112;
      v64[9] = v61;
      v19 += 8;
      v64[10] = v118;
      v64[11] = v62;
      if (!--v18)
      {
        v0 = v108;
        v77 = v108[162];
        v78 = v108[148];
        v79 = v108[143];
        v80 = v108[142];
        v81 = v108[137];

        v82 = *(v79 + 8);
        v82(v81, v80);
        v82(v78, v80);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v3 = sub_26243CBD8(0, v3[2] + 1, 1, v3, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
  }

  *(v0 + 1320) = v3;
  *(v0 + 1312) = v14;
  v38 = *(v0 + 1288);
  if (v14 >= *(v38 + 16))
  {
    __break(1u);
  }

  else
  {
    v115 = *(v0 + 1272);
    v117 = *(v0 + 1280);
    v107 = *(v0 + 1256);
    v106 = *(v0 + 1248);
    v105 = *(v0 + 692);
    v111 = *(v0 + 1176);
    v113 = *(v0 + 1264);
    v39 = *(v0 + 1128);
    v40 = *(v0 + 1112);
    v109 = *(v0 + 1096);
    v41 = *(v0 + 1144) + 16;
    v42 = v38 + 56 * v14;
    v43 = *(v42 + 32);
    v44 = *(v42 + 40);
    *(v0 + 1328) = v44;
    v46 = *(v42 + 48);
    v45 = *(v42 + 56);
    *(v0 + 1336) = v45;
    v47 = *(v42 + 72);
    v104 = *(v42 + 64);
    *(v0 + 1344) = v47;
    v48 = *(v42 + 80);
    v103 = v43;
    *(v0 + 1024) = v43;
    *(v0 + 1032) = v44;
    swift_bridgeObjectRetain_n();

    MEMORY[0x266728460](47, 0xE100000000000000);

    MEMORY[0x266728460](v46, v45);

    MEMORY[0x266728460](1954051118, 0xE400000000000000);
    v49 = *(v0 + 1032);
    *(v0 + 1040) = *(v0 + 1024);
    *(v0 + 1048) = v49;
    v106(v39, v105, v40);
    sub_262462578();
    v115(v39, v40);

    if (v48)
    {
      if (v48 == 1)
      {
        v50 = *(v0 + 1176);
        v51 = *(v0 + 1160);
        v52 = *(v0 + 1144);
        v53 = *(v0 + 1136);
        *(v0 + 696) = v103;
        *(v0 + 704) = v44;
        *(v0 + 712) = v46;
        *(v0 + 720) = v45;
        *(v0 + 728) = v104;
        *(v0 + 736) = v47;
        *(v0 + 744) = 1;
        (*(v52 + 16))(v51, v50, v53);

        v54 = swift_task_alloc();
        *(v0 + 1368) = v54;
        *v54 = v0;
        v54[1] = sub_262434A78;
        v55 = *(v0 + 1160);

        return sub_26243FFEC(v0 + 480, v0 + 696, v55);
      }

      else
      {
        v71 = *(v0 + 1176);
        v72 = *(v0 + 1152);
        v73 = *(v0 + 1144);
        v74 = *(v0 + 1136);
        *(v0 + 640) = v103;
        *(v0 + 648) = v44;
        *(v0 + 656) = v46;
        *(v0 + 664) = v45;
        *(v0 + 672) = v104;
        *(v0 + 680) = v47;
        *(v0 + 688) = 2;
        (*(v73 + 16))(v72, v71, v74);

        v75 = swift_task_alloc();
        *(v0 + 1384) = v75;
        *v75 = v0;
        v75[1] = sub_262435530;
        v76 = *(v0 + 1152);

        return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v76);
      }
    }

    else
    {
      v65 = *(v0 + 1176);
      v66 = *(v0 + 1168);
      v67 = *(v0 + 1144);
      v68 = *(v0 + 1136);
      *(v0 + 752) = v103;
      *(v0 + 760) = v44;
      *(v0 + 768) = v46;
      *(v0 + 776) = v45;
      *(v0 + 784) = v104;
      *(v0 + 792) = v47;
      *(v0 + 800) = 0;
      (*(v67 + 16))(v66, v65, v68);

      v69 = swift_task_alloc();
      *(v0 + 1352) = v69;
      *v69 = v0;
      v69[1] = sub_262433FC0;
      v70 = *(v0 + 1168);

      return sub_26242736C(v0 + 16, v0 + 752, v70);
    }
  }

  return result;
}

uint64_t sub_262434A78()
{
  v2 = *v1;
  v3 = *(*v1 + 1368);
  v9 = *v1;
  *(*v1 + 1376) = v0;

  if (v0)
  {
    v4 = v2[165];
    v5 = v2[162];
    v6 = v2[161];

    v7 = sub_262436254;
  }

  else
  {
    v7 = sub_262434BAC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_262434BAC()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 528);
  *(v0 + 592) = *(v0 + 512);
  *(v0 + 608) = v2;
  *(v0 + 624) = *(v0 + 544);
  v3 = *(v0 + 496);
  *(v0 + 560) = *(v0 + 480);
  *(v0 + 576) = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + 1320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v7 = v5[2];
    v6 = v5[3];
    if (v7 >= v6 >> 1)
    {
      v5 = sub_26243CBD8((v6 > 1), v7 + 1, 1, v5, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
    }

    v8 = *(v0 + 1344);
    v9 = *(v0 + 1336);
    v10 = *(v0 + 1328);
    v11 = *(v0 + 1176);
    v12 = *(v0 + 1144);
    v13 = *(v0 + 1136);

    (*(v12 + 8))(v11, v13);
    *(v0 + 872) = &type metadata for MLModelAsset;
    *(v0 + 880) = &off_281EC5388;
    v14 = swift_allocObject();
    *(v0 + 848) = v14;
    v15 = *(v0 + 608);
    v14[3] = *(v0 + 592);
    v14[4] = v15;
    v14[5] = *(v0 + 624);
    v16 = *(v0 + 576);
    v14[1] = *(v0 + 560);
    v14[2] = v16;
    v5[2] = v7 + 1;
    result = sub_2623EB668((v0 + 848), &v5[5 * v7 + 4]);
    v18 = *(v0 + 1312) + 1;
    if (v18 != *(v0 + 1304))
    {
      break;
    }

    v19 = *(v0 + 1296);
    v20 = *(v0 + 1288);

    v21 = 0;
    v22 = *(v19 + 16);
    v23 = v19 + 32;
    while (v22 != v21)
    {
      v24 = *(v23 + 8 * v21++);
      if (*(v24 + 16) != 2)
      {
        v25 = *(v0 + 1296);

        sub_2623F1BBC();
        swift_allocError();
        *v26 = 0x6172676369676F6CLL;
        *(v26 + 8) = 0xEA00000000006870;
        *(v26 + 16) = 0xD00000000000004ALL;
        *(v26 + 24) = 0x8000000262472240;
        *(v26 + 32) = v123;
        *(v26 + 48) = v124;
        *(v26 + 64) = 0;
        swift_willThrow();
        v27 = *(v0 + 1240);
        v28 = *(v0 + 1232);
        v29 = *(v0 + 1216);
        v30 = *(v0 + 1200);
        v31 = *(v0 + 1184);
        v32 = *(v0 + 1136);
        v33 = *(*(v0 + 1144) + 8);
        v33(*(v0 + 1096), v32);
        v33(v31, v32);

        v34 = *(v0 + 1184);
        v35 = *(v0 + 1176);
        v36 = *(v0 + 1168);
        v37 = *(v0 + 1160);
        v38 = *(v0 + 1152);
        v39 = *(v0 + 1128);
        v40 = *(v0 + 1104);

        v41 = *(v0 + 8);
LABEL_31:

        return v41();
      }
    }

    v114 = v5;
    if (!v22)
    {
      v87 = *(v0 + 1296);
      v88 = *(v0 + 1184);
      v89 = *(v0 + 1144);
      v90 = *(v0 + 1136);
      v91 = *(v0 + 1096);

      v92 = *(v89 + 8);
      v92(v91, v90);
      v92(v88, v90);
      v60 = MEMORY[0x277D84F90];
LABEL_30:
      v93 = *(v0 + 1240);
      v94 = *(v0 + 1056);
      v95 = *(v0 + 689);
      v96 = *(v0 + 1232);
      v97 = *(v0 + 1224);
      v98 = *(v0 + 1208);
      v99 = *(v0 + 1184);
      v100 = *(v0 + 1176);
      v101 = *(v0 + 1168);
      v102 = *(v0 + 1160);
      v103 = *(v0 + 1152);
      v104 = *(v0 + 1128);
      v105 = *(v0 + 1104);
      v106 = *(v0 + 1088);
      *v106 = *(v0 + 1192);
      *(v106 + 16) = v98;
      *(v106 + 32) = v97;
      *(v106 + 40) = v96;
      *(v106 + 48) = v95;
      *(v106 + 56) = v114;
      *(v106 + 64) = v60;
      *(v106 + 72) = v94;
      *(v106 + 80) = v93;

      v41 = *(v0 + 8);
      goto LABEL_31;
    }

    v112 = v0;
    *&v123 = MEMORY[0x277D84F90];
    sub_26243CDC0(0, v22, 0);
    v60 = v123;
    while (1)
    {
      v61 = *v23;
      v62 = *(*v23 + 16);
      if (!v62)
      {
        break;
      }

      if (v62 == 1)
      {
        goto LABEL_35;
      }

      v63 = v61[5];
      v64 = v61[7];
      v118 = v61[6];
      v120 = v61[4];
      v65 = v61[9];
      v116 = v61[8];
      v66 = v61[11];
      v122 = v61[10];
      *&v123 = v60;
      v0 = *(v60 + 16);
      v67 = *(v60 + 24);
      v5 = (v0 + 1);

      if (v0 >= v67 >> 1)
      {
        sub_26243CDC0((v67 > 1), v0 + 1, 1);
      }

      *(v60 + 16) = v5;
      v68 = (v60 + (v0 << 6));
      v68[4] = v120;
      v68[5] = v63;
      v68[6] = v118;
      v68[7] = v64;
      v68[8] = v116;
      v68[9] = v65;
      v23 += 8;
      v68[10] = v122;
      v68[11] = v66;
      if (!--v22)
      {
        v0 = v112;
        v81 = v112[162];
        v82 = v112[148];
        v83 = v112[143];
        v84 = v112[142];
        v85 = v112[137];

        v86 = *(v83 + 8);
        v86(v85, v84);
        v86(v82, v84);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v5 = sub_26243CBD8(0, v5[2] + 1, 1, v5, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
  }

  *(v0 + 1320) = v5;
  *(v0 + 1312) = v18;
  v42 = *(v0 + 1288);
  if (v18 >= *(v42 + 16))
  {
    __break(1u);
  }

  else
  {
    v119 = *(v0 + 1272);
    v121 = *(v0 + 1280);
    v111 = *(v0 + 1256);
    v110 = *(v0 + 1248);
    v109 = *(v0 + 692);
    v115 = *(v0 + 1176);
    v117 = *(v0 + 1264);
    v43 = *(v0 + 1128);
    v44 = *(v0 + 1112);
    v113 = *(v0 + 1096);
    v45 = *(v0 + 1144) + 16;
    v46 = v42 + 56 * v18;
    v47 = *(v46 + 32);
    v48 = *(v46 + 40);
    *(v0 + 1328) = v48;
    v50 = *(v46 + 48);
    v49 = *(v46 + 56);
    *(v0 + 1336) = v49;
    v51 = *(v46 + 72);
    v108 = *(v46 + 64);
    *(v0 + 1344) = v51;
    v52 = *(v46 + 80);
    v107 = v47;
    *(v0 + 1024) = v47;
    *(v0 + 1032) = v48;
    swift_bridgeObjectRetain_n();

    MEMORY[0x266728460](47, 0xE100000000000000);

    MEMORY[0x266728460](v50, v49);

    MEMORY[0x266728460](1954051118, 0xE400000000000000);
    v53 = *(v0 + 1032);
    *(v0 + 1040) = *(v0 + 1024);
    *(v0 + 1048) = v53;
    v110(v43, v109, v44);
    sub_262462578();
    v119(v43, v44);

    if (v52)
    {
      if (v52 == 1)
      {
        v54 = *(v0 + 1176);
        v55 = *(v0 + 1160);
        v56 = *(v0 + 1144);
        v57 = *(v0 + 1136);
        *(v0 + 696) = v107;
        *(v0 + 704) = v48;
        *(v0 + 712) = v50;
        *(v0 + 720) = v49;
        *(v0 + 728) = v108;
        *(v0 + 736) = v51;
        *(v0 + 744) = 1;
        (*(v56 + 16))(v55, v54, v57);

        v58 = swift_task_alloc();
        *(v0 + 1368) = v58;
        *v58 = v0;
        v58[1] = sub_262434A78;
        v59 = *(v0 + 1160);

        return sub_26243FFEC(v0 + 480, v0 + 696, v59);
      }

      else
      {
        v75 = *(v0 + 1176);
        v76 = *(v0 + 1152);
        v77 = *(v0 + 1144);
        v78 = *(v0 + 1136);
        *(v0 + 640) = v107;
        *(v0 + 648) = v48;
        *(v0 + 656) = v50;
        *(v0 + 664) = v49;
        *(v0 + 672) = v108;
        *(v0 + 680) = v51;
        *(v0 + 688) = 2;
        (*(v77 + 16))(v76, v75, v78);

        v79 = swift_task_alloc();
        *(v0 + 1384) = v79;
        *v79 = v0;
        v79[1] = sub_262435530;
        v80 = *(v0 + 1152);

        return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v80);
      }
    }

    else
    {
      v69 = *(v0 + 1176);
      v70 = *(v0 + 1168);
      v71 = *(v0 + 1144);
      v72 = *(v0 + 1136);
      *(v0 + 752) = v107;
      *(v0 + 760) = v48;
      *(v0 + 768) = v50;
      *(v0 + 776) = v49;
      *(v0 + 784) = v108;
      *(v0 + 792) = v51;
      *(v0 + 800) = 0;
      (*(v71 + 16))(v70, v69, v72);

      v73 = swift_task_alloc();
      *(v0 + 1352) = v73;
      *v73 = v0;
      v73[1] = sub_262433FC0;
      v74 = *(v0 + 1168);

      return sub_26242736C(v0 + 16, v0 + 752, v74);
    }
  }

  return result;
}

uint64_t sub_262435530()
{
  v2 = *v1;
  v3 = *(*v1 + 1384);
  v9 = *v1;
  *(*v1 + 1392) = v0;

  if (v0)
  {
    v4 = v2[165];
    v5 = v2[162];
    v6 = v2[161];

    v7 = sub_2624364AC;
  }

  else
  {
    v7 = sub_262435664;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_262435664()
{
  v1 = *(v0 + 1320);
  v2 = v0 + 392;
  v3 = *(v0 + 352);
  *(v0 + 424) = *(v0 + 336);
  *(v0 + 440) = v3;
  *(v0 + 456) = *(v0 + 368);
  *(v0 + 472) = *(v0 + 384);
  v4 = *(v0 + 320);
  *(v0 + 392) = *(v0 + 304);
  *(v0 + 408) = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 1320);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_36;
  }

  while (1)
  {
    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      v6 = sub_26243CBD8((v7 > 1), v8 + 1, 1, v6, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
    }

    v9 = *(v0 + 1344);
    v10 = *(v0 + 1336);
    v11 = *(v0 + 1328);
    v12 = *(v0 + 1176);
    v13 = *(v0 + 1144);
    v14 = *(v0 + 1136);

    (*(v13 + 8))(v12, v14);
    *(v0 + 832) = &type metadata for LogicGraphAsset;
    *(v0 + 840) = &off_281EC5350;
    v15 = swift_allocObject();
    *(v0 + 808) = v15;
    v16 = *(v2 + 48);
    *(v15 + 48) = *(v2 + 32);
    *(v15 + 64) = v16;
    *(v15 + 80) = *(v2 + 64);
    *(v15 + 96) = *(v2 + 80);
    v17 = *(v2 + 16);
    *(v15 + 16) = *v2;
    *(v15 + 32) = v17;
    v6[2] = v8 + 1;
    result = sub_2623EB668((v0 + 808), &v6[5 * v8 + 4]);
    v19 = *(v0 + 1312) + 1;
    if (v19 != *(v0 + 1304))
    {
      break;
    }

    v20 = *(v0 + 1296);
    v21 = *(v0 + 1288);

    v22 = 0;
    v23 = *(v20 + 16);
    v24 = v20 + 32;
    while (v23 != v22)
    {
      v25 = *(v24 + 8 * v22++);
      if (*(v25 + 16) != 2)
      {
        v26 = *(v0 + 1296);

        sub_2623F1BBC();
        swift_allocError();
        *v27 = 0x6172676369676F6CLL;
        *(v27 + 8) = 0xEA00000000006870;
        *(v27 + 16) = 0xD00000000000004ALL;
        *(v27 + 24) = 0x8000000262472240;
        *(v27 + 32) = v122;
        *(v27 + 48) = v123;
        *(v27 + 64) = 0;
        swift_willThrow();
        v28 = *(v0 + 1240);
        v29 = *(v0 + 1232);
        v30 = *(v0 + 1216);
        v31 = *(v0 + 1200);
        v32 = *(v0 + 1184);
        v33 = *(v0 + 1136);
        v34 = *(*(v0 + 1144) + 8);
        v34(*(v0 + 1096), v33);
        v34(v32, v33);

        v35 = *(v0 + 1184);
        v36 = *(v0 + 1176);
        v37 = *(v0 + 1168);
        v38 = *(v0 + 1160);
        v39 = *(v0 + 1152);
        v40 = *(v0 + 1128);
        v41 = *(v0 + 1104);

        v42 = *(v0 + 8);
LABEL_31:

        return v42();
      }
    }

    v113 = v6;
    if (!v23)
    {
      v86 = *(v0 + 1296);
      v87 = *(v0 + 1184);
      v88 = *(v0 + 1144);
      v89 = *(v0 + 1136);
      v90 = *(v0 + 1096);

      v91 = *(v88 + 8);
      v91(v90, v89);
      v91(v87, v89);
      v6 = MEMORY[0x277D84F90];
LABEL_30:
      v92 = *(v0 + 1240);
      v93 = *(v0 + 1056);
      v94 = *(v0 + 689);
      v95 = *(v0 + 1232);
      v96 = *(v0 + 1224);
      v97 = *(v0 + 1208);
      v98 = *(v0 + 1184);
      v99 = *(v0 + 1176);
      v100 = *(v0 + 1168);
      v101 = *(v0 + 1160);
      v102 = *(v0 + 1152);
      v103 = *(v0 + 1128);
      v104 = *(v0 + 1104);
      v105 = *(v0 + 1088);
      *v105 = *(v0 + 1192);
      *(v105 + 16) = v97;
      *(v105 + 32) = v96;
      *(v105 + 40) = v95;
      *(v105 + 48) = v94;
      *(v105 + 56) = v113;
      *(v105 + 64) = v6;
      *(v105 + 72) = v93;
      *(v105 + 80) = v92;

      v42 = *(v0 + 8);
      goto LABEL_31;
    }

    v111 = v0;
    *&v122 = MEMORY[0x277D84F90];
    sub_26243CDC0(0, v23, 0);
    v6 = v122;
    while (1)
    {
      v61 = *v24;
      v62 = *(*v24 + 16);
      if (!v62)
      {
        break;
      }

      if (v62 == 1)
      {
        goto LABEL_35;
      }

      v63 = v61[5];
      v2 = v61[7];
      v117 = v61[6];
      v119 = v61[4];
      v64 = v61[9];
      v115 = v61[8];
      v65 = v61[11];
      v121 = v61[10];
      *&v122 = v6;
      v0 = v6[2];
      v66 = v6[3];

      if (v0 >= v66 >> 1)
      {
        sub_26243CDC0((v66 > 1), v0 + 1, 1);
      }

      v6[2] = v0 + 1;
      v67 = &v6[8 * v0];
      v67[4] = v119;
      v67[5] = v63;
      v67[6] = v117;
      v67[7] = v2;
      v67[8] = v115;
      v67[9] = v64;
      v24 += 8;
      v67[10] = v121;
      v67[11] = v65;
      if (!--v23)
      {
        v0 = v111;
        v80 = v111[162];
        v81 = v111[148];
        v82 = v111[143];
        v83 = v111[142];
        v84 = v111[137];

        v85 = *(v82 + 8);
        v85(v84, v83);
        v85(v81, v83);
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v6 = sub_26243CBD8(0, v6[2] + 1, 1, v6, &qword_27FF0D870, &qword_26246BE58, &qword_27FF0D878, &qword_26246BE60);
  }

  *(v0 + 1320) = v6;
  *(v0 + 1312) = v19;
  v43 = *(v0 + 1288);
  if (v19 >= *(v43 + 16))
  {
    __break(1u);
  }

  else
  {
    v118 = *(v0 + 1272);
    v120 = *(v0 + 1280);
    v110 = *(v0 + 1256);
    v109 = *(v0 + 1248);
    v108 = *(v0 + 692);
    v114 = *(v0 + 1176);
    v116 = *(v0 + 1264);
    v44 = *(v0 + 1128);
    v45 = *(v0 + 1112);
    v112 = *(v0 + 1096);
    v46 = *(v0 + 1144) + 16;
    v47 = v43 + 56 * v19;
    v48 = *(v47 + 32);
    v49 = *(v47 + 40);
    *(v0 + 1328) = v49;
    v51 = *(v47 + 48);
    v50 = *(v47 + 56);
    *(v0 + 1336) = v50;
    v52 = *(v47 + 72);
    v107 = *(v47 + 64);
    *(v0 + 1344) = v52;
    v53 = *(v47 + 80);
    v106 = v48;
    *(v0 + 1024) = v48;
    *(v0 + 1032) = v49;
    swift_bridgeObjectRetain_n();

    MEMORY[0x266728460](47, 0xE100000000000000);

    MEMORY[0x266728460](v51, v50);

    MEMORY[0x266728460](1954051118, 0xE400000000000000);
    v54 = *(v0 + 1032);
    *(v0 + 1040) = *(v0 + 1024);
    *(v0 + 1048) = v54;
    v109(v44, v108, v45);
    sub_262462578();
    v118(v44, v45);

    if (v53)
    {
      if (v53 == 1)
      {
        v55 = *(v0 + 1176);
        v56 = *(v0 + 1160);
        v57 = *(v0 + 1144);
        v58 = *(v0 + 1136);
        *(v0 + 696) = v106;
        *(v0 + 704) = v49;
        *(v0 + 712) = v51;
        *(v0 + 720) = v50;
        *(v0 + 728) = v107;
        *(v0 + 736) = v52;
        *(v0 + 744) = 1;
        (*(v57 + 16))(v56, v55, v58);

        v59 = swift_task_alloc();
        *(v0 + 1368) = v59;
        *v59 = v0;
        v59[1] = sub_262434A78;
        v60 = *(v0 + 1160);

        return sub_26243FFEC(v0 + 480, v0 + 696, v60);
      }

      else
      {
        v74 = *(v0 + 1176);
        v75 = *(v0 + 1152);
        v76 = *(v0 + 1144);
        v77 = *(v0 + 1136);
        *(v0 + 640) = v106;
        *(v0 + 648) = v49;
        *(v0 + 656) = v51;
        *(v0 + 664) = v50;
        *(v0 + 672) = v107;
        *(v0 + 680) = v52;
        *(v0 + 688) = 2;
        (*(v76 + 16))(v75, v74, v77);

        v78 = swift_task_alloc();
        *(v0 + 1384) = v78;
        *v78 = v0;
        v78[1] = sub_262435530;
        v79 = *(v0 + 1152);

        return LogicGraphAsset.init(with:and:)(v0 + 304, v0 + 640, v79);
      }
    }

    else
    {
      v68 = *(v0 + 1176);
      v69 = *(v0 + 1168);
      v70 = *(v0 + 1144);
      v71 = *(v0 + 1136);
      *(v0 + 752) = v106;
      *(v0 + 760) = v49;
      *(v0 + 768) = v51;
      *(v0 + 776) = v50;
      *(v0 + 784) = v107;
      *(v0 + 792) = v52;
      *(v0 + 800) = 0;
      (*(v70 + 16))(v69, v68, v71);

      v72 = swift_task_alloc();
      *(v0 + 1352) = v72;
      *v72 = v0;
      v72[1] = sub_262433FC0;
      v73 = *(v0 + 1168);

      return sub_26242736C(v0 + 16, v0 + 752, v73);
    }
  }

  return result;
}

uint64_t sub_262435FFC()
{
  v1 = v0[168];
  v2 = v0[167];
  v3 = v0[166];
  v4 = v0[147];
  v5 = v0[143];
  v6 = v0[142];

  (*(v5 + 8))(v4, v6);
  v7 = v0[170];
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000002FLL, 0x8000000262472210);
  swift_getErrorValue();
  v8 = v0[123];
  v9 = v0[124];
  v10 = v0[125];
  v11 = sub_262462C88();
  MEMORY[0x266728460](v11);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v12 = 0x6172676369676F6CLL;
  *(v12 + 8) = 0xEA00000000006870;
  *(v12 + 16) = v29;
  *(v12 + 32) = v29;
  *(v12 + 48) = v30;
  *(v12 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v7);
  v13 = v0[155];
  v14 = v0[154];
  v15 = v0[152];
  v16 = v0[150];
  v17 = v0[148];
  v18 = v0[142];
  v19 = *(v0[143] + 8);
  v19(v0[137], v18);
  v19(v17, v18);

  v20 = v0[148];
  v21 = v0[147];
  v22 = v0[146];
  v23 = v0[145];
  v24 = v0[144];
  v25 = v0[141];
  v26 = v0[138];

  v27 = v0[1];

  return v27();
}

uint64_t sub_262436254()
{
  v1 = v0[168];
  v2 = v0[167];
  v3 = v0[166];
  v4 = v0[147];
  v5 = v0[143];
  v6 = v0[142];

  (*(v5 + 8))(v4, v6);
  v7 = v0[172];
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000002FLL, 0x8000000262472210);
  swift_getErrorValue();
  v8 = v0[123];
  v9 = v0[124];
  v10 = v0[125];
  v11 = sub_262462C88();
  MEMORY[0x266728460](v11);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v12 = 0x6172676369676F6CLL;
  *(v12 + 8) = 0xEA00000000006870;
  *(v12 + 16) = v29;
  *(v12 + 32) = v29;
  *(v12 + 48) = v30;
  *(v12 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v7);
  v13 = v0[155];
  v14 = v0[154];
  v15 = v0[152];
  v16 = v0[150];
  v17 = v0[148];
  v18 = v0[142];
  v19 = *(v0[143] + 8);
  v19(v0[137], v18);
  v19(v17, v18);

  v20 = v0[148];
  v21 = v0[147];
  v22 = v0[146];
  v23 = v0[145];
  v24 = v0[144];
  v25 = v0[141];
  v26 = v0[138];

  v27 = v0[1];

  return v27();
}

uint64_t sub_2624364AC()
{
  v1 = v0[168];
  v2 = v0[167];
  v3 = v0[166];
  v4 = v0[147];
  v5 = v0[143];
  v6 = v0[142];

  (*(v5 + 8))(v4, v6);
  v7 = v0[174];
  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_262462A28();
  MEMORY[0x266728460](0xD00000000000002FLL, 0x8000000262472210);
  swift_getErrorValue();
  v8 = v0[123];
  v9 = v0[124];
  v10 = v0[125];
  v11 = sub_262462C88();
  MEMORY[0x266728460](v11);

  MEMORY[0x266728460](32032, 0xE200000000000000);
  sub_2623F1BBC();
  swift_allocError();
  *v12 = 0x6172676369676F6CLL;
  *(v12 + 8) = 0xEA00000000006870;
  *(v12 + 16) = v29;
  *(v12 + 32) = v29;
  *(v12 + 48) = v30;
  *(v12 + 64) = 0;
  swift_willThrow();
  MEMORY[0x266728D50](v7);
  v13 = v0[155];
  v14 = v0[154];
  v15 = v0[152];
  v16 = v0[150];
  v17 = v0[148];
  v18 = v0[142];
  v19 = *(v0[143] + 8);
  v19(v0[137], v18);
  v19(v17, v18);

  v20 = v0[148];
  v21 = v0[147];
  v22 = v0[146];
  v23 = v0[145];
  v24 = v0[144];
  v25 = v0[141];
  v26 = v0[138];

  v27 = v0[1];

  return v27();
}

unint64_t sub_262436704()
{
  result = qword_2813BD400;
  if (!qword_2813BD400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD400);
  }

  return result;
}

unint64_t sub_262436758()
{
  result = qword_2813BD8D8;
  if (!qword_2813BD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813BD8D8);
  }

  return result;
}

uint64_t LogicGraphAsset.execute(for:)(uint64_t a1)
{
  v4 = *(v1 + 48);
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = v4;
  *(v2 + 80) = *(v1 + 64);
  *(v2 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v5;
  v6 = swift_task_alloc();
  *(v2 + 104) = v6;
  *v6 = v2;
  v6[1] = sub_26243686C;
  v7 = MEMORY[0x277D84F90];

  return sub_2624369C0(a1, v7);
}

uint64_t sub_26243686C(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v5 = *v2;
  *(v5 + 112) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2624369A8, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_2624369C0(uint64_t a1, uint64_t a2)
{
  *(v3 + 1480) = v2;
  *(v3 + 1472) = a2;
  *(v3 + 1464) = a1;
  v4 = *(v2 + 48);
  *(v3 + 400) = *(v2 + 32);
  *(v3 + 416) = v4;
  *(v3 + 432) = *(v2 + 64);
  *(v3 + 448) = *(v2 + 80);
  v5 = *(v2 + 16);
  *(v3 + 368) = *v2;
  *(v3 + 384) = v5;
  return MEMORY[0x2822009F8](sub_262436A08, 0, 0);
}

uint64_t sub_262436A08()
{
  v90 = v0;
  v2 = *(v0 + 1480);
  v3 = sub_262438894();
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = 0;
  if (v5)
  {
    v8 = 0;
    v9 = (v0 + 1384);
    v10 = v3 + 32;
    v11 = MEMORY[0x277D84F90];
    v82 = v0;
    while (v8 < *(v4 + 16))
    {
      v12 = *(v0 + 1472);
      sub_26243F8A4(v10, v0 + 16);
      v13 = *(v0 + 32);
      v14 = *(v0 + 40);
      *(v0 + 1384) = *(v0 + 16);
      *(v0 + 1400) = v13;
      *(v0 + 1408) = v14;
      v15 = swift_task_alloc();
      *(v15 + 16) = v9;
      v1 = sub_262432FD0(sub_26243F8DC, v15, v12);

      if (v1)
      {
        goto LABEL_3;
      }

      v16 = *(v0 + 1472);
      v17 = *(v0 + 88);

      v19 = v7;
      v20 = v11;
      v21 = v4;
      v22 = v5;
      v23 = v9;
      v24 = sub_26243E47C(v18);

      v1 = sub_262433174(v16, v24);
      v9 = v23;
      v5 = v22;
      v4 = v21;
      v11 = v20;
      v7 = v19;
      v0 = v82;

      if ((v1 & 1) == 0)
      {
LABEL_3:
        sub_26243F8FC(v0 + 16);
      }

      else
      {
        v25 = *(v82 + 64);
        v85 = *(v82 + 48);
        v86 = v25;
        v87 = *(v82 + 80);
        v88 = *(v82 + 96);
        v26 = *(v82 + 32);
        v83 = *(v82 + 16);
        v84 = v26;
        v89[0] = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26243CF44(0, *(v11 + 16) + 1, 1);
          v11 = v89[0];
        }

        v28 = *(v11 + 16);
        v27 = *(v11 + 24);
        v1 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          sub_26243CF44((v27 > 1), v28 + 1, 1);
          v11 = v89[0];
        }

        *(v11 + 16) = v1;
        v29 = v11 + 88 * v28;
        v30 = v84;
        *(v29 + 32) = v83;
        *(v29 + 48) = v30;
        v31 = v85;
        v32 = v86;
        v33 = v87;
        *(v29 + 112) = v88;
        *(v29 + 80) = v32;
        *(v29 + 96) = v33;
        *(v29 + 64) = v31;
      }

      ++v8;
      v10 += 88;
      if (v5 == v8)
      {
        v6 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_15:
  *(v0 + 1488) = v11;

  *(v0 + 1432) = MEMORY[0x277D84FA0];
  v35 = *(v11 + 16);
  *(v0 + 1496) = v35;
  if (v35)
  {
    *(v0 + 1512) = v6;
    *(v0 + 1504) = 0;
    v36 = *(v0 + 1488);
    if (*(v36 + 16))
    {
      sub_26243F8A4(v36 + 32, v0 + 280);
      sub_26243F92C(v0 + 312, v0 + 960);
      sub_26243F8FC(v0 + 280);
      sub_2623F3CA4(v0 + 960, v0 + 1184);
      sub_26243F964(v0 + 960);
      v37 = *(v0 + 1208);
      v38 = *(v0 + 1216);
      __swift_project_boxed_opaque_existential_1((v0 + 1184), v37);
      v39 = *(v38 + 48);
      v80 = (v39 + *v39);
      v40 = v39[1];
      v41 = swift_task_alloc();
      *(v0 + 1520) = v41;
      *v41 = v0;
      v41[1] = sub_262437348;
      v42 = *(v0 + 1464);

      return v80(v42, v37, v38);
    }

LABEL_58:
    __break(1u);
    return result;
  }

  v43 = *(v0 + 1464);
  v89[0] = v43;
  v44 = v6[2];

  if (v44)
  {
    *&v83 = v6[4];

    sub_26243934C(v89, &v83);

    if (v44 != 1)
    {
      v45 = v6 + 5;
      v46 = 1;
      while (v46 < v6[2])
      {
        *&v83 = *v45;

        sub_26243934C(v89, &v83);

        ++v46;
        ++v45;
        if (v44 == v46)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_25:
    v43 = v89[0];
  }

  v1 = 0xED000073726F7272;
  if (*(v43 + 16))
  {
    v47 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
    if (v48)
    {
      sub_26243FAE0(*(v43 + 56) + 40 * v47, v0 + 1264, &qword_27FF0C5F0, &qword_262463A90);
      *(v0 + 1256) = *(v0 + 1296);
      v49 = *(v0 + 1280);
      *(v0 + 1224) = *(v0 + 1264);
      *(v0 + 1240) = v49;
      if (*(v0 + 1248))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
        if (swift_dynamicCast())
        {
          v50 = *(v0 + 1456);
          goto LABEL_33;
        }
      }

      else
      {
        sub_2623F39E0(v0 + 1224, &qword_27FF0C5F0, &qword_262463A90);
      }
    }
  }

  v50 = MEMORY[0x277D84FA0];
LABEL_33:
  v51 = *(v0 + 1488);
  *(v0 + 1424) = sub_262439AA4(*(v0 + 1432), v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF0D390, "Η");
  sub_26243F994(&qword_2813BD3C0, &qword_27FF0D390, "Η");
  sub_2624629E8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v89[0] = v43;
  sub_262461260(&v83, 0x45736973656D656ELL, 0xED000073726F7272, isUniquelyReferenced_nonNull_native);
  v8 = v89[0];
  *(v0 + 1544) = v89[0];
  v53 = *(v51 + 16);
  v54 = *(v0 + 1488);
  if (v53)
  {
    v81 = v8;
    *&v83 = v6;
    sub_26243CF84(0, v53, 0);
    v55 = v83;
    v56 = v54 + 32;
    do
    {
      sub_26243F8A4(v56, v0 + 192);
      v58 = *(v0 + 192);
      v57 = *(v0 + 200);
      v59 = *(v0 + 208);
      v60 = *(v0 + 216);

      sub_26243F8FC(v0 + 192);
      *&v83 = v55;
      v62 = *(v55 + 16);
      v61 = *(v55 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_26243CF84((v61 > 1), v62 + 1, 1);
        v55 = v83;
      }

      *(v55 + 16) = v62 + 1;
      v63 = (v55 + 32 * v62);
      v63[4] = v58;
      v63[5] = v57;
      v63[6] = v59;
      v63[7] = v60;
      v56 += 88;
      --v53;
    }

    while (v53);
    v64 = *(v0 + 1488);

    v1 = 0xED000073726F7272;
    v8 = v81;
  }

  else
  {
    v65 = *(v0 + 1488);

    v55 = MEMORY[0x277D84F90];
  }

  v66 = *(v0 + 1496);
  *&v83 = *(v0 + 1472);

  sub_26243DD7C(v55);
  v67 = v83;
  *(v0 + 1552) = v83;
  if (v66)
  {
    v68 = *(v0 + 416);
    *(v0 + 136) = *(v0 + 400);
    *(v0 + 152) = v68;
    *(v0 + 168) = *(v0 + 432);
    *(v0 + 184) = *(v0 + 448);
    v69 = *(v0 + 384);
    *(v0 + 104) = *(v0 + 368);
    *(v0 + 120) = v69;
    v70 = swift_task_alloc();
    *(v0 + 1560) = v70;
    *v70 = v0;
    v70[1] = sub_262437C68;

    return sub_2624369C0(v8, v67);
  }

  v71 = *(v67 + 16);

  v72 = *(sub_262438894() + 16);

  v7 = 0x45736973656D656ELL;
  if (v71 != v72)
  {
    v9 = (v0 + 1440);
    if (!*(v8 + 16))
    {
      goto LABEL_52;
    }

    v73 = sub_2624414FC(0x45736973656D656ELL, 0xED000073726F7272);
    if ((v74 & 1) == 0)
    {
      goto LABEL_52;
    }

    v11 = v0 + 1304;
    sub_26243FAE0(*(v8 + 56) + 40 * v73, v0 + 1344, &qword_27FF0C5F0, &qword_262463A90);
    *(v0 + 1336) = *(v0 + 1376);
    v75 = *(v0 + 1360);
    *(v0 + 1304) = *(v0 + 1344);
    *(v0 + 1320) = v75;
    if (*(v0 + 1328))
    {
      if (swift_dynamicCast())
      {
        v76 = *(v0 + 1448);
LABEL_53:
        v77 = sub_26243EFD4(&unk_2874FBB30, v76);
        sub_2623F3C50(&unk_2874FBB50);
        *v9 = v77;
        sub_2624629E8();
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v89[0] = v8;
        sub_262461260(&v83, v7, v1, v78);
        v8 = v89[0];
        goto LABEL_54;
      }

LABEL_52:
      v76 = MEMORY[0x277D84FA0];
      goto LABEL_53;
    }

LABEL_51:
    sub_2623F39E0(v11, &qword_27FF0C5F0, &qword_262463A90);
    goto LABEL_52;
  }

LABEL_54:
  v79 = *(v0 + 8);

  return v79(v8);
}