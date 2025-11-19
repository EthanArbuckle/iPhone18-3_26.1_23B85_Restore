uint64_t sub_265A2FA08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_265A4684C();

    return sub_265A466CC();
  }

  else
  {
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    sub_265A466CC();
    sub_265A46CAC();
    swift_getWitnessTable();
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    return sub_265A466CC();
  }
}

uint64_t sub_265A2FB6C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_265A4684C();
    sub_265A466CC();
  }

  else
  {
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    sub_265A466CC();
    sub_265A46CAC();
    swift_getWitnessTable();
    sub_265A466EC();
    swift_getWitnessTable();
    sub_265A4681C();
    sub_265A466CC();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_265A2FD78(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A464DC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265A2FDE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A464DC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265A2FE9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    v8 = *(a3 + 32);
    v11 = sub_265A462EC();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_265A2FF50(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v6 = *(a4 + 16);
    v7 = *(a4 + 24);
    v8 = *(a4 + 32);
    v10 = sub_265A462EC();
    v11 = *(*(v10 - 8) + 56);
    v12 = v5 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  return result;
}

uint64_t sub_265A2FFFC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA10, &qword_265A479B0);
  sub_265A31D40(&qword_28002EA18, &qword_28002EA10, &qword_265A479B0);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA20, &qword_265A479B8);
  sub_265A466CC();
  swift_getOpaqueTypeConformance2();
  sub_265A31D40(&qword_28002EA28, &qword_28002EA20, &qword_265A479B8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_265A468AC();
  sub_265A466CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA30, &qword_265A479C0);
  sub_265A466CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA38, &qword_265A479C8);
  sub_265A466CC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA40, &qword_265A479D0);
  sub_265A466CC();
  swift_getOpaqueTypeConformance2();
  sub_265A36488(&qword_28002EA50, MEMORY[0x277CDE470]);
  swift_getWitnessTable();
  sub_265A31D40(&qword_28002EA58, &qword_28002EA30, &qword_265A479C0);
  swift_getWitnessTable();
  sub_265A31D40(&qword_28002EA60, &qword_28002EA38, &qword_265A479C8);
  swift_getWitnessTable();
  sub_265A31D40(qword_28002EA68, &qword_28002EA40, &qword_265A479D0);
  return swift_getWitnessTable();
}

uint64_t sub_265A30364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_265A4675C();
  *a1 = result;
  return result;
}

uint64_t sub_265A303C0()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265A303F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A4634C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265A30464(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A4634C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265A30518@<X0>(uint64_t a1@<X8>)
{
  result = sub_265A4671C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_265A3054C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_265A4672C();
}

uint64_t sub_265A3057C@<X0>(uint64_t a1@<X8>)
{
  result = sub_265A4673C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_265A305B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_265A4674C();
}

uint64_t sub_265A30608@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_265A4635C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265A30638(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_265A4636C();
}

uint64_t sub_265A30660(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A463CC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_265A306CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_265A463CC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_265A3073C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED10, &qword_265A47D50);
  sub_265A4679C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED08, &qword_265A47D48);
  sub_265A31D40(&qword_28002ED30, &qword_28002ED08, &qword_265A47D48);
  swift_getOpaqueTypeConformance2();
  sub_265A396E0(&qword_28002ED38, MEMORY[0x277CDDDF0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A30874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  v9 = *(a3 + 48);
  v5 = sub_265A4648C();
  return (*(*(v5 - 8) + 48))(a1, a2, v5);
}

uint64_t sub_265A308F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 32);
  v10 = *(a4 + 48);
  v6 = sub_265A4648C();
  return (*(*(v6 - 8) + 56))(a1, a2, a2, v6);
}

uint64_t sub_265A30970(void *a1)
{
  v1 = a1[1];
  v2 = a1[3];
  v3 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC90, &qword_265A47C88);
  sub_265A462EC();
  sub_265A46BEC();
  type metadata accessor for SettingsListItem();
  swift_getWitnessTable();
  sub_265A46ADC();
  sub_265A46AFC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED58, &qword_265A47E30);
  sub_265A466CC();
  sub_265A385FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A3AB7C();
  return swift_getWitnessTable();
}

uint64_t sub_265A30B24()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_265A30B74()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A30BB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_265A30BFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265A30C34()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265A30C74(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[5];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A30CC8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[4];
  v5 = *(a1 + 3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A30D2C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 5);
  sub_265A46CAC();
  v3 = (sub_265A46ABC() - 8);
  v4 = *(*v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v17 = *(*v3 + 64);
  v6 = sub_265A4655C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v16 = *(v7 + 64);
  v9 = *(v0 + 2);
  swift_unknownObjectRelease();
  v10 = *&v0[v5];

  v11 = *&v0[v5 + 8];

  v12 = v3[10];
  v13 = *(v1 - 8);
  if (!(*(v13 + 48))(&v0[v5 + v12], 1, v1))
  {
    (*(v13 + 8))(&v0[v5 + v12], v1);
  }

  v14 = (v5 + v17 + v8) & ~v8;
  (*(v7 + 8))(&v0[v14], v6);

  return MEMORY[0x2821FE8E8](v0, v14 + v16, v4 | v8 | 7);
}

uint64_t sub_265A30F10()
{
  v1 = *(v0 + 32);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + v4);

  v8 = *(v0 + v4 + 8);

  v9 = v2[10];
  v10 = *(v1 - 8);
  if (!(*(v10 + 48))(v0 + v4 + v9, 1, v1))
  {
    (*(v10 + 8))(v0 + v4 + v9, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

id sub_265A310C8()
{
  result = [objc_opt_self() imageDescriptorNamed_];
  qword_28002E8C8 = result;
  return result;
}

uint64_t SettingsIcon.init(iconRepresentation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A464DC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void sub_265A3118C(uint64_t a1@<X8>)
{
  v38 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E908, &qword_265A478A0);
  v1 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v3 = &v35 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E910, &qword_265A478A8);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v6 = &v35 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E918, &qword_265A478B0);
  v7 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E920, &qword_265A478B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = sub_265A4649C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A464CC();
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == *MEMORY[0x277D4D960])
  {
    (*(v16 + 96))(v19, v15);
    v21 = *v19;
    v22 = *(v19 + 1);
    v23 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v24 = sub_265A46B8C();

    [v23 initWithBundleIdentifier_];

    if (qword_28002E8C0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (v20 == *MEMORY[0x277D4D958])
  {
    (*(v16 + 96))(v19, v15);
    v25 = *v19;
    v26 = *(v19 + 1);
    v27 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
    v28 = sub_265A46B8C();

    [v27 initWithType_];

    if (qword_28002E8C0 == -1)
    {
LABEL_6:
      v29 = qword_28002E8C8;
      sub_265A465DC();
      (*(v11 + 16))(v6, v14, v10);
      swift_storeEnumTagMultiPayload();
      sub_265A31D40(&qword_28002E938, &qword_28002E920, &qword_265A478B8);
      sub_265A467EC();
      sub_265A31E0C(v9, v3);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E928, &qword_265A478C0);
      sub_265A31C90();
      sub_265A31D88();
      sub_265A467EC();
      sub_265A31E7C(v9);
      (*(v11 + 8))(v14, v10);
      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D4D968])
  {
    (*(v16 + 96))(v19, v15);
    v30 = *v19;
    v31 = *(v19 + 1);
    v32 = *(v19 + 2);
    v39 = sub_265A46A3C();
    v40 = 0;

    sub_265A467EC();
    v33 = v42;
    *v3 = v41;
    v3[8] = v33;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E928, &qword_265A478C0);
    sub_265A31C90();
    sub_265A31D88();
    sub_265A467EC();
  }

  else if (v20 == *MEMORY[0x277D4D970])
  {
    v39 = 0;
    v40 = 1;
    sub_265A467EC();
    v34 = v42;
    *v3 = v41;
    v3[8] = v34;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E928, &qword_265A478C0);
    sub_265A31C90();
    sub_265A31D88();
    sub_265A467EC();
  }

  else
  {
    sub_265A46DAC();
    __break(1u);
  }
}

uint64_t sub_265A31868(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265A4684C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v19 - v16;
  (*(v9 + 16))(v12, a1, a4);
  (*(v9 + 32))(v17, v12, a4);
  v17[*(v13 + 36)] = a2;
  MEMORY[0x266766A10](v17, a3, v13, v19);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_265A31A20()
{
  v1 = *v0;
  sub_265A46DDC();
  MEMORY[0x266766E10](v1);
  return sub_265A46DFC();
}

uint64_t sub_265A31A94()
{
  v1 = *v0;
  sub_265A46DDC();
  MEMORY[0x266766E10](v1);
  return sub_265A46DFC();
}

void *sub_265A31AEC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for SettingsIcon()
{
  result = qword_28002E8E0;
  if (!qword_28002E8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A31B94()
{
  result = sub_265A464DC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

unint64_t sub_265A31C90()
{
  result = qword_28002E930;
  if (!qword_28002E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002E918, &qword_265A478B0);
    sub_265A31D40(&qword_28002E938, &qword_28002E920, &qword_265A478B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002E930);
  }

  return result;
}

uint64_t sub_265A31D40(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_265A31D88()
{
  result = qword_28002E940;
  if (!qword_28002E940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002E928, &qword_265A478C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002E940);
  }

  return result;
}

uint64_t sub_265A31E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E918, &qword_265A478B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A31E7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002E918, &qword_265A478B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for PSSpecifierControllerLoadStyle()
{
  if (!qword_28156B5C8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28156B5C8);
    }
  }
}

unint64_t sub_265A31F38()
{
  result = qword_28156B5D0;
  if (!qword_28156B5D0)
  {
    type metadata accessor for PSSpecifierControllerLoadStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156B5D0);
  }

  return result;
}

uint64_t sub_265A31FCC(void *a1)
{
  v7 = *v1;
  v8 = *(v1 + 8);
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  sub_265A464FC();
  sub_265A4662C();
  sub_265A4661C();
  return v6;
}

uint64_t SettingsListItem.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_265A464FC();
  swift_getWitnessTable();
  *a2 = sub_265A4663C();
  *(a2 + 8) = v4 & 1;
  v5 = *(type metadata accessor for SettingsListItem() + 44);
  v6 = sub_265A462EC();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t SettingsListItem.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v136 = a2;
  v139 = sub_265A4643C();
  v144 = *(v139 - 8);
  v3 = *(v144 + 64);
  v4 = MEMORY[0x28223BE20](v139);
  v141 = v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v117 = v101 - v6;
  v135 = sub_265A467DC();
  v133 = *(v135 - 8);
  v7 = *(v133 + 8);
  v8 = MEMORY[0x28223BE20](v135);
  v134 = v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v132 = v101 - v10;
  v120 = sub_265A4686C();
  v119 = *(v120 - 8);
  v11 = *(v119 + 64);
  v12 = MEMORY[0x28223BE20](v120);
  v118 = v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v142 = *(v14 - 8);
  v15 = *(v142 + 64);
  MEMORY[0x28223BE20](v12);
  v137 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EA10, &qword_265A479B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v101 - v19;
  v21 = sub_265A31D40(&qword_28002EA18, &qword_28002EA10, &qword_265A479B0);
  v22 = *(a1 + 32);
  v156 = v17;
  v157 = v14;
  v103 = v17;
  v158 = v21;
  v159 = v22;
  v104 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v115 = *(OpaqueTypeMetadata2 - 8);
  v23 = *(v115 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v110 = v101 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA20, &qword_265A479B8);
  v25 = sub_265A466CC();
  v107 = v25;
  v114 = *(v25 - 8);
  v26 = *(v114 + 64);
  MEMORY[0x28223BE20](v25);
  v109 = v101 - v27;
  v156 = v17;
  v157 = v14;
  v158 = v21;
  v159 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v105 = OpaqueTypeConformance2;
  v29 = sub_265A31D40(&qword_28002EA28, &qword_28002EA20, &qword_265A479B8);
  v154 = OpaqueTypeConformance2;
  v155 = v29;
  WitnessTable = swift_getWitnessTable();
  v156 = v25;
  v157 = WitnessTable;
  v111 = MEMORY[0x277CDEAE8];
  v108 = swift_getOpaqueTypeMetadata2();
  v112 = *(v108 - 8);
  v30 = *(v112 + 64);
  MEMORY[0x28223BE20](v108);
  v32 = v101 - v31;
  sub_265A468AC();
  v33 = sub_265A466CC();
  v121 = *(v33 - 8);
  v34 = *(v121 + 64);
  v35 = MEMORY[0x28223BE20](v33);
  v102 = v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v116 = v101 - v38;
  MEMORY[0x28223BE20](v37);
  v138 = v101 - v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA30, &qword_265A479C0);
  v122 = v33;
  v40 = sub_265A466CC();
  v124 = *(v40 - 8);
  v41 = *(v124 + 64);
  MEMORY[0x28223BE20](v40);
  v123 = v101 - v42;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA38, &qword_265A479C8);
  v125 = v40;
  v43 = sub_265A466CC();
  v128 = *(v43 - 8);
  v44 = *(v128 + 64);
  MEMORY[0x28223BE20](v43);
  v140 = v101 - v45;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EA40, &qword_265A479D0);
  v129 = v43;
  v131 = sub_265A466CC();
  v130 = *(v131 - 8);
  v46 = *(v130 + 64);
  v47 = MEMORY[0x28223BE20](v131);
  v126 = v101 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v127 = v101 - v49;
  v50 = a1;
  sub_265A33260(a1, v20);
  v145 = *(a1 + 44);
  v101[1] = *(a1 + 24);
  v143 = sub_265A462EC();
  v51 = v137;
  sub_265A462BC();
  v52 = v110;
  v53 = v14;
  sub_265A31868(v51, 1, v103, v14, v104);
  v54 = *(v142 + 8);
  v142 += 8;
  v104 = v54;
  v54(v51, v14);
  sub_265A3670C(v20, &qword_28002EA10, &qword_265A479B0);
  sub_265A35350(v50);
  v55 = v109;
  v56 = OpaqueTypeMetadata2;
  sub_265A35630();
  (*(v115 + 8))(v52, v56);
  v57 = v118;
  sub_265A4685C();
  v58 = v32;
  v59 = v107;
  v60 = WitnessTable;
  sub_265A4696C();
  (*(v119 + 8))(v57, v120);
  (*(v114 + 8))(v55, v59);
  v61 = v137;
  sub_265A462BC();
  sub_265A4652C();
  v104(v61, v53);
  v156 = v59;
  v157 = v60;
  v62 = swift_getOpaqueTypeConformance2();
  v63 = v102;
  v64 = v108;
  v120 = v62;
  sub_265A4697C();

  (*(v112 + 8))(v58, v64);
  v65 = v117;
  sub_265A462DC();
  v66 = v141;
  sub_265A463EC();
  v67 = sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920]);
  v68 = v65;
  v69 = v139;
  v142 = v67;
  LOBYTE(v17) = sub_265A46CCC();
  v70 = v144 + 8;
  v71 = *(v144 + 8);
  v71(v66, v69);
  v72 = v68;
  v144 = v70;
  v137 = v71;
  v71(v68, v69);
  v73 = v132;
  if (v17)
  {
    sub_265A467CC();
  }

  else
  {
    sub_265A467BC();
  }

  v74 = v116;
  v75 = v122;
  sub_265A466BC();
  v76 = *(v133 + 1);
  v77 = v135;
  v76(v73, v135);
  v78 = *(v121 + 8);
  v78(v63, v75);
  v133 = v78;
  v79 = v134;
  sub_265A467AC();
  sub_265A466BC();
  v76(v79, v77);
  v78(v74, v75);
  sub_265A462DC();
  v80 = v141;
  sub_265A463FC();
  v81 = v139;
  sub_265A46CCC();
  v82 = v137;
  (v137)(v80, v81);
  v82(v72, v81);
  v83 = sub_265A36488(&qword_28002EA50, MEMORY[0x277CDE470]);
  v152 = v120;
  v153 = v83;
  v135 = MEMORY[0x277CDFAD8];
  v84 = swift_getWitnessTable();
  v85 = v123;
  v86 = v138;
  sub_265A469DC();
  v133(v86, v75);
  sub_265A462DC();
  sub_265A4640C();
  sub_265A46CCC();
  v82(v80, v81);
  v82(v72, v81);
  v87 = sub_265A31D40(&qword_28002EA58, &qword_28002EA30, &qword_265A479C0);
  v150 = v84;
  v151 = v87;
  v88 = v125;
  v138 = swift_getWitnessTable();
  sub_265A356DC();
  (*(v124 + 8))(v85, v88);
  sub_265A462DC();
  sub_265A4641C();
  LOBYTE(v86) = sub_265A46CCC();
  v82(v80, v81);
  v82(v72, v81);
  if (v86)
  {
    v156 = sub_265A46A0C();
  }

  v156 = sub_265A4666C();
  v89 = sub_265A31D40(&qword_28002EA60, &qword_28002EA38, &qword_265A479C8);
  v148 = v138;
  v149 = v89;
  v90 = v129;
  v91 = swift_getWitnessTable();
  v92 = v126;
  v93 = v140;
  sub_265A4694C();

  (*(v128 + 8))(v93, v90);
  v94 = sub_265A31D40(qword_28002EA68, &qword_28002EA40, &qword_265A479D0);
  v146 = v91;
  v147 = v94;
  v95 = v131;
  swift_getWitnessTable();
  v96 = v130;
  v97 = *(v130 + 16);
  v98 = v127;
  v97(v127, v92, v95);
  v99 = *(v96 + 8);
  v99(v92, v95);
  v97(v136, v98, v95);
  return (v99)(v98, v95);
}

uint64_t sub_265A33260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v214 = a2;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB10, &qword_265A47AA0);
  v3 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v163 = &v158 - v4;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB18, &qword_265A47AA8);
  v5 = *(*(v181 - 8) + 64);
  MEMORY[0x28223BE20](v181);
  v182 = (&v158 - v6);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB20, &qword_265A47AB0);
  v7 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v184 = &v158 - v8;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB28, &qword_265A47AB8);
  v164 = *(v183 - 8);
  v9 = *(v164 + 64);
  MEMORY[0x28223BE20](v183);
  v162 = &v158 - v10;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB30, &qword_265A47AC0);
  v159 = *(v186 - 8);
  v11 = *(v159 + 64);
  MEMORY[0x28223BE20](v186);
  v158 = &v158 - v12;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB38, &qword_265A47AC8);
  v161 = *(v189 - 8);
  v13 = *(v161 + 64);
  MEMORY[0x28223BE20](v189);
  v160 = &v158 - v14;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB40, &qword_265A47AD0);
  v15 = *(*(v180 - 8) + 64);
  MEMORY[0x28223BE20](v180);
  v185 = &v158 - v16;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB48, &qword_265A47AD8);
  v17 = *(*(v208 - 8) + 64);
  MEMORY[0x28223BE20](v208);
  v188 = &v158 - v18;
  v19 = *(a1 + 16);
  v20 = sub_265A46CAC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v190 = &v158 - v22;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB50, &qword_265A47AE0);
  v171 = *(v187 - 8);
  v23 = *(v171 + 64);
  MEMORY[0x28223BE20](v187);
  v170 = &v158 - v24;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB58, &qword_265A47AE8);
  v178 = *(v212 - 8);
  v25 = *(v178 + 64);
  v26 = MEMORY[0x28223BE20](v212);
  v177 = &v158 - v27;
  v179 = a1;
  v28 = *(a1 - 8);
  a1 -= 8;
  v176 = v28;
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v174 = v30;
  v175 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB60, &qword_265A47AF0);
  v167 = *(v203 - 8);
  v31 = *(v167 + 64);
  MEMORY[0x28223BE20](v203);
  v166 = &v158 - v32;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB68, &qword_265A47AF8);
  v169 = *(v206 - 8);
  v33 = *(v169 + 64);
  MEMORY[0x28223BE20](v206);
  v168 = &v158 - v34;
  v200 = sub_265A4643C();
  v199 = *(v200 - 8);
  v35 = *(v199 + 64);
  v36 = MEMORY[0x28223BE20](v200);
  v197 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v198 = &v158 - v38;
  v201 = sub_265A4634C();
  v192 = *(v201 - 8);
  v39 = *(v192 + 64);
  v40 = MEMORY[0x28223BE20](v201);
  v191 = &v158 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v205 = &v158 - v42;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB70, &qword_265A47B00);
  v43 = *(*(v217 - 8) + 64);
  MEMORY[0x28223BE20](v217);
  v215 = &v158 - v44;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB78, &qword_265A47B08);
  v45 = *(*(v210 - 8) + 64);
  MEMORY[0x28223BE20](v210);
  v209 = &v158 - v46;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB80, &qword_265A47B10);
  v47 = *(*(v202 - 8) + 64);
  MEMORY[0x28223BE20](v202);
  v49 = &v158 - v48;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB88, &qword_265A47B18);
  v50 = *(*(v211 - 8) + 64);
  MEMORY[0x28223BE20](v211);
  v52 = &v158 - v51;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB90, &qword_265A47B20);
  v53 = *(*(v216 - 8) + 64);
  MEMORY[0x28223BE20](v216);
  v207 = &v158 - v54;
  v204 = type metadata accessor for SettingsListToggle();
  v55 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v195 = &v158 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_265A463CC();
  v57 = *(v213 - 1);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v213);
  v60 = &v158 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_265A4644C();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = (&v158 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = *(a1 + 52);
  v67 = *(a1 + 32);
  v68 = *(a1 + 40);
  v194 = v19;
  v172 = v67;
  v193 = v68;
  v196 = sub_265A462EC();
  sub_265A462CC();
  v69 = (*(v62 + 88))(v65, v61);
  if (v69 == *MEMORY[0x277D4D940])
  {
    (*(v62 + 96))(v65, v61);
    v70 = v57;
    v71 = *(v57 + 32);
    v72 = v213;
    v71(v60, v65, v213);
    v73 = v195;
    (*(v70 + 16))(v195, v60, v72);
    sub_265A3676C(v73, v49);
    swift_storeEnumTagMultiPayload();
    sub_265A36488(&qword_28002EBE8, type metadata accessor for SettingsListToggle);
    v74 = sub_265A31D40(&qword_28002EBF0, &qword_28002EB60, &qword_265A47AF0);
    v75 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8);
    v224 = v203;
    v225 = v212;
    v226 = v74;
    v227 = v75;
    swift_getOpaqueTypeConformance2();
    sub_265A467EC();
    sub_265A366A4(v52, v209, &qword_28002EB88, &qword_265A47B18);
    swift_storeEnumTagMultiPayload();
    sub_265A35FEC();
    sub_265A36178();
    v76 = v207;
    sub_265A467EC();
    sub_265A3670C(v52, &qword_28002EB88, &qword_265A47B18);
    sub_265A366A4(v76, v215, &qword_28002EB90, &qword_265A47B20);
    swift_storeEnumTagMultiPayload();
    sub_265A35F60();
    sub_265A36300();
    sub_265A467EC();
    sub_265A3670C(v76, &qword_28002EB90, &qword_265A47B20);
    sub_265A367D0(v73);
    return (*(v70 + 8))(v60, v213);
  }

  v195 = v49;
  v213 = v52;
  v78 = v69 == *MEMORY[0x277D4D930];
  v173 = v65;
  if (v78)
  {
    v79 = v65;
    (*(v62 + 96))(v65, v61);
    v80 = v192;
    (*(v192 + 16))(v205, v79, v201);
    v81 = v219;
    v82 = v198;
    sub_265A462DC();
    v83 = v197;
    sub_265A463DC();
    sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920]);
    v84 = v200;
    LOBYTE(v79) = sub_265A46CCC();
    v85 = *(v199 + 8);
    v85(v83, v84);
    v85(v82, v84);
    if (v79)
    {
      v86 = v176;
      v87 = v175;
      v88 = v179;
      (*(v176 + 16))(v175, v81, v179);
      v89 = (*(v86 + 80) + 40) & ~*(v86 + 80);
      v90 = swift_allocObject();
      v91 = v172;
      *(v90 + 2) = v194;
      *(v90 + 3) = v91;
      *(v90 + 4) = v193;
      v92 = (*(v86 + 32))(&v90[v89], v87, v88);
      MEMORY[0x28223BE20](v92);
      *(&v158 - 2) = v205;
      type metadata accessor for SettingsListLabel();
      sub_265A36488(&qword_28002EC20, type metadata accessor for SettingsListLabel);
      v93 = v166;
      sub_265A46A5C();
      v94 = v80;
      v95 = v177;
      sub_265A467FC();
      v96 = sub_265A31D40(&qword_28002EBF0, &qword_28002EB60, &qword_265A47AF0);
      v97 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8);
      v98 = v168;
      v99 = v203;
      v100 = v212;
      sub_265A4690C();
      (*(v178 + 8))(v95, v100);
      (*(v167 + 8))(v93, v99);
      v101 = v169;
      v102 = v206;
      (*(v169 + 16))(v195, v98, v206);
      swift_storeEnumTagMultiPayload();
      sub_265A36488(&qword_28002EBE8, type metadata accessor for SettingsListToggle);
      v224 = v99;
      v225 = v100;
      v226 = v96;
      v227 = v97;
      swift_getOpaqueTypeConformance2();
      v103 = v213;
      sub_265A467EC();
      sub_265A366A4(v103, v209, &qword_28002EB88, &qword_265A47B18);
      swift_storeEnumTagMultiPayload();
      sub_265A35FEC();
      sub_265A36178();
      v104 = v207;
      sub_265A467EC();
      sub_265A3670C(v103, &qword_28002EB88, &qword_265A47B18);
      sub_265A366A4(v104, v215, &qword_28002EB90, &qword_265A47B20);
      swift_storeEnumTagMultiPayload();
      sub_265A35F60();
      sub_265A36300();
      sub_265A467EC();
      sub_265A3670C(v104, &qword_28002EB90, &qword_265A47B20);
      (*(v101 + 8))(v98, v102);
      v105 = *(v94 + 8);
      v106 = v201;
      v105(v205, v201);
      return (v105)(v173, v106);
    }

    else
    {
      v140 = *(v80 + 8);
      v206 = v80 + 8;
      v213 = v140;
      v141 = v201;
      (v140)(v205, v201);
      v142 = v191;
      (*(v80 + 32))();
      v143 = v190;
      sub_265A462BC();
      v144 = (*(*(v194 - 8) + 56))(v143, 0, 1, v194);
      MEMORY[0x28223BE20](v144);
      *(&v158 - 2) = v142;
      type metadata accessor for SettingsListLabel();
      sub_265A36488(&qword_28002EC20, type metadata accessor for SettingsListLabel);
      v145 = v170;
      sub_265A4668C();
      v146 = v171;
      v147 = v187;
      (*(v171 + 16))(v185, v145, v187);
      swift_storeEnumTagMultiPayload();
      sub_265A31D40(&qword_28002EC08, &qword_28002EB50, &qword_265A47AE0);
      v148 = sub_265A31D40(&qword_28002EC10, &qword_28002EB30, &qword_265A47AC0);
      v149 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8);
      v224 = v186;
      v225 = v212;
      v226 = v148;
      v227 = v149;
      swift_getOpaqueTypeConformance2();
      v150 = v188;
      sub_265A467EC();
      sub_265A366A4(v150, v209, &qword_28002EB48, &qword_265A47AD8);
      swift_storeEnumTagMultiPayload();
      sub_265A35FEC();
      sub_265A36178();
      v151 = v207;
      sub_265A467EC();
      sub_265A3670C(v150, &qword_28002EB48, &qword_265A47AD8);
      sub_265A366A4(v151, v215, &qword_28002EB90, &qword_265A47B20);
      swift_storeEnumTagMultiPayload();
      sub_265A35F60();
      sub_265A36300();
      sub_265A467EC();
      sub_265A3670C(v151, &qword_28002EB90, &qword_265A47B20);
      (*(v146 + 8))(v145, v147);
      return (v213)(v191, v141);
    }
  }

  else
  {
    if (v69 == *MEMORY[0x277D4D938])
    {
      (*(v62 + 96))(v65, v61);
      sub_265A35C74(v65, &v224);
      v107 = v219;
      v108 = v198;
      sub_265A462DC();
      v109 = v197;
      sub_265A4642C();
      sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920]);
      v110 = v200;
      v111 = sub_265A46CCC();
      v112 = *(v199 + 8);
      v112(v109, v110);
      v112(v108, v110);
      if (v111 & 1) != 0 && (sub_265A462DC(), sub_265A463DC(), v113 = sub_265A46CCC(), v112(v109, v110), v112(v108, v110), (v113))
      {
        v114 = v176;
        v115 = v175;
        v116 = v179;
        (*(v176 + 16))(v175, v107, v179);
        v117 = (*(v114 + 80) + 40) & ~*(v114 + 80);
        v118 = swift_allocObject();
        v119 = v172;
        *(v118 + 2) = v194;
        *(v118 + 3) = v119;
        *(v118 + 4) = v193;
        v120 = (*(v114 + 32))(&v118[v117], v115, v116);
        MEMORY[0x28223BE20](v120);
        *(&v158 - 2) = &v224;
        v121 = v158;
        sub_265A46A5C();
        v122 = v177;
        sub_265A467FC();
        v123 = sub_265A31D40(&qword_28002EC10, &qword_28002EB30, &qword_265A47AC0);
        v124 = sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8);
        v125 = v160;
        v126 = v186;
        v127 = v212;
        sub_265A4690C();
        (*(v178 + 8))(v122, v127);
        (*(v159 + 8))(v121, v126);
        v128 = v161;
        v129 = v189;
        (*(v161 + 16))(v185, v125, v189);
        swift_storeEnumTagMultiPayload();
        sub_265A31D40(&qword_28002EC08, &qword_28002EB50, &qword_265A47AE0);
        v220 = v126;
        v221 = v127;
        v222 = v123;
        v223 = v124;
        swift_getOpaqueTypeConformance2();
        v130 = v188;
        sub_265A467EC();
        sub_265A366A4(v130, v209, &qword_28002EB48, &qword_265A47AD8);
        swift_storeEnumTagMultiPayload();
        sub_265A35FEC();
        sub_265A36178();
        v131 = v207;
        sub_265A467EC();
        sub_265A3670C(v130, &qword_28002EB48, &qword_265A47AD8);
        sub_265A366A4(v131, v215, &qword_28002EB90, &qword_265A47B20);
        swift_storeEnumTagMultiPayload();
        sub_265A35F60();
        sub_265A36300();
        sub_265A467EC();
        sub_265A3670C(v131, &qword_28002EB90, &qword_265A47B20);
        (*(v128 + 8))(v125, v129);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(&v224);
        sub_265A35C74(v173, &v224);
        sub_265A462DC();
        sub_265A4642C();
        v132 = sub_265A46CCC();
        v112(v109, v110);
        v112(v108, v110);
        if ((v132 & 1) == 0)
        {
          __swift_destroy_boxed_opaque_existential_1(&v224);
          sub_265A35D24(v173, &v224);
          v152 = v227;
          v153 = v228;
          v154 = __swift_project_boxed_opaque_existential_1(&v224, v227);
          v155 = v215;
          if (qword_28002E8D0 != -1)
          {
            v157 = v154;
            swift_once();
            v154 = v157;
          }

          sub_265A36860(v154, v152, v153);
          sub_265A35D80();
          *v182 = sub_265A46A7C();
          swift_storeEnumTagMultiPayload();
          sub_265A31D40(&qword_28002EBD0, &qword_28002EB28, &qword_265A47AB8);

          v156 = v184;
          sub_265A467EC();
          sub_265A35EF0(v156, v155);
          swift_storeEnumTagMultiPayload();
          sub_265A35F60();
          sub_265A36300();
          sub_265A467EC();

          sub_265A363B8(v156);
          v139 = &v224;
          return __swift_destroy_boxed_opaque_existential_1(v139);
        }

        v133 = v190;
        sub_265A462BC();
        v134 = (*(*(v194 - 8) + 56))(v133, 0, 1, v194);
        MEMORY[0x28223BE20](v134);
        *(&v158 - 2) = &v224;
        v135 = v162;
        sub_265A4668C();
        v136 = v164;
        v137 = v183;
        (*(v164 + 16))(v182, v135, v183);
        swift_storeEnumTagMultiPayload();
        sub_265A31D40(&qword_28002EBD0, &qword_28002EB28, &qword_265A47AB8);
        v138 = v184;
        sub_265A467EC();
        sub_265A35EF0(v138, v215);
        swift_storeEnumTagMultiPayload();
        sub_265A35F60();
        sub_265A36300();
        sub_265A467EC();
        sub_265A363B8(v138);
        (*(v136 + 8))(v135, v137);
      }

      __swift_destroy_boxed_opaque_existential_1(&v224);
      v139 = v173;
      return __swift_destroy_boxed_opaque_existential_1(v139);
    }

    result = sub_265A46DAC();
    __break(1u);
  }

  return result;
}

BOOL sub_265A35350(uint64_t a1)
{
  v2 = sub_265A4643C();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v25[0] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v25 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v25 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v25 - v14;
  v16 = *(a1 + 44);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  sub_265A462EC();
  sub_265A462DC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EAF8, &qword_265A47A90);
  v20 = *(v3 + 72);
  v21 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_265A479A0;
  sub_265A463DC();
  sub_265A463FC();
  v25[1] = v22;
  sub_265A36488(&qword_28002EA48, MEMORY[0x277D4D920]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB00, &qword_265A47A98);
  sub_265A31D40(&qword_28002EB08, &qword_28002EB00, &qword_265A47A98);
  sub_265A46CFC();
  (*(v4 + 16))(v25[0], v15, v2);
  sub_265A46CDC();
  LOBYTE(v22) = sub_265A46CEC();
  v23 = *(v4 + 8);
  v23(v10, v2);
  v23(v13, v2);
  v23(v15, v2);
  return (v22 & 1) == 0;
}

uint64_t sub_265A35630()
{
  sub_265A4687C();
  sub_265A36488(&qword_28002EAF0, MEMORY[0x277CDE390]);
  return sub_265A469CC();
}

uint64_t sub_265A356DC()
{
  swift_getKeyPath();
  sub_265A4691C();
}

uint64_t sub_265A35750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_265A4634C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_265A35830(uint64_t a1, uint64_t a2)
{
  v3 = sub_265A46CAC();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = type metadata accessor for SettingsListItem();
  sub_265A31FCC(v7);
  v8 = *(v7 + 44);
  sub_265A462EC();
  sub_265A462BC();
  (*(*(a2 - 8) + 56))(v6, 0, 1, a2);
  sub_265A464EC();
}

uint64_t sub_265A359BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB10, &qword_265A47AA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1[3];
  v6 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, v7);
  if (qword_28002E8D0 != -1)
  {
    v11 = v8;
    swift_once();
    v8 = v11;
  }

  sub_265A36860(v8, v7, v6);
  sub_265A35D80();
  v9 = sub_265A46A7C();

  *a2 = v9;
  return result;
}

uint64_t sub_265A35B40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A35B94(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  sub_265A464FC();
  result = sub_265A4662C();
  if (v5 <= 0x3F)
  {
    result = sub_265A462EC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_265A35C74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_265A35D24(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_265A35D80()
{
  result = qword_28002EB98;
  if (!qword_28002EB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB10, &qword_265A47AA0);
    sub_265A35E0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EB98);
  }

  return result;
}

unint64_t sub_265A35E0C()
{
  result = qword_28002EBA0;
  if (!qword_28002EBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EBA8, &qword_265A47B28);
    sub_265A31D40(&qword_28002EBB0, &qword_28002EBB8, &unk_265A47B30);
    sub_265A31D40(&qword_28002EBC0, &qword_28002EBC8, &unk_265A47BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EBA0);
  }

  return result;
}

uint64_t sub_265A35EF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB20, &qword_265A47AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265A35F60()
{
  result = qword_28002EBD8;
  if (!qword_28002EBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB90, &qword_265A47B20);
    sub_265A35FEC();
    sub_265A36178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EBD8);
  }

  return result;
}

unint64_t sub_265A35FEC()
{
  result = qword_28002EBE0;
  if (!qword_28002EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB88, &qword_265A47B18);
    sub_265A36488(&qword_28002EBE8, type metadata accessor for SettingsListToggle);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB60, &qword_265A47AF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB58, &qword_265A47AE8);
    sub_265A31D40(&qword_28002EBF0, &qword_28002EB60, &qword_265A47AF0);
    sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EBE0);
  }

  return result;
}

unint64_t sub_265A36178()
{
  result = qword_28002EC00;
  if (!qword_28002EC00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB48, &qword_265A47AD8);
    sub_265A31D40(&qword_28002EC08, &qword_28002EB50, &qword_265A47AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB30, &qword_265A47AC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB58, &qword_265A47AE8);
    sub_265A31D40(&qword_28002EC10, &qword_28002EB30, &qword_265A47AC0);
    sub_265A31D40(&qword_28002EBF8, &qword_28002EB58, &qword_265A47AE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EC00);
  }

  return result;
}

unint64_t sub_265A36300()
{
  result = qword_28002EC18;
  if (!qword_28002EC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EB20, &qword_265A47AB0);
    sub_265A31D40(&qword_28002EBD0, &qword_28002EB28, &qword_265A47AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002EC18);
  }

  return result;
}

uint64_t sub_265A363B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EB20, &qword_265A47AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A36488(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for SettingsListItem() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(*v4 + 64);
  v8 = *&v0[v6];

  v9 = v4[13];
  v10 = sub_265A462EC();
  (*(*(v10 - 8) + 8))(&v0[v6 + v9], v10);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_265A365F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for SettingsListItem() - 8);
  return sub_265A35830(v0 + ((*(v4 + 80) + 40) & ~*(v4 + 80)), v1);
}

uint64_t sub_265A366A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265A3670C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_265A3676C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsListToggle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A367D0(uint64_t a1)
{
  v2 = type metadata accessor for SettingsListToggle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A36860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EBA8, &qword_265A47B28);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v27[-1] - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC40, &unk_265A47BB0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v27[-1] - v13);
  DynamicType = swift_getDynamicType();
  swift_beginAccess();
  v16 = *(v3 + 16);
  if (*(v16 + 16) && (v17 = sub_265A37080(DynamicType), (v18 & 1) != 0))
  {
    v19 = *(v16 + 56) + 16 * v17;
    v21 = *v19;
    v20 = *(v19 + 8);
    swift_endAccess();
    v27[3] = a2;
    v27[4] = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, a1, a2);

    v21(&v26, v27);

    v23 = v26;
    __swift_destroy_boxed_opaque_existential_1(v27);
    *v14 = v23;
    swift_storeEnumTagMultiPayload();
    sub_265A35E0C();
    return sub_265A467EC();
  }

  else
  {
    v25 = swift_endAccess();
    MEMORY[0x28223BE20](v25);
    *(&v26 - 4) = a2;
    *(&v26 - 3) = a3;
    *(&v26 - 2) = a1;
    sub_265A46A4C();
    *&v10[*(v7 + 36)] = sub_265A46A1C();
    sub_265A377C0(v10, v14);
    swift_storeEnumTagMultiPayload();
    sub_265A35E0C();
    sub_265A467EC();
    return sub_265A37830(v10);
  }
}

uint64_t SettingsListItemCustomViewRegistry.register<A, B>(_:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a2;
  v16[7] = a3;
  swift_beginAccess();

  v17 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v8 + 16);
  *(v8 + 16) = 0x8000000000000000;
  sub_265A373A4(sub_265A36E4C, v16, a1, isUniquelyReferenced_nonNull_native);
  *(v8 + 16) = v20;
  return swift_endAccess();
}

unint64_t sub_265A36C30()
{
  type metadata accessor for SettingsListItemCustomViewRegistry();
  v0 = swift_allocObject();
  result = sub_265A376A4(MEMORY[0x277D84F90]);
  *(v0 + 16) = result;
  qword_28002EC28 = v0;
  return result;
}

uint64_t static SettingsListItemCustomViewRegistry.shared.getter()
{
  if (qword_28002E8D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_265A36CD4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v9);
  sub_265A35C74(v14, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC38, &unk_265A47BA0);
  swift_dynamicCast();
  a2(v11);
  (*(v7 + 8))(v11, a3);
  result = sub_265A46A7C();
  *a4 = result;
  return result;
}

uint64_t sub_265A36E4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 56);
  return sub_265A36CD4(a1, *(v2 + 48), *(v2 + 16), a2);
}

uint64_t sub_265A36E5C@<X0>(uint64_t a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A46D2C();

  swift_getDynamicType();
  v2 = sub_265A46E0C();
  MEMORY[0x266766BE0](v2);

  *a1 = 0xD000000000000017;
  *(a1 + 8) = 0x8000000265A49A60;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_265A36F7C@<X0>(uint64_t *a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_265A46A2C();

  *a1 = v2;
  return result;
}

uint64_t SettingsListItemCustomViewRegistry.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t SettingsListItemCustomViewRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_265A37080(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_265A46DCC();

  return sub_265A370C4(a1, v4);
}

unint64_t sub_265A370C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_265A37130(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC30, &qword_265A47B98);
  result = sub_265A46D8C();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      result = sub_265A46DCC();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_265A373A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_265A37080(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_265A37130(v16, a4 & 1);
      v20 = *v5;
      result = sub_265A37080(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_265A46DBC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_265A37540();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + 8 * result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

void *sub_265A37540()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC30, &qword_265A47B98);
  v2 = *v0;
  v3 = sub_265A46D7C();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

unint64_t sub_265A376A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC30, &qword_265A47B98);
  v3 = sub_265A46D9C();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_265A37080(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_265A37080(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_265A377B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_265A36E5C(a1);
}

uint64_t sub_265A377C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EBA8, &qword_265A47B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A37830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EBA8, &qword_265A47B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t SettingsListLabel.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A4634C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_265A3796C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v44 = sub_265A464DC();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v44);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC68, &qword_265A47C60);
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC70, &qword_265A47C68);
  v13 = *(v12 - 8);
  v38 = v12 - 8;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v37 = &v36 - v15;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC78, &qword_265A47C70);
  v16 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v39 = &v36 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC80, &qword_265A47C78);
  v45 = *(v18 - 8);
  v46 = v18;
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v40 = &v36 - v20;
  v49 = v1;
  v48 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC88, &qword_265A47C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC90, &qword_265A47C88);
  sub_265A31D40(&qword_28002EC98, &qword_28002EC88, &qword_265A47C80);
  sub_265A385FC();
  sub_265A4667C();
  KeyPath = swift_getKeyPath();
  sub_265A4632C();
  sub_265A464BC();
  v22 = MEMORY[0x2667664D0](v8, v6);
  v23 = *(v2 + 8);
  v24 = v44;
  v23(v6, v44);
  v23(v8, v24);
  v25 = v37;
  (*(v41 + 32))(v37, v11, v43);
  v26 = v25 + *(v38 + 44);
  *v26 = KeyPath;
  *(v26 + 8) = 0;
  *(v26 + 16) = (v22 & 1) == 0;
  v27 = swift_getKeyPath();
  sub_265A4632C();
  sub_265A464BC();
  LOBYTE(KeyPath) = MEMORY[0x2667664D0](v8, v6);
  v23(v6, v24);
  v23(v8, v24);
  v28 = v39;
  sub_265A38678(v25, v39);
  v29 = v28 + *(v42 + 36);
  *v29 = v27;
  *(v29 + 8) = 0;
  *(v29 + 16) = (KeyPath & 1) == 0;
  sub_265A4630C();
  sub_265A38718(&qword_28002ECA8, &qword_28002EC78, &qword_265A47C70, sub_265A386E8);
  v30 = v40;
  sub_265A469AC();
  sub_265A38880(v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ECD0, &qword_265A47CF8);
  v32 = v47;
  v33 = (v47 + *(v31 + 36));
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ECD8, &qword_265A47D00) + 28);
  sub_265A4669C();
  *v33 = swift_getKeyPath();
  return (*(v45 + 32))(v32, v30, v46);
}

uint64_t sub_265A37EBC@<X0>(uint64_t *a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((sub_265A462FC() & 1) != 0 || (sub_265A4631C(), !v2))
  {

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v14 = 0;
  }

  else
  {
    sub_265A38A18();
    v3 = sub_265A468DC();
    v5 = v4;
    v7 = v6;
    sub_265A4683C();
    v8 = sub_265A468BC();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_265A38A6C(v3, v5, v7 & 1);

    v16 = v12 & 1;
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = v16;
  a1[3] = v14;
  return result;
}

uint64_t sub_265A38030()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ECE0, &qword_265A47D38);
  type metadata accessor for SettingsIcon();
  sub_265A31D40(&qword_28002ECE8, &qword_28002ECE0, &qword_265A47D38);
  sub_265A389C0();
  sub_265A46A4C();
}

uint64_t sub_265A381BC@<X0>(uint64_t a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4633C();
  sub_265A38A18();
  v2 = sub_265A468DC();
  v4 = v3;
  v6 = v5;
  sub_265A4682C();
  v7 = sub_265A468BC();
  v9 = v8;
  v28 = v10;
  v12 = v11;
  sub_265A38A6C(v2, v4, v6 & 1);

  if ((sub_265A462FC() & 1) != 0 && (sub_265A4631C(), v13))
  {
    v14 = sub_265A468DC();
    v16 = v15;
    v18 = v17;
    sub_265A4683C();
    v19 = sub_265A468BC();
    v21 = v20;
    v27 = v22;
    v24 = v23;
    sub_265A38A6C(v14, v16, v18 & 1);

    v25 = v27 & 1;
    sub_265A38A7C(v19, v21, v27 & 1);
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v25 = 0;
    v24 = 0;
  }

  sub_265A38A7C(v7, v9, v28 & 1);

  sub_265A38A8C(v19, v21, v25, v24);
  sub_265A38AD0(v19, v21, v25, v24);
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v28 & 1;
  *(a1 + 24) = v12;
  *(a1 + 32) = v19;
  *(a1 + 40) = v21;
  *(a1 + 48) = v25;
  *(a1 + 56) = v24;
  sub_265A38AD0(v19, v21, v25, v24);
  sub_265A38A6C(v7, v9, v28 & 1);
}

uint64_t sub_265A38458()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4632C();
}

uint64_t type metadata accessor for SettingsListLabel()
{
  result = qword_28002EC48;
  if (!qword_28002EC48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A38580()
{
  result = sub_265A4634C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_265A385FC()
{
  result = qword_28002ECA0;
  if (!qword_28002ECA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC90, &qword_265A47C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECA0);
  }

  return result;
}

uint64_t sub_265A38678(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC70, &qword_265A47C68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A38718(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_265A31D40(&qword_28002ECC0, &qword_28002ECC8, &qword_265A47CF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265A387C8()
{
  result = qword_28002ECB8;
  if (!qword_28002ECB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC68, &qword_265A47C60);
    sub_265A31D40(&qword_28002EC98, &qword_28002EC88, &qword_265A47C80);
    sub_265A385FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECB8);
  }

  return result;
}

uint64_t sub_265A38880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EC78, &qword_265A47C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265A388E8(uint64_t a1)
{
  v2 = sub_265A466AC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_265A4670C();
}

unint64_t sub_265A389C0()
{
  result = qword_28002ECF0;
  if (!qword_28002ECF0)
  {
    type metadata accessor for SettingsIcon();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECF0);
  }

  return result;
}

unint64_t sub_265A38A18()
{
  result = qword_28002ECF8;
  if (!qword_28002ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002ECF8);
  }

  return result;
}

uint64_t sub_265A38A6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_265A38A7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_265A38A8C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_265A38A7C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_265A38AD0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_265A38A6C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t SettingsListToggle.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A463CC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SettingsListToggle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = sub_265A4679C();
  v3 = *(v2 - 8);
  v39 = v2;
  v40 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v38 = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED00, &qword_265A47D40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED08, &qword_265A47D48);
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED10, &qword_265A47D50);
  v19 = *(v18 - 8);
  v36 = v18;
  v37 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v34 = v33 - v21;
  v33[1] = swift_allocBox();
  v23 = v22;
  sub_265A463BC();
  sub_265A4638C();
  sub_265A396E0(&qword_28002ED18, MEMORY[0x277D4D918]);
  sub_265A46B2C();
  (*(v7 + 16))(v11, v23, v6);
  sub_265A46B1C();
  v24 = *(v7 + 8);
  v24(v11, v6);
  swift_getKeyPath();
  sub_265A46B3C();

  v24(v13, v6);
  v42 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED20, &qword_265A47D88);
  sub_265A31D40(&qword_28002ED28, &qword_28002ED20, &qword_265A47D88);
  sub_265A46A6C();
  sub_265A463BC();
  LOBYTE(v13) = sub_265A4635C();

  LOBYTE(v43) = v13 & 1;
  v25 = sub_265A31D40(&qword_28002ED30, &qword_28002ED08, &qword_265A47D48);

  v26 = MEMORY[0x277D839B0];
  v27 = MEMORY[0x277D839C8];
  v28 = v34;
  sub_265A469FC();

  (*(v35 + 8))(v17, v14);
  v29 = v38;
  sub_265A4678C();
  v43 = v14;
  v44 = v26;
  v45 = v25;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  sub_265A396E0(&qword_28002ED38, MEMORY[0x277CDDDF0]);
  v30 = v36;
  v31 = v39;
  sub_265A4692C();
  (*(v40 + 8))(v29, v31);
  (*(v37 + 8))(v28, v30);
}

uint64_t sub_265A39110()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v1 = MEMORY[0x28223BE20](isCurrentExecutor);
  MEMORY[0x28223BE20](v1);
  type metadata accessor for SettingsIcon();
  sub_265A396E0(&qword_28002ECF0, type metadata accessor for SettingsIcon);
  sub_265A46A4C();
}

uint64_t sub_265A39288@<X0>(uint64_t a1@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A463AC();
  sub_265A38A18();
  v2 = sub_265A468DC();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_265A3936C()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4639C();
}

uint64_t sub_265A3941C(uint64_t a1, unsigned __int8 *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED00, &qword_265A47D40);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *a2;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = swift_projectBox();
  (*(v4 + 16))(v7, v9, v3);
  sub_265A46B0C();
  (*(v4 + 8))(v7, v3);
  v10 = sub_265A4637C();

  v10(v8);
}

uint64_t type metadata accessor for SettingsListToggle()
{
  result = qword_28002ED40;
  if (!qword_28002ED40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265A39664()
{
  result = sub_265A463CC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265A396E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SettingsListSection.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  v3 = sub_265A4623C();
  v69 = *(v3 - 8);
  v70 = v3;
  v4 = *(v69 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v66 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v67 = &v65 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED50, &unk_265A47E20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v68 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = &v65 - v12;
  v13 = sub_265A4651C();
  v14 = *(v13 - 8);
  v78 = v13;
  v79 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v76 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v74 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002EC90, &qword_265A47C88);
  v20 = a1[3];
  v22 = a1[5];
  v21 = a1[6];
  sub_265A462EC();
  v23 = sub_265A46BEC();
  v24 = type metadata accessor for SettingsListItem();
  WitnessTable = swift_getWitnessTable();
  *&v105 = v23;
  *(&v105 + 1) = v20;
  *&v106 = v24;
  *(&v106 + 1) = WitnessTable;
  v107 = v21;
  v26 = sub_265A46ADC();
  v27 = sub_265A46AFC();
  v83 = *(v27 - 8);
  v28 = *(v83 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v65 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED58, &qword_265A47E30);
  v84 = v27;
  v77 = sub_265A466CC();
  v85 = *(v77 - 8);
  v31 = *(v85 + 64);
  v32 = MEMORY[0x28223BE20](v77);
  v80 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v82 = &v65 - v34;
  *&v35 = a1[2];
  *(&v35 + 1) = v20;
  *&v36 = a1[4];
  *(&v36 + 1) = v22;
  v71 = v36;
  v72 = v35;
  v95 = v35;
  v96 = v36;
  v97 = v21;
  v98 = v75;
  v91[1] = v35;
  v91[2] = v36;
  v92 = v21;
  v93 = v75;
  v88[1] = v35;
  v88[2] = v36;
  v89 = v21;
  v90 = v75;
  v37 = sub_265A385FC();
  v104 = swift_getWitnessTable();
  v73 = swift_getWitnessTable();
  v81 = v30;
  sub_265A3A81C(sub_265A3A1D8, v94, sub_265A3A494, v91, sub_265A3A5A8, v88, v19, v26, v19);
  v105 = v72;
  v106 = v71;
  v107 = v21;
  sub_265A4648C();
  v38 = v74;
  sub_265A4647C();
  v39 = v76;
  sub_265A4650C();
  sub_265A3AFE8(&qword_28002ED60, MEMORY[0x277D4D980]);
  v40 = v78;
  LOBYTE(a1) = sub_265A46CCC();
  v41 = *(v79 + 8);
  v41(v39, v40);
  v41(v38, v40);
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = 0;
  if (a1)
  {
    v46 = v86;
    sub_265A4645C();
    v47 = v68;
    sub_265A3ABE0(v46, v68);
    v49 = v69;
    v48 = v70;
    if ((*(v69 + 48))(v47, 1, v70) == 1)
    {
      sub_265A3670C(v86, &qword_28002ED50, &unk_265A47E20);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v50 = v67;
      (*(v49 + 32))(v67, v47, v48);
      (*(v49 + 16))(v66, v50, v48);
      v42 = sub_265A468CC();
      v43 = v51;
      v53 = v52;
      v45 = v54;
      (*(v49 + 8))(v50, v48);
      sub_265A3670C(v86, &qword_28002ED50, &unk_265A47E20);
      v44 = v53 & 1;
    }
  }

  v101 = v37;
  v102 = v73;
  v103 = v37;
  v55 = v84;
  v56 = swift_getWitnessTable();
  v58 = v80;
  v57 = v81;
  sub_265A3A948(v42, v43, v44, v45);
  sub_265A38AD0(v42, v43, v44, v45);
  (*(v83 + 8))(v57, v55);
  v59 = sub_265A3AB7C();
  v99 = v56;
  v100 = v59;
  v60 = v77;
  v61 = swift_getWitnessTable();
  v62 = v82;
  sub_265A3685C(v58, v60, v61);
  v63 = *(v85 + 8);
  v63(v58, v60);
  sub_265A3685C(v62, v60, v61);
  return (v63)(v62, v60);
}

uint64_t sub_265A39F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a2;
  v25 = a4;
  v26 = a1;
  v27 = a7;
  sub_265A462EC();
  v29 = sub_265A46BEC();
  v30 = a3;
  v23 = type metadata accessor for SettingsListItem();
  v31 = v23;
  WitnessTable = swift_getWitnessTable();
  v33 = a6;
  v10 = sub_265A46ADC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v29 = v24;
  v30 = a3;
  v31 = v25;
  WitnessTable = a5;
  v33 = a6;
  v18 = type metadata accessor for SettingsListSection();
  sub_265A3A1E8(v18, v15);
  v28 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  sub_265A3685C(v15, v10, v19);
  v20 = *(v11 + 8);
  v20(v15, v10);
  sub_265A3685C(v17, v10, v19);
  v20(v17, v10);
}

uint64_t sub_265A3A1E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = a1[3];
  v4 = a1[5];
  v5 = a1[6];
  v27 = sub_265A462EC();
  v26 = sub_265A46BEC();
  v6 = type metadata accessor for SettingsListItem();
  WitnessTable = swift_getWitnessTable();
  *&v30 = v26;
  *(&v30 + 1) = v3;
  *&v31 = v6;
  *(&v31 + 1) = WitnessTable;
  v32 = v5;
  v7 = sub_265A46ADC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  *&v15 = a1[2];
  *(&v15 + 1) = v3;
  *&v16 = a1[4];
  *(&v16 + 1) = v4;
  v23 = v16;
  v24 = v15;
  v31 = v16;
  v30 = v15;
  v32 = v5;
  sub_265A4648C();
  *&v30 = sub_265A4646C();
  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v24;
  *(v17 + 32) = v18;
  *(v17 + 48) = v5;
  v19 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_265A46ACC();
  v29 = v19;
  v20 = swift_getWitnessTable();
  sub_265A3685C(v12, v7, v20);
  v21 = *(v8 + 8);
  v21(v12, v7);
  sub_265A3685C(v14, v7, v20);
  return (v21)(v14, v7);
}

double sub_265A3A4B0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void (*a6)(uint64_t)@<X7>, _OWORD *a7@<X8>)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *&v17 = a1;
  *(&v17 + 1) = a2;
  *&v18 = a3;
  *(&v18 + 1) = a4;
  v19 = a5;
  v13 = type metadata accessor for SettingsListSection();
  sub_265A3A5F0(v13, a6, &v17);

  result = *&v17;
  v15 = v18;
  *a7 = v17;
  a7[1] = v15;
  return result;
}

uint64_t sub_265A3A5F0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED50, &unk_265A47E20);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v30 - v8;
  v10 = sub_265A4623C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - v16;
  v18 = *(a1 + 48);
  v19 = *(a1 + 32);
  v30[0] = *(a1 + 16);
  v30[1] = v19;
  v31 = v18;
  v20 = sub_265A4648C();
  a2(v20);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_265A3670C(v9, &qword_28002ED50, &unk_265A47E20);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    (*(v11 + 16))(v15, v17, v10);
    v22 = sub_265A468CC();
    v23 = v26;
    v28 = v27;
    v25 = v29;
    result = (*(v11 + 8))(v17, v10);
    v24 = v28 & 1;
  }

  *a3 = v22;
  a3[1] = v23;
  a3[2] = v24;
  a3[3] = v25;
  return result;
}

uint64_t sub_265A3A81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v15(v14);
  a5(v16);
  return sub_265A46AEC();
}

uint64_t sub_265A3A948(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EDF0, &qword_265A47EC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  if (a4)
  {
    *v11 = a1;
    *(v11 + 1) = a2;
    v12 = a3 & 1;
    v11[16] = v12;
    *(v11 + 3) = a4;
    v13 = *MEMORY[0x277CDDDD0];
    v14 = sub_265A4677C();
    v19 = a1;
    v20 = a2;
    v15 = v14;
    v16 = *(v14 - 8);
    (*(v16 + 104))(v11, v13, v14);
    (*(v16 + 56))(v11, 0, 1, v15);
    sub_265A38A7C(v19, v20, v12);
  }

  else
  {
    v17 = sub_265A4677C();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  }

  sub_265A4680C();
  sub_265A3AFE8(&qword_28002EDF8, MEMORY[0x277CDE050]);
  sub_265A469CC();
  return sub_265A3670C(v11, &qword_28002EDF0, &qword_265A47EC8);
}

unint64_t sub_265A3AB7C()
{
  result = qword_28002ED68[0];
  if (!qword_28002ED68[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28002ED58, &qword_265A47E30);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28002ED68);
  }

  return result;
}

uint64_t sub_265A3ABE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002ED50, &unk_265A47E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A3AC50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A3AC9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v23 = a1;
  v26 = a4;
  v22 = sub_265A462EC();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - v8;
  v24 = a2;
  v25 = a3;
  v10 = type metadata accessor for SettingsListItem();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v9, v23, v22);
  SettingsListItem.init(model:)(v9, v15);
  WitnessTable = swift_getWitnessTable();
  sub_265A3685C(v15, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v15, v10);
  sub_265A3685C(v17, v10, WitnessTable);
  v19(v17, v10);
}

uint64_t sub_265A3AF28(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  result = sub_265A4648C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_265A3AFE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265A3B030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_265A3AC9C(a1, v2[5], v2[6], a2);
}

void PreferencesControllerNavigationCoordinator.preferencesViewController(_:push:animated:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  v8 = sub_265A4689C();
  v67 = *(v8 - 8);
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v11 = sub_265A4660C();
  v12 = __swift_project_value_buffer(v11, qword_28156B870);

  v13 = a1;
  v14 = a2;
  v15 = sub_265A465EC();
  v16 = sub_265A46C3C();

  v69 = v15;
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v68 = v12;
    v18 = v17;
    v19 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&aBlock = v65;
    *v18 = 136316675;
    v20 = *v4;
    v21 = sub_265A46E0C();
    v23 = v13;
    v24 = v14;
    v25 = v4;
    v26 = v8;
    v27 = a3;
    v28 = sub_265A3C540(v21, v22, &aBlock);

    *(v18 + 4) = v28;
    a3 = v27;
    v8 = v26;
    v4 = v25;
    v14 = v24;
    v13 = v23;
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_265A3C540(0xD00000000000002BLL, 0x8000000265A49B50, &aBlock);
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2113;
    *(v18 + 34) = v23;
    *(v18 + 42) = 2160;
    *(v18 + 44) = 1752392040;
    *(v18 + 52) = 2113;
    *(v18 + 54) = v14;
    *v19 = v23;
    v19[1] = v14;
    *(v18 + 62) = 1024;
    *(v18 + 64) = a3 & 1;
    v29 = v23;
    v30 = v14;
    v31 = v69;
    _os_log_impl(&dword_265A2E000, v69, v16, "Start (%s.%s), viewController: '%{private,mask.hash}@', viewControllerToPush: '%{private,mask.hash}@', animated: '%{BOOL}d'…", v18, 0x44u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v19, -1, -1);
    v32 = v65;
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v32, -1, -1);
    v33 = v18;
    v12 = v68;
    MEMORY[0x2667673B0](v33, -1, -1);
  }

  else
  {
  }

  v34 = [v13 navigationController];
  if (v34 && (v35 = v34, v36 = sub_265A416D8(), v35, (v36 & 1) != 0))
  {
    v77 = &unk_287756368;
    v37 = swift_dynamicCastObjCProtocolConditional();
    v68 = v12;
    if (v37)
    {
      v72 = sub_265A465AC();
      v73 = sub_265A3CCD0(qword_28156B608, MEMORY[0x277D40250]);
      __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v38 = v14;
      sub_265A4657C();
    }

    else
    {
      v72 = sub_265A465BC();
      v73 = sub_265A3CCD0(&unk_28002EE60, MEMORY[0x277D402E0]);
      __swift_allocate_boxed_opaque_existential_1(&aBlock);
      v45 = v14;
      sub_265A465CC();
    }

    sub_265A35D24(&aBlock, v78);
    sub_265A35C74(v78, v76);
    v46 = v75;
    sub_265A35C74(v76, v75);
    v47 = swift_allocObject();
    v48 = a3 & 1;
    *(v47 + 16) = v48;
    *(v47 + 24) = v4;
    *(v47 + 32) = v13;
    *(v47 + 40) = v14;
    sub_265A35D24(v76, v47 + 48);

    v49 = v13;
    v50 = v14;
    v51 = [v49 transitionCoordinator];
    if (v51)
    {
      v52 = v51;
      __swift_destroy_boxed_opaque_existential_1(v75);
      v53 = sub_265A465EC();
      v54 = sub_265A46C3C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_265A2E000, v53, v54, "controller has an active transition is flight, deferring navigation push to after active transition completes.", v55, 2u);
        MEMORY[0x2667673B0](v55, -1, -1);
      }

      v73 = sub_265A3C18C;
      v74 = 0;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v71 = sub_265A3C21C;
      v72 = &block_descriptor;
      v56 = _Block_copy(&aBlock);
      v57 = swift_allocObject();
      *(v57 + 16) = sub_265A3CC70;
      *(v57 + 24) = v47;
      v73 = sub_265A3CCC8;
      v74 = v57;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v71 = sub_265A3C21C;
      v72 = &block_descriptor_9;
      v58 = _Block_copy(&aBlock);

      [v52 animateAlongsideTransition:v56 completion:v58];
      _Block_release(v58);
      _Block_release(v56);

      swift_unknownObjectRelease();
      v46 = v78;
    }

    else
    {
      *&aBlock = 0;
      sub_265A4664C();
      v59 = swift_allocObject();
      *(v59 + 16) = v4;
      *(v59 + 24) = v49;
      *(v59 + 32) = v50;
      *(v59 + 40) = v48;

      v60 = v49;
      v61 = v50;
      v62 = v66;
      sub_265A4688C();
      sub_265A4665C();

      v63 = (*(v67 + 8))(v62, v8);
      MEMORY[0x28223BE20](v63);
      *(&v64 - 2) = v60;
      *(&v64 - 1) = v75;
      sub_265A466DC();

      __swift_destroy_boxed_opaque_existential_1(v78);
    }

    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v39 = v13;
    v40 = sub_265A465EC();
    v41 = sub_265A46C3C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_265A2E000, v40, v41, "viewController that requested presentation is not from a managed navigation stack, defer to default implementation.", v42, 2u);
      MEMORY[0x2667673B0](v42, -1, -1);
    }

    if (a3)
    {

      [v39 showViewController:v14 sender:v39];
    }

    else
    {
      v43 = [v39 navigationController];
      if (v43)
      {
        v69 = v43;
        [v43 pushViewController:v14 animated:0];
        v44 = v69;
      }
    }
  }
}

uint64_t sub_265A3BA40(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v10 = sub_265A4689C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = 0;
  sub_265A4664C();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4;
  *(v15 + 40) = a1;

  v16 = a3;
  v17 = a4;
  sub_265A4688C();
  sub_265A4665C();

  (*(v11 + 8))(v14, v10);
  v20 = v16;
  v21 = a5;
  sub_265A466DC();
}

void sub_265A3BBE4(uint64_t *a1, void *a2, void *a3, char a4)
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v8 = sub_265A4660C();
  __swift_project_value_buffer(v8, qword_28156B870);

  v9 = a2;
  v10 = a3;
  oslog = sub_265A465EC();
  v11 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v12 = 136316675;
    v15 = *a1;
    v16 = sub_265A46E0C();
    v18 = sub_265A3C540(v16, v17, &v22);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_265A3C540(0xD00000000000002BLL, 0x8000000265A49B50, &v22);
    *(v12 + 22) = 2160;
    *(v12 + 24) = 1752392040;
    *(v12 + 32) = 2113;
    *(v12 + 34) = v9;
    *(v12 + 42) = 2160;
    *(v12 + 44) = 1752392040;
    *(v12 + 52) = 2113;
    *(v12 + 54) = v10;
    *v13 = v9;
    v13[1] = v10;
    *(v12 + 62) = 1024;
    *(v12 + 64) = a4 & 1;
    v19 = v9;
    v20 = v10;
    _os_log_impl(&dword_265A2E000, oslog, v11, "…Complete (%s.%s), viewController: '%{private,mask.hash}@', viewControllerToPush: '%{private,mask.hash}@', animated: '%{BOOL}d'.", v12, 0x44u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v14, -1, -1);
    MEMORY[0x2667673B0](v12, -1, -1);
  }
}

uint64_t sub_265A3BED4(void *a1, void *a2)
{
  v4 = sub_265A46B7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A46C2C();
  v22 = sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v9 = sub_265A4660C();
  __swift_project_value_buffer(v9, qword_28156B870);
  v10 = a1;
  v11 = sub_265A465EC();
  v12 = sub_265A46C3C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    *v14 = 141558275;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2113;
    *(v14 + 14) = v10;
    *v15 = v10;
    v16 = v10;
    _os_log_impl(&dword_265A2E000, v11, v12, "Appending %{private,mask.hash}@ to the navigation path.", v14, 0x16u);
    sub_265A3CDC8(v15);
    MEMORY[0x2667673B0](v15, -1, -1);
    v4 = v21;
    MEMORY[0x2667673B0](v14, -1, -1);
  }

  v17 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v18 = [v10 traitCollection];
  sub_265A46C4C();

  sub_265A46B6C();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_265A3C18C()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_265A3C21C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_265A3C27C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t sub_265A3C434(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_265A3C480(void (*a1)(void))
{
  a1();

  return sub_265A46E0C();
}

uint64_t sub_265A3C4E4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_265A3C540(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_265A3C540(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265A3C60C(v11, 0, 0, 1, a1, a2);
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
    sub_265A3CD68(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_265A3C60C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265A3C718(a5, a6);
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
    result = sub_265A46D4C();
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

uint64_t sub_265A3C718(uint64_t a1, unint64_t a2)
{
  v4 = sub_265A3C764(a1, a2);
  sub_265A3C894(&unk_2877514B0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_265A3C764(uint64_t a1, unint64_t a2)
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

  v6 = sub_265A3C980(v5, 0);
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

  result = sub_265A46D4C();
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
        v10 = sub_265A46BCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265A3C980(v10, 0);
        result = sub_265A46D1C();
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

uint64_t sub_265A3C894(uint64_t result)
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

  result = sub_265A3C9F4(result, v12, 1, v3);
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

void *sub_265A3C980(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EEE0, &qword_265A47F50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_265A3C9F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EEE0, &qword_265A47F50);
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

_BYTE **sub_265A3CAE8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_265A3CAF8(void *__src, uint64_t a2, void *__dst)
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

void sub_265A3CB40(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_265A3CC08@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A3CCD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265A3CD68(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265A3CDC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t PreferencesListControllerNavigationCoordinator.listControllerShouldDeselect(afterFormSheetDisappearance:given:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v7 = sub_265A4660C();
  __swift_project_value_buffer(v7, qword_28156B870);
  v8 = a2;
  v9 = v3;
  v10 = a1;
  v11 = sub_265A465EC();
  v12 = sub_265A46C3C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v13 = 136316419;
    swift_getObjectType();
    v15 = sub_265A46E0C();
    v17 = sub_265A3C540(v15, v16, &v26);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_265A3C540(0xD000000000000040, 0x8000000265A49C30, &v26);
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2113;
    *(v13 + 34) = v10;
    *v14 = v10;
    *(v13 + 42) = 2160;
    *(v13 + 44) = 1752392040;
    *(v13 + 52) = 2081;
    v18 = v10;
    v19 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v20 = sub_265A46BAC();
    v22 = sub_265A3C540(v20, v21, &v26);

    *(v13 + 54) = v22;
    _os_log_impl(&dword_265A2E000, v11, v12, "Start (%s.%s), listController: '%{private,mask.hash}@', rootController: '%{private,mask.hash}s'…", v13, 0x3Eu);
    sub_265A3CDC8(v14);
    MEMORY[0x2667673B0](v14, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v25, -1, -1);
    MEMORY[0x2667673B0](v13, -1, -1);
  }

  if (a2)
  {
    v27.receiver = v9;
    v27.super_class = ObjectType;
    v23 = objc_msgSendSuper2(&v27, sel_listControllerShouldDeselectAfterFormSheetDisappearance_givenRootController_, v10, v8);
  }

  else
  {
    v23 = 1;
  }

  sub_265A3D164(v9, v10, a2);
  return v23;
}

void sub_265A3D164(void *a1, void *a2, void *a3)
{
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v6 = sub_265A4660C();
  __swift_project_value_buffer(v6, qword_28156B870);
  v7 = a3;
  v8 = a1;
  v9 = a2;
  oslog = sub_265A465EC();
  v10 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136316419;
    swift_getObjectType();
    v14 = sub_265A46E0C();
    v16 = sub_265A3C540(v14, v15, &v23);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_265A3C540(0xD000000000000040, 0x8000000265A49C30, &v23);
    *(v11 + 22) = 2160;
    *(v11 + 24) = 1752392040;
    *(v11 + 32) = 2113;
    *(v11 + 34) = v9;
    *v12 = v9;
    *(v11 + 42) = 2160;
    *(v11 + 44) = 1752392040;
    *(v11 + 52) = 2081;
    v17 = v9;
    v18 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v19 = sub_265A46BAC();
    v21 = sub_265A3C540(v19, v20, &v23);

    *(v11 + 54) = v21;
    _os_log_impl(&dword_265A2E000, oslog, v10, "…Complete (%s.%s), listController: '%{private,mask.hash}@', rootController: '%{private,mask.hash}s'.", v11, 0x3Eu);
    sub_265A3CDC8(v12);
    MEMORY[0x2667673B0](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v13, -1, -1);
    MEMORY[0x2667673B0](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t PreferencesListControllerNavigationCoordinator.listControllerShouldNotDeselect(afterAppearing:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v5 = sub_265A4660C();
  __swift_project_value_buffer(v5, qword_28156B870);
  v6 = v2;
  v7 = a1;
  v8 = sub_265A465EC();
  v9 = sub_265A46C3C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v10 = 136315907;
    swift_getObjectType();
    v13 = sub_265A46E0C();
    v15 = sub_265A3C540(v13, v14, &v32);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_265A3C540(0xD000000000000030, 0x8000000265A49C80, &v32);
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2113;
    *(v10 + 34) = v7;
    *v11 = v7;
    v16 = v7;
    _os_log_impl(&dword_265A2E000, v8, v9, "Start (%s.%s), listController: '%{private,mask.hash}@'…", v10, 0x2Au);
    sub_265A3CDC8(v11);
    MEMORY[0x2667673B0](v11, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v12, -1, -1);
    MEMORY[0x2667673B0](v10, -1, -1);
  }

  v17 = [v7 navigationController];
  if (!v17 || (v18 = v17, v19 = sub_265A416D8(), v18, (v19 & 1) == 0))
  {
    v33.receiver = v6;
    v33.super_class = ObjectType;
    v28 = objc_msgSendSuper2(&v33, sel_listControllerShouldNotDeselectAfterAppearing_, v7);
LABEL_26:
    sub_265A3D8A8(v6, v7);
    return v28;
  }

  v20 = [v7 navigationController];
  v21 = [v7 splitViewController];
  if (!v21)
  {
LABEL_20:
    v27 = 0;
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v22 = v21;
  v23 = [v21 viewControllers];

  sub_265A3F594();
  v24 = sub_265A46BDC();

  if (!(v24 >> 62))
  {
    result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  result = sub_265A46D6C();
  if (!result)
  {
LABEL_19:

    goto LABEL_20;
  }

LABEL_10:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x266766D60](0, v24);
LABEL_13:
    v27 = v26;

    if (!v20)
    {
LABEL_14:
      if (!v27)
      {
        v28 = 1;
        goto LABEL_24;
      }

      swift_unknownObjectRelease();
      goto LABEL_23;
    }

LABEL_21:

    if (v27)
    {
      swift_unknownObjectRelease();
      v28 = v20 == v27;
      goto LABEL_24;
    }

LABEL_23:
    v28 = 0;
LABEL_24:
    v29 = [v7 splitViewController];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 isCollapsed];

      v28 = (v31 ^ 1) & v28;
    }

    goto LABEL_26;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v24 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_265A3D8A8(void *a1, void *a2)
{
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v4 = sub_265A4660C();
  __swift_project_value_buffer(v4, qword_28156B870);
  v5 = a1;
  v6 = a2;
  oslog = sub_265A465EC();
  v7 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315907;
    swift_getObjectType();
    v11 = sub_265A46E0C();
    v13 = sub_265A3C540(v11, v12, &v16);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_265A3C540(0xD000000000000030, 0x8000000265A49C80, &v16);
    *(v8 + 22) = 2160;
    *(v8 + 24) = 1752392040;
    *(v8 + 32) = 2113;
    *(v8 + 34) = v6;
    *v9 = v6;
    v14 = v6;
    _os_log_impl(&dword_265A2E000, oslog, v7, "…Complete (%s.%s), listController: '%{private,mask.hash}@'.", v8, 0x2Au);
    sub_265A3CDC8(v9);
    MEMORY[0x2667673B0](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v10, -1, -1);
    MEMORY[0x2667673B0](v8, -1, -1);
  }
}

void PreferencesListControllerNavigationCoordinator.listController(_:push:given:withModalStylePopupStateApplicator:animated:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v13 = sub_265A4660C();
  __swift_project_value_buffer(v13, qword_28156B870);
  v14 = a3;
  v15 = v7;
  v16 = v14;
  v17 = v15;
  v18 = a1;
  v19 = a2;
  v20 = sub_265A465EC();
  v21 = sub_265A46C3C();

  v93 = v18;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v87 = ObjectType;
    v23 = swift_slowAlloc();
    v91 = v16;
    v24 = swift_slowAlloc();
    *&aBlock = v24;
    *v22 = 136317187;
    swift_getObjectType();
    v25 = sub_265A46E0C();
    v85 = v17;
    v83 = a6;
    v27 = v19;
    v28 = sub_265A3C540(v25, v26, &aBlock);

    *(v22 + 4) = v28;
    v19 = v27;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_265A3C540(0xD000000000000049, 0x8000000265A49CC0, &aBlock);
    *(v22 + 22) = 2160;
    *(v22 + 24) = 1752392040;
    *(v22 + 32) = 2113;
    *(v22 + 34) = v18;
    *(v22 + 42) = 2160;
    *(v22 + 44) = 1752392040;
    *(v22 + 52) = 2113;
    *(v22 + 54) = v27;
    *v23 = v18;
    v23[1] = v27;
    *(v22 + 62) = 2160;
    *(v22 + 64) = 1752392040;
    *(v22 + 72) = 2081;
    v98[0] = a3;
    v29 = v18;
    v30 = v27;
    v31 = v91;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v32 = sub_265A46BAC();
    v34 = sub_265A3C540(v32, v33, &aBlock);

    *(v22 + 74) = v34;
    a6 = v83;
    v17 = v85;
    *(v22 + 82) = 1024;
    *(v22 + 84) = v83 & 1;
    _os_log_impl(&dword_265A2E000, v20, v21, "Start (%s.%s), listController: '%{private,mask.hash}@', viewController: '%{private,mask.hash}@', 'rootController: '%{private,mask.hash}s', animated: '%{BOOL}d'…", v22, 0x58u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    v35 = v23;
    ObjectType = v87;
    MEMORY[0x2667673B0](v35, -1, -1);
    swift_arrayDestroy();
    v36 = v24;
    v16 = v91;
    MEMORY[0x2667673B0](v36, -1, -1);
    MEMORY[0x2667673B0](v22, -1, -1);
  }

  if (a3)
  {
    v37 = v16;
    v38 = sub_265A465EC();
    v39 = sub_265A46C3C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_265A2E000, v38, v39, "rootController is non-nil, defer to default implementation.", v40, 2u);
      MEMORY[0x2667673B0](v40, -1, -1);
    }

    v103 = a4;
    v104 = a5;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v101 = sub_265A3EB2C;
    v102 = &block_descriptor_15;
    v41 = _Block_copy(&aBlock);
    v42 = v37;

    v94.receiver = v17;
    v94.super_class = ObjectType;
    v18 = v93;
    objc_msgSendSuper2(&v94, sel_listController_pushViewController_givenRootController_withModalStylePopupStateApplicator_animated_, v93, v19, v42, v41, a6 & 1);
    _Block_release(v41);
  }

  else
  {
    v43 = [v18 navigationController];
    if (v43)
    {
      v44 = v43;
      v45 = sub_265A416D8();
    }

    else
    {
      v45 = 0;
    }

    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      v47 = v46;
      v88 = ObjectType;
      v86 = v19;
      v48 = sub_265A465EC();
      v49 = sub_265A46C3C();
      v92 = v16;
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *&aBlock = v84;
        *v50 = 136315138;
        swift_getObjectType();
        v51 = sub_265A46E0C();
        v53 = v47;
        v54 = v45;
        v55 = v19;
        v56 = v17;
        v57 = a6;
        v58 = sub_265A3C540(v51, v52, &aBlock);

        *(v50 + 4) = v58;
        a6 = v57;
        v17 = v56;
        v19 = v55;
        v45 = v54;
        v47 = v53;
        _os_log_impl(&dword_265A2E000, v48, v49, "viewController is a '%s', defer to default implementation.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v84);
        v18 = v93;
        MEMORY[0x2667673B0](v84, -1, -1);
        MEMORY[0x2667673B0](v50, -1, -1);
      }

      if (v45)
      {
        v59 = sub_265A465EC();
        v60 = sub_265A46C3C();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          _os_log_impl(&dword_265A2E000, v59, v60, "setupController is being presented from a list controller that is in a managed navigation controller, hooking up dismissal.", v61, 2u);
          MEMORY[0x2667673B0](v61, -1, -1);
        }

        [v47 setTransitioningDelegate_];
      }

      v103 = a4;
      v104 = a5;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v101 = sub_265A3EB2C;
      v102 = &block_descriptor_12;
      v62 = _Block_copy(&aBlock);
      v63 = v86;

      v95.receiver = v17;
      v95.super_class = v88;
      objc_msgSendSuper2(&v95, sel_listController_pushViewController_givenRootController_withModalStylePopupStateApplicator_animated_, v18, v47, v92, v62, a6 & 1);
      _Block_release(v62);
    }

    else if (v45)
    {
      v102 = swift_getObjectType();
      *&aBlock = v19;
      v64 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EEF8, qword_265A47F98);
      if (swift_dynamicCast())
      {

        v102 = sub_265A465AC();
        v103 = sub_265A3CCD0(qword_28156B608, MEMORY[0x277D40250]);
        __swift_allocate_boxed_opaque_existential_1(&aBlock);
        v65 = v64;
        sub_265A4657C();
      }

      else
      {
        v102 = sub_265A465BC();
        v103 = sub_265A3CCD0(&unk_28002EE60, MEMORY[0x277D402E0]);
        __swift_allocate_boxed_opaque_existential_1(&aBlock);
        v70 = v64;
        sub_265A465CC();
      }

      sub_265A35D24(&aBlock, v98);
      sub_265A35C74(v98, v97);
      v71 = v96;
      sub_265A35C74(v97, v96);
      v72 = swift_allocObject();
      *(v72 + 16) = a6 & 1;
      *(v72 + 24) = v64;
      sub_265A35D24(v97, v72 + 32);
      *(v72 + 72) = v18;
      v73 = v18;
      v64;
      v74 = [v73 transitionCoordinator];
      if (v74)
      {
        v75 = v74;
        __swift_destroy_boxed_opaque_existential_1(v96);
        v76 = sub_265A465EC();
        v77 = sub_265A46C3C();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          *v78 = 0;
          _os_log_impl(&dword_265A2E000, v76, v77, "listController has an active transition is flight, deferring navigation push to after active transition completes.", v78, 2u);
          MEMORY[0x2667673B0](v78, -1, -1);
        }

        v103 = sub_265A3EEBC;
        v104 = 0;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v101 = sub_265A3C21C;
        v102 = &block_descriptor_3;
        v79 = _Block_copy(&aBlock);
        v80 = swift_allocObject();
        *(v80 + 16) = sub_265A3F5F8;
        *(v80 + 24) = v72;
        v103 = sub_265A3F62C;
        v104 = v80;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v101 = sub_265A3C21C;
        v102 = &block_descriptor_9_0;
        v81 = _Block_copy(&aBlock);

        [v75 animateAlongsideTransition:v79 completion:v81];
        _Block_release(v81);
        _Block_release(v79);

        swift_unknownObjectRelease();
        v71 = v98;
      }

      else
      {
        *&aBlock = 0;
        v82 = sub_265A4664C();
        MEMORY[0x28223BE20](v82);
        sub_265A466DC();

        __swift_destroy_boxed_opaque_existential_1(v98);
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      v66 = sub_265A465EC();
      v67 = sub_265A46C3C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_265A2E000, v66, v67, "listController that requested presentation is not from a managed navigation stack, defer to default implementation.", v68, 2u);
        MEMORY[0x2667673B0](v68, -1, -1);
      }

      v103 = a4;
      v104 = a5;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v101 = sub_265A3EB2C;
      v102 = &block_descriptor_0;
      v69 = _Block_copy(&aBlock);

      v99.receiver = v17;
      v99.super_class = ObjectType;
      objc_msgSendSuper2(&v99, sel_listController_pushViewController_givenRootController_withModalStylePopupStateApplicator_animated_, v18, v19, v16, v69, a6 & 1);
      _Block_release(v69);
    }

    a3 = 0;
  }

  sub_265A3E82C(v17, v18, v19, a3, a6 & 1);
}

void sub_265A3E82C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v10 = sub_265A4660C();
  __swift_project_value_buffer(v10, qword_28156B870);
  v11 = a4;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  oslog = sub_265A465EC();
  v15 = sub_265A46C3C();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v16 = 136317187;
    swift_getObjectType();
    v19 = sub_265A46E0C();
    v28 = a5;
    v21 = sub_265A3C540(v19, v20, &v30);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_265A3C540(0xD000000000000049, 0x8000000265A49CC0, &v30);
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2113;
    *(v16 + 34) = v13;
    *(v16 + 42) = 2160;
    *(v16 + 44) = 1752392040;
    *(v16 + 52) = 2113;
    *(v16 + 54) = v14;
    *v17 = v13;
    v17[1] = v14;
    *(v16 + 62) = 2160;
    *(v16 + 64) = 1752392040;
    *(v16 + 72) = 2081;
    v22 = v13;
    v23 = v14;
    v24 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EEF0, qword_265A47F80);
    v25 = sub_265A46BAC();
    v27 = sub_265A3C540(v25, v26, &v30);

    *(v16 + 74) = v27;
    *(v16 + 82) = 1024;
    *(v16 + 84) = v28 & 1;
    _os_log_impl(&dword_265A2E000, oslog, v15, "…Complete (%s.%s), listController: '%{private,mask.hash}@', viewController: '%{private,mask.hash}@', 'rootController: '%{private,mask.hash}s', animated: '%{BOOL}d'.", v16, 0x58u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EE70, qword_265A47EF0);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2667673B0](v18, -1, -1);
    MEMORY[0x2667673B0](v16, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_265A3EB2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_265A3EB80()
{
  sub_265A4664C();
  sub_265A466DC();
}

uint64_t sub_265A3EC10(void *a1, void *a2, void *a3)
{
  v19 = a3;
  v20 = sub_265A46B7C();
  v5 = *(v20 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v20);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v9 = sub_265A4660C();
  __swift_project_value_buffer(v9, qword_28156B870);
  v10 = a1;
  v11 = sub_265A465EC();
  v12 = sub_265A46C3C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 141558275;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2113;
    *(v13 + 14) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_265A2E000, v11, v12, "Appending %{private,mask.hash}@ to the navigation path.", v13, 0x16u);
    sub_265A3CDC8(v14);
    MEMORY[0x2667673B0](v14, -1, -1);
    MEMORY[0x2667673B0](v13, -1, -1);
  }

  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = [v19 traitCollection];
  sub_265A46C4C();

  sub_265A46B6C();
  (*(v5 + 8))(v8, v20);
}

uint64_t sub_265A3EEBC()
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

uint64_t sub_265A3EF4C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a2(isCurrentExecutor);
}

uint64_t PreferencesListControllerNavigationCoordinator.listControllerIs(onTopOfNavigationStack:searchTopMostViewControllerChildren:)(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = [a1 navigationController];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  if ((sub_265A416D8() & 1) == 0)
  {

LABEL_9:
    v15.receiver = v2;
    v15.super_class = ObjectType;
    return objc_msgSendSuper2(&v15, sel_listControllerIsOnTopOfNavigationStack_searchTopMostViewControllerChildren_, a1, a2 & 1);
  }

  v8 = [v7 topViewController];
  v9 = a1;
  do
  {
    if (v8)
    {
      sub_265A3F594();
      v11 = v9;
      v12 = v8;
      v13 = sub_265A46C9C();

      if (v13)
      {

        return 1;
      }
    }

    v10 = [v9 parentViewController];

    v9 = v10;
  }

  while (v10);

  return 0;
}

id PreferencesListControllerNavigationCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreferencesListControllerNavigationCoordinator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PreferencesListControllerNavigationCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_265A3F594()
{
  result = qword_28156B5E0;
  if (!qword_28156B5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156B5E0);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265A3F5F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  return sub_265A3EB80();
}

void _s14SettingsHostUI46PreferencesListControllerNavigationCoordinatorC09animationF012forDismissedSo06UIViewF21AnimatedTransitioning_pSgSo0lF0C_tF_0(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = a1;
    v6 = [v4 parentController];
    if (!v6)
    {

      return;
    }

    v7 = v6;
    v8 = [v6 rootController];
    if (v8)
    {
      v9 = v8;

      return;
    }

    v10 = [v4 usePopupStyle];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {

      return;
    }

    v12 = v11;
    v13 = v7;
    if (!v10)
    {
      v1 = &off_279BB2000;
      if ([v4 modalPresentationStyle] != 2)
      {

        goto LABEL_49;
      }

      [v12 formSheetViewWillDisappear];
      v21 = [v12 childViewControllers];
      sub_265A3F594();
      v15 = sub_265A46BDC();

      if (!(v15 >> 62))
      {
        v22 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v22)
        {
LABEL_48:

          goto LABEL_49;
        }

LABEL_22:
        if (v22 < 1)
        {
          __break(1u);
          goto LABEL_65;
        }

        for (i = 0; i != v22; ++i)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x266766D60](i, v15);
          }

          else
          {
            v24 = *(v15 + 8 * i + 32);
          }

          v25 = v24;
          objc_opt_self();
          v26 = swift_dynamicCastObjCClass();
          if (v26)
          {
            [v26 formSheetViewWillDisappear];
          }
        }

        v1 = &off_279BB2000;
LABEL_49:
        v13 = v13;
        if ([v4 v1[83]] != 2)
        {

          return;
        }

        [v12 formSheetViewDidDisappear];
        v31 = [v12 childViewControllers];
        sub_265A3F594();
        v32 = sub_265A46BDC();

        if (v32 >> 62)
        {
          v33 = sub_265A46D6C();
          if (v33)
          {
LABEL_52:
            if (v33 >= 1)
            {
              for (j = 0; j != v33; ++j)
              {
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v35 = MEMORY[0x266766D60](j, v32);
                }

                else
                {
                  v35 = *(v32 + 8 * j + 32);
                }

                v36 = v35;
                objc_opt_self();
                v37 = swift_dynamicCastObjCClass();
                if (v37)
                {
                  [v37 formSheetViewDidDisappear];
                }
              }

              goto LABEL_62;
            }

LABEL_65:
            __break(1u);
            return;
          }
        }

        else
        {
          v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v33)
          {
            goto LABEL_52;
          }
        }

LABEL_62:

        return;
      }

LABEL_47:
      v22 = sub_265A46D6C();
      if (!v22)
      {
        goto LABEL_48;
      }

      goto LABEL_22;
    }

    [v12 popupViewWillDisappear];
    v14 = [v12 childViewControllers];
    v4 = sub_265A3F594();
    v15 = sub_265A46BDC();

    if (v15 >> 62)
    {
      v16 = sub_265A46D6C();
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    for (k = 0; k != v16; ++k)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x266766D60](k, v15);
      }

      else
      {
        v18 = *(v15 + 8 * k + 32);
      }

      v19 = v18;
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (v20)
      {
        [v20 popupViewWillDisappear];
      }
    }

LABEL_33:

    v13 = v13;
    v1 = &off_279BB2000;
    [v12 popupViewDidDisappear];
    v15 = [v12 childViewControllers];
    v12 = sub_265A46BDC();

    if (v12 >> 62)
    {
      v4 = sub_265A46D6C();
      if (!v4)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_62;
      }
    }

    if (v4 >= 1)
    {
      for (m = 0; m != v4; ++m)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x266766D60](m, v12);
        }

        else
        {
          v28 = *(v12 + 8 * m + 32);
        }

        v29 = v28;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          [v30 popupViewDidDisappear];
        }
      }

      goto LABEL_62;
    }

    goto LABEL_46;
  }
}

uint64_t sub_265A3FC90()
{
  result = sub_265A402CC(&unk_2877514D8);
  qword_28156B6C0 = result;
  return result;
}

BOOL sub_265A3FCBC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  sub_265A46DDC();
  MEMORY[0x266766E10](a1);
  v5 = sub_265A46DFC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_265A3FE60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265A462AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  if ([v1 propertyForKey_])
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_265A4624C();

      sub_265A4627C();
      sub_265A4628C();
      v11 = *(v4 + 8);
      v11(v8, v3);
      sub_265A46C6C();
      v11(v10, v3);
      v12 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    sub_265A3670C(&v20, &unk_28002EFF0, &qword_265A48078);
  }

  v13 = sub_265A46B8C();
  v14 = [v1 propertyForKey_];

  if (v14)
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v17 == 1)
    {
      sub_265A46C5C();
      v12 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    sub_265A3670C(&v20, &unk_28002EFF0, &qword_265A48078);
  }

  if ([v1 propertyForKey_])
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
    sub_265A416C8(&v18, &v20);
    sub_265A3670C(&v20, &unk_28002EFF0, &qword_265A48078);
    sub_265A46C7C();
    v12 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    sub_265A3670C(&v20, &unk_28002EFF0, &qword_265A48078);
    v12 = 1;
  }

LABEL_19:
  v15 = sub_265A46C8C();
  return (*(*(v15 - 8) + 56))(a1, v12, 1, v15);
}

uint64_t sub_265A402CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002F000, qword_265A48080);
    v3 = sub_265A46D0C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_265A46DDC();
      MEMORY[0x266766E10](v10);
      result = sub_265A46DFC();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_44shouldPerformDefaultDeferredBundleLoadingForSbSo06PSListF0C_So11PSSpecifierCtF_0(void *a1, void *a2)
{
  v3 = [a1 navigationController];
  if (!v3 || (v4 = v3, v5 = sub_265A416D8(), v4, (v5 & 1) == 0))
  {
    if (qword_28156B600 != -1)
    {
      swift_once();
    }

    v16 = sub_265A4660C();
    __swift_project_value_buffer(v16, qword_28156B870);
    v8 = sub_265A465EC();
    v17 = sub_265A46C3C();
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_265A2E000, v8, v17, "listController that requested presentation is not from a managed navigation stack, defer to default implementation.", v18, 2u);
    v15 = v18;
    goto LABEL_14;
  }

  v6 = [a2 controllerLoadStyle];
  if (qword_28156B6B8 != -1)
  {
    swift_once();
  }

  if (sub_265A3FCBC(v6, qword_28156B6C0))
  {
    if (qword_28156B600 != -1)
    {
      swift_once();
    }

    v7 = sub_265A4660C();
    __swift_project_value_buffer(v7, qword_28156B870);
    v8 = sub_265A465EC();
    v9 = sub_265A46C3C();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_15;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    type metadata accessor for PSSpecifierControllerLoadStyle();
    v12 = sub_265A46BAC();
    v14 = sub_265A3C540(v12, v13, &v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_265A2E000, v8, v9, "Controller load style %{public}s is unsupported, defer to default implementation.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2667673B0](v11, -1, -1);
    v15 = v10;
LABEL_14:
    MEMORY[0x2667673B0](v15, -1, -1);
LABEL_15:

    return 1;
  }

  return 0;
}

uint64_t _s14SettingsHostUI51PreferencesListControllerSpecifierActionCoordinatorC04listF0_07presentF3ForySo06PSListF0C_So11PSSpecifierCtF_0(void *a1, void *a2)
{
  v4 = sub_265A46B7C();
  v98 = *(v4 - 8);
  v5 = *(v98 + 64);
  MEMORY[0x28223BE20](v4);
  v97 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFD0, &qword_265A48058);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = v85 - v9;
  v94 = sub_265A46B4C();
  v93 = *(v94 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v94);
  v89 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFD8, &qword_265A48060);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v85 - v14;
  v88 = sub_265A462AC();
  v87 = *(v88 - 8);
  v16 = *(v87 + 64);
  v17 = MEMORY[0x28223BE20](v88);
  v19 = v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = v85 - v20;
  v95 = sub_265A465AC();
  v91 = *(v95 - 8);
  v21 = *(v91 + 64);
  MEMORY[0x28223BE20](v95);
  v90 = v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFE0, &qword_265A48068);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v26 = v85 - v25;
  v27 = sub_265A46C8C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = v85 - v34;
  MEMORY[0x28223BE20](v33);
  v100 = v85 - v36;
  v96 = a1;
  [a2 setParentController_];
  v37 = [a2 controllerLoadStyle];
  v99 = v4;
  if (v37 == 1)
  {
    sub_265A3FE60(v26);
    if ((*(v28 + 48))(v26, 1, v27) != 1)
    {
      (*(v28 + 32))(v100, v26, v27);
      v38 = &off_279BB2000;
      if ([a2 propertyForKey_])
      {
        sub_265A46CBC();
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
      }

      v106 = v102;
      v107 = v103;
      if (*(&v103 + 1))
      {
        if (swift_dynamicCast())
        {
          sub_265A4629C();

          v40 = v87;
          v41 = v88;
          if ((*(v87 + 48))(v15, 1, v88) != 1)
          {
            (*(v40 + 32))(v86, v15, v41);
            v70 = v41;
            sub_265A4626C();
            v85[1] = sub_265A4625C();
            v71 = *(v40 + 8);
            v71(v19, v70);
            (*(v28 + 16))(v35, v100, v27);
            if ([a2 propertyForKey_])
            {
              sub_265A46CBC();
              swift_unknownObjectRelease();
            }

            else
            {
              v102 = 0u;
              v103 = 0u;
            }

            v43 = v90;
            v106 = v102;
            v107 = v103;
            if (*(&v103 + 1))
            {
              swift_dynamicCast();
            }

            else
            {
              sub_265A3670C(&v106, &unk_28002EFF0, &qword_265A48078);
            }

            v72 = a2;
            sub_265A4659C();
            v71(v86, v88);
            goto LABEL_27;
          }

          sub_265A3670C(v15, &qword_28002EFD8, &qword_265A48060);
          v38 = &off_279BB2000;
        }
      }

      else
      {
        sub_265A3670C(&v106, &unk_28002EFF0, &qword_265A48078);
      }

      v42 = [a2 v38[92]];
      v43 = v90;
      if (v42)
      {
        sub_265A46CBC();
        swift_unknownObjectRelease();
      }

      else
      {
        v102 = 0u;
        v103 = 0u;
      }

      v106 = v102;
      v107 = v103;
      if (*(&v103 + 1))
      {
        if (swift_dynamicCast())
        {
          (*(v28 + 16))(v32, v100, v27);
          if ([a2 v38[92]])
          {
            sub_265A46CBC();
            swift_unknownObjectRelease();
          }

          else
          {
            v102 = 0u;
            v103 = 0u;
          }

          v106 = v102;
          v107 = v103;
          if (*(&v103 + 1))
          {
            swift_dynamicCast();
          }

          else
          {
            sub_265A3670C(&v106, &unk_28002EFF0, &qword_265A48078);
          }

          v44 = a2;
          sub_265A4659C();
LABEL_27:
          v45 = v92;
          sub_265A4656C();
          v46 = v93;
          v47 = v94;
          if ((*(v93 + 48))(v45, 1, v94) == 1)
          {
            sub_265A3670C(v45, &qword_28002EFD0, &qword_265A48058);
            v48 = v95;
            *(&v107 + 1) = v95;
            v108 = sub_265A41680(qword_28156B608, MEMORY[0x277D40250]);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v106);
            (*(v91 + 32))(boxed_opaque_existential_1, v43, v48);
          }

          else
          {
            v50 = *(v46 + 32);
            v51 = v89;
            v50(v89, v45, v47);
            *(&v107 + 1) = v47;
            v108 = sub_265A41680(&unk_28156B5F0, MEMORY[0x277D4D798]);
            v52 = __swift_allocate_boxed_opaque_existential_1(&v106);
            v50(v52, v51, v47);
            (*(v91 + 8))(v43, v95);
          }

          (*(v28 + 8))(v100, v27);
          goto LABEL_31;
        }
      }

      else
      {
        sub_265A3670C(&v106, &unk_28002EFF0, &qword_265A48078);
      }

      *&v106 = 0;
      *(&v106 + 1) = 0xE000000000000000;
      sub_265A46D2C();
      MEMORY[0x266766BE0](0xD000000000000072, 0x8000000265A49FA0);
      v78 = [a2 identifier];
      if (v78)
      {
        v79 = v78;
        v80 = sub_265A46B9C();
        v82 = v81;
      }

      else
      {
        v80 = 0;
        v82 = 0;
      }

      *&v102 = v80;
      *(&v102 + 1) = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFE8, &qword_265A48070);
      v83 = sub_265A46BAC();
      MEMORY[0x266766BE0](v83);

      MEMORY[0x266766BE0](11817, 0xE200000000000000);
LABEL_56:
      result = sub_265A46D5C();
      __break(1u);
      return result;
    }

LABEL_46:
    sub_265A3670C(v26, &qword_28002EFE0, &qword_265A48068);
    *&v106 = 0;
    *(&v106 + 1) = 0xE000000000000000;
    sub_265A46D2C();
    MEMORY[0x266766BE0](0xD00000000000007ALL, 0x8000000265A49F20);
    v73 = [a2 identifier];
    if (v73)
    {
      v74 = v73;
      v75 = sub_265A46B9C();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    *&v102 = v75;
    *(&v102 + 1) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002EFE8, &qword_265A48070);
    v84 = sub_265A46BAC();
    MEMORY[0x266766BE0](v84);

    MEMORY[0x266766BE0](46, 0xE100000000000000);
    goto LABEL_56;
  }

  if (v37 != 2)
  {
    goto LABEL_56;
  }

  if (![a2 detailControllerClass])
  {
    __break(1u);
    goto LABEL_45;
  }

  swift_getObjCClassMetadata();
  v101 = &unk_287756368;
  swift_dynamicCastTypeToObjCProtocolUnconditional();
  sub_265A3F594();
  if (!swift_dynamicCastMetatype())
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(&v103 + 1) = v95;
  v104 = sub_265A41680(qword_28156B608, MEMORY[0x277D40250]);
  __swift_allocate_boxed_opaque_existential_1(&v102);
  v39 = a2;
  sub_265A4658C();
  sub_265A35D24(&v102, &v106);
LABEL_31:
  if (qword_28156B600 != -1)
  {
    swift_once();
  }

  v53 = sub_265A4660C();
  __swift_project_value_buffer(v53, qword_28156B870);
  sub_265A35C74(&v106, &v102);
  v54 = sub_265A465EC();
  v55 = sub_265A46C3C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v105 = v57;
    *v56 = 141558275;
    *(v56 + 4) = 1752392040;
    *(v56 + 12) = 2081;
    v58 = *(&v103 + 1);
    v59 = __swift_project_boxed_opaque_existential_1(&v102, *(&v103 + 1));
    v60 = *(*(v58 - 8) + 64);
    MEMORY[0x28223BE20](v59);
    (*(v62 + 16))(v85 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    v63 = sub_265A46BAC();
    v65 = v64;
    __swift_destroy_boxed_opaque_existential_1(&v102);
    v66 = sub_265A3C540(v63, v65, &v105);

    *(v56 + 14) = v66;
    _os_log_impl(&dword_265A2E000, v54, v55, "Appending %{private,mask.hash}s to the navigation path.", v56, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x2667673B0](v57, -1, -1);
    MEMORY[0x2667673B0](v56, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v102);
  }

  __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
  v67 = [v96 traitCollection];
  v68 = v97;
  sub_265A46C4C();

  sub_265A46B6C();
  (*(v98 + 8))(v68, v99);
  return __swift_destroy_boxed_opaque_existential_1(&v106);
}

uint64_t sub_265A41680(unint64_t *a1, void (*a2)(uint64_t))
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

_OWORD *sub_265A416C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_265A416D8()
{
  v1 = v0;
  v2 = sub_265A46B7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = objc_getAssociatedObject(v0, &unk_28002F010);
  swift_endAccess();
  if (v7)
  {
    sub_265A46CBC();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25[0] = v23;
  v25[1] = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast())
    {
      v8 = v22[15];
      return (v8 & 1);
    }
  }

  else
  {
    sub_265A419CC(v25);
  }

  v9 = [v1 splitViewController];
  if (!v9)
  {
LABEL_16:
    v8 = 0;
    return (v8 & 1);
  }

  v10 = v9;
  v11 = [v9 parentViewController];
  if (!v11)
  {

    goto LABEL_16;
  }

  v12 = v11;
  result = [v1 view];
  if (result)
  {
    v14 = result;
    v15 = [result window];

    v16 = [v15 rootViewController];
    v17 = [v1 traitCollection];
    sub_265A46C4C();

    v8 = sub_265A46B5C();
    (*(v3 + 8))(v6, v2);
    if (!v16 || (sub_265A3F594(), v18 = v12, v19 = v16, v20 = sub_265A46C9C(), v19, v18, (v20 & 1) == 0))
    {
      v8 = 0;
    }

    v21 = sub_265A46BFC();
    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_28002F010, v21, 0);
    swift_endAccess();

    return (v8 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_265A419CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28002EFF0, &qword_265A48078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.alert<A, B>(_:item:match:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a5;
  v70 = a6;
  v71 = a8;
  v60 = a1;
  v61 = a4;
  v56 = a3;
  v58 = a2;
  v59 = a9;
  v68 = a11;
  v69 = a12;
  v66 = a10;
  v67 = a7;
  v13 = sub_265A4655C();
  v63 = v13;
  v14 = *(v13 - 8);
  v65 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v48 - v15;
  v54 = v48 - v15;
  sub_265A46CAC();
  v53 = sub_265A46ABC();
  v17 = *(v53 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v53);
  v64 = v48 - v19;
  v20 = *(v17 + 16);
  v51 = v17 + 16;
  v57 = v20;
  v20();
  v55 = *(v14 + 16);
  v55(v16, a3, v13);
  sub_265A46C2C();
  v21 = sub_265A46C1C();
  v22 = *(v17 + 80);
  v23 = *(v14 + 80);
  v24 = (v22 + 80) & ~v22;
  v50 = v24;
  v25 = (v18 + v24 + v23) & ~v23;
  v52 = v22 | v23;
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 2) = v21;
  *(v26 + 3) = v27;
  v28 = v67;
  *(v26 + 4) = v70;
  *(v26 + 5) = v28;
  v29 = v66;
  *(v26 + 6) = v71;
  *(v26 + 7) = v29;
  v30 = v69;
  *(v26 + 8) = v68;
  *(v26 + 9) = v30;
  v31 = *(v17 + 32);
  v48[1] = v17 + 32;
  v49 = v31;
  v32 = &v26[v24];
  v33 = v64;
  v34 = v53;
  v31(v32, v64, v53);
  v35 = *(v14 + 32);
  v48[0] = v14 + 32;
  v36 = v54;
  v37 = v63;
  v35(&v26[v25], v54, v63);
  (v57)(v33, v58, v34);
  v38 = v36;
  v55(v36, v56, v37);
  v39 = sub_265A46C1C();
  v40 = v25;
  v41 = swift_allocObject();
  *(v41 + 2) = v39;
  v43 = v70;
  v42 = v71;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v43;
  v44 = v66;
  *(v41 + 5) = v67;
  *(v41 + 6) = v42;
  v45 = v68;
  v46 = v69;
  *(v41 + 7) = v44;
  *(v41 + 8) = v45;
  *(v41 + 9) = v46;
  v49(&v41[v50], v64, v34);
  v35(&v41[v40], v38, v63);
  sub_265A46AAC();
  sub_265A426E8(v60, v72, v73, v74, v61);
}

uint64_t sub_265A41E78@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v29 = a5;
  v30 = a6;
  v26[1] = a1;
  v27 = a4;
  v10 = sub_265A46CAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - v13;
  sub_265A46C2C();
  v28 = sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_265A46ABC();
  MEMORY[0x266766AB0](v15);
  sub_265A4655C();
  v16 = sub_265A4654C();
  v17 = MEMORY[0x28223BE20](v16);
  v26[-8] = a2;
  v26[-7] = a3;
  v18 = v29;
  v26[-6] = v27;
  v26[-5] = v18;
  v26[-4] = a7;
  v26[-3] = a8;
  v26[-2] = v17;
  v26[-1] = v19;
  MEMORY[0x28223BE20](v17);
  v26[-8] = a2;
  v26[-7] = a3;
  v26[-6] = v21;
  v26[-5] = v20;
  v26[-4] = a7;
  v26[-3] = a8;
  v26[-2] = sub_265A43774;
  v26[-1] = v22;
  sub_265A440A4(sub_265A437A8, &v26[-10], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v23, &v31);

  (*(v11 + 8))(v14, v10);
  v24 = v31;

  *v30 = (v24 & 1) == 0;
  return result;
}

uint64_t sub_265A420E4@<X0>(BOOL *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  sub_265A46CAC();
  v9 = *(sub_265A46ABC() - 8);
  v10 = (*(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_265A4655C() - 8);
  v13 = v1[2];
  v14 = v1[3];
  return sub_265A41E78(v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, v5, v6, a1, v7, v8);
}

uint64_t sub_265A42210(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_265A46CAC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *a1;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v13)
  {
    sub_265A4655C();
    v14 = sub_265A4653C();
    v14();

    (*(*(a7 - 8) + 56))(v12, 0, 1, a7);
  }

  else
  {
    (*(*(a7 - 8) + 56))(v12, 1, 1, a7);
  }

  sub_265A46ABC();
  sub_265A46A9C();
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 40);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v16 = *(*v2 + 64);
  v5 = sub_265A4655C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + v4);

  v10 = *(v0 + v4 + 8);

  v11 = v2[10];
  v12 = *(v1 - 8);
  if (!(*(v12 + 48))(v0 + v4 + v11, 1, v1))
  {
    (*(v12 + 8))(v0 + v4 + v11, v1);
  }

  v13 = (v4 + v16 + v7) & ~v7;
  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v3 | v7 | 7);
}

uint64_t sub_265A425B8(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v12 = *(v1 + 56);
  v6 = *(v1 + 72);
  sub_265A46CAC();
  v7 = *(sub_265A46ABC() - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_265A4655C() - 8);
  return sub_265A42210(a1, *(v1 + 16), *(v1 + 24), v1 + v8, v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v3, v4);
}

uint64_t sub_265A426E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v18 = a5;
  v17 = a4;
  v16[0] = a2;
  v16[1] = a3;
  v6 = sub_265A4623C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  (*(v9 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v10 = sub_265A468CC();
  v12 = v11;
  v14 = v13;
  sub_265A4699C();
  sub_265A38A6C(v10, v12, v14 & 1);
}

uint64_t View.alert<A, B, C>(_:item:match:actions:message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v78 = a7;
  v85 = a8;
  v76 = a5;
  v77 = a6;
  v75 = a4;
  v68 = a3;
  v70 = a2;
  v73 = a9;
  v74 = a1;
  v86 = a14;
  v87 = a16;
  v72 = a13;
  v83 = a12;
  v84 = a15;
  v71 = a11;
  v82 = a10;
  v17 = sub_265A4655C();
  v79 = v17;
  v18 = *(v17 - 8);
  v64 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v56 - v19;
  v80 = v56 - v19;
  sub_265A46CAC();
  v65 = sub_265A46ABC();
  v21 = *(v65 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v65);
  v81 = v56 - v23;
  v24 = *(v21 + 16);
  v62 = v21 + 16;
  v69 = v24;
  v24();
  v25 = *(v18 + 16);
  v61 = v18 + 16;
  v67 = v25;
  v25(v20, a3, v17);
  v66 = sub_265A46C2C();
  v26 = sub_265A46C1C();
  v27 = *(v21 + 80);
  v28 = *(v18 + 80);
  v29 = v18;
  v30 = (v27 + 96) & ~v27;
  v60 = v30;
  v31 = (v22 + v28 + v30) & ~v28;
  v63 = v27 | v28;
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D85700];
  *(v32 + 2) = v26;
  *(v32 + 3) = v33;
  v35 = v82;
  v34 = v83;
  *(v32 + 4) = v85;
  *(v32 + 5) = v35;
  v37 = v71;
  v36 = v72;
  *(v32 + 6) = v71;
  *(v32 + 7) = v34;
  v38 = v86;
  *(v32 + 8) = v36;
  *(v32 + 9) = v38;
  v39 = v87;
  *(v32 + 10) = v84;
  *(v32 + 11) = v39;
  v40 = *(v21 + 32);
  v58 = v21 + 32;
  v59 = v40;
  v41 = &v32[v30];
  v42 = v81;
  v43 = v65;
  v40(v41, v81, v65);
  v44 = *(v29 + 32);
  v56[1] = v29 + 32;
  v57 = v44;
  v45 = v79;
  v46 = v80;
  v44(&v32[v31], v80, v79);
  (v69)(v42, v70, v43);
  v67(v46, v68, v45);
  v47 = sub_265A46C1C();
  v48 = swift_allocObject();
  *(v48 + 2) = v47;
  v50 = v84;
  v49 = v85;
  *(v48 + 3) = MEMORY[0x277D85700];
  *(v48 + 4) = v49;
  v51 = v83;
  *(v48 + 5) = v82;
  *(v48 + 6) = v37;
  *(v48 + 7) = v51;
  *(v48 + 8) = v36;
  v52 = v87;
  *(v48 + 9) = v86;
  *(v48 + 10) = v50;
  *(v48 + 11) = v52;
  v59(&v48[v60], v81, v43);
  v57(&v48[v31], v80, v79);
  sub_265A46AAC();
  *&v55 = v51;
  *(&v55 + 1) = v36;
  *&v54 = v49;
  *(&v54 + 1) = v37;
  sub_265A4358C(v74, v88, v89, v90, v75, v76, v77, v78, v54, v55);
}

uint64_t sub_265A42CF4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a5;
  v37 = a6;
  v33 = a10;
  v34 = a4;
  v31[1] = a1;
  v32 = a9;
  v12 = sub_265A46CAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v31 - v15;
  sub_265A46C2C();
  v35 = sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_265A46ABC();
  MEMORY[0x266766AB0](v17);
  sub_265A4655C();
  v18 = sub_265A4654C();
  v19 = MEMORY[0x28223BE20](v18);
  v31[-10] = a2;
  v31[-9] = a3;
  v20 = v33;
  v21 = v36;
  v31[-8] = v34;
  v31[-7] = v21;
  v31[-6] = a7;
  v31[-5] = a8;
  v31[-4] = v32;
  v31[-3] = v20;
  v31[-2] = v19;
  v31[-1] = v22;
  MEMORY[0x28223BE20](v19);
  v31[-10] = a2;
  v31[-9] = a3;
  v31[-8] = v24;
  v31[-7] = v23;
  v31[-6] = a7;
  v31[-5] = a8;
  v31[-4] = v25;
  v31[-3] = v26;
  v31[-2] = sub_265A436F8;
  v31[-1] = v27;
  sub_265A440A4(sub_265A43730, &v31[-12], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v28, &v38);

  (*(v13 + 8))(v16, v12);
  v29 = v38;

  *v37 = (v29 & 1) == 0;
  return result;
}

uint64_t sub_265A42F74@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v16 = *(v1 + 64);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  sub_265A46CAC();
  v9 = *(sub_265A46ABC() - 8);
  v10 = (*(v9 + 80) + 96) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_265A4655C() - 8);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  return sub_265A42CF4(v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, v5, v6, a1, v16, *(&v16 + 1), v7, v8);
}

uint64_t sub_265A430B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_265A46CAC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *a1;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v13)
  {
    sub_265A4655C();
    v14 = sub_265A4653C();
    v14();

    (*(*(a7 - 8) + 56))(v12, 0, 1, a7);
  }

  else
  {
    (*(*(a7 - 8) + 56))(v12, 1, 1, a7);
  }

  sub_265A46ABC();
  sub_265A46A9C();
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(v0 + 40);
  sub_265A46CAC();
  v2 = (sub_265A46ABC() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 96) & ~v3;
  v16 = *(*v2 + 64);
  v5 = sub_265A4655C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v15 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + v4);

  v10 = *(v0 + v4 + 8);

  v11 = v2[10];
  v12 = *(v1 - 8);
  if (!(*(v12 + 48))(v0 + v4 + v11, 1, v1))
  {
    (*(v12 + 8))(v0 + v4 + v11, v1);
  }

  v13 = (v4 + v16 + v7) & ~v7;
  (*(v6 + 8))(v0 + v13, v5);

  return MEMORY[0x2821FE8E8](v0, v13 + v15, v3 | v7 | 7);
}

uint64_t sub_265A43458(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v12 = *(v1 + 72);
  v13 = *(v1 + 56);
  v6 = *(v1 + 88);
  sub_265A46CAC();
  v7 = *(sub_265A46ABC() - 8);
  v8 = (*(v7 + 80) + 96) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_265A4655C() - 8);
  return sub_265A430B0(a1, *(v1 + 16), *(v1 + 24), v1 + v8, v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v3, v4);
}

uint64_t sub_265A4358C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10)
{
  v25 = a5;
  v24 = a4;
  v22 = a2;
  v23 = a3;
  v21[0] = a10;
  v21[1] = a9;
  v11 = sub_265A4623C();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  (*(v14 + 16))(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = sub_265A468CC();
  v17 = v16;
  v19 = v18;
  sub_265A4698C();
  sub_265A38A6C(v15, v17, v19 & 1);
}

uint64_t sub_265A436F8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v1(&v4);
  return v4;
}

uint64_t sub_265A43730@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_265A43774(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_265A44028(a1, *(v1 + 64));
}

uint64_t sub_265A437A8@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_265A44060(*(v1 + 64), a1);
}

uint64_t sub_265A437E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v33 = a1;
  v35 = a4;
  v36 = *(a2 + 16);
  v37 = a3;
  v34 = *(v36 + 16);
  v7 = sub_265A4655C();
  v29 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v27 - v11;
  v30 = v27 - v11;
  v28 = a2;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v13 + 16);
  v31(v15, v5);
  (*(v8 + 16))(v12, v33, v7);
  v16 = *(v13 + 80);
  v17 = (v16 + 48) & ~v16;
  v33 = v17 + v14;
  v27[1] = v16 | 7;
  v18 = (v17 + v14 + *(v8 + 80)) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v34;
  v21 = v37;
  *(v19 + 4) = v34;
  *(v19 + 5) = v21;
  v22 = *(v13 + 32);
  v23 = v28;
  v22(&v19[v17], v15, v28);
  (*(v8 + 32))(&v19[v18], v30, v29);
  (v31)(v15, v32, v23);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  v25 = v37;
  *(v24 + 4) = v20;
  *(v24 + 5) = v25;
  v22(&v24[v17], v15, v23);
  return sub_265A46AAC();
}

uint64_t sub_265A43A90@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, char *a4@<X8>)
{
  v28[1] = a1;
  v30 = a4;
  v29 = sub_265A46CAC();
  v6 = *(v29 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = v28 - v8;
  v10 = sub_265A46CAC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v28 - v14;
  v16 = *(a2 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_265A46ABC();
  MEMORY[0x266766AB0](v20);
  if ((*(v16 + 48))(v15, 1, a2) == 1)
  {
    (*(v11 + 8))(v15, v10);
  }

  else
  {
    v21 = *(v16 + 32);
    v21(v19, v15, a2);
    sub_265A4655C();
    v22 = sub_265A4654C();
    v22(v19);

    v23 = (*(*(a3 - 8) + 48))(v9, 1, a3);
    (*(v6 + 8))(v9, v29);
    if (v23 != 1)
    {
      v26 = v30;
      v21(v30, v19, a2);
      v25 = v26;
      v24 = 0;
      return (*(v16 + 56))(v25, v24, 1, a2);
    }

    (*(v16 + 8))(v19, a2);
  }

  v24 = 1;
  v25 = v30;
  return (*(v16 + 56))(v25, v24, 1, a2);
}

uint64_t sub_265A43DB0@<X0>(char *a1@<X8>)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_265A46CAC();
  v5 = *(sub_265A46ABC() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_265A4655C() - 8);
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_265A43A90(v11, v3, v4, a1);
}

uint64_t sub_265A43EB4(uint64_t a1)
{
  v2 = sub_265A46CAC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1, v2);
  sub_265A46ABC();
  return sub_265A46A9C();
}

uint64_t sub_265A43F90(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  sub_265A46CAC();
  v5 = *(*(sub_265A46ABC() - 8) + 80);
  v6 = v1[2];
  v7 = v1[3];

  return sub_265A43EB4(a1);
}

uint64_t sub_265A44060@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  *a2 = result & 1;
  return result;
}

uint64_t sub_265A440A4@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t View.sheet<A, B>(item:match:onDismiss:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = a6;
  v59 = a4;
  v60 = a5;
  v57 = a9;
  v58 = a3;
  v54 = a2;
  v56 = a1;
  v69 = a13;
  v70 = a7;
  v67 = a11;
  v68 = a12;
  v65 = a10;
  v66 = a8;
  v14 = sub_265A4655C();
  v62 = v14;
  v15 = *(v14 - 8);
  v64 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - v16;
  v52 = v47 - v16;
  sub_265A46CAC();
  v18 = sub_265A46ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = v47 - v21;
  v22 = *(v19 + 16);
  v50 = v19 + 16;
  v55 = v22;
  v22();
  v53 = *(v15 + 16);
  v53(v17, a2, v14);
  sub_265A46C2C();
  v23 = sub_265A46C1C();
  v24 = *(v19 + 80);
  v25 = *(v15 + 80);
  v26 = (v24 + 80) & ~v24;
  v49 = v26;
  v27 = (v20 + v26 + v25) & ~v25;
  v51 = v24 | v25;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v23;
  *(v28 + 3) = v29;
  v30 = v65;
  v31 = v66;
  *(v28 + 4) = v70;
  *(v28 + 5) = v31;
  *(v28 + 6) = v30;
  v32 = v68;
  *(v28 + 7) = v67;
  *(v28 + 8) = v32;
  *(v28 + 9) = v69;
  v33 = *(v19 + 32);
  v47[1] = v19 + 32;
  v48 = v33;
  v34 = &v28[v26];
  v35 = v63;
  v33(v34, v63, v18);
  v36 = v15 + 32;
  v37 = *(v15 + 32);
  v47[0] = v36;
  v38 = v52;
  v39 = v62;
  v37(&v28[v27], v52, v62);
  (v55)(v35, v56, v18);
  v53(v38, v54, v39);
  v40 = sub_265A46C1C();
  v41 = swift_allocObject();
  *(v41 + 2) = v40;
  v43 = v69;
  v42 = v70;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v42;
  v44 = v65;
  *(v41 + 5) = v66;
  *(v41 + 6) = v44;
  v45 = v68;
  *(v41 + 7) = v67;
  *(v41 + 8) = v45;
  *(v41 + 9) = v43;
  v48(&v41[v49], v63, v18);
  v37(&v41[v27], v38, v62);
  sub_265A46AAC();
  sub_265A469BC();
}

uint64_t View.fullScreenCover<A, B>(item:match:onDismiss:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v61 = a6;
  v59 = a4;
  v60 = a5;
  v57 = a9;
  v58 = a3;
  v54 = a2;
  v56 = a1;
  v69 = a13;
  v70 = a7;
  v67 = a11;
  v68 = a12;
  v65 = a10;
  v66 = a8;
  v14 = sub_265A4655C();
  v62 = v14;
  v15 = *(v14 - 8);
  v64 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v47 - v16;
  v52 = v47 - v16;
  sub_265A46CAC();
  v18 = sub_265A46ABC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v63 = v47 - v21;
  v22 = *(v19 + 16);
  v50 = v19 + 16;
  v55 = v22;
  v22();
  v53 = *(v15 + 16);
  v53(v17, a2, v14);
  sub_265A46C2C();
  v23 = sub_265A46C1C();
  v24 = *(v19 + 80);
  v25 = *(v15 + 80);
  v26 = (v24 + 80) & ~v24;
  v49 = v26;
  v27 = (v20 + v26 + v25) & ~v25;
  v51 = v24 | v25;
  v28 = swift_allocObject();
  v29 = MEMORY[0x277D85700];
  *(v28 + 2) = v23;
  *(v28 + 3) = v29;
  v30 = v65;
  v31 = v66;
  *(v28 + 4) = v70;
  *(v28 + 5) = v31;
  *(v28 + 6) = v30;
  v32 = v68;
  *(v28 + 7) = v67;
  *(v28 + 8) = v32;
  *(v28 + 9) = v69;
  v33 = *(v19 + 32);
  v47[1] = v19 + 32;
  v48 = v33;
  v34 = &v28[v26];
  v35 = v63;
  v33(v34, v63, v18);
  v36 = v15 + 32;
  v37 = *(v15 + 32);
  v47[0] = v36;
  v38 = v52;
  v39 = v62;
  v37(&v28[v27], v52, v62);
  (v55)(v35, v56, v18);
  v53(v38, v54, v39);
  v40 = sub_265A46C1C();
  v41 = swift_allocObject();
  *(v41 + 2) = v40;
  v43 = v69;
  v42 = v70;
  *(v41 + 3) = MEMORY[0x277D85700];
  *(v41 + 4) = v42;
  v44 = v65;
  *(v41 + 5) = v66;
  *(v41 + 6) = v44;
  v45 = v68;
  *(v41 + 7) = v67;
  *(v41 + 8) = v45;
  *(v41 + 9) = v43;
  v48(&v41[v49], v63, v18);
  v37(&v41[v27], v38, v62);
  sub_265A46AAC();
  sub_265A4695C();
}

uint64_t sub_265A44C8C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, BOOL *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(char *, char *))
{
  v33 = a4;
  v34 = a5;
  v30[1] = a1;
  v36 = a6;
  v35 = a11;
  v31 = a10;
  v32 = a2;
  v12 = sub_265A46CAC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v30 - v15;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = sub_265A46ABC();
  MEMORY[0x266766AB0](v17);
  sub_265A4655C();
  v18 = sub_265A4654C();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = v33;
  v30[-8] = v32;
  v30[-7] = a3;
  v21 = v34;
  v30[-6] = v20;
  v30[-5] = v21;
  v30[-4] = a7;
  v30[-3] = a8;
  v30[-2] = v19;
  v30[-1] = v22;
  MEMORY[0x28223BE20](v19);
  v30[-8] = v23;
  v30[-7] = a3;
  v30[-6] = v25;
  v30[-5] = v24;
  v30[-4] = a7;
  v30[-3] = a8;
  v30[-2] = v31;
  v30[-1] = v26;
  sub_265A440A4(v35, &v30[-10], MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v27, &v37);

  (*(v13 + 8))(v16, v12);
  v28 = v37;

  *v36 = (v28 & 1) == 0;
  return result;
}

uint64_t sub_265A44F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *)@<X2>, BOOL *a4@<X8>)
{
  v9 = v4[5];
  v20 = v4[6];
  v21 = v4[4];
  v19 = v4[7];
  v11 = v4[8];
  v10 = v4[9];
  sub_265A46CAC();
  v12 = *(sub_265A46ABC() - 8);
  v13 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(*(sub_265A4655C() - 8) + 80);
  v16 = v4[2];
  v17 = v4[3];
  return sub_265A44C8C(v4 + v13, v21, v9, v20, v19, a4, v11, v10, a1, a2, a3);
}

uint64_t sub_265A4505C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_265A46CAC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *a1;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v13)
  {
    sub_265A4655C();
    v14 = sub_265A4653C();
    v14();

    (*(*(a7 - 8) + 56))(v12, 0, 1, a7);
  }

  else
  {
    (*(*(a7 - 8) + 56))(v12, 1, 1, a7);
  }

  sub_265A46ABC();
  sub_265A46A9C();
}

uint64_t sub_265A45220(unsigned __int8 *a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v12 = *(v1 + 56);
  v6 = *(v1 + 72);
  sub_265A46CAC();
  v7 = *(sub_265A46ABC() - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_265A4655C() - 8);
  return sub_265A4505C(a1, *(v1 + 16), *(v1 + 24), v1 + v8, v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v3, v4);
}

uint64_t sub_265A453BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(char *, uint64_t, uint64_t, uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v47 = a4;
  v48 = a5;
  v51 = a2;
  v52 = a3;
  v49 = a8;
  v50 = a15;
  v53 = a16;
  v45 = a6;
  v46 = a12;
  v41 = a13;
  v43 = a14;
  v44 = a10;
  v18 = sub_265A4655C();
  v37 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v38 = &v36 - v21;
  v39 = a7;
  sub_265A46CAC();
  v40 = sub_265A46ABC();
  v42 = *(v40 - 8);
  v23 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  v25 = &v36 - v24;
  sub_265A437E0(a1, v26, a9, &v36 - v24);
  (*(v19 + 16))(v22, a1, v18);
  v27 = (*(v19 + 80) + 88) & ~*(v19 + 80);
  v28 = swift_allocObject();
  v29 = v45;
  *(v28 + 2) = v45;
  *(v28 + 3) = a7;
  *(v28 + 4) = a9;
  v30 = v44;
  *(v28 + 5) = v44;
  *(v28 + 6) = a11;
  v32 = v46;
  v31 = v47;
  v33 = v41;
  *(v28 + 7) = v46;
  *(v28 + 8) = v33;
  v34 = v48;
  *(v28 + 9) = v31;
  *(v28 + 10) = v34;
  (*(v19 + 32))(&v28[v27], v38, v37);

  v53(v25, v51, v52, v50, v28, v29, v39, v30, a11, v32, v33);

  return (*(v42 + 8))(v25, v40);
}

uint64_t sub_265A45648@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v31 = a4;
  v32 = a1;
  v28[1] = a3;
  v29 = a2;
  v30 = a7;
  v12 = sub_265A46CAC();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = v28 - v15;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v28 - v22;
  sub_265A46C2C();
  sub_265A46C1C();
  sub_265A46C0C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_265A4655C();
  v24 = sub_265A4654C();
  v24(v32);
  v25 = *(a5 - 8);
  result = (*(v25 + 48))(v16, 1, a5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    v29(v16);
    (*(v25 + 8))(v16, a5);
    sub_265A3685C(v21, a6, a10);
    v27 = *(v17 + 8);
    v27(v21, a6);
    sub_265A3685C(v23, a6, a10);
    v27(v23, a6);
  }

  return result;
}

uint64_t objectdestroy_5Tm_0()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = sub_265A4655C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 88) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v0 + 10);

  (*(v4 + 8))(&v0[v6], v3);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t sub_265A459B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v12 = *(v2 + 48);
  v9 = *(v2 + 64);
  v10 = *(sub_265A4655C() - 8);
  return sub_265A45648(a1, *(v2 + 72), *(v2 + 80), v2 + ((*(v10 + 80) + 88) & ~*(v10 + 80)), v7, v8, a2, v12, *(&v12 + 1), v9);
}

uint64_t get_witness_table_7SwiftUI4ViewRzs12IdentifiableRd__AaBRd_0_r_0_lqd0__AaBHD3_AaBPAAE5sheet11isPresented9onDismiss7contentQrAA7BindingVySbG_yycSgqd__yctAaBRd__lFQOyx_qd_0_Qo_HOTm(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = a1[5];
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_witness_table_7SwiftUI4ViewRzs12IdentifiableRd__AaBRd_1_r_1_lqd0__AaBHD4_AaBPAAE5sheet4item9onDismiss7contentQrAA7BindingVyqd__SgG_yycSgqd_0_qd__ctsACRd__AaBRd_0_r0_lFQOyx_qd__qd_1_Qo_HOTm(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_265A45B0C@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  result = v3();
  *a1 = result & 1;
  return result;
}

uint64_t sub_265A45B50()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v1(&v4);
  return v4;
}

uint64_t sub_265A45BA4()
{
  v0 = sub_265A4660C();
  __swift_allocate_value_buffer(v0, qword_28156B870);
  __swift_project_value_buffer(v0, qword_28156B870);
  return sub_265A465FC();
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

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_28002F370 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_28002F364 > a2)
  {
    return 1;
  }

  if (dword_28002F364 < a2)
  {
    return 0;
  }

  return dword_28002F368 >= a3;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_28002F378 == -1)
  {
    if (qword_28002F380)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_28002F380)
    {
      goto LABEL_3;
    }
  }

  if (qword_28002F370 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_28002F364 > a3)
      {
        goto LABEL_11;
      }

      if (dword_28002F364 >= a3)
      {
        result = dword_28002F368 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_28002F380;
  if (qword_28002F380)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_28002F380 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x266766F10](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_28002F364, &dword_28002F368);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}