void sub_26112599C(uint64_t a1, id a2, void (*a3)(void, id), uint64_t a4, id a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    v10 = a2;
    a3(0, a2);
  }

  else
  {
    [a5 setAnisetteDataProvider_];
    v14 = *(a6 + 16);
    v16[4] = a3;
    v16[5] = a4;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_2611252A4;
    v16[3] = &block_descriptor_33;
    v15 = _Block_copy(v16);

    [v14 authenticateWithAccount:a7 with:a5 completion:v15];
    _Block_release(v15);
  }
}

uint64_t sub_261125AD4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_261125C10(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26115ACD4();
  [a1 setRemoteObjectInterface_];

  [a1 activate];
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_261130250;
  aBlock[3] = &block_descriptor_36;
  v7 = _Block_copy(aBlock);

  v8 = [a1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_26115B8F4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE812D8, &qword_26115EB28);
  swift_dynamicCast();
  return v10;
}

uint64_t sub_261125D54(void *a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = objc_opt_self();
  _Block_copy(a4);
  v10 = [v9 currentConnection];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_261125FE4;
    *(v12 + 24) = v8;

    v13 = sub_261125C10(v11, sub_261126078, v12);

    v14 = swift_allocObject();
    v14[2] = sub_261125FE4;
    v14[3] = v8;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a1;
    v21[4] = sub_2611260F8;
    v21[5] = v14;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_261125AD4;
    v21[3] = &block_descriptor_2;
    v15 = _Block_copy(v21);

    v16 = a2;

    v17 = a1;

    [v13 fetchExtrasWithCompletion_];
    _Block_release(v15);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_261125FEC();
    v19 = swift_allocError();
    v20 = sub_26115A1D4();
    (a4)[2](a4, 0, v20);
  }
}

uint64_t sub_261125FAC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_261125FEC()
{
  result = qword_27FE812C8;
  if (!qword_27FE812C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812C8);
  }

  return result;
}

uint64_t sub_261126040()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261126078(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(0, a1);
}

uint64_t sub_2611260A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for PASUINonUIExtensionConfigurationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PASUINonUIExtensionConfigurationError(_WORD *result, int a2, int a3)
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

unint64_t sub_261126238()
{
  result = qword_27FE812E0;
  if (!qword_27FE812E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812E0);
  }

  return result;
}

uint64_t sub_2611262F8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81218, &qword_26115E608);
  if (swift_dynamicCast())
  {
    sub_261110928(v8, &v11);
    v3 = v13;
    v4 = v14;
    __swift_project_boxed_opaque_existential_1Tm(&v11, v13);
    *&v10 = (*(v4 + 8))(v3, v4);
    BYTE8(v10) = 0;
    sub_26115B104();
    v5 = *&v8[0];
    v6 = BYTE8(v8[0]);
    result = __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_26110CEE0(v8, &qword_27FE81220, &qword_26115E610);
    *&v8[0] = 0;
    BYTE8(v8[0]) = 1;
    result = sub_26115B104();
    v5 = v11;
    v6 = v12;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_261126494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81308, &qword_26115EDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81310, &unk_26115EDE8);
  sub_261126DBC();
  sub_261126B90();
  sub_261126E20();
  return sub_26115B3F4();
}

uint64_t View.targetDeviceSetupPresenter(with:presenterDelegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v15 - v9;
  sub_26112664C(a1, v15 - v9);
  swift_unknownObjectRetain();
  v11 = sub_2611269D4(v10);
  v13 = v12;
  swift_unknownObjectRelease();
  v15[0] = v11;
  v15[1] = v13;
  MEMORY[0x2666F9B40](v15, a3, &type metadata for PASTargetDeviceSetupPresenterModifier, a4);
}

uint64_t sub_26112664C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Binding<A>.present(step:)()
{
  v0 = sub_26115AF24();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  MEMORY[0x2666F9C60]();
  sub_261126B90();
  sub_26115AF14();
  swift_unknownObjectRelease();
  return sub_26115B594();
}

uint64_t sub_2611267A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 16) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  swift_unknownObjectRetain();
  MEMORY[0x2666F9C60](a3);
  sub_261126B90();
  sub_26115AF14();
  swift_unknownObjectRelease();
  return sub_26115B594();
}

uint64_t sub_26112686C()
{
  v2 = *v0;
  sub_26115BA94();
  sub_26115B654();
  return sub_26115BAB4();
}

uint64_t sub_2611268D0()
{
  v2 = *v0;
  v1 = v0[1];
  swift_getObjectType();
  v3 = *(v1 + 8);
  v4 = sub_26115B964();
  return MEMORY[0x2666FA180](v4);
}

uint64_t sub_261126918()
{
  v2 = *v0;
  sub_26115BA94();
  sub_26115B654();
  return sub_26115BAB4();
}

BOOL sub_261126978(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  swift_getObjectType();
  v6 = *(v3 + 8);
  v7 = sub_26115B964();
  swift_getObjectType();
  v8 = *(v5 + 8);
  return v7 == sub_26115B964();
}

id sub_2611269D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v13 = [objc_allocWithZone(type metadata accessor for PASUITargetViewPresenter()) init];
  sub_26115B514();
  v6 = v15;
  v7 = v16;
  swift_retain_n();
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81328, &qword_26115EDF8);
  sub_26115B524();
  v9 = v13;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  v13 = v8;
  v14 = v7;
  sub_26115B524();

  v10 = v12;
  sub_26112664C(a1, v5);
  sub_26111C924(v5, v10);

  sub_26110CEE0(a1, &qword_27FE81020, &qword_26115EC40);
  sub_26110CEE0(v5, &qword_27FE81020, &qword_26115EC40);
  return v8;
}

unint64_t sub_261126B90()
{
  result = qword_27FE812F0;
  if (!qword_27FE812F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812F0);
  }

  return result;
}

uint64_t sub_261126BE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_26115AF84();
  sub_261126C48();
  return swift_getWitnessTable();
}

unint64_t sub_261126C48()
{
  result = qword_27FE812F8;
  if (!qword_27FE812F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812F8);
  }

  return result;
}

uint64_t sub_261126CB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_261126CFC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_261126D68()
{
  result = qword_27FE81300;
  if (!qword_27FE81300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81300);
  }

  return result;
}

unint64_t sub_261126DBC()
{
  result = qword_27FE81318;
  if (!qword_27FE81318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81308, &qword_26115EDE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81318);
  }

  return result;
}

unint64_t sub_261126E20()
{
  result = qword_27FE81320;
  if (!qword_27FE81320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81310, &unk_26115EDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81320);
  }

  return result;
}

uint64_t sub_261126EA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81308, &qword_26115EDE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81310, &unk_26115EDE8);
  sub_261126DBC();
  sub_261126B90();
  sub_261126E20();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PASFlowStepProxiedTerms.buildView()()
{
  v1 = *v0;
  v2 = sub_26115A3D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81330, qword_26115EE00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v23 - v12;
  sub_2611277B8(&qword_27FE81338, MEMORY[0x277D43490]);

  v14 = sub_26115AF34();
  v16 = v15;
  sub_26115A814();
  v17 = objc_allocWithZone(type metadata accessor for PASUIProxiedTermsHandler());
  v18 = sub_26111EEF4(v5);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v24 = v14;
  v25 = v16;
  v26 = sub_26112725C;
  v27 = v19;
  v28 = 0;
  v20 = sub_261127264();
  sub_26115B414();

  (*(v7 + 16))(v11, v13, v6);
  v24 = &type metadata for PASUIProxiedTermsView;
  v25 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = sub_26115B574();
  (*(v7 + 8))(v13, v6);
  return v21;
}

uint64_t sub_261127224()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_261127264()
{
  result = qword_27FE81340;
  if (!qword_27FE81340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81340);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2611272D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_261127320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_261127390@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  v4 = *(&v13 + 1);
  v11 = v3;
  v12 = *(v1 + 32);
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 32);
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  v8 = *(sub_26115AF04() + 20);

  sub_26110CE78(&v13, v10, &qword_27FE81348, &qword_26115EF40);
  sub_26110CE78(&v11, v10, &qword_27FE81350, &qword_26115EF48);
  sub_26115B7B4();
  *v7 = &unk_26115EF30;
  v7[1] = v5;
  *a1 = sub_26110C934;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_26110C93C;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_26110C970;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2611274E8(uint64_t a1)
{
  v1[7] = a1;
  sub_26115B7A4();
  v1[8] = sub_26115B794();
  v3 = sub_26115B774();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x2822009F8](sub_261127580, v3, v2);
}

uint64_t sub_261127580()
{
  v1 = v0[7];
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = type metadata accessor for PASUIProxiedTermsHandler();
  sub_2611277B8(&qword_27FE81358, type metadata accessor for PASUIProxiedTermsHandler);
  v7 = sub_26115AE54();
  v0[5] = v6;
  v0[6] = sub_2611277B8(&qword_27FE81360, type metadata accessor for PASUIProxiedTermsHandler);
  v0[2] = v7;
  v8 = *(MEMORY[0x277D43488] + 4);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_26112335C;

  return MEMORY[0x2821A48E8](v0 + 2);
}

uint64_t sub_2611276CC()
{
  v1 = *(v0 + 24);

  sub_261127710(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_261127710(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x2821F96F8]();
  }

  else
  {
  }
}

uint64_t sub_261127720()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110CAC4;

  return sub_2611274E8(v0 + 16);
}

uint64_t sub_2611277B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PASFlowStepPersonalSignIn.buildView()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81368, &qword_26115EF50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v11 = [objc_allocWithZone(v10) init];
  v22 = v10;
  v23 = &off_287399F58;
  v21 = v11;
  sub_261127A2C();

  v19 = sub_26115AF34();
  v20 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v24 = sub_26115A2E4();
  v16 = sub_261127A84();
  sub_26115B414();
  sub_261127AD8(&v19);
  (*(v3 + 16))(v7, v9, v2);
  v19 = &type metadata for PASUIPersonalSignInView;
  v20 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_26115B574();
  (*(v3 + 8))(v9, v2);
  return v17;
}

unint64_t sub_261127A2C()
{
  result = qword_27FE81370;
  if (!qword_27FE81370)
  {
    sub_26115AA54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81370);
  }

  return result;
}

unint64_t sub_261127A84()
{
  result = qword_27FE81380;
  if (!qword_27FE81380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81380);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_261127B40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_261127B88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_261127C04@<X0>(uint64_t a1@<X8>)
{
  sub_261127F84(v1, v8);
  v3 = swift_allocObject();
  v4 = v8[1];
  v3[1] = v8[0];
  v3[2] = v4;
  v5 = v8[3];
  v3[3] = v8[2];
  v3[4] = v5;
  result = sub_26111BED4(v1 + 16, a1 + 72);
  *(a1 + 112) = &unk_26115F030;
  *(a1 + 120) = v3;
  *a1 = sub_261127800;
  *(a1 + 8) = 0;
  *(a1 + 16) = sub_261127804;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v7 = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  return result;
}

uint64_t sub_261127CC8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_261127D60, v4, v3);
}

uint64_t sub_261127D60()
{
  v1 = *(v0[3] + 8);
  v2 = *(MEMORY[0x277D434C8] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_261127E00;
  v4 = v0[2];

  return MEMORY[0x2821A4A08](v4);
}

uint64_t sub_261127E00()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_261127F20, v4, v3);
}

uint64_t sub_261127F20()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261127FBC()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261128004(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26110CAC4;

  return sub_261127CC8(a1, v1 + 16);
}

unint64_t sub_2611280A0()
{
  result = qword_27FE81388;
  if (!qword_27FE81388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81390, qword_26115F038);
    sub_26112812C();
    sub_261128180();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81388);
  }

  return result;
}

unint64_t sub_26112812C()
{
  result = qword_27FE81398;
  if (!qword_27FE81398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81398);
  }

  return result;
}

unint64_t sub_261128180()
{
  result = qword_27FE813A0[0];
  if (!qword_27FE813A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE813A0);
  }

  return result;
}

uint64_t sub_261128278()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_261128310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v37 = a6;
  v33 = a4;
  v34 = a3;
  v40 = a7;
  v39 = *(a5 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](a1);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v11;
  type metadata accessor for NavigationControllerReader.ReaderRepresentable();
  v31 = sub_26115AF84();
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDF900];
  v38 = MEMORY[0x277CDFAD8];
  v32 = swift_getWitnessTable();
  v36 = sub_26115B0F4();
  v12 = sub_26115AF84();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v35 = &v28 - v18;
  v47 = a1;
  v48 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE81538, &qword_26115F210);
  sub_26115B524();
  Strong = swift_unknownObjectWeakLoadStrong();

  v34(Strong);

  v43 = a1;
  v44 = a2;
  sub_26115B544();
  v43 = v47;
  v44 = v48;
  v45 = v49;
  sub_26115B444();

  v43 = v47;
  v44 = v48;
  v45 = v49;
  v46 = v50;
  sub_26115B5C4();
  v20 = v30;
  v21 = v37;
  v22 = v28;
  sub_26115B344();

  (*(v39 + 8))(v22, v20);
  v23 = swift_getWitnessTable();
  v41 = v21;
  v42 = v23;
  swift_getWitnessTable();
  v24 = v13[2];
  v25 = v35;
  v24(v35, v17, v12);
  v26 = v13[1];
  v26(v17, v12);
  v24(v40, v25, v12);
  return (v26)(v25, v12);
}

id sub_261128764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = (v3 + qword_27FE81428);
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = *((v5 & v4) + 0x50);
  v8 = *((v5 & v4) + 0x58);
  v10.receiver = v3;
  v10.super_class = type metadata accessor for NavigationControllerReader.Reader();
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

void sub_2611287F0()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_opt_self() clearColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2611288CC(void *a1)
{
  v1 = a1;
  sub_2611287F0();
}

void sub_261128914(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_2611291E0();
}

uint64_t sub_261128980(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v10, sel_didMoveToParentViewController_, a1);
  v7 = *(v1 + qword_27FE81428);
  v8 = *(v1 + qword_27FE81428 + 8);
  v9 = *(v1 + qword_27FE81428 + 16);

  v5 = [v1 navigationController];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE814B0, &qword_26115F198);
  sub_26115B594();
}

void sub_261128AE0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_261128980(a3);
}

id sub_261128B4C(uint64_t a1, char a2)
{
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x58);
  v13.receiver = v2;
  v13.super_class = type metadata accessor for NavigationControllerReader.Reader();
  objc_msgSendSuper2(&v13, sel_viewDidMoveToWindow_shouldAppearOrDisappear_, a1, a2 & 1);
  v10 = *(v2 + qword_27FE81428);
  v11 = *(v2 + qword_27FE81428 + 8);
  v12 = *(v2 + qword_27FE81428 + 16);

  result = [v2 view];
  if (result)
  {
    v8 = result;
    v9 = sub_261128DF8(result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE814B0, &qword_26115F198);
    sub_26115B594();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_261128CCC(void *a1, uint64_t a2, void *a3, char a4)
{
  v7 = a3;
  v8 = a1;
  sub_261128B4C(a3, a4);
}

id sub_261128D40(void *a1)
{
  v2 = [a1 nextResponder];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  result = [a1 nextResponder];
  if (result)
  {
    v5 = result;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = sub_261128D40();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_261128DF8(void *a1)
{
  v1 = a1;
  while (1)
  {
    v2 = v1;
    v3 = sub_261128D40(v2);
    if (v3)
    {
      break;
    }

LABEL_3:
    v1 = [v2 superview];

    if (!v1)
    {
      return v1;
    }
  }

  v4 = v3;
  v1 = [v3 navigationController];

  if (!v1)
  {
    goto LABEL_3;
  }

  return v1;
}

void sub_261128EB0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v5 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v6 = a4;

  sub_26112923C();
}

id sub_261128F20()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NavigationControllerReader.Reader();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_261128F90(uint64_t a1)
{
  v1 = *(a1 + qword_27FE81428);
  v2 = *(a1 + qword_27FE81428 + 8);
  v3 = *(a1 + qword_27FE81428 + 16);
}

uint64_t sub_261128FF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE814B0, &qword_26115F198);
  sub_26115B5A4();
  return v1;
}

id sub_26112904C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return sub_261129550();
}

uint64_t sub_2611290A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_261129124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2611291A0()
{
  swift_getWitnessTable();
  sub_26115B1C4();
  __break(1u);
}

uint64_t sub_26112929C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2611292F0(uint64_t *a1, int a2)
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

uint64_t sub_261129338(uint64_t result, int a2, int a3)
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

uint64_t sub_2611293EC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_261129428(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for NavigationControllerReader.ReaderRepresentable();
  sub_26115AF84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26115B0F4();
  sub_26115AF84();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_261129550()
{
  v0 = type metadata accessor for NavigationControllerReader.Reader();
  v1 = sub_261128FF8();
  v3 = v2;
  v5 = v4;
  v6 = objc_allocWithZone(v0);
  return sub_261128764(v1, v3, v5);
}

uint64_t sub_2611295F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815C0, &unk_26115F370);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v11 = [objc_allocWithZone(v10) init];
  v22 = v10;
  v23 = &off_287399F58;
  v21 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_26115A2E4();
  v20 = v1;
  v24 = v15;
  v16 = sub_261129804();

  sub_26115B414();
  sub_261129858(&v20);
  (*(v3 + 16))(v7, v9, v2);
  v20 = &type metadata for PASUISourceAuthView;
  v21 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_26115B574();
  (*(v3 + 8))(v9, v2);
  return v17;
}

unint64_t sub_261129804()
{
  result = qword_27FE815C8;
  if (!qword_27FE815C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE815C8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2611298A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2611298EC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_261129964@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  sub_261129EC8(v2, &v12);
  v5 = swift_allocObject();
  v6 = v13;
  *(v5 + 16) = v12;
  *(v5 + 32) = v6;
  *(v5 + 48) = v14;
  *(v5 + 64) = v15;
  sub_261129EC8(v2, &v12);
  v7 = swift_allocObject();
  v8 = v13;
  *(v7 + 16) = v12;
  *(v7 + 32) = v8;
  *(v7 + 48) = v14;
  *(v7 + 64) = v15;
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  v10 = *(sub_26115AF04() + 20);

  sub_26115B7B4();
  *v9 = &unk_26115F440;
  v9[1] = v7;
  *a1 = sub_26110C934;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *(a1 + 24) = sub_261129F04;
  *(a1 + 32) = v5;
  *(a1 + 40) = sub_26110C970;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  *(a1 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_261129ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  sub_26115AB84();
  v6 = sub_26115B6E4();

  return v6;
}

uint64_t sub_261129B38(uint64_t a1)
{
  v1[2] = a1;
  sub_26115B7A4();
  v1[3] = sub_26115B794();
  v3 = sub_26115B774();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_261129BD0, v3, v2);
}

uint64_t sub_261129BD0()
{
  v1 = v0[2];
  v2 = *v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x277D43560] + 4);
  v7 = (*MEMORY[0x277D43560] + MEMORY[0x277D43560]);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_261129CAC;

  return v7(sub_261129FE8, v3);
}

uint64_t sub_261129CAC()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110C8AC, v5, v4);
}

id sub_261129DF0(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_1Tm(a1 + 1, a1[4]);
  v3 = a1[6];
  sub_26115A2D4();
  v4 = v11;
  v5 = v12;
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  v6 = (*(v5 + 16))(v4, v5);
  v7 = *v2;
  v8 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  [v8 setPresentingViewController_];
  [v8 setDelegate_];

  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8;
}

uint64_t objectdestroyTm_2()
{
  v1 = v0[2];

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  v2 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_261129F54()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110CAC4;

  return sub_261129B38(v0 + 16);
}

unint64_t sub_261129FF0()
{
  result = qword_27FE80C70;
  if (!qword_27FE80C70)
  {
    sub_26115AF04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C70);
  }

  return result;
}

id PASFlowStepAIDASignIn.buildView()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815D0, qword_26115F460);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = [objc_opt_self() defaultCenter];
  v10 = objc_allocWithZone(type metadata accessor for PASUICDPEnrollmentObserver());

  v12 = sub_26112AC24(v11, v9, v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  v16 = sub_26115A2E4();
  sub_26112B4BC(&qword_27FE815D8, MEMORY[0x277D43418]);

  v17 = sub_26115AF34();
  v19 = v18;
  v20 = objc_allocWithZone(MEMORY[0x277CFDAE0]);
  v21 = v12;
  result = [v20 initWithPresentingViewController_];
  if (result)
  {
    v23 = result;
    [result setDelegate_];

    v28 = v17;
    v29 = v19;
    v30 = v21;
    v31 = &off_28739B3D0;
    v32 = v23;
    v33 = v16;
    v24 = sub_26112AD4C();
    sub_26115B414();

    (*(v3 + 16))(v27, v8, v2);
    v28 = &type metadata for PASUIAIDASignInView;
    v29 = v24;
    swift_getOpaqueTypeConformance2();
    v25 = sub_26115B574();
    (*(v3 + 8))(v8, v2);
    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26112A37C@<X0>(void *a1@<X8>)
{
  v12 = *v1;
  v3 = *(v1 + 2);
  v5 = *(v1 + 4);
  v4 = *(v1 + 5);
  v6 = swift_allocObject();
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  v6[3] = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  sub_26112AE6C(&v12, v11);
  swift_unknownObjectRetain();
  v8 = v5;

  result = sub_26115B514();
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_26112AE64;
  a1[3] = v6;
  return result;
}

uint64_t sub_26112A484@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815F0, &qword_26115F558);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v48 - v12;
  if (a1)
  {
    v51 = v11;
    v54 = *a2;
    v50 = a1;
    v14 = sub_26115A5D4();
    v52 = a3;
    if (v14)
    {
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v19 = *(a2 + 2);
      v20 = *(a2 + 4);
      v21 = *(a2 + 5);
      v16 = swift_allocObject();
      v22 = a2[1];
      v16[1] = *a2;
      v16[2] = v22;
      v16[3] = a2[2];
      sub_26112AE6C(&v54, v53);
      swift_unknownObjectRetain();
      v23 = v20;

      v15 = sub_26112AF2C;
    }

    sub_26115A5E4();
    __swift_project_boxed_opaque_existential_1Tm(v53, v53[3]);
    v24 = sub_26115A494();
    if (v25 >> 60 == 15)
    {
      __swift_destroy_boxed_opaque_existential_1(v53);
      v49 = 0;
      if ((v14 & 1) == 0)
      {
LABEL_10:
        v26 = swift_allocObject();
        *(v26 + 16) = v15;
        *(v26 + 24) = v16;
        v27 = sub_26112B118;
LABEL_13:
        v37 = swift_allocObject();
        *(v37 + 16) = v27;
        *(v37 + 24) = v26;
        v38 = *(a2 + 2);
        v40 = *(a2 + 4);
        v39 = *(a2 + 5);
        v41 = swift_allocObject();
        v42 = a2[1];
        *(v41 + 16) = *a2;
        *(v41 + 32) = v42;
        *(v41 + 48) = a2[2];
        *(v41 + 64) = v50;
        v43 = &v10[*(v6 + 36)];
        v44 = *(sub_26115AF04() + 20);
        sub_26112AE6C(&v54, v53);
        swift_unknownObjectRetain();
        v45 = v40;

        sub_26115B7B4();
        *v43 = &unk_26115F568;
        *(v43 + 1) = v41;
        *v10 = sub_26112AF34;
        *(v10 + 1) = v37;
        *(v10 + 2) = sub_261127804;
        *(v10 + 3) = 0;
        v10[32] = 1;
        *(v10 + 5) = v49;
        *(v10 + 6) = 0;
        v46 = MEMORY[0x277D84F90];
        *(v10 + 7) = 0;
        *(v10 + 8) = v46;
        sub_26112B070(v10, v13);
        v47 = v52;
        sub_26112B070(v13, v52);
        return (*(v51 + 56))(v47, 0, 1, v6);
      }
    }

    else
    {
      v28 = v24;
      v29 = v25;
      __swift_destroy_boxed_opaque_existential_1(v53);
      v30 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v31 = sub_26115A1F4();
      v48 = v16;
      v32 = v14;
      v33 = v13;
      v34 = v6;
      v35 = v15;
      v36 = v31;
      v49 = [v30 initWithData_];

      v15 = v35;
      v6 = v34;
      v13 = v33;
      LOBYTE(v33) = v32;
      v16 = v48;
      sub_26112B158(v28, v29);
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v27 = sub_2611227A4;
    v26 = 0;
    goto LABEL_13;
  }

  v17 = *(v11 + 56);

  return v17(a3, 1, 1, v6);
}

uint64_t sub_26112A8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  sub_26115A5E4();
  __swift_project_boxed_opaque_existential_1Tm(v8, v8[3]);
  sub_26115A484();
  v6 = sub_26115B6E4();

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_26112A94C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_26112A9E4, v4, v3);
}

uint64_t sub_26112A9E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 32);
  [v3 setForceInlinePresentation_];
  [v3 setPresentingViewController_];
  v4 = *(v2 + 8);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x277D43408] + 4);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_26112AADC;

  return MEMORY[0x2821A47C8](sub_26112B1C0, v5);
}

uint64_t sub_26112AADC()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_261127F20, v5, v4);
}

id sub_26112AC24(uint64_t a1, void *a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_observers] = MEMORY[0x277D84F90];
  v5 = &a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_delegate];
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_lastStatus;
  v7 = sub_26115A684();
  (*(*(v7 - 8) + 56))(&a3[v6], 1, 1, v7);
  *(v5 + 1) = MEMORY[0x277D43410];
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC23ProximityAppleIDSetupUI26PASUICDPEnrollmentObserver_notificationCenter] = a2;
  v11.receiver = a3;
  v11.super_class = type metadata accessor for PASUICDPEnrollmentObserver();
  v8 = a2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_261155608();

  return v9;
}

unint64_t sub_26112AD4C()
{
  result = qword_27FE815E0;
  if (!qword_27FE815E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE815E0);
  }

  return result;
}

uint64_t sub_26112ADA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26112ADE8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26112AE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815E8, &qword_26115F550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26112AF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v10[0] = a1;
  v10[1] = a2;
  v9[0] = a3;
  v9[1] = a4;
  v5(&v8, v10, v9);
  return v8;
}

uint64_t sub_26112AF7C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  v3 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26112AFD4()
{
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return sub_26112A94C(v0 + 16, v2);
}

uint64_t sub_26112B070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815F0, &qword_26115F558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26112B0E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26112B118@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  result = v5(*a1, a1[1], *a2, a2[1]);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_26112B158(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26112B16C(a1, a2);
  }

  return a1;
}

uint64_t sub_26112B16C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_26112B1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CECAD0]) initWithPresentingViewController_];
  [v6 setBackgroundDataclassEnablement_];
  [v6 setCdpContext_];
  [v6 setFindMyActivationAction_];
  v7 = [objc_allocWithZone(MEMORY[0x277CEE698]) init];
  [v7 setIgnoreAccountConversion_];
  v8 = sub_26115B674();
  [v7 setDebugReason_];

  v9 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
  [v9 setCdpUiProvider_];
  [v9 setViewController_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE815F8, &unk_26115F570);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115F450;
  v11 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v12 = sub_26112B474(0, &qword_27FE81600, 0x277CECAD0);
  *(inited + 40) = v6;
  v13 = *MEMORY[0x277CED1C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  *(inited + 104) = sub_26112B474(0, &qword_27FE81608, 0x277CEE698);
  *(inited + 80) = v7;
  v14 = v11;
  v15 = v6;
  v16 = v13;
  v17 = v7;
  sub_261110904(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E40, &qword_26115DA08);
  swift_arrayDestroy();
  type metadata accessor for AIDAServiceType(0);
  sub_26112B4BC(&qword_27FE80D48, type metadata accessor for AIDAServiceType);
  v18 = sub_26115B604();

  [v9 setSignInContexts_];

  return v9;
}

uint64_t sub_26112B474(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_26112B4BC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26112B508()
{
  result = qword_27FE81610;
  if (!qword_27FE81610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81618, &qword_26115F580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81610);
  }

  return result;
}

id PASUITargetViewPresenter.__allocating_init(parentViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithParentViewController_];

  return v3;
}

id PASUITargetViewPresenter.init(parentViewController:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = [a1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for PASViewControllerPresentationHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = &off_287398688;
  }

  else
  {
    v5 = type metadata accessor for PASDefaultFlowStepsPresentationHandler();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    v8 = a1;
    v7 = &protocol witness table for PASDefaultFlowStepsPresentationHandler;
  }

  v13[3] = v5;
  v13[4] = v7;
  v13[0] = v6;
  sub_26111BED4(v13, v12);
  v9 = objc_allocWithZone(ObjectType);
  v10 = PASUITargetViewPresenter.init(navigationController:)(v12);

  __swift_destroy_boxed_opaque_existential_1(v13);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

void *sub_26112B6F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PASUIProtoAccountPickerProxCardAdapter();
  v5 = swift_allocObject();

  result = sub_26112B7F8(v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v5;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26112B75C()
{
  v1 = *v0;
  sub_26112DBEC(&qword_27FE81678, MEMORY[0x277D43528]);

  sub_26115AF34();
  sub_26112D968();
  return sub_26115B574();
}

void *sub_26112B7F8(uint64_t a1)
{
  v2 = v1;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();

  v1[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v6 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v2[3] = v6;
  return v2;
}

void sub_26112B8AC(id a1)
{
  if (*(v1 + 40))
  {
    [a1 removeAction_];
  }

  sub_26115B6F4();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_26115F6A0;
  *(v4 + 24) = v3;
  swift_retain_n();
  v5 = sub_26115B674();

  v10[4] = sub_26112D960;
  v10[5] = v4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26114D6D0;
  v10[3] = &block_descriptor_54;
  v6 = _Block_copy(v10);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = [a1 addAction_];

  v9 = *(v1 + 40);
  *(v1 + 40) = v8;
}

uint64_t sub_26112BA78(uint64_t a1)
{
  *(v1 + 40) = a1;
  sub_26115B7A4();
  *(v1 + 48) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26112BB10, v3, v2);
}

uint64_t sub_26112BB10()
{
  v2 = v0[5];
  v1 = v0[6];

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 32);

    sub_26115AAE4();
  }

  v5 = v0[1];

  return v5();
}

void sub_26112BBB4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81298, &unk_26115E9C0);
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x28223BE20](v4);
  v75 = v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81620, "Fp");
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = *(v73 + 64);
  MEMORY[0x28223BE20](v7);
  v72 = v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v70 = v62 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81628, &unk_26115F630);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v62 - v15;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v17 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81630, &qword_26115F640);
  v67 = *(v19 - 8);
  v68 = v19;
  v20 = *(v67 + 64);
  MEMORY[0x28223BE20](v19);
  v66 = v62 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81638, &unk_26115F648);
  v71 = *(v22 - 8);
  v23 = *(v71 + 64);
  MEMORY[0x28223BE20](v22);
  v69 = v62 - v24;
  v25 = sub_26115AD64();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v30 = sub_26115AD54();
  v31 = sub_26115B804();
  v78 = a1;
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v62[1] = v16;
    v33 = v32;
    v34 = swift_slowAlloc();
    v63 = v22;
    v35 = v34;
    aBlock[0] = v34;
    *v33 = 136446210;
    v79 = v78;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81660, &qword_26115F658);
    v36 = sub_26115B6B4();
    v62[0] = v25;
    v38 = sub_26111C268(v36, v37, aBlock);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_261107000, v30, v31, "PASUIProtoAccountPickerProxCardAdapter attach to presenter: %{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v39 = v35;
    v22 = v63;
    MEMORY[0x2666FA930](v39, -1, -1);
    MEMORY[0x2666FA930](v33, -1, -1);

    (*(v26 + 8))(v29, v62[0]);
  }

  else
  {

    (*(v26 + 8))(v29, v25);
  }

  v40 = *(v2 + 16);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  v63 = *(v2 + 32);
  sub_26115AB14();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26111EDDC(&qword_27FE81640, &qword_27FE81628, &unk_26115F630);
  v41 = v66;
  sub_26115AD74();
  sub_26111EC34();
  v42 = sub_26115B874();
  aBlock[0] = v42;
  v43 = sub_26115B854();
  v44 = v70;
  (*(*(v43 - 8) + 56))(v70, 1, 1, v43);
  sub_26111EDDC(&qword_27FE81648, &qword_27FE81630, &qword_26115F640);
  sub_26112DBEC(&qword_27FE81088, sub_26111EC34);
  v45 = v68;
  v46 = v69;
  sub_26115ADC4();
  sub_26110CEE0(v44, &qword_27FE81058, &unk_26115E2F0);

  (*(v67 + 8))(v41, v45);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v49 = v78;
  *(v48 + 16) = v47;
  *(v48 + 24) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_26112D0FC;
  *(v50 + 24) = v48;
  sub_26111EDDC(&qword_27FE81650, &qword_27FE81638, &unk_26115F648);
  swift_unknownObjectRetain();
  sub_26115ADD4();

  (*(v71 + 8))(v46, v22);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v51 = v72;
  sub_26115AB64();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE81658, &qword_27FE81620, "Fp");
  v52 = v74;
  sub_26115ADD4();

  (*(v73 + 8))(v51, v52);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v53 = v75;
  sub_26115AB24();
  swift_allocObject();
  swift_weakInit();
  sub_26111EDDC(&qword_27FE812A0, &qword_27FE81298, &unk_26115E9C0);
  v54 = v77;
  sub_26115ADD4();

  (*(v76 + 8))(v53, v54);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v55 = swift_allocObject();
  swift_weakInit();
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  *(v57 + 24) = v56;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_26112D1C8;
  *(v58 + 24) = v57;

  v59 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_3;
  v60 = _Block_copy(aBlock);
  v61 = [objc_opt_self() actionWithTitle:v59 style:0 handler:v60];

  _Block_release(v60);

  [v49 setDismissButtonAction_];
}

uint64_t sub_26112C740(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v38 - v9;
  v11 = sub_26115AD64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_26115AD44();
    sub_26111EE24(a1, v48);

    v18 = sub_26115AD54();
    v19 = sub_26115B804();

    if (os_log_type_enabled(v18, v19))
    {
      v40 = v19;
      v41 = a1;
      v42 = a4;
      v43 = v10;
      v44 = v17;
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v47 = v39;
      *v20 = 136446722;
      sub_26111EE24(v48, &v45);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
      v21 = sub_26115B6B4();
      v23 = v22;
      sub_26110CEE0(v48, &qword_27FE81098, &qword_26115E5F0);
      v24 = sub_26111C268(v21, v23, &v47);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      if (a2)
      {
        if (a2 >> 62)
        {
          v25 = sub_26115B9A4();
        }

        else
        {
          v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v25 = 0;
      }

      a4 = v42;
      v10 = v43;
      v45 = v25;
      v46 = a2 == 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81668, &qword_26115F688);
      v26 = sub_26115B6B4();
      v28 = sub_26111C268(v26, v27, &v47);

      *(v20 + 14) = v28;
      *(v20 + 22) = 2082;
      v45 = a2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81670, &qword_26115F690);
      v29 = sub_26115B6B4();
      v31 = sub_26111C268(v29, v30, &v47);

      *(v20 + 24) = v31;
      _os_log_impl(&dword_261107000, v18, v40, "PASUIProtoAccountPickerProxCardAdapter publishers updating.\ndevice: %{public}s\n%s member(s): %{public}s", v20, 0x20u);
      v32 = v39;
      swift_arrayDestroy();
      MEMORY[0x2666FA930](v32, -1, -1);
      MEMORY[0x2666FA930](v20, -1, -1);

      (*(v12 + 8))(v15, v11);
      v17 = v44;
      a1 = v41;
      if (!a2)
      {
      }
    }

    else
    {

      sub_26110CEE0(v48, &qword_27FE81098, &qword_26115E5F0);
      (*(v12 + 8))(v15, v11);
      if (!a2)
      {
      }
    }

    if (a2 >> 62)
    {
      if (sub_26115B9A4())
      {
        goto LABEL_12;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_12:
      sub_26112D5E4(a1);
      v33 = sub_26115B674();

      [a4 setTitle_];

      sub_26112B8AC(a4);
    }

    v34 = sub_26115B7D4();
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    sub_26115B7A4();

    v35 = sub_26115B794();
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D85700];
    v36[2] = v35;
    v36[3] = v37;
    v36[4] = v17;
    sub_261112D1C(0, 0, v10, &unk_26115F680, v36);
  }

  return result;
}

uint64_t sub_26112CC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_26112CCC0, v6, v5);
}

uint64_t sub_26112CCC0()
{
  v1 = *(*(v0 + 16) + 32);
  v2 = *(MEMORY[0x277D43510] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_26110C78C;

  return MEMORY[0x2821A4A78]();
}

void sub_26112CD58(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 40);
    v4 = v3;

    if (v3)
    {
      if (v1)
      {
        sub_26115A564();
        if (v5)
        {

          v6 = 1;
        }

        else
        {

          v6 = sub_26115A534();
        }
      }

      else
      {
        v6 = 0;
      }

      [v4 setEnabled_];
    }
  }
}

void sub_26112CE1C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 48);

    [v3 setEnabled_];
  }
}

uint64_t sub_26112CEA0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = [Strong viewController];
      v4 = *(v1 + 32);
      v5 = swift_allocObject();
      *(v5 + 16) = sub_261112550;
      *(v5 + 24) = v4;
      swift_retain_n();
      sub_26114D9D4(v3, &unk_26115F668, v4, &unk_26115E9E0, v5);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_26112CFDC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
}

uint64_t sub_26112D014()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t sub_26112D0AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26112D104()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26112D13C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, *(a1 + 40));
}

uint64_t sub_26112D178()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26112D1C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_26112CEA0();
}

__n128 sub_26112D1D0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_26115AB04();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  sub_26115AB74();
  sub_26112DBEC(&qword_27FE81678, MEMORY[0x277D43528]);
  sub_26115AF44();
  swift_getKeyPath();
  sub_26115AF54();

  type metadata accessor for CGSize(0);
  sub_26115B514();
  sub_26115B514();

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81688, &qword_26115F780) + 36));
  v10 = *(sub_26115AF04() + 20);

  sub_26115B7B4();
  *v9 = &unk_26115F778;
  v9[1] = v8;
  *a3 = v7;
  *(a3 + 8) = 1;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  result = v15;
  *(a3 + 40) = v15;
  *(a3 + 56) = v16;
  return result;
}

uint64_t sub_26112D39C(uint64_t a1, uint64_t a2)
{
  v2[7] = a2;
  sub_26115B7A4();
  v2[8] = sub_26115B794();
  v4 = sub_26115B774();
  v2[9] = v4;
  v2[10] = v3;

  return MEMORY[0x2822009F8](sub_26112D434, v4, v3);
}

uint64_t sub_26112D434()
{
  v1 = type metadata accessor for PASUIMonogramMaker();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_26112DBEC(&qword_27FE812A8, type metadata accessor for PASUIMonogramMaker);
  v0[2] = v2;
  v3 = *(MEMORY[0x277D43518] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26112335C;
  v5 = v0[7];

  return MEMORY[0x2821A4A98](v0 + 2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26112D554()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_26112D5E4(uint64_t a1)
{
  v2 = sub_26115A3F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26111EE24(a1, &v14);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v14, v16);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    v7 = sub_26115A694();
    v9 = v8;
    __swift_destroy_boxed_opaque_existential_1(v13);
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_26110CEE0(&v14, &qword_27FE81098, &qword_26115E5F0);
    (*(v3 + 104))(v6, *MEMORY[0x277D433B8], v2);
    v7 = sub_26115A3E4();
    v9 = v10;
    (*(v3 + 8))(v6, v2);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_26115B954();

  v14 = 0xD000000000000018;
  v15 = 0x8000000261164110;
  MEMORY[0x2666F9DF0](v7, v9);

  v11 = sub_26115B6F4();

  return v11;
}

uint64_t sub_26112D7DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26112D81C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110DB28;

  return sub_26112CC28(a1, v4, v5, v6);
}

uint64_t sub_26112D8D0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26112BA78(v0);
}

unint64_t sub_26112D968()
{
  result = qword_27FE81680;
  if (!qword_27FE81680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81680);
  }

  return result;
}

uint64_t sub_26112D9E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_26115AB44();
  *a2 = result;
  return result;
}

uint64_t sub_26112DA14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26115AB54();
}

uint64_t sub_26112DA40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110CAC4;

  return sub_26112D39C(v2, v3);
}

unint64_t sub_26112DADC()
{
  result = qword_27FE81690;
  if (!qword_27FE81690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81688, &qword_26115F780);
    sub_26112DB98();
    sub_26112DBEC(&qword_27FE80C70, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81690);
  }

  return result;
}

unint64_t sub_26112DB98()
{
  result = qword_27FE81698;
  if (!qword_27FE81698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81698);
  }

  return result;
}

uint64_t sub_26112DBEC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PASFlowStepExtensionProvidedPicker.buildView()()
{
  v1 = *v0;
  sub_26112DCD8();

  sub_26115AF34();
  sub_26112DD30();
  return sub_26115B574();
}

unint64_t sub_26112DCD8()
{
  result = qword_27FE816A0;
  if (!qword_27FE816A0)
  {
    sub_26115AC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816A0);
  }

  return result;
}

unint64_t sub_26112DD30()
{
  result = qword_27FE816A8;
  if (!qword_27FE816A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816A8);
  }

  return result;
}

uint64_t sub_26112DD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816B0, &qword_26115F900);
  v23 = *(v5 - 8);
  v24 = v5;
  v6 = *(v23 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v22 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - v9;
  v38 = a2;

  v11 = sub_26115B6F4();
  v21[1] = v12;
  v36 = v11;
  v37 = v12;
  sub_26115AC94();
  sub_26112DCD8();
  sub_26115AF44();
  swift_getKeyPath();
  sub_26115AF54();

  v26 = a1;
  v27 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EA8, &qword_26115DC08);
  v14 = sub_26112EE10();
  v15 = sub_2611123E4();
  v20 = sub_261112438();
  sub_26115B434();

  v16 = v23;
  v17 = v24;
  (*(v23 + 16))(v22, v10, v24);
  v28 = &_s30ExtensionViewControllerWrapperVN;
  v29 = MEMORY[0x277D837D0];
  v30 = v13;
  v31 = MEMORY[0x277CE0BD8];
  v32 = v14;
  v33 = v15;
  v34 = v20;
  v35 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v18 = sub_26115B574();
  result = (*(v16 + 8))(v10, v17);
  *v25 = v18;
  return result;
}

uint64_t sub_26112E098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v36 = a1;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EC8, &qword_26115DC40);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED0, &qword_26115DC48);
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v39 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v38 = &v35 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v37 = &v35 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v41 = sub_26115B6F4();
  v42 = v20;
  sub_26115AE04();
  v21 = sub_26115AE14();
  v22 = *(*(v21 - 8) + 56);
  v22(v8, 0, 1, v21);
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  sub_2611123E4();

  sub_26115B564();
  v41 = sub_26115B6F4();
  v42 = v24;
  sub_26115ADF4();
  v22(v8, 0, 1, v21);
  v25 = swift_allocObject();
  *(v25 + 16) = v36;
  *(v25 + 24) = a2;

  v26 = v37;
  sub_26115B564();
  v27 = v10[2];
  v28 = v38;
  v27(v38, v19, v9);
  v29 = v39;
  v30 = v26;
  v27(v39, v26, v9);
  v31 = v40;
  v27(v40, v28, v9);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED8, &unk_26115DC50);
  v27(&v31[*(v32 + 48)], v29, v9);
  v33 = v10[1];
  v33(v30, v9);
  v33(v19, v9);
  v33(v29, v9);
  return (v33)(v28, v9);
}

uint64_t sub_26112E480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  sub_26115B7A4();
  *(v5 + 24) = sub_26115B794();
  v7 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26112E518, v7, v6);
}

uint64_t sub_26112E518()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_26115A634();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26112E57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  v11 = sub_26115B7D4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26115B7A4();

  v12 = sub_26115B794();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = a1;
  v13[5] = a2;
  sub_261112D1C(0, 0, v10, a4, v13);
}

uint64_t sub_26112E6A0()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = *(MEMORY[0x277D43428] + 4);
  v4 = (*MEMORY[0x277D43428] + MEMORY[0x277D43428]);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26110E430;

  return v4();
}

char *sub_26112E76C()
{
  v0 = sub_26115A2C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26115A4E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AC64();
  sub_26115A4C4();
  (*(v6 + 8))(v9, v5);
  sub_26115A4A4();
  swift_dynamicCast();
  v10 = type metadata accessor for PASUIExtensionHostViewController();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_finished] = 0;
  *&v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___exHostViewController] = 0;
  *&v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController____lazy_storage___sceneProxy] = 0;
  (*(v1 + 16))(&v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_identity], v4, v0);
  v12 = &v11[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_sceneID];
  *v12 = 0x746C7561666564;
  v12[1] = 0xE700000000000000;
  v15.receiver = v11;
  v15.super_class = v10;
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  (*(v1 + 8))(v4, v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816C8, &qword_26115FA30);
  sub_26115B214();
  *&v13[OBJC_IVAR____TtC23ProximityAppleIDSetupUI32PASUIExtensionHostViewController_delegate + 8] = &off_287399748;
  swift_unknownObjectWeakAssign();

  return v13;
}

uint64_t sub_26112EA20()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_26112EA60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  _s30ExtensionViewControllerWrapperV11CoordinatorCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a1 = v4;
}

uint64_t sub_26112EAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26112F4CC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_26112EB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26112F4CC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_26112EB7C()
{
  sub_26112F4CC();
  sub_26115B1C4();
  __break(1u);
}

void sub_26112EBA4(uint64_t a1@<X8>)
{
  v3 = sub_26115A4E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_26115AC64();
  v9 = sub_26115A4D4();
  (*(v4 + 8))(v7, v3);
  v10 = sub_26115A4F4();

  if (v10)
  {
    *a1 = 1;
  }

  else
  {
    v11 = _s20EmptyProxCardAdapterCMa();
    v12 = swift_allocObject();
    *(a1 + 24) = v11;
    *(a1 + 32) = &off_287399738;
    *a1 = v12;
  }

  *(a1 + 40) = v10 & 1;
}

uint64_t sub_26112ECD0()
{
  v1 = *v0;
  sub_26112DCD8();

  sub_26115AF34();
  sub_26112DD30();
  return sub_26115B574();
}

uint64_t sub_26112EDB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_26115A644();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26112EDE0(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26115A654();
}

unint64_t sub_26112EE10()
{
  result = qword_27FE816B8;
  if (!qword_27FE816B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816B8);
  }

  return result;
}

uint64_t sub_26112EE64()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26112EF10()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26110CAC4;

  return sub_26112E6A0();
}

uint64_t sub_26112EFD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_26112E480(a1, v4, v5, v7, v6);
}

uint64_t sub_26112F090(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v11 = a1;
  v12 = a2;
  v13 = sub_26115AD54();
  v14 = sub_26115B7F4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v30 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v11;
    v32 = v18;
    v19 = v18;
    *v16 = 141558530;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    v20 = sub_26115AA34();
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = sub_26111C268(v20, v22, &v32);
    v29 = v6;
    v24 = v3;
    v25 = v23;

    *(v16 + 14) = v25;
    v3 = v24;
    *(v16 + 22) = 2114;
    *(v16 + 24) = v12;
    *v17 = v12;
    v26 = v12;
    _os_log_impl(&dword_261107000, v13, v14, "ExtensionViewControllerWrapper.Coordinator hostViewController didPick account: %{mask.hash}s, context: %{public}@", v16, 0x20u);
    sub_26112F444(v17);
    MEMORY[0x2666FA930](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x2666FA930](v19, -1, -1);
    MEMORY[0x2666FA930](v16, -1, -1);

    (*(v30 + 8))(v10, v29);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  v27 = *(v3 + 16);
  return sub_26115AC74();
}

uint64_t sub_26112F2FC()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B7F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "ExtensionViewControllerWrapper.Coordinator hostViewControllerWantsToPromptForFlowCancel", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 16);
  return sub_26115A604();
}

uint64_t sub_26112F444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81EB0, &qword_26115F960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26112F4CC()
{
  result = qword_27FE816C0;
  if (!qword_27FE816C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816C0);
  }

  return result;
}

uint64_t PASFlowStepSendSelectedAccount.buildView()()
{
  sub_26110CC00();

  return sub_26115B574();
}

uint64_t sub_26112F55C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PASUIProgressViewProxCardAdapter();
  swift_allocObject();

  result = sub_2611519E8(v5);
  *(a1 + 24) = v4;
  *(a1 + 32) = &off_28739AD30;
  *a1 = result;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_26112F5C8()
{
  sub_26110CC00();

  return sub_26115B574();
}

uint64_t PASFlowStepLocalAuth.buildView()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816D0, &unk_26115FA60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v11 = [objc_allocWithZone(v10) init];
  v22 = v10;
  v23 = &off_287399F58;
  v21 = v11;
  sub_26112F820();

  v19 = sub_26115AF34();
  v20 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v24 = sub_26115A2E4();
  v16 = sub_26112F878();
  sub_26115B414();
  sub_26112F8CC(&v19);
  (*(v3 + 16))(v7, v9, v2);
  v19 = &type metadata for PASUILocalAuthView;
  v20 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = sub_26115B574();
  (*(v3 + 8))(v9, v2);
  return v17;
}

unint64_t sub_26112F820()
{
  result = qword_27FE816D8;
  if (!qword_27FE816D8)
  {
    sub_26115A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816D8);
  }

  return result;
}

unint64_t sub_26112F878()
{
  result = qword_27FE816E0;
  if (!qword_27FE816E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816E0);
  }

  return result;
}

uint64_t sub_26112F94C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_26112FC98(v1, &v19);
  v4 = swift_allocObject();
  v5 = v20;
  v4[1] = v19;
  v4[2] = v5;
  v6 = v22;
  v4[3] = v21;
  v4[4] = v6;
  v7 = *(v1 + 8);
  sub_26115A514();
  v8 = sub_26115A414();
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v13 = sub_26115A1F4();
    v11 = [v12 initWithData_];

    sub_26112B158(v8, v10);
  }

  sub_26112FC98(v2, &v19);
  v14 = swift_allocObject();
  v15 = v20;
  v14[1] = v19;
  v14[2] = v15;
  v16 = v22;
  v14[3] = v21;
  v14[4] = v16;
  result = sub_26111BED4(v2 + 16, a1 + 72);
  *(a1 + 112) = &unk_26115FB40;
  *(a1 + 120) = v14;
  *a1 = sub_26112FCD4;
  *(a1 + 8) = v4;
  *(a1 + 16) = sub_261127804;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  *(a1 + 40) = v11;
  *(a1 + 48) = 0;
  v18 = MEMORY[0x277D84F90];
  *(a1 + 56) = 0;
  *(a1 + 64) = v18;
  return result;
}

uint64_t sub_26112FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  sub_26115A514();
  sub_26115A404();

  v6 = sub_26115B6E4();

  return v6;
}

uint64_t sub_26112FB5C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_26112FBF4, v4, v3);
}

uint64_t sub_26112FBF4()
{
  v1 = *(v0[3] + 8);
  v2 = *(MEMORY[0x277D433E8] + 4);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_261127E00;
  v4 = v0[2];

  return MEMORY[0x2821A4758](v4);
}

uint64_t objectdestroyTm_4()
{
  v1 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26112FD24(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26110CAC4;

  return sub_26112FB5C(a1, v1 + 16);
}

uint64_t sub_26112FDE4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  v6 = (*(v1 + 24) + **(v1 + 24));
  v3 = *(*(v1 + 24) + 4);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_26112FED0;

  return v6();
}

uint64_t sub_26112FED0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2611300D0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_261130134()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261130174(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_26112FDC4(a1, v4, v5, v6);
}

void sub_261130250(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2611302B8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];

    v1 = *(v0 + 16);
  }

  v3 = *(v0 + 24);
  swift_unknownObjectRelease();
  sub_26111D830(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_261130374(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  v7 = objc_opt_self();
  v8 = [v7 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  [a1 setExportedObject_];
  v9 = [v7 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  v10 = swift_allocObject();
  *(v10 + 16) = sub_261131454;
  *(v10 + 24) = v6;
  v14[4] = sub_261131494;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_26113432C;
  v14[3] = &block_descriptor_4;
  v11 = _Block_copy(v14);

  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_261131454;
  *(v12 + 24) = v6;

  sub_261130D14(sub_2611314B4, v12);
}

uint64_t sub_2611305BC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26115B5D4();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26115B5F4();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v14 = sub_26115B874();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a1;
  aBlock[4] = sub_26113152C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_37;
  v16 = _Block_copy(aBlock);

  v17 = a1;

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261131538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261131590();
  sub_26115B904();
  MEMORY[0x2666F9F60](0, v13, v9, v16);
  _Block_release(v16);

  (*(v20 + 8))(v9, v6);
  return (*(v10 + 8))(v13, v19);
}

void sub_261130874(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v5 + 16);
      if (v8)
      {
        sub_26112B474(0, &qword_27FE81700, 0x277CCAE80);
        v9 = v7;
        v10 = v8;
        v11 = sub_26115B8D4();

        if ((v11 & 1) == 0)
        {

          return;
        }

        sub_261130EF8();
        if (swift_unknownObjectWeakLoadStrong())
        {
          if (![objc_opt_self() isMainThread])
          {
            __break(1u);
            return;
          }

          sub_26114A0B8(a3, 0, 1);
          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }
}

void sub_2611309C0(void (*a1)(void))
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B814();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUIExtensionProxy configure.interruptionHandler host's XPC connection to extension scene interrupted", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4097 userInfo:0];
  a1();
}

void sub_261130B48(void *a1, void (*a2)(void *))
{
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_26115AD44();
    v10 = a1;
    v11 = sub_26115AD54();
    v12 = sub_26115B814();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = a1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_261107000, v11, v12, "PASUIExtensionProxy configure.hello.completion hello message from host to extension scene failed: %{public}@", v13, 0xCu);
      sub_26112F444(v14);
      MEMORY[0x2666FA930](v14, -1, -1);
      MEMORY[0x2666FA930](v13, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    a2(a1);
  }
}

uint64_t sub_261130D14(uint64_t (*a1)(), uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v16 = sub_2611314BC;
  v17 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261130250;
  v15 = &block_descriptor_28;
  v7 = _Block_copy(&aBlock);

  v8 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_26115B8F4();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE816E8, qword_26115FCB0);
  swift_dynamicCast();
  v16 = a1;
  v17 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261149B54;
  v15 = &block_descriptor_31;
  v9 = _Block_copy(&aBlock);

  [v11 helloWithCompletion_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

void sub_261130EF8()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    v7 = *(v1 + 16);
    if (v7)
    {
      v8 = v7;
      sub_26115AD44();
      v9 = sub_26115AD54();
      v10 = sub_26115B7F4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_261107000, v9, v10, "PASUIExtensionProxy tearDownConnection invalidating host's XPC connection to extension scene", v11, 2u);
        MEMORY[0x2666FA930](v11, -1, -1);
      }

      (*(v3 + 8))(v6, v2);
      v12 = *(v1 + 16);
      *(v1 + 16) = 0;

      [v8 setInterruptionHandler_];
      [v8 setInvalidationHandler_];
      [v8 invalidate];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_2611310EC(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = objc_opt_self();
  if (![v4 isMainThread])
  {
    __break(1u);
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_26114AAE0();
  if (![v4 isMainThread])
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_261130EF8();
  sub_261130374(v5);
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
  v7 = v5;

  [v7 activate];
}

uint64_t sub_2611313A4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2611313DC()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261131414()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26113145C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2611314BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_2611314E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_261131538()
{
  result = qword_27FE816F0;
  if (!qword_27FE816F0)
  {
    sub_26115B5D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816F0);
  }

  return result;
}

unint64_t sub_261131590()
{
  result = qword_27FE816F8;
  if (!qword_27FE816F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE81EA0, &qword_261160190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE816F8);
  }

  return result;
}

void sub_261131730()
{
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = objc_allocWithZone(PASUIMicaPlayer);
  v5 = sub_26115B674();
  v6 = [v4 initWithFileName:v5 retinaScale:v3];

  v7 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer;
  v8 = *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer];
  *&v0[OBJC_IVAR____TtC23ProximityAppleIDSetupUI13PASUIMicaView_micaPlayer] = v6;
  v9 = v6;

  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = [v0 layer];
  [v9 addToLayer:v10 onTop:1 gravity:*MEMORY[0x277CDA710]];

  v11 = *&v0[v7];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v11 pause];
  v12 = *&v0[v7];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = [v12 rootLayer];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [objc_opt_self() systemBlueColor];
  v16 = [v15 CGColor];

  [v14 mp:v16 setFillOfAllShapeLayersToColor:?];
}

id sub_2611319CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PASUIMicaView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_261131A34@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_2611122C8(v2);

  return sub_2611122C8(v4);
}

uint64_t sub_261131A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26115A3F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D433B8], v4);
  v9 = sub_26115A3E4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_26115B954();

  v14 = 0xD000000000000017;
  v15 = 0x80000002611643E0;
  if (a2)
  {

    v11 = a2;
  }

  else
  {
    a1 = v9;
  }

  MEMORY[0x2666F9DF0](a1, v11);

  v12 = sub_26115B6F4();

  return v12;
}

uint64_t sub_261131C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26115A3F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x277D433B8], v8);
  v13 = sub_26115A3E4();
  v15 = v14;
  (*(v9 + 8))(v12, v8);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_26115B954();

  v19 = 0xD000000000000010;
  v20 = 0x80000002611643C0;
  v16 = a4;
  if (!a4)
  {

    a3 = v13;
    v16 = v15;
  }

  MEMORY[0x2666F9DF0](a3, v16);

  MEMORY[0x2666F9DF0](95, 0xE100000000000000);
  if (a2)
  {

    v15 = a2;
  }

  else
  {
    a1 = v13;
  }

  MEMORY[0x2666F9DF0](a1, v15);

  v17 = sub_26115B6F4();

  return v17;
}

uint64_t sub_261131DFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_261131E58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_261131EDC()
{
  result = qword_27FE81710[0];
  if (!qword_27FE81710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE81710);
  }

  return result;
}

uint64_t sub_261131F30()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_261131FC8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a4;
  v40 = a3;
  v44 = a7;
  v9 = *(a5 - 8);
  v42 = a6;
  v43 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v13;
  v35 = type metadata accessor for PASPresentationControllerView.ViewControllerRepresentable();
  v36 = sub_26115AF84();
  WitnessTable = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = MEMORY[0x277CDF900];
  v41 = MEMORY[0x277CDFAD8];
  v37 = swift_getWitnessTable();
  v38 = sub_26115B0F4();
  v14 = sub_26115AF84();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  v22 = a1;
  v49 = a1;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FE81798, &qword_26115FED8);
  sub_26115B524();
  v23 = v47;
  v40(v47);

  v49 = v22;
  v50 = a2;
  sub_26115B524();
  v24 = v47;
  sub_26115B444();

  v25 = v49;
  v47 = v49;
  v48 = v50;
  sub_26115B5C4();
  v26 = v33;
  v27 = v42;
  sub_26115B344();

  (*(v43 + 8))(v12, v26);
  v28 = swift_getWitnessTable();
  v45 = v27;
  v46 = v28;
  v29 = swift_getWitnessTable();
  sub_2611295EC(v19, v14, v29);
  v30 = *(v15 + 8);
  v30(v19, v14);
  sub_2611295EC(v21, v14, v29);
  return (v30)(v21, v14);
}

uint64_t sub_261132368()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2611323A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for PASPresentationControllerView.ViewControllerRepresentable();
  sub_26115AF84();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26115B0F4();
  sub_26115AF84();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

id sub_2611324C0(uint64_t a1, uint64_t a2)
{
  v3 = nullsub_1(*v2, *(a2 + 16), *(a2 + 24));

  return v3;
}

uint64_t sub_2611324F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_261132570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_2611325EC()
{
  swift_getWitnessTable();
  sub_26115B1C4();
  __break(1u);
}

uint64_t PASFlowStepSendAuthResults.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81820, qword_261160010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = v0;
  v9 = sub_2611327AC();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUISendAuthResultsView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

unint64_t sub_2611327AC()
{
  result = qword_27FE81828;
  if (!qword_27FE81828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81828);
  }

  return result;
}

uint64_t sub_261132800()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81820, qword_261160010);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v12[0] = *v0;
  v9 = sub_2611327AC();
  sub_26115B414();
  (*(v2 + 16))(v6, v8, v1);
  v12[0] = &type metadata for PASUISendAuthResultsView;
  v12[1] = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v10;
}

double sub_2611329B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  v5 = *(sub_26115AF04() + 20);
  swift_retain_n();
  sub_26115B7B4();
  *v4 = &unk_2611600F8;
  v4[1] = a1;
  *a2 = sub_26110C934;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = sub_26110C93C;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_26110C970;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 1;
  *(a2 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_261132A90()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = *(MEMORY[0x277D434E0] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26110E430;

  return MEMORY[0x2821A4A28]();
}

uint64_t sub_261132B48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_261132A90();
}

id sub_261132BDC()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    [v3 setSuspended_];
    v4 = sub_261132C7C();
    [v3 setUnderlyingQueue_];

    v5 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_261132C7C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[4];
  }

  else
  {
    v3 = sub_261132CD8(v0);
    v4 = v0[4];
    v0[4] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_261132CD8(uint64_t *a1)
{
  v15 = sub_26115B864();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26115B844();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_26115B5F4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v10 = *a1;
  v11 = sub_26115BAC4();
  v14[2] = v12;
  v14[3] = v11;
  v14[1] = sub_26115B874();
  sub_26115B5E4();
  v16 = MEMORY[0x277D84F90];
  sub_261134CC0(&qword_27FE81830, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81838, &unk_261160198);
  sub_261134D08(&qword_27FE81840, &qword_27FE81838, &unk_261160198);
  sub_26115B904();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  return sub_26115B894();
}

uint64_t sub_261132F64()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for PASUIExtensionHostProxy.InfoProvider();
    v1 = swift_allocObject();
    *(v0 + 40) = v1;
  }

  swift_unknownObjectRetain();
  return v1;
}

uint64_t PASUIExtensionHostProxy.deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];

    v1 = *(v0 + 16);
  }

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t PASUIExtensionHostProxy.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    [v2 setInterruptionHandler_];
    [v2 setInvalidationHandler_];
    [v2 invalidate];

    v1 = *(v0 + 16);
  }

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

void sub_2611330E0(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  if ([objc_opt_self() isMainThread])
  {
    sub_26115AD44();
    v12 = sub_26115AD54();
    v13 = sub_26115B7F4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_261107000, v12, v13, "PASUIExtensionHostProxy connectToHost extension is accepting new connection from the host", v14, 2u);
      MEMORY[0x2666FA930](v14, -1, -1);
    }

    v15 = *(v5 + 8);
    v15(v11, v4);
    sub_261133A88();
    sub_26113334C(a1);
    v16 = *(v2 + 16);
    *(v2 + 16) = a1;
    v17 = a1;

    [v17 activate];
    sub_26115AD44();
    v18 = sub_26115AD54();
    v19 = sub_26115B7F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_261107000, v18, v19, "PASUIExtensionHostProxy connectToHost resuming queue for sending messages back to extension host", v20, 2u);
      MEMORY[0x2666FA930](v20, -1, -1);
    }

    v15(v9, v4);
    v21 = sub_261132BDC();
    [v21 setSuspended_];
  }

  else
  {
    __break(1u);
  }
}

void sub_26113334C(void *a1)
{
  v2 = objc_opt_self();
  v3 = [v2 interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  swift_unknownObjectRelease();
  v4 = [v2 interfaceWithProtocol_];
  [a1 setRemoteObjectInterface_];

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v9[4] = sub_261134C70;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26113432C;
  v9[3] = &block_descriptor_35;
  v8 = _Block_copy(v9);

  [a1 setInterruptionHandler_];
  _Block_release(v8);
}

uint64_t sub_261133514()
{
  v0 = sub_26115B5D4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26115B5F4();
  v5 = *(v17 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26112B474(0, &qword_27FE81E90, 0x277D85C78);
  v16 = sub_26115B874();
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  aBlock[4] = sub_261134CB8;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26113432C;
  aBlock[3] = &block_descriptor_43;
  v13 = _Block_copy(aBlock);

  sub_26115B5E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_261134CC0(&qword_27FE816F0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81EA0, &qword_261160190);
  sub_261134D08(&qword_27FE816F8, &unk_27FE81EA0, &qword_261160190);
  sub_26115B904();
  v14 = v16;
  MEMORY[0x2666F9F60](0, v8, v4, v13);
  _Block_release(v13);

  (*(v1 + 8))(v4, v0);
  return (*(v5 + 8))(v8, v17);
}

void sub_261133880()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_10:

    return;
  }

  v8 = v7;
  v9 = *(v6 + 16);
  if (!v9)
  {

    goto LABEL_10;
  }

  sub_26112B474(0, &qword_27FE81700, 0x277CCAE80);
  v10 = v8;
  v11 = v9;
  v12 = sub_26115B8D4();

  if (v12)
  {
    sub_26115AD44();
    v13 = sub_26115AD54();
    v14 = sub_26115B814();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_261107000, v13, v14, "PASUIExtensionHostProxy configure.interruptionHandler connection from extension to host interrupted. Invalidating it.", v15, 2u);
      MEMORY[0x2666FA930](v15, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    sub_261133A88();
  }
}

void sub_261133A88()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  if ([objc_opt_self() isMainThread])
  {
    v10 = *(v1 + 16);
    if (v10)
    {
      v11 = v10;
      sub_26115AD44();
      v12 = sub_26115AD54();
      v13 = sub_26115B814();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_261107000, v12, v13, "PASUIExtensionHostProxy tearDownConnection extension received another host connection. Invalidating the first connection.", v14, 2u);
        MEMORY[0x2666FA930](v14, -1, -1);
      }

      v15 = *(v3 + 8);
      v15(v9, v2);
      v16 = *(v1 + 16);
      *(v1 + 16) = 0;

      [v11 setInterruptionHandler_];
      [v11 setInvalidationHandler_];
      [v11 invalidate];
      sub_26115AD44();
      v17 = sub_26115AD54();
      v18 = sub_26115B7F4();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_261107000, v17, v18, "PASUIExtensionHostProxy tearDownConnection suspending queue for sending messages back to extension host", v19, 2u);
        MEMORY[0x2666FA930](v19, -1, -1);
      }

      v15(v7, v2);
      v20 = sub_261132BDC();
      [v20 setSuspended_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_261133D14(void *a1, void *a2)
{
  v4 = sub_261132BDC();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v10[4] = sub_261134118;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_26113432C;
  v10[3] = &block_descriptor_5;
  v7 = _Block_copy(v10);
  v8 = a1;
  v9 = a2;

  [v4 addOperationWithBlock_];
  _Block_release(v7);
}

uint64_t sub_261133E30()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_261133E68(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + 16);
    if (v11)
    {
      v27 = Strong;
      v12 = v11;
      sub_26115AD44();
      v13 = a2;
      v14 = sub_26115AD54();
      v15 = sub_26115B7F4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = v12;
        v28 = v25;
        *v16 = 141558274;
        *(v16 + 4) = 1752392040;
        *(v16 + 12) = 2080;
        v17 = sub_26115AA24();
        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = v13;
        v21 = a3;
        v22 = sub_26111C268(v17, v19, &v28);

        *(v16 + 14) = v22;
        a3 = v21;
        v13 = v20;
        _os_log_impl(&dword_261107000, v14, v15, "PASUIExtensionHostProxy didPick informing host about picked account %{mask.hash}s", v16, 0x16u);
        v23 = v25;
        __swift_destroy_boxed_opaque_existential_1(v25);
        v12 = v26;
        MEMORY[0x2666FA930](v23, -1, -1);
        MEMORY[0x2666FA930](v16, -1, -1);
      }

      (*(v6 + 8))(v9, v5);
      sub_261134130(v13, a3, sub_261134124, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_2611340D0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261134130(uint64_t a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4)
{
  v5 = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v20 = sub_261134DDC;
  v21 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_261130250;
  v19 = &block_descriptor_59;
  v11 = _Block_copy(&aBlock);

  v12 = [v5 remoteObjectProxyWithErrorHandler_];
  _Block_release(v11);
  sub_26115B8F4();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81848, &qword_2611601A8);
  swift_dynamicCast();
  v20 = a3;
  v21 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_261149B54;
  v19 = &block_descriptor_62_0;
  v13 = _Block_copy(&aBlock);

  [v15 extensionDidFinishWith:a1 context:a2 completion:v13];
  _Block_release(v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_26113432C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_261134388()
{
  v0 = sub_261132BDC();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_261134618;
  v3[5] = v1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_26113432C;
  v3[3] = &block_descriptor_7;
  v2 = _Block_copy(v3);

  [v0 addOperationWithBlock_];
  _Block_release(v2);
}

void sub_26113446C()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 16);
    if (v6)
    {
      v7 = v6;
      sub_26115AD44();
      v8 = sub_26115AD54();
      v9 = sub_26115B7F4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_261107000, v8, v9, "PASUIExtensionHostProxy promptForFlowCancel", v10, 2u);
        MEMORY[0x2666FA930](v10, -1, -1);
      }

      (*(v1 + 8))(v4, v0);
      sub_261134874(sub_2611346A4, 0);
    }

    else
    {
    }
  }
}

uint64_t sub_2611346B0(void *a1, const char *a2)
{
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_26115AD44();
    v11 = a1;
    v12 = sub_26115AD54();
    v13 = sub_26115B814();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = a1;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_261107000, v12, v13, a2, v14, 0xCu);
      sub_26112F444(v15);
      MEMORY[0x2666FA930](v15, -1, -1);
      MEMORY[0x2666FA930](v14, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v9, v4);
  }

  return result;
}

uint64_t sub_261134874(uint64_t (*a1)(uint64_t a1), uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v16 = sub_261134D94;
  v17 = v6;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261130250;
  v15 = &block_descriptor_49;
  v7 = _Block_copy(&aBlock);

  v8 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v7);
  sub_26115B8F4();
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81848, &qword_2611601A8);
  swift_dynamicCast();
  v16 = a1;
  v17 = a2;
  aBlock = MEMORY[0x277D85DD0];
  v13 = 1107296256;
  v14 = sub_261149B54;
  v15 = &block_descriptor_52;
  v9 = _Block_copy(&aBlock);

  [v11 promptForFlowCancelWithCompletion_];
  _Block_release(v9);
  return swift_unknownObjectRelease();
}

uint64_t sub_261134AE0(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B7F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "PASUIExtensionHostProxy hello received hello from host", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return (*(a1 + 16))(a1, 0);
}

uint64_t sub_261134C34()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261134C70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_261133514();
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_261134CB8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_261133880();
}

uint64_t sub_261134CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261134D08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_261134D5C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t PASFlowStepSendSignInResults.buildView()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81850, qword_2611601B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_261134FF4();

  v10 = sub_26115AF34();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26115A2E4();
  v21 = v10;
  v22 = v12;
  v23 = v16;
  v17 = sub_26113504C();
  sub_26115B414();

  (*(v3 + 16))(v7, v9, v2);
  v21 = &type metadata for PASUISendSignInResultsView;
  v22 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_26115B574();
  (*(v3 + 8))(v9, v2);
  return v18;
}

unint64_t sub_261134FF4()
{
  result = qword_27FE81858;
  if (!qword_27FE81858)
  {
    sub_26115AAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81858);
  }

  return result;
}

unint64_t sub_26113504C()
{
  result = qword_27FE81860;
  if (!qword_27FE81860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81860);
  }

  return result;
}

uint64_t sub_2611350A0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81850, qword_2611601B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v0;
  sub_261134FF4();

  v10 = sub_26115AF34();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81378, qword_26115EF58);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26115A2E4();
  v21 = v10;
  v22 = v12;
  v23 = v16;
  v17 = sub_26113504C();
  sub_26115B414();

  (*(v2 + 16))(v6, v8, v1);
  v21 = &type metadata for PASUISendSignInResultsView;
  v22 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v18;
}

uint64_t sub_2611352C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;

  sub_26115AAC4();
  __swift_project_boxed_opaque_existential_1Tm(v18, v18[3]);
  v9 = sub_26115A494();
  if (v10 >> 60 == 15)
  {
    result = __swift_destroy_boxed_opaque_existential_1(v18);
    v12 = 0;
  }

  else
  {
    v13 = v9;
    v14 = v10;
    __swift_destroy_boxed_opaque_existential_1(v18);
    v15 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v16 = sub_26115A1F4();
    v12 = [v15 initWithData_];

    result = sub_26112B158(v13, v14);
  }

  *a4 = sub_261135500;
  *(a4 + 8) = v8;
  *(a4 + 16) = sub_261127804;
  *(a4 + 24) = 0;
  *(a4 + 32) = 1;
  *(a4 + 40) = v12;
  *(a4 + 48) = 0;
  v17 = MEMORY[0x277D84F90];
  *(a4 + 56) = 0;
  *(a4 + 64) = v17;
  return result;
}

uint64_t sub_261135414()
{
  sub_26115AAC4();
  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_26115A484();
  v0 = sub_26115B6E4();

  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_2611354C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261135500()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_261135414();
}

uint64_t sub_261135560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2611368B4(a3, v14);
  v7 = swift_allocObject();
  v8 = v14[1];
  *(v7 + 16) = v14[0];
  *(v7 + 32) = v8;
  *(v7 + 48) = v14[2];
  *(v7 + 64) = v15;
  *(v7 + 72) = a1;
  v9 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818F8, &qword_2611603E8) + 36));
  v10 = *(sub_26115AF04() + 20);
  v11 = a1;
  sub_26115B7B4();
  *v9 = &unk_2611603E0;
  v9[1] = v7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0);
  return (*(*(v12 - 8) + 16))(a4, a2, v12);
}

uint64_t sub_261135670(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_26115B7A4();
  v2[4] = sub_26115B794();
  v4 = sub_26115B774();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x2822009F8](sub_261135708, v4, v3);
}

uint64_t sub_261135708()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v1[5];
  v3 = v1[6];
  v5 = *__swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v6 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
  v0[7] = v6;
  [v6 setPresentingViewController_];
  [v6 setDelegate_];
  v10 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_261135858;

  return v10(v6);
}

uint64_t sub_261135858()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v7 = *v0;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_261127F20, v5, v4);
}

uint64_t sub_261135998@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  (*(v6 + 16))(v16 - v8, a1, v5);
  sub_2611368B4(v2, v17);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  v12 = v11 + ((v7 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = v17[1];
  *v12 = v17[0];
  *(v12 + 16) = v13;
  *(v12 + 32) = v17[2];
  *(v12 + 48) = v18;
  v16[0] = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  sub_261122758();
  result = sub_26115B514();
  v15 = v16[2];
  *a2 = v16[1];
  a2[1] = v15;
  a2[2] = sub_2611369A0;
  a2[3] = v11;
  return result;
}

uint64_t sub_261136088(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_261136134;

  return sub_261136634();
}

uint64_t sub_261136134(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v6 = *v1;

  if (v5)
  {
    v7 = *(v3 + 16);
    (v7)[2](v7, a1);

    _Block_release(v7);
  }

  else
  {
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_261136278()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2611362C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261136088(v2, v3);
}

uint64_t sub_261136378()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v5 = sub_26115AD54();
  v6 = sub_26115B834();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_261107000, v5, v6, "PASUIAppleIDAuthContextProvider remoteUIStyle", v7, 2u);
    MEMORY[0x2666FA930](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t sub_2611364B0(const char *a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = v2;
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v11 = sub_26115AD54();
  v12 = sub_26115B834();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_261107000, v11, v12, a1, v13, 2u);
    MEMORY[0x2666FA930](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  v14 = v5 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI31PASUIAppleIDAuthContextProvider_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    a2(ObjectType, v16);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_261136634()
{
  v1 = sub_26115AD64();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611366F0, 0, 0);
}

uint64_t sub_2611366F0()
{
  v1 = v0[4];
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B834();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUIAppleIDAuthContextProvider signAdditionalHeaders", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  (*(v6 + 8))(v5, v7);

  v8 = v0[1];

  return v8(0);
}

uint64_t sub_2611367F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26113683C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2611368EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  v6 = *(v0 + v5 + 48);

  return MEMORY[0x2821FE8E8](v0, v5 + 56, v3 | 7);
}

uint64_t sub_2611369A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E8, &qword_2611603D0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_261135560(a1, v2 + v6, v7, a2);
}

uint64_t sub_261136A58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_261136AA0()
{
  v2 = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return sub_261135670(v0 + 16, v2);
}

unint64_t sub_261136B40()
{
  result = qword_27FE81900;
  if (!qword_27FE81900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81908, &unk_2611603F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81900);
  }

  return result;
}

uint64_t sub_261136BA8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE900000000000065;
  v4 = 0x636E614372657375;
  if (a1 == 2)
  {
    v4 = 0x7669746341746F6ELL;
  }

  else
  {
    v3 = 0xED000064656C6C65;
  }

  v5 = 0xD000000000000010;
  v6 = 0x8000000261162890;
  if (a1)
  {
    v5 = 0x4179646165726C61;
    v6 = 0xED00006576697463;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x7669746341746F6ELL;
    }

    else
    {
      v11 = 0x636E614372657375;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000065;
    }

    else
    {
      v10 = 0xED000064656C6C65;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0x4179646165726C61;
    }

    else
    {
      v9 = 0xD000000000000010;
    }

    if (a2)
    {
      v10 = 0xED00006576697463;
    }

    else
    {
      v10 = 0x8000000261162890;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_26115B9F4();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

uint64_t sub_261136D18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED00006576697463;
  v3 = 0x4179646165726C61;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x636E614372657375;
    }

    if (v4 == 2)
    {
      v6 = 0x8000000261162920;
    }

    else
    {
      v6 = 0xED000064656C6C65;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x7669746341746F6ELL;
    }

    else
    {
      v5 = 0x4179646165726C61;
    }

    if (v4)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xED00006576697463;
    }
  }

  v7 = 0xD000000000000016;
  v8 = 0x8000000261162920;
  if (a2 != 2)
  {
    v7 = 0x636E614372657375;
    v8 = 0xED000064656C6C65;
  }

  if (a2)
  {
    v3 = 0x7669746341746F6ELL;
    v2 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26115B9F4();
  }

  return v11 & 1;
}

ProximityAppleIDSetupUI::PASUISourceViewPresenterError_optional __swiftcall PASUISourceViewPresenterError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26115B9D4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PASUISourceViewPresenterError.rawValue.getter()
{
  v1 = 0x4179646165726C61;
  v2 = 0xD000000000000016;
  if (*v0 != 2)
  {
    v2 = 0x636E614372657375;
  }

  if (*v0)
  {
    v1 = 0x7669746341746F6ELL;
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

uint64_t sub_261136F88()
{
  v1 = *v0;
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_26113706C()
{
  *v0;
  *v0;
  *v0;
  sub_26115B704();
}

uint64_t sub_26113713C()
{
  v1 = *v0;
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

void sub_261137228(unint64_t *a1@<X8>)
{
  v2 = 0xED00006576697463;
  v3 = 0x4179646165726C61;
  v4 = 0x8000000261162920;
  v5 = 0xD000000000000016;
  if (*v1 != 2)
  {
    v5 = 0x636E614372657375;
    v4 = 0xED000064656C6C65;
  }

  if (*v1)
  {
    v3 = 0x7669746341746F6ELL;
    v2 = 0xE900000000000065;
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

uint64_t sub_2611372D4(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B70](a1, v2);
}

uint64_t sub_261137310(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B88](a1, v2);
}

uint64_t sub_26113734C(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B78](a1, v2);
}

uint64_t sub_261137388(uint64_t a1)
{
  v2 = sub_26114079C();

  return MEMORY[0x2821A4B80](a1, v2);
}

uint64_t sub_2611373C4(uint64_t a1)
{
  v2 = sub_26114079C();
  v3 = sub_2611407F0();

  return MEMORY[0x2821A4B90](a1, v2, v3);
}

uint64_t sub_261137414(uint64_t a1)
{
  v2 = sub_26114009C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_261137450(uint64_t a1)
{
  v2 = sub_26114009C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASUISourceViewPresenter.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PASUISourceViewPresenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PASUIGuardianViewPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_261113830;
}

uint64_t sub_261137684()
{
  v1 = OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics);
  }

  else
  {
    v2 = sub_2611376EC(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_2611376EC(uint64_t a1)
{
  v2 = sub_26115A254();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider);

  sub_26115A2D4();

  __swift_project_boxed_opaque_existential_1Tm(&v16, v18);
  sub_261140BF0();
  v8 = sub_26115AA94();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_26115A244();
  v9 = sub_26115A234();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D435B0];
  v18 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D435B0];
  v16 = v9;
  v17 = v11;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v18 = v12;
  v19 = v13;
  v16 = 0x656372756F73;
  v17 = 0xE600000000000000;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_26115A354();
  return v8;
}

id PASUISourceViewPresenter.init(previewViewController:flowController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView] = 0;
  v8 = &v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer] = 0;
  v9 = OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v3[v9] = sub_26115A2E4();
  v13 = OBJC_IVAR___PASUIGuardianViewPresenter__authenticator;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v3[v13] = sub_26115A2E4();
  v17 = OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v3[v17] = sub_26115A2E4();
  v21 = OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v3[v21] = sub_26115A2E4();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics] = 0;
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController] = a1;
  v25 = &v3[OBJC_IVAR___PASUIGuardianViewPresenter_flowController];
  *v25 = a2;
  *(v25 + 1) = a3;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, sel_init);
}

id PASUISourceViewPresenter.__allocating_init(sharingViewController:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26113F8E8(a1);

  return v4;
}

id PASUISourceViewPresenter.init(sharingViewController:)(void *a1)
{
  v2 = sub_26113F8E8(a1);

  return v2;
}

id PASUISourceViewPresenter.init(parentViewController:flowController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  ObjectType = swift_getObjectType();
  v7 = sub_26115AD64();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v43 - v13;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView] = 0;
  v15 = &v3[OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer] = 0;
  v16 = OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v3[v16] = sub_26115A2E4();
  v20 = OBJC_IVAR___PASUIGuardianViewPresenter__authenticator;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v3[v20] = sub_26115A2E4();
  v24 = OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v3[v24] = sub_26115A2E4();
  v28 = OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *&v3[v28] = sub_26115A2E4();
  *&v3[OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics] = 0;
  sub_26115AD44();
  v32 = sub_26115AD54();
  v33 = sub_26115B834();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_261107000, v32, v33, "PAS=== Welcome to ProximityAppleIDSetup - Source ===PAS", v34, 2u);
    MEMORY[0x2666FA930](v34, -1, -1);
  }

  v35 = *(v8 + 8);
  v35(v14, v7);
  sub_26115AD44();
  v36 = sub_26115AD54();
  v37 = sub_26115B834();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_261107000, v36, v37, "PASUISourceViewPresenter parentVC and flow controller", v38, 2u);
    MEMORY[0x2666FA930](v38, -1, -1);
  }

  v35(v12, v7);
  sub_26115A344();
  sub_26115A324();
  sub_26115A304();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v46[0] = v39;
  sub_26115A334();

  sub_26110CEE0(v46, &qword_27FE80F98, &qword_261160420);
  *&v4[OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController] = a1;
  v40 = &v4[OBJC_IVAR___PASUIGuardianViewPresenter_flowController];
  v41 = v44;
  *v40 = v43;
  *(v40 + 1) = v41;
  v45.receiver = v4;
  v45.super_class = ObjectType;
  return objc_msgSendSuper2(&v45, sel_init);
}

id PASUISourceViewPresenter.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_26115AD44();
  v11 = sub_26115AD54();
  v12 = sub_26115B834();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_261107000, v11, v12, "PASUISourceViewPresenter deinit", v13, 2u);
    MEMORY[0x2666FA930](v13, -1, -1);
  }

  v14 = *(v4 + 8);
  v14(v10, v3);
  sub_26115A344();
  sub_26115A324();
  sub_26115A2F4();

  sub_26115AD44();
  v15 = sub_26115AD54();
  v16 = sub_26115B834();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_261107000, v15, v16, "PAS=== Goodbye ===PAS", v17, 2u);
    MEMORY[0x2666FA930](v17, -1, -1);
  }

  v14(v8, v3);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_dealloc);
}

uint64_t PASUISourceViewPresenter.activate(withTemplate:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  sub_26115B7A4();
  v2[18] = sub_26115B794();
  v7 = sub_26115B774();
  v2[19] = v7;
  v2[20] = v6;

  return MEMORY[0x2822009F8](sub_261138404, v7, v6);
}

uint64_t sub_261138404()
{
  v1 = v0[13];
  v2 = *(v0[14] + OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider);

  sub_26115A2D4();

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v5 = sub_26112B474(0, &qword_27FE80FA8, 0x277D02880);
  v6 = MEMORY[0x277D435B8];
  v0[10] = v5;
  v0[11] = v6;
  v0[7] = v1;
  v7 = *(MEMORY[0x277D43588] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_261138520;

  return MEMORY[0x2821A4B28](v0 + 7, v3, v4);
}

uint64_t sub_261138520()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v8 = *v1;
  (*v1)[22] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_261138868;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_26113863C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26113863C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_2611386D4;
  v2 = v0[14];

  return sub_261138A94();
}

uint64_t sub_2611386D4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = a1;

  v4 = *(v2 + 160);
  v5 = *(v2 + 152);

  return MEMORY[0x2822009F8](sub_2611387FC, v5, v4);
}

uint64_t sub_2611387FC()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];
  v4 = v0[24];

  return v3(v4);
}

uint64_t sub_261138868()
{
  v23 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v3 = v1;
  v4 = sub_26115AD54();
  v5 = sub_26115B814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 128);
    v21 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    *(v0 + 96) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v12 = sub_26115B6B4();
    v14 = sub_26111C268(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_261107000, v4, v5, "Failed to activate PASUISourceViewPresenter with message session: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2666FA930](v10, -1, -1);
    MEMORY[0x2666FA930](v9, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);

    (*(v16 + 8))(v15, v17);
  }

  v18 = swift_task_alloc();
  *(v0 + 184) = v18;
  *v18 = v0;
  v18[1] = sub_2611386D4;
  v19 = *(v0 + 112);

  return sub_261138A94();
}

uint64_t sub_261138A94()
{
  v1[10] = v0;
  v2 = sub_26115AD64();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_26115B7A4();
  v1[15] = sub_26115B794();
  v6 = sub_26115B774();
  v1[16] = v6;
  v1[17] = v5;

  return MEMORY[0x2822009F8](sub_261138B94, v6, v5);
}

uint64_t sub_261138B94()
{
  v1 = *(v0 + 80);
  v2 = sub_261137684();
  *(v0 + 200) = 0;
  *(v0 + 144) = v2;
  v3 = *(MEMORY[0x277D433B0] + 4);
  v6 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_261138C54;

  return v6(v0 + 200);
}

uint64_t sub_261138C54()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_261138D98, v5, v4);
}

uint64_t sub_261138D98()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics);
  *(v0 + 201) = 1;

  v3 = sub_26115A374();

  v4 = *(v1 + OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer);
  *(v1 + OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer) = v3;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(v0 + 112);
    sub_26115AD44();
    v6 = sub_26115AD54();
    v7 = sub_26115B824();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 112);
    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261107000, v6, v7, "PASUISourceViewPresenter delegate is nil in activate", v12, 2u);
      MEMORY[0x2666FA930](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
  }

  v13 = *(v0 + 80);
  v14 = v13 + OBJC_IVAR___PASUIGuardianViewPresenter_flowController;
  *(v0 + 160) = *(v13 + OBJC_IVAR___PASUIGuardianViewPresenter_flowController);
  v15 = *(v14 + 8);
  *(v0 + 168) = v15;
  ObjectType = swift_getObjectType();
  *(v0 + 176) = ObjectType;
  sub_261140BB0(&qword_27FE819F8);
  swift_unknownObjectRetain();
  sub_26115ABD4();
  v17 = [*(v13 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController) viewController];
  *(v0 + 184) = v17;
  v18 = *(v13 + OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider);

  sub_26115A2D4();

  v19 = *(v0 + 40);
  v20 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v19);
  (*(v20 + 24))(v17, v19, v20);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v21 = *(MEMORY[0x277D43568] + 4);
  v22 = swift_task_alloc();
  *(v0 + 192) = v22;
  *v22 = v0;
  v22[1] = sub_26113905C;

  return MEMORY[0x2821A4AC8](ObjectType, v15);
}

uint64_t sub_26113905C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26113917C, v4, v3);
}

uint64_t sub_26113917C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[15];
  v5 = v0[13];

  sub_26115ABA4();
  sub_26115ABB4();
  swift_unknownObjectRelease();
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B834();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_261107000, v6, v7, "PASUISourceViewPresenter activated", v8, 2u);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[11];
  v12 = v0[12];

  (*(v12 + 8))(v10, v11);

  v13 = v0[1];
  v14 = v0[23];

  return v13(v14);
}

uint64_t sub_261139450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_2611394EC, v5, v4);
}

uint64_t sub_2611394EC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_261115C18;
  v8 = v0[4];
  v9 = v0[2];

  return PASUISourceViewPresenter.activate(withTemplate:)(v9);
}

uint64_t sub_2611395B0()
{
  v1[5] = v0;
  v2 = sub_26115AD64();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_26115B7A4();
  v1[10] = sub_26115B794();
  v6 = sub_26115B774();
  v1[11] = v6;
  v1[12] = v5;

  return MEMORY[0x2822009F8](sub_2611396B0, v6, v5);
}

uint64_t sub_2611396B0()
{
  v1 = v0[9];
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B834();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter flowDidReset", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[5];

  v9 = *(v7 + 8);
  v9(v5, v6);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = v0[8];
    sub_26115AD44();
    v11 = sub_26115AD54();
    v12 = sub_26115B824();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261107000, v11, v12, "PASUISourceViewPresenter delegate is nil in flowDidReset", v17, 2u);
      MEMORY[0x2666FA930](v17, -1, -1);
    }

    v9(v14, v16);
  }

  v18 = swift_task_alloc();
  v0[13] = v18;
  *v18 = v0;
  v18[1] = sub_2611398BC;
  v19 = v0[5];

  return sub_261139AA0();
}

uint64_t sub_2611398BC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_2611399DC, v4, v3);
}

uint64_t sub_2611399DC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v4 + OBJC_IVAR___PASUIGuardianViewPresenter_flowController;
  v6 = *(v4 + OBJC_IVAR___PASUIGuardianViewPresenter_flowController);
  v7 = *(v5 + 8);
  swift_getObjectType();
  sub_26115ABA4();
  sub_26115ABB4();
  swift_unknownObjectRelease();

  v8 = v0[1];

  return v8();
}

uint64_t sub_261139AA0()
{
  v1[7] = v0;
  v2 = sub_26115AD64();
  v1[8] = v2;
  v3 = *(v2 - 8);
  v1[9] = v3;
  v4 = *(v3 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = sub_26115B7A4();
  v1[13] = sub_26115B794();
  v6 = sub_26115B774();
  v1[14] = v6;
  v1[15] = v5;

  return MEMORY[0x2822009F8](sub_261139BA4, v6, v5);
}

uint64_t sub_261139BA4()
{
  v1 = v0[11];
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B804();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter dismissPresentedViewController if exists", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];

  v9 = *(v7 + 8);
  v0[16] = v9;
  v9(v5, v6);
  v10 = *(v8 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  v0[17] = v10;
  v11 = [v10 viewController];
  v12 = [v11 presentedViewController];
  v0[18] = v12;

  if (v12)
  {
    v13 = v0[12];
    v0[19] = sub_26115B794();
    v14 = swift_task_alloc();
    v0[20] = v14;
    *(v14 + 16) = v12;
    v15 = *(MEMORY[0x277D859E0] + 4);
    v16 = swift_task_alloc();
    v0[21] = v16;
    *v16 = v0;
    v16[1] = sub_261139E7C;

    return MEMORY[0x2822007B8]();
  }

  else
  {
    v17 = v0[13];

    v18 = v0[17];
    v19 = v0[10];
    v20 = v0[11];
    v21 = *(v0[7] + OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider);

    sub_26115A2D4();

    v22 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
    v23 = [v18 viewController];
    (*(v22 + 24))();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_261139E7C()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v8 = *v0;

  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_261139FDC, v6, v5);
}

uint64_t sub_261139FDC()
{
  v1 = v0[13];
  v2 = v0[10];

  sub_26115AD44();
  v3 = sub_26115AD54();
  v4 = sub_26115B804();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[18];
  v7 = v0[16];
  v9 = v0[9];
  v8 = v0[10];
  v10 = v0[8];
  if (v5)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261107000, v3, v4, "PASUISourceViewPresenter dismissed presentedViewController for card", v11, 2u);
    MEMORY[0x2666FA930](v11, -1, -1);
  }

  v7(v8, v10);
  v12 = v0[17];
  v13 = v0[10];
  v14 = v0[11];
  v15 = *(v0[7] + OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider);

  sub_26115A2D4();

  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v0[5]);
  v17 = [v12 viewController];
  (*(v16 + 24))();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t _s23ProximityAppleIDSetupUI24PASUISourceViewPresenterC12handleCancelyyF_0()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81968, &qword_261160470);
  v0 = *(*(v29 - 8) + 64);
  v1 = MEMORY[0x28223BE20](v29);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = (&v27 - v3);
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  sub_26115AD44();
  v13 = sub_26115AD54();
  v14 = sub_26115B834();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_261107000, v13, v14, "PASUISourceViewPresenter flowDidCancel", v15, 2u);
    MEMORY[0x2666FA930](v15, -1, -1);
  }

  v16 = *(v6 + 8);
  v16(v12, v5);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v17 = sub_26115AD54();
    v18 = sub_26115B824();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261107000, v17, v18, "PASUISourceViewPresenter delegate is nil in flowDidCancel", v19, 2u);
      MEMORY[0x2666FA930](v19, -1, -1);
    }

    v16(v10, v5);
  }

  sub_26111CF88();
  v20 = swift_allocError();
  *v21 = 3;
  *v4 = v20;
  swift_storeEnumTagMultiPayload();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_26110CE78(v4, v28, &qword_27FE81968, &qword_261160470);
    v24 = objc_allocWithZone(sub_26115A8A4());
    v25 = sub_26115A894();
    [v23 proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  return sub_26110CEE0(v4, &qword_27FE81968, &qword_261160470);
}

uint64_t PASUISourceViewPresenter.setTemplate(_:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  sub_26115B7A4();
  v2[18] = sub_26115B794();
  v7 = sub_26115B774();
  v2[19] = v7;
  v2[20] = v6;

  return MEMORY[0x2822009F8](sub_26113A5E4, v7, v6);
}

uint64_t sub_26113A5E4()
{
  v1 = v0[13];
  v2 = *(v0[14] + OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider);

  sub_26115A2D4();

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v5 = sub_26112B474(0, &qword_27FE80FA8, 0x277D02880);
  v6 = MEMORY[0x277D435B8];
  v0[10] = v5;
  v0[11] = v6;
  v0[7] = v1;
  v7 = *(MEMORY[0x277D43588] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_26113A700;

  return MEMORY[0x2821A4B28](v0 + 7, v3, v4);
}

uint64_t sub_26113A700()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v8 = *v1;
  (*v1)[22] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_26113A81C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_2611181F0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_26113A81C()
{
  v24 = v0;
  v1 = *(v0 + 176);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v4 = v1;
  v5 = sub_26115AD54();
  v6 = sub_26115B814();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 176);
    v8 = *(v0 + 128);
    v22 = *(v0 + 136);
    v9 = *(v0 + 120);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    *(v0 + 96) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v13 = sub_26115B6B4();
    v15 = sub_26111C268(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_261107000, v5, v6, "Failed to set PASUISourceViewPresenter message session: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2666FA930](v11, -1, -1);
    MEMORY[0x2666FA930](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v17 = *(v0 + 128);
    v16 = *(v0 + 136);
    v18 = *(v0 + 120);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 136);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26113ABA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113AC40, v5, v4);
}

uint64_t sub_26113AC40()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  v0[6] = _Block_copy(v3);
  v5 = v4;
  v6 = v2;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_261118748;
  v8 = v0[4];
  v9 = v0[2];

  return PASUISourceViewPresenter.setTemplate(_:)(v9);
}

void sub_26113AD04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v9 = a1;
  v4 = OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView;
  v5 = *(v2 + OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView);
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = *(v2 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  v7 = sub_26113AD84(&v9, a2, MEMORY[0x277CE11C8], MEMORY[0x277CE11C0]);
  v8 = *(v3 + v4);
  *(v3 + v4) = v7;
}

id sub_26113AD84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_26115B204();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a3 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v5 mainView];
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v62 = v5;
    v20 = [v19 subviews];
    sub_26112B474(0, &qword_27FE819F0, 0x277D75D18);
    v21 = sub_26115B754();

    v60 = a1;
    v61 = a3;
    v59[2] = v13;
    if (v21 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_26115B9A4())
    {
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x2666FA050](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v24 removeFromSuperview];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    a3 = v61;
    v5 = v62;
    a1 = v60;
  }

  swift_unknownObjectRelease();
  sub_26115B0E4();
  (*(v14 + 16))(v17, a1, a3);
  v27 = sub_26115B0C4();
  sub_26115B1F4();
  sub_26115B0A4();
  v28 = sub_26115AF94();
  v30 = sub_26115B0B4();
  if ((*v29 & v28) != 0)
  {
    *v29 &= ~v28;
  }

  v30(v63, 0);
  result = [v27 view];
  if (result)
  {
    v32 = result;
    [v5 addChildViewController_];
    [objc_msgSend(v5 mainView)];
    swift_unknownObjectRelease();
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    if (v33)
    {
      v34 = v33;
      swift_unknownObjectRetain();
      [v27 didMoveToParentViewController_];
      swift_unknownObjectRelease();
    }

    [v32 setTranslatesAutoresizingMaskIntoConstraints_];
    v62 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_261160400;
    v36 = [v32 topAnchor];
    v37 = [v5 mainView];
    v38 = v5;
    v61 = v27;
    v39 = [v37 mainContentGuide];
    swift_unknownObjectRelease();
    v40 = [v39 topAnchor];

    v41 = [v36 constraintGreaterThanOrEqualToAnchor_];
    *(v35 + 32) = v41;
    v42 = [v32 bottomAnchor];
    v43 = [objc_msgSend(v38 mainView)];
    swift_unknownObjectRelease();
    v44 = [v43 bottomAnchor];

    v45 = [v42 constraintLessThanOrEqualToAnchor_];
    *(v35 + 40) = v45;
    v46 = [v32 leadingAnchor];
    v47 = [objc_msgSend(v38 mainView)];
    swift_unknownObjectRelease();
    v48 = [v47 leadingAnchor];

    v49 = [v46 constraintEqualToAnchor_];
    *(v35 + 48) = v49;
    v50 = [v32 trailingAnchor];
    v51 = [objc_msgSend(v38 mainView)];
    swift_unknownObjectRelease();
    v52 = [v51 trailingAnchor];

    v53 = [v50 constraintEqualToAnchor_];
    *(v35 + 56) = v53;
    v54 = [v32 centerYAnchor];
    v55 = [objc_msgSend(v38 mainView)];
    swift_unknownObjectRelease();
    v56 = [v55 centerYAnchor];

    v57 = [v54 constraintEqualToAnchor_];
    *(v35 + 64) = v57;
    sub_26112B474(0, &qword_27FE81050, 0x277CCAAD0);
    v58 = sub_26115B744();

    [v62 activateConstraints_];

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26113B4B4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  [v4 setTitle_];
  [v4 setSubtitle_];
  [v4 setAttributedSubtitle_];
  [v4 setDismissalType_];
  [v4 setActivityStatusWithText_];
  v5 = [v4 actions];
  sub_26112B474(0, &qword_27FE819E8, 0x277D432F0);
  v6 = sub_26115B754();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_10:

    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1Tm(a1, v11);
    (*(v12 + 8))(v4, v11, v12);
    sub_26111BED4(a1, v14);
    v13 = OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter;
    swift_beginAccess();
    sub_261140B40(v14, v2 + v13);
    swift_endAccess();
    return;
  }

  v7 = sub_26115B9A4();
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2666FA050](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      [v4 removeAction_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

id PASUISourceViewPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t PASUISourceViewPresenter.present(step:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_26115AD64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  swift_unknownObjectRetain();
  v15 = sub_26115AD54();
  v16 = sub_26115B834();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v31 = v11;
    v18 = v17;
    v30 = swift_slowAlloc();
    v33 = a2;
    v34 = v30;
    *v18 = 136446210;
    v32 = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v19 = sub_26115B6B4();
    v29 = v10;
    v21 = sub_26111C268(v19, v20, &v34);

    *(v18 + 4) = v21;
    _os_log_impl(&dword_261107000, v15, v16, "PASUISourceViewPresenter present step %{public}s", v18, 0xCu);
    v22 = v30;
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2666FA930](v22, -1, -1);
    MEMORY[0x2666FA930](v18, -1, -1);

    (*(v31 + 8))(v14, v29);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v23 = sub_26115B7D4();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  sub_26115B7A4();
  swift_unknownObjectRetain();
  v24 = v3;
  v25 = sub_26115B794();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  v26[5] = a1;
  v26[6] = a2;
  sub_261112D1C(0, 0, v9, &unk_261160458, v26);
}

uint64_t sub_26113BA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[54] = a5;
  v6[55] = a6;
  v6[53] = a4;
  v7 = *(*(sub_26115B204() - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v8 = sub_26115AD64();
  v6[57] = v8;
  v9 = *(v8 - 8);
  v6[58] = v9;
  v10 = *(v9 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();
  sub_26115B7A4();
  v6[62] = sub_26115B794();
  v12 = sub_26115B774();
  v6[63] = v12;
  v6[64] = v11;

  return MEMORY[0x2822009F8](sub_26113BBBC, v12, v11);
}

uint64_t sub_26113BBBC()
{
  v1 = (v0[53] + OBJC_IVAR___PASUIGuardianViewPresenter_flowController);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(MEMORY[0x277D43570] + 4);
  v6 = swift_task_alloc();
  v0[65] = v6;
  *v6 = v0;
  v6[1] = sub_26113BC84;
  v8 = v0[54];
  v7 = v0[55];

  return MEMORY[0x2821A4AE0](v8, v7, ObjectType, v2);
}

uint64_t sub_26113BC84()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 512);
  v6 = *(v2 + 504);
  if (v0)
  {
    v7 = sub_26113C74C;
  }

  else
  {
    v7 = sub_26113BDC0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26113BDC0()
{
  v53 = v0;
  *(v0 + 392) = *(v0 + 432);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819D0, &qword_261160940);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 488);
    sub_261110928((v0 + 104), v0 + 64);
    sub_26115AD44();
    sub_26111BED4(v0 + 64, v0 + 144);
    v2 = sub_26115AD54();
    v3 = sub_26115B804();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 488);
    v6 = *(v0 + 456);
    v7 = *(v0 + 464);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v52 = v9;
      *v8 = 136446210;
      sub_26111BED4(v0 + 144, v0 + 304);
      v10 = sub_26115B6B4();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1((v0 + 144));
      v13 = sub_26111C268(v10, v12, &v52);

      *(v8 + 4) = v13;
      _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter has viewBuilder: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x2666FA930](v9, -1, -1);
      MEMORY[0x2666FA930](v8, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 144));
    }

    v21 = *(v7 + 8);
    v21(v5, v6);
    v22 = *(v0 + 88);
    v23 = *(v0 + 96);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 64), v22);
    (*(v23 + 16))(v22, v23);
    if (*(v0 + 56) == 1)
    {
      v24 = *(v0 + 448);
      v25 = *(v0 + 16);
      v27 = *(v0 + 88);
      v26 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 64), v27);
      *(v0 + 416) = (*(*(v26 + 8) + 8))(v27);
      v28 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81228, &qword_26115E618));
      v29 = sub_26115B0D4();
      *(v0 + 536) = v29;
      sub_26115B1F4();
      sub_26115B0A4();
      v30 = sub_26115AF94();
      v32 = sub_26115B0B4();
      if ((*v31 & v30) != 0)
      {
        *v31 &= ~v30;
      }

      v32(v0 + 344, 0);
      v33 = swift_task_alloc();
      *(v0 + 544) = v33;
      *v33 = v0;
      v33[1] = sub_26113C37C;
      v34 = *(v0 + 424);

      return sub_26113C9E0(v29, v25);
    }

    else
    {
      v35 = *(v0 + 480);
      sub_261110928((v0 + 16), v0 + 184);
      sub_26115AD44();
      sub_26111BED4(v0 + 184, v0 + 224);
      v36 = sub_26115AD54();
      v37 = sub_26115B804();
      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 480);
      v41 = *(v0 + 456);
      v40 = *(v0 + 464);
      if (v38)
      {
        v51 = *(v0 + 480);
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v52 = v43;
        *v42 = 136446210;
        sub_26111BED4(v0 + 224, v0 + 264);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819E0, &unk_261160950);
        v44 = sub_26115B6B4();
        v46 = v45;
        __swift_destroy_boxed_opaque_existential_1((v0 + 224));
        v47 = sub_26111C268(v44, v46, &v52);

        *(v42 + 4) = v47;
        _os_log_impl(&dword_261107000, v36, v37, "PASUISourceViewPresenter viewBuilder presents card %{public}s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x2666FA930](v43, -1, -1);
        MEMORY[0x2666FA930](v42, -1, -1);

        v48 = v51;
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1((v0 + 224));
        v48 = v39;
      }

      v21(v48, v41);
      v49 = swift_task_alloc();
      *(v0 + 552) = v49;
      *v49 = v0;
      v49[1] = sub_26113C53C;
      v50 = *(v0 + 424);

      return sub_261139AA0();
    }
  }

  else
  {
    v14 = *(v0 + 496);

    *(v0 + 136) = 0;
    *(v0 + 120) = 0u;
    *(v0 + 104) = 0u;
    sub_26110CEE0(v0 + 104, &qword_27FE819D8, &qword_261160948);
    v16 = *(v0 + 480);
    v15 = *(v0 + 488);
    v17 = *(v0 + 472);
    v18 = *(v0 + 448);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_26113C37C()
{
  v1 = *v0;
  v2 = *(*v0 + 544);
  v6 = *v0;

  v3 = *(v1 + 512);
  v4 = *(v1 + 504);

  return MEMORY[0x2822009F8](sub_26113C49C, v4, v3);
}

uint64_t sub_26113C49C()
{
  v1 = v0[67];
  v2 = v0[62];

  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[59];
  v6 = v0[56];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26113C53C()
{
  v1 = *v0;
  v2 = *(*v0 + 552);
  v6 = *v0;

  v3 = *(v1 + 512);
  v4 = *(v1 + 504);

  return MEMORY[0x2822009F8](sub_26113C65C, v4, v3);
}

uint64_t sub_26113C65C()
{
  v1 = v0[62];
  v2 = v0[53];

  v4 = v0[11];
  v3 = v0[12];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 8, v4);
  v5 = (*(*(v3 + 8) + 8))(v4);
  sub_26113AD04(v5, v6);

  sub_26113B4B4(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v8 = v0[60];
  v7 = v0[61];
  v9 = v0[59];
  v10 = v0[56];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26113C74C()
{
  v32 = v0;
  v1 = *(v0 + 528);
  v2 = *(v0 + 496);
  v3 = *(v0 + 472);
  v4 = *(v0 + 432);

  sub_26115AD44();
  swift_unknownObjectRetain();
  v5 = v1;
  v6 = sub_26115AD54();
  v7 = sub_26115B834();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 528);
    v9 = *(v0 + 464);
    v30 = *(v0 + 472);
    v10 = *(v0 + 456);
    v29 = *(v0 + 432);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136446466;
    *(v0 + 376) = v29;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v13 = sub_26115B6B4();
    v15 = sub_26111C268(v13, v14, &v31);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v0 + 408) = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v17 = sub_26115B6B4();
    v19 = sub_26111C268(v17, v18, &v31);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_261107000, v6, v7, "PASUISourceViewPresenter did not present %{public}s.\n%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666FA930](v12, -1, -1);
    MEMORY[0x2666FA930](v11, -1, -1);

    (*(v9 + 8))(v30, v10);
  }

  else
  {
    v21 = *(v0 + 464);
    v20 = *(v0 + 472);
    v22 = *(v0 + 456);

    (*(v21 + 8))(v20, v22);
  }

  v24 = *(v0 + 480);
  v23 = *(v0 + 488);
  v25 = *(v0 + 472);
  v26 = *(v0 + 448);

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_26113C9E0(uint64_t a1, char a2)
{
  *(v3 + 168) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = sub_26115AD64();
  *(v3 + 72) = v4;
  v5 = *(v4 - 8);
  *(v3 + 80) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  sub_26115B7A4();
  *(v3 + 120) = sub_26115B794();
  v8 = sub_26115B774();
  *(v3 + 128) = v8;
  *(v3 + 136) = v7;

  return MEMORY[0x2822009F8](sub_26113CAFC, v8, v7);
}

uint64_t sub_26113CAFC()
{
  if (*(v0 + 168) == 1)
  {
    v1 = *(v0 + 112);
    sub_26115AD44();
    v2 = sub_26115AD54();
    v3 = sub_26115B804();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_261107000, v2, v3, "PASUISourceViewPresenter is presenting a modal view controller without a nav controller", v4, 2u);
      MEMORY[0x2666FA930](v4, -1, -1);
    }

    v5 = *(v0 + 112);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 56);

    (*(v7 + 8))(v5, v6);
    [v8 setModalInPresentation_];
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v10 = sub_26113D050;
LABEL_23:
    v9[1] = v10;
    v54 = *(v0 + 64);

    return sub_261139AA0();
  }

  v11 = *(*(v0 + 64) + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController);
  *(v0 + 152) = v11;
  v12 = [v11 viewController];
  v13 = [v12 presentedViewController];

  if (!v13)
  {
LABEL_11:
    v25 = [v11 viewController];
    v13 = [v25 presentedViewController];

    if (v13)
    {
      v26 = [v13 navigationController];
      if (v26)
      {
        v27 = v26;
        v28 = *(v0 + 120);
        v29 = *(v0 + 96);

        sub_26115AD44();
        v30 = sub_26115AD54();
        v31 = sub_26115B834();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_261107000, v30, v31, "PASUISourceViewPresenter is already presenting a view controller, but should be presenting a nav controller.", v32, 2u);
          MEMORY[0x2666FA930](v32, -1, -1);
        }

        v33 = *(v0 + 96);
        v34 = *(v0 + 72);
        v35 = *(v0 + 80);
        v36 = *(v0 + 56);

        (*(v35 + 8))(v33, v34);
        [v27 pushViewController:v36 animated:0];

        goto LABEL_16;
      }
    }

    v47 = *(v0 + 88);
    sub_26115AD44();
    v48 = sub_26115AD54();
    v49 = sub_26115B804();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_261107000, v48, v49, "PASUISourceViewPresenter presenting modal nav controller", v50, 2u);
      MEMORY[0x2666FA930](v50, -1, -1);
    }

    v52 = *(v0 + 80);
    v51 = *(v0 + 88);
    v53 = *(v0 + 72);

    (*(v52 + 8))(v51, v53);
    v9 = swift_task_alloc();
    *(v0 + 160) = v9;
    *v9 = v0;
    v10 = sub_26113D2B8;
    goto LABEL_23;
  }

  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    goto LABEL_11;
  }

  v15 = v14;
  v16 = *(v0 + 120);
  v17 = *(v0 + 104);

  sub_26115AD44();
  v18 = sub_26115AD54();
  v19 = sub_26115B804();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_261107000, v18, v19, "PASUISourceViewPresenter reusing modal nav controller", v20, 2u);
    MEMORY[0x2666FA930](v20, -1, -1);
  }

  v21 = *(v0 + 104);
  v22 = *(v0 + 72);
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);

  (*(v23 + 8))(v21, v22);
  [v15 pushViewController:v24 animated:0];
LABEL_16:

  v38 = *(v0 + 104);
  v37 = *(v0 + 112);
  v40 = *(v0 + 88);
  v39 = *(v0 + 96);
  v41 = *(v0 + 56);
  v42 = *(*(v0 + 64) + OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider);

  sub_26115A2D4();

  v43 = *(v0 + 40);
  v44 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v43);
  (*(v44 + 24))(v41, v43, v44);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_26113D050()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26113D170, v4, v3);
}

uint64_t sub_26113D170()
{
  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];

  v4 = [*(v2 + OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController) viewController];
  [v4 presentViewController:v3 animated:1 completion:0];

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[7];
  v10 = *(v0[8] + OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider);

  sub_26115A2D4();

  v11 = v0[5];
  v12 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v11);
  (*(v12 + 24))(v9, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_26113D2B8()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v6 = *v0;

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_26113D3D8, v4, v3);
}

uint64_t sub_26113D3D8()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[7];

  v4 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v4 setModalInPresentation_];
  v5 = [v1 viewController];
  [v5 presentViewController:v4 animated:1 completion:0];

  v7 = v0[13];
  v6 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[7];
  v11 = *(v0[8] + OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider);

  sub_26115A2D4();

  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v12);
  (*(v13 + 24))(v10, v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t sub_26113D550(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - v11;
  v13 = sub_26115B7D4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  sub_26115B7A4();
  v14 = a2;
  v15 = sub_26115B794();
  v16 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 2) = v15;
  *(v17 + 3) = v18;
  *(v17 + 4) = v14;
  (*(v5 + 32))(&v17[v16], v8, v4);
  sub_261112D1C(0, 0, v12, &unk_261160928, v17);
}

uint64_t sub_26113D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v5[12] = *(v7 + 64);
  v5[13] = swift_task_alloc();
  sub_26115B7A4();
  v5[14] = sub_26115B794();
  v9 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113D864, v9, v8);
}

uint64_t sub_26113D864()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];

  (*(v4 + 16))(v2, v6, v5);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v2, v5);
  v0[6] = sub_261140ABC;
  v0[7] = v9;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_26113432C;
  v0[5] = &block_descriptor_6;
  v10 = _Block_copy(v0 + 2);
  v11 = v0[7];

  [v7 dismissViewControllerAnimated:1 completion:v10];
  _Block_release(v10);

  v12 = v0[1];

  return v12();
}

uint64_t PASUISourceViewPresenter.flowDidComplete(with:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0) - 8) + 64) + 15;
  v2[6] = swift_task_alloc();
  v4 = sub_26115A224();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81968, &qword_261160470);
  v2[10] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v9 = sub_26115AD64();
  v2[13] = v9;
  v10 = *(v9 - 8);
  v2[14] = v10;
  v11 = *(v10 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = sub_26115B7A4();
  v2[17] = sub_26115B794();
  v13 = sub_26115B774();
  v2[18] = v13;
  v2[19] = v12;

  return MEMORY[0x2822009F8](sub_26113DBB0, v13, v12);
}

uint64_t sub_26113DBB0()
{
  v51 = v0;
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[4];
  sub_26115AD44();
  sub_26110CE78(v3, v2, &qword_27FE81968, &qword_261160470);
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v8 = v0[15];
  v10 = v0[12];
  v9 = v0[13];
  if (v6)
  {
    v12 = v0[10];
    v11 = v0[11];
    v49 = v0[13];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v50 = v14;
    *v13 = 136446210;
    v48 = v8;
    sub_26110CE78(v10, v11, &qword_27FE81968, &qword_261160470);
    v15 = sub_26115B6B4();
    v17 = v16;
    sub_26110CEE0(v10, &qword_27FE81968, &qword_261160470);
    v18 = sub_26111C268(v15, v17, &v50);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_261107000, v4, v5, "PASUISourceViewPresenter flowDidComplete with result %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2666FA930](v14, -1, -1);
    MEMORY[0x2666FA930](v13, -1, -1);

    (*(v7 + 8))(v48, v49);
  }

  else
  {

    sub_26110CEE0(v10, &qword_27FE81968, &qword_261160470);
    (*(v7 + 8))(v8, v9);
  }

  v19 = v0[5];
  sub_26110CE78(v0[4], v0[11], &qword_27FE81968, &qword_261160470);
  v20 = objc_allocWithZone(sub_26115A8A4());
  v21 = sub_26115A894();
  v0[20] = v21;
  v22 = *(v19 + OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer);
  v0[21] = v22;
  if (v22)
  {
    v23 = v21;
    v24 = v0[9];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v26 = swift_allocObject();
    v0[22] = v26;
    *(v26 + 16) = &unk_261160480;
    *(v26 + 24) = v25;
    v0[2] = &unk_26115DE10;
    v0[3] = v26;

    v27 = v23;
    sub_26115A214();
    v28 = *(MEMORY[0x277D435A8] + 4);
    v29 = swift_task_alloc();
    v0[23] = v29;
    *v29 = v0;
    v29[1] = sub_26113E000;
    v30 = v0[9];

    return MEMORY[0x2821A4B98](v0 + 2, v30);
  }

  else
  {
    v31 = v0[17];

    v32 = v0[20];
    v34 = v0[15];
    v33 = v0[16];
    v35 = v0[11];
    v36 = v0[12];
    v37 = v0[9];
    v39 = v0[5];
    v38 = v0[6];
    v40 = sub_26115B7D4();
    (*(*(v40 - 8) + 56))(v38, 1, 1, v40);
    v41 = v32;
    v42 = v39;
    v43 = sub_26115B794();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = v42;
    v44[5] = v41;
    sub_261112D1C(0, 0, v38, &unk_261160498, v44);

    v46 = v0[1];

    return v46();
  }
}

uint64_t sub_26113E000()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v5 = *(*v0 + 72);
  v6 = *(*v0 + 64);
  v7 = *(*v0 + 56);
  v11 = *v0;

  (*(v6 + 8))(v5, v7);

  v8 = *(v1 + 152);
  v9 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_26113E1C4, v9, v8);
}

uint64_t sub_26113E1C4()
{
  v1 = v0[17];

  v2 = v0[20];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[9];
  v9 = v0[5];
  v8 = v0[6];
  v10 = sub_26115B7D4();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = v2;
  v12 = v9;
  v13 = sub_26115B794();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = v12;
  v14[5] = v11;
  sub_261112D1C(0, 0, v8, &unk_261160498, v14);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26113E34C()
{
  v1 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81008, &unk_261160930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115D860;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000261163730;
  sub_26115A874();
  v3 = sub_26115AAA4();
  v4 = MEMORY[0x277D837D0];
  v5 = MEMORY[0x277D435B0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v6;
  sub_2611107D0(inited);
  swift_setDeallocating();
  sub_26110CEE0(inited + 32, &qword_27FE80E50, &qword_26115E190);
  v7 = sub_26115A884();
  if (v7)
  {
    v8 = v7;
    swift_getErrorValue();
    v10 = v0[23];
    v9 = v0[24];
    v11 = v0[25];
    v12 = sub_26115BA34();
    v14 = v13;
    v0[16] = v4;
    v0[17] = v5;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v0[15] = 0;
    v0[16] = 0;
    v0[17] = 0;
  }

  v0[13] = v12;
  v0[14] = v14;
  v0[26] = 0xD00000000000001ALL;
  v0[27] = 0x8000000261163820;
  v0[21] = v4;
  v0[22] = v5;
  v0[18] = 0;
  v0[19] = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81028, &qword_26115E200);
  v15 = sub_26115B634();

  sub_26110CEE0((v0 + 18), &qword_27FE81030, &qword_26115E208);
  sub_26110CEE0((v0 + 13), &qword_27FE81030, &qword_26115E208);
  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_26113E554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_26115AD64();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  sub_26115B7A4();
  v5[10] = sub_26115B794();
  v10 = sub_26115B774();
  v5[11] = v10;
  v5[12] = v9;

  return MEMORY[0x2822009F8](sub_26113E648, v10, v9);
}

uint64_t sub_26113E648()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = v0[9];
    sub_26115AD44();
    v3 = sub_26115AD54();
    v4 = sub_26115B824();
    v5 = os_log_type_enabled(v3, v4);
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    if (v5)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_261107000, v3, v4, "PASUISourceViewPresenter delegate is nil", v9, 2u);
      MEMORY[0x2666FA930](v9, -1, -1);
    }

    (*(v7 + 8))(v6, v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_26113E7E4;
  v12 = v0[5];

  return sub_261139AA0();
}

uint64_t sub_26113E7E4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 96);
  v4 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_26113E904, v4, v3);
}

uint64_t sub_26113E904()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t PASUISourceViewPresenter.stepDidRequestCancel(_:)()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113EA04, v3, v2);
}

uint64_t sub_26113EA04()
{
  v2 = v0[2];
  v1 = v0[3];

  _s23ProximityAppleIDSetupUI24PASUISourceViewPresenterC12handleCancelyyF_0();
  v3 = v0[1];

  return v3();
}

uint64_t PASUISourceViewPresenter.stepDidRequestReset(_:)()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26113EB18;

  return sub_2611395B0();
}

uint64_t sub_26113EB18()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26110DB34, v5, v4);
}

uint64_t PASUISourceViewPresenter.handleReset()()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26113EB18;

  return sub_2611395B0();
}

uint64_t sub_26113ED00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return PASUISourceViewPresenter.flowDidComplete(with:)(a1);
}

uint64_t sub_26113ED98()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26113EB18;

  return sub_2611395B0();
}

uint64_t sub_26113EE44()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26113EA04, v3, v2);
}

uint64_t sub_26113EEDC()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26110E430;

  return sub_2611395B0();
}

uint64_t sub_26113EF8C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "resenterActivated";
  }

  else
  {
    v2 = "noNavigationController";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "resenterActivated";
  }

  else
  {
    v4 = "noNavigationController";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26115B9F4();
  }

  return v5 & 1;
}

uint64_t sub_26113F030()
{
  v1 = *v0;
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_26113F0A8()
{
  *v0;
  sub_26115B704();
}

uint64_t sub_26113F10C()
{
  v1 = *v0;
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_26113F180@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26115B9D4();

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

void sub_26113F1E0(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "resenterActivated";
  }

  else
  {
    v2 = "noNavigationController";
  }

  *a1 = 0xD000000000000021;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_26113F218(uint64_t a1, uint64_t a2)
{
  v4 = sub_261140520();

  return MEMORY[0x2821A49D8](a1, a2, v4);
}

id sub_26113F274(void *a1)
{
  v1 = [a1 contentView];

  return v1;
}

id PRXCardContentViewController.mainView.getter()
{
  v1 = [v0 contentView];

  return v1;
}

Swift::Void __swiftcall PRXCardContentViewController.setActivityStatus(text:)(Swift::String_optional text)
{
  if (text.value._object)
  {
    v2 = sub_26115B674();
    [v1 showActivityIndicatorWithStatus_];
  }

  else
  {

    [v1 hideActivityIndicator];
  }
}

void sub_26113F35C(id a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_26115B6A4();
    v5 = a1;
    v4 = sub_26115B674();
    [v5 showActivityIndicatorWithStatus_];
  }

  else
  {

    [a1 hideActivityIndicator];
  }
}

uint64_t sub_26113F41C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_26110DB28;

  return v7();
}

uint64_t sub_26113F504(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_26110DB28;

  return v8();
}

uint64_t sub_26113F5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_26110CE78(a3, v25 - v11, &qword_27FE818E0, &qword_26115E4A0);
  v13 = sub_26115B7D4();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_26110CEE0(v12, &qword_27FE818E0, &qword_26115E4A0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26115B7C4();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_26115B774();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_26115B6C4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);

    return v23;
  }

LABEL_8:
  sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_26113F8E8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___PASUIGuardianViewPresenter_cardContentView] = 0;
  v13 = &v1[OBJC_IVAR___PASUIGuardianViewPresenter_cardAdapter];
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *&v1[OBJC_IVAR___PASUIGuardianViewPresenter_flowTimer] = 0;
  v14 = OBJC_IVAR___PASUIGuardianViewPresenter__messageSessionProvider;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v1[v14] = sub_26115A2E4();
  v18 = OBJC_IVAR___PASUIGuardianViewPresenter__authenticator;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v1[v18] = sub_26115A2E4();
  v22 = OBJC_IVAR___PASUIGuardianViewPresenter__viewControllerProvider;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v1[v22] = sub_26115A2E4();
  v26 = OBJC_IVAR___PASUIGuardianViewPresenter__analyticsProvider;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v1[v26] = sub_26115A2E4();
  *&v1[OBJC_IVAR___PASUIGuardianViewPresenter____lazy_storage___analytics] = 0;
  sub_26115AD44();
  v30 = sub_26115AD54();
  v31 = sub_26115B834();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_261107000, v30, v31, "PAS=== Welcome to ProximityAppleIDSetup - Source ===PAS", v32, 2u);
    MEMORY[0x2666FA930](v32, -1, -1);
  }

  v33 = *(v6 + 8);
  v33(v12, v5);
  sub_26115AD44();
  v34 = sub_26115AD54();
  v35 = sub_26115B834();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_261107000, v34, v35, "PASUISourceViewPresenter initWithSharingViewController", v36, 2u);
    MEMORY[0x2666FA930](v36, -1, -1);
  }

  v33(v10, v5);
  sub_26115A344();
  sub_26115A324();
  sub_26115A304();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v47[0] = v37;
  sub_26115A334();

  sub_26110CEE0(v47, &qword_27FE80F98, &qword_261160420);
  *&v2[OBJC_IVAR___PASUIGuardianViewPresenter_parentViewController] = a1;
  v38 = sub_26115A864();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = a1;
  v42 = sub_26115A854();
  v43 = &v2[OBJC_IVAR___PASUIGuardianViewPresenter_flowController];
  v44 = MEMORY[0x277D434A0];
  *v43 = v42;
  v43[1] = v44;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  return objc_msgSendSuper2(&v46, sel_init);
}

uint64_t sub_26113FD24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26113FD6C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110DB28;

  return sub_26113BA80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26113FE34()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26113FE6C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111B874;

  return sub_26113E32C(v2);
}

uint64_t sub_26113FF00()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26113FF38()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26113FF80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_26113E554(a1, v4, v5, v7, v6);
}

unint64_t sub_261140044()
{
  result = qword_27FE81970;
  if (!qword_27FE81970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81970);
  }

  return result;
}

unint64_t sub_26114009C()
{
  result = qword_27FE81978;
  if (!qword_27FE81978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81978);
  }

  return result;
}

unint64_t sub_2611400F4()
{
  result = qword_27FE81980;
  if (!qword_27FE81980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81980);
  }

  return result;
}

unint64_t sub_26114014C()
{
  result = qword_27FE81988;
  if (!qword_27FE81988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81988);
  }

  return result;
}

unint64_t sub_2611401A0()
{
  result = qword_27FE81990;
  if (!qword_27FE81990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81990);
  }

  return result;
}

uint64_t sub_261140250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_2611402AC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t getEnumTagSinglePayload for PASUISourceViewPresenter.AnalyticsEvent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PASUISourceViewPresenter.AnalyticsEvent(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2611404CC()
{
  result = qword_27FE819A0;
  if (!qword_27FE819A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819A0);
  }

  return result;
}

unint64_t sub_261140520()
{
  result = qword_27FE819A8;
  if (!qword_27FE819A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819A8);
  }

  return result;
}

uint64_t sub_261140578()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_26113ABA4(v2, v3, v4);
}

uint64_t sub_261140630(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110DB28;

  return sub_26111BFF4(a1, v5);
}

uint64_t sub_2611406E8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261139450(v2, v3, v4);
}

unint64_t sub_26114079C()
{
  result = qword_27FE819B8;
  if (!qword_27FE819B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819B8);
  }

  return result;
}

unint64_t sub_2611407F0()
{
  result = qword_27FE819C0;
  if (!qword_27FE819C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE819C0);
  }

  return result;
}

uint64_t sub_26114084C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261140924(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110CAC4;

  return sub_26113D75C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_261140A28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261140ABC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819C8, &qword_261160918) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26115B784();
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261140B40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE819B0, &qword_261160908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_261140BB0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PASUISourceViewPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261140BF0()
{
  result = qword_27FE81A00;
  if (!qword_27FE81A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81A00);
  }

  return result;
}

uint64_t sub_261140C90@<X0>(uint64_t a1@<X8>)
{
  sub_26115B6F4();
  sub_2611123E4();
  result = sub_26115B314();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_261140D00@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26115B074();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A08, &qword_2611609F8) + 44);
  sub_26115AE84();
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A10, &qword_261160A00) + 36)) = 257;
  v3 = (v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A18, &qword_261160A08) + 36));
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A20, &qword_261160A10) + 28);
  v5 = *MEMORY[0x277CDF420];
  v6 = sub_26115AE44();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  return result;
}

uint64_t sub_261140E54(uint64_t a1)
{
  v2 = sub_26115AE44();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x2666F96B0](v5);
}

unint64_t sub_261140F24()
{
  result = qword_27FE81A28;
  if (!qword_27FE81A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE81A30, &qword_261160A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81A28);
  }

  return result;
}

uint64_t PASFlowStepProxiedAuth.buildView()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81A40, &unk_261160A50);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v23[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-1] - v6;
  v8 = type metadata accessor for PASUIAppleIDAuthContextProvider();
  v9 = [objc_allocWithZone(v8) init];
  v23[3] = v8;
  v23[4] = &off_287399F58;
  v23[0] = v9;
  v10 = objc_allocWithZone(type metadata accessor for PASUISignInViewModel());
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v23, v8);
  v12 = *(*(v8 - 1) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;

  v18 = sub_261142EF8(v17, v16, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  v23[0] = v18;
  v19 = sub_2611430EC();
  sub_26115B414();
  (*(v1 + 16))(v5, v7, v0);
  v23[0] = &type metadata for PASUISignInView;
  v23[1] = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_26115B574();

  (*(v1 + 8))(v7, v0);
  return v20;
}