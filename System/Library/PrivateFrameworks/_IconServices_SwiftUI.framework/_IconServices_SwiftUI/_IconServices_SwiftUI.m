void sub_21C58A670(uint64_t a1)
{
  sub_21C58AA28(319, &qword_2812167C0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v2 <= 0x3F)
  {
    sub_21C58AA28(319, &qword_2812167B8, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      sub_21C58AA8C(319, &qword_2812167D0);
      if (v4 <= 0x3F)
      {
        sub_21C58AA28(319, &qword_2812167B0, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
        if (v5 <= 0x3F)
        {
          sub_21C58AAD8(319, &qword_281216788, &qword_27CDE0648, &qword_21C596758, MEMORY[0x277CDF468]);
          if (v6 <= 0x3F)
          {
            sub_21C58AAD8(319, &qword_2812167A0, &qword_27CDE0640, &qword_21C596750, MEMORY[0x277CDF468]);
            if (v7 <= 0x3F)
            {
              sub_21C58AAD8(319, &qword_281216798, &qword_27CDE0638, &qword_21C596748, MEMORY[0x277CDF468]);
              if (v8 <= 0x3F)
              {
                sub_21C58AAD8(319, &qword_2812167C8, &qword_27CDE0620, &qword_21C596740, MEMORY[0x277CDF468]);
                if (v9 <= 0x3F)
                {
                  sub_21C58AA8C(319, &qword_2812167A8);
                  if (v10 <= 0x3F)
                  {
                    sub_21C58AAD8(319, &qword_281216790, &qword_27CDE0598, &unk_21C596340, MEMORY[0x277CDF468]);
                    if (v11 <= 0x3F)
                    {
                      sub_21C58AB9C(319, &qword_2812166C0, 0x277D1B1A8);
                      if (v12 <= 0x3F)
                      {
                        sub_21C58ABE4(319, &qword_281216710, &qword_281216718, 0x277D1B1C8);
                        if (v13 <= 0x3F)
                        {
                          sub_21C58AC3C();
                          if (v14 <= 0x3F)
                          {
                            v15 = *(a1 + 16);
                            v16 = *(a1 + 24);
                            type metadata accessor for AsyncIconImage.LoadingState();
                            sub_21C5957D8();
                            if (v17 <= 0x3F)
                            {
                              sub_21C58AA28(319, &qword_2812166E0, type metadata accessor for ISImageDescriptorName, MEMORY[0x277D83D88]);
                              if (v18 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C58AA28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21C58AA8C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21C595598();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21C58AAD8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21C58AB3C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_21C58AB9C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_21C58ABE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_21C58AB9C(255, a3, a4);
    v5 = sub_21C595988();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21C58AC3C()
{
  result = qword_2812166A0;
  if (!qword_2812166A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2812166A0);
  }

  return result;
}

void sub_21C58ACC0()
{
  sub_21C58ABE4(319, &qword_2812166B8, &qword_2812166C0, 0x277D1B1A8);
  if (v0 <= 0x3F)
  {
    sub_21C58ABE4(319, &qword_281216710, &qword_281216718, 0x277D1B1C8);
    if (v1 <= 0x3F)
    {
      sub_21C58AA28(319, &qword_281216800, type metadata accessor for IconEnvironmentTraits, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21C58AAD8(319, &qword_281216738, &qword_27CDE06B0, qword_21C596B60, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata accessor for IconEnvironmentTraits()
{
  result = qword_281216808;
  if (!qword_281216808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C58AE54()
{
  sub_21C595588();
  if (v0 <= 0x3F)
  {
    sub_21C5956C8();
    if (v1 <= 0x3F)
    {
      sub_21C5955C8();
      if (v2 <= 0x3F)
      {
        sub_21C58AFA0(319, &qword_281216728, type metadata accessor for ISIconShape);
        if (v3 <= 0x3F)
        {
          sub_21C58AFF4();
          if (v4 <= 0x3F)
          {
            type metadata accessor for IFAppearance(319);
            if (v5 <= 0x3F)
            {
              type metadata accessor for IFAppearanceVariant(319);
              if (v6 <= 0x3F)
              {
                sub_21C58AFA0(319, &qword_2812166A8, sub_21C58B06C);
                if (v7 <= 0x3F)
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
}

void sub_21C58AFA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21C595988();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C58AFF4()
{
  if (!qword_281216748)
  {
    v0 = sub_21C595988();
    if (!v1)
    {
      atomic_store(v0, &qword_281216748);
    }
  }
}

unint64_t sub_21C58B06C()
{
  result = qword_2812166B0;
  if (!qword_2812166B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812166B0);
  }

  return result;
}

uint64_t AsyncIconImage.init<>(icon:descriptor:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a2;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0650, &qword_21C596770);
  v7 = *(*(v6 - 1) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v13 = swift_allocObject();
  v36 = v13;
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  swift_storeEnumTagMultiPayload();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0660, &qword_21C5967B0);
  v15 = v14[9];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  swift_storeEnumTagMultiPayload();
  v16 = a3 + v14[10];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v14[11];
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  swift_storeEnumTagMultiPayload();
  v18 = a3 + v14[12];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  *(v18 + 8) = 0;
  v19 = a3 + v14[13];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a3 + v14[14];
  *v20 = swift_getKeyPath();
  *(v20 + 4) = 0;
  v21 = a3 + v14[15];
  *v21 = swift_getKeyPath();
  *(v21 + 4) = 0;
  v22 = a3 + v14[16];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a3 + v14[17];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v33 = v14[19];
  v24 = v14[22];
  *v12 = 0;
  *(v12 + 1) = 0;
  v25 = v6[10];
  v26 = type metadata accessor for IconEnvironmentTraits();
  (*(*(v26 - 8) + 56))(&v12[v25], 1, 1, v26);
  *&v12[v6[11]] = 0;
  *&v12[v6[12]] = 0x8000000000000000;
  sub_21C58B790(v12, v10, &qword_27CDE0650, &qword_21C596770);
  v27 = v34;
  v28 = v34;
  v29 = v35;
  sub_21C5957A8();
  result = sub_21C58B988(v12, &qword_27CDE0650, &qword_21C596770);
  *(a3 + v14[23]) = 0;
  *(a3 + v14[18]) = v29;
  *(a3 + v33) = v27;
  *(a3 + v14[20]) = 0;
  v31 = (a3 + v14[21]);
  v32 = v36;
  *v31 = sub_21C58D9B0;
  v31[1] = v32;
  return result;
}

uint64_t sub_21C58B434()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C58B53C@<X0>(void *a1@<X8>)
{
  result = sub_21C595608();
  *a1 = v3;
  return result;
}

uint64_t sub_21C58B5DC@<X0>(void *a1@<X8>)
{
  sub_21C58C118();
  result = sub_21C595668();
  *a1 = v3;
  return result;
}

uint64_t sub_21C58B640(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_21C595588();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_21C5956C8();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_21C5955C8();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_21C58B790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21C58B80C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21C595588();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_21C5956C8();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_21C5955C8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

unint64_t get_enum_tag_for_layout_string_21_IconServices_SwiftUI05AsyncA10ImagePhaseO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_21C58B988(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21C58BA18()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C58BAA4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AsyncIconImage.Inner();
  sub_21C5955D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0680, &qword_21C596950);
  sub_21C5955D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0688, &qword_21C596958);
  sub_21C5955D8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_21C58BC30(&qword_281216780, &qword_27CDE0680, &qword_21C596950);
  swift_getWitnessTable();
  sub_21C58BC30(&qword_281216778, &qword_27CDE0688, &qword_21C596958);
  return swift_getWitnessTable();
}

uint64_t sub_21C58BC30(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C58BCBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21C5955D8();
  sub_21C58BD4C();
  swift_getWitnessTable();
  sub_21C595698();
  return swift_getWitnessTable();
}

unint64_t sub_21C58BD4C()
{
  result = qword_281216760;
  if (!qword_281216760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216760);
  }

  return result;
}

double sub_21C58BDA0@<D0>(uint64_t a1@<X8>)
{
  sub_21C58BDF8();
  sub_21C595678();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

unint64_t sub_21C58BDF8()
{
  result = qword_2812167F0;
  if (!qword_2812167F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167F0);
  }

  return result;
}

void sub_21C58BE4C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_21C58BE5C@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58BEAC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

unint64_t sub_21C58BEAC()
{
  result = qword_281216820;
  if (!qword_281216820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216820);
  }

  return result;
}

uint64_t keypath_get_6Tm@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  a1();
  result = sub_21C595678();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_21C58BF90()
{
  result = qword_2812167E0;
  if (!qword_2812167E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167E0);
  }

  return result;
}

unint64_t sub_21C58C018()
{
  result = qword_2812167E8;
  if (!qword_2812167E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167E8);
  }

  return result;
}

uint64_t sub_21C58C06C@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58C0BC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

unint64_t sub_21C58C0BC()
{
  result = qword_281216828[0];
  if (!qword_281216828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281216828);
  }

  return result;
}

unint64_t sub_21C58C118()
{
  result = qword_2812169D8;
  if (!qword_2812169D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812169D8);
  }

  return result;
}

unint64_t sub_21C58C170()
{
  result = qword_2812169E0[0];
  if (!qword_2812169E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812169E0);
  }

  return result;
}

uint64_t sub_21C58C1C4@<X0>(void *a1@<X8>)
{
  sub_21C58C214();
  result = sub_21C595958();
  *a1 = v3;
  return result;
}

unint64_t sub_21C58C214()
{
  result = qword_2812169B0;
  if (!qword_2812169B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812169B0);
  }

  return result;
}

uint64_t sub_21C58C290(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

void sub_21C58C308(uint64_t a1, SEL *a2, uint64_t *a3, void *a4)
{
  v6 = [objc_opt_self() *a2];
  v7 = sub_21C595868();
  v9 = v8;

  *a3 = v7;
  *a4 = v9;
}

id sub_21C58C3B8@<X0>(void *a1@<X8>)
{
  if (qword_2812169C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_281216AB0;
  *a1 = qword_281216AB0;

  return v2;
}

id sub_21C58C428()
{
  result = [objc_opt_self() defaultValue];
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      qword_281216AB0 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  qword_281216AB0 = 0;
  return result;
}

uint64_t sub_21C58C4A4()
{
  if (qword_2812169C0 != -1)
  {
    swift_once();
  }

  return byte_281216AA8;
}

id sub_21C58C4F4()
{
  result = [objc_opt_self() affectsColorAppearance];
  byte_281216AA8 = result;
  return result;
}

void *sub_21C58C544(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C58C608(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t AsyncIconImage.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v89 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v4 = *(*(v84 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v84);
  v81 = &v73 - v6;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v5);
  v79 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v73 - v12;
  v14 = *(a1 + 24);
  v93 = *(a1 + 16);
  v92 = v14;
  v15 = type metadata accessor for AsyncIconImage.LoadingState();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v73 - v18;
  v78 = type metadata accessor for AsyncIconImage.Inner();
  v80 = sub_21C5955D8();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0680, &qword_21C596950);
  v83 = sub_21C5955D8();
  v88 = *(v83 - 8);
  v20 = *(v88 + 64);
  MEMORY[0x28223BE20](v83);
  v95 = &v73 - v21;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0688, &qword_21C596958);
  v87 = sub_21C5955D8();
  v86 = *(v87 - 8);
  v22 = *(v86 + 64);
  v23 = MEMORY[0x28223BE20](v87);
  v82 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v73 - v25;
  sub_21C58D090(a1);
  v26 = *&v19[*(v15 + 48)];
  sub_21C58D0E0(v26);
  (*(v16 + 8))(v19, v15);
  v27 = *(a1 + 84);
  v96 = v2;
  v28 = (v2 + v27);
  v29 = *v28;
  v75 = v28[1];
  v109 = v26;
  v110 = v29;
  v111 = v75;
  v30 = v7;
  v98 = *(v7 + 16);
  v97 = v7 + 16;
  v31 = v13;
  v90 = v13;
  v32 = v13;
  v33 = a1;
  v98(v32, v2, a1);
  v34 = *(v7 + 80);
  v35 = (v34 + 32) & ~v34;
  v91 = v11;
  v76 = v34;
  v36 = swift_allocObject();
  v37 = v93;
  v38 = v92;
  *(v36 + 16) = v93;
  *(v36 + 24) = v38;
  v39 = *(v30 + 32);
  v40 = v31;
  v41 = v33;
  v74 = v33;
  v39(v36 + v35, v40, v33);
  v94 = v39;
  v42 = v79;
  v98(v79, v96, v41);
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  *(v43 + 24) = v38;
  v44 = v74;
  v39(v43 + v35, v42, v74);
  v77 = v30 + 32;
  v105 = sub_21C58DBB0;
  *&v106 = v36;
  *(&v106 + 1) = sub_21C594B68;
  *&v107 = v43;

  v45 = v78;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x21CF0CD90](&v112, &v105, v45, MEMORY[0x277CE07A0], WitnessTable);

  sub_21C58D478(v109);

  v105 = v112;
  v106 = v113;
  v107 = v114;
  v108 = v115;
  v47 = v81;
  v48 = v44;
  v49 = v96;
  sub_21C58D114(v44, v81);
  v50 = v90;
  v98(v90, v49, v48);
  v51 = swift_allocObject();
  *(v51 + 16) = v37;
  v52 = v92;
  *(v51 + 24) = v92;
  v94(v51 + v35, v50, v48);
  v103 = WitnessTable;
  v104 = MEMORY[0x277CE0790];
  v79 = MEMORY[0x277CDFAD8];
  v53 = swift_getWitnessTable();
  sub_21C58D528();
  sub_21C595778();

  sub_21C58B988(v47, &qword_27CDE0678, &qword_21C596948);
  v54 = v107;
  v55 = v108;
  sub_21C58D478(v105);

  sub_21C58D5DC(v54);
  sub_21C58D5DC(v55);
  v56 = v48;
  v112 = *(v96 + *(v48 + 76));
  v57 = v112;
  v58 = v90;
  (v98)(v90);
  v59 = swift_allocObject();
  *(v59 + 16) = v93;
  *(v59 + 24) = v52;
  v94(v59 + v35, v58, v56);
  v60 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0690, &qword_21C596960);
  v61 = sub_21C58BC30(&qword_281216780, &qword_27CDE0680, &qword_21C596950);
  v101 = v53;
  v102 = v61;
  v62 = v83;
  v63 = swift_getWitnessTable();
  sub_21C58D654();
  v64 = v82;
  v65 = v95;
  sub_21C595778();

  (*(v88 + 8))(v65, v62);
  v66 = sub_21C58BC30(&qword_281216778, &qword_27CDE0688, &qword_21C596958);
  v99 = v63;
  v100 = v66;
  v67 = v87;
  swift_getWitnessTable();
  v68 = v86;
  v69 = *(v86 + 16);
  v70 = v85;
  v69(v85, v64, v67);
  v71 = *(v68 + 8);
  v71(v64, v67);
  v69(v89, v70, v67);
  return (v71)(v70, v67);
}

uint64_t sub_21C58D090(uint64_t a1)
{
  v1 = *(a1 + 88);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  type metadata accessor for AsyncIconImage.LoadingState();
  sub_21C5957D8();
  return sub_21C5957B8();
}

unint64_t sub_21C58D0E0(unint64_t result)
{
  if (result >> 62 == 1)
  {
    return (result & 0x3FFFFFFFFFFFFFFFLL);
  }

  if (!(result >> 62))
  {
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

uint64_t sub_21C58D114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C595588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  if (sub_21C59294C(a1))
  {
    v12 = type metadata accessor for IconEnvironmentTraits();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2, 1, 1, v12);
  }

  else
  {
    sub_21C591DC8(v11);
    (*(v5 + 104))(v9, *MEMORY[0x277CDF3C0], v4);
    v15 = sub_21C595578();
    v16 = *(v5 + 8);
    v16(v9, v4);
    v16(v11, v4);
    v17 = sub_21C592AA0(a1);
    if (v17)
    {
      v18 = v17;
      v19 = [v17 iconServicesAppearanceUsingDarkInterfaceStyle_];
      v20 = [v18 iconServicesAppearanceVariantUsingDarkInterfaceStyle_];
      v21 = [v18 tintColor];
      if (v21 && (v22 = v21, v23 = [v21 UIColor], v22, v23))
      {
        v24 = [v23 CGColor];
        v25 = [objc_allocWithZone(MEMORY[0x277D1B150]) initWithCGColor_];
      }

      else
      {

        v25 = 0;
      }
    }

    else
    {
      v20 = 0;
      v25 = 0;
      v19 = (v15 & 1);
    }

    sub_21C591DC8(a2);
    v26 = type metadata accessor for IconEnvironmentTraits();
    sub_21C592324(a1, a2 + v26[5]);
    sub_21C591FC8(a1, a2 + v26[6]);
    v27 = sub_21C59267C(a1);
    v29 = v28;
    v30 = sub_21C592528(a1);
    v31 = a2 + v26[7];
    *v31 = v27;
    *(v31 + 8) = v29 & 1;
    *(a2 + v26[8]) = v30;
    *(a2 + v26[9]) = v19;
    *(a2 + v26[10]) = v20;
    *(a2 + v26[11]) = v25;
    return (*(*(v26 - 1) + 56))(a2, 0, 1, v26);
  }
}

void sub_21C58D478(unint64_t a1)
{
  if (a1 >> 62 == 1)
  {
  }

  else if (!(a1 >> 62))
  {
  }
}

uint64_t sub_21C58D498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C58D4E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C58D528()
{
  result = qword_2812167F8;
  if (!qword_2812167F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0678, &qword_21C596948);
    sub_21C58D4E0(&qword_281216818, type metadata accessor for IconEnvironmentTraits);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812167F8);
  }

  return result;
}

uint64_t sub_21C58D5DC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_21C58D5EC()
{
  result = qword_281216700;
  if (!qword_281216700)
  {
    sub_21C58AB9C(255, &qword_281216718, 0x277D1B1C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216700);
  }

  return result;
}

unint64_t sub_21C58D654()
{
  result = qword_281216708;
  if (!qword_281216708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0690, &qword_21C596960);
    sub_21C58D5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216708);
  }

  return result;
}

uint64_t sub_21C58D6D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v4 = *(a1 + 16);
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21C5955D8();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v10 = *(a1 + 24);
  v26[2] = v10;
  v11 = sub_21C58BD4C();
  v29[1] = v10;
  v29[2] = v11;
  v26[1] = swift_getWitnessTable();
  v12 = sub_21C595698();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v26 - v18;
  v20 = *v2;
  v21 = v2[1];
  v22 = v2[2];
  v29[0] = v20;
  sub_21C58D0E0(v20);
  v21(v29);
  sub_21C58D478(v29[0]);
  sub_21C595758();
  (*(v27 + 8))(v7, v4);
  sub_21C5956A8();
  swift_getWitnessTable();
  v23 = v13[2];
  v23(v19, v17, v12);
  v24 = v13[1];
  v24(v17, v12);
  v23(v28, v19, v12);
  return (v24)(v19, v12);
}

void sub_21C58D9B8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  if (!(*a1 >> 62))
  {
    v6 = *a1;

LABEL_10:
    *a4 = v5;
    return;
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) init];
    a3 = 0;
    v8 = v9;
  }

  v10 = a3;
  v5 = sub_21C595798();
  v11 = [a2 imageForDescriptor_];
  if (!v11)
  {

    goto LABEL_10;
  }

  v12 = v11;
  if ([v11 CGImage])
  {
    [v12 scale];
    v13 = sub_21C595788();

    v5 = v13;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_21C58DAEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for AsyncIconImage() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

void *sub_21C58DB84(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_21C58DBC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for AsyncIconImage();
  v7 = *(a1 + *(v6 + 72));
  sub_21C58D114(v6, v5);
  sub_21C58DCA4(v7, v5, *(a1 + *(v6 + 76)), v6);
  return sub_21C58B988(v5, &qword_27CDE0678, &qword_21C596948);
}

void sub_21C58DCA4(void *a1, char *a2, void *a3, uint64_t a4)
{
  v104 = a3;
  v105 = a2;
  v107 = a1;
  v97 = *(a4 - 8);
  v6 = *(v97 + 64);
  MEMORY[0x28223BE20](a1);
  v98 = v7;
  v100 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06B8, &qword_21C596BC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v99 = &v90 - v10;
  v11 = type metadata accessor for IconEnvironmentTraits();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  MEMORY[0x28223BE20](v11);
  v90 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06C0, &qword_21C596BD0);
  v14 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v96 = &v90 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v92 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = *(a4 + 16);
  v21 = *(a4 + 24);
  v101 = &v90 - v22;
  v102 = v20;
  v103 = v21;
  v23 = type metadata accessor for AsyncIconImage.LoadingState();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = (&v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v26);
  v31 = (&v90 - v30);
  v32 = MEMORY[0x28223BE20](v29);
  v91 = &v90 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v90 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = (&v90 - v37);
  v108 = v4;
  v109 = a4;
  sub_21C58D090(a4);
  v39 = *v38;
  v40 = *(v24 + 8);
  v41 = *v38;
  v42 = v38;
  v43 = v23;
  v40(v42, v23);
  v106 = v23;
  if (!v39)
  {
    goto LABEL_9;
  }

  sub_21C58AB9C(0, &qword_2812166C0, 0x277D1B1A8);
  v44 = v107;
  v45 = sub_21C595968();

  v43 = v106;
  if ((v45 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_21C58D090(v109);
  v46 = v101;
  sub_21C58B790(v36 + *(v43 + 40), v101, &qword_27CDE0678, &qword_21C596948);
  v47 = v36;
  v48 = v46;
  v40(v47, v43);
  v49 = *(v93 + 48);
  v50 = v96;
  sub_21C58B790(v105, v96, &qword_27CDE0678, &qword_21C596948);
  sub_21C58B790(v48, &v50[v49], &qword_27CDE0678, &qword_21C596948);
  v51 = v95;
  v52 = *(v94 + 48);
  if (v52(v50, 1, v95) != 1)
  {
    v53 = v92;
    sub_21C58B790(v50, v92, &qword_27CDE0678, &qword_21C596948);
    if (v52(&v50[v49], 1, v51) != 1)
    {
      v83 = v90;
      sub_21C58F034(&v50[v49], v90);
      v84 = sub_21C58FB14(v53, v83);
      sub_21C58F208(v83);
      sub_21C58B988(v101, &qword_27CDE0678, &qword_21C596948);
      sub_21C58F208(v53);
      sub_21C58B988(v50, &qword_27CDE0678, &qword_21C596948);
      v43 = v106;
      if ((v84 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }

    sub_21C58B988(v101, &qword_27CDE0678, &qword_21C596948);
    sub_21C58F208(v53);
LABEL_8:
    sub_21C58B988(v50, &qword_27CDE06C0, &qword_21C596BD0);
    v43 = v106;
    goto LABEL_9;
  }

  sub_21C58B988(v48, &qword_27CDE0678, &qword_21C596948);
  if (v52(&v50[v49], 1, v51) != 1)
  {
    goto LABEL_8;
  }

  sub_21C58B988(v50, &qword_27CDE0678, &qword_21C596948);
  v43 = v106;
LABEL_20:
  v85 = v91;
  sub_21C58D090(v109);
  v86 = *(v85 + 1);
  v87 = v86;
  v40(v85, v43);
  if (v104)
  {
    if (v86)
    {
      sub_21C58AB9C(0, &qword_281216718, 0x277D1B1C8);
      v88 = v104;
      v89 = sub_21C595968();

      v43 = v106;
      if (v89)
      {
        return;
      }
    }
  }

  else
  {
    if (!v86)
    {
      return;
    }
  }

LABEL_9:
  sub_21C58D090(v109);
  v54 = *(v43 + 44);
  if (*(v31 + v54))
  {
    v55 = *(v31 + v54);

    v40(v31, v43);
    sub_21C595908();
  }

  else
  {
    v40(v31, v43);
  }

  v57 = v104;
  v56 = v105;
  v59 = v108;
  v58 = v109;
  v60 = sub_21C58EB88(v105, v104, v109);
  v61 = v107;
  v101 = v60;
  v62 = [v107 imageForDescriptor_];
  v63 = *(v58 + 88);
  sub_21C5957D8();
  sub_21C5957B8();
  v64 = *v28;
  v96 = v61;

  *v28 = v61;
  sub_21C5957C8();
  sub_21C5957B8();
  sub_21C58F264(v56, v28 + *(v43 + 40));
  sub_21C5957C8();
  v65 = v57;
  sub_21C5957B8();

  v28[1] = v57;
  sub_21C5957C8();
  if (v62)
  {
    v66 = v101;
    if (([v62 placeholder] & 1) != 0 || (v67 = objc_msgSend(v62, sel_CGImage)) == 0)
    {
      v69 = sub_21C5958F8();
      (*(*(v69 - 8) + 56))(v99, 1, 1, v69);
      v70 = v97;
      v71 = *(v97 + 16);
      v107 = v62;
      v72 = v109;
      v71(v100, v59, v109);
      sub_21C5958D8();
      v105 = v96;
      v73 = v66;
      v74 = sub_21C5958C8();
      v75 = (*(v70 + 80) + 64) & ~*(v70 + 80);
      v76 = swift_allocObject();
      v77 = MEMORY[0x277D85700];
      *(v76 + 2) = v74;
      *(v76 + 3) = v77;
      v78 = v103;
      *(v76 + 4) = v102;
      *(v76 + 5) = v78;
      *(v76 + 6) = v105;
      *(v76 + 7) = v73;
      (*(v70 + 32))(&v76[v75], v100, v72);
      v79 = sub_21C594754(0, 0, v99, &unk_21C596BE0, v76);
      sub_21C5957B8();
      v80 = *(v106 + 44);
      v81 = *(v28 + v80);

      *(v28 + v80) = v79;
      sub_21C5957C8();
    }

    else
    {

      MEMORY[0x28223BE20](*(v59 + *(v109 + 80)));
      v68 = v103;
      *(&v90 - 4) = v102;
      *(&v90 - 3) = v68;
      *(&v90 - 2) = v62;
      *(&v90 - 1) = v59;
      sub_21C5955E8();
    }
  }

  else
  {
    MEMORY[0x28223BE20](*(v59 + *(v109 + 80)));
    v82 = v103;
    *(&v90 - 4) = v102;
    *(&v90 - 3) = v82;
    *(&v90 - 2) = v59;
    sub_21C5955E8();
  }
}

uint64_t sub_21C58E6EC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21C58E6F8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21C58E704()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for AsyncIconImage();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();

  v8 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21C595588();
    (*(*(v9 - 8) + 8))(v0 + v5, v9);
  }

  else
  {
    v10 = *v8;
  }

  v11 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21C5955C8();
    (*(*(v12 - 8) + 8))(&v8[v11], v12);
  }

  else
  {
    v13 = *&v8[v11];
  }

  sub_21C58E6EC(*&v8[v3[10]], v8[v3[10] + 8]);
  v14 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21C5956C8();
    (*(*(v15 - 8) + 8))(&v8[v14], v15);
  }

  else
  {
    v16 = *&v8[v14];
  }

  sub_21C58FB08(*&v8[v3[12]], *&v8[v3[12] + 8], v8[v3[12] + 16], v8[v3[12] + 17]);
  sub_21C58E6EC(*&v8[v3[13]], v8[v3[13] + 8]);
  sub_21C58E6F8(*&v8[v3[14]], v8[v3[14] + 8], v8[v3[14] + 9]);
  sub_21C58E6F8(*&v8[v3[15]], v8[v3[15] + 8], v8[v3[15] + 9]);
  sub_21C58E6EC(*&v8[v3[16]], v8[v3[16] + 8]);
  sub_21C58FAFC(*&v8[v3[17]], v8[v3[17] + 8]);

  v17 = *&v8[v3[20]];

  v18 = *&v8[v3[21] + 8];

  v19 = &v8[v3[22]];

  v20 = type metadata accessor for AsyncIconImage.LoadingState();
  v21 = v19 + v20[10];
  v22 = type metadata accessor for IconEnvironmentTraits();
  if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
  {
    v23 = sub_21C595588();
    (*(*(v23 - 8) + 8))(v21, v23);
    v24 = v6;
    v25 = v22[5];
    v26 = sub_21C5956C8();
    (*(*(v26 - 8) + 8))(&v21[v25], v26);
    v27 = v22[6];
    v28 = sub_21C5955C8();
    v29 = &v21[v27];
    v6 = v24;
    v5 = (v4 + 64) & ~v4;
    (*(*(v28 - 8) + 8))(v29, v28);
  }

  v30 = *(v19 + v20[11]);

  sub_21C58D478(*(v19 + v20[12]));
  v31 = *(v19 + *(sub_21C5957D8() + 28));

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

id sub_21C58EB88(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_21C5955C8();
  v45 = *(v6 - 8);
  v46 = v6;
  v7 = *(v45 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_21C5956C8();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for IconEnvironmentTraits();
  v18 = *(v17 - 1);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = a2;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) init];
  }

  sub_21C58B790(a1, v16, &qword_27CDE0678, &qword_21C596948);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v23 = a2;
    sub_21C58B988(v16, &qword_27CDE0678, &qword_21C596948);
  }

  else
  {
    sub_21C58F034(v16, v21);
    v24 = a2;
    v25 = sub_21C5927E4(a3);
    if (v26)
    {
      if (a2)
      {
        [v24 scale];
      }

      else
      {
        v27 = sub_21C5921CC(a3);
      }

      v28 = v27;
    }

    else
    {
      v28 = *&v25;
    }

    [v22 setAppearance_];
    if (*&v21[v17[11]])
    {
      [v22 setTintColor_];
    }

    [v22 setAppearanceVariant_];
    v29 = v17[5];
    v30 = v43;
    (*(v9 + 104))(v12, *MEMORY[0x277CE0210], v43);
    LOBYTE(v29) = sub_21C595578();
    (*(v9 + 8))(v12, v30);
    [v22 setContrast_];
    v31 = v17[6];
    v33 = v44;
    v32 = v45;
    v34 = v46;
    (*(v45 + 104))(v44, *MEMORY[0x277CDFA88], v46);
    LOBYTE(v31) = sub_21C5955B8();
    (*(v32 + 8))(v33, v34);
    if (v31)
    {
      v35 = 1;
    }

    else
    {
      v35 = 2;
    }

    [v22 setLanguageDirection_];
    [v22 setScale_];
    v36 = &v21[v17[7]];
    if ((v36[8] & 1) == 0)
    {
      [v22 setShape_];
    }

    v37 = v21[v17[8]];
    if (v37 != 2)
    {
      [v22 setDrawBorder_];
    }

    v38 = sub_21C58F098(a3);
    if ((v40 & 1) == 0)
    {
      [v22 setSize_];
    }

    sub_21C58F208(v21);
  }

  return v22;
}

uint64_t sub_21C58F034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconEnvironmentTraits();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C58F098(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 48);
  result = *v8;
  v10 = *(v8 + 16);
  if (*(v8 + 17) != 1)
  {
    v11 = *v8;
    v12 = *(v8 + 8);

    sub_21C595928();
    v13 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58FB08(v11, v12, v10, 0);
    (*(v4 + 8))(v7, v3);
    return v14[1];
  }

  return result;
}

uint64_t sub_21C58F208(uint64_t a1)
{
  v2 = type metadata accessor for IconEnvironmentTraits();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21C58F264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21C58F2D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v26[3] = a2;
  v8 = type metadata accessor for AsyncIconImage.LoadingState();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - v10;
  if (qword_2812167D8 != -1)
  {
    swift_once();
  }

  v12 = sub_21C595538();
  __swift_project_value_buffer(v12, qword_281216A80);
  v13 = a1;
  v14 = sub_21C595518();
  v15 = sub_21C595918();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26[1] = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v26[0] = v8;
    v19 = a5;
    v20 = v18;
    *v17 = 138412290;
    *(v17 + 4) = v13;
    *v18 = v13;
    v21 = v13;
    v8 = v26[0];
    _os_log_impl(&dword_21C589000, v14, v15, v19, v17, 0xCu);
    sub_21C58B988(v20, &qword_27CDE06C8, &qword_21C596BE8);
    MEMORY[0x21CF0D450](v20, -1, -1);
    MEMORY[0x21CF0D450](v17, -1, -1);
  }

  result = [v13 CGImage];
  if (result)
  {
    [v13 scale];
    v23 = sub_21C595788();
    v24 = *(type metadata accessor for AsyncIconImage() + 88);
    sub_21C5957D8();
    sub_21C5957B8();
    v25 = *(v8 + 48);
    sub_21C58D478(*&v11[v25]);
    *&v11[v25] = v23;
    return sub_21C5957C8();
  }

  else
  {
    __break(1u);
  }

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

uint64_t sub_21C58F5AC()
{
  v0 = sub_21C595538();
  __swift_allocate_value_buffer(v0, qword_281216A80);
  __swift_project_value_buffer(v0, qword_281216A80);
  return sub_21C595528();
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for AsyncIconImage();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = (v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21C595588();
    (*(*(v8 - 8) + 8))(v0 + v5, v8);
  }

  else
  {
    v9 = *v7;
  }

  v10 = v3[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21C5955C8();
    (*(*(v11 - 8) + 8))(&v7[v10], v11);
  }

  else
  {
    v12 = *&v7[v10];
  }

  sub_21C58E6EC(*&v7[v3[10]], v7[v3[10] + 8]);
  v13 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21C5956C8();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
  }

  else
  {
    v15 = *&v7[v13];
  }

  sub_21C58FB08(*&v7[v3[12]], *&v7[v3[12] + 8], v7[v3[12] + 16], v7[v3[12] + 17]);
  sub_21C58E6EC(*&v7[v3[13]], v7[v3[13] + 8]);
  sub_21C58E6F8(*&v7[v3[14]], v7[v3[14] + 8], v7[v3[14] + 9]);
  sub_21C58E6F8(*&v7[v3[15]], v7[v3[15] + 8], v7[v3[15] + 9]);
  sub_21C58E6EC(*&v7[v3[16]], v7[v3[16] + 8]);
  sub_21C58FAFC(*&v7[v3[17]], v7[v3[17] + 8]);

  v16 = *&v7[v3[20]];

  v17 = *&v7[v3[21] + 8];

  v18 = &v7[v3[22]];

  v19 = type metadata accessor for AsyncIconImage.LoadingState();
  v20 = v18 + v19[10];
  v21 = type metadata accessor for IconEnvironmentTraits();
  if (!(*(*(v21 - 1) + 48))(v20, 1, v21))
  {
    v22 = sub_21C595588();
    (*(*(v22 - 8) + 8))(v20, v22);
    v23 = v6;
    v24 = v21[5];
    v25 = sub_21C5956C8();
    (*(*(v25 - 8) + 8))(&v20[v24], v25);
    v26 = v21[6];
    v27 = sub_21C5955C8();
    v28 = &v20[v26];
    v6 = v23;
    v5 = (v4 + 32) & ~v4;
    (*(*(v27 - 8) + 8))(v28, v27);
  }

  v29 = *(v18 + v19[11]);

  sub_21C58D478(*(v18 + v19[12]));
  v30 = *(v18 + *(sub_21C5957D8() + 28));

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
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

void sub_21C58FAFC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_21C58FB08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_21C58FB14(uint64_t a1, uint64_t a2)
{
  if ((sub_21C595578() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for IconEnvironmentTraits();
  v5 = v4[5];
  if ((sub_21C595578() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  if ((sub_21C5955B8() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[7];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 8);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v12 = v4[8];
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }

LABEL_15:
    if (*(a1 + v4[9]) != *(a2 + v4[9]) || *(a1 + v4[10]) != *(a2 + v4[10]))
    {
      return 0;
    }

    v16 = v4[11];
    v17 = *(a1 + v16);
    v18 = *(a2 + v16);
    if (v17)
    {
      if (!v18)
      {
        return 0;
      }

      sub_21C58B06C();
      v19 = v18;
      v20 = v17;
      v21 = sub_21C595968();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (v14 != 2 && ((v14 ^ v13) & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

void *sub_21C58FCB0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_21C58FCCC@<D0>(uint64_t a1@<X8>)
{
  sub_21C58BDF8();
  sub_21C595678();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_21C58FD24(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_21C58BDF8();
  return sub_21C595688();
}

uint64_t sub_21C58FD78@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58BEAC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

uint64_t sub_21C58FDC8(char *a1)
{
  v2 = *a1;
  sub_21C58BEAC();
  return sub_21C595688();
}

uint64_t sub_21C58FE94@<X0>(_BYTE *a1@<X8>)
{
  sub_21C58C0BC();
  result = sub_21C595678();
  *a1 = v3;
  return result;
}

uint64_t sub_21C58FEE4(char *a1)
{
  v2 = *a1;
  sub_21C58C0BC();
  return sub_21C595688();
}

uint64_t sub_21C58FFDC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21C59001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0698, &qword_21C596A70);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A0, &qword_21C596A78);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = *(a3 + 36);
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A8, &qword_21C596A80);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = *(a3 + 44);
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v16 = *(a1 + *(a3 + 72));
    if (v16 >= 0xFFFFFFFF)
    {
      LODWORD(v16) = -1;
    }

    return (v16 + 1);
  }

  else
  {
    v17 = *(a3 + 16);
    v18 = *(a3 + 24);
    type metadata accessor for AsyncIconImage.LoadingState();
    v19 = sub_21C5957D8();
    v20 = *(*(v19 - 8) + 48);
    v21 = a1 + *(a3 + 88);

    return v20(v21, a2, v19);
  }
}

uint64_t sub_21C59020C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0698, &qword_21C596A70);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A0, &qword_21C596A78);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = *(a4 + 36);
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06A8, &qword_21C596A80);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = *(a4 + 44);
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 72)) = (a2 - 1);
  }

  else
  {
    v17 = *(a4 + 16);
    v18 = *(a4 + 24);
    type metadata accessor for AsyncIconImage.LoadingState();
    v19 = sub_21C5957D8();
    v20 = *(*(v19 - 8) + 56);
    v21 = a1 + *(a4 + 88);

    return v20(v21, a2, a2, v19);
  }

  return result;
}

uint64_t sub_21C5903FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C590434()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C59050C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21C590608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C590DD4();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C59066C()
{
  sub_21C58C118();
  sub_21C595668();
  return v1;
}

uint64_t sub_21C5906A8(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v4 = v2;
  return sub_21C5905A4();
}

uint64_t sub_21C590700(uint64_t a1, id *a2)
{
  result = sub_21C595848();
  *a2 = 0;
  return result;
}

uint64_t sub_21C590778(uint64_t a1, id *a2)
{
  v3 = sub_21C595858();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_21C5907F8@<X0>(uint64_t *a1@<X8>)
{
  sub_21C595868();
  v2 = sub_21C595838();

  *a1 = v2;
  return result;
}

uint64_t sub_21C59083C()
{
  v1 = *v0;
  sub_21C595A18();
  MEMORY[0x21CF0D050](v1);
  return sub_21C595A48();
}

uint64_t sub_21C590884()
{
  v1 = *v0;
  sub_21C595A18();
  MEMORY[0x21CF0D050](v1);
  return sub_21C595A48();
}

uint64_t sub_21C5908C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_21C595838();

  *a2 = v5;
  return result;
}

uint64_t sub_21C590910@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_21C595868();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_21C59093C(uint64_t a1)
{
  v2 = sub_21C590C6C(&qword_27CDE05B0, type metadata accessor for ISImageDescriptorName);
  v3 = sub_21C590C6C(&qword_27CDE05B8, type metadata accessor for ISImageDescriptorName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_21C5909F8()
{
  v1 = *v0;
  v2 = sub_21C595868();
  v3 = MEMORY[0x21CF0CEC0](v2);

  return v3;
}

uint64_t sub_21C590A34()
{
  v1 = *v0;
  sub_21C595868();
  sub_21C595888();
}

uint64_t sub_21C590A88()
{
  v1 = *v0;
  sub_21C595868();
  sub_21C595A18();
  sub_21C595888();
  v2 = sub_21C595A48();

  return v2;
}

uint64_t sub_21C590AFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_21C595868();
  v6 = v5;
  if (v4 == sub_21C595868() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_21C5959C8();
  }

  return v9 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21C590B94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C590BB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_21C590C6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21C590DD4()
{
  result = qword_27CDE0590;
  if (!qword_27CDE0590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0598, &unk_21C596340);
    sub_21C590C6C(&qword_27CDE05A0, sub_21C590ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0590);
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

unint64_t sub_21C590ED0()
{
  result = qword_27CDE05A8;
  if (!qword_27CDE05A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDE05A8);
  }

  return result;
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

void sub_21C590FEC()
{
  v1 = v0;
  sub_21C595588();
  sub_21C58D498(&qword_27CDE05C0, MEMORY[0x277CDF3E0]);
  sub_21C595828();
  v2 = type metadata accessor for IconEnvironmentTraits();
  v3 = v2[5];
  sub_21C5956C8();
  sub_21C58D498(&qword_27CDE05C8, MEMORY[0x277CE0228]);
  sub_21C595828();
  v4 = v2[6];
  sub_21C5955C8();
  sub_21C58D498(&qword_27CDE05D0, MEMORY[0x277CDFAA0]);
  sub_21C595828();
  v5 = (v1 + v2[7]);
  if (*(v5 + 8) == 1)
  {
    sub_21C595A38();
  }

  else
  {
    v6 = *v5;
    sub_21C595A38();
    MEMORY[0x21CF0D050](v6);
  }

  if (*(v1 + v2[8]) != 2)
  {
    sub_21C595A38();
  }

  sub_21C595A38();
  MEMORY[0x21CF0D050](*(v1 + v2[9]));
  MEMORY[0x21CF0D050](*(v1 + v2[10]));
  v7 = *(v1 + v2[11]);
  if (v7)
  {
    sub_21C595A38();
    v8 = v7;
    sub_21C595978();
  }

  else
  {
    sub_21C595A38();
  }
}

uint64_t sub_21C591220()
{
  sub_21C595A18();
  sub_21C590FEC();
  return sub_21C595A48();
}

uint64_t sub_21C591264()
{
  sub_21C595A18();
  sub_21C590FEC();
  return sub_21C595A48();
}

uint64_t sub_21C5912A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591C58();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C591304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591BDC();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C591368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591B28();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C5913CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C591A50();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21C59143C()
{
  sub_21C58BDF8();
  sub_21C595678();
  return v1;
}

uint64_t sub_21C59147C()
{
  sub_21C58BEAC();
  sub_21C595678();
  return v1;
}

uint64_t sub_21C5914F8(void (*a1)(void))
{
  a1();
  sub_21C595678();
  return v2;
}

uint64_t sub_21C591544()
{
  sub_21C58C0BC();
  sub_21C595678();
  return v1;
}

uint64_t View.iconSize(_:)()
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t sub_21C59160C(__int128 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  sub_21C58BDF8();
  return sub_21C595688();
}

uint64_t View.iconDrawsBorder(_:)()
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t sub_21C5916D4(char *a1)
{
  v2 = *a1;
  sub_21C58BEAC();
  return sub_21C595688();
}

uint64_t sub_21C591758()
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t keypath_set_7Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  a5(a1, a2);
  return sub_21C595688();
}

uint64_t View.disableIconEnviromentSettings(_:)()
{
  swift_getKeyPath();
  sub_21C595738();
}

uint64_t sub_21C5918C8(char *a1)
{
  v2 = *a1;
  sub_21C58C0BC();
  return sub_21C595688();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVySo6CGSizeVSgGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = *a1;
  v8 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  sub_21C5955D8();
  sub_21C5919AC(a4, a2, a3);
  return swift_getWitnessTable();
}

uint64_t sub_21C5919AC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_21C591A50()
{
  result = qword_27CDE0618;
  if (!qword_27CDE0618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0620, &qword_21C596740);
    sub_21C591AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0618);
  }

  return result;
}

unint64_t sub_21C591AD4()
{
  result = qword_27CDE0628;
  if (!qword_27CDE0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0628);
  }

  return result;
}

unint64_t sub_21C591B28()
{
  result = qword_27CDE0630;
  if (!qword_27CDE0630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0638, &qword_21C596748);
    sub_21C591D0C(&qword_27CDE0560, type metadata accessor for ISIconShape);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDE0630);
  }

  return result;
}

unint64_t sub_21C591BDC()
{
  result = qword_281216740;
  if (!qword_281216740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0640, &qword_21C596750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281216740);
  }

  return result;
}

unint64_t sub_21C591C58()
{
  result = qword_2812166C8;
  if (!qword_2812166C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDE0648, &qword_21C596758);
    sub_21C591D0C(&qword_2812166D8, type metadata accessor for CGSize);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812166C8);
  }

  return result;
}

uint64_t sub_21C591D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AsyncIconImagePhase.image.getter()
{
  if (*v0 >> 62)
  {
    return 0;
  }

  else
  {
  }
}

uint64_t AsyncIconImagePhase.error.getter()
{
  v1 = *v0;
  if (*v0 >> 62 != 1)
  {
    return 0;
  }

  v2 = v1 & 0x3FFFFFFFFFFFFFFFLL;
  v3 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
  return v2;
}

uint64_t sub_21C591DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21C595658();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - v11);
  sub_21C58B790(v2, &v17 - v11, &qword_27CDE0658, &qword_21C5967A8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21C595588();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_21C595928();
    v16 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_21C591FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21C595658();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_21C58B790(v2 + *(a1 + 36), &v18 - v12, &qword_27CDE0668, &qword_21C5967E8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21C5955C8();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_21C595928();
    v17 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

double sub_21C5921CC(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 40));
  v9 = *v8;
  if (v8[8] == 1)
  {
    return *v8;
  }

  sub_21C595928();
  v11 = sub_21C595708();
  sub_21C595508();

  sub_21C595648();
  swift_getAtKeyPath();
  sub_21C58E6EC(v9, 0);
  (*(v4 + 8))(v7, v3);
  return *&v12[1];
}

uint64_t sub_21C592324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_21C595658();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v18 - v12);
  sub_21C58B790(v2 + *(a1 + 44), &v18 - v12, &qword_27CDE0670, &qword_21C596850);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_21C5956C8();
    return (*(*(v14 - 8) + 32))(a2, v13, v14);
  }

  else
  {
    v16 = *v13;
    sub_21C595928();
    v17 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_21C592528(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 52);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_21C595928();
    v10 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6EC(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v12[15];
  }

  return v9;
}

uint64_t sub_21C59267C(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 56);
  result = *v8;
  v10 = *(v8 + 8);
  if (*(v8 + 9) != 1)
  {
    v11 = *v8;

    sub_21C595928();
    v12 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6F8(v11, v10, 0);
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return result;
}

uint64_t sub_21C5927E4(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 60);
  result = *v8;
  v10 = *(v8 + 8);
  if (*(v8 + 9) != 1)
  {
    v11 = *v8;

    sub_21C595928();
    v12 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6F8(v11, v10, 0);
    (*(v4 + 8))(v7, v3);
    return v13;
  }

  return result;
}

uint64_t sub_21C59294C(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1 + 64);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_21C595928();
    v10 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58E6EC(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

void *sub_21C592AA0(uint64_t a1)
{
  v3 = sub_21C595658();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + *(a1 + 68);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    sub_21C595928();
    v11 = sub_21C595708();
    sub_21C595508();

    sub_21C595648();
    swift_getAtKeyPath();
    sub_21C58FAFC(v9, 0);
    (*(v4 + 8))(v7, v3);
    return v13[1];
  }

  return v9;
}

uint64_t sub_21C592BFC(uint64_t a1)
{
  v2 = type metadata accessor for AsyncIconImage.LoadingState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  sub_21C5957A8();
  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_21C592CF0@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for AsyncIconImage.LoadingState();
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[10];
  v4 = type metadata accessor for IconEnvironmentTraits();
  result = (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[11]] = 0;
  *&a1[v2[12]] = 0x8000000000000000;
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

uint64_t AsyncIconImage.init(icon:descriptor:transaction:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v29 = a4;
  v30 = a5;
  v10 = type metadata accessor for AsyncIconImage.LoadingState();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v29 - v12;
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0658, &qword_21C5967A8);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for AsyncIconImage();
  v15 = v14[9];
  *(a6 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0668, &qword_21C5967E8);
  swift_storeEnumTagMultiPayload();
  v16 = a6 + v14[10];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = v14[11];
  *(a6 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0670, &qword_21C596850);
  swift_storeEnumTagMultiPayload();
  v18 = a6 + v14[12];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  *(v18 + 8) = 0;
  v19 = a6 + v14[13];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a6 + v14[14];
  *v20 = swift_getKeyPath();
  *(v20 + 4) = 0;
  v21 = a6 + v14[15];
  *v21 = swift_getKeyPath();
  *(v21 + 4) = 0;
  v22 = a6 + v14[16];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a6 + v14[17];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v14[19];
  v25 = v14[22];
  sub_21C592CF0(v13);
  result = sub_21C592BFC(v13);
  *(a6 + v14[23]) = 0;
  *(a6 + v14[18]) = a1;
  *(a6 + v24) = a2;
  *(a6 + v14[20]) = a3;
  v27 = (a6 + v14[21]);
  v28 = v30;
  *v27 = v29;
  v27[1] = v28;
  return result;
}

uint64_t AsyncIconImage.init<A, B>(icon:descriptor:transaction:content:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a4;
  v18[7] = a5;
  v18[8] = a6;
  v18[9] = a7;
  sub_21C5956F8();
  swift_getWitnessTable();
  return AsyncIconImage.init(icon:descriptor:transaction:content:)(a1, a2, a3, sub_21C594B34, v18, a9);
}

uint64_t sub_21C593148@<X0>(unint64_t *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v51 = a7;
  v52 = a8;
  v45 = a4;
  v46 = a3;
  v12 = *(a5 - 8);
  v47 = a2;
  v48 = v12;
  v13 = *(v12 + 64);
  v53 = a9;
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v44 - v18;
  v21 = *(v20 - 8);
  v22 = v21[8];
  v23 = MEMORY[0x28223BE20](v17);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v44 - v26;
  v28 = sub_21C5956F8();
  v49 = *(v28 - 8);
  v50 = v28;
  v29 = *(v49 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v44 - v31;
  v33 = *a1;
  if (v33 >> 62)
  {
    v45(v30);
    v39 = v21[2];
    v39(v27, v25, a6);
    v40 = v21[1];
    v40(v25, a6);
    v39(v25, v27, a6);
    v38 = v51;
    sub_21C593614(v25, a5, a6);
    v40(v25, a6);
    v40(v27, a6);
  }

  else
  {

    v47(v34);
    v35 = v48;
    v36 = *(v48 + 16);
    v36(v19, v16, a5);
    v37 = *(v35 + 8);
    v37(v16, a5);
    v36(v16, v19, a5);
    v38 = v51;
    sub_21C59351C(v16, a5);
    sub_21C58D478(v33);
    v37(v16, a5);
    v37(v19, a5);
  }

  v54 = v38;
  v55 = v53;
  v41 = v50;
  swift_getWitnessTable();
  v42 = v49;
  (*(v49 + 16))(v52, v32, v41);
  return (*(v42 + 8))(v32, v41);
}

uint64_t sub_21C59351C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21C5956D8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_21C5956E8();
}

uint64_t sub_21C593614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21C5956D8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_21C5956E8();
}

uint64_t sub_21C59370C()
{
  v0 = type metadata accessor for AsyncIconImage.LoadingState();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - v3;
  v5 = type metadata accessor for AsyncIconImage();
  sub_21C58D090(v5);
  v6 = *(v0 + 44);
  if (!*&v4[v6])
  {
    return (*(v1 + 8))(v4, v0);
  }

  v7 = *(v1 + 8);
  v8 = *&v4[v6];

  v7(v4, v0);
  sub_21C595908();
}

uint64_t sub_21C59384C(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE0678, &qword_21C596948);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = *a1;
  v9 = type metadata accessor for AsyncIconImage();
  v10 = *(a2 + *(v9 + 72));
  sub_21C58D114(v9, v7);
  sub_21C58DCA4(v10, v7, v8, v9);
  return sub_21C58B988(v7, &qword_27CDE0678, &qword_21C596948);
}

uint64_t sub_21C593934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for AsyncIconImage.LoadingState();
  v8[8] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[9] = swift_task_alloc();
  v8[10] = sub_21C5958D8();
  v8[11] = sub_21C5958C8();
  v12 = sub_21C5958A8();
  v8[12] = v12;
  v8[13] = v11;

  return MEMORY[0x2822009F8](sub_21C593A10, v12, v11);
}

uint64_t sub_21C593A10()
{
  v1 = *(v0 + 80);
  v9 = *(v0 + 24);
  v2 = sub_21C5958C8();
  *(v0 + 112) = v2;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *(v3 + 16) = v9;
  v4 = *(MEMORY[0x277D859E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D0, &qword_21C596C08);
  *v5 = v0;
  v5[1] = sub_21C593B3C;
  v7 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v0 + 16, v2, v7, 0xD00000000000002CLL, 0x800000021C597E90, sub_21C595380, v3, v6);
}

uint64_t sub_21C593B3C()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 120);
  v4 = *(*v0 + 112);
  v8 = *v0;

  v5 = *(v1 + 104);
  v6 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21C593C9C, v6, v5);
}

uint64_t sub_21C593C9C()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 16);
  if (v2)
  {
    if (([*(v0 + 16) placeholder] & 1) != 0 || (v3 = objc_msgSend(v2, sel_CGImage)) == 0)
    {
      v10 = *(v0 + 64);
      v9 = *(v0 + 72);
      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      v13 = *(v0 + 40);
      type metadata accessor for AsyncIconImage.LoadingError();
      swift_getWitnessTable();
      v14 = swift_allocError() | 0x4000000000000000;
      v15 = *(type metadata accessor for AsyncIconImage() + 88);
      sub_21C5957D8();
      sub_21C5957B8();
      v16 = *(v10 + 48);
      sub_21C58D478(*(v9 + v16));
      *(v9 + v16) = v14;
      sub_21C5957C8();

      goto LABEL_8;
    }

    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);

    v7 = *(v6 + *(type metadata accessor for AsyncIconImage() + 80));
    v8 = swift_task_alloc();
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v2;
    v8[5] = v6;
    sub_21C5955E8();
  }

  else
  {
    v17 = *(v0 + 48);
    v18 = *(v0 + 56);
    v19 = *(v0 + 40);
    v20 = *(v19 + *(type metadata accessor for AsyncIconImage() + 80));
    v21 = swift_task_alloc();
    v21[2] = v17;
    v21[3] = v18;
    v21[4] = v19;
    sub_21C5955E8();
  }

LABEL_8:
  v22 = *(v0 + 72);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_21C593EE8(uint64_t a1, void *a2, void *a3)
{
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v35 = sub_21C5957E8();
  v38 = *(v35 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21C595818();
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = *(v36 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_21C5957F8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C58AB9C(0, &qword_2812166F8, 0x277D85C78);
  (*(v16 + 104))(v19, *MEMORY[0x277D851B8], v15);
  v31 = sub_21C595948();
  (*(v16 + 8))(v19, v15);
  (*(v11 + 16))(v14, v32, v10);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v23 = v33;
  v22 = v34;
  *(v21 + 16) = v33;
  *(v21 + 24) = v22;
  (*(v11 + 32))(v21 + v20, v14, v10);
  aBlock[4] = sub_21C5953C8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C5945E4;
  aBlock[3] = &block_descriptor;
  v24 = _Block_copy(aBlock);
  v25 = v23;
  v26 = v22;
  sub_21C595808();
  v39 = MEMORY[0x277D84F90];
  sub_21C58D4E0(&qword_281216758, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDE06E0, &qword_21C596C18);
  sub_21C58BC30(&qword_281216750, qword_27CDE06E0, &qword_21C596C18);
  v27 = v35;
  sub_21C595998();
  v28 = v31;
  MEMORY[0x21CF0CF60](0, v9, v5, v24);
  _Block_release(v24);

  (*(v38 + 8))(v5, v27);
  (*(v36 + 8))(v9, v37);
}

void sub_21C594370(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a3, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_21C595450;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C594578;
  aBlock[3] = &block_descriptor_93;
  v13 = _Block_copy(aBlock);

  [a1 getImageForImageDescriptor:a2 completion:v13];
  _Block_release(v13);
}

uint64_t sub_21C594528(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10);
  return sub_21C5958B8();
}

void sub_21C594578(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_21C5945E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21C594628()
{
  v0 = type metadata accessor for AsyncIconImage.LoadingState();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - v2;
  type metadata accessor for AsyncIconImage.LoadingError();
  swift_getWitnessTable();
  v4 = swift_allocError() | 0x4000000000000000;
  v5 = *(type metadata accessor for AsyncIconImage() + 88);
  sub_21C5957D8();
  sub_21C5957B8();
  v6 = *(v0 + 48);
  sub_21C58D478(*&v3[v6]);
  *&v3[v6] = v4;
  return sub_21C5957C8();
}

uint64_t sub_21C594754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06B8, &qword_21C596BC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_21C58B790(a3, v27 - v11, &qword_27CDE06B8, &qword_21C596BC8);
  v13 = sub_21C5958F8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21C58B988(v12, &qword_27CDE06B8, &qword_21C596BC8);
  }

  else
  {
    sub_21C5958E8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_21C5958A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_21C595878() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_21C58B988(a3, &qword_27CDE06B8, &qword_21C596BC8);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21C58B988(a3, &qword_27CDE06B8, &qword_21C596BC8);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_21C594A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

void sub_21C594B80(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for AsyncIconImage();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  sub_21C58DCA4(*(v6 + *(v5 + 72)), a1, *(v6 + *(v5 + 76)), v5);
}

uint64_t sub_21C594BF8(void **a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for AsyncIconImage() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_21C59384C(a1, v6);
}

uint64_t sub_21C594C90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_21C594CEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_21C594D64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21C594DAC(uint64_t result, int a2, int a3)
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

uint64_t sub_21C594DEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_21C594628();
}

uint64_t sub_21C594E0C(uint64_t a1)
{
  v5 = v1[4];
  v4 = v1[5];
  v6 = *(type metadata accessor for AsyncIconImage() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21C594F2C;

  return sub_21C593934(a1, v8, v9, v10, v11, v1 + v7, v5, v4);
}

uint64_t sub_21C594F2C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21C595020(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C595118;

  return v7(a1);
}

uint64_t sub_21C595118()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_21C595210(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C595500;

  return sub_21C595020(a1, v5);
}

uint64_t sub_21C5952C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C594F2C;

  return sub_21C595020(a1, v5);
}

void sub_21C5953C8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_21C594370(v2, v3, v4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C595450(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDE06D8, &qword_21C596C10) - 8) + 80);

  return sub_21C594528(a1);
}