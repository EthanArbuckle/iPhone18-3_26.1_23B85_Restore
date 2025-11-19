void sub_26A775930()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v0 - 8);
  sub_26A4D7E54();

  sub_26A774F6C();
  sub_26A771AB4();
}

uint64_t sub_26A7759F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ActionType();
  MEMORY[0x28223BE20](v5);
  v24 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91C8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v16 = *(v2 + a1[17]);
  sub_26A4D7E54();
  v25 = *(v2 + a1[19]);
  v17 = *(v2 + a1[21]);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = swift_getKeyPath();
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  sub_26A4D7E54();
  if (__swift_getEnumTagSinglePayload(v12, 1, v5) == 1)
  {

    sub_26A5DFFA0(v12, &qword_2803A91C8);
LABEL_6:
    KeyPath = swift_getKeyPath();
    *(a2 + 80) = &type metadata for DefaultComponentWithAction.WithoutAction;
    *(a2 + 88) = sub_26A4D343C();
    v22 = swift_allocObject();
    *(a2 + 56) = v22;
    *(v22 + 16) = KeyPath;
    *(v22 + 24) = 0;
    *(v22 + 32) = 0;
    *(v22 + 40) = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = v16;
    return sub_26A5DFFA0(v15, &qword_2803A91C8);
  }

  sub_26A7777F8();

  v18 = v25;
  if ((sub_26A6ACFB8(v25) & 1) == 0)
  {
    sub_26A777C3C(v9, type metadata accessor for ActionType);
    goto LABEL_6;
  }

  v19 = v24;
  sub_26A7777A4();
  *(a2 + 80) = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  *(a2 + 88) = sub_26A7766F8(&unk_2803A9488);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 56));
  sub_26A773774(v16, v19, v18, boxed_opaque_existential_1, v17);
  sub_26A777C3C(v9, type metadata accessor for ActionType);
  return sub_26A5DFFA0(v15, &qword_2803A91C8);
}

uint64_t sub_26A775D44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + *(a1 + 68));
  v6 = type metadata accessor for RuntimeComponentWithAction(0);
  sub_26A4D7E54();
  v7 = *(v2 + *(a1 + 84));
  KeyPath = swift_getKeyPath();
  *a2 = v5;
  *(a2 + v6[6]) = v7;
  v9 = a2 + v6[7];
  *v9 = KeyPath;
  v9[8] = 0;
  v10 = v6[8];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
}

double sub_26A775E30(uint64_t a1)
{
  v2 = v1 + *(a1 + 72);
  if (*(v2 + 32))
  {
    v2 = v1 + 208;
  }

  v3 = *v2;
  if ((sub_26A7755D0() & 1) == 0)
  {
    if ((sub_26A775488() & 1) == 0)
    {
      sub_26A7751D8(&v6);
      if (v7)
      {
        v4 = v3;
      }

      else
      {
        v4 = v6;
      }

      if (v7 == 2)
      {
        v3 = v6;
      }

      else
      {
        v3 = v4;
      }
    }

    if ((sub_26A775340() & 1) == 0)
    {
      sub_26A7751D8(&v6);
    }
  }

  sub_26A775070(&v6);
  return v3;
}

__n128 ComponentWithAction.body.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26A776040(&v19);
  v5 = v19;
  KeyPath = swift_getKeyPath();
  v7 = sub_26A775E30(a1);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = swift_getKeyPath();
  v15 = v2 + *(a1 + 72);
  v20 = *(v15 + 32);
  v16 = v20;
  *a2 = v5;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  result = *v15;
  v18 = *(v15 + 16);
  *(a2 + 56) = *v15;
  *(a2 + 72) = v18;
  *(a2 + 88) = v16;
  return result;
}

uint64_t sub_26A776040@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ComponentWithAction();
  sub_26A4D7E54();
  v2 = v5;
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = View.eraseToAnyView()(v2);
    result = __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    result = sub_26A5DFFA0(v4, &qword_2803A9458);
  }

  *a1 = v2;
  return result;
}

void sub_26A7760F4(uint64_t a1@<X8>)
{
  *a1 = sub_26A770618();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

void sub_26A7761A0()
{
  sub_26A77735C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A776CBC(319, &qword_2803A9238, MEMORY[0x277CDF310], type metadata accessor for EnvironmentConstant);
    if (v1 <= 0x3F)
    {
      sub_26A776CBC(319, &qword_2803B3EA0, &type metadata for CustomHorizontalComponentPadding, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A776CBC(319, &qword_2803B72F8, &type metadata for CustomVerticalSnippetPadding, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A776CBC(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_26A77735C(319, qword_28157FA80, type metadata accessor for ActionType, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              sub_26A776CBC(319, &qword_2803AADC0, MEMORY[0x277CDF310], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                type metadata accessor for VRXIdiom();
                if (v7 <= 0x3F)
                {
                  type metadata accessor for ActionHandler(319);
                  if (v8 <= 0x3F)
                  {
                    sub_26A6260E8();
                    if (v9 <= 0x3F)
                    {
                      sub_26A77701C(319, &qword_2803B7300, &qword_2803B7308, &unk_26A881F08, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
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

unint64_t sub_26A776490()
{
  result = qword_2803B7310;
  if (!qword_2803B7310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7318);
    sub_26A776548();
    sub_26A5340D8(&unk_2803B7350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7310);
  }

  return result;
}

unint64_t sub_26A776548()
{
  result = qword_2803B7320;
  if (!qword_2803B7320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7328);
    sub_26A776600();
    sub_26A5340D8(&unk_2803B7340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7320);
  }

  return result;
}

unint64_t sub_26A776600()
{
  result = qword_2803B7330;
  if (!qword_2803B7330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7338);
    sub_26A4EA164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7330);
  }

  return result;
}

unint64_t sub_26A776684()
{
  result = qword_2803B7360;
  if (!qword_2803B7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7360);
  }

  return result;
}

unint64_t sub_26A7766F8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A77673C()
{
  result = qword_2803B7370;
  if (!qword_2803B7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7370);
  }

  return result;
}

uint64_t objectdestroyTm_29()
{
  OUTLINED_FUNCTION_51_6();

  return swift_deallocObject();
}

unint64_t sub_26A77680C()
{
  result = qword_2803B7390;
  if (!qword_2803B7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7390);
  }

  return result;
}

unint64_t sub_26A776860()
{
  result = qword_2803B7398;
  if (!qword_2803B7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7398);
  }

  return result;
}

void sub_26A77691C()
{
  type metadata accessor for ActionHandler(319);
  if (v0 <= 0x3F)
  {
    sub_26A6260E8();
    if (v1 <= 0x3F)
    {
      sub_26A77701C(319, &qword_2803B3E98, &qword_2803AFA68, &unk_26A86B340, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A776CBC(319, &qword_2803B73B0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for ActionType();
          if (v4 <= 0x3F)
          {
            sub_26A77701C(319, &qword_2803B7300, &qword_2803B7308, &unk_26A881F08, MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_26A776A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_26A776AD8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_26A776B5C()
{
  type metadata accessor for ActionHandler(319);
  if (v0 <= 0x3F)
  {
    sub_26A6260E8();
    if (v1 <= 0x3F)
    {
      sub_26A776CBC(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A77701C(319, &qword_2803B3E98, &qword_2803AFA68, &unk_26A86B340, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A776CBC(319, &qword_2803B73B0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ActionType();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A776CBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_113Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_179();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return OUTLINED_FUNCTION_49_0(*(v4 + *(a3 + 36)));
    }

    v8 = type metadata accessor for ActionType();
    v9 = v4 + *(a3 + 40);
  }

  return __swift_getEnumTagSinglePayload(v9, v3, v8);
}

void __swift_store_extra_inhabitant_index_114Tm()
{
  OUTLINED_FUNCTION_59_1();
  type metadata accessor for ActionHandler(0);
  OUTLINED_FUNCTION_179();
  if (*(v4 + 84) != v3)
  {
    if (v3 == 0x7FFFFFFF)
    {
      *(v1 + *(v2 + 36)) = (v0 - 1);
      return;
    }

    type metadata accessor for ActionType();
  }

  OUTLINED_FUNCTION_19_22();

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void sub_26A776EB4()
{
  type metadata accessor for ActionHandler(319);
  if (v0 <= 0x3F)
  {
    sub_26A6260E8();
    if (v1 <= 0x3F)
    {
      sub_26A776CBC(319, &qword_2803AB0C8, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_26A77701C(319, &qword_2803B3E98, &qword_2803AFA68, &unk_26A86B340, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_26A77701C(319, &qword_2803B73D8, &qword_2803B73E0, &unk_26A8823D8, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ActionType();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_26A77701C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26A777080(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_26A7770C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26A777148(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_26A777188(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26A777218()
{
  sub_26A77735C(319, qword_28157FA80, type metadata accessor for ActionType, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A77735C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26A77735C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26A77735C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26A7773C0(uint64_t a1)
{
  result = sub_26A7766F8(&unk_2803B7368);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A777418(uint64_t a1)
{
  result = sub_26A7766F8(&unk_2803B7378);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A777470(uint64_t a1)
{
  result = sub_26A7766F8(&unk_2803A9488);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26A777618()
{
  result = qword_2803B7400;
  if (!qword_2803B7400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B73F8);
    sub_26A4D33E8();
    sub_26A4D3340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7400);
  }

  return result;
}

uint64_t sub_26A7777A4()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A7777F8()
{
  OUTLINED_FUNCTION_145();
  v1(0);
  OUTLINED_FUNCTION_46();
  v2 = OUTLINED_FUNCTION_211();
  v3(v2);
  return v0;
}

uint64_t sub_26A77784C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for CarPlayComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  return sub_26A772A00(v4, a1);
}

uint64_t sub_26A7778B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_165Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for CarPlayComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_13_40();
  v4 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_33_13(v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v6 + 8))(v2 + v4, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_65();
  if (v7)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  v8 = OUTLINED_FUNCTION_42_9();
  if (!OUTLINED_FUNCTION_25_6(v8))
  {
    MEMORY[0x26D665710](v3);
    v9 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v9))
    {
      OUTLINED_FUNCTION_4_11();
      v10 = OUTLINED_FUNCTION_40_9();
      v11(v10);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_11_48(v0[5]);
  OUTLINED_FUNCTION_41_10();
  v12 = OUTLINED_FUNCTION_37_13(v0[8]);
  sub_26A59DDB4(v12, v14, v15, v16, *(v13 + 32), *(v13 + 33));

  v17 = (v2 + v0[10]);
  type metadata accessor for ActionType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v19 + 8))(v17);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A777B70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  OUTLINED_FUNCTION_2_5(v0);
  v1 = type metadata accessor for ActionType();
  OUTLINED_FUNCTION_79(v1);

  return sub_26A770F04();
}

uint64_t sub_26A777C3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_1_4();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_26A777C90@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WatchComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  return sub_26A7716F8(v4, a1);
}

uint64_t objectdestroy_185Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for WatchComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_13_40();
  v4 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_33_13(v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v6 + 8))(v2 + v4, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_65();
  if (v7)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  v8 = OUTLINED_FUNCTION_42_9();
  if (!OUTLINED_FUNCTION_25_6(v8))
  {
    MEMORY[0x26D665710](v3);
    v9 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v9))
    {
      OUTLINED_FUNCTION_4_11();
      v10 = OUTLINED_FUNCTION_40_9();
      v11(v10);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_11_48(v0[5]);
  OUTLINED_FUNCTION_41_10();
  v12 = OUTLINED_FUNCTION_37_13(v0[8]);
  sub_26A4D3334(v12, v14, v15, v16, *(v13 + 32));

  v17 = (v2 + v0[10]);
  type metadata accessor for ActionType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v19 + 8))(v17);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A777F3C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  OUTLINED_FUNCTION_79(v3);
  v5 = OUTLINED_FUNCTION_37_1(*(v4 + 80));
  return sub_26A772A54(v5, a2);
}

uint64_t sub_26A777F9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v2);
  v4 = OUTLINED_FUNCTION_37_1(*(v3 + 80));

  return sub_26A774070(v4, a1);
}

uint64_t objectdestroy_168Tm()
{
  OUTLINED_FUNCTION_28_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  OUTLINED_FUNCTION_2_5(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  type metadata accessor for ActionType();
  OUTLINED_FUNCTION_37_0();
  v7 = (v3 + v5 + *(v6 + 80)) & ~*(v6 + 80);

  v8 = v0 + v3;
  v9 = type metadata accessor for StandardActionHandler(0);
  if (!OUTLINED_FUNCTION_25_6(v9))
  {
    MEMORY[0x26D665710](v8);
    v10 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v10))
    {
      OUTLINED_FUNCTION_4_11();
      v11 = OUTLINED_FUNCTION_40_9();
      v12(v11);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v14 + 8))(v0 + v7);
      break;
    case 0:

      break;
  }

  OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A7781B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B3910);
  OUTLINED_FUNCTION_2_5(v1);
  v2 = type metadata accessor for ActionType();
  OUTLINED_FUNCTION_79(v2);
  v3 = *(v0 + 16);

  return sub_26A770D0C(v3);
}

uint64_t objectdestroy_195Tm()
{
  OUTLINED_FUNCTION_28_0();
  type metadata accessor for DefaultComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_37_0();
  v3 = OUTLINED_FUNCTION_13_40();
  v4 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A93D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26A84E408();
    if (!OUTLINED_FUNCTION_33_13(v5))
    {
      OUTLINED_FUNCTION_4_11();
      (*(v6 + 8))(v2 + v4, v1);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_65();
  if (v7)
  {
    if ((*(v1 + 8) & 1) == 0)
    {
      MEMORY[0x26D665710](v1);
    }
  }

  else
  {
  }

  MEMORY[0x26D665710](v1 + 16);
  v8 = OUTLINED_FUNCTION_42_9();
  if (!OUTLINED_FUNCTION_25_6(v8))
  {
    MEMORY[0x26D665710](v3);
    v9 = OUTLINED_FUNCTION_45_8();
    if (!OUTLINED_FUNCTION_20_27(v9))
    {
      OUTLINED_FUNCTION_4_11();
      v10 = OUTLINED_FUNCTION_40_9();
      v11(v10);
    }

    OUTLINED_FUNCTION_28_12();
    OUTLINED_FUNCTION_44_8();
    OUTLINED_FUNCTION_27_15();
  }

  OUTLINED_FUNCTION_11_48(v0[5]);
  sub_26A492280();

  v12 = OUTLINED_FUNCTION_37_13(v0[7]);
  sub_26A4D3334(v12, v14, v15, v16, *(v13 + 32));

  v17 = (v2 + v0[9]);
  type metadata accessor for ActionType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      sub_26A84BAB8();
      OUTLINED_FUNCTION_1_4();
      (*(v19 + 8))(v17);
      break;
    case 0:

      break;
  }

  v20 = v2 + v0[11];
  if (*(v20 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  OUTLINED_FUNCTION_36_8();
  OUTLINED_FUNCTION_27_0();

  return swift_deallocObject();
}

uint64_t sub_26A7784C0()
{
  v0 = type metadata accessor for DefaultComponentWithAction.WithAction(0);
  OUTLINED_FUNCTION_79(v0);
  OUTLINED_FUNCTION_37_1(*(v1 + 80));

  return sub_26A774210();
}

unint64_t sub_26A778514()
{
  result = qword_2803B7460;
  if (!qword_2803B7460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B73E0);
    sub_26A778598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7460);
  }

  return result;
}

unint64_t sub_26A778598()
{
  result = qword_2803B7468[0];
  if (!qword_2803B7468[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803B7468);
  }

  return result;
}

void sub_26A7785EC()
{
  sub_26A77735C(319, &qword_2803A9230, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26A5046B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_26A7786E0()
{
  result = qword_2803B74F0;
  if (!qword_2803B74F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B74F8);
    sub_26A777618();
    sub_26A4D32E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B74F0);
  }

  return result;
}

unint64_t sub_26A77876C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4);
    v2();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A7787CC()
{
  result = qword_2803B7518;
  if (!qword_2803B7518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7420);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7410);
    type metadata accessor for CarPlayComponentButtonStyle(255);
    sub_26A5340D8(&unk_2803B7428);
    sub_26A7766F8(&unk_2803B7430);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7518);
  }

  return result;
}

unint64_t sub_26A778918()
{
  result = qword_2803B7520;
  if (!qword_2803B7520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7528);
    sub_26A7789FC(&unk_2803B7530);
    sub_26A5340D8(&qword_2803A9440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7520);
  }

  return result;
}

unint64_t sub_26A7789FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v4);
    v2();
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A778A8C()
{
  result = qword_2803B7550;
  if (!qword_2803B7550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7558);
    sub_26A778B18();
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7550);
  }

  return result;
}

unint64_t sub_26A778B18()
{
  result = qword_2803B7560;
  if (!qword_2803B7560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE368);
    sub_26A778BC4(&unk_2803B7568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7560);
  }

  return result;
}

unint64_t sub_26A778BC4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3);
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A778C10()
{
  result = qword_2803B7580;
  if (!qword_2803B7580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803AE378);
    sub_26A5340D8(&unk_2803B7588);
    sub_26A4D6BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7580);
  }

  return result;
}

unint64_t sub_26A778CC8(uint64_t a1)
{
  result = OUTLINED_FUNCTION_32_1(a1);
  if (!result)
  {
    OUTLINED_FUNCTION_63_0(0, v3);
    sub_26A778BC4(&qword_28157FDF0);
    OUTLINED_FUNCTION_15_10();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_26A778D3C()
{
  result = qword_2803B7590[0];
  if (!qword_2803B7590[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7458);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7448);
    sub_26A84F588();
    sub_26A5340D8(&unk_2803B7450);
    sub_26A7766F8(&qword_28157FD68);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803B7590);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_65()
{
  sub_26A556DF4(*(v1 + v0[7]), *(v1 + v0[7] + 8), *(v1 + v0[7] + 16));
  sub_26A49035C(*(v1 + v0[8]), *(v1 + v0[8] + 8));
  return sub_26A49035C(*(v1 + v0[9]), *(v1 + v0[9] + 8));
}

uint64_t OUTLINED_FUNCTION_9_56()
{

  return sub_26A777C3C(v0, type metadata accessor for ActionType);
}

uint64_t OUTLINED_FUNCTION_13_40()
{
  v2 = v0 + ((v1 + 16) & ~v1);
  sub_26A556DF4(*v2, *(v2 + 8), *(v2 + 16));
  sub_26A49035C(*(v2 + 24), *(v2 + 32));

  return type metadata accessor for ActionHandler(0);
}

void OUTLINED_FUNCTION_21_29(uint64_t a1@<X8>)
{
  *a1 = v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = v2 + v3[6];
  *v7 = v4;
  *(v7 + 8) = 0;
  v8 = v2 + v3[7];
  *v8 = v5;
  *(v8 + 8) = 0;
  v9 = (v2 + v3[8]);
  *v9 = v6;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0;
}

uint64_t OUTLINED_FUNCTION_27_15()
{
}

uint64_t OUTLINED_FUNCTION_28_12()
{
}

uint64_t OUTLINED_FUNCTION_33_13(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_41_10()
{
  sub_26A492280();
  sub_26A49035C(*(v1 + *(v0 + 24)), *(v1 + *(v0 + 24) + 8));
}

uint64_t OUTLINED_FUNCTION_42_9()
{

  return type metadata accessor for StandardActionHandler(0);
}

uint64_t OUTLINED_FUNCTION_44_8()
{
}

uint64_t OUTLINED_FUNCTION_45_8()
{

  return sub_26A84E408();
}

uint64_t OUTLINED_FUNCTION_50_5()
{

  return sub_26A4D7E54();
}

uint64_t OUTLINED_FUNCTION_51_6()
{
  sub_26A49035C(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);

  return sub_26A4D3334(v1, v2, v3, v4, v5);
}

id sub_26A7791DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = sub_26A5D2090(v3);
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v11 = sub_26A779354([v3 image_style]);
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 48) = v5;
    *(v14 + 56) = v6;
    v15 = swift_allocObject();
    *(v15 + 16) = v3;
    *(v15 + 24) = v5;
    *(v15 + 32) = v6;
    v16 = v6 | 0x200;
    *a2 = sub_26A779764;
    sub_26A5065CC(v5, v6);
    sub_26A5065CC(v5, v6);
    sub_26A5065CC(v5, v6);
    result = v3;
    v18 = sub_26A779778;
  }

  else
  {
    v19 = sub_26A851E98();
    LOBYTE(v20) = 2;
    result = sub_26A7A9EE4(v19, 1, "SnippetUI/RFAppIconImage+FormattedTextView.swift", 48, 2, 15, "asFormattedTextRun(engageable:)", 31, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
    v14 = 0;
    v18 = 0;
    v15 = 0;
    v5 = 0;
    *a2 = 0;
    v16 = -256;
  }

  *(a2 + 8) = v14;
  *(a2 + 16) = v18;
  *(a2 + 24) = v15;
  *(a2 + 32) = v5;
  *(a2 + 40) = v16;
  return result;
}

double sub_26A779354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_26A84B1D8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a1)
  {
    return 14.0;
  }

  sub_26A7EA53C(a1);
  v12 = objc_allocWithZone(type metadata accessor for Context());
  v13 = Context.init(idiom:)(1, 0);
  sub_26A77F8A4(v8, v4);
  sub_26A58E870(v13, v11);

  sub_26A5B8EE0(v4);
  (*(v6 + 8))(v8, v5);
  v14 = v11[1];
  sub_26A51DA28(v11);
  return v14;
}

id sub_26A779530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, unsigned __int8 a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  v16 = type metadata accessor for LoadableText.Context(0);
  v17 = *(a1 + *(v16 + 24));
  if (v17)
  {
    v18 = (a8 - CTFontGetCapHeight(v17)) * -0.5;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *(a1 + *(v16 + 20));
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = v19;
  *(a6 + 40) = v18;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  type metadata accessor for LoadableText.Source(0);
  swift_storeEnumTagMultiPayload();

  return sub_26A5065CC(a4, a5);
}

uint64_t sub_26A779654()
{
  v0 = sub_26A84FA98();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE00F0]);
  sub_26A850F78();
  return sub_26A8508A8();
}

uint64_t ExpandableStandardView.init(_:expandableContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for ExpandableStandardView();
  v11 = a5 + *(v10 + 56);
  result = (*(*(a4 - 8) + 32))(a5, a1, a4);
  v13 = (a5 + *(v10 + 52));
  *v13 = a2;
  v13[1] = a3;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 8) = 0;
  return result;
}

uint64_t ExpandableStandardView.init(_:isExpanded:expandableContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v28 = a4;
  v26 = a2;
  v27 = a3;
  v17 = *(a7 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v20, a1, v21, v18);
  ExpandableStandardView.init(_:expandableContent:)(v20, a5, a6, a7, a9);
  (*(v17 + 8))(a1, a7);
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v22 = a9 + *(type metadata accessor for ExpandableStandardView() + 56);
  result = sub_26A7799BC(*v22, *(v22 + 8));
  v24 = v27;
  *v22 = v26;
  *(v22 + 8) = v24;
  *(v22 + 16) = v28;
  return result;
}

uint64_t sub_26A7799BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t ExpandableStandardView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for ExpandableContentModifier();
  v6 = sub_26A84F4F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  v13 = v2 + *(a1 + 56);
  v14 = (v2 + *(a1 + 52));
  v15 = *(a1 + 32);
  sub_26A7C9FB4(*v13, *(v13 + 8), *(v13 + 16), *v14, v14[1], v4, v5, v15);
  OUTLINED_FUNCTION_1_96();
  WitnessTable = swift_getWitnessTable();
  v19[2] = v15;
  v19[3] = WitnessTable;
  OUTLINED_FUNCTION_58();
  swift_getWitnessTable();
  sub_26A80757C(v9);
  v17 = *(v7 + 8);
  v17(v9, v6);
  sub_26A80757C(v12);
  return (v17)(v12, v6);
}

void sub_26A779C00()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_26A5046B4();
    if (v1 <= 0x3F)
    {
      sub_26A779FF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26A779CA0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26A779DFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_26A779FF4()
{
  if (!qword_2803B4088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803AC170);
    v0 = sub_26A852068();
    if (!v1)
    {
      atomic_store(v0, &qword_2803B4088);
    }
  }
}

uint64_t LNViewSnippet.fetchArchive(snippetEnvironmentProvider:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_26A851BD8();
  v2[4] = sub_26A851BC8();
  v4 = sub_26A851B78();

  return MEMORY[0x2822009F8](sub_26A77A150, v4, v3);
}

uint64_t sub_26A77A150()
{
  v1 = v0[3];
  v2 = v0[2];

  v3 = [v1 viewData];
  v4 = sub_26A84ABF8();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v2[2] = 0;
  v7 = v0[1];

  return v7();
}

uint64_t sub_26A77A23C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26A557454;

  return LNViewSnippet.fetchArchive(snippetEnvironmentProvider:)(a1);
}

void sub_26A77A320()
{
  sub_26A77AAB0(319, &qword_2803B7198, MEMORY[0x277CE1088], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_26A84B1D8();
    if (v1 <= 0x3F)
    {
      sub_26A77AA4C(319, &qword_28157FFB8, MEMORY[0x277D62D78], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_26A77AAB0(319, &qword_2803AD120, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_26A77AA4C(319, &qword_28157FFD8, MEMORY[0x277D62C40], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_26A77AAB0(319, &qword_2803B0190, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

double sub_26A77A4D8@<D0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  sub_26A77EDA4();
  v6 = type metadata accessor for SymbolSourceView(0);
  EnvironmentImageStyle.init()(a3 + v6[5]);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B5C90);
  OUTLINED_FUNCTION_4_78();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9E0);
  OUTLINED_FUNCTION_4_78();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_144(KeyPath);
  v10 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v10);
  v11 = a3 + v6[10];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a3 + v6[11];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v13);
  v14 = swift_getKeyPath();
  OUTLINED_FUNCTION_144(v14);
  v15 = v6[14];
  *(a3 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  OUTLINED_FUNCTION_4_78();
  sub_26A4EF020();
  v16 = a3 + v6[16];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = a3 + v6[17];
  *v17 = a1;
  *(v17 + 8) = a2 & 1;
  v18 = a3 + v6[18];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
  *(a3 + v6[19]) = 0x4024000000000000;
  v19 = (a3 + v6[20]);
  sub_26A851048();
  result = v21;
  *v19 = v21;
  *(v19 + 1) = v22;
  return result;
}

uint64_t sub_26A77A760()
{
  v0 = type metadata accessor for SymbolSourceView.Model(319);
  if (v1 <= 0x3F)
  {
    sub_26A576B80(319, &qword_2803B7620, &qword_2803ABFE8);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_26A576B80(319, &qword_2803AFE48, &qword_2803AFE50);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_26A77AAB0(319, &qword_2803AB788, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        v0 = v6;
        if (v7 <= 0x3F)
        {
          sub_26A576B80(319, &qword_2803B0178, &qword_2803AA470);
          if (v9 > 0x3F)
          {
            return v8;
          }

          sub_26A576B80(319, &qword_2803B2E18, &qword_2803AFAE8);
          if (v10 > 0x3F)
          {
            return v8;
          }

          sub_26A77AA4C(319, &qword_2803AC3D8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
          if (v11 > 0x3F)
          {
            return v8;
          }

          sub_26A77AA4C(319, &qword_2803B7628, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
          if (v12 > 0x3F)
          {
            return v8;
          }

          sub_26A576B80(319, &qword_2803B2890, &qword_2803B2898);
          if (v13 > 0x3F)
          {
            return v8;
          }

          sub_26A77AA4C(319, &qword_2803A9218, type metadata accessor for VRXIdiom, MEMORY[0x277CDF468]);
          if (v14 > 0x3F)
          {
            return v8;
          }

          else
          {
            sub_26A77AAB0(319, &qword_2803AB798, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
            v0 = v15;
            if (v16 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_26A77AA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_26A77AAB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26A77AB1C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2CE8);
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  type metadata accessor for SymbolSourceView(0);
  sub_26A4EF6D0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26A84FBC8();
    OUTLINED_FUNCTION_46();
    return (*(v11 + 32))(a1, v10);
  }

  else
  {
    sub_26A851EA8();
    v13 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v2);
  }
}

uint64_t sub_26A77AD08()
{
  v1 = sub_26A84F988();
  OUTLINED_FUNCTION_15();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0 + *(type metadata accessor for SymbolSourceView(0) + 68);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_26A851EA8();
    v9 = sub_26A8501F8();
    sub_26A84EA78();

    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v8, 0);
    (*(v3 + 8))(v6, v1);
    return v11[1];
  }

  return v8;
}

uint64_t sub_26A77AE50@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SymbolSourceView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for SymbolSourceView.Model(0);
  sub_26A4EF6D0();
  v9 = sub_26A84B238();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    sub_26A4DBD10(v7, &qword_2803B01F0);
    goto LABEL_5;
  }

  v10 = *(v1 + *(v8 + 40));
  sub_26A4DBD10(v7, &qword_2803B01F0);
  if (v10 == 1)
  {
LABEL_5:
    sub_26A77B17C(&v18);
    goto LABEL_6;
  }

  sub_26A77C338(&v18);
LABEL_6:
  v17 = v18;
  v11 = sub_26A851248();
  sub_26A77ED40(v1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_26A77EDA4();
  v13 = sub_26A851448();
  v15 = v14;
  result = swift_allocObject();
  *(result + 16) = sub_26A77EDFC;
  *(result + 24) = v12;
  *a1 = v11;
  a1[1] = sub_26A8027E0;
  a1[2] = 0;
  a1[3] = v13;
  a1[4] = v15;
  a1[5] = sub_26A52E998;
  a1[6] = result;
  return result;
}

uint64_t sub_26A77B0CC(double a1)
{
  type metadata accessor for SymbolSourceView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8);
  result = sub_26A851058();
  if (vabdd_f64(a1, v3) >= 0.01)
  {
    return sub_26A851068();
  }

  return result;
}

uint64_t sub_26A77B17C@<X0>(uint64_t *a1@<X8>)
{
  v116 = a1;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B0228);
  MEMORY[0x28223BE20](v114);
  v115 = &v104 - v2;
  v113 = sub_26A84EE68();
  v122 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v118 = &v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7630);
  MEMORY[0x28223BE20](v112);
  v126 = (&v104 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  MEMORY[0x28223BE20](v5 - 8);
  v111 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v104 - v8;
  MEMORY[0x28223BE20](v9);
  v107 = &v104 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AF0C0);
  MEMORY[0x28223BE20](v11 - 8);
  v123 = &v104 - v12;
  v125 = sub_26A84B2B8();
  v117 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v14 - 8);
  v106 = &v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = &v104 - v17;
  v18 = sub_26A84F988();
  v120 = *(v18 - 8);
  v121 = v18;
  MEMORY[0x28223BE20](v18);
  v119 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_26A84FBC8();
  v104 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v21 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D10);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v104 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8);
  MEMORY[0x28223BE20](v25 - 8);
  v110 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v104 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v104 - v31;
  v33 = sub_26A84FC88();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for SymbolSourceView.Model(0);
  sub_26A4EF6D0();
  v37 = sub_26A84B318();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v37);
  v128 = v36;
  v129 = v34;
  if (EnumTagSinglePayload == 1)
  {
    sub_26A4DBD10(v24, &qword_2803B2D10);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
    type metadata accessor for SymbolSourceView(0);
    sub_26A72052C(v29);
    v39 = v1;
    v40 = v33;
    if (__swift_getEnumTagSinglePayload(v29, 1, v33) == 1)
    {
      v41 = v125;
      v42 = v122;
      v43 = v123;
      v44 = v129;
      if (qword_28157FFC0 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v40, qword_2803D1C00);
      (*(v44 + 16))(v128, v45, v40);
      if (__swift_getEnumTagSinglePayload(v29, 1, v40) != 1)
      {
        sub_26A4DBD10(v29, &qword_2803ABFE8);
      }
    }

    else
    {
      (*(v129 + 32))(v128, v29, v33);
      v41 = v125;
      v42 = v122;
      v43 = v123;
    }

    if (__swift_getEnumTagSinglePayload(v32, 1, v40) != 1)
    {
      sub_26A4DBD10(v32, &qword_2803ABFE8);
    }
  }

  else
  {
    sub_26A77AB1C(v21);
    sub_26A5B7B04(v32);
    (*(v104 + 8))(v21, v108);
    (*(*(v37 - 8) + 8))(v24, v37);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
    (*(v34 + 32))(v36, v32, v33);
    v41 = v125;
    v39 = v1;
    v40 = v33;
    v42 = v122;
    v43 = v123;
  }

  v46 = sub_26A77AD08();
  v47 = sub_26A61B05C(v46, &unk_287B13248);
  v48 = v105;
  if (v47)
  {
    v49 = v39 + *(type metadata accessor for SymbolSourceView(0) + 48);
    v50 = *v49;
    v51 = v124;
    if (*(v49 + 8) != 1)
    {

      sub_26A851EA8();
      v52 = sub_26A8501F8();
      sub_26A84EA78();

      v42 = v122;
      v53 = v119;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v50, 0);
      (*(v120 + 8))(v53, v121);
      v50 = v130;
    }

    v54 = v42;
  }

  else
  {
    v54 = v42;
    v50 = 0;
    v51 = v124;
  }

  sub_26A77D1A0(v48);
  sub_26A51DA28(v48);
  sub_26A77D1A0(v48);
  sub_26A51DA28(v48);
  v55 = v106;
  sub_26A77D1A0(v106);
  v56 = *(v55 + 40);

  sub_26A51DA28(v55);
  v123 = v40;
  v108 = v50;
  if (v56)
  {
  }

  else if ((*(v39 + *(v127 + 40)) & 1) == 0)
  {
    type metadata accessor for SymbolSourceView(0);
  }

  v57 = v107;
  sub_26A4EF6D0();
  v58 = sub_26A84B238();
  v59 = v54;
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    sub_26A4DBD10(v57, &qword_2803B01F0);
    __swift_storeEnumTagSinglePayload(v43, 1, 1, v41);
  }

  else
  {
    sub_26A84B1F8();
    (*(*(v58 - 8) + 8))(v57, v58);
    if (__swift_getEnumTagSinglePayload(v43, 1, v41) != 1)
    {
      (*(v117 + 32))(v51, v43, v41);
      goto LABEL_26;
    }
  }

  sub_26A84B268();
  if (__swift_getEnumTagSinglePayload(v43, 1, v41) != 1)
  {
    sub_26A4DBD10(v43, &qword_2803AF0C0);
  }

LABEL_26:
  sub_26A77D1A0(v48);
  sub_26A7208E0();
  v61 = v60;
  sub_26A51DA28(v48);
  v62 = v109;
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v62, 1, v58) == 1)
  {
    sub_26A4DBD10(v62, &qword_2803B01F0);
    v63 = v113;
  }

  else
  {
    v64 = sub_26A84B1E8();
    (*(*(v58 - 8) + 8))(v62, v58);
    v63 = v113;
    if (v64 != 2)
    {
      goto LABEL_31;
    }
  }

  v65 = v39 + *(type metadata accessor for SymbolSourceView(0) + 32);
  v64 = *v65;
  if (*(v65 + 8) != 1)
  {

    sub_26A851EA8();
    v66 = sub_26A8501F8();
    sub_26A84EA78();

    v59 = v122;
    v67 = v119;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v64, 0);
    (*(v120 + 8))(v67, v121);
    v64 = v133;
  }

LABEL_31:
  v68 = v111;
  sub_26A4EF6D0();
  v69 = __swift_getEnumTagSinglePayload(v68, 1, v58);
  v122 = v64;
  if (v69 == 1)
  {
    sub_26A4DBD10(v68, &qword_2803B01F0);
    v70 = v118;
  }

  else
  {
    v71 = sub_26A84B208();
    (*(*(v58 - 8) + 8))(v68, v58);
    v70 = v118;
    if (v71 != 2)
    {
      goto LABEL_36;
    }
  }

  v72 = v39 + *(type metadata accessor for SymbolSourceView(0) + 36);
  v71 = *v72;
  if (*(v72 + 8) != 1)
  {

    sub_26A851EA8();
    v73 = sub_26A8501F8();
    sub_26A84EA78();

    v70 = v118;
    v74 = v119;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v71, 0);
    (*(v120 + 8))(v74, v121);
    v71 = v132;
  }

LABEL_36:
  v113 = v71;
  sub_26A77DAD4();
  v75 = v110;
  v76 = v123;
  (*(v129 + 16))(v110, v128, v123);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v76);
  v118 = sub_26A850F58();

  sub_26A4DBD10(v75, &qword_2803ABFE8);
  v77 = *(v39 + *(v127 + 32));
  if (!v77)
  {
    v77 = sub_26A850E18();
  }

  v127 = v77;
  KeyPath = swift_getKeyPath();

  v79 = sub_26A77DDA0();
  v80 = v39;
  v81 = swift_getKeyPath();
  v82 = swift_getKeyPath();
  if (v108)
  {
    (*(v59 + 104))(v70, *MEMORY[0x277CDF3D0], v63);
  }

  else
  {
    type metadata accessor for SymbolSourceView(0);
    sub_26A720064(v70);
  }

  v83 = v63;
  v84 = v126;
  v85 = (v126 + *(v112 + 36));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48);
  (*(v59 + 32))(v85 + *(v86 + 28), v70, v83);
  *v85 = v82;
  *v84 = v118;
  v84[1] = KeyPath;
  v84[2] = v127;
  v84[3] = v81;
  v84[4] = v79;
  v87 = sub_26A77E004(v80, v84);
  sub_26A77EFE4(&qword_2803B01A0, MEMORY[0x277D62CD8]);
  v89 = v124;
  v88 = v125;
  sub_26A84C958();
  v91 = v90;
  v92 = v115;
  v93 = &v115[*(v114 + 36)];
  v94 = *(sub_26A84F5F8() + 20);
  v95 = *MEMORY[0x277CE0118];
  v96 = sub_26A84FB88();
  (*(*(v96 - 8) + 104))(&v93[v94], v95, v96);
  *v93 = v61;
  *(v93 + 1) = v61;
  *&v93[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A9E58) + 36)] = 256;
  *v92 = v87;
  *(v92 + 8) = v91;
  *(v92 + 16) = 0;
  v97 = v80 + *(type metadata accessor for SymbolSourceView(0) + 72);
  v98 = *v97;
  LODWORD(v93) = *(v97 + 8);

  if (v93 != 1)
  {
    sub_26A74D96C(v98, 0);
    sub_26A851EA8();
    v99 = sub_26A8501F8();
    sub_26A84EA78();

    v100 = v119;
    sub_26A84F978();
    swift_getAtKeyPath();
    sub_26A49035C(v98, 0);
    (*(v120 + 8))(v100, v121);
    LOBYTE(v98) = v131;
  }

  v101 = v123;
  v102 = sub_26A5F6A34(v122 & 1, v113 & 1, v98 & 1, v89, 0);

  sub_26A4DBD10(v92, &qword_2803B0228);
  sub_26A4DBD10(v126, &qword_2803B7630);
  (*(v117 + 8))(v89, v88);
  result = (*(v129 + 8))(v128, v101);
  *v116 = v102;
  return result;
}

uint64_t sub_26A77C338@<X0>(uint64_t *a1@<X8>)
{
  v109 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7688);
  MEMORY[0x28223BE20](v108);
  v106 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v107 = (&v85 - v4);
  v5 = sub_26A84EE68();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x28223BE20](v5);
  v98 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_26A850F28();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7690);
  MEMORY[0x28223BE20](v100);
  v102 = &v85 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7698);
  MEMORY[0x28223BE20](v101);
  v105 = &v85 - v9;
  v10 = sub_26A84FC88();
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v85 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v94 = &v85 - v13;
  v14 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v14 - 8);
  v92 = (&v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_26A84F988();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26A84FBC8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B2D10);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803ABFE8);
  MEMORY[0x28223BE20](v24 - 8);
  v89 = &v85 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v90 = &v85 - v27;
  MEMORY[0x28223BE20](v28);
  v91 = &v85 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v85 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v85 - v34;
  v110 = type metadata accessor for SymbolSourceView.Model(0);
  sub_26A4EF6D0();
  v36 = sub_26A84B318();
  if (__swift_getEnumTagSinglePayload(v23, 1, v36) == 1)
  {
    sub_26A4DBD10(v23, &qword_2803B2D10);
    __swift_storeEnumTagSinglePayload(v32, 1, 1, v10);
    type metadata accessor for SymbolSourceView(0);
    sub_26A72052C(v35);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v10);
    v38 = v1;
    v39 = v93;
    if (EnumTagSinglePayload != 1)
    {
      sub_26A4DBD10(v32, &qword_2803ABFE8);
    }
  }

  else
  {
    sub_26A77AB1C(v20);
    sub_26A5B7B04(v32);
    (*(v18 + 8))(v20, v17);
    (*(*(v36 - 8) + 8))(v23, v36);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v10);
    v39 = v93;
    (*(v93 + 32))(v35, v32, v10);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v10);
    v38 = v1;
  }

  v40 = sub_26A77AD08();
  if (sub_26A61B05C(v40, &unk_287B13248))
  {
    v41 = v38 + *(type metadata accessor for SymbolSourceView(0) + 48);
    v42 = *v41;
    if (*(v41 + 8) != 1)
    {

      sub_26A851EA8();
      v43 = sub_26A8501F8();
      sub_26A84EA78();

      v44 = v86;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v42, 0);
      (*(v87 + 8))(v44, v88);
      LOBYTE(v42) = v112;
    }
  }

  else
  {
    LOBYTE(v42) = 0;
  }

  v45 = v92;
  sub_26A77D1A0(v92);
  v93 = *v45;
  sub_26A51DA28(v45);
  v46 = sub_26A77DAD4();
  v47 = v91;
  sub_26A4EF6D0();
  if (__swift_getEnumTagSinglePayload(v47, 1, v10) == 1)
  {
    sub_26A4DBD10(v47, &qword_2803ABFE8);
  }

  else
  {
    (*(v39 + 32))(v94, v47, v10);
    v50 = v38 + *(type metadata accessor for SymbolSourceView(0) + 52);
    v51 = *v50;
    if (*(v50 + 8) != 1)
    {

      sub_26A851EA8();
      v52 = sub_26A8501F8();
      sub_26A84EA78();

      v53 = v86;
      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v51, 0);
      (*(v87 + 8))(v53, v88);
      LOBYTE(v51) = v112;
    }

    if (v51 == 2 || (v51 & 1) == 0)
    {
      v54 = v10;
      v49 = v42;
      v55 = v90;
      v56 = v94;
      (*(v39 + 16))(v90, v94, v54);
      goto LABEL_20;
    }

    (*(v39 + 8))(v94, v10);
  }

  type metadata accessor for SymbolSourceView(0);
  v48 = v89;
  sub_26A72052C(v89);
  if (__swift_getEnumTagSinglePayload(v48, 1, v10) == 1)
  {
    v49 = v42;
    sub_26A4DBD10(v48, &qword_2803ABFE8);
    goto LABEL_21;
  }

  v54 = v10;
  v49 = v42;
  v56 = v85;
  (*(v39 + 32))(v85, v48, v54);
  v55 = v90;
  (*(v39 + 16))(v90, v56, v54);
LABEL_20:
  __swift_storeEnumTagSinglePayload(v55, 0, 1, v54);
  v57 = sub_26A850F58();

  sub_26A4DBD10(v55, &qword_2803ABFE8);
  (*(v39 + 8))(v56, v54);
  v46 = v57;
LABEL_21:
  v59 = v97;
  v58 = v98;
  v60 = v96;
  v61 = v95;
  (*(v96 + 104))(v95, *MEMORY[0x277CE0FE0], v97);
  v94 = sub_26A850F98();
  (*(v60 + 8))(v61, v59);
  v62 = *(v38 + *(v110 + 32));
  v99 = v35;
  if (v62)
  {
    *&v112 = v62;
  }

  else
  {
    LOWORD(v112) = 0;
    sub_26A573830();
  }

  v97 = sub_26A84F038();
  v98 = v46;
  v63 = v38;
  v64 = sub_26A77DDA0();
  KeyPath = swift_getKeyPath();
  v111 = 1;
  v66 = swift_getKeyPath();
  if (v49)
  {
    v67 = v103;
    v68 = v58;
    v69 = v58;
    v70 = v104;
    (*(v103 + 104))(v68, *MEMORY[0x277CDF3D0], v104);
  }

  else
  {
    type metadata accessor for SymbolSourceView(0);
    sub_26A720064(v58);
    v69 = v58;
    v67 = v103;
    v70 = v104;
  }

  v71 = v102;
  v72 = &v102[*(v100 + 36)];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9E48);
  (*(v67 + 32))(v72 + *(v73 + 28), v69, v70);
  *v72 = v66;
  *v71 = v94;
  *(v71 + 4) = 257;
  *(v71 + 2) = 0;
  *(v71 + 12) = 1;
  *(v71 + 4) = v97;
  *(v71 + 5) = KeyPath;
  *(v71 + 6) = v64;
  LOBYTE(v72) = *(v63 + *(v110 + 44));
  v74 = v105;
  v75 = &v105[*(v101 + 36)];
  v76 = type metadata accessor for VibrancyModifier();
  v77 = *(v76 + 20);
  *&v75[v77] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v78 = &v75[*(v76 + 24)];
  *v78 = swift_getKeyPath();
  v78[8] = 0;
  *v75 = v72;
  sub_26A4EF020();
  v79 = sub_26A84FBF8();
  v80 = v107;
  *v107 = v79;
  *(v80 + 8) = 0;
  *(v80 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76A0);
  sub_26A4EF6D0();
  sub_26A851448();
  sub_26A84F028();
  v81 = (v80 + *(v108 + 36));
  v82 = v113;
  *v81 = v112;
  v81[1] = v82;
  v81[2] = v114;
  sub_26A4EF6D0();
  sub_26A77F030();
  v83 = sub_26A851248();

  sub_26A4DBD10(v80, &qword_2803B7688);
  sub_26A4DBD10(v99, &qword_2803ABFE8);
  *v109 = v83;
  return sub_26A4DBD10(v74, &qword_2803B7698);
}

uint64_t sub_26A77D1A0@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v107 = sub_26A84F988();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v106);
  v104 = (&v97 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v97 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v97 - v8;
  v10 = sub_26A84B1D8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v102 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v97 - v14;
  v16 = *(type metadata accessor for SymbolSourceView.Model(0) + 24);
  v17 = *(v11 + 104);
  v101 = *MEMORY[0x277D62B70];
  v100 = v17;
  v17(v15);
  sub_26A77EFE4(&qword_28157FFF0, MEMORY[0x277D62C10]);
  v18 = v1;
  v19 = sub_26A851758();
  v108 = *(v11 + 8);
  v108(v15, v10);
  v20 = type metadata accessor for SymbolSourceView(0);
  if (v19)
  {
    v99 = v9;
    v21 = v20;
    sub_26A720448(v6);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
    v98 = v10;
    if (EnumTagSinglePayload == 1)
    {
      sub_26A4DBD10(v6, &qword_2803AFE50);
      v23 = &v18[v21[5]];
      v24 = *(v23 + 24);
      v25 = *(v23 + 26);
      v118 = v23[216];
      v117 = v23[217];
      v116 = v23[218];
      v115 = v23[219];
      v114 = v23[220];
      v113 = v23[221];
      v26 = v23[222];
      v102 = v18;
      v27 = v23[200];
      v112 = v26;
      v100(v15, v101, v10);
      v28 = v99;
      sub_26A77F8A4(v15, v99);
      v29 = 256;
      if (!v117)
      {
        v29 = 0;
      }

      v30 = v29 | v118;
      v31 = 0x10000;
      if (!v116)
      {
        v31 = 0;
      }

      v32 = 0x1000000;
      if (!v115)
      {
        v32 = 0;
      }

      v33 = v30 | v31 | v32;
      v34 = 0x100000000;
      if (!v114)
      {
        v34 = 0;
      }

      v35 = 0x10000000000;
      if (!v113)
      {
        v35 = 0;
      }

      v36 = 0x1000000000000;
      if (!v112)
      {
        v36 = 0;
      }

      v37 = v10;
      v38 = v104;
      v39 = v27;
      v40 = v102;
      sub_26A647150(v24, v39, v25, v33 | v34 | v35 | v36, v104);
      sub_26A4DBD10(v28, &unk_2803ABFF0);
      v108(v15, v37);
      v41 = &v40[v21[10]];
      v42 = *v41;
      v43 = v41[8];
      if (v41[9] == 1)
      {
        v44 = v107;
        v45 = v105;
        v46 = v103;
        if ((v43 & 1) == 0)
        {
          v47 = *v41;
          goto LABEL_47;
        }
      }

      else
      {

        sub_26A851EA8();
        v85 = sub_26A8501F8();
        sub_26A84EA78();

        v46 = v103;
        sub_26A84F978();
        swift_getAtKeyPath();
        sub_26A4F5724(v42, v43, 0);
        v45 = v105;
        v44 = v107;
        (*(v105 + 8))(v46, v107);
        if (v111 != 1)
        {
          v47 = v110;
LABEL_47:
          v86 = &v40[v21[11]];
          v87 = *v86;
          v88 = v86[8];
          if (v86[9] == 1)
          {
            if ((v88 & 1) == 0)
            {
              v89 = *v86;
LABEL_53:
              v92 = v38[2];
              v91 = v38[3];
              v93 = &v102[v21[16]];
              v94 = *v93;
              if (v93[8] == 1)
              {

                j__swift_retain_0();
              }

              else
              {

                j__swift_retain_0();
                sub_26A851EA8();
                v95 = sub_26A8501F8();
                sub_26A84EA78();

                sub_26A84F978();
                swift_getAtKeyPath();
                j__swift_release();
                (*(v45 + 8))(v46, v44);
                v94 = v110;
              }

              v96 = v109;
              sub_26A51DA28(v38);
              result = __swift_storeEnumTagSinglePayload(v96 + *(v106 + 36), 1, 1, v98);
              *v96 = v89;
              v96[1] = v47;
              v96[2] = v92;
              v96[3] = v91;
              v96[4] = v94;
              v96[5] = 0;
              return result;
            }
          }

          else
          {

            sub_26A851EA8();
            v90 = sub_26A8501F8();
            sub_26A84EA78();

            sub_26A84F978();
            swift_getAtKeyPath();
            sub_26A4F5724(v87, v88, 0);
            (*(v45 + 8))(v46, v44);
            if (v111 != 1)
            {
              v89 = v110;
              goto LABEL_53;
            }
          }

          v89 = *v38;
          goto LABEL_53;
        }
      }

      v47 = v38[1];
      goto LABEL_47;
    }

    v66 = v102;
    (*(v11 + 32))(v102, v6, v10);
    v67 = &v18[v21[5]];
    v68 = *(v67 + 26);
    v106 = *(v67 + 24);
    v107 = v68;
    v69 = v67[216];
    v70 = v67[217];
    v71 = v67[218];
    v72 = v67[219];
    v73 = v67[220];
    v74 = v67[221];
    v75 = v67[222];
    LODWORD(v105) = v67[200];
    v76 = v99;
    sub_26A77F8A4(v66, v99);
    v77 = 256;
    if ((v70 & 1) == 0)
    {
      v77 = 0;
    }

    v78 = v77 & 0xFFFFFFFFFFFFFFFELL | v69 & 1;
    v79 = 0x10000;
    if ((v71 & 1) == 0)
    {
      v79 = 0;
    }

    v80 = 0x1000000;
    if ((v72 & 1) == 0)
    {
      v80 = 0;
    }

    v81 = v78 | v79 | v80;
    v82 = 0x100000000;
    if ((v73 & 1) == 0)
    {
      v82 = 0;
    }

    v83 = 0x10000000000;
    if ((v74 & 1) == 0)
    {
      v83 = 0;
    }

    v84 = 0x1000000000000;
    if ((v75 & 1) == 0)
    {
      v84 = 0;
    }

    sub_26A647150(v106, v105, v107, v81 | v82 | v83 | v84, v109);
    sub_26A4DBD10(v76, &unk_2803ABFF0);
    return (v108)(v66, v98);
  }

  else
  {
    v48 = &v18[*(v20 + 20)];
    v49 = *(v48 + 26);
    v107 = *(v48 + 24);
    v108 = v49;
    v50 = v48[216];
    v51 = v48[217];
    v52 = v48[218];
    v53 = v48[219];
    v54 = v48[220];
    v55 = v48[221];
    v56 = v48[222];
    LODWORD(v106) = v48[200];
    sub_26A77F8A4(&v18[v16], v9);
    v57 = 256;
    if ((v51 & 1) == 0)
    {
      v57 = 0;
    }

    v58 = v57 & 0xFFFFFFFFFFFFFFFELL | v50 & 1;
    v59 = 0x10000;
    if ((v52 & 1) == 0)
    {
      v59 = 0;
    }

    v60 = 0x1000000;
    if ((v53 & 1) == 0)
    {
      v60 = 0;
    }

    v61 = v58 | v59 | v60;
    v62 = 0x100000000;
    if ((v54 & 1) == 0)
    {
      v62 = 0;
    }

    v63 = 0x10000000000;
    if ((v55 & 1) == 0)
    {
      v63 = 0;
    }

    v64 = 0x1000000000000;
    if ((v56 & 1) == 0)
    {
      v64 = 0;
    }

    sub_26A647150(v107, v106, v108, v61 | v62 | v63 | v64, v109);
    return sub_26A4DBD10(v9, &unk_2803ABFF0);
  }
}

uint64_t sub_26A77DAD4()
{
  v1 = v0;
  v2 = sub_26A84EE68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v21 - v7;
  v9 = sub_26A84F988();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26A77AD08();
  if (sub_26A61B05C(v13, &unk_287B13248))
  {
    v14 = v0 + *(type metadata accessor for SymbolSourceView(0) + 48);
    v15 = *v14;
    if (v14[8] != 1)
    {

      v21[2] = sub_26A851EA8();
      v16 = sub_26A8501F8();
      sub_26A84EA78();

      sub_26A84F978();
      swift_getAtKeyPath();
      sub_26A49035C(v15, 0);
      (*(v10 + 8))(v12, v9);
      LOBYTE(v15) = v22;
    }

    if (v15 != 2 && (v15 & 1) != 0)
    {
      goto LABEL_9;
    }
  }

  v17 = v1[1];
  if (!v17)
  {
    goto LABEL_9;
  }

  type metadata accessor for SymbolSourceView(0);

  sub_26A720064(v8);
  (*(v3 + 104))(v5, *MEMORY[0x277CDF3C0], v2);
  v18 = sub_26A84EE58();
  v19 = *(v3 + 8);
  v19(v5, v2);
  v19(v8, v2);
  if ((v18 & 1) == 0)
  {

LABEL_9:
    v17 = *v1;
  }

  return v17;
}

uint64_t sub_26A77DDA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for SymbolSourceView.Model(0);
  sub_26A4EF6D0();
  v14 = sub_26A84B238();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) != 1)
  {
    sub_26A4DBD10(v12, &qword_2803B01F0);
LABEL_5:
    sub_26A77D1A0(v9);
    v16 = *(v9 + 5);

    sub_26A51DA28(v9);
    if (v16)
    {
      return v16;
    }

    goto LABEL_6;
  }

  v15 = *(v0 + *(v13 + 40));
  sub_26A4DBD10(v12, &qword_2803B01F0);
  if (v15 == 1)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_26A77D1A0(v6);
  v16 = *(v6 + 4);

  sub_26A51DA28(v6);
  if (!v16)
  {
    sub_26A77E960();
    v17 = sub_26A850338();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v17);
    v16 = sub_26A8503E8();
    sub_26A4DBD10(v3, &qword_2803AB208);
  }

  return v16;
}

uint64_t sub_26A77E004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7638);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7640);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v24 - v10);
  if (*(a1 + *(type metadata accessor for SymbolSourceView.Model(0) + 40)) == 1)
  {
    *v11 = sub_26A851448();
    v11[1] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7660);
    sub_26A77E26C(a1, a2, v11 + *(v13 + 44));
    v14 = &qword_2803B7640;
    sub_26A4EF6D0();
    sub_26A77EF2C();
    v15 = sub_26A851248();
    v16 = v11;
  }

  else
  {
    v17 = sub_26A77E6C8();
    v18 = sub_26A851448();
    v20 = v19;
    v21 = v7 + *(v4 + 36);
    sub_26A4EF6D0();
    v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7648) + 36)];
    *v22 = v18;
    v22[1] = v20;
    *v7 = v17;
    v14 = &qword_2803B7638;
    sub_26A4EF6D0();
    sub_26A77EE74();
    v15 = sub_26A851248();
    v16 = v7;
  }

  sub_26A4DBD10(v16, v14);
  return v15;
}

uint64_t sub_26A77E26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28[0] = a2;
  v28[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7670);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7678);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = (v28 - v16);
  sub_26A77E574();
  v18 = sub_26A850E68();

  v19 = *(a1 + *(type metadata accessor for SymbolSourceView.Model(0) + 44));
  v20 = v17 + *(v12 + 44);
  v21 = type metadata accessor for VibrancyModifier();
  v22 = *(v21 + 20);
  *&v20[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB430);
  swift_storeEnumTagMultiPayload();
  v23 = &v20[*(v21 + 24)];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  *v20 = v19;
  *v17 = v18;
  v24 = *(v5 + 44);
  v25 = *MEMORY[0x277CE13C0];
  v26 = sub_26A8514D8();
  (*(*(v26 - 8) + 104))(&v10[v24], v25, v26);
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  sub_26A4EF6D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7680);
  sub_26A4EF6D0();
  sub_26A4DBD10(v10, &qword_2803B7670);
  sub_26A4DBD10(v17, &qword_2803B7678);
  sub_26A4DBD10(v7, &qword_2803B7670);
  return sub_26A4DBD10(v14, &qword_2803B7678);
}

uint64_t sub_26A77E574()
{
  v0 = sub_26A84EE68();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  type metadata accessor for SymbolSourceView(0);
  sub_26A720064(v6);
  (*(v1 + 104))(v3, *MEMORY[0x277CDF3D0], v0);
  v7 = sub_26A84EE58();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7)
  {
    return sub_26A850DD8();
  }

  else
  {
    return sub_26A850E18();
  }
}

uint64_t sub_26A77E6C8()
{
  v0 = sub_26A84B048();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AD038);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  type metadata accessor for SymbolSourceView.Model(0);
  sub_26A4EF6D0();
  v10 = sub_26A84B238();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    v11 = &qword_2803B01F0;
    v12 = v6;
  }

  else
  {
    sub_26A84B228();
    (*(*(v10 - 8) + 8))(v6, v10);
    v13 = sub_26A84DFA8();
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
    {
      sub_26A84DF78();
      v14 = _ProtoColor.swiftValue.getter();
      (*(v1 + 8))(v3, v0);
      (*(*(v13 - 8) + 8))(v9, v13);
      if (v14)
      {
        return v14;
      }

      return sub_26A850D98();
    }

    v11 = &qword_2803AD038;
    v12 = v9;
  }

  sub_26A4DBD10(v12, v11);
  return sub_26A850D98();
}

double sub_26A77E960()
{
  v1 = sub_26A84B2B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B01F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A77D1A0(v10);
  v11 = *v10;
  sub_26A51DA28(v10);
  sub_26A77D1A0(v10);
  if (v11 != INFINITY)
  {
    v13 = *v10;
    sub_26A51DA28(v10);
    v19 = type metadata accessor for SymbolSourceView.Model(0);
    sub_26A4EF6D0();
    v20 = sub_26A84B238();
    if (__swift_getEnumTagSinglePayload(v7, 1, v20) == 1)
    {
      v21 = *(v0 + *(v19 + 40));
      sub_26A4DBD10(v7, &qword_2803B01F0);
      if (v21 != 1)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_26A4DBD10(v7, &qword_2803B01F0);
    }

    v13 = v13 * 0.7;
    goto LABEL_12;
  }

  v12 = v10[1];
  sub_26A51DA28(v10);
  v13 = 0.0;
  if (v12 != INFINITY)
  {
    return v13;
  }

  v14 = (v0 + *(type metadata accessor for SymbolSourceView(0) + 80));
  v15 = *v14;
  v16 = v14[1];
  v29 = *v14;
  v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB9F8);
  sub_26A851058();
  if (fabs(*&v28 + 1.0) < 0.01)
  {
    return v13;
  }

  sub_26A84B2A8();
  sub_26A77EFE4(&qword_2803B01A0, MEMORY[0x277D62CD8]);
  sub_26A84C958();
  v18 = v17;
  (*(v2 + 8))(v4, v1);
  if (fabs(v18) < 0.01 || v18 <= 0.0)
  {
    v23 = sub_26A851E98();
    LOBYTE(v25) = 2;
    sub_26A7C58B8(v23, 1, "SnippetUI/SymbolSourceView.swift", 32, 2, 206, "systemFontSize", 14, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    return v13;
  }

  v29 = v15;
  v30 = v16;
  sub_26A851058();
  v13 = *&v28 / v18;
LABEL_12:
  if (v13 == INFINITY)
  {
    v22 = sub_26A851E98();
    LOBYTE(v25) = 2;
    sub_26A7C5A94(v22, 1, "SnippetUI/SymbolSourceView.swift", 32, 2, 219, "systemFontSize", 14, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    return 0.0;
  }

  return v13;
}

uint64_t sub_26A77ED40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolSourceView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26A77EDA4()
{
  OUTLINED_FUNCTION_145();
  v2(0);
  OUTLINED_FUNCTION_46();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_26A77EDFC(double a1)
{
  type metadata accessor for SymbolSourceView(0);

  return sub_26A77B0CC(a1);
}

unint64_t sub_26A77EE74()
{
  result = qword_2803B7650;
  if (!qword_2803B7650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7638);
    sub_26A4DBCC8(&qword_2803B7658, &qword_2803B7648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B7650);
  }

  return result;
}

unint64_t sub_26A77EF2C()
{
  result = qword_28157FE00;
  if (!qword_28157FE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7640);
    sub_26A4DBCC8(&qword_28157FAF0, &qword_2803B7668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28157FE00);
  }

  return result;
}

uint64_t sub_26A77EFE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26A77F030()
{
  result = qword_2803B76A8;
  if (!qword_2803B76A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B7688);
    sub_26A4DBCC8(&qword_2803B76B0, &qword_2803B76B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B76A8);
  }

  return result;
}

unint64_t sub_26A77F0E8()
{
  result = qword_2803B76C0;
  if (!qword_2803B76C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B76C8);
    sub_26A77F1A0();
    sub_26A4DBCC8(&qword_2803A9C20, &qword_2803A9C28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B76C0);
  }

  return result;
}

unint64_t sub_26A77F1A0()
{
  result = qword_2803B76D0;
  if (!qword_2803B76D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803B76D8);
    sub_26A4DBCC8(&qword_2803A9C10, &qword_2803A9C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803B76D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_78()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_7_66@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  v4 = *v3;
  v5 = *(v3 + 9);
  v6 = *(v3 + 8);

  return sub_26A4F5724(v4, v6, v5);
}

uint64_t VisualizationChartView.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26A84CAF8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t VisualizationChartView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for VisualizationLayout();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AEC58);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  sub_26A84CAE8();
  sub_26A84CAB8();
  sub_26A84CAC8();
  sub_26A84CAD8();
  v10 = sub_26A84CA88();
  v12 = v11;
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  *v5 = KeyPath;
  v5[8] = 0;
  *(v5 + 2) = v14;
  v5[24] = 0;
  v15 = *(v3 + 32);
  *&v5[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91A8);
  swift_storeEnumTagMultiPayload();
  v16 = &v5[*(v3 + 52)];
  *v16 = v10;
  v16[1] = v12;
  sub_26A84CA98();

  if (sub_26A77F594())
  {
    v17 = sub_26A68CD1C;
  }

  else
  {
    v17 = sub_26A68CD24;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;
  v19 = &v9[*(v7 + 44)];
  *(v19 + 2) = swift_getKeyPath();
  v19[24] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803A91D8);
  v21 = *(v20 + 40);
  *&v19[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803A9190);
  swift_storeEnumTagMultiPayload();
  v22 = &v19[*(v20 + 44)];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  *v19 = sub_26A4D1F7C;
  *(v19 + 1) = v18;
  sub_26A5AAB88(v5, v9);
  return sub_26A5AABEC(v9, a1);
}

BOOL sub_26A77F594()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AA838);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_26A84CAB8();
  v6 = sub_26A84B888();
  v7 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);
  sub_26A5AAF60(v5);
  if (EnumTagSinglePayload == 1)
  {
    sub_26A84CAC8();
    v7 = __swift_getEnumTagSinglePayload(v2, 1, v6) != 1;
    sub_26A5AAF60(v2);
  }

  return v7;
}

uint64_t type metadata accessor for VisualizationChartView()
{
  result = qword_2803B76E8;
  if (!qword_2803B76E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A77F750(uint64_t a1)
{
  result = sub_26A77F83C(&qword_2803B76E0, MEMORY[0x277D633F8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_26A77F7D0()
{
  result = sub_26A84CAF8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A77F83C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_0_92()
{

  return sub_26A84CAF8();
}

uint64_t sub_26A77F8A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v204 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AFE50);
  MEMORY[0x28223BE20](v4 - 8);
  v201 = &v190 - v5;
  v6 = sub_26A84B1D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v198 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v197 = &v190 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v196 = &v190 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v190 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v190 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v190 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v190 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v190 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v190 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v190 - v32;
  v199 = *(v7 + 16);
  v200 = v7 + 16;
  v199(&v190 - v32, a1, v6);
  v202 = v6;
  v203 = v7;
  v34 = (*(v7 + 88))(v33, v6);
  if (v34 == *MEMORY[0x277D62B70])
  {
LABEL_2:
    if (qword_28157E688 != -1)
    {
      OUTLINED_FUNCTION_2_95();
    }

    v35 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v35);
    v37 = qword_2815887C8;
LABEL_13:
    v40 = __swift_project_value_buffer(v36, v37);
    return sub_26A505CD4(v40, v204, &unk_2803ABFF0);
  }

  if (v34 == *MEMORY[0x277D62B68])
  {
LABEL_6:
    if (qword_2803A8E80 != -1)
    {
      OUTLINED_FUNCTION_17_30();
    }

    v38 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v38);
    v37 = qword_2803D2438;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62B00])
  {
    goto LABEL_10;
  }

  if (v34 == *MEMORY[0x277D62B60])
  {
    goto LABEL_2;
  }

  v42 = *MEMORY[0x277D62B18];
  if (v34 == v42)
  {
    goto LABEL_6;
  }

  v43 = *MEMORY[0x277D62B20];
  if (v34 == v43)
  {
LABEL_10:
    if (qword_2803A8E88 != -1)
    {
      OUTLINED_FUNCTION_16_30();
    }

    v39 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v39);
    v37 = qword_2803D2450;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62B88])
  {
    if (qword_2803A8E90 != -1)
    {
      swift_once();
    }

    v44 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v44);
    v37 = qword_2803D2468;
    goto LABEL_13;
  }

  v45 = *MEMORY[0x277D62B28];
  if (v34 == v45)
  {
    if (qword_2803A8E98 != -1)
    {
      OUTLINED_FUNCTION_15_35();
    }

    v46 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v46);
    v37 = &unk_2803D2480;
    goto LABEL_13;
  }

  v47 = *MEMORY[0x277D62B30];
  if (v34 == *MEMORY[0x277D62B30])
  {
    if (qword_2803A8EA0 != -1)
    {
      OUTLINED_FUNCTION_14_41();
    }

    v48 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v48);
    v37 = qword_2803D2498;
    goto LABEL_13;
  }

  v49 = *MEMORY[0x277D62B38];
  if (v34 == *MEMORY[0x277D62B38])
  {
    goto LABEL_2;
  }

  v50 = *MEMORY[0x277D62B40];
  if (v34 == *MEMORY[0x277D62B40])
  {
    if (qword_2803A8EB0 != -1)
    {
      OUTLINED_FUNCTION_13_41();
    }

    v51 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v51);
    v37 = qword_2803D24B0;
    goto LABEL_13;
  }

  v52 = *MEMORY[0x277D62B48];
  if (v34 == *MEMORY[0x277D62B48])
  {
    if (qword_2803A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_45();
    }

    v53 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v53);
    v37 = qword_2803D24C8;
    goto LABEL_13;
  }

  v54 = *MEMORY[0x277D62B50];
  if (v34 == *MEMORY[0x277D62B50])
  {
    if (qword_2803A8EC0 != -1)
    {
      OUTLINED_FUNCTION_11_49();
    }

    v55 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v55);
    v37 = qword_2803D24E0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62B58])
  {
    if (qword_2803A8EC8 != -1)
    {
      OUTLINED_FUNCTION_19_26();
    }

    v56 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v56);
    v37 = qword_2803D24F8;
    goto LABEL_13;
  }

  v190 = *MEMORY[0x277D62B58];
  v191 = v54;
  v192 = v52;
  v193 = v50;
  v194 = v49;
  v195 = v47;
  if (v34 == *MEMORY[0x277D62C00])
  {
    if (qword_2803A8ED0 != -1)
    {
      swift_once();
    }

    v57 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v57);
    v37 = qword_2803D2510;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62BF8])
  {
    if (qword_2803A8ED8 != -1)
    {
      swift_once();
    }

    v58 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v58);
    v37 = qword_2803D2528;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62BD0])
  {
    if (qword_2803A8EE0 != -1)
    {
      swift_once();
    }

    v59 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v59);
    v37 = qword_2803D2540;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62BD8])
  {
    if (qword_28157E678 != -1)
    {
      swift_once();
    }

    v60 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v60);
    v37 = qword_2815887B0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62BE0])
  {
    if (qword_2803A8EF0 != -1)
    {
      swift_once();
    }

    v61 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v61);
    v37 = qword_2803D2558;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62BE8])
  {
    if (qword_2803A8EF8 != -1)
    {
      swift_once();
    }

    v62 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v62);
    v37 = qword_2803D2570;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62BF0])
  {
    if (qword_2803A8F00 != -1)
    {
      swift_once();
    }

    v63 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v63);
    v37 = qword_2803D2588;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62A80])
  {
    if (qword_2803A8F40 != -1)
    {
      swift_once();
    }

    v64 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v64);
    v37 = qword_2803D2630;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62A88])
  {
    if (qword_2803A8F48 != -1)
    {
      swift_once();
    }

    v65 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v65);
    v37 = qword_2803D2648;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62A90])
  {
    if (qword_2803A8F58 != -1)
    {
      swift_once();
    }

    v66 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v66);
    v37 = qword_2803D2678;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62A98])
  {
    if (qword_2803A8F60 != -1)
    {
      swift_once();
    }

    v67 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v67);
    v37 = qword_2803D2690;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AA8])
  {
    if (qword_2803A8F68 != -1)
    {
      swift_once();
    }

    v68 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v68);
    v37 = qword_2803D26A8;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AF8])
  {
    if (qword_28157E698 != -1)
    {
      swift_once();
    }

    v69 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v69);
    v37 = qword_2815887E0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62B08])
  {
    if (qword_2803A8F10 != -1)
    {
      swift_once();
    }

    v70 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v70);
    v37 = qword_2803D25A0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62B10])
  {
    if (qword_2803A8F18 != -1)
    {
      swift_once();
    }

    v71 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v71);
    v37 = qword_2803D25B8;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AD8])
  {
    if (qword_2803A8F20 != -1)
    {
      swift_once();
    }

    v72 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v72);
    v37 = qword_2803D25D0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AE0])
  {
    if (qword_2803A8F28 != -1)
    {
      swift_once();
    }

    v73 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v73);
    v37 = qword_2803D25E8;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AE8])
  {
    if (qword_2803A8F30 != -1)
    {
      swift_once();
    }

    v74 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v74);
    v37 = qword_2803D2600;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AF0])
  {
    if (qword_2803A8F38 != -1)
    {
      swift_once();
    }

    v75 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v75);
    v37 = qword_2803D2618;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AB0])
  {
    if (qword_2803A8F70 != -1)
    {
      swift_once();
    }

    v76 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v76);
    v37 = qword_2803D26C0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AB8])
  {
    if (qword_2803A8F78 != -1)
    {
      swift_once();
    }

    v77 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v77);
    v37 = qword_2803D26D8;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AC0])
  {
    if (qword_2803A8F80 != -1)
    {
      swift_once();
    }

    v78 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v78);
    v37 = qword_2803D26F0;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AC8])
  {
    if (qword_2803A8F88 != -1)
    {
      swift_once();
    }

    v79 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v79);
    v37 = qword_2803D2708;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62AD0])
  {
    if (qword_2803A8F50 != -1)
    {
      swift_once();
    }

    v80 = OUTLINED_FUNCTION_211();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v80);
    v37 = qword_2803D2660;
    goto LABEL_13;
  }

  if (v34 == *MEMORY[0x277D62B80])
  {
    if (qword_2803A8E80 != -1)
    {
      OUTLINED_FUNCTION_17_30();
    }

    v33 = &unk_2803ABFF0;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
    v82 = __swift_project_value_buffer(v81, qword_2803D2438);
    (*(v203 + 104))(v31, v42, v202);
    OUTLINED_FUNCTION_32_10();
    MEMORY[0x28223BE20](v83);
    OUTLINED_FUNCTION_30_15();
    *(v84 - 16) = v31;
    OUTLINED_FUNCTION_39_7();
    sub_26A505CD4(v85, v86, &unk_2803ABFF0);
    v87 = OUTLINED_FUNCTION_41_11();

    *(v43 + 16) = v87;
    v88 = *v82;
    v89 = *(v82 + 8);
    sub_26A817EA4();

    v90 = OUTLINED_FUNCTION_38_10();
    sub_26A790428(v90, v88, v89);
    if (!&unk_2803ABFF0)
    {
      v92 = v204;
      v91 = v205;

      *(v92 + 24) = v91;
      v93 = v92 + *(v81 + 36);
      v94 = *v93;
      v95 = *v93 * 1.77777778;
      v97 = *(v93 + 16);
      v96 = *(v93 + 24);
      v98 = *(v93 + 32);
      v99 = *(v93 + 40);
      v101 = v201;
      v100 = v202;
      v199(v201, v31, v202);
      OUTLINED_FUNCTION_23_23();

      sub_26A51DA28(v93);
      *v93 = v94;
      *(v93 + 8) = v95;
      *(v93 + 16) = v97;
      *(v93 + 24) = v96;
      *(v93 + 32) = v98;
      *(v93 + 40) = v99;
      v102 = type metadata accessor for ImageStyleAppearance();
      sub_26A505C8C(v101, v93 + *(v102 + 36), &qword_2803AFE50);
      OUTLINED_FUNCTION_26_16();
      v104 = v31;
LABEL_156:
      v143 = v100;
      return v103(v104, v143);
    }

    goto LABEL_192;
  }

  if (v34 == *MEMORY[0x277D62B90])
  {
    if (qword_2803A8E88 != -1)
    {
      OUTLINED_FUNCTION_16_30();
    }

    v105 = OUTLINED_FUNCTION_183();
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(v105);
    v107 = __swift_project_value_buffer(v106, qword_2803D2450);
    (*(v203 + 104))(v28, v43, v202);
    OUTLINED_FUNCTION_32_10();
    MEMORY[0x28223BE20](v108);
    OUTLINED_FUNCTION_30_15();
    *(v109 - 16) = v28;
    OUTLINED_FUNCTION_39_7();
    sub_26A505CD4(v110, v111, &unk_2803ABFF0);
    v112 = sub_26A791A88(sub_26A791D10, v42, *(v43 + 16));

    *(v43 + 16) = v112;
    v113 = *v107;
    v114 = *(v107 + 8);
    sub_26A817EA4();

    v115 = OUTLINED_FUNCTION_38_10();
    sub_26A790428(v115, v113, v114);
    OUTLINED_FUNCTION_33_14();
    OUTLINED_FUNCTION_0_93();
    v117 = *(v106 + 16);
    v116 = *(v106 + 24);
    v118 = *(v106 + 32);
    v119 = *(v106 + 40);
    v120 = v201;
    v100 = v202;
    v199(v201, v28, v202);
    OUTLINED_FUNCTION_23_23();

    sub_26A51DA28(v106);
    *v106 = v2;
    *(v106 + 8) = v2 * 1.77777778;
    *(v106 + 16) = v117;
    *(v106 + 24) = v116;
    *(v106 + 32) = v118;
    *(v106 + 40) = v119;
    v121 = type metadata accessor for ImageStyleAppearance();
    sub_26A505C8C(v120, v106 + *(v121 + 36), &qword_2803AFE50);
    OUTLINED_FUNCTION_26_16();
    v104 = v28;
    goto LABEL_156;
  }

  if (v34 == *MEMORY[0x277D62B98])
  {
    if (qword_2803A8E98 != -1)
    {
      OUTLINED_FUNCTION_15_35();
    }

    v33 = &unk_2803ABFF0;
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
    v123 = __swift_project_value_buffer(v122, &unk_2803D2480);
    (*(v203 + 104))(v25, v45, v202);
    OUTLINED_FUNCTION_32_10();
    MEMORY[0x28223BE20](v124);
    OUTLINED_FUNCTION_30_15();
    *(v125 - 16) = v25;
    OUTLINED_FUNCTION_39_7();
    sub_26A505CD4(v126, v127, &unk_2803ABFF0);
    v128 = OUTLINED_FUNCTION_41_11();

    *(v43 + 16) = v128;
    v129 = *v123;
    v130 = *(v123 + 8);
    sub_26A817EA4();

    v131 = OUTLINED_FUNCTION_38_10();
    sub_26A790428(v131, v129, v130);
    if (!&unk_2803ABFF0)
    {
      v133 = v204;
      v132 = v205;

      *(v133 + 24) = v132;
      v134 = v133 + *(v122 + 36);
      v135 = *v134;
      v136 = *v134 * 1.77777778;
      v138 = *(v134 + 16);
      v137 = *(v134 + 24);
      v139 = *(v134 + 32);
      v140 = *(v134 + 40);
      v141 = v201;
      v100 = v202;
      v199(v201, v25, v202);
      OUTLINED_FUNCTION_23_23();

      sub_26A51DA28(v134);
      *v134 = v135;
      *(v134 + 8) = v136;
      *(v134 + 16) = v138;
      *(v134 + 24) = v137;
      *(v134 + 32) = v139;
      *(v134 + 40) = v140;
      v142 = type metadata accessor for ImageStyleAppearance();
      sub_26A505C8C(v141, v134 + *(v142 + 36), &qword_2803AFE50);
      OUTLINED_FUNCTION_26_16();
      v104 = v25;
      goto LABEL_156;
    }

    goto LABEL_192;
  }

  if (v34 == *MEMORY[0x277D62BA0])
  {
    if (qword_2803A8EA0 != -1)
    {
      OUTLINED_FUNCTION_14_41();
    }

    v33 = &unk_26A86DCC0;
    v144 = OUTLINED_FUNCTION_183();
    v145 = __swift_instantiateConcreteTypeFromMangledNameV2(v144);
    __swift_project_value_buffer(v145, qword_2803D2498);
    OUTLINED_FUNCTION_7_67();
    v146(v22, v195);
    OUTLINED_FUNCTION_40_10();
    MEMORY[0x28223BE20](v147);
    OUTLINED_FUNCTION_6_64();
    *(v148 - 16) = v22;
    OUTLINED_FUNCTION_3_84();
    OUTLINED_FUNCTION_8_61();

    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_9_57();
    if (!&unk_26A86DCC0)
    {
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_0_93();
      v149 = OUTLINED_FUNCTION_31_17();
      v199(v149, v22, v42);
      OUTLINED_FUNCTION_22_29();

      sub_26A51DA28(v145);
      v150 = OUTLINED_FUNCTION_25_23();
      sub_26A505C8C(v43, v145 + *(v150 + 36), &qword_2803AFE50);
      OUTLINED_FUNCTION_26_16();
      v104 = v22;
LABEL_189:
      v143 = v42;
      return v103(v104, v143);
    }

    goto LABEL_192;
  }

  if (v34 == *MEMORY[0x277D62BA8])
  {
    if (qword_28157E688 != -1)
    {
      OUTLINED_FUNCTION_2_95();
    }

    v33 = &unk_26A86DCC0;
    v151 = OUTLINED_FUNCTION_183();
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(v151);
    __swift_project_value_buffer(v152, qword_2815887C8);
    OUTLINED_FUNCTION_7_67();
    v153(v19, v194);
    OUTLINED_FUNCTION_40_10();
    MEMORY[0x28223BE20](v154);
    OUTLINED_FUNCTION_6_64();
    *(v155 - 16) = v19;
    OUTLINED_FUNCTION_3_84();
    OUTLINED_FUNCTION_8_61();

    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_9_57();
    if (!&unk_26A86DCC0)
    {
      OUTLINED_FUNCTION_27_16();
      OUTLINED_FUNCTION_0_93();
      v156 = OUTLINED_FUNCTION_31_17();
      v199(v156, v19, v42);
      OUTLINED_FUNCTION_22_29();

      sub_26A51DA28(v152);
      v157 = OUTLINED_FUNCTION_25_23();
      sub_26A505C8C(v43, v152 + *(v157 + 36), &qword_2803AFE50);
      OUTLINED_FUNCTION_26_16();
      v104 = v19;
      goto LABEL_189;
    }

LABEL_192:

    __break(1u);
    goto LABEL_193;
  }

  if (v34 == *MEMORY[0x277D62BB0])
  {
    if (qword_2803A8EB0 != -1)
    {
      OUTLINED_FUNCTION_13_41();
    }

    v33 = &unk_26A86DCC0;
    v158 = OUTLINED_FUNCTION_183();
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(v158);
    __swift_project_value_buffer(v159, qword_2803D24B0);
    OUTLINED_FUNCTION_7_67();
    v160(v16, v193);
    OUTLINED_FUNCTION_40_10();
    MEMORY[0x28223BE20](v161);
    OUTLINED_FUNCTION_6_64();
    *(v162 - 16) = v16;
    OUTLINED_FUNCTION_3_84();
    OUTLINED_FUNCTION_8_61();

    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_9_57();
    if (&unk_26A86DCC0)
    {
      goto LABEL_192;
    }

    OUTLINED_FUNCTION_27_16();
    OUTLINED_FUNCTION_0_93();
    v163 = OUTLINED_FUNCTION_1_97();
LABEL_188:
    v42 = v202;
    v199(v163, v16, v202);
    OUTLINED_FUNCTION_22_29();

    sub_26A51DA28(v159);
    v186 = OUTLINED_FUNCTION_25_23();
    sub_26A505C8C(v43, v159 + *(v186 + 36), &qword_2803AFE50);
    OUTLINED_FUNCTION_26_16();
    v104 = v16;
    goto LABEL_189;
  }

  if (v34 == *MEMORY[0x277D62BB8])
  {
    if (qword_2803A8EB8 != -1)
    {
      OUTLINED_FUNCTION_12_45();
    }

    v33 = &unk_26A86DCC0;
    v164 = OUTLINED_FUNCTION_183();
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(v164);
    __swift_project_value_buffer(v159, qword_2803D24C8);
    OUTLINED_FUNCTION_7_67();
    v165 = v196;
    v166(v196, v192);
    OUTLINED_FUNCTION_32_10();
    MEMORY[0x28223BE20](v167);
    OUTLINED_FUNCTION_6_64();
    *(v168 - 16) = v165;
    OUTLINED_FUNCTION_3_84();
    OUTLINED_FUNCTION_8_61();

    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_9_57();
    if (&unk_26A86DCC0)
    {
      goto LABEL_192;
    }

    OUTLINED_FUNCTION_33_14();
    OUTLINED_FUNCTION_0_93();
    v163 = OUTLINED_FUNCTION_1_97();
    v16 = v196;
    goto LABEL_188;
  }

  if (v34 == *MEMORY[0x277D62BC0])
  {
    if (qword_2803A8EC0 != -1)
    {
      OUTLINED_FUNCTION_11_49();
    }

    v33 = &unk_26A86DCC0;
    v169 = OUTLINED_FUNCTION_183();
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(v169);
    __swift_project_value_buffer(v159, qword_2803D24E0);
    OUTLINED_FUNCTION_7_67();
    v170 = v197;
    v171(v197, v191);
    OUTLINED_FUNCTION_32_10();
    MEMORY[0x28223BE20](v172);
    OUTLINED_FUNCTION_6_64();
    *(v173 - 16) = v170;
    OUTLINED_FUNCTION_39_7();
    sub_26A505CD4(v174, v175, &unk_2803ABFF0);
    v176 = OUTLINED_FUNCTION_8_61();

    *(v43 + 16) = v176;
    v177 = *v28;
    v178 = *(v28 + 1);
    sub_26A817EA4();
    v43 = v179;

    v180 = OUTLINED_FUNCTION_38_10();
    sub_26A790428(v180, v177, v178);
    if (&unk_26A86DCC0)
    {
      goto LABEL_192;
    }

    OUTLINED_FUNCTION_33_14();
    OUTLINED_FUNCTION_0_93();
    v163 = OUTLINED_FUNCTION_1_97();
    v16 = v197;
    goto LABEL_188;
  }

  if (v34 == *MEMORY[0x277D62BC8])
  {
    if (qword_2803A8EC8 != -1)
    {
      OUTLINED_FUNCTION_19_26();
    }

    v33 = &unk_26A86DCC0;
    v181 = OUTLINED_FUNCTION_183();
    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(v181);
    __swift_project_value_buffer(v159, qword_2803D24F8);
    OUTLINED_FUNCTION_7_67();
    v182 = v198;
    v183(v198, v190);
    OUTLINED_FUNCTION_40_10();
    MEMORY[0x28223BE20](v184);
    OUTLINED_FUNCTION_6_64();
    *(v185 - 16) = v182;
    OUTLINED_FUNCTION_3_84();
    OUTLINED_FUNCTION_8_61();

    OUTLINED_FUNCTION_21_30();
    OUTLINED_FUNCTION_36_9();
    OUTLINED_FUNCTION_9_57();
    if (&unk_26A86DCC0)
    {
      goto LABEL_192;
    }

    OUTLINED_FUNCTION_27_16();
    OUTLINED_FUNCTION_0_93();
    v163 = OUTLINED_FUNCTION_1_97();
    v16 = v198;
    goto LABEL_188;
  }

  if (qword_28157E688 != -1)
  {
LABEL_193:
    OUTLINED_FUNCTION_2_95();
  }

  v187 = OUTLINED_FUNCTION_211();
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(v187);
  v189 = __swift_project_value_buffer(v188, qword_2815887C8);
  sub_26A505CD4(v189, v204, &unk_2803ABFF0);
  return (*(v203 + 8))(v33, v202);
}

uint64_t sub_26A781544@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A505CD4(v4, a3, &unk_2803ABFF0);
  v11 = sub_26A791A88(a1, a2, *(a3 + 16));

  *(a3 + 16) = v11;
  v13 = *v4;
  v12 = v4[1];
  sub_26A817EA4();
  v15 = v14;

  v19[0] = v15;
  sub_26A790428(v19, v13, v12);
  v16 = v19[0];

  *(a3 + 24) = v16;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0) + 36);
  a1((a3 + v17));
  return sub_26A675FB4(v10, a3 + v17);
}

double sub_26A7816AC(double a1, double a2)
{
  if (a2 < a1)
  {
    a1 = a2;
  }

  return a1 * 0.166666667;
}

uint64_t sub_26A7816C4()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v112 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v113 = &v102 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D2438);
  v111 = __swift_project_value_buffer(v4, qword_2803D2438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8570C0;
  v110 = v8;
  v9 = (v8 + v7);
  v10 = v8 + v7 + *(v5 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v116 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v13 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v14 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(inited);
  *v9 = v15;
  v16 = *(v0 + 36);
  v17 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10 + v16, 1, 1, v17);
  __asm { FMOV            V0.2D, #12.0 }

  v108 = _Q0;
  *v10 = _Q0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4000000000000000;
  *(v10 + 16) = sub_26A791D14;
  *(v10 + 24) = v23;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  v24 = v9 + v6 + *(v5 + 48);
  v25 = swift_initStackObject();
  *(v25 + 16) = v116;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v26 = qword_281588938;
  *(v25 + 32) = qword_281588938;
  v27 = byte_281588940;
  *(v25 + 40) = byte_281588940;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *(v9 + v6) = v28;
  __swift_storeEnumTagSinglePayload(&v24[*(v0 + 36)], 1, 1, v17);
  __asm { FMOV            V0.2D, #18.0 }

  v109 = _Q0;
  *v24 = _Q0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x4008000000000000;
  *(v24 + 2) = sub_26A791D14;
  *(v24 + 3) = v30;
  v105 = v17;
  v31 = (v9 + 2 * v6);
  *(v24 + 4) = 0;
  *(v24 + 5) = 0;
  v32 = *(v5 + 48);
  v114 = v0;
  v33 = (v31 + v32);
  v34 = swift_initStackObject();
  *(v34 + 16) = v116;
  v104 = v11;
  v35 = v5;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v36 = qword_281588998;
  *(v34 + 32) = qword_281588998;
  v37 = byte_2815889A0;
  *(v34 + 40) = byte_2815889A0;
  sub_26A4E324C(v36, v37);
  sub_26A621A9C(v34);
  *v31 = v38;
  v39 = sub_26A850338();
  v40 = v113;
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v39);
  v41 = sub_26A8503E8();
  sub_26A4DBD10(v40, &qword_2803AB208);
  v107 = v39;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v39);
  v42 = sub_26A8503E8();
  sub_26A4DBD10(v40, &qword_2803AB208);
  v43 = v105;
  __swift_storeEnumTagSinglePayload(v33->i64 + *(v114 + 36), 1, 1, v105);
  *v33 = vdupq_n_s64(0x4048000000000000uLL);
  v44 = swift_allocObject();
  *(v44 + 16) = 0x4010000000000000;
  v33[1].i64[0] = sub_26A791D14;
  v33[1].i64[1] = v44;
  v33[2].i64[0] = v41;
  v33[2].i64[1] = v42;
  v115 = v6;
  v45 = (v9 + 3 * v6);
  v46 = v45 + *(v35 + 48);
  v47 = swift_initStackObject();
  v116 = xmmword_26A8570F0;
  *(v47 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v48 = qword_281588988;
  *(v47 + 32) = qword_281588988;
  v49 = byte_281588990;
  *(v47 + 40) = byte_281588990;
  *(v47 + 48) = 1;
  *(v47 + 56) = 3;
  sub_26A4E324C(v48, v49);
  sub_26A621A9C(v47);
  *v45 = v50;
  v51 = v114;
  __swift_storeEnumTagSinglePayload(&v46[*(v114 + 36)], 1, 1, v43);
  __asm { FMOV            V0.2D, #16.0 }

  *v46 = _Q0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0x4000000000000000;
  *(v46 + 2) = sub_26A791D14;
  *(v46 + 3) = v53;
  *(v46 + 4) = 0;
  *(v46 + 5) = 0;
  v54 = *(v35 + 48);
  v55 = swift_initStackObject();
  *(v55 + 16) = v116;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v56 = (v9 + 4 * v115);
  v57 = v115;
  v58 = v56 + v54;
  v59 = qword_281588978;
  *(v55 + 32) = qword_281588978;
  v60 = byte_281588980;
  *(v55 + 40) = byte_281588980;
  *(v55 + 48) = 1;
  *(v55 + 56) = 3;
  sub_26A4E324C(v59, v60);
  sub_26A621A9C(v55);
  *v56 = v61;
  __swift_storeEnumTagSinglePayload(&v58[*(v51 + 36)], 1, 1, v43);
  __asm { FMOV            V0.2D, #14.0 }

  v106 = _Q0;
  *v58 = _Q0;
  v63 = swift_allocObject();
  *(v63 + 16) = 0x4004000000000000;
  *(v58 + 2) = sub_26A791D14;
  *(v58 + 3) = v63;
  v64 = (v9 + 5 * v57);
  v103 = v9;
  *(v58 + 4) = 0;
  *(v58 + 5) = 0;
  v65 = (v64 + *(v35 + 48));
  v66 = swift_initStackObject();
  *(v66 + 16) = v116;
  v67 = qword_281588968;
  *(v66 + 32) = qword_281588968;
  v68 = byte_281588970;
  *(v66 + 40) = byte_281588970;
  *(v66 + 48) = 1;
  *(v66 + 56) = 3;
  sub_26A4E324C(v67, v68);
  sub_26A621A9C(v66);
  *v64 = v69;
  __swift_storeEnumTagSinglePayload(v65->i64 + *(v51 + 36), 1, 1, v43);
  *v65 = v108;
  v70 = swift_allocObject();
  *(v70 + 16) = 0x3FF8000000000000;
  v65[1].i64[0] = sub_26A791D14;
  v65[1].i64[1] = v70;
  v71 = (v9 + 6 * v57);
  v65[2].i64[0] = 0;
  v65[2].i64[1] = 0;
  v72 = (v71 + *(v35 + 48));
  v73 = swift_initStackObject();
  *(v73 + 16) = v116;
  v74 = qword_281588998;
  *(v73 + 32) = qword_281588998;
  v75 = byte_2815889A0;
  *(v73 + 40) = byte_2815889A0;
  *(v73 + 48) = 1;
  *(v73 + 56) = 3;
  sub_26A4E324C(v74, v75);
  sub_26A621A9C(v73);
  *v71 = v76;
  v77 = v113;
  v78 = v107;
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v107);
  v79 = sub_26A8503E8();
  sub_26A4DBD10(v77, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v72->i64 + *(v51 + 36), 1, 1, v43);
  v108 = vdupq_n_s64(0x4048000000000000uLL);
  *v72 = v108;
  v80 = swift_allocObject();
  *(v80 + 16) = 0x4020000000000000;
  v72[1].i64[0] = sub_26A791D14;
  v72[1].i64[1] = v80;
  v72[2].i64[0] = v79;
  v72[2].i64[1] = 0;
  v81 = v103;
  v82 = (v103 + 7 * v115);
  v83 = (v82 + *(v35 + 48));
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_26A857110;
  v85 = qword_281588998;
  *(v84 + 32) = qword_281588998;
  v86 = byte_2815889A0;
  *(v84 + 40) = byte_2815889A0;
  *(v84 + 48) = 1;
  *(v84 + 56) = 3;
  *(v84 + 64) = 1;
  *(v84 + 72) = 5;
  sub_26A4E324C(v85, v86);
  sub_26A621A9C(v84);
  *v82 = v87;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v78);
  v88 = sub_26A8503E8();
  sub_26A4DBD10(v77, &qword_2803AB208);
  v89 = v114;
  __swift_storeEnumTagSinglePayload(v83->i64 + *(v114 + 36), 1, 1, v43);
  *v83 = v108;
  v90 = swift_allocObject();
  *(v90 + 16) = 0x4028000000000000;
  v83[1].i64[0] = sub_26A791D14;
  v83[1].i64[1] = v90;
  v83[2].i64[0] = v88;
  v83[2].i64[1] = 0;
  v91 = &v81[v115];
  v92 = v91 + *(v35 + 48);
  v93 = swift_initStackObject();
  *(v93 + 16) = v116;
  v94 = qword_281588938;
  *(v93 + 32) = qword_281588938;
  v95 = byte_281588940;
  *(v93 + 40) = byte_281588940;
  *(v93 + 48) = 1;
  *(v93 + 56) = 3;
  sub_26A4E324C(v94, v95);
  sub_26A621A9C(v93);
  *v91 = v96;
  __swift_storeEnumTagSinglePayload(&v92[*(v89 + 36)], 1, 1, v43);
  *v92 = v109;
  v97 = swift_allocObject();
  *(v97 + 16) = 0x4008000000000000;
  *(v92 + 2) = sub_26A791D14;
  *(v92 + 3) = v97;
  *(v92 + 4) = 0;
  *(v92 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v98 = sub_26A8516A8();
  v99 = v112;
  __swift_storeEnumTagSinglePayload(&v112[*(v89 + 36)], 1, 1, v43);
  *v99 = v106;
  v100 = swift_allocObject();
  *(v100 + 16) = 0x4000000000000000;
  *(v99 + 2) = sub_26A791D14;
  *(v99 + 3) = v100;
  *(v99 + 4) = 0;
  *(v99 + 5) = 0;
  return sub_26A80DFE8(v98);
}

uint64_t sub_26A782208()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v143 = &v138 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v150 = &v138 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D2450);
  v142 = __swift_project_value_buffer(v4, qword_2803D2450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8830C0;
  v141 = v8;
  v9 = (v8 + v7);
  v10 = v8 + v7 + *(v5 + 48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v154 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v13 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v14 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(inited);
  *v9 = v15;
  v16 = *(v0 + 36);
  v17 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10 + v16, 1, 1, v17);
  __asm { FMOV            V0.2D, #16.0 }

  v149 = _Q0;
  *v10 = _Q0;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4000000000000000;
  *(v10 + 16) = sub_26A791D14;
  *(v10 + 24) = v23;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  v24 = v9 + v6 + *(v5 + 48);
  v25 = swift_initStackObject();
  *(v25 + 16) = v154;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v26 = qword_281588938;
  *(v25 + 32) = qword_281588938;
  v27 = byte_281588940;
  *(v25 + 40) = byte_281588940;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *(v9 + v6) = v28;
  __swift_storeEnumTagSinglePayload(&v24[*(v0 + 36)], 1, 1, v17);
  __asm { FMOV            V0.2D, #24.0 }

  v153 = _Q0;
  *v24 = _Q0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x400C000000000000;
  *(v24 + 2) = sub_26A791D14;
  *(v24 + 3) = v30;
  v145 = v17;
  v31 = (v9 + 2 * v6);
  *(v24 + 4) = 0;
  *(v24 + 5) = 0;
  v32 = (v31 + *(v5 + 48));
  v33 = swift_initStackObject();
  *(v33 + 16) = v154;
  v151 = v11;
  v140 = v9;
  v34 = v5;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v35 = qword_281588998;
  *(v33 + 32) = qword_281588998;
  v36 = byte_2815889A0;
  *(v33 + 40) = byte_2815889A0;
  sub_26A4E324C(v35, v36);
  sub_26A621A9C(v33);
  *v31 = v37;
  v38 = sub_26A850338();
  v39 = v150;
  __swift_storeEnumTagSinglePayload(v150, 1, 1, v38);
  v40 = sub_26A8503E8();
  sub_26A4DBD10(v39, &qword_2803AB208);
  v148 = v38;
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v38);
  v41 = sub_26A8503E8();
  sub_26A4DBD10(v39, &qword_2803AB208);
  v42 = v145;
  __swift_storeEnumTagSinglePayload(v32->i64 + *(v0 + 36), 1, 1, v145);
  *v32 = vdupq_n_s64(0x4050000000000000uLL);
  v43 = swift_allocObject();
  *(v43 + 16) = 0x4018000000000000;
  v32[1].i64[0] = sub_26A791D14;
  v32[1].i64[1] = v43;
  v32[2].i64[0] = v40;
  v32[2].i64[1] = v41;
  v44 = v140;
  v45 = (v140 + 3 * v6);
  v46 = v45 + *(v34 + 48);
  v47 = v6;
  v48 = swift_initStackObject();
  v154 = xmmword_26A8570F0;
  *(v48 + 16) = xmmword_26A8570F0;
  v144 = v34;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v49 = qword_281588978;
  *(v48 + 32) = qword_281588978;
  v50 = byte_281588980;
  *(v48 + 40) = byte_281588980;
  *(v48 + 48) = 3;
  *(v48 + 56) = 1;
  sub_26A4E324C(v49, v50);
  sub_26A621A9C(v48);
  *v45 = v51;
  __swift_storeEnumTagSinglePayload(&v46[*(v0 + 36)], 1, 1, v42);
  *v46 = v153;
  v52 = swift_allocObject();
  *(v52 + 16) = 0x4004000000000000;
  *(v46 + 2) = sub_26A791D14;
  *(v46 + 3) = v52;
  v53 = v44;
  v54 = (v44 + 4 * v6);
  *(v46 + 4) = 0;
  *(v46 + 5) = 0;
  v55 = v54 + *(v144 + 48);
  v56 = swift_initStackObject();
  *(v56 + 16) = v154;
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v57 = qword_2815889A8;
  *(v56 + 32) = qword_2815889A8;
  v58 = byte_2815889B0;
  *(v56 + 40) = byte_2815889B0;
  *(v56 + 48) = 3;
  *(v56 + 56) = 1;
  sub_26A4E324C(v57, v58);
  sub_26A621A9C(v56);
  *v54 = v59;
  __swift_storeEnumTagSinglePayload(&v55[*(v0 + 36)], 1, 1, v42);
  *v55 = v153;
  v60 = swift_allocObject();
  *(v60 + 16) = 0x4004000000000000;
  *(v55 + 2) = sub_26A791D14;
  *(v55 + 3) = v60;
  *(v55 + 4) = 0;
  *(v55 + 5) = 0;
  v61 = swift_initStackObject();
  *(v61 + 16) = v154;
  v62 = v42;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v63 = v53;
  v64 = (v53 + 5 * v47);
  v65 = v63;
  v66 = qword_281588988;
  *(v61 + 32) = qword_281588988;
  v67 = byte_281588990;
  *(v61 + 40) = byte_281588990;
  *(v61 + 48) = 1;
  *(v61 + 56) = 3;
  sub_26A4E324C(v66, v67);
  sub_26A621A9C(v61);
  *v64 = v68;
  if (_UISolariumEnabled())
  {
    v69 = 32.0;
  }

  else
  {
    v69 = 26.0;
  }

  v70 = v144;
  v71 = (v64 + *(v144 + 48));
  __swift_storeEnumTagSinglePayload(v71 + *(v0 + 36), 1, 1, v62);
  *v71 = v69;
  v71[1] = v69;
  v72 = swift_allocObject();
  *(v72 + 16) = 0x4000000000000000;
  *(v71 + 2) = sub_26A791D14;
  *(v71 + 3) = v72;
  v73 = (v65 + 6 * v47);
  v71[4] = 0.0;
  v71[5] = 0.0;
  v74 = v73 + *(v70 + 48);
  v75 = swift_initStackObject();
  *(v75 + 16) = v154;
  v76 = qword_281588978;
  *(v75 + 32) = qword_281588978;
  v77 = byte_281588980;
  *(v75 + 40) = byte_281588980;
  *(v75 + 48) = 1;
  *(v75 + 56) = 3;
  sub_26A4E324C(v76, v77);
  sub_26A621A9C(v75);
  *v73 = v78;
  __swift_storeEnumTagSinglePayload(&v74[*(v0 + 36)], 1, 1, v62);
  __asm { FMOV            V0.2D, #20.0 }

  v147 = _Q0;
  *v74 = _Q0;
  v80 = swift_allocObject();
  *(v80 + 16) = 0x4004000000000000;
  *(v74 + 2) = sub_26A791D14;
  *(v74 + 3) = v80;
  v152 = v47;
  v81 = (v65 + 7 * v47);
  *(v74 + 4) = 0;
  *(v74 + 5) = 0;
  v82 = (v81 + *(v70 + 48));
  v83 = swift_initStackObject();
  *(v83 + 16) = v154;
  v84 = qword_281588968;
  *(v83 + 32) = qword_281588968;
  v85 = byte_281588970;
  *(v83 + 40) = byte_281588970;
  *(v83 + 48) = 1;
  *(v83 + 56) = 3;
  sub_26A4E324C(v84, v85);
  sub_26A621A9C(v83);
  *v81 = v86;
  v87 = v0;
  __swift_storeEnumTagSinglePayload(v82->i64 + *(v0 + 36), 1, 1, v62);
  *v82 = v149;
  v88 = swift_allocObject();
  *(v88 + 16) = 0x3FF8000000000000;
  v82[1].i64[0] = sub_26A791D14;
  v82[1].i64[1] = v88;
  v89 = v65;
  v90 = v152;
  v91 = &v65[v152];
  v82[2].i64[0] = 0;
  v82[2].i64[1] = 0;
  v92 = v91 + *(v70 + 48);
  v93 = swift_initStackObject();
  v146 = xmmword_26A857110;
  *(v93 + 16) = xmmword_26A857110;
  v94 = qword_281588968;
  *(v93 + 32) = qword_281588968;
  v95 = byte_281588970;
  *(v93 + 40) = byte_281588970;
  *(v93 + 48) = 1;
  *(v93 + 56) = 3;
  *(v93 + 64) = 0;
  *(v93 + 72) = 1;
  sub_26A4E324C(v94, v95);
  sub_26A621A9C(v93);
  *v91 = v96;
  v97 = *(v87 + 36);
  v98 = v87;
  v139 = v87;
  __swift_storeEnumTagSinglePayload(&v92[v97], 1, 1, v62);
  *v92 = v147;
  v99 = swift_allocObject();
  *(v99 + 16) = 0x3FF8000000000000;
  *(v92 + 2) = sub_26A791D14;
  *(v92 + 3) = v99;
  v100 = (v89 + 9 * v90);
  *(v92 + 4) = 0;
  *(v92 + 5) = 0;
  v101 = (v100 + *(v70 + 48));
  v102 = swift_initStackObject();
  *(v102 + 16) = v146;
  v103 = qword_281588968;
  *(v102 + 32) = qword_281588968;
  v104 = byte_281588970;
  *(v102 + 40) = byte_281588970;
  *(v102 + 48) = 1;
  *(v102 + 56) = 3;
  *(v102 + 64) = 3;
  *(v102 + 72) = 1;
  sub_26A4E324C(v103, v104);
  sub_26A621A9C(v102);
  *v100 = v105;
  __swift_storeEnumTagSinglePayload(v101->i64 + *(v98 + 36), 1, 1, v62);
  *v101 = v149;
  v106 = swift_allocObject();
  *(v106 + 16) = 0x4000000000000000;
  v101[1].i64[0] = sub_26A791D14;
  v101[1].i64[1] = v106;
  v107 = (v89 + 10 * v90);
  v101[2].i64[0] = 0;
  v101[2].i64[1] = 0;
  v108 = (v107 + *(v70 + 48));
  v109 = swift_initStackObject();
  *(v109 + 16) = v154;
  v110 = qword_281588998;
  *(v109 + 32) = qword_281588998;
  v111 = byte_2815889A0;
  *(v109 + 40) = byte_2815889A0;
  *(v109 + 48) = 1;
  *(v109 + 56) = 3;
  sub_26A4E324C(v110, v111);
  sub_26A621A9C(v109);
  *v107 = v112;
  v113 = v150;
  __swift_storeEnumTagSinglePayload(v150, 1, 1, v148);
  v114 = sub_26A8503E8();
  sub_26A4DBD10(v113, &qword_2803AB208);
  v115 = v139;
  v116 = v145;
  __swift_storeEnumTagSinglePayload(v108->i64 + *(v139 + 36), 1, 1, v145);
  v149 = vdupq_n_s64(0x4050000000000000uLL);
  *v108 = v149;
  v117 = swift_allocObject();
  *(v117 + 16) = 0x4025000000000000;
  v108[1].i64[0] = sub_26A791D14;
  v108[1].i64[1] = v117;
  v108[2].i64[0] = v114;
  v108[2].i64[1] = 0;
  v118 = v89;
  v119 = (v89 + 11 * v152);
  v120 = (v119 + *(v70 + 48));
  v121 = swift_initStackObject();
  *(v121 + 16) = v146;
  v122 = qword_281588998;
  *(v121 + 32) = qword_281588998;
  v123 = byte_2815889A0;
  *(v121 + 40) = byte_2815889A0;
  *(v121 + 48) = 1;
  *(v121 + 56) = 3;
  *(v121 + 64) = 1;
  *(v121 + 72) = 5;
  sub_26A4E324C(v122, v123);
  sub_26A621A9C(v121);
  *v119 = v124;
  __swift_storeEnumTagSinglePayload(v113, 1, 1, v148);
  v125 = sub_26A8503E8();
  sub_26A4DBD10(v113, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v120->i64 + *(v115 + 36), 1, 1, v116);
  *v120 = v149;
  v126 = swift_allocObject();
  *(v126 + 16) = 0x4030000000000000;
  v120[1].i64[0] = sub_26A791D14;
  v120[1].i64[1] = v126;
  v120[2].i64[0] = v125;
  v120[2].i64[1] = 0;
  v127 = (v118 + 12 * v152);
  v128 = v127 + *(v70 + 48);
  v129 = swift_initStackObject();
  *(v129 + 16) = v154;
  v130 = qword_281588938;
  *(v129 + 32) = qword_281588938;
  v131 = byte_281588940;
  *(v129 + 40) = byte_281588940;
  *(v129 + 48) = 1;
  *(v129 + 56) = 3;
  sub_26A4E324C(v130, v131);
  sub_26A621A9C(v129);
  *v127 = v132;
  __swift_storeEnumTagSinglePayload(&v128[*(v115 + 36)], 1, 1, v116);
  *v128 = v153;
  v133 = swift_allocObject();
  *(v133 + 16) = 0x4010000000000000;
  *(v128 + 2) = sub_26A791D14;
  *(v128 + 3) = v133;
  *(v128 + 4) = 0;
  *(v128 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v134 = sub_26A8516A8();
  v135 = v143;
  __swift_storeEnumTagSinglePayload(&v143[*(v115 + 36)], 1, 1, v116);
  *v135 = v147;
  v136 = swift_allocObject();
  *(v136 + 16) = 0x4000000000000000;
  *(v135 + 2) = sub_26A791D14;
  *(v135 + 3) = v136;
  *(v135 + 4) = 0;
  *(v135 + 5) = 0;
  return sub_26A80DFE8(v134);
}

uint64_t sub_26A7830A4()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  OUTLINED_FUNCTION_46();
  MEMORY[0x28223BE20](v1);
  v142 = &v135 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v135 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v6, qword_2803D2468);
  v141 = __swift_project_value_buffer(v6, qword_2803D2468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v8 = *(*(v7 - 8) + 72);
  v9 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26A8570C0;
  v140 = v10;
  v11 = (v10 + v9);
  v12 = v10 + v9 + *(v7 + 48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v145 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v15 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v16 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v15, v16);
  sub_26A621A9C(inited);
  *v11 = v17;
  v18 = sub_26A84B1D8();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  __asm { FMOV            V0.2D, #24.0 }

  *v12 = _Q0;
  OUTLINED_FUNCTION_12_20();
  v27 = swift_allocObject();
  v28 = OUTLINED_FUNCTION_37_14(v27);
  *(v12 + 16) = sub_26A791D00;
  *(v12 + 24) = v28;
  *(v12 + 32) = 0;
  *(v12 + 40) = 0;
  v29 = (v11 + v8 + *(v7 + 48));
  v30 = swift_initStackObject();
  OUTLINED_FUNCTION_28_13(v30);
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_52(&qword_281588938);
  *(v11 + v8) = v31;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v18);
  *v29 = vdupq_n_s64(0x4040000000000000uLL);
  OUTLINED_FUNCTION_12_20();
  v35 = swift_allocObject();
  *(v35 + 16) = 0x400E000000000000;
  v29[1].i64[0] = sub_26A791D14;
  v29[1].i64[1] = v35;
  v143 = v0;
  v144 = v18;
  v36 = (v11 + 2 * v8);
  v29[2].i64[0] = 0;
  v29[2].i64[1] = 0;
  v37 = (v36 + *(v7 + 48));
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_28_13(v38);
  v138 = v7;
  v39 = v8;
  v40 = v13;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_0_52(&qword_281588998);
  *v36 = v41;
  v42 = sub_26A850338();
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = OUTLINED_FUNCTION_42_10();
  sub_26A4DBD10(v5, &qword_2803AB208);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v42);
  v50 = OUTLINED_FUNCTION_42_10();
  sub_26A4DBD10(v5, &qword_2803AB208);
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  *v37 = vdupq_n_s64(0x4052000000000000uLL);
  OUTLINED_FUNCTION_12_20();
  v55 = swift_allocObject();
  *(v55 + 16) = 0x401C000000000000;
  v37[1].i64[0] = sub_26A791D14;
  v37[1].i64[1] = v55;
  v37[2].i64[0] = v46;
  v37[2].i64[1] = v50;
  v56 = v39;
  v57 = (v11 + 3 * v39);
  v58 = v138;
  v59 = v57 + *(v138 + 48);
  v60 = swift_initStackObject();
  v145 = xmmword_26A8570F0;
  *(v60 + 16) = xmmword_26A8570F0;
  v61 = v40;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_29_18(&qword_281588988);
  *v57 = v62;
  v63 = v144;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  __asm { FMOV            V0.2D, #25.0 }

  *v59 = _Q0;
  OUTLINED_FUNCTION_12_20();
  v68 = swift_allocObject();
  v69 = OUTLINED_FUNCTION_37_14(v68);
  *(v59 + 2) = sub_26A791D14;
  *(v59 + 3) = v69;
  *(v59 + 4) = 0;
  *(v59 + 5) = 0;
  v70 = *(v58 + 48);
  v71 = swift_initStackObject();
  OUTLINED_FUNCTION_28_13(v71);
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v72 = v56;
  v73 = (v11 + 4 * v56);
  v74 = v73 + v70;
  OUTLINED_FUNCTION_29_18(&qword_281588978);
  *v73 = v75;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v63);
  __asm { FMOV            V0.2D, #26.0 }

  v139 = _Q0;
  *v74 = _Q0;
  OUTLINED_FUNCTION_12_20();
  v80 = swift_allocObject();
  *(v80 + 16) = 0x4010000000000000;
  *(v74 + 2) = sub_26A791D14;
  *(v74 + 3) = v80;
  v81 = (v11 + 5 * v72);
  *(v74 + 4) = 0;
  *(v74 + 5) = 0;
  v82 = v81 + *(v58 + 48);
  v83 = swift_initStackObject();
  OUTLINED_FUNCTION_28_13(v83);
  v84 = OUTLINED_FUNCTION_5_74(&qword_281588968);
  OUTLINED_FUNCTION_35_11(v84, v85);
  *v81 = v86;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v63);
  __asm { FMOV            V0.2D, #22.0 }

  *v82 = _Q0;
  OUTLINED_FUNCTION_12_20();
  v91 = swift_allocObject();
  v92 = OUTLINED_FUNCTION_37_14(v91);
  *(v82 + 2) = sub_26A791D14;
  *(v82 + 3) = v92;
  v93 = (v11 + 6 * v72);
  *(v82 + 4) = 0;
  *(v82 + 5) = 0;
  v94 = (v93 + *(v58 + 48));
  v95 = swift_initStackObject();
  OUTLINED_FUNCTION_28_13(v95);
  v135 = v61;
  v96 = qword_281588998;
  v95[2].n128_u64[0] = qword_281588998;
  v97 = byte_2815889A0;
  v95[2].n128_u8[8] = byte_2815889A0;
  v95[3].n128_u64[0] = 1;
  OUTLINED_FUNCTION_35_11(v96, v97);
  *v93 = v98;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v63);
  v137 = vdupq_n_s64(0x4052800000000000uLL);
  *v94 = v137;
  OUTLINED_FUNCTION_12_20();
  v102 = swift_allocObject();
  *(v102 + 16) = 0x4028000000000000;
  v94[1].i64[0] = sub_26A791D14;
  v94[1].i64[1] = v102;
  v136 = v72;
  v103 = v58;
  v104 = v63;
  v105 = (v11 + 7 * v72);
  v94[2].i64[0] = 0;
  v94[2].i64[1] = 0;
  v106 = (v105 + *(v103 + 48));
  v107 = swift_initStackObject();
  *(v107 + 16) = xmmword_26A857110;
  v108 = OUTLINED_FUNCTION_5_74(&qword_281588998);
  *(v107 + 56) = 3;
  *(v107 + 64) = v109;
  *(v107 + 72) = 5;
  sub_26A4E324C(v108, v110);
  sub_26A621A9C(v107);
  *v105 = v111;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v104);
  *v106 = v137;
  OUTLINED_FUNCTION_12_20();
  v115 = swift_allocObject();
  *(v115 + 16) = 0x4032000000000000;
  v106[1].i64[0] = sub_26A791D14;
  v106[1].i64[1] = v115;
  v116 = &v11[v136];
  v106[2].i64[0] = 0;
  v106[2].i64[1] = 0;
  v117 = v116 + *(v103 + 48);
  v118 = swift_initStackObject();
  OUTLINED_FUNCTION_28_13(v118);
  v119 = OUTLINED_FUNCTION_5_74(&qword_281588938);
  OUTLINED_FUNCTION_35_11(v119, v120);
  *v116 = v121;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v104);
  __asm { FMOV            V0.2D, #28.0 }

  *v117 = _Q0;
  OUTLINED_FUNCTION_12_20();
  v126 = swift_allocObject();
  *(v126 + 16) = 0x4012000000000000;
  *(v117 + 2) = sub_26A791D14;
  *(v117 + 3) = v126;
  *(v117 + 4) = 0;
  *(v117 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  sub_26A8516A8();
  v127 = v142;
  OUTLINED_FUNCTION_81();
  __swift_storeEnumTagSinglePayload(v128, v129, v130, v104);
  *v127 = v139;
  OUTLINED_FUNCTION_12_20();
  v131 = swift_allocObject();
  v132 = OUTLINED_FUNCTION_37_14(v131);
  *(v127 + 2) = sub_26A791D14;
  *(v127 + 3) = v132;
  *(v127 + 4) = 0;
  *(v127 + 5) = 0;
  v133 = OUTLINED_FUNCTION_183();
  return sub_26A80DFE8(v133);
}

uint64_t sub_26A7839B0()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v132 = (&v125 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v125 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v5, &unk_2803D2480);
  v131 = __swift_project_value_buffer(v5, &unk_2803D2480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26A8830D0;
  v130 = v9;
  v10 = (v9 + v8);
  v11 = (v9 + v8 + *(v6 + 48));
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v136 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v13 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v14 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(inited);
  *v10 = v15;
  v16 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v17 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v18 = *(v0 + 36);
  v19 = sub_26A84B1D8();
  v138 = v0;
  v20 = v10;
  v134 = v19;
  __swift_storeEnumTagSinglePayload(v11->i64 + v18, 1, 1, v19);
  *v11 = vdupq_n_s64(0x4040000000000000uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4010000000000000;
  v11[1].i64[0] = sub_26A791D14;
  v11[1].i64[1] = v21;
  v11[2].i64[0] = v17;
  v11[2].i64[1] = 0;
  v22 = (v10 + v7 + *(v6 + 48));
  v23 = swift_initStackObject();
  *(v23 + 16) = v136;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v24 = qword_281588938;
  *(v23 + 32) = qword_281588938;
  v25 = byte_281588940;
  *(v23 + 40) = byte_281588940;
  sub_26A4E324C(v24, v25);
  sub_26A621A9C(v23);
  *(v10 + v7) = v26;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v27 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v22->i64 + *(v138 + 36), 1, 1, v134);
  *v22 = vdupq_n_s64(0x4044000000000000uLL);
  v28 = swift_allocObject();
  *(v28 + 16) = 0x4010000000000000;
  v22[1].i64[0] = sub_26A791D14;
  v22[1].i64[1] = v28;
  v22[2].i64[0] = v27;
  v22[2].i64[1] = 0;
  v29 = (v10 + 2 * v7);
  v30 = v16;
  v31 = (v29 + *(v6 + 48));
  v32 = swift_initStackObject();
  *(v32 + 16) = v136;
  v135 = v6;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v33 = qword_281588998;
  *(v32 + 32) = qword_281588998;
  v34 = byte_2815889A0;
  *(v32 + 40) = byte_2815889A0;
  sub_26A4E324C(v33, v34);
  sub_26A621A9C(v32);
  *v29 = v35;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v30);
  v36 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v137 = v30;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v30);
  v37 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v38 = v134;
  __swift_storeEnumTagSinglePayload(v31->i64 + *(v138 + 36), 1, 1, v134);
  *v31 = vdupq_n_s64(0x4054800000000000uLL);
  v39 = swift_allocObject();
  *(v39 + 16) = 0x4020000000000000;
  v31[1].i64[0] = sub_26A791D14;
  v31[1].i64[1] = v39;
  v31[2].i64[0] = v36;
  v31[2].i64[1] = v37;
  v133 = v7;
  v40 = v20;
  v41 = &v20[3 * v7];
  v42 = v135;
  v43 = v41 + *(v135 + 48);
  v44 = swift_initStackObject();
  v136 = xmmword_26A8570F0;
  *(v44 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v45 = qword_281588988;
  *(v44 + 32) = qword_281588988;
  v46 = byte_281588990;
  *(v44 + 40) = byte_281588990;
  *(v44 + 48) = 1;
  *(v44 + 56) = 3;
  sub_26A4E324C(v45, v46);
  sub_26A621A9C(v44);
  *v41 = v47;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v137);
  v48 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(&v43[*(v138 + 36)], 1, 1, v38);
  __asm { FMOV            V0.2D, #30.0 }

  *v43 = _Q0;
  v54 = swift_allocObject();
  *(v54 + 16) = 0x4010000000000000;
  *(v43 + 2) = sub_26A791D14;
  *(v43 + 3) = v54;
  *(v43 + 4) = v48;
  *(v43 + 5) = 0;
  v55 = *(v42 + 48);
  v56 = swift_initStackObject();
  *(v56 + 16) = v136;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v57 = v133;
  v58 = v40;
  v59 = &v40[4 * v133];
  v60 = &v59[v55];
  v61 = qword_281588978;
  *(v56 + 32) = qword_281588978;
  v62 = byte_281588980;
  *(v56 + 40) = byte_281588980;
  *(v56 + 48) = 1;
  *(v56 + 56) = 3;
  sub_26A4E324C(v61, v62);
  sub_26A621A9C(v56);
  *v59 = v63;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v137);
  v64 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  sub_26A850418();
  v65 = sub_26A850308();

  v66 = v138;
  __swift_storeEnumTagSinglePayload(v60->i64 + *(v138 + 36), 1, 1, v38);
  v129 = vdupq_n_s64(0x4040000000000000uLL);
  *v60 = v129;
  v67 = swift_allocObject();
  *(v67 + 16) = 0x4016000000000000;
  v60[1].i64[0] = sub_26A791D14;
  v60[1].i64[1] = v67;
  v60[2].i64[0] = v64;
  v60[2].i64[1] = v65;
  v68 = v58;
  v126 = v58;
  v69 = &v58[5 * v57];
  v70 = &v69[*(v135 + 48)];
  v71 = swift_initStackObject();
  *(v71 + 16) = v136;
  v72 = qword_281588968;
  *(v71 + 32) = qword_281588968;
  v73 = byte_281588970;
  *(v71 + 40) = byte_281588970;
  *(v71 + 48) = 1;
  *(v71 + 56) = 3;
  sub_26A4E324C(v72, v73);
  sub_26A621A9C(v71);
  *v69 = v74;
  v75 = v137;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v137);
  v76 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  sub_26A8502F8();
  v77 = sub_26A850308();

  v78 = &v70[*(v66 + 36)];
  v79 = v134;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v134);
  __asm { FMOV            V0.2D, #28.0 }

  *v70 = _Q0;
  v81 = swift_allocObject();
  *(v81 + 16) = 0x4012000000000000;
  *(v70 + 2) = sub_26A791D14;
  *(v70 + 3) = v81;
  *(v70 + 4) = v76;
  *(v70 + 5) = v77;
  v82 = &v68[6 * v57];
  v83 = &v82[*(v135 + 48)];
  v84 = swift_initStackObject();
  *(v84 + 16) = v136;
  v85 = qword_281588998;
  *(v84 + 32) = qword_281588998;
  v86 = byte_2815889A0;
  *(v84 + 40) = byte_2815889A0;
  *(v84 + 48) = 1;
  *(v84 + 56) = 3;
  sub_26A4E324C(v85, v86);
  sub_26A621A9C(v84);
  *v82 = v87;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v75);
  v88 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v89 = v138;
  __swift_storeEnumTagSinglePayload(v83->i64 + *(v138 + 36), 1, 1, v79);
  v128 = vdupq_n_s64(0x4054800000000000uLL);
  *v83 = v128;
  v90 = swift_allocObject();
  *(v90 + 16) = 0x402B000000000000;
  v83[1].i64[0] = sub_26A791D14;
  v83[1].i64[1] = v90;
  v83[2].i64[0] = v88;
  v83[2].i64[1] = 0;
  v91 = v126;
  v92 = &v126[7 * v57];
  v93 = v135;
  v94 = &v92[*(v135 + 48)];
  v95 = swift_initStackObject();
  v127 = xmmword_26A857110;
  *(v95 + 16) = xmmword_26A857110;
  v96 = qword_281588998;
  *(v95 + 32) = qword_281588998;
  v97 = byte_2815889A0;
  *(v95 + 40) = byte_2815889A0;
  *(v95 + 48) = 1;
  *(v95 + 56) = 3;
  *(v95 + 64) = 1;
  *(v95 + 72) = 5;
  sub_26A4E324C(v96, v97);
  sub_26A621A9C(v95);
  *v92 = v98;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v137);
  v99 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v100 = v89;
  v101 = v94->i64 + *(v89 + 36);
  v102 = v134;
  __swift_storeEnumTagSinglePayload(v101, 1, 1, v134);
  *v94 = v128;
  v103 = swift_allocObject();
  *(v103 + 16) = 0x4036000000000000;
  v94[1].i64[0] = sub_26A791D14;
  v94[1].i64[1] = v103;
  v94[2].i64[0] = v99;
  v94[2].i64[1] = 0;
  v128.i64[0] = v4;
  v104 = v133;
  v105 = &v91[8 * v133];
  v106 = &v105[*(v93 + 48)];
  v107 = swift_initStackObject();
  *(v107 + 16) = v136;
  v108 = qword_281588938;
  *(v107 + 32) = qword_281588938;
  v109 = byte_281588940;
  *(v107 + 40) = byte_281588940;
  *(v107 + 48) = 1;
  *(v107 + 56) = 3;
  sub_26A4E324C(v108, v109);
  sub_26A621A9C(v107);
  *v105 = v110;
  __swift_storeEnumTagSinglePayload(v106->i64 + *(v100 + 36), 1, 1, v102);
  *v106 = v129;
  v111 = swift_allocObject();
  *(v111 + 16) = 0x4014000000000000;
  v106[1].i64[0] = sub_26A791D14;
  v106[1].i64[1] = v111;
  v112 = &v91[9 * v104];
  v106[2].i64[0] = 0;
  v106[2].i64[1] = 0;
  v113 = &v112[*(v93 + 48)];
  v114 = swift_initStackObject();
  *(v114 + 16) = v127;
  v115 = qword_281588968;
  *(v114 + 32) = qword_281588968;
  v116 = byte_281588970;
  *(v114 + 40) = byte_281588970;
  *(v114 + 48) = 0;
  *(v114 + 56) = 1;
  *(v114 + 64) = 1;
  *(v114 + 72) = 4;
  sub_26A4E324C(v115, v116);
  sub_26A621A9C(v114);
  *v112 = v117;
  __swift_storeEnumTagSinglePayload(v113->i64 + *(v100 + 36), 1, 1, v102);
  *v113 = vdupq_n_s64(0x4042000000000000uLL);
  v118 = swift_allocObject();
  *(v118 + 16) = 0x4016000000000000;
  v113[1].i64[0] = sub_26A791D14;
  v113[1].i64[1] = v118;
  v113[2].i64[0] = 0;
  v113[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v119 = sub_26A8516A8();
  v120 = v128.i64[0];
  __swift_storeEnumTagSinglePayload(v128.i64[0], 1, 1, v137);
  v121 = sub_26A8503E8();
  sub_26A4DBD10(v120, &qword_2803AB208);
  v122 = v132;
  __swift_storeEnumTagSinglePayload(v132->i64 + *(v100 + 36), 1, 1, v102);
  *v122 = vdupq_n_s64(0x4043000000000000uLL);
  v123 = swift_allocObject();
  *(v123 + 16) = 0x4010000000000000;
  v122[1].i64[0] = sub_26A791D14;
  v122[1].i64[1] = v123;
  v122[2].i64[0] = v121;
  v122[2].i64[1] = 0;
  return sub_26A80DFE8(v119);
}

uint64_t sub_26A7847C0()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v104 = (&v99 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v106 = &v99 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D2498);
  v103 = __swift_project_value_buffer(v4, qword_2803D2498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8570C0;
  v102 = v8;
  v9 = (v8 + v7);
  v10 = (v8 + v7 + *(v5 + 48));
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v111 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v12 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v13 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v12, v13);
  sub_26A621A9C(inited);
  *v9 = v14;
  v15 = *(v0 + 36);
  v16 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10->i64 + v15, 1, 1, v16);
  *v10 = vdupq_n_s64(0x4041000000000000uLL);
  v17 = swift_allocObject();
  *(v17 + 16) = 0x4010000000000000;
  v10[1].i64[0] = sub_26A791D14;
  v10[1].i64[1] = v17;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  v18 = (v9 + v6 + *(v5 + 48));
  v19 = swift_initStackObject();
  *(v19 + 16) = v111;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(v9 + v6) = v22;
  __swift_storeEnumTagSinglePayload(v18->i64 + *(v0 + 36), 1, 1, v16);
  *v18 = vdupq_n_s64(0x4044000000000000uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4010000000000000;
  v18[1].i64[0] = sub_26A791D14;
  v18[1].i64[1] = v23;
  v110 = v0;
  v107 = v16;
  v24 = v6;
  v25 = (v9 + 2 * v6);
  v18[2].i64[0] = 0;
  v18[2].i64[1] = 0;
  v26 = (v25 + *(v5 + 48));
  v27 = swift_initStackObject();
  *(v27 + 16) = v111;
  v28 = v5;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v29 = qword_281588998;
  *(v27 + 32) = qword_281588998;
  v30 = byte_2815889A0;
  *(v27 + 40) = byte_2815889A0;
  sub_26A4E324C(v29, v30);
  sub_26A621A9C(v27);
  *v25 = v31;
  v32 = sub_26A850338();
  v33 = v106;
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v32);
  v34 = sub_26A8503E8();
  sub_26A4DBD10(v33, &qword_2803AB208);
  v109 = v32;
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v32);
  v35 = sub_26A8503E8();
  sub_26A4DBD10(v33, &qword_2803AB208);
  v36 = v107;
  __swift_storeEnumTagSinglePayload(v26->i64 + *(v110 + 36), 1, 1, v107);
  *v26 = vdupq_n_s64(0x405C800000000000uLL);
  v37 = swift_allocObject();
  *(v37 + 16) = 0x4024000000000000;
  v26[1].i64[0] = sub_26A791D14;
  v26[1].i64[1] = v37;
  v26[2].i64[0] = v34;
  v26[2].i64[1] = v35;
  v38 = (v9 + 3 * v24);
  v39 = (v38 + *(v28 + 48));
  v40 = swift_initStackObject();
  v111 = xmmword_26A8570F0;
  *(v40 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v41 = qword_281588988;
  *(v40 + 32) = qword_281588988;
  v42 = byte_281588990;
  *(v40 + 40) = byte_281588990;
  *(v40 + 48) = 1;
  *(v40 + 56) = 3;
  sub_26A4E324C(v41, v42);
  sub_26A621A9C(v40);
  *v38 = v43;
  __swift_storeEnumTagSinglePayload(v39->i64 + *(v110 + 36), 1, 1, v36);
  v101 = vdupq_n_s64(0x4049000000000000uLL);
  *v39 = v101;
  v44 = swift_allocObject();
  *(v44 + 16) = 0x4010000000000000;
  v39[1].i64[0] = sub_26A791D14;
  v39[1].i64[1] = v44;
  v39[2].i64[0] = 0;
  v39[2].i64[1] = 0;
  v45 = *(v28 + 48);
  v46 = swift_initStackObject();
  *(v46 + 16) = v111;
  v108 = v28;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v47 = (v9 + 4 * v24);
  v100 = v9;
  v48 = (v47 + v45);
  v49 = qword_281588978;
  *(v46 + 32) = qword_281588978;
  v50 = byte_281588980;
  *(v46 + 40) = byte_281588980;
  *(v46 + 48) = 1;
  *(v46 + 56) = 3;
  sub_26A4E324C(v49, v50);
  sub_26A621A9C(v46);
  *v47 = v51;
  v52 = v106;
  v105 = v24;
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v109);
  v53 = sub_26A8503E8();
  sub_26A4DBD10(v52, &qword_2803AB208);
  sub_26A850418();
  v54 = sub_26A850308();

  v55 = v110;
  __swift_storeEnumTagSinglePayload(v48->i64 + *(v110 + 36), 1, 1, v36);
  *v48 = v101;
  v56 = swift_allocObject();
  *(v56 + 16) = 0x4021000000000000;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v56;
  v48[2].i64[0] = v53;
  v48[2].i64[1] = v54;
  v57 = (v9 + 5 * v24);
  v58 = v108;
  v59 = (v57 + *(v108 + 48));
  v60 = swift_initStackObject();
  *(v60 + 16) = v111;
  v61 = qword_281588968;
  *(v60 + 32) = qword_281588968;
  v62 = byte_281588970;
  *(v60 + 40) = byte_281588970;
  *(v60 + 48) = 1;
  *(v60 + 56) = 3;
  sub_26A4E324C(v61, v62);
  sub_26A621A9C(v60);
  *v57 = v63;
  v64 = v109;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v109);
  v101.i64[0] = sub_26A8503E8();
  sub_26A4DBD10(v52, &qword_2803AB208);
  sub_26A8502F8();
  v65 = sub_26A850308();

  __swift_storeEnumTagSinglePayload(v59->i64 + *(v55 + 36), 1, 1, v36);
  *v59 = vdupq_n_s64(0x4041000000000000uLL);
  v66 = swift_allocObject();
  *(v66 + 16) = 0x4016000000000000;
  v59[1].i64[0] = sub_26A791D14;
  v59[1].i64[1] = v66;
  v59[2].i64[0] = v101.i64[0];
  v59[2].i64[1] = v65;
  v67 = v100;
  v68 = (v100 + 6 * v105);
  v69 = (v68 + *(v58 + 48));
  v70 = swift_initStackObject();
  *(v70 + 16) = v111;
  v71 = qword_281588998;
  *(v70 + 32) = qword_281588998;
  v72 = byte_2815889A0;
  *(v70 + 40) = byte_2815889A0;
  *(v70 + 48) = 1;
  *(v70 + 56) = 3;
  sub_26A4E324C(v71, v72);
  sub_26A621A9C(v70);
  *v68 = v73;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v64);
  v74 = sub_26A8503E8();
  sub_26A4DBD10(v52, &qword_2803AB208);
  v75 = v110;
  __swift_storeEnumTagSinglePayload(v69->i64 + *(v110 + 36), 1, 1, v36);
  v101 = vdupq_n_s64(0x4058000000000000uLL);
  *v69 = v101;
  v76 = swift_allocObject();
  *(v76 + 16) = 0x4030000000000000;
  v69[1].i64[0] = sub_26A791D14;
  v69[1].i64[1] = v76;
  v69[2].i64[0] = v74;
  v69[2].i64[1] = 0;
  v77 = v105;
  v78 = (v67 + 7 * v105);
  v79 = v108;
  v80 = (v78 + *(v108 + 48));
  v81 = swift_initStackObject();
  *(v81 + 16) = xmmword_26A857110;
  v82 = qword_281588998;
  *(v81 + 32) = qword_281588998;
  v83 = byte_2815889A0;
  *(v81 + 40) = byte_2815889A0;
  *(v81 + 48) = 1;
  *(v81 + 56) = 3;
  *(v81 + 64) = 1;
  *(v81 + 72) = 5;
  sub_26A4E324C(v82, v83);
  sub_26A621A9C(v81);
  *v78 = v84;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v109);
  v85 = sub_26A8503E8();
  sub_26A4DBD10(v52, &qword_2803AB208);
  v86 = v107;
  __swift_storeEnumTagSinglePayload(v80->i64 + *(v75 + 36), 1, 1, v107);
  *v80 = v101;
  v87 = swift_allocObject();
  *(v87 + 16) = 0x4036000000000000;
  v80[1].i64[0] = sub_26A791D14;
  v80[1].i64[1] = v87;
  v80[2].i64[0] = v85;
  v80[2].i64[1] = 0;
  v88 = &v67[v77];
  v89 = (v88 + *(v79 + 48));
  v90 = swift_initStackObject();
  *(v90 + 16) = v111;
  v91 = qword_281588938;
  *(v90 + 32) = qword_281588938;
  v92 = byte_281588940;
  *(v90 + 40) = byte_281588940;
  *(v90 + 48) = 1;
  *(v90 + 56) = 3;
  sub_26A4E324C(v91, v92);
  sub_26A621A9C(v90);
  *v88 = v93;
  __swift_storeEnumTagSinglePayload(v89->i64 + *(v75 + 36), 1, 1, v86);
  *v89 = vdupq_n_s64(0x4040000000000000uLL);
  v94 = swift_allocObject();
  *(v94 + 16) = 0x4014000000000000;
  v89[1].i64[0] = sub_26A791D14;
  v89[1].i64[1] = v94;
  v89[2].i64[0] = 0;
  v89[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v95 = sub_26A8516A8();
  v96 = v104;
  __swift_storeEnumTagSinglePayload(v104->i64 + *(v75 + 36), 1, 1, v86);
  *v96 = vdupq_n_s64(0x4043000000000000uLL);
  v97 = swift_allocObject();
  *(v97 + 16) = 0x4010000000000000;
  v96[1].i64[0] = sub_26A791D14;
  v96[1].i64[1] = v97;
  v96[2].i64[0] = 0;
  v96[2].i64[1] = 0;
  return sub_26A80DFE8(v95);
}

uint64_t sub_26A7853E8()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v166 = &v161.i8[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v161.i8[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v5, qword_2815887C8);
  v165 = __swift_project_value_buffer(v5, qword_2815887C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26A8830E0;
  v164 = v9;
  v10 = (v9 + v8);
  v11 = (v9 + v8 + *(v6 + 48));
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v173 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v13 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v14 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(inited);
  *v10 = v15;
  v16 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v17 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v18 = *(v0 + 36);
  v19 = sub_26A84B1D8();
  v176 = v0;
  v20 = v19;
  __swift_storeEnumTagSinglePayload(v11->i64 + v18, 1, 1, v19);
  *v11 = vdupq_n_s64(0x4049000000000000uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4018000000000000;
  v11[1].i64[0] = sub_26A791D14;
  v11[1].i64[1] = v21;
  v11[2].i64[0] = v17;
  v11[2].i64[1] = 0;
  v22 = (v10 + v7 + *(v6 + 48));
  v23 = swift_initStackObject();
  *(v23 + 16) = v173;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v24 = qword_281588938;
  *(v23 + 32) = qword_281588938;
  v25 = byte_281588940;
  *(v23 + 40) = byte_281588940;
  sub_26A4E324C(v24, v25);
  sub_26A621A9C(v23);
  *(v10 + v7) = v26;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v16);
  v27 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v22->i64 + *(v176 + 36), 1, 1, v20);
  *v22 = vdupq_n_s64(0x4050000000000000uLL);
  v28 = swift_allocObject();
  *(v28 + 16) = 0x4018000000000000;
  v22[1].i64[0] = sub_26A791D14;
  v22[1].i64[1] = v28;
  v22[2].i64[0] = v27;
  v22[2].i64[1] = 0;
  v29 = (v10 + 2 * v7);
  v30 = v16;
  v31 = (v29 + *(v6 + 48));
  v32 = swift_initStackObject();
  *(v32 + 16) = v173;
  v175 = v20;
  v33 = v6;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v34 = qword_281588998;
  *(v32 + 32) = qword_281588998;
  v35 = byte_2815889A0;
  *(v32 + 40) = byte_2815889A0;
  sub_26A4E324C(v34, v35);
  sub_26A621A9C(v32);
  *v29 = v36;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v30);
  v37 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v172 = v30;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v30);
  v38 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v31->i64 + *(v176 + 36), 1, 1, v175);
  *v31 = vdupq_n_s64(0x4062000000000000uLL);
  v39 = swift_allocObject();
  *(v39 + 16) = 0x4028000000000000;
  v31[1].i64[0] = sub_26A791D14;
  v31[1].i64[1] = v39;
  v31[2].i64[0] = v37;
  v31[2].i64[1] = v38;
  v40 = (v10 + 3 * v7);
  v41 = (v40 + *(v33 + 48));
  v42 = swift_initStackObject();
  v173 = xmmword_26A8570F0;
  *(v42 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v43 = qword_281588988;
  *(v42 + 32) = qword_281588988;
  v44 = byte_281588990;
  *(v42 + 40) = byte_281588990;
  *(v42 + 48) = 1;
  *(v42 + 56) = 3;
  sub_26A4E324C(v43, v44);
  sub_26A621A9C(v42);
  *v40 = v45;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v172);
  v46 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v41->i64 + *(v176 + 36), 1, 1, v175);
  v162 = vdupq_n_s64(0x4044000000000000uLL);
  *v41 = v162;
  v47 = swift_allocObject();
  *(v47 + 16) = 0x4020000000000000;
  v41[1].i64[0] = sub_26A791D14;
  v41[1].i64[1] = v47;
  v41[2].i64[0] = v46;
  v41[2].i64[1] = 0;
  v48 = *(v33 + 48);
  v49 = swift_initStackObject();
  *(v49 + 16) = v173;
  v171 = v33;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v167 = v7;
  v50 = (v10 + 4 * v7);
  v170 = v10;
  v51 = (v50 + v48);
  v52 = qword_281588978;
  *(v49 + 32) = qword_281588978;
  v53 = byte_281588980;
  *(v49 + 40) = byte_281588980;
  *(v49 + 48) = 1;
  *(v49 + 56) = 3;
  sub_26A4E324C(v52, v53);
  sub_26A621A9C(v49);
  *v50 = v54;
  v55 = v172;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v172);
  v56 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v55);
  sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v57 = sub_26A850308();

  __swift_storeEnumTagSinglePayload(v51->i64 + *(v176 + 36), 1, 1, v175);
  v163 = vdupq_n_s64(0x404E000000000000uLL);
  *v51 = v163;
  v58 = swift_allocObject();
  *(v58 + 16) = 0x4024000000000000;
  v51[1].i64[0] = sub_26A791D14;
  v51[1].i64[1] = v58;
  v51[2].i64[0] = v56;
  v51[2].i64[1] = v57;
  v59 = v167;
  v60 = (v10 + 5 * v167);
  v61 = (v60 + *(v171 + 48));
  v62 = swift_initStackObject();
  *(v62 + 16) = v173;
  v63 = qword_281588968;
  *(v62 + 32) = qword_281588968;
  v64 = byte_281588970;
  *(v62 + 40) = byte_281588970;
  *(v62 + 48) = 1;
  *(v62 + 56) = 3;
  sub_26A4E324C(v63, v64);
  sub_26A621A9C(v62);
  *v60 = v65;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v55);
  v66 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  sub_26A8502F8();
  v67 = sub_26A850308();

  v68 = v176;
  __swift_storeEnumTagSinglePayload(v61->i64 + *(v176 + 36), 1, 1, v175);
  *v61 = vdupq_n_s64(0x4049000000000000uLL);
  v69 = swift_allocObject();
  *(v69 + 16) = 0x4020000000000000;
  v61[1].i64[0] = sub_26A791D14;
  v61[1].i64[1] = v69;
  v61[2].i64[0] = v66;
  v61[2].i64[1] = v67;
  v70 = v4;
  v71 = v170;
  v72 = v171;
  v73 = (v170 + 6 * v59);
  v74 = (v73 + *(v171 + 48));
  v75 = swift_initStackObject();
  *(v75 + 16) = v173;
  v76 = qword_281588998;
  *(v75 + 32) = qword_281588998;
  v77 = byte_2815889A0;
  *(v75 + 40) = byte_2815889A0;
  *(v75 + 48) = 1;
  *(v75 + 56) = 3;
  sub_26A4E324C(v76, v77);
  sub_26A621A9C(v75);
  *v73 = v78;
  v79 = v70;
  v168 = v70;
  v80 = v70;
  v81 = v172;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v172);
  v82 = sub_26A8503E8();
  sub_26A4DBD10(v79, &qword_2803AB208);
  v83 = v74->i64 + *(v68 + 36);
  v84 = v175;
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v175);
  v161 = vdupq_n_s64(0x405C800000000000uLL);
  *v74 = v161;
  v85 = swift_allocObject();
  *(v85 + 16) = 0x4038000000000000;
  v74[1].i64[0] = sub_26A791D14;
  v74[1].i64[1] = v85;
  v74[2].i64[0] = v82;
  v74[2].i64[1] = 0;
  v86 = (v71 + 7 * v59);
  v87 = (v86 + *(v72 + 48));
  v88 = swift_initStackObject();
  v169 = xmmword_26A857110;
  *(v88 + 16) = xmmword_26A857110;
  v89 = qword_281588998;
  *(v88 + 32) = qword_281588998;
  v90 = byte_2815889A0;
  *(v88 + 40) = byte_2815889A0;
  *(v88 + 48) = 1;
  *(v88 + 56) = 3;
  *(v88 + 64) = 1;
  *(v88 + 72) = 5;
  sub_26A4E324C(v89, v90);
  sub_26A621A9C(v88);
  *v86 = v91;
  v92 = v168;
  __swift_storeEnumTagSinglePayload(v168, 1, 1, v81);
  v93 = sub_26A8503E8();
  sub_26A4DBD10(v92, &qword_2803AB208);
  v94 = v176;
  __swift_storeEnumTagSinglePayload(v87->i64 + *(v176 + 36), 1, 1, v84);
  *v87 = v161;
  v95 = swift_allocObject();
  *(v95 + 16) = 0x4036000000000000;
  v87[1].i64[0] = sub_26A791D14;
  v87[1].i64[1] = v95;
  v87[2].i64[0] = v93;
  v87[2].i64[1] = 0;
  v96 = v170;
  v97 = v171;
  v98 = v167;
  v99 = &v170[v167];
  v100 = (v99 + *(v171 + 48));
  v101 = swift_initStackObject();
  *(v101 + 16) = v173;
  v102 = qword_281588938;
  *(v101 + 32) = qword_281588938;
  v103 = byte_281588940;
  *(v101 + 40) = byte_281588940;
  *(v101 + 48) = 1;
  *(v101 + 56) = 3;
  sub_26A4E324C(v102, v103);
  sub_26A621A9C(v101);
  *v99 = v104;
  __swift_storeEnumTagSinglePayload(v100->i64 + *(v94 + 36), 1, 1, v84);
  v161 = vdupq_n_s64(0x4050000000000000uLL);
  *v100 = v161;
  v105 = swift_allocObject();
  *(v105 + 16) = 0x4024000000000000;
  v100[1].i64[0] = sub_26A791D14;
  v100[1].i64[1] = v105;
  v106 = (v96 + 9 * v98);
  v100[2].i64[0] = 0;
  v100[2].i64[1] = 0;
  v107 = (v106 + *(v97 + 48));
  v108 = swift_initStackObject();
  *(v108 + 16) = v169;
  v109 = qword_281588978;
  *(v108 + 32) = qword_281588978;
  v110 = byte_281588980;
  *(v108 + 40) = byte_281588980;
  *(v108 + 48) = 1;
  *(v108 + 56) = 3;
  *(v108 + 64) = 1;
  *(v108 + 72) = 9;
  sub_26A4E324C(v109, v110);
  sub_26A621A9C(v108);
  *v106 = v111;
  v112 = v168;
  v113 = v172;
  __swift_storeEnumTagSinglePayload(v168, 1, 1, v172);
  v114 = sub_26A8503E8();
  sub_26A4DBD10(v112, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v112, 1, 1, v113);
  sub_26A8503E8();
  sub_26A4DBD10(v112, &qword_2803AB208);
  v115 = sub_26A850308();

  __swift_storeEnumTagSinglePayload(v107->i64 + *(v94 + 36), 1, 1, v84);
  *v107 = v162;
  v107[1].i64[0] = sub_26A7816AC;
  v107[1].i64[1] = 0;
  v107[2].i64[0] = v114;
  v107[2].i64[1] = v115;
  v117 = v170;
  v116 = v171;
  v118 = v167;
  v119 = (v170 + 10 * v167);
  v120 = (v119 + *(v171 + 48));
  v121 = swift_initStackObject();
  *(v121 + 16) = v173;
  v122 = qword_281588968;
  *(v121 + 32) = qword_281588968;
  v123 = byte_281588970;
  *(v121 + 40) = byte_281588970;
  *(v121 + 48) = 0;
  *(v121 + 56) = 1;
  sub_26A4E324C(v122, v123);
  sub_26A621A9C(v121);
  *v119 = v124;
  v125 = v175;
  __swift_storeEnumTagSinglePayload(v120->i64 + *(v94 + 36), 1, 1, v175);
  v162 = vdupq_n_s64(0x4040000000000000uLL);
  *v120 = v162;
  v126 = swift_allocObject();
  *(v126 + 16) = 0x4016000000000000;
  v120[1].i64[0] = sub_26A791D14;
  v120[1].i64[1] = v126;
  v127 = v118;
  v128 = (v117 + 11 * v118);
  v120[2].i64[0] = 0;
  v120[2].i64[1] = 0;
  v129 = v116;
  v130 = (v128 + *(v116 + 48));
  v131 = swift_initStackObject();
  *(v131 + 16) = v173;
  v132 = qword_281588968;
  *(v131 + 32) = qword_281588968;
  v133 = byte_281588970;
  *(v131 + 40) = byte_281588970;
  *(v131 + 48) = 3;
  *(v131 + 56) = 1;
  sub_26A4E324C(v132, v133);
  sub_26A621A9C(v131);
  *v128 = v134;
  v135 = v176;
  __swift_storeEnumTagSinglePayload(v130->i64 + *(v176 + 36), 1, 1, v125);
  *v130 = v162;
  v136 = swift_allocObject();
  *(v136 + 16) = 0x4016000000000000;
  v130[1].i64[0] = sub_26A791D14;
  v130[1].i64[1] = v136;
  v137 = v170;
  v138 = (v170 + 12 * v127);
  v130[2].i64[0] = 0;
  v130[2].i64[1] = 0;
  v139 = (v138 + *(v129 + 48));
  v140 = swift_initStackObject();
  *(v140 + 16) = v169;
  v141 = qword_281588968;
  *(v140 + 32) = qword_281588968;
  v142 = byte_281588970;
  *(v140 + 40) = byte_281588970;
  *(v140 + 48) = 0;
  *(v140 + 56) = 1;
  *(v140 + 64) = 1;
  *(v140 + 72) = 4;
  sub_26A4E324C(v141, v142);
  sub_26A621A9C(v140);
  *v138 = v143;
  v144 = v175;
  __swift_storeEnumTagSinglePayload(v139->i64 + *(v135 + 36), 1, 1, v175);
  *v139 = vdupq_n_s64(0x4042000000000000uLL);
  v145 = swift_allocObject();
  *(v145 + 16) = 0x4016000000000000;
  v139[1].i64[0] = sub_26A791D14;
  v139[1].i64[1] = v145;
  v146 = (v137 + 13 * v127);
  v139[2].i64[0] = 0;
  v139[2].i64[1] = 0;
  v147 = (v146 + *(v129 + 48));
  v148 = swift_initStackObject();
  *(v148 + 16) = v169;
  v149 = qword_281588978;
  *(v148 + 32) = qword_281588978;
  v150 = byte_281588980;
  *(v148 + 40) = byte_281588980;
  *(v148 + 48) = 0;
  *(v148 + 56) = 1;
  *(v148 + 64) = 1;
  *(v148 + 72) = 5;
  sub_26A4E324C(v149, v150);
  sub_26A621A9C(v148);
  *v146 = v151;
  v152 = v135;
  __swift_storeEnumTagSinglePayload(v147->i64 + *(v135 + 36), 1, 1, v144);
  *v147 = v161;
  v153 = swift_allocObject();
  *(v153 + 16) = 0x4030A3D70A3D70A4;
  v147[1].i64[0] = sub_26A791D14;
  v147[1].i64[1] = v153;
  v147[2].i64[0] = 0;
  v147[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v154 = sub_26A8516A8();
  v155 = v168;
  __swift_storeEnumTagSinglePayload(v168, 1, 1, v172);
  v156 = sub_26A8503E8();
  sub_26A4DBD10(v155, &qword_2803AB208);
  v157 = *(v152 + 36);
  v158 = v166;
  __swift_storeEnumTagSinglePayload(&v166[v157], 1, 1, v144);
  *v158 = v163;
  v159 = swift_allocObject();
  *(v159 + 16) = 0x4018000000000000;
  v158[1].i64[0] = sub_26A791D14;
  v158[1].i64[1] = v159;
  v158[2].i64[0] = v156;
  v158[2].i64[1] = 0;
  return sub_26A80DFE8(v154);
}

uint64_t sub_26A7865CC()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v88 = (&v81 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v90.i64[0] = &v81 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D24B0);
  v87 = __swift_project_value_buffer(v4, qword_2803D24B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8713E0;
  v86 = v8;
  v9 = (v8 + v7);
  v10 = (v8 + v7 + *(v5 + 48));
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v92 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v12 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v13 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v12, v13);
  sub_26A621A9C(inited);
  *v9 = v14;
  v15 = *(v0 + 36);
  v16 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10->i64 + v15, 1, 1, v16);
  *v10 = vdupq_n_s64(0x4051800000000000uLL);
  v17 = swift_allocObject();
  *(v17 + 16) = 0x4020000000000000;
  v10[1].i64[0] = sub_26A791D14;
  v10[1].i64[1] = v17;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  v18 = (v9 + v6 + *(v5 + 48));
  v19 = swift_initStackObject();
  *(v19 + 16) = v92;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(v9 + v6) = v22;
  __swift_storeEnumTagSinglePayload(v18->i64 + *(v0 + 36), 1, 1, v16);
  *v18 = vdupq_n_s64(0x4050000000000000uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4018000000000000;
  v18[1].i64[0] = sub_26A791D14;
  v18[1].i64[1] = v23;
  v24 = v16;
  v25 = (v9 + 2 * v6);
  v18[2].i64[0] = 0;
  v18[2].i64[1] = 0;
  v26 = *(v5 + 48);
  v85 = v9;
  v89 = v6;
  v27 = (v25 + v26);
  v28 = swift_initStackObject();
  *(v28 + 16) = v92;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v29 = qword_281588998;
  *(v28 + 32) = qword_281588998;
  v30 = byte_2815889A0;
  *(v28 + 40) = byte_2815889A0;
  sub_26A4E324C(v29, v30);
  sub_26A621A9C(v28);
  *v25 = v31;
  v84 = sub_26A850338();
  v32 = v90.i64[0];
  __swift_storeEnumTagSinglePayload(v90.i64[0], 1, 1, v84);
  v33 = sub_26A8503E8();
  sub_26A4DBD10(v32, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v27->i64 + *(v0 + 36), 1, 1, v24);
  v83 = vdupq_n_s64(0x4061800000000000uLL);
  *v27 = v83;
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4020000000000000;
  v27[1].i64[0] = sub_26A791D14;
  v27[1].i64[1] = v34;
  v27[2].i64[0] = v33;
  v27[2].i64[1] = 0;
  v35 = v89;
  v82 = v0;
  v36 = v85;
  v37 = (v85 + 3 * v89);
  v38 = (v37 + *(v5 + 48));
  v39 = swift_initStackObject();
  v92 = xmmword_26A8570F0;
  *(v39 + 16) = xmmword_26A8570F0;
  v40 = qword_281588998;
  *(v39 + 32) = qword_281588998;
  v41 = byte_2815889A0;
  *(v39 + 40) = byte_2815889A0;
  *(v39 + 48) = 1;
  *(v39 + 56) = 5;
  sub_26A4E324C(v40, v41);
  sub_26A621A9C(v39);
  *v37 = v42;
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v84);
  v43 = sub_26A8503E8();
  sub_26A4DBD10(v32, &qword_2803AB208);
  v44 = v82;
  __swift_storeEnumTagSinglePayload(v38->i64 + *(v82 + 36), 1, 1, v24);
  *v38 = v83;
  v45 = swift_allocObject();
  *(v45 + 16) = 0x4036000000000000;
  v38[1].i64[0] = sub_26A791D14;
  v38[1].i64[1] = v45;
  v38[2].i64[0] = v43;
  v38[2].i64[1] = 0;
  v46 = (v36 + 4 * v35);
  v84 = v5;
  v47 = (v46 + *(v5 + 48));
  v48 = swift_initStackObject();
  *(v48 + 16) = v92;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v49 = qword_281588988;
  *(v48 + 32) = qword_281588988;
  v50 = byte_281588990;
  *(v48 + 40) = byte_281588990;
  *(v48 + 48) = 1;
  *(v48 + 56) = 3;
  sub_26A4E324C(v49, v50);
  sub_26A621A9C(v48);
  *v46 = v51;
  __swift_storeEnumTagSinglePayload(v47->i64 + *(v44 + 36), 1, 1, v24);
  v90 = vdupq_n_s64(0x4052800000000000uLL);
  *v47 = v90;
  v52 = swift_allocObject();
  *(v52 + 16) = 0x4020000000000000;
  v47[1].i64[0] = sub_26A791D14;
  v47[1].i64[1] = v52;
  v47[2].i64[0] = 0;
  v47[2].i64[1] = 0;
  v53 = v84;
  v54 = *(v84 + 48);
  v55 = swift_initStackObject();
  *(v55 + 16) = v92;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v56 = v89;
  v57 = (v36 + 5 * v89);
  v58 = (v57 + v54);
  v59 = qword_281588978;
  *(v55 + 32) = qword_281588978;
  v60 = byte_281588980;
  *(v55 + 40) = byte_281588980;
  *(v55 + 48) = 1;
  *(v55 + 56) = 3;
  sub_26A4E324C(v59, v60);
  sub_26A621A9C(v55);
  *v57 = v61;
  __swift_storeEnumTagSinglePayload(v58->i64 + *(v44 + 36), 1, 1, v24);
  *v58 = v90;
  v62 = swift_allocObject();
  *(v62 + 16) = 0x4029000000000000;
  v58[1].i64[0] = sub_26A791D14;
  v58[1].i64[1] = v62;
  v63 = (v36 + 6 * v56);
  v58[2].i64[0] = 0;
  v58[2].i64[1] = 0;
  v64 = (v63 + *(v53 + 48));
  v65 = swift_initStackObject();
  *(v65 + 16) = v92;
  v66 = qword_281588968;
  *(v65 + 32) = qword_281588968;
  v67 = byte_281588970;
  *(v65 + 40) = byte_281588970;
  *(v65 + 48) = 1;
  *(v65 + 56) = 3;
  sub_26A4E324C(v66, v67);
  sub_26A621A9C(v65);
  *v63 = v68;
  __swift_storeEnumTagSinglePayload(v64->i64 + *(v44 + 36), 1, 1, v24);
  *v64 = vdupq_n_s64(0x4051800000000000uLL);
  v69 = swift_allocObject();
  *(v69 + 16) = 0x4026000000000000;
  v64[1].i64[0] = sub_26A791D14;
  v64[1].i64[1] = v69;
  v70 = (&v36[v56] - v56);
  v64[2].i64[0] = 0;
  v64[2].i64[1] = 0;
  v71 = (v70 + *(v53 + 48));
  v72 = swift_initStackObject();
  *(v72 + 16) = v92;
  v73 = qword_281588938;
  *(v72 + 32) = qword_281588938;
  v74 = byte_281588940;
  *(v72 + 40) = byte_281588940;
  *(v72 + 48) = 1;
  *(v72 + 56) = 3;
  sub_26A4E324C(v73, v74);
  sub_26A621A9C(v72);
  *v70 = v75;
  __swift_storeEnumTagSinglePayload(v71->i64 + *(v44 + 36), 1, 1, v24);
  *v71 = vdupq_n_s64(0x4050000000000000uLL);
  v76 = swift_allocObject();
  *(v76 + 16) = 0x4024000000000000;
  v71[1].i64[0] = sub_26A791D14;
  v71[1].i64[1] = v76;
  v71[2].i64[0] = 0;
  v71[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v77 = sub_26A8516A8();
  v78 = v88;
  __swift_storeEnumTagSinglePayload(v88->i64 + *(v44 + 36), 1, 1, v24);
  *v78 = v90;
  v79 = swift_allocObject();
  *(v79 + 16) = 0x4020000000000000;
  v78[1].i64[0] = sub_26A791D14;
  v78[1].i64[1] = v79;
  v78[2].i64[0] = 0;
  v78[2].i64[1] = 0;
  return sub_26A80DFE8(v77);
}

uint64_t sub_26A786FC0()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v68 = (v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v69.i64[0] = v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D24C8);
  v67[2] = __swift_project_value_buffer(v4, qword_2803D24C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A85C600;
  v67[1] = v8;
  v9 = (v8 + v7);
  v10 = (v8 + v7 + *(v5 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v70 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v12 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v13 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v12, v13);
  sub_26A621A9C(inited);
  *v9 = v14;
  v15 = *(v0 + 36);
  v16 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10->i64 + v15, 1, 1, v16);
  *v10 = vdupq_n_s64(0x4057800000000000uLL);
  v17 = swift_allocObject();
  *(v17 + 16) = 0x4020000000000000;
  v10[1].i64[0] = sub_26A791D14;
  v10[1].i64[1] = v17;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  v18 = (v9 + v6 + *(v5 + 48));
  v19 = swift_initStackObject();
  *(v19 + 16) = v70;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(v9 + v6) = v22;
  __swift_storeEnumTagSinglePayload(v18->i64 + *(v0 + 36), 1, 1, v16);
  *v18 = vdupq_n_s64(0x4052000000000000uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4020000000000000;
  v18[1].i64[0] = sub_26A791D14;
  v18[1].i64[1] = v23;
  v24 = (v9 + 2 * v6);
  v18[2].i64[0] = 0;
  v18[2].i64[1] = 0;
  v25 = (v24 + *(v5 + 48));
  v26 = swift_initStackObject();
  *(v26 + 16) = v70;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v27 = qword_281588998;
  *(v26 + 32) = qword_281588998;
  v28 = byte_2815889A0;
  *(v26 + 40) = byte_2815889A0;
  sub_26A4E324C(v27, v28);
  sub_26A621A9C(v26);
  *v24 = v29;
  v30 = sub_26A850338();
  v31 = v69.i64[0];
  __swift_storeEnumTagSinglePayload(v69.i64[0], 1, 1, v30);
  v32 = sub_26A8503E8();
  sub_26A4DBD10(v31, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v25->i64 + *(v0 + 36), 1, 1, v16);
  *v25 = vdupq_n_s64(0x4066400000000000uLL);
  v33 = swift_allocObject();
  *(v33 + 16) = 0x4020000000000000;
  v25[1].i64[0] = sub_26A791D14;
  v25[1].i64[1] = v33;
  v25[2].i64[0] = v32;
  v25[2].i64[1] = 0;
  v34 = (v9 + 3 * v6);
  v35 = (v34 + *(v5 + 48));
  v36 = swift_initStackObject();
  v70 = xmmword_26A8570F0;
  *(v36 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v37 = qword_281588988;
  *(v36 + 32) = qword_281588988;
  v38 = byte_281588990;
  *(v36 + 40) = byte_281588990;
  *(v36 + 48) = 1;
  *(v36 + 56) = 3;
  sub_26A4E324C(v37, v38);
  sub_26A621A9C(v36);
  *v34 = v39;
  __swift_storeEnumTagSinglePayload(v35->i64 + *(v0 + 36), 1, 1, v16);
  v69 = vdupq_n_s64(0x4058C00000000000uLL);
  *v35 = v69;
  v40 = swift_allocObject();
  *(v40 + 16) = 0x4020000000000000;
  v35[1].i64[0] = sub_26A791D14;
  v35[1].i64[1] = v40;
  v35[2].i64[0] = 0;
  v35[2].i64[1] = 0;
  v41 = *(v5 + 48);
  v42 = swift_initStackObject();
  *(v42 + 16) = v70;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v43 = (v9 + 4 * v6);
  v44 = (v43 + v41);
  v45 = qword_281588978;
  *(v42 + 32) = qword_281588978;
  v46 = byte_281588980;
  *(v42 + 40) = byte_281588980;
  *(v42 + 48) = 1;
  *(v42 + 56) = 3;
  sub_26A4E324C(v45, v46);
  sub_26A621A9C(v42);
  *v43 = v47;
  __swift_storeEnumTagSinglePayload(v44->i64 + *(v0 + 36), 1, 1, v16);
  *v44 = v69;
  v48 = swift_allocObject();
  *(v48 + 16) = 0x4030800000000000;
  v44[1].i64[0] = sub_26A791D14;
  v44[1].i64[1] = v48;
  v49 = (v9 + 5 * v6);
  v44[2].i64[0] = 0;
  v44[2].i64[1] = 0;
  v50 = (v49 + *(v5 + 48));
  v51 = swift_initStackObject();
  *(v51 + 16) = v70;
  v52 = qword_281588968;
  *(v51 + 32) = qword_281588968;
  v53 = byte_281588970;
  *(v51 + 40) = byte_281588970;
  *(v51 + 48) = 1;
  *(v51 + 56) = 3;
  sub_26A4E324C(v52, v53);
  sub_26A621A9C(v51);
  *v49 = v54;
  __swift_storeEnumTagSinglePayload(v50->i64 + *(v0 + 36), 1, 1, v16);
  *v50 = vdupq_n_s64(0x4057800000000000uLL);
  v55 = swift_allocObject();
  *(v55 + 16) = 0x402E000000000000;
  v50[1].i64[0] = sub_26A791D14;
  v50[1].i64[1] = v55;
  v56 = (v9 + 6 * v6);
  v50[2].i64[0] = 0;
  v50[2].i64[1] = 0;
  v57 = (v56 + *(v5 + 48));
  v58 = swift_initStackObject();
  *(v58 + 16) = v70;
  v59 = qword_281588938;
  *(v58 + 32) = qword_281588938;
  v60 = byte_281588940;
  *(v58 + 40) = byte_281588940;
  *(v58 + 48) = 1;
  *(v58 + 56) = 3;
  sub_26A4E324C(v59, v60);
  sub_26A621A9C(v58);
  *v56 = v61;
  __swift_storeEnumTagSinglePayload(v57->i64 + *(v0 + 36), 1, 1, v16);
  *v57 = vdupq_n_s64(0x4052000000000000uLL);
  v62 = swift_allocObject();
  *(v62 + 16) = 0x4027000000000000;
  v57[1].i64[0] = sub_26A791D14;
  v57[1].i64[1] = v62;
  v57[2].i64[0] = 0;
  v57[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v63 = sub_26A8516A8();
  v64 = v68;
  __swift_storeEnumTagSinglePayload(v68->i64 + *(v0 + 36), 1, 1, v16);
  *v64 = v69;
  v65 = swift_allocObject();
  *(v65 + 16) = 0x4020000000000000;
  v64[1].i64[0] = sub_26A791D14;
  v64[1].i64[1] = v65;
  v64[2].i64[0] = 0;
  v64[2].i64[1] = 0;
  return sub_26A80DFE8(v63);
}

uint64_t sub_26A78786C()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v68 = (v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v69.i64[0] = v67 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D24E0);
  v67[2] = __swift_project_value_buffer(v4, qword_2803D24E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A85C600;
  v67[1] = v8;
  v9 = (v8 + v7);
  v10 = (v8 + v7 + *(v5 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v70 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v12 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v13 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v12, v13);
  sub_26A621A9C(inited);
  *v9 = v14;
  v15 = *(v0 + 36);
  v16 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10->i64 + v15, 1, 1, v16);
  *v10 = vdupq_n_s64(0x4062400000000000uLL);
  v17 = swift_allocObject();
  *(v17 + 16) = 0x4020000000000000;
  v10[1].i64[0] = sub_26A791D14;
  v10[1].i64[1] = v17;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  v18 = (v9 + v6 + *(v5 + 48));
  v19 = swift_initStackObject();
  *(v19 + 16) = v70;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v20 = qword_281588938;
  *(v19 + 32) = qword_281588938;
  v21 = byte_281588940;
  *(v19 + 40) = byte_281588940;
  sub_26A4E324C(v20, v21);
  sub_26A621A9C(v19);
  *(v9 + v6) = v22;
  __swift_storeEnumTagSinglePayload(v18->i64 + *(v0 + 36), 1, 1, v16);
  *v18 = vdupq_n_s64(0x4052000000000000uLL);
  v23 = swift_allocObject();
  *(v23 + 16) = 0x4020000000000000;
  v18[1].i64[0] = sub_26A791D14;
  v18[1].i64[1] = v23;
  v24 = (v9 + 2 * v6);
  v18[2].i64[0] = 0;
  v18[2].i64[1] = 0;
  v25 = v24 + *(v5 + 48);
  v26 = swift_initStackObject();
  *(v26 + 16) = v70;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v27 = qword_281588998;
  *(v26 + 32) = qword_281588998;
  v28 = byte_2815889A0;
  *(v26 + 40) = byte_2815889A0;
  sub_26A4E324C(v27, v28);
  sub_26A621A9C(v26);
  *v24 = v29;
  v30 = sub_26A850338();
  v31 = v69.i64[0];
  __swift_storeEnumTagSinglePayload(v69.i64[0], 1, 1, v30);
  v32 = sub_26A8503E8();
  sub_26A4DBD10(v31, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(&v25[*(v0 + 36)], 1, 1, v16);
  *v25 = xmmword_26A8830F0;
  v33 = swift_allocObject();
  *(v33 + 16) = 0x4020000000000000;
  *(v25 + 2) = sub_26A791D00;
  *(v25 + 3) = v33;
  *(v25 + 4) = v32;
  *(v25 + 5) = 0;
  v34 = (v9 + 3 * v6);
  v35 = (v34 + *(v5 + 48));
  v36 = swift_initStackObject();
  v70 = xmmword_26A8570F0;
  *(v36 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v37 = qword_281588988;
  *(v36 + 32) = qword_281588988;
  v38 = byte_281588990;
  *(v36 + 40) = byte_281588990;
  *(v36 + 48) = 1;
  *(v36 + 56) = 3;
  sub_26A4E324C(v37, v38);
  sub_26A621A9C(v36);
  *v34 = v39;
  __swift_storeEnumTagSinglePayload(v35->i64 + *(v0 + 36), 1, 1, v16);
  v69 = vdupq_n_s64(0x4063600000000000uLL);
  *v35 = v69;
  v40 = swift_allocObject();
  *(v40 + 16) = 0x4020000000000000;
  v35[1].i64[0] = sub_26A791D14;
  v35[1].i64[1] = v40;
  v35[2].i64[0] = 0;
  v35[2].i64[1] = 0;
  v41 = *(v5 + 48);
  v42 = swift_initStackObject();
  *(v42 + 16) = v70;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v43 = (v9 + 4 * v6);
  v44 = (v43 + v41);
  v45 = qword_281588978;
  *(v42 + 32) = qword_281588978;
  v46 = byte_281588980;
  *(v42 + 40) = byte_281588980;
  *(v42 + 48) = 1;
  *(v42 + 56) = 3;
  sub_26A4E324C(v45, v46);
  sub_26A621A9C(v42);
  *v43 = v47;
  __swift_storeEnumTagSinglePayload(v44->i64 + *(v0 + 36), 1, 1, v16);
  *v44 = v69;
  v48 = swift_allocObject();
  *(v48 + 16) = 0x403A000000000000;
  v44[1].i64[0] = sub_26A791D14;
  v44[1].i64[1] = v48;
  v49 = (v9 + 5 * v6);
  v44[2].i64[0] = 0;
  v44[2].i64[1] = 0;
  v50 = (v49 + *(v5 + 48));
  v51 = swift_initStackObject();
  *(v51 + 16) = v70;
  v52 = qword_281588968;
  *(v51 + 32) = qword_281588968;
  v53 = byte_281588970;
  *(v51 + 40) = byte_281588970;
  *(v51 + 48) = 1;
  *(v51 + 56) = 3;
  sub_26A4E324C(v52, v53);
  sub_26A621A9C(v51);
  *v49 = v54;
  __swift_storeEnumTagSinglePayload(v50->i64 + *(v0 + 36), 1, 1, v16);
  *v50 = vdupq_n_s64(0x4062400000000000uLL);
  v55 = swift_allocObject();
  *(v55 + 16) = 0x4037000000000000;
  v50[1].i64[0] = sub_26A791D14;
  v50[1].i64[1] = v55;
  v56 = (v9 + 6 * v6);
  v50[2].i64[0] = 0;
  v50[2].i64[1] = 0;
  v57 = (v56 + *(v5 + 48));
  v58 = swift_initStackObject();
  *(v58 + 16) = v70;
  v59 = qword_281588938;
  *(v58 + 32) = qword_281588938;
  v60 = byte_281588940;
  *(v58 + 40) = byte_281588940;
  *(v58 + 48) = 1;
  *(v58 + 56) = 3;
  sub_26A4E324C(v59, v60);
  sub_26A621A9C(v58);
  *v56 = v61;
  __swift_storeEnumTagSinglePayload(v57->i64 + *(v0 + 36), 1, 1, v16);
  *v57 = vdupq_n_s64(0x4052000000000000uLL);
  v62 = swift_allocObject();
  *(v62 + 16) = 0x4027000000000000;
  v57[1].i64[0] = sub_26A791D14;
  v57[1].i64[1] = v62;
  v57[2].i64[0] = 0;
  v57[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v63 = sub_26A8516A8();
  v64 = v68;
  __swift_storeEnumTagSinglePayload(v68->i64 + *(v0 + 36), 1, 1, v16);
  *v64 = v69;
  v65 = swift_allocObject();
  *(v65 + 16) = 0x4020000000000000;
  v64[1].i64[0] = sub_26A791D14;
  v64[1].i64[1] = v65;
  v64[2].i64[0] = 0;
  v64[2].i64[1] = 0;
  return sub_26A80DFE8(v63);
}

uint64_t sub_26A788110()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v92 = (v87 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v96 = v87 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v4, qword_2803D24F8);
  v91 = __swift_project_value_buffer(v4, qword_2803D24F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26A8713E0;
  v90 = v8;
  v9 = (v8 + v7);
  v10 = (v8 + v7 + *(v5 + 48));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v97 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v13 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v14 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v13, v14);
  sub_26A621A9C(inited);
  *v9 = v15;
  v16 = *(v0 + 36);
  v17 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10->i64 + v16, 1, 1, v17);
  *v10 = vdupq_n_s64(0x4072C00000000000uLL);
  v18 = swift_allocObject();
  *(v18 + 16) = 0x402A000000000000;
  v10[1].i64[0] = sub_26A791D14;
  v10[1].i64[1] = v18;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  v19 = (v9 + v6 + *(v5 + 48));
  v20 = swift_initStackObject();
  *(v20 + 16) = v97;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v21 = qword_281588938;
  *(v20 + 32) = qword_281588938;
  v22 = byte_281588940;
  *(v20 + 40) = byte_281588940;
  sub_26A4E324C(v21, v22);
  sub_26A621A9C(v20);
  *(v9 + v6) = v23;
  __swift_storeEnumTagSinglePayload(v19->i64 + *(v0 + 36), 1, 1, v17);
  *v19 = vdupq_n_s64(0x4052000000000000uLL);
  v24 = swift_allocObject();
  *(v24 + 16) = 0x4020000000000000;
  v19[1].i64[0] = sub_26A791D14;
  v19[1].i64[1] = v24;
  v25 = v6;
  v26 = (v9 + 2 * v6);
  v19[2].i64[0] = 0;
  v19[2].i64[1] = 0;
  v27 = *(v5 + 48);
  v93 = v5;
  v28 = v26 + v27;
  v29 = swift_initStackObject();
  *(v29 + 16) = v97;
  v94 = v0;
  v87[1] = v11;
  v30 = v9;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v31 = qword_281588998;
  *(v29 + 32) = qword_281588998;
  v32 = byte_2815889A0;
  *(v29 + 40) = byte_2815889A0;
  sub_26A4E324C(v31, v32);
  sub_26A621A9C(v29);
  *v26 = v33;
  v34 = sub_26A850338();
  v35 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v34);
  v36 = sub_26A8503E8();
  sub_26A4DBD10(v35, &qword_2803AB208);
  v89 = v34;
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v34);
  v37 = sub_26A8503E8();
  sub_26A4DBD10(v35, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(&v28[*(v94 + 36)], 1, 1, v17);
  v88 = xmmword_26A883100;
  *v28 = xmmword_26A883100;
  v38 = swift_allocObject();
  *(v38 + 16) = 0x4028000000000000;
  *(v28 + 2) = sub_26A791D14;
  *(v28 + 3) = v38;
  *(v28 + 4) = v36;
  *(v28 + 5) = v37;
  v39 = v30;
  v40 = (v30 + 3 * v25);
  v41 = v93;
  v42 = (v40 + *(v93 + 48));
  v43 = swift_initStackObject();
  v97 = xmmword_26A8570F0;
  *(v43 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v44 = qword_281588988;
  *(v43 + 32) = qword_281588988;
  v45 = byte_281588990;
  *(v43 + 40) = byte_281588990;
  *(v43 + 48) = 1;
  *(v43 + 56) = 3;
  sub_26A4E324C(v44, v45);
  sub_26A621A9C(v43);
  *v40 = v46;
  v47 = v94;
  __swift_storeEnumTagSinglePayload(v42->i64 + *(v94 + 36), 1, 1, v17);
  v95 = vdupq_n_s64(0x4073E00000000000uLL);
  *v42 = v95;
  v48 = swift_allocObject();
  *(v48 + 16) = 0x402A000000000000;
  v42[1].i64[0] = sub_26A791D14;
  v42[1].i64[1] = v48;
  v42[2].i64[0] = 0;
  v42[2].i64[1] = 0;
  v49 = *(v41 + 48);
  v50 = swift_initStackObject();
  *(v50 + 16) = v97;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v51 = (v39 + 4 * v25);
  v52 = (v51 + v49);
  v53 = qword_281588978;
  *(v50 + 32) = qword_281588978;
  v54 = byte_281588980;
  *(v50 + 40) = byte_281588980;
  *(v50 + 48) = 1;
  *(v50 + 56) = 3;
  sub_26A4E324C(v53, v54);
  sub_26A621A9C(v50);
  *v51 = v55;
  __swift_storeEnumTagSinglePayload(v52->i64 + *(v47 + 36), 1, 1, v17);
  *v52 = v95;
  v56 = swift_allocObject();
  *(v56 + 16) = 0x404A800000000000;
  v52[1].i64[0] = sub_26A791D14;
  v52[1].i64[1] = v56;
  v57 = (v39 + 5 * v25);
  v52[2].i64[0] = 0;
  v52[2].i64[1] = 0;
  v87[0] = v17;
  v58 = v93;
  v59 = (v57 + *(v93 + 48));
  v60 = swift_initStackObject();
  *(v60 + 16) = v97;
  v61 = qword_281588968;
  *(v60 + 32) = qword_281588968;
  v62 = byte_281588970;
  *(v60 + 40) = byte_281588970;
  *(v60 + 48) = 1;
  *(v60 + 56) = 3;
  sub_26A4E324C(v61, v62);
  sub_26A621A9C(v60);
  *v57 = v63;
  __swift_storeEnumTagSinglePayload(v59->i64 + *(v47 + 36), 1, 1, v17);
  *v59 = vdupq_n_s64(0x4072C00000000000uLL);
  v64 = swift_allocObject();
  *(v64 + 16) = 0x4047800000000000;
  v59[1].i64[0] = sub_26A791D14;
  v59[1].i64[1] = v64;
  v65 = v39;
  v66 = (v39 + 6 * v25);
  v59[2].i64[0] = 0;
  v59[2].i64[1] = 0;
  v67 = v66 + *(v58 + 48);
  v68 = swift_initStackObject();
  *(v68 + 16) = v97;
  v69 = qword_281588998;
  *(v68 + 32) = qword_281588998;
  v70 = byte_2815889A0;
  *(v68 + 40) = byte_2815889A0;
  *(v68 + 48) = 1;
  *(v68 + 56) = 3;
  sub_26A4E324C(v69, v70);
  sub_26A621A9C(v68);
  *v66 = v71;
  v72 = v96;
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v89);
  v73 = sub_26A8503E8();
  sub_26A4DBD10(v72, &qword_2803AB208);
  v74 = v87[0];
  __swift_storeEnumTagSinglePayload(&v67[*(v47 + 36)], 1, 1, v87[0]);
  *v67 = v88;
  v75 = swift_allocObject();
  *(v75 + 16) = 0x403E000000000000;
  *(v67 + 2) = sub_26A791D14;
  *(v67 + 3) = v75;
  *(v67 + 4) = v73;
  *(v67 + 5) = 0;
  v76 = (&v65[v25] - v25);
  v77 = (v76 + *(v58 + 48));
  v78 = swift_initStackObject();
  *(v78 + 16) = v97;
  v79 = qword_281588938;
  *(v78 + 32) = qword_281588938;
  v80 = byte_281588940;
  *(v78 + 40) = byte_281588940;
  *(v78 + 48) = 1;
  *(v78 + 56) = 3;
  sub_26A4E324C(v79, v80);
  sub_26A621A9C(v78);
  *v76 = v81;
  __swift_storeEnumTagSinglePayload(v77->i64 + *(v47 + 36), 1, 1, v74);
  *v77 = vdupq_n_s64(0x4052000000000000uLL);
  v82 = swift_allocObject();
  *(v82 + 16) = 0x4027000000000000;
  v77[1].i64[0] = sub_26A791D14;
  v77[1].i64[1] = v82;
  v77[2].i64[0] = 0;
  v77[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v83 = sub_26A8516A8();
  v84 = v92;
  __swift_storeEnumTagSinglePayload(v92->i64 + *(v47 + 36), 1, 1, v74);
  *v84 = v95;
  v85 = swift_allocObject();
  *(v85 + 16) = 0x402A000000000000;
  v84[1].i64[0] = sub_26A791D14;
  v84[1].i64[1] = v85;
  v84[2].i64[0] = 0;
  v84[2].i64[1] = 0;
  return sub_26A80DFE8(v83);
}

uint64_t sub_26A788B58()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v55 = (v51 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D2510);
  v54 = __swift_project_value_buffer(v2, qword_2803D2510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v53 = v6;
  v7 = (v6 + v5);
  v8 = (v7 + *(v3 + 48));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v57 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v11 = qword_281588938;
  *(inited + 32) = qword_281588938;
  v12 = byte_281588940;
  *(inited + 40) = byte_281588940;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(inited);
  *v7 = v13;
  v14 = *(v0 + 36);
  v15 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8->i64 + v14, 1, 1, v15);
  v56 = vdupq_n_s64(0x7FF0000000000000uLL);
  *v8 = v56;
  v16 = swift_allocObject();
  *(v16 + 16) = 0x4020000000000000;
  v8[1].i64[0] = sub_26A791D14;
  v8[1].i64[1] = v16;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 0;
  v17 = (v7 + v4 + *(v3 + 48));
  v18 = swift_initStackObject();
  *(v18 + 16) = v57;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v19 = qword_281588998;
  *(v18 + 32) = qword_281588998;
  v20 = byte_2815889A0;
  *(v18 + 40) = byte_2815889A0;
  sub_26A4E324C(v19, v20);
  sub_26A621A9C(v18);
  *(v7 + v4) = v21;
  __swift_storeEnumTagSinglePayload(v17->i64 + *(v0 + 36), 1, 1, v15);
  *v17 = v56;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x4020000000000000;
  v17[1].i64[0] = sub_26A791D14;
  v17[1].i64[1] = v22;
  v52 = v4;
  v23 = (v7 + 2 * v4);
  v17[2].i64[0] = 0;
  v17[2].i64[1] = 0;
  v24 = (v23 + *(v3 + 48));
  v25 = swift_initStackObject();
  v56 = xmmword_26A8570F0;
  *(v25 + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v26 = qword_281588978;
  *(v25 + 32) = qword_281588978;
  v27 = byte_281588980;
  *(v25 + 40) = byte_281588980;
  *(v25 + 48) = 1;
  *(v25 + 56) = 3;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *v23 = v28;
  __swift_storeEnumTagSinglePayload(v24->i64 + *(v0 + 36), 1, 1, v15);
  v57 = vdupq_n_s64(0x7FF0000000000000uLL);
  *v24 = v57;
  v29 = swift_allocObject();
  *(v29 + 16) = 0x402E000000000000;
  v24[1].i64[0] = sub_26A791D14;
  v24[1].i64[1] = v29;
  v24[2].i64[0] = 0;
  v24[2].i64[1] = 0;
  v30 = *(v3 + 48);
  v31 = swift_initStackObject();
  *(v31 + 16) = v56;
  v51[1] = v9;
  v32 = v15;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v33 = v52;
  v34 = (v7 + 3 * v52);
  v35 = (v34 + v30);
  v36 = qword_281588968;
  *(v31 + 32) = qword_281588968;
  v37 = byte_281588970;
  *(v31 + 40) = byte_281588970;
  *(v31 + 48) = 1;
  *(v31 + 56) = 3;
  sub_26A4E324C(v36, v37);
  sub_26A621A9C(v31);
  *v34 = v38;
  __swift_storeEnumTagSinglePayload(v34 + v30 + *(v0 + 36), 1, 1, v32);
  *v35 = v57;
  v39 = swift_allocObject();
  *(v39 + 16) = 0x402A000000000000;
  v35[1].i64[0] = sub_26A791D14;
  v35[1].i64[1] = v39;
  v40 = (v7 + 4 * v33);
  v35[2].i64[0] = 0;
  v35[2].i64[1] = 0;
  v41 = (v40 + *(v3 + 48));
  v42 = swift_initStackObject();
  *(v42 + 16) = v56;
  v43 = qword_281588938;
  *(v42 + 32) = qword_281588938;
  v44 = byte_281588940;
  *(v42 + 40) = byte_281588940;
  *(v42 + 48) = 1;
  *(v42 + 56) = 3;
  sub_26A4E324C(v43, v44);
  sub_26A621A9C(v42);
  *v40 = v45;
  __swift_storeEnumTagSinglePayload(v41->i64 + *(v0 + 36), 1, 1, v32);
  *v41 = v57;
  v46 = swift_allocObject();
  *(v46 + 16) = 0x4020000000000000;
  v41[1].i64[0] = sub_26A791D14;
  v41[1].i64[1] = v46;
  v41[2].i64[0] = 0;
  v41[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v47 = sub_26A8516A8();
  v48 = v55;
  __swift_storeEnumTagSinglePayload(v55->i64 + *(v0 + 36), 1, 1, v32);
  *v48 = v57;
  v49 = swift_allocObject();
  *(v49 + 16) = 0x402A000000000000;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v49;
  v48[2].i64[0] = 0;
  v48[2].i64[1] = 0;
  return sub_26A80DFE8(v47);
}

uint64_t sub_26A7891C0()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v2 = (&v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v3, qword_2803D2528);
  __swift_project_value_buffer(v3, qword_2803D2528);
  v4 = *(v0 + 36);
  v5 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v2->i64 + v4, 1, 1, v5);
  *v2 = vdupq_n_s64(0x7FF0000000000000uLL);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v2[1].i64[0] = sub_26A791D14;
  v2[1].i64[1] = v6;
  v2[2].i64[0] = 0;
  v2[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v7 = sub_26A8516A8();
  return sub_26A80DFE8(v7);
}

uint64_t sub_26A789308()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v56 = v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D2540);
  v55[2] = __swift_project_value_buffer(v2, qword_2803D2540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v55[1] = v6;
  v7 = (v6 + v5);
  v8 = v6 + v5 + *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v58 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v11 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  __asm { FMOV            V0.2D, #18.0 }

  *v8 = _Q0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x400FD89D89D89D8ALL;
  *(v8 + 16) = sub_26A791D14;
  *(v8 + 24) = v20;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v21 = v7 + v4 + *(v3 + 48);
  v22 = swift_initStackObject();
  *(v22 + 16) = v58;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v23 = qword_281588938;
  *(v22 + 32) = qword_281588938;
  v24 = byte_281588940;
  *(v22 + 40) = byte_281588940;
  sub_26A4E324C(v23, v24);
  sub_26A621A9C(v22);
  *(v7 + v4) = v25;
  __swift_storeEnumTagSinglePayload(&v21[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #20.0 }

  v57 = _Q0;
  *v21 = _Q0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4008000000000000;
  *(v21 + 2) = sub_26A791D14;
  *(v21 + 3) = v27;
  v28 = (v7 + 2 * v4);
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v29 = v28 + *(v3 + 48);
  v30 = swift_initStackObject();
  *(v30 + 16) = v58;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v31 = qword_281588998;
  *(v30 + 32) = qword_281588998;
  v32 = byte_2815889A0;
  *(v30 + 40) = byte_2815889A0;
  sub_26A4E324C(v31, v32);
  sub_26A621A9C(v30);
  *v28 = v33;
  __swift_storeEnumTagSinglePayload(&v29[*(v0 + 36)], 1, 1, v14);
  *v29 = xmmword_26A883110;
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4020000000000000;
  *(v29 + 2) = sub_26A791D14;
  *(v29 + 3) = v34;
  v35 = (v7 + 3 * v4);
  *(v29 + 4) = 0;
  *(v29 + 5) = 0;
  v36 = v35 + *(v3 + 48);
  v37 = swift_initStackObject();
  *(v37 + 16) = v58;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v38 = qword_281588988;
  *(v37 + 32) = qword_281588988;
  v39 = byte_281588990;
  *(v37 + 40) = byte_281588990;
  sub_26A4E324C(v38, v39);
  sub_26A621A9C(v37);
  *v35 = v40;
  __swift_storeEnumTagSinglePayload(&v36[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #10.0 }

  *v36 = _Q0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0x4001555555555556;
  *(v36 + 2) = sub_26A791D14;
  *(v36 + 3) = v42;
  *(v36 + 4) = 0;
  *(v36 + 5) = 0;
  v43 = *(v3 + 48);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_26A857110;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v45 = (v7 + 4 * v4);
  v46 = v45 + v43;
  v47 = qword_281588978;
  *(v44 + 32) = qword_281588978;
  v48 = byte_281588980;
  *(v44 + 40) = byte_281588980;
  *(v44 + 48) = 0;
  *(v44 + 56) = 1;
  *(v44 + 64) = 1;
  *(v44 + 72) = 5;
  sub_26A4E324C(v47, v48);
  sub_26A621A9C(v44);
  *v45 = v49;
  __swift_storeEnumTagSinglePayload(&v46[*(v0 + 36)], 1, 1, v14);
  *v46 = v57;
  v50 = swift_allocObject();
  *(v50 + 16) = 0x4014CCCCCCCCCCCDLL;
  *(v46 + 2) = sub_26A791D14;
  *(v46 + 3) = v50;
  *(v46 + 4) = 0;
  *(v46 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v51 = sub_26A8516A8();
  v52 = v56;
  __swift_storeEnumTagSinglePayload(&v56[*(v0 + 36)], 1, 1, v14);
  *v52 = v57;
  v53 = swift_allocObject();
  *(v53 + 16) = 0x4011555555555556;
  *(v52 + 2) = sub_26A791D14;
  *(v52 + 3) = v53;
  *(v52 + 4) = 0;
  *(v52 + 5) = 0;
  return sub_26A80DFE8(v51);
}

uint64_t sub_26A78999C()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v55 = v54 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2815887B0);
  v54[2] = __swift_project_value_buffer(v2, qword_2815887B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v54[1] = v6;
  v7 = (v6 + v5);
  v8 = v6 + v5 + *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v56 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v11 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  __asm { FMOV            V0.2D, #18.0 }

  *v8 = _Q0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x400FD89D89D89D8ALL;
  *(v8 + 16) = sub_26A791D14;
  *(v8 + 24) = v20;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v21 = v7 + v4 + *(v3 + 48);
  v22 = swift_initStackObject();
  *(v22 + 16) = v56;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v23 = qword_281588938;
  *(v22 + 32) = qword_281588938;
  v24 = byte_281588940;
  *(v22 + 40) = byte_281588940;
  sub_26A4E324C(v23, v24);
  sub_26A621A9C(v22);
  *(v7 + v4) = v25;
  __swift_storeEnumTagSinglePayload(&v21[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #20.0 }

  v57 = _Q0;
  *v21 = _Q0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4008000000000000;
  *(v21 + 2) = sub_26A791D14;
  *(v21 + 3) = v27;
  v28 = (v7 + 2 * v4);
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v29 = v28 + *(v3 + 48);
  v30 = swift_initStackObject();
  *(v30 + 16) = v56;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v31 = qword_281588998;
  *(v30 + 32) = qword_281588998;
  v32 = byte_2815889A0;
  *(v30 + 40) = byte_2815889A0;
  sub_26A4E324C(v31, v32);
  sub_26A621A9C(v30);
  *v28 = v33;
  __swift_storeEnumTagSinglePayload(&v29[*(v0 + 36)], 1, 1, v14);
  *v29 = xmmword_26A883110;
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4020000000000000;
  *(v29 + 2) = sub_26A791D14;
  *(v29 + 3) = v34;
  v35 = (v7 + 3 * v4);
  *(v29 + 4) = 0;
  *(v29 + 5) = 0;
  v36 = v35 + *(v3 + 48);
  v37 = swift_initStackObject();
  *(v37 + 16) = v56;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v38 = qword_281588988;
  *(v37 + 32) = qword_281588988;
  v39 = byte_281588990;
  *(v37 + 40) = byte_281588990;
  sub_26A4E324C(v38, v39);
  sub_26A621A9C(v37);
  *v35 = v40;
  __swift_storeEnumTagSinglePayload(&v36[*(v0 + 36)], 1, 1, v14);
  *v36 = v57;
  v41 = swift_allocObject();
  *(v41 + 16) = 0x4011555555555556;
  *(v36 + 2) = sub_26A791D14;
  *(v36 + 3) = v41;
  *(v36 + 4) = 0;
  *(v36 + 5) = 0;
  v42 = *(v3 + 48);
  v43 = swift_initStackObject();
  *(v43 + 16) = xmmword_26A857110;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v44 = (v7 + 4 * v4);
  v45 = v44 + v42;
  v46 = qword_281588978;
  *(v43 + 32) = qword_281588978;
  v47 = byte_281588980;
  *(v43 + 40) = byte_281588980;
  *(v43 + 48) = 0;
  *(v43 + 56) = 1;
  *(v43 + 64) = 1;
  *(v43 + 72) = 5;
  sub_26A4E324C(v46, v47);
  sub_26A621A9C(v43);
  *v44 = v48;
  __swift_storeEnumTagSinglePayload(&v45[*(v0 + 36)], 1, 1, v14);
  *v45 = v57;
  v49 = swift_allocObject();
  *(v49 + 16) = 0x4014CCCCCCCCCCCDLL;
  *(v45 + 2) = sub_26A791D14;
  *(v45 + 3) = v49;
  *(v45 + 4) = 0;
  *(v45 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v50 = sub_26A8516A8();
  v51 = v55;
  __swift_storeEnumTagSinglePayload(&v55[*(v0 + 36)], 1, 1, v14);
  *v51 = v57;
  v52 = swift_allocObject();
  *(v52 + 16) = 0x4011555555555556;
  *(v51 + 2) = sub_26A791D14;
  *(v51 + 3) = v52;
  *(v51 + 4) = 0;
  *(v51 + 5) = 0;
  return sub_26A80DFE8(v50);
}

uint64_t sub_26A78A030()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v63 = v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D2558);
  v62[2] = __swift_project_value_buffer(v2, qword_2803D2558);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A85E050;
  v62[1] = v6;
  v7 = (v6 + v5);
  v8 = v6 + v5 + *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v64 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v11 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  __asm { FMOV            V0.2D, #24.0 }

  *v8 = _Q0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x40153B13B13B13B1;
  *(v8 + 16) = sub_26A791D14;
  *(v8 + 24) = v20;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v21 = (v7 + v4 + *(v3 + 48));
  v22 = swift_initStackObject();
  *(v22 + 16) = v64;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v23 = qword_281588938;
  *(v22 + 32) = qword_281588938;
  v24 = byte_281588940;
  *(v22 + 40) = byte_281588940;
  sub_26A4E324C(v23, v24);
  sub_26A621A9C(v22);
  *(v7 + v4) = v25;
  __swift_storeEnumTagSinglePayload(v21->i64 + *(v0 + 36), 1, 1, v14);
  *v21 = vdupq_n_s64(0x4040000000000000uLL);
  v26 = swift_allocObject();
  *(v26 + 16) = 0x4010000000000000;
  v21[1].i64[0] = sub_26A791D14;
  v21[1].i64[1] = v26;
  v27 = (v7 + 2 * v4);
  v21[2].i64[0] = 0;
  v21[2].i64[1] = 0;
  v28 = v27 + *(v3 + 48);
  v29 = swift_initStackObject();
  *(v29 + 16) = v64;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v30 = qword_281588998;
  *(v29 + 32) = qword_281588998;
  v31 = byte_2815889A0;
  *(v29 + 40) = byte_2815889A0;
  sub_26A4E324C(v30, v31);
  sub_26A621A9C(v29);
  *v27 = v32;
  __swift_storeEnumTagSinglePayload(&v28[*(v0 + 36)], 1, 1, v14);
  *v28 = xmmword_26A883120;
  v33 = swift_allocObject();
  *(v33 + 16) = 0x4020000000000000;
  *(v28 + 2) = sub_26A791D14;
  *(v28 + 3) = v33;
  v34 = (v7 + 3 * v4);
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  v35 = v34 + *(v3 + 48);
  v36 = swift_initStackObject();
  *(v36 + 16) = v64;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v37 = qword_281588988;
  *(v36 + 32) = qword_281588988;
  v38 = byte_281588990;
  *(v36 + 40) = byte_281588990;
  sub_26A4E324C(v37, v38);
  sub_26A621A9C(v36);
  *v34 = v39;
  __swift_storeEnumTagSinglePayload(&v35[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #26.0 }

  *v35 = _Q0;
  v41 = swift_allocObject();
  *(v41 + 16) = 0x4016888888888889;
  *(v35 + 2) = sub_26A791D14;
  *(v35 + 3) = v41;
  v42 = (v7 + 4 * v4);
  *(v35 + 4) = 0;
  *(v35 + 5) = 0;
  v43 = v42 + *(v3 + 48);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_26A8570F0;
  v45 = qword_281588998;
  *(v44 + 32) = qword_281588998;
  v46 = byte_2815889A0;
  *(v44 + 40) = byte_2815889A0;
  *(v44 + 48) = 1;
  *(v44 + 56) = 3;
  sub_26A4E324C(v45, v46);
  sub_26A621A9C(v44);
  *v42 = v47;
  __swift_storeEnumTagSinglePayload(&v43[*(v0 + 36)], 1, 1, v14);
  *v43 = xmmword_26A883130;
  v48 = swift_allocObject();
  *(v48 + 16) = 0x403E000000000000;
  *(v43 + 2) = sub_26A791D14;
  *(v43 + 3) = v48;
  *(v43 + 4) = 0;
  *(v43 + 5) = 0;
  v49 = *(v3 + 48);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_26A857110;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v51 = (v7 + 5 * v4);
  v52 = qword_281588978;
  *(v50 + 32) = qword_281588978;
  v53 = byte_281588980;
  v54 = v51 + v49;
  *(v50 + 40) = byte_281588980;
  *(v50 + 48) = 0;
  *(v50 + 56) = 1;
  *(v50 + 64) = 1;
  *(v50 + 72) = 5;
  sub_26A4E324C(v52, v53);
  sub_26A621A9C(v50);
  *v51 = v55;
  __swift_storeEnumTagSinglePayload(&v54[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #29.0 }

  v64 = _Q0;
  *v54 = _Q0;
  v57 = swift_allocObject();
  *(v57 + 16) = 0x401E28F5C28F5C29;
  *(v54 + 2) = sub_26A791D14;
  *(v54 + 3) = v57;
  *(v54 + 4) = 0;
  *(v54 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v58 = sub_26A8516A8();
  v59 = v63;
  __swift_storeEnumTagSinglePayload(&v63[*(v0 + 36)], 1, 1, v14);
  *v59 = v64;
  v60 = swift_allocObject();
  *(v60 + 16) = 0x4019222222222222;
  *(v59 + 2) = sub_26A791D14;
  *(v59 + 3) = v60;
  *(v59 + 4) = 0;
  *(v59 + 5) = 0;
  return sub_26A80DFE8(v58);
}

uint64_t sub_26A78A784()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v49 = (v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D2570);
  v48[2] = __swift_project_value_buffer(v2, qword_2803D2570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v48[1] = v6;
  v7 = (v6 + v5);
  v8 = (v6 + v5 + *(v3 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v50 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v11 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8->i64 + v13, 1, 1, v14);
  *v8 = vdupq_n_s64(0x4042800000000000uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = 0x40205D89D89D89D8;
  v8[1].i64[0] = sub_26A791D14;
  v8[1].i64[1] = v15;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 0;
  v16 = (v7 + v4 + *(v3 + 48));
  v17 = swift_initStackObject();
  *(v17 + 16) = v50;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v18 = qword_281588938;
  *(v17 + 32) = qword_281588938;
  v19 = byte_281588940;
  *(v17 + 40) = byte_281588940;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(v7 + v4) = v20;
  __swift_storeEnumTagSinglePayload(v16->i64 + *(v0 + 36), 1, 1, v14);
  *v16 = vdupq_n_s64(0x4040000000000000uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4010000000000000;
  v16[1].i64[0] = sub_26A791D14;
  v16[1].i64[1] = v21;
  v22 = (v7 + 2 * v4);
  v16[2].i64[0] = 0;
  v16[2].i64[1] = 0;
  v23 = v22 + *(v3 + 48);
  v24 = swift_initStackObject();
  *(v24 + 16) = v50;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v25 = qword_281588998;
  *(v24 + 32) = qword_281588998;
  v26 = byte_2815889A0;
  *(v24 + 40) = byte_2815889A0;
  sub_26A4E324C(v25, v26);
  sub_26A621A9C(v24);
  *v22 = v27;
  __swift_storeEnumTagSinglePayload(&v23[*(v0 + 36)], 1, 1, v14);
  *v23 = xmmword_26A883110;
  v28 = swift_allocObject();
  *(v28 + 16) = 0x4020000000000000;
  *(v23 + 2) = sub_26A791D14;
  *(v23 + 3) = v28;
  v29 = (v7 + 3 * v4);
  *(v23 + 4) = 0;
  *(v23 + 5) = 0;
  v30 = (v29 + *(v3 + 48));
  v31 = swift_initStackObject();
  *(v31 + 16) = v50;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v32 = qword_281588988;
  *(v31 + 32) = qword_281588988;
  v33 = byte_281588990;
  *(v31 + 40) = byte_281588990;
  sub_26A4E324C(v32, v33);
  sub_26A621A9C(v31);
  *v29 = v34;
  __swift_storeEnumTagSinglePayload(v30->i64 + *(v0 + 36), 1, 1, v14);
  v50 = vdupq_n_s64(0x4043000000000000uLL);
  *v30 = v50;
  v35 = swift_allocObject();
  *(v35 + 16) = 0x4020777777777778;
  v30[1].i64[0] = sub_26A791D14;
  v30[1].i64[1] = v35;
  v30[2].i64[0] = 0;
  v30[2].i64[1] = 0;
  v36 = *(v3 + 48);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_26A857110;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v38 = (v7 + 4 * v4);
  v39 = (v38 + v36);
  v40 = qword_281588978;
  *(v37 + 32) = qword_281588978;
  v41 = byte_281588980;
  *(v37 + 40) = byte_281588980;
  *(v37 + 48) = 0;
  *(v37 + 56) = 1;
  *(v37 + 64) = 1;
  *(v37 + 72) = 5;
  sub_26A4E324C(v40, v41);
  sub_26A621A9C(v37);
  *v38 = v42;
  __swift_storeEnumTagSinglePayload(v39->i64 + *(v0 + 36), 1, 1, v14);
  *v39 = v50;
  v43 = swift_allocObject();
  *(v43 + 16) = 0x4023C28F5C28F5C3;
  v39[1].i64[0] = sub_26A791D14;
  v39[1].i64[1] = v43;
  v39[2].i64[0] = 0;
  v39[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v44 = sub_26A8516A8();
  v45 = v49;
  __swift_storeEnumTagSinglePayload(v49->i64 + *(v0 + 36), 1, 1, v14);
  *v45 = v50;
  v46 = swift_allocObject();
  *(v46 + 16) = 0x4020777777777778;
  v45[1].i64[0] = sub_26A791D14;
  v45[1].i64[1] = v46;
  v45[2].i64[0] = 0;
  v45[2].i64[1] = 0;
  return sub_26A80DFE8(v44);
}

uint64_t sub_26A78AE2C()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v58 = (&v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D2588);
  v57 = __swift_project_value_buffer(v2, qword_2803D2588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A85E050;
  v56 = v6;
  v7 = (v6 + v5);
  v8 = (v6 + v5 + *(v3 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v59 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v10 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v11 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8->i64 + v13, 1, 1, v14);
  *v8 = vdupq_n_s64(0x4049000000000000uLL);
  v15 = swift_allocObject();
  *(v15 + 16) = 0x40261D89D89D89D8;
  v8[1].i64[0] = sub_26A791D14;
  v8[1].i64[1] = v15;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 0;
  v16 = (v7 + v4 + *(v3 + 48));
  v17 = swift_initStackObject();
  *(v17 + 16) = v59;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v18 = qword_281588938;
  *(v17 + 32) = qword_281588938;
  v19 = byte_281588940;
  *(v17 + 40) = byte_281588940;
  sub_26A4E324C(v18, v19);
  sub_26A621A9C(v17);
  *(v7 + v4) = v20;
  __swift_storeEnumTagSinglePayload(v16->i64 + *(v0 + 36), 1, 1, v14);
  *v16 = vdupq_n_s64(0x4046000000000000uLL);
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4036000000000000;
  v16[1].i64[0] = sub_26A791D14;
  v16[1].i64[1] = v21;
  v22 = (v7 + 2 * v4);
  v16[2].i64[0] = 0;
  v16[2].i64[1] = 0;
  v23 = v22 + *(v3 + 48);
  v24 = swift_initStackObject();
  *(v24 + 16) = v59;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v25 = qword_281588998;
  *(v24 + 32) = qword_281588998;
  v26 = byte_2815889A0;
  *(v24 + 40) = byte_2815889A0;
  sub_26A4E324C(v25, v26);
  sub_26A621A9C(v24);
  *v22 = v27;
  __swift_storeEnumTagSinglePayload(&v23[*(v0 + 36)], 1, 1, v14);
  *v23 = xmmword_26A883130;
  v28 = swift_allocObject();
  *(v28 + 16) = 0x403E000000000000;
  *(v23 + 2) = sub_26A791D14;
  *(v23 + 3) = v28;
  v29 = (v7 + 3 * v4);
  *(v23 + 4) = 0;
  *(v23 + 5) = 0;
  v30 = (v29 + *(v3 + 48));
  v31 = swift_initStackObject();
  *(v31 + 16) = v59;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v32 = qword_281588988;
  *(v31 + 32) = qword_281588988;
  v33 = byte_281588990;
  *(v31 + 40) = byte_281588990;
  sub_26A4E324C(v32, v33);
  sub_26A621A9C(v31);
  *v29 = v34;
  __swift_storeEnumTagSinglePayload(v30->i64 + *(v0 + 36), 1, 1, v14);
  v59 = vdupq_n_s64(0x404E000000000000uLL);
  *v30 = v59;
  v35 = swift_allocObject();
  *(v35 + 16) = 0x402A000000000000;
  v30[1].i64[0] = sub_26A791D14;
  v30[1].i64[1] = v35;
  v36 = (v7 + 4 * v4);
  v30[2].i64[0] = 0;
  v30[2].i64[1] = 0;
  v37 = (v36 + *(v3 + 48));
  v38 = swift_initStackObject();
  v55 = xmmword_26A857110;
  *(v38 + 16) = xmmword_26A857110;
  v39 = qword_281588968;
  *(v38 + 32) = qword_281588968;
  v40 = byte_281588970;
  *(v38 + 40) = byte_281588970;
  *(v38 + 48) = 0;
  *(v38 + 56) = 1;
  *(v38 + 64) = 1;
  *(v38 + 72) = 4;
  sub_26A4E324C(v39, v40);
  sub_26A621A9C(v38);
  *v36 = v41;
  __swift_storeEnumTagSinglePayload(v37->i64 + *(v0 + 36), 1, 1, v14);
  *v37 = vdupq_n_s64(0x4042000000000000uLL);
  v42 = swift_allocObject();
  *(v42 + 16) = 0x4016000000000000;
  v37[1].i64[0] = sub_26A791D14;
  v37[1].i64[1] = v42;
  v37[2].i64[0] = 0;
  v37[2].i64[1] = 0;
  v43 = *(v3 + 48);
  v44 = swift_initStackObject();
  *(v44 + 16) = v55;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v45 = (v7 + 5 * v4);
  v46 = qword_281588978;
  *(v44 + 32) = qword_281588978;
  v47 = byte_281588980;
  v48 = (v45 + v43);
  *(v44 + 40) = byte_281588980;
  *(v44 + 48) = 0;
  *(v44 + 56) = 1;
  *(v44 + 64) = 1;
  *(v44 + 72) = 5;
  sub_26A4E324C(v46, v47);
  sub_26A621A9C(v44);
  *v45 = v49;
  __swift_storeEnumTagSinglePayload(v48->i64 + *(v0 + 36), 1, 1, v14);
  *v48 = vdupq_n_s64(0x4050000000000000uLL);
  v50 = swift_allocObject();
  *(v50 + 16) = 0x4030A3D70A3D70A4;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v50;
  v48[2].i64[0] = 0;
  v48[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v51 = sub_26A8516A8();
  v52 = v58;
  __swift_storeEnumTagSinglePayload(v58->i64 + *(v0 + 36), 1, 1, v14);
  *v52 = v59;
  v53 = swift_allocObject();
  *(v53 + 16) = 0x402A000000000000;
  v52[1].i64[0] = sub_26A791D14;
  v52[1].i64[1] = v53;
  v52[2].i64[0] = 0;
  v52[2].i64[1] = 0;
  return sub_26A80DFE8(v51);
}

uint64_t sub_26A78B588()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v84 = &v78 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AB208);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v78 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v5, qword_2815887E0);
  v83 = __swift_project_value_buffer(v5, qword_2815887E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v7 = *(*(v6 - 8) + 72);
  v8 = (*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26A85E050;
  v82 = v9;
  v10 = (v9 + v8);
  v11 = v9 + v8 + *(v6 + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v85 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v14 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v15 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v14, v15);
  sub_26A621A9C(inited);
  *v10 = v16;
  v86 = v10;
  v17 = *(v0 + 36);
  v18 = sub_26A84B1D8();
  v19 = v11 + v17;
  v20 = v86;
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v18);
  __asm { FMOV            V0.2D, #12.0 }

  v80 = _Q0;
  *v11 = _Q0;
  v26 = swift_allocObject();
  *(v26 + 16) = 0x4000000000000000;
  *(v11 + 16) = sub_26A791D14;
  *(v11 + 24) = v26;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v27 = v20 + v7 + *(v6 + 48);
  v28 = v6;
  v29 = swift_initStackObject();
  *(v29 + 16) = v85;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v30 = qword_281588938;
  *(v29 + 32) = qword_281588938;
  v31 = byte_281588940;
  *(v29 + 40) = byte_281588940;
  sub_26A4E324C(v30, v31);
  sub_26A621A9C(v29);
  *(v20 + v7) = v32;
  __swift_storeEnumTagSinglePayload(v27 + *(v0 + 36), 1, 1, v18);
  __asm { FMOV            V0.2D, #18.0 }

  v81 = _Q0;
  *v27 = _Q0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4008000000000000;
  *(v27 + 16) = sub_26A791D14;
  *(v27 + 24) = v34;
  v35 = (v20 + 2 * v7);
  *(v27 + 32) = 0;
  *(v27 + 40) = 0;
  v36 = *(v28 + 48);
  v79 = v0;
  v37 = (v35 + v36);
  v38 = swift_initStackObject();
  *(v38 + 16) = v85;
  v78 = v12;
  v39 = v18;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v40 = qword_281588998;
  *(v38 + 32) = qword_281588998;
  v41 = byte_2815889A0;
  *(v38 + 40) = byte_2815889A0;
  sub_26A4E324C(v40, v41);
  sub_26A621A9C(v38);
  *v35 = v42;
  v43 = sub_26A850338();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v43);
  v44 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v43);
  v45 = sub_26A8503E8();
  sub_26A4DBD10(v4, &qword_2803AB208);
  v46 = v79;
  __swift_storeEnumTagSinglePayload(v37->i64 + *(v79 + 36), 1, 1, v39);
  *v37 = vdupq_n_s64(0x4048000000000000uLL);
  v47 = swift_allocObject();
  *(v47 + 16) = 0x4010000000000000;
  v37[1].i64[0] = sub_26A791D14;
  v37[1].i64[1] = v47;
  v37[2].i64[0] = v44;
  v37[2].i64[1] = v45;
  v48 = (v86 + 3 * v7);
  v49 = v48 + *(v28 + 48);
  v50 = swift_initStackObject();
  v85 = xmmword_26A8570F0;
  *(v50 + 16) = xmmword_26A8570F0;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v51 = qword_281588988;
  *(v50 + 32) = qword_281588988;
  v52 = byte_281588990;
  *(v50 + 40) = byte_281588990;
  *(v50 + 48) = 1;
  *(v50 + 56) = 3;
  sub_26A4E324C(v51, v52);
  sub_26A621A9C(v50);
  *v48 = v53;
  __swift_storeEnumTagSinglePayload(&v49[*(v46 + 36)], 1, 1, v39);
  *v49 = v80;
  v54 = swift_allocObject();
  *(v54 + 16) = 0x4000000000000000;
  *(v49 + 2) = sub_26A791D14;
  *(v49 + 3) = v54;
  *(v49 + 4) = 0;
  *(v49 + 5) = 0;
  v55 = *(v28 + 48);
  v56 = swift_initStackObject();
  *(v56 + 16) = v85;
  v57 = v39;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v58 = v86;
  v59 = (v86 + 4 * v7);
  v60 = v59 + v55;
  v61 = qword_281588978;
  *(v56 + 32) = qword_281588978;
  v62 = byte_281588980;
  *(v56 + 40) = byte_281588980;
  *(v56 + 48) = 1;
  *(v56 + 56) = 3;
  sub_26A4E324C(v61, v62);
  sub_26A621A9C(v56);
  *v59 = v63;
  __swift_storeEnumTagSinglePayload(&v60[*(v46 + 36)], 1, 1, v57);
  __asm { FMOV            V0.2D, #20.0 }

  *v60 = _Q0;
  v65 = swift_allocObject();
  *(v65 + 16) = 0x4011555555555556;
  *(v60 + 2) = sub_26A791D14;
  *(v60 + 3) = v65;
  v66 = (v58 + 5 * v7);
  *(v60 + 4) = 0;
  *(v60 + 5) = 0;
  v67 = v66 + *(v28 + 48);
  v68 = swift_initStackObject();
  *(v68 + 16) = v85;
  v69 = qword_281588968;
  *(v68 + 32) = qword_281588968;
  v70 = byte_281588970;
  *(v68 + 40) = byte_281588970;
  *(v68 + 48) = 1;
  *(v68 + 56) = 3;
  sub_26A4E324C(v69, v70);
  sub_26A621A9C(v68);
  *v66 = v71;
  __swift_storeEnumTagSinglePayload(&v67[*(v46 + 36)], 1, 1, v57);
  *v67 = v81;
  v72 = swift_allocObject();
  *(v72 + 16) = 0x400FD89D89D89D8ALL;
  *(v67 + 2) = sub_26A791D14;
  *(v67 + 3) = v72;
  *(v67 + 4) = 0;
  *(v67 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v73 = sub_26A8516A8();
  v74 = v84;
  __swift_storeEnumTagSinglePayload(&v84[*(v46 + 36)], 1, 1, v57);
  __asm { FMOV            V0.2D, #14.0 }

  *v74 = _Q0;
  v76 = swift_allocObject();
  *(v76 + 16) = 0x4000000000000000;
  *(v74 + 2) = sub_26A791D14;
  *(v74 + 3) = v76;
  *(v74 + 4) = 0;
  *(v74 + 5) = 0;
  return sub_26A80DFE8(v73);
}

uint64_t sub_26A78BDF0()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v58 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D25A0);
  v57 = __swift_project_value_buffer(v2, qword_2803D25A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v56 = v6;
  v7 = (v6 + v5);
  v8 = v6 + v5 + *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v55 = xmmword_26A8570F0;
  *(inited + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v10 = qword_281588978;
  *(inited + 32) = qword_281588978;
  v11 = byte_281588980;
  *(inited + 40) = byte_281588980;
  *(inited + 48) = 1;
  *(inited + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  __asm { FMOV            V0.2D, #16.0 }

  v60 = _Q0;
  *v8 = _Q0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4010000000000000;
  *(v8 + 16) = sub_26A791D14;
  *(v8 + 24) = v20;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v21 = v7 + v4 + *(v3 + 48);
  v22 = swift_initStackObject();
  v59 = xmmword_26A8570D0;
  *(v22 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v23 = qword_281588968;
  *(v22 + 32) = qword_281588968;
  v24 = byte_281588970;
  *(v22 + 40) = byte_281588970;
  sub_26A4E324C(v23, v24);
  sub_26A621A9C(v22);
  *(v7 + v4) = v25;
  __swift_storeEnumTagSinglePayload(&v21[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #13.0 }

  *v21 = _Q0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4008000000000000;
  *(v21 + 2) = sub_26A791D14;
  *(v21 + 3) = v27;
  v28 = (v7 + 2 * v4);
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v29 = v28 + *(v3 + 48);
  v30 = swift_initStackObject();
  *(v30 + 16) = v59;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v31 = qword_281588998;
  *(v30 + 32) = qword_281588998;
  v32 = byte_2815889A0;
  *(v30 + 40) = byte_2815889A0;
  sub_26A4E324C(v31, v32);
  sub_26A621A9C(v30);
  *v28 = v33;
  __swift_storeEnumTagSinglePayload(&v29[*(v0 + 36)], 1, 1, v14);
  *v29 = xmmword_26A883140;
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4010000000000000;
  *(v29 + 2) = sub_26A791D14;
  *(v29 + 3) = v34;
  v35 = (v7 + 3 * v4);
  *(v29 + 4) = 0;
  *(v29 + 5) = 0;
  v36 = v35 + *(v3 + 48);
  v37 = swift_initStackObject();
  *(v37 + 16) = v59;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v38 = qword_281588938;
  *(v37 + 32) = qword_281588938;
  v39 = byte_281588940;
  *(v37 + 40) = byte_281588940;
  sub_26A4E324C(v38, v39);
  sub_26A621A9C(v37);
  *v35 = v40;
  __swift_storeEnumTagSinglePayload(&v36[*(v0 + 36)], 1, 1, v14);
  *v36 = v60;
  v41 = swift_allocObject();
  *(v41 + 16) = 0x4020000000000000;
  *(v36 + 2) = sub_26A791D14;
  *(v36 + 3) = v41;
  *(v36 + 4) = 0;
  *(v36 + 5) = 0;
  v42 = *(v3 + 48);
  v43 = swift_initStackObject();
  *(v43 + 16) = v55;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v44 = (v7 + 4 * v4);
  v45 = v44 + v42;
  v46 = qword_281588988;
  *(v43 + 32) = qword_281588988;
  v47 = byte_281588990;
  *(v43 + 40) = byte_281588990;
  *(v43 + 48) = 1;
  *(v43 + 56) = 3;
  sub_26A4E324C(v46, v47);
  sub_26A621A9C(v43);
  *v44 = v48;
  __swift_storeEnumTagSinglePayload(&v45[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #12.0 }

  *v45 = _Q0;
  v50 = swift_allocObject();
  *(v50 + 16) = 0x4008000000000000;
  *(v45 + 2) = sub_26A791D14;
  *(v45 + 3) = v50;
  *(v45 + 4) = 0;
  *(v45 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v51 = sub_26A8516A8();
  v52 = v58;
  __swift_storeEnumTagSinglePayload(&v58[*(v0 + 36)], 1, 1, v14);
  *v52 = v60;
  v53 = swift_allocObject();
  *(v53 + 16) = 0x4010000000000000;
  *(v52 + 2) = sub_26A791D14;
  *(v52 + 3) = v53;
  *(v52 + 4) = 0;
  *(v52 + 5) = 0;
  return sub_26A80DFE8(v51);
}

uint64_t sub_26A78C46C()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v60 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D25B8);
  v59 = __swift_project_value_buffer(v2, qword_2803D25B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A86D390;
  v58 = v6;
  v7 = (v6 + v5);
  v8 = v6 + v5 + *(v3 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v56 = xmmword_26A8570F0;
  *(inited + 16) = xmmword_26A8570F0;
  if (qword_28157E760 != -1)
  {
    swift_once();
  }

  v10 = qword_281588978;
  *(inited + 32) = qword_281588978;
  v11 = byte_281588980;
  *(inited + 40) = byte_281588980;
  *(inited + 48) = 1;
  *(inited + 56) = 3;
  sub_26A4E324C(v10, v11);
  sub_26A621A9C(inited);
  *v7 = v12;
  v13 = *(v0 + 36);
  v14 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8 + v13, 1, 1, v14);
  __asm { FMOV            V0.2D, #20.0 }

  v57 = _Q0;
  *v8 = _Q0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4014000000000000;
  *(v8 + 16) = sub_26A791D14;
  *(v8 + 24) = v20;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  v21 = v7 + v4 + *(v3 + 48);
  v22 = swift_initStackObject();
  v61 = xmmword_26A8570D0;
  *(v22 + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v23 = qword_281588968;
  *(v22 + 32) = qword_281588968;
  v24 = byte_281588970;
  *(v22 + 40) = byte_281588970;
  sub_26A4E324C(v23, v24);
  sub_26A621A9C(v22);
  *(v7 + v4) = v25;
  __swift_storeEnumTagSinglePayload(&v21[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #16.0 }

  *v21 = _Q0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0x4010000000000000;
  *(v21 + 2) = sub_26A791D14;
  *(v21 + 3) = v27;
  v28 = (v7 + 2 * v4);
  *(v21 + 4) = 0;
  *(v21 + 5) = 0;
  v29 = v28 + *(v3 + 48);
  v30 = swift_initStackObject();
  *(v30 + 16) = v61;
  if (qword_28157E780 != -1)
  {
    swift_once();
  }

  v31 = qword_281588998;
  *(v30 + 32) = qword_281588998;
  v32 = byte_2815889A0;
  *(v30 + 40) = byte_2815889A0;
  sub_26A4E324C(v31, v32);
  sub_26A621A9C(v30);
  *v28 = v33;
  __swift_storeEnumTagSinglePayload(&v29[*(v0 + 36)], 1, 1, v14);
  *v29 = xmmword_26A883150;
  v34 = swift_allocObject();
  *(v34 + 16) = 0x401C000000000000;
  *(v29 + 2) = sub_26A791D14;
  *(v29 + 3) = v34;
  v35 = (v7 + 3 * v4);
  *(v29 + 4) = 0;
  *(v29 + 5) = 0;
  v36 = v35 + *(v3 + 48);
  v37 = swift_initStackObject();
  *(v37 + 16) = v61;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v38 = qword_281588938;
  *(v37 + 32) = qword_281588938;
  v39 = byte_281588940;
  *(v37 + 40) = byte_281588940;
  sub_26A4E324C(v38, v39);
  sub_26A621A9C(v37);
  *v35 = v40;
  __swift_storeEnumTagSinglePayload(&v36[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #24.0 }

  *v36 = _Q0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0x4028000000000000;
  *(v36 + 2) = sub_26A791D14;
  *(v36 + 3) = v42;
  *(v36 + 4) = 0;
  *(v36 + 5) = 0;
  v43 = *(v3 + 48);
  v44 = swift_initStackObject();
  *(v44 + 16) = v56;
  if (qword_28157E770 != -1)
  {
    swift_once();
  }

  v45 = (v7 + 4 * v4);
  v46 = v45 + v43;
  v47 = qword_281588988;
  *(v44 + 32) = qword_281588988;
  v48 = byte_281588990;
  *(v44 + 40) = byte_281588990;
  *(v44 + 48) = 1;
  *(v44 + 56) = 3;
  sub_26A4E324C(v47, v48);
  sub_26A621A9C(v44);
  *v45 = v49;
  __swift_storeEnumTagSinglePayload(&v46[*(v0 + 36)], 1, 1, v14);
  __asm { FMOV            V0.2D, #22.0 }

  *v46 = _Q0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0x4014000000000000;
  *(v46 + 2) = sub_26A791D14;
  *(v46 + 3) = v51;
  *(v46 + 4) = 0;
  *(v46 + 5) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v52 = sub_26A8516A8();
  v53 = v60;
  __swift_storeEnumTagSinglePayload(&v60[*(v0 + 36)], 1, 1, v14);
  *v53 = v57;
  v54 = swift_allocObject();
  *(v54 + 16) = 0x4014000000000000;
  *(v53 + 2) = sub_26A791D14;
  *(v53 + 3) = v54;
  *(v53 + 4) = 0;
  *(v53 + 5) = 0;
  return sub_26A80DFE8(v52);
}

uint64_t sub_26A78CAE4()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v2 = (&v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v3, qword_2803D25D0);
  __swift_project_value_buffer(v3, qword_2803D25D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  v20 = xmmword_26A8570D0;
  *(v6 + 16) = xmmword_26A8570D0;
  v7 = v4[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  *(inited + 16) = v20;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v9 = (v6 + v5);
  v10 = (v9 + v7);
  v11 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v12 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(inited);
  *v9 = v13;
  v14 = *(v0 + 36);
  v15 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v10->i64 + v14, 1, 1, v15);
  *v10 = vdupq_n_s64(0x4051800000000000uLL);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v10[1].i64[0] = sub_26A791D14;
  v10[1].i64[1] = v16;
  v10[2].i64[0] = 0;
  v10[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v17 = sub_26A8516A8();
  __swift_storeEnumTagSinglePayload(v2->i64 + *(v0 + 36), 1, 1, v15);
  *v2 = vdupq_n_s64(0x4054000000000000uLL);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  v2[1].i64[0] = sub_26A791D14;
  v2[1].i64[1] = v18;
  v2[2].i64[0] = 0;
  v2[2].i64[1] = 0;
  return sub_26A80DFE8(v17);
}

uint64_t sub_26A78CDCC()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v63 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D25E8);
  v62 = __swift_project_value_buffer(v2, qword_2803D25E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A85E050;
  v61 = v6;
  v7 = (v6 + v5);
  v8 = (v6 + v5 + *(v3 + 48));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v64 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v11 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v12 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(inited);
  *v7 = v13;
  v14 = *(v0 + 36);
  v15 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8->i64 + v14, 1, 1, v15);
  *v8 = vdupq_n_s64(0x4059000000000000uLL);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v8[1].i64[0] = sub_26A791D14;
  v8[1].i64[1] = v16;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 0;
  v17 = (v7 + v4 + *(v3 + 48));
  v18 = swift_initStackObject();
  *(v18 + 16) = v64;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v19 = qword_281588938;
  *(v18 + 32) = qword_281588938;
  v20 = byte_281588940;
  *(v18 + 40) = byte_281588940;
  sub_26A4E324C(v19, v20);
  sub_26A621A9C(v18);
  *(v7 + v4) = v21;
  __swift_storeEnumTagSinglePayload(v17->i64 + *(v0 + 36), 1, 1, v15);
  *v17 = vdupq_n_s64(0x4054000000000000uLL);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v17[1].i64[0] = sub_26A791D14;
  v17[1].i64[1] = v22;
  v23 = (v7 + 2 * v4);
  v17[2].i64[0] = 0;
  v17[2].i64[1] = 0;
  v24 = (v23 + *(v3 + 48));
  v25 = swift_initStackObject();
  *(v25 + 16) = v64;
  if (qword_28157E750 != -1)
  {
    swift_once();
  }

  v26 = qword_281588958;
  *(v25 + 32) = qword_281588958;
  v27 = byte_281588960;
  *(v25 + 40) = byte_281588960;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *v23 = v28;
  __swift_storeEnumTagSinglePayload(v24->i64 + *(v0 + 36), 1, 1, v15);
  *v24 = vdupq_n_s64(0x4067C00000000000uLL);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v24[1].i64[0] = sub_26A791D14;
  v24[1].i64[1] = v29;
  v60 = v4;
  v30 = (v7 + 3 * v4);
  v24[2].i64[0] = 0;
  v24[2].i64[1] = 0;
  v31 = (v30 + *(v3 + 48));
  v32 = swift_initStackObject();
  *(v32 + 16) = v64;
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v33 = qword_2815889A8;
  *(v32 + 32) = qword_2815889A8;
  v34 = byte_2815889B0;
  *(v32 + 40) = byte_2815889B0;
  sub_26A4E324C(v33, v34);
  sub_26A621A9C(v32);
  *v30 = v35;
  __swift_storeEnumTagSinglePayload(v31->i64 + *(v0 + 36), 1, 1, v15);
  *v31 = vdupq_n_s64(0x4060E00000000000uLL);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v31[1].i64[0] = sub_26A791D14;
  v31[1].i64[1] = v36;
  v31[2].i64[0] = 0;
  v31[2].i64[1] = 0;
  v37 = *(v3 + 48);
  v38 = swift_initStackObject();
  v64 = xmmword_26A8570F0;
  *(v38 + 16) = xmmword_26A8570F0;
  v59 = v9;
  v39 = v15;
  if (qword_28157E748 != -1)
  {
    swift_once();
  }

  v40 = v60;
  v41 = (v7 + 4 * v60);
  v42 = (v41 + v37);
  v43 = qword_281588948;
  *(v38 + 32) = qword_281588948;
  v44 = byte_281588950;
  *(v38 + 40) = byte_281588950;
  *(v38 + 48) = 1;
  *(v38 + 56) = 8;
  sub_26A4E324C(v43, v44);
  sub_26A621A9C(v38);
  *v41 = v45;
  __swift_storeEnumTagSinglePayload(v42->i64 + *(v0 + 36), 1, 1, v39);
  v58 = vdupq_n_s64(0x405F400000000000uLL);
  *v42 = v58;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v42[1].i64[0] = sub_26A791D14;
  v42[1].i64[1] = v46;
  v47 = (v7 + 5 * v40);
  v42[2].i64[0] = 0;
  v42[2].i64[1] = 0;
  v48 = (v47 + *(v3 + 48));
  v49 = swift_initStackObject();
  *(v49 + 16) = v64;
  v50 = qword_281588948;
  *(v49 + 32) = qword_281588948;
  v51 = byte_281588950;
  *(v49 + 40) = byte_281588950;
  *(v49 + 48) = 0;
  *(v49 + 56) = 7;
  sub_26A4E324C(v50, v51);
  sub_26A621A9C(v49);
  *v47 = v52;
  __swift_storeEnumTagSinglePayload(v48->i64 + *(v0 + 36), 1, 1, v39);
  *v48 = v58;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v53;
  v48[2].i64[0] = 0;
  v48[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v54 = sub_26A8516A8();
  v55 = v63;
  __swift_storeEnumTagSinglePayload(v63->i64 + *(v0 + 36), 1, 1, v39);
  *v55 = vdupq_n_s64(0x405CC00000000000uLL);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  v55[1].i64[0] = sub_26A791D14;
  v55[1].i64[1] = v56;
  v55[2].i64[0] = 0;
  v55[2].i64[1] = 0;
  return sub_26A80DFE8(v54);
}

uint64_t sub_26A78D4F8()
{
  v0 = type metadata accessor for ImageStyleAppearance();
  MEMORY[0x28223BE20](v0);
  v63 = (&v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803ABFF0);
  __swift_allocate_value_buffer(v2, qword_2803D2600);
  v62 = __swift_project_value_buffer(v2, qword_2803D2600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B76F8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B7700);
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26A85E050;
  v61 = v6;
  v7 = (v6 + v5);
  v8 = (v6 + v5 + *(v3 + 48));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803AADE0);
  inited = swift_initStackObject();
  v64 = xmmword_26A8570D0;
  *(inited + 16) = xmmword_26A8570D0;
  if (qword_28157E758 != -1)
  {
    swift_once();
  }

  v11 = qword_281588968;
  *(inited + 32) = qword_281588968;
  v12 = byte_281588970;
  *(inited + 40) = byte_281588970;
  sub_26A4E324C(v11, v12);
  sub_26A621A9C(inited);
  *v7 = v13;
  v14 = *(v0 + 36);
  v15 = sub_26A84B1D8();
  __swift_storeEnumTagSinglePayload(v8->i64 + v14, 1, 1, v15);
  *v8 = vdupq_n_s64(0x4059000000000000uLL);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v8[1].i64[0] = sub_26A791D14;
  v8[1].i64[1] = v16;
  v8[2].i64[0] = 0;
  v8[2].i64[1] = 0;
  v17 = (v7 + v4 + *(v3 + 48));
  v18 = swift_initStackObject();
  *(v18 + 16) = v64;
  if (qword_28157E738 != -1)
  {
    swift_once();
  }

  v19 = qword_281588938;
  *(v18 + 32) = qword_281588938;
  v20 = byte_281588940;
  *(v18 + 40) = byte_281588940;
  sub_26A4E324C(v19, v20);
  sub_26A621A9C(v18);
  *(v7 + v4) = v21;
  __swift_storeEnumTagSinglePayload(v17->i64 + *(v0 + 36), 1, 1, v15);
  *v17 = vdupq_n_s64(0x4054000000000000uLL);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v17[1].i64[0] = sub_26A791D14;
  v17[1].i64[1] = v22;
  v23 = (v7 + 2 * v4);
  v17[2].i64[0] = 0;
  v17[2].i64[1] = 0;
  v24 = (v23 + *(v3 + 48));
  v25 = swift_initStackObject();
  *(v25 + 16) = v64;
  if (qword_28157E750 != -1)
  {
    swift_once();
  }

  v26 = qword_281588958;
  *(v25 + 32) = qword_281588958;
  v27 = byte_281588960;
  *(v25 + 40) = byte_281588960;
  sub_26A4E324C(v26, v27);
  sub_26A621A9C(v25);
  *v23 = v28;
  __swift_storeEnumTagSinglePayload(v24->i64 + *(v0 + 36), 1, 1, v15);
  *v24 = vdupq_n_s64(0x4077F00000000000uLL);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v24[1].i64[0] = sub_26A791D14;
  v24[1].i64[1] = v29;
  v60 = v4;
  v30 = (v7 + 3 * v4);
  v24[2].i64[0] = 0;
  v24[2].i64[1] = 0;
  v31 = (v30 + *(v3 + 48));
  v32 = swift_initStackObject();
  *(v32 + 16) = v64;
  if (qword_28157E788 != -1)
  {
    swift_once();
  }

  v33 = qword_2815889A8;
  *(v32 + 32) = qword_2815889A8;
  v34 = byte_2815889B0;
  *(v32 + 40) = byte_2815889B0;
  sub_26A4E324C(v33, v34);
  sub_26A621A9C(v32);
  *v30 = v35;
  __swift_storeEnumTagSinglePayload(v31->i64 + *(v0 + 36), 1, 1, v15);
  *v31 = vdupq_n_s64(0x4071100000000000uLL);
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  v31[1].i64[0] = sub_26A791D14;
  v31[1].i64[1] = v36;
  v31[2].i64[0] = 0;
  v31[2].i64[1] = 0;
  v37 = *(v3 + 48);
  v38 = swift_initStackObject();
  v64 = xmmword_26A8570F0;
  *(v38 + 16) = xmmword_26A8570F0;
  v59 = v9;
  v39 = v15;
  if (qword_28157E748 != -1)
  {
    swift_once();
  }

  v40 = v60;
  v41 = (v7 + 4 * v60);
  v42 = (v41 + v37);
  v43 = qword_281588948;
  *(v38 + 32) = qword_281588948;
  v44 = byte_281588950;
  *(v38 + 40) = byte_281588950;
  *(v38 + 48) = 1;
  *(v38 + 56) = 8;
  sub_26A4E324C(v43, v44);
  sub_26A621A9C(v38);
  *v41 = v45;
  __swift_storeEnumTagSinglePayload(v42->i64 + *(v0 + 36), 1, 1, v39);
  v58 = vdupq_n_s64(0x406FA00000000000uLL);
  *v42 = v58;
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  v42[1].i64[0] = sub_26A791D14;
  v42[1].i64[1] = v46;
  v47 = (v7 + 5 * v40);
  v42[2].i64[0] = 0;
  v42[2].i64[1] = 0;
  v48 = (v47 + *(v3 + 48));
  v49 = swift_initStackObject();
  *(v49 + 16) = v64;
  v50 = qword_281588948;
  *(v49 + 32) = qword_281588948;
  v51 = byte_281588950;
  *(v49 + 40) = byte_281588950;
  *(v49 + 48) = 0;
  *(v49 + 56) = 7;
  sub_26A4E324C(v50, v51);
  sub_26A621A9C(v49);
  *v47 = v52;
  __swift_storeEnumTagSinglePayload(v48->i64 + *(v0 + 36), 1, 1, v39);
  *v48 = v58;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v48[1].i64[0] = sub_26A791D14;
  v48[1].i64[1] = v53;
  v48[2].i64[0] = 0;
  v48[2].i64[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803B1D80);
  sub_26A4E325C();
  v54 = sub_26A8516A8();
  v55 = v63;
  __swift_storeEnumTagSinglePayload(v63->i64 + *(v0 + 36), 1, 1, v39);
  *v55 = vdupq_n_s64(0x406D200000000000uLL);
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  v55[1].i64[0] = sub_26A791D14;
  v55[1].i64[1] = v56;
  v55[2].i64[0] = 0;
  v55[2].i64[1] = 0;
  return sub_26A80DFE8(v54);
}