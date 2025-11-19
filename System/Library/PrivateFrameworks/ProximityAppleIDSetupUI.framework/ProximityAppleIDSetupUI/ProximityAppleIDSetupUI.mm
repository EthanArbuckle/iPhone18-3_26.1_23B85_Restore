void sub_26110AC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    v10 = [v9 description];
    NSLog(&cfstr_UnableToCopyPa.isa);

    objc_end_catch();
    JUMPOUT(0x26110AC64);
  }

  _Unwind_Resume(exception_object);
}

void sub_26110B8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t PASFlowStepManateeRepair.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE80BC0, qword_26115D0E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = (MEMORY[0x28223BE20])();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = sub_26115A9B4();
  v10 = type metadata accessor for PASUIManateeRepairHelperProvider();
  v11 = swift_allocObject();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v11 + 16) = sub_26115A2E4();
  *(v11 + 24) = v9 & 1;
  v20 = v10;
  v21 = sub_26110CC54(&qword_27FE80BD0, type metadata accessor for PASUIManateeRepairHelperProvider);
  v18 = v0;
  v19 = v11;
  v15 = sub_26110BD68();

  sub_26115B414();
  sub_26110BDBC(&v18);
  (*(v2 + 16))(v6, v8, v1);
  v18 = &type metadata for PASUIManateeRepairView;
  v19 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v16;
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

unint64_t sub_26110BD68()
{
  result = qword_27FE80BD8;
  if (!qword_27FE80BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80BD8);
  }

  return result;
}

uint64_t sub_26110BDEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_26115A9B4();
  v5 = result;
  if (result)
  {
    v6 = type metadata accessor for PASUIProgressViewProxCardAdapter();
    swift_allocObject();

    result = sub_2611519E8(v7);
    *(a1 + 24) = v6;
    *(a1 + 32) = &off_28739AD30;
    *a1 = result;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 40) = (v5 & 1) == 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26110BEB0(uint64_t a1, int a2)
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

uint64_t sub_26110BED0(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26110BF20(uint64_t *a1, int a2)
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

uint64_t sub_26110BF68(uint64_t result, int a2, int a3)
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

uint64_t sub_26110BFE0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C50, &qword_26115D1F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C58, &qword_26115D1F8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v26 - v12);
  v14 = *v0;
  if (sub_26115A9B4())
  {
    sub_26110C9A8(v1, &v27);
    v15 = swift_allocObject();
    v16 = v28;
    v15[1] = v27;
    v15[2] = v16;
    v15[3] = v29;
    v17 = v13 + *(sub_26115AF04() + 20);
    sub_26115B7B4();
    *v13 = &unk_26115D218;
    v13[1] = v15;
    sub_26110CE78(v13, v9, &qword_27FE80C58, &qword_26115D1F8);
    swift_storeEnumTagMultiPayload();
    sub_26110CC9C(&qword_27FE80C60, &qword_27FE80C58, &qword_26115D1F8, sub_26110CC00);
    sub_26110CC9C(&qword_27FE80C78, &qword_27FE80C48, &unk_261160100, sub_26110CD50);
    sub_26115B104();
    v18 = v13;
    v19 = &qword_27FE80C58;
    v20 = &qword_26115D1F8;
  }

  else
  {
    sub_26110C9A8(v1, &v27);
    v21 = swift_allocObject();
    v22 = v28;
    v21[1] = v27;
    v21[2] = v22;
    v21[3] = v29;
    v23 = &v5[*(v2 + 36)];
    v24 = *(sub_26115AF04() + 20);

    sub_26115B7B4();
    *v23 = &unk_26115D208;
    *(v23 + 1) = v21;
    *v5 = sub_26110C934;
    *(v5 + 1) = v14;
    v5[16] = 0;
    *(v5 + 3) = sub_26110C93C;
    *(v5 + 4) = 0;
    *(v5 + 5) = sub_26110C970;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    v5[80] = 1;
    *(v5 + 11) = MEMORY[0x277D84F90];
    sub_26110CE78(v5, v9, &qword_27FE80C48, &unk_261160100);
    swift_storeEnumTagMultiPayload();
    sub_26110CC9C(&qword_27FE80C60, &qword_27FE80C58, &qword_26115D1F8, sub_26110CC00);
    sub_26110CC9C(&qword_27FE80C78, &qword_27FE80C48, &unk_261160100, sub_26110CD50);
    sub_26115B104();
    v18 = v5;
    v19 = &qword_27FE80C48;
    v20 = &unk_261160100;
  }

  return sub_26110CEE0(v18, v19, v20);
}

uint64_t sub_26110C3D4(uint64_t a1)
{
  v1[2] = a1;
  sub_26115B7A4();
  v1[3] = sub_26115B794();
  v3 = sub_26115B774();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26110C46C, v3, v2);
}

uint64_t sub_26110C46C()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *MEMORY[0x277CF0098];
  v4 = *(MEMORY[0x277D434C0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_26110C520;

  return MEMORY[0x2821A49B8](v3, v1 + 1);
}

uint64_t sub_26110C520()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110DB34, v4, v3);
}

uint64_t sub_26110C640(uint64_t a1)
{
  v1[2] = a1;
  sub_26115B7A4();
  v1[3] = sub_26115B794();
  v3 = sub_26115B774();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_26110C6D8, v3, v2);
}

uint64_t sub_26110C6D8()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  v3 = *MEMORY[0x277CF0098];
  v4 = *(MEMORY[0x277D434C0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_26110C78C;

  return MEMORY[0x2821A49B8](v3, v1 + 1);
}

uint64_t sub_26110C78C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110C8AC, v4, v3);
}

uint64_t sub_26110C8AC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26110C93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  sub_261110B98(v6, &v5);
  return v5;
}

uint64_t sub_26110C970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a1;
  v7[1] = a2;
  v6[0] = a3;
  v6[1] = a4;
  sub_261110C40(v7, v6, &v5);
  return v5;
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

uint64_t sub_26110CA30()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110CAC4;

  return sub_26110C640(v0 + 16);
}

uint64_t sub_26110CAC4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
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

unint64_t sub_26110CC00()
{
  result = qword_27FE80C68;
  if (!qword_27FE80C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C68);
  }

  return result;
}

uint64_t sub_26110CC54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26110CC9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26110CC54(&qword_27FE80C70, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26110CD50()
{
  result = qword_27FE80C80;
  if (!qword_27FE80C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C80);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26110CDE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26110DB28;

  return sub_26110C3D4(v0 + 16);
}

uint64_t sub_26110CE78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26110CEE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL sub_26110CF88(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_26110CFE0(uint64_t a1, id *a2)
{
  result = sub_26115B684();
  *a2 = 0;
  return result;
}

uint64_t sub_26110D058(uint64_t a1, id *a2)
{
  v3 = sub_26115B694();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_26110D0D8@<X0>(uint64_t *a1@<X8>)
{
  sub_26115B6A4();
  v2 = sub_26115B674();

  *a1 = v2;
  return result;
}

uint64_t sub_26110D130@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26115B6A4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_26110D15C(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D28, type metadata accessor for AATermsEntry);
  v3 = sub_26110CC54(&qword_27FE80D30, type metadata accessor for AATermsEntry);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D218(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D38, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext);
  v3 = sub_26110CC54(&qword_27FE80D40, type metadata accessor for AKAppleIDAuthenticationAppProvidedContext);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D2D4(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D48, type metadata accessor for AIDAServiceType);
  v3 = sub_26110CC54(&unk_27FE80D50, type metadata accessor for AIDAServiceType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26115B674();

  *a2 = v5;
  return result;
}

uint64_t sub_26110D3D8(uint64_t a1)
{
  v2 = sub_26110CC54(&qword_27FE80D18, type metadata accessor for Key);
  v3 = sub_26110CC54(&qword_27FE80D20, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_26110D494()
{
  v1 = *v0;
  v2 = sub_26115B6A4();
  v3 = MEMORY[0x2666F9E10](v2);

  return v3;
}

uint64_t sub_26110D4D0()
{
  v1 = *v0;
  sub_26115B6A4();
  sub_26115B704();
}

uint64_t sub_26110D524()
{
  v1 = *v0;
  sub_26115B6A4();
  sub_26115BA94();
  sub_26115B704();
  v2 = sub_26115BAB4();

  return v2;
}

uint64_t sub_26110D598(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26115B6A4();
  v6 = v5;
  if (v4 == sub_26115B6A4() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26115B9F4();
  }

  return v9 & 1;
}

void sub_26110D670(uint64_t a1, unint64_t *a2)
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

unint64_t sub_26110D6C0()
{
  result = qword_27FE80CA8;
  if (!qword_27FE80CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80CB0, &qword_26115D2C8);
    sub_26110CC9C(&qword_27FE80C60, &qword_27FE80C58, &qword_26115D1F8, sub_26110CC00);
    sub_26110CC9C(&qword_27FE80C78, &qword_27FE80C48, &unk_261160100, sub_26110CD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80CA8);
  }

  return result;
}

id sub_26110DB70(void *a1)
{
  result = [a1 aa_firstName];
  if (result)
  {
    v3 = result;
    result = [a1 aa_lastName];
    if (result)
    {
      v4 = result;
      v5 = objc_opt_self();
      v6 = [objc_opt_self() mainScreen];
      [v6 scale];
      v8 = v7;

      v9 = [v5 monogramWithFirstName:v3 lastName:v4 diameter:40.0 scale:v8];
      v10 = sub_26115A204();

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t PASFlowStepSafetySettings.buildView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DC0, &unk_26115D890);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_26115A2E4();
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DC8, &qword_26115D8A0);
  sub_26115B514();
  v14 = v22;
  v13 = v23;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DD0, qword_26115D8A8);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_26115A2E4();
  v22 = v0;
  v23 = v12;
  v24 = v14;
  v25 = v13;
  v26 = v18;
  v19 = sub_26110DEB8();
  sub_26115B414();

  (*(v2 + 16))(v6, v8, v1);
  v22 = &type metadata for PASUISafetySettingsView;
  v23 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v20;
}

unint64_t sub_26110DEB8()
{
  result = qword_27FE80DD8;
  if (!qword_27FE80DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80DD8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26110DF44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26110DF8C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_26110E000@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v12 = v1[3];
  v13 = v5;
  v6 = v1[4];
  v7 = swift_allocObject();
  v8 = *(v1 + 1);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  *(v7 + 48) = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DE0, ":e");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  sub_26110CE78(&v13, v11, &qword_27FE80DC8, &qword_26115D8A0);
  sub_26110CE78(&v12, v11, &qword_27FE80DE8, &unk_26115D990);

  result = sub_26115B514();
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_26110E62C;
  a1[3] = v7;
  return result;
}

uint64_t sub_26110E138@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C58, &qword_26115D1F8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v22[-v9 - 8];
  if (a1)
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[2];
    v23 = a2[3];
    v24 = v13;
    v14 = a2[4];
    v21 = v8;
    v15 = swift_allocObject();
    v16 = *(a2 + 1);
    *(v15 + 16) = *a2;
    *(v15 + 32) = v16;
    *(v15 + 48) = a2[4];
    *(v15 + 56) = a1;
    v17 = *(sub_26115AF04() + 20);
    v18 = a1;

    sub_26110CE78(&v24, v22, &qword_27FE80DC8, &qword_26115D8A0);
    sub_26110CE78(&v23, v22, &qword_27FE80DE8, &unk_26115D990);

    sub_26115B7B4();
    *v10 = &unk_26115D9A8;
    v10[1] = v15;
    sub_26110E730(v10, a3);
    return (*(v21 + 56))(a3, 0, 1, v6);
  }

  else
  {
    v20 = *(v8 + 56);

    return v20(a3, 1, 1, v6);
  }
}

uint64_t sub_26110E340(uint64_t *a1, uint64_t a2)
{
  v2[2] = sub_26115B7A4();
  v2[3] = sub_26115B794();
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[2];
  v8 = *a1;
  v9 = swift_task_alloc();
  v2[4] = v9;
  *v9 = v2;
  v9[1] = sub_26110E430;

  return sub_26110FB6C(a2, v8, v7, v6, v5);
}

uint64_t sub_26110E430()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26110C8AC, v5, v4);
}

uint64_t sub_26110E56C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_26110E5D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26110E634()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26110E694()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return sub_26110E340((v0 + 16), v2);
}

uint64_t sub_26110E730(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C58, &qword_26115D1F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26110E7C8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

unint64_t sub_26110E83C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26115BA94();
  sub_26115B704();
  v6 = sub_26115BAB4();

  return sub_26110E988(a1, a2, v6);
}

unint64_t sub_26110E8B4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_26115B914();

  return sub_26110EA40(a1, v5);
}

unint64_t sub_26110E8F8(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26115B6A4();
  sub_26115BA94();
  sub_26115B704();
  v4 = sub_26115BAB4();

  return sub_26110EB08(a1, v4);
}

unint64_t sub_26110E988(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26115B9F4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26110EA40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_261110A7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2666FA000](v9, a1);
      sub_261110AD8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_26110EB08(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26115B6A4();
      v9 = v8;
      if (v7 == sub_26115B6A4() && v9 == v10)
      {
        break;
      }

      v12 = sub_26115B9F4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_26110EC0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E30, &qword_26115D9F8);
    v3 = sub_26115B9B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v4, &v13, &qword_27FE80E20, &qword_26115D9E8);
      v5 = v13;
      v6 = v14;
      result = sub_26110E83C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261110684(&v15, (v3[7] + 32 * result));
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

id sub_26110ED3C(uint64_t a1)
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E18, &qword_26115D9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115D860;
  *(inited + 32) = 0x5265674172657375;
  v9 = inited + 32;
  *(inited + 72) = MEMORY[0x277D83E88];
  *(inited + 40) = 0xEC00000065676E61;
  *(inited + 48) = a1;
  sub_26110EC0C(inited);
  swift_setDeallocating();
  sub_26110CEE0(v9, &qword_27FE80E20, &qword_26115D9E8);
  v10 = sub_26115B604();

  [v7 setAdditionalParameters_];

  sub_26115AD44();
  v11 = v7;
  v12 = sub_26115AD54();
  v13 = sub_26115B804();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    v16 = [v11 additionalParameters];
    if (v16)
    {
      v17 = v16;
      v18 = sub_26115B614();
    }

    else
    {
      v18 = 0;
    }

    v23 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E28, &qword_26115D9F0);
    v19 = sub_26115B6B4();
    v21 = sub_26111C268(v19, v20, &v24);

    *(v14 + 4) = v21;
    _os_log_impl(&dword_261107000, v12, v13, "Created circle context with parameters: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x2666FA930](v15, -1, -1);
    MEMORY[0x2666FA930](v14, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t sub_26110F050(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = sub_26115AD64();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_26115B7A4();
  v2[25] = sub_26115B794();
  v7 = sub_26115B774();
  v2[26] = v7;
  v2[27] = v6;

  return MEMORY[0x2822009F8](sub_26110F150, v7, v6);
}

uint64_t sub_26110F150()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[20];
    v4 = v1;
    sub_26115AD44();
    v5 = v3;
    v6 = sub_26115AD54();
    v7 = sub_26115B804();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[20];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&dword_261107000, v6, v7, "Performing circle request with context: %@", v9, 0xCu);
      sub_26110CEE0(v10, &qword_27FE81EB0, &qword_26115F960);
      MEMORY[0x2666FA930](v10, -1, -1);
      MEMORY[0x2666FA930](v9, -1, -1);
    }

    v12 = v0[24];
    v13 = v0[21];
    v14 = v0[22];
    v15 = v0[20];

    v16 = *(v14 + 8);
    v0[28] = v16;
    v0[29] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v12, v13);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_26110F4EC;
    v17 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E10, qword_261161350);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26110E56C;
    v0[13] = &block_descriptor;
    v0[14] = v17;
    [v4 performWithContext:v15 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v18 = v0[25];

    v19 = sub_26115A424();
    sub_261110570(&qword_27FE80E08, MEMORY[0x277D433D0]);
    v20 = swift_allocError();
    *v21 = 0xD000000000000029;
    v21[1] = 0x8000000261163330;
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D433C8], v19);
    v22 = objc_allocWithZone(MEMORY[0x277D08230]);
    v23 = sub_26115A1D4();

    v24 = [v22 initWithLoadSuccess:0 error:v23 userInfo:0];
    v26 = v0[23];
    v25 = v0[24];

    v27 = v0[1];

    return v27(v24);
  }
}

uint64_t sub_26110F4EC()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26110F5F4, v2, v1);
}

uint64_t sub_26110F5F4()
{
  v1 = v0[25];
  v2 = v0[23];

  v3 = v0[18];
  sub_26115AD44();
  v4 = v3;
  v5 = sub_26115AD54();
  v6 = sub_26115B804();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_261107000, v5, v6, "Finished performing circle request with response: %@", v7, 0xCu);
    sub_26110CEE0(v8, &qword_27FE81EB0, &qword_26115F960);
    MEMORY[0x2666FA930](v8, -1, -1);
    MEMORY[0x2666FA930](v7, -1, -1);
  }

  v11 = v0[28];
  v10 = v0[29];
  v12 = v0[23];
  v13 = v0[21];
  v14 = v0[19];

  v11(v12, v13);
  v16 = v0[23];
  v15 = v0[24];

  v17 = v0[1];

  return v17(v4);
}

uint64_t sub_26110F774(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v7 = sub_26115AD54();
  v8 = sub_26115B804();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_261107000, v7, v8, "Successfully configured safety settings", v9, 2u);
    MEMORY[0x2666FA930](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  sub_261110570(&qword_27FE80DF0, MEMORY[0x277D434D8]);
  return sub_26115A7F4();
}

uint64_t sub_26110F920(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v9 = a1;
  v10 = sub_26115AD54();
  v11 = sub_26115B814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v20[1] = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v20[2] = a1;
    v21 = v14;
    *v13 = 136315138;
    v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E00, &unk_26115D9D0);
    v16 = sub_26115B6B4();
    v18 = sub_26111C268(v16, v17, &v21);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_261107000, v10, v11, "Failed to configure safety settings with error: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2666FA930](v14, -1, -1);
    MEMORY[0x2666FA930](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  sub_261110570(&qword_27FE80DF0, MEMORY[0x277D434D8]);
  return sub_26115A7F4();
}

uint64_t sub_26110FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_26115AD64();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v9 = sub_26115A3D4();
  v5[25] = v9;
  v10 = *(v9 - 8);
  v5[26] = v10;
  v11 = *(v10 + 64) + 15;
  v5[27] = swift_task_alloc();
  sub_26115B7A4();
  v5[28] = sub_26115B794();
  v13 = sub_26115B774();
  v5[29] = v13;
  v5[30] = v12;

  return MEMORY[0x2822009F8](sub_26110FCF4, v13, v12);
}

uint64_t sub_26110FCF4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[14];
  sub_26115AA64();
  v5 = sub_26115A3B4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (v7)
  {
    v8 = v0[17];
    sub_26115A2D4();
    v9 = v0[5];
    v10 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v9);
    v11 = MEMORY[0x2666F8FF0](v5, v7, v9, v10);

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if ((v11 - 1) <= 1)
    {
      v12 = v0[24];
      sub_26115AD44();
      v13 = sub_26115AD54();
      v14 = sub_26115B834();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_261107000, v13, v14, "PASUISafetySettingsView showSafetySettings", v15, 2u);
        MEMORY[0x2666FA930](v15, -1, -1);
      }

      v16 = v0[24];
      v17 = v0[18];
      v18 = v0[19];
      v20 = v0[15];
      v19 = v0[16];
      v21 = v0[13];

      v22 = *(v18 + 8);
      v0[31] = v22;
      v22(v16, v17);
      v23 = sub_26110ED3C(v11);
      v0[32] = v23;
      [v21 setNavigationBarHidden:0 animated:1];
      v24 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];
      [v24 setPresentationType_];
      v0[7] = v20;
      v0[8] = v19;
      v0[11] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80DF8, &qword_26115D9B8);
      sub_26115B534();
      v0[9] = v20;
      v0[10] = v19;
      sub_26115B524();
      v25 = v0[12];
      v0[33] = v25;
      v26 = swift_task_alloc();
      v0[34] = v26;
      *v26 = v0;
      v26[1] = sub_261110158;

      return sub_26110F050(v25, v23);
    }

    v29 = v0 + 21;
    v35 = v0[21];
    v36 = v0[28];

    sub_26115AD44();
    v31 = sub_26115AD54();
    LOBYTE(v32) = sub_26115B834();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "PASUISafetySettingsView Account is adult. Not showing Safety Settings";
      goto LABEL_12;
    }
  }

  else
  {
    v29 = v0 + 20;
    v28 = v0[20];
    v30 = v0[28];

    sub_26115AD44();
    v31 = sub_26115AD54();
    v32 = sub_26115B834();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "PASUISafetySettingsView altDSID missing. Not showing Safety Settings";
LABEL_12:
      _os_log_impl(&dword_261107000, v31, v32, v34, v33, 2u);
      MEMORY[0x2666FA930](v33, -1, -1);
    }
  }

  v37 = *v29;
  v38 = v0[18];
  v39 = v0[19];
  v40 = v0[14];

  (*(v39 + 8))(v37, v38);
  sub_26115AA74();
  sub_261110570(&qword_27FE80DF0, MEMORY[0x277D434D8]);
  sub_26115A7F4();
  v41 = v0[27];
  v42 = v0[23];
  v43 = v0[24];
  v45 = v0[21];
  v44 = v0[22];
  v46 = v0[20];

  v47 = v0[1];

  return v47();
}

uint64_t sub_261110158(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 280) = a1;

  v5 = *(v2 + 240);
  v6 = *(v2 + 232);

  return MEMORY[0x2822009F8](sub_2611102A0, v6, v5);
}

uint64_t sub_2611102A0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 224);
  v3 = *(v0 + 184);

  sub_26115AD44();
  v4 = v1;
  v5 = sub_26115AD54();
  v6 = sub_26115B834();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 280);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 141558274;
    *(v8 + 4) = 1752392040;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_261107000, v5, v6, "PASUISafetySettingsView showSafetySettings got response %{mask.hash}@", v8, 0x16u);
    sub_26110CEE0(v9, &qword_27FE81EB0, &qword_26115F960);
    MEMORY[0x2666FA930](v9, -1, -1);
    MEMORY[0x2666FA930](v8, -1, -1);
  }

  v11 = *(v0 + 280);
  v12 = *(v0 + 248);
  v13 = *(v0 + 184);
  v14 = *(v0 + 144);
  v15 = *(v0 + 152);

  v12(v13, v14);
  if (([v11 loadSuccess] & 1) == 0)
  {
    v16 = *(v0 + 176);
    sub_26115AD44();
    v17 = sub_26115AD54();
    v18 = sub_26115B814();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_261107000, v17, v18, "PASUISafetySettingsView showSafetySettings response: load fail", v19, 2u);
      MEMORY[0x2666FA930](v19, -1, -1);
    }

    v20 = *(v0 + 248);
    v21 = *(v0 + 176);
    v22 = *(v0 + 144);

    v20(v21, v22);
  }

  v23 = [*(v0 + 280) success];
  v24 = *(v0 + 280);
  v25 = *(v0 + 256);
  v26 = *(v0 + 112);
  if (v23)
  {
    sub_26110F774(*(v0 + 112));
  }

  else
  {
    v27 = [*(v0 + 280) error];
    sub_26110F920(v27, v26);

    v25 = v24;
    v24 = v27;
  }

  v28 = *(v0 + 216);
  v29 = *(v0 + 184);
  v30 = *(v0 + 192);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v33 = *(v0 + 160);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_261110570(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2611105C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_261110684(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_261110694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E60, &qword_26115DA30);
    v3 = sub_26115B9B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v4, v13, &qword_27FE80E68, &qword_26115DA38);
      result = sub_26110E8B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_261110684(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2611107D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E48, &unk_26115DA10);
    v3 = sub_26115B9B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v4, &v13, &qword_27FE80E50, &qword_26115E190);
      v5 = v13;
      v6 = v14;
      result = sub_26110E83C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_261110928(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_261110928(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_261110964(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_26115B9B4();
    v10 = a1 + 32;

    while (1)
    {
      sub_26110CE78(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_26110E8F8(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_261110684(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_261110B30()
{
  result = qword_27FE80E70;
  if (!qword_27FE80E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80E78, &unk_26115DA40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80E70);
  }

  return result;
}

void sub_261110B98(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if (v4)
  {
    sub_26115B954();

    MEMORY[0x2666F9DF0](v3, v4);
    v3 = sub_26115B6F4();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v3;
  a2[1] = v6;
}

uint64_t *sub_261110C40@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = result[1];
  v5 = a2[1];
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = 0;
    v11 = 0;
  }

  else
  {
    v7 = *a2;
    v8 = *result;
    sub_26115B954();

    MEMORY[0x2666F9DF0](v8, v4);
    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](v7, v5);
    v9 = sub_26115B6F4();
    v11 = v10;
  }

  *a3 = v9;
  a3[1] = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_SSSgA2AIegggo_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_261110D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261110DB0(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t sub_261110E34@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80E80, &qword_26115DBB8);
  v28 = *(v26 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v29 = v19 - v4;
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v2[6];
  v40 = v2[7];
  v39 = *(v2 + 4);
  v38 = v2[11];
  v9 = *(v2 + 80);
  *(v36 + 8) = *(v2 + 4);
  *&v34 = v5;
  *(&v34 + 1) = v6;
  *&v35 = v7;
  *(&v35 + 1) = v8;
  *&v36[0] = v40;
  *(&v36[1] + 1) = v38;
  v37 = v9;
  sub_2611122C8(v5);
  sub_2611122C8(v7);
  sub_26110CE78(&v40, v41, &qword_27FE80E88, &qword_26115DBC0);
  sub_26110CE78(&v39, v41, &qword_27FE80E90, &qword_26115DBC8);
  sub_26110CE78(&v38, v41, &qword_27FE80E98, &qword_26115DBD0);
  v32 = sub_26115B6F4();
  v33 = v10;
  v11 = *v2;
  v24 = v2[1];
  v25 = v11;
  v23 = *(v2 + 16);
  v22 = sub_26115A664();
  sub_2611122D8();
  sub_26115AE64();
  swift_getKeyPath();
  sub_26115AF54();

  v31 = v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EA8, &qword_26115DC08);
  v13 = sub_261112390();
  v20 = sub_2611123E4();
  v21 = sub_261112438();
  sub_26115B434();

  v41[2] = v36[0];
  v41[3] = v36[1];
  v42 = v37;
  v41[0] = v34;
  v41[1] = v35;
  sub_26111249C(v41);
  v14 = sub_26115B6F4();
  v19[1] = v15;
  v32 = v14;
  v33 = v15;
  sub_26115AE64();
  swift_getKeyPath();
  sub_26115AF54();

  v30 = v2;
  *&v34 = &type metadata for PASUIWelcomeControllerWrapper;
  *(&v34 + 1) = MEMORY[0x277D837D0];
  *&v35 = v12;
  *(&v35 + 1) = MEMORY[0x277CE0BD8];
  *&v36[0] = v13;
  *(&v36[0] + 1) = v20;
  *&v36[1] = v21;
  *(&v36[1] + 1) = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v16 = v26;
  v17 = v29;
  sub_26115B434();

  return (*(v28 + 8))(v17, v16);
}

uint64_t sub_2611112B8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EC8, &qword_26115DC40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED0, &qword_26115DC48);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v37 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v39 = &v37 - v16;
  v44[0] = sub_26115B6F4();
  v44[1] = v17;
  sub_26115AE04();
  v18 = sub_26115AE14();
  v38 = *(*(v18 - 8) + 56);
  v38(v6, 0, 1, v18);
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  sub_26115A664();
  sub_2611122D8();
  sub_26115AE54();
  sub_2611123E4();
  v22 = v39;
  sub_26115B564();
  v44[12] = sub_26115B6F4();
  v44[13] = v23;
  sub_26115ADF4();
  v38(v6, 0, 1, v18);
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  v24[3] = *(a1 + 32);
  v24[4] = v25;
  v26 = *(a1 + 80);
  v24[5] = *(a1 + 64);
  v24[6] = v26;
  v27 = *(a1 + 16);
  v24[1] = *a1;
  v24[2] = v27;
  sub_261112598(a1, v44);
  v28 = v40;
  sub_26115B564();
  v29 = v8[2];
  v30 = v41;
  v29(v41, v22, v7);
  v31 = v42;
  v32 = v28;
  v29(v42, v28, v7);
  v33 = v43;
  v29(v43, v30, v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED8, &unk_26115DC50);
  v29(&v33[*(v34 + 48)], v31, v7);
  v35 = v8[1];
  v35(v32, v7);
  v35(v22, v7);
  v35(v31, v7);
  return (v35)(v30, v7);
}

uint64_t sub_2611116CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_261111764, v6, v5);
}

uint64_t sub_261111764()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  sub_26115A664();
  sub_2611122D8();
  v0[6] = sub_26115AE54();
  v5 = *(MEMORY[0x277D43420] + 4);
  v8 = (*MEMORY[0x277D43420] + MEMORY[0x277D43420]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_26111184C;

  return v8();
}

uint64_t sub_26111184C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110DB34, v5, v4);
}

uint64_t sub_261111990@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261111A00@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80EC8, &qword_26115DC40);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED0, &qword_26115DC48);
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v37 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v40 = &v37 - v15;
  MEMORY[0x28223BE20](v14);
  v39 = &v37 - v16;
  v44[0] = sub_26115B6F4();
  v44[1] = v17;
  sub_26115AE04();
  v18 = sub_26115AE14();
  v38 = *(*(v18 - 8) + 56);
  v38(v6, 0, 1, v18);
  v19 = *a1;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  sub_26115A664();
  sub_2611122D8();
  sub_26115AE54();
  sub_2611123E4();
  v22 = v39;
  sub_26115B564();
  v44[12] = sub_26115B6F4();
  v44[13] = v23;
  sub_26115ADF4();
  v38(v6, 0, 1, v18);
  v24 = swift_allocObject();
  v25 = *(a1 + 48);
  v24[3] = *(a1 + 32);
  v24[4] = v25;
  v26 = *(a1 + 80);
  v24[5] = *(a1 + 64);
  v24[6] = v26;
  v27 = *(a1 + 16);
  v24[1] = *a1;
  v24[2] = v27;
  sub_261112598(a1, v44);
  v28 = v40;
  sub_26115B564();
  v29 = v8[2];
  v30 = v41;
  v29(v41, v22, v7);
  v31 = v42;
  v32 = v28;
  v29(v42, v28, v7);
  v33 = v43;
  v29(v43, v30, v7);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80ED8, &unk_26115DC50);
  v29(&v33[*(v34 + 48)], v31, v7);
  v35 = v8[1];
  v35(v32, v7);
  v35(v22, v7);
  v35(v31, v7);
  return (v35)(v30, v7);
}

uint64_t sub_261111E14(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17[-v7];
  v9 = sub_26115B7D4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_26115B7A4();
  sub_261112598(a1, v17);
  v10 = sub_26115B794();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  v13 = a1[3];
  *(v11 + 64) = a1[2];
  *(v11 + 80) = v13;
  v14 = a1[5];
  *(v11 + 96) = a1[4];
  *(v11 + 112) = v14;
  v15 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v15;
  sub_261112D1C(0, 0, v8, a3, v11);
}

uint64_t sub_261111F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_26115B7A4();
  v4[3] = sub_26115B794();
  v6 = sub_26115B774();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_261111FE8, v6, v5);
}

uint64_t sub_261111FE8()
{
  v1 = v0[2];
  v3 = *v1;
  v2 = v1[1];
  v4 = *(v1 + 16);
  sub_26115A664();
  sub_2611122D8();
  v0[6] = sub_26115AE54();
  v5 = *(MEMORY[0x277D43428] + 4);
  v8 = (*MEMORY[0x277D43428] + MEMORY[0x277D43428]);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2611120D0;

  return v8();
}

uint64_t sub_2611120D0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v7 = *v0;

  v4 = *(v1 + 40);
  v5 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_26110C8AC, v5, v4);
}

uint64_t sub_261112214@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261112284@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_261110E34(a1);
}

uint64_t sub_2611122C8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2611122D8()
{
  result = qword_27FE80EA0;
  if (!qword_27FE80EA0)
  {
    sub_26115A664();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EA0);
  }

  return result;
}

uint64_t sub_261112330@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_26115A614();
  *a2 = result & 1;
  return result;
}

uint64_t sub_261112360(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26115A624();
}

unint64_t sub_261112390()
{
  result = qword_27FE80EB0;
  if (!qword_27FE80EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EB0);
  }

  return result;
}

unint64_t sub_2611123E4()
{
  result = qword_27FE80EB8;
  if (!qword_27FE80EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EB8);
  }

  return result;
}

unint64_t sub_261112438()
{
  result = qword_27FE80EC0;
  if (!qword_27FE80EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80EA8, &qword_26115DC08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EC0);
  }

  return result;
}

uint64_t sub_2611124F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_26115A644();
  *a2 = result & 1;
  return result;
}

uint64_t sub_261112520(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_26115A654();
}

uint64_t sub_2611125D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110CAC4;

  return sub_261111F50(a1, v4, v5, v1 + 32);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_261112558();
  if (*(v0 + 40))
  {
    v4 = *(v0 + 48);
  }

  if (*(v0 + 56))
  {
    v5 = *(v0 + 64);
  }

  v6 = *(v0 + 88);

  v7 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_7Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_261112558();
  if (*(v0 + 56))
  {
    v5 = *(v0 + 64);
  }

  if (*(v0 + 72))
  {
    v6 = *(v0 + 80);
  }

  v7 = *(v0 + 104);

  v8 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2611127B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110DB28;

  return sub_2611116CC(a1, v4, v5, v1 + 32);
}

uint64_t sub_261112860()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80E80, &qword_26115DBB8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80EA8, &qword_26115DC08);
  sub_261112390();
  sub_2611123E4();
  sub_261112438();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t PASUIExtensionParameters.init(nonUIInfoProvider:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PASUIExtensionMain(_:)(void (*a1)(__int128 *__return_ptr))
{
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PASUIExtensionHostProxy();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  a1(&v13);
  v8 = xmmword_27FE858D8;
  xmmword_27FE858D8 = v13;
  qword_27FE858E8 = v14;
  qword_27FE858F0 = v7;
  swift_unknownObjectRetain();

  sub_261112B80(v8);
  sub_26115AD44();
  v9 = sub_26115AD54();
  v10 = sub_26115B7F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261107000, v9, v10, "PASUIExtensionMain extension is starting", v11, 2u);
    MEMORY[0x2666FA930](v11, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  type metadata accessor for PASUIAppExtension();
  sub_261112BCC();
  sub_26115A2B4();

  return swift_unknownObjectRelease();
}

uint64_t sub_261112B80(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_261112BCC()
{
  result = qword_27FE80EE0;
  if (!qword_27FE80EE0)
  {
    type metadata accessor for PASUIAppExtension();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80EE0);
  }

  return result;
}

uint64_t sub_261112C24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_261112C84(uint64_t *a1, int a2)
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

uint64_t sub_261112CCC(uint64_t result, int a2, int a3)
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

uint64_t sub_261112D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_26110CE78(a3, v27 - v11, &qword_27FE818E0, &qword_26115E4A0);
  v13 = sub_26115B7D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_26110CEE0(v12, &qword_27FE818E0, &qword_26115E4A0);
  }

  else
  {
    sub_26115B7C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_26115B774();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_26115B6C4() + 32;
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

      sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);

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

  sub_26110CEE0(a3, &qword_27FE818E0, &qword_26115E4A0);
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

ProximityAppleIDSetupUI::PASUITargetViewPresenterError_optional __swiftcall PASUITargetViewPresenterError.init(rawValue:)(Swift::String rawValue)
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

unint64_t PASUITargetViewPresenterError.rawValue.getter()
{
  v1 = 0x4179646165726C61;
  v2 = 0x7669746341746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0x636E614372657375;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_261113120()
{
  v1 = *v0;
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

uint64_t sub_261113204()
{
  *v0;
  *v0;
  sub_26115B704();
}

uint64_t sub_2611132D4()
{
  v1 = *v0;
  sub_26115BA94();
  sub_26115B704();

  return sub_26115BAB4();
}

void sub_2611133C0(unint64_t *a1@<X8>)
{
  v2 = 0xED00006576697463;
  v3 = 0x4179646165726C61;
  v4 = 0xE900000000000065;
  v5 = 0x7669746341746F6ELL;
  if (*v1 != 2)
  {
    v5 = 0x636E614372657375;
    v4 = 0xED000064656C6C65;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000261162890;
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

uint64_t sub_26111346C(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B70](a1, v2);
}

uint64_t sub_2611134A8(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B88](a1, v2);
}

uint64_t sub_2611134E4(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B78](a1, v2);
}

uint64_t sub_261113520(uint64_t a1)
{
  v2 = sub_26111D858();

  return MEMORY[0x2821A4B80](a1, v2);
}

uint64_t sub_261113568(uint64_t a1)
{
  v2 = sub_26111D858();
  v3 = sub_26111D8AC();

  return MEMORY[0x2821A4B90](a1, v2, v3);
}

uint64_t sub_2611135B8(uint64_t a1)
{
  v2 = sub_26111CE84();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2611135F4(uint64_t a1)
{
  v2 = sub_26111CE84();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t PASUITargetViewPresenter.delegate.setter()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*PASUITargetViewPresenter.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___PASUIDependentViewPresenter_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_261113830;
}

void sub_261113830(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
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

uint64_t PASUITargetViewPresenter.shouldSignInForSelf.getter()
{
  v1 = *(v0 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  v2 = *(v0 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  swift_getObjectType();
  return sub_26115AC14() & 1;
}

uint64_t PASUITargetViewPresenter.shouldSignInForSelf.setter()
{
  v1 = *(v0 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  v2 = *(v0 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  swift_getObjectType();
  return sub_26115AC24();
}

uint64_t (*PASUITargetViewPresenter.shouldSignInForSelf.modify(uint64_t a1))(uint64_t *a1)
{
  v3 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  *a1 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  *(a1 + 8) = v3;
  *(a1 + 16) = swift_getObjectType();
  *(a1 + 24) = sub_26115AC14() & 1;
  return sub_261113AA0;
}

uint64_t sub_261113AA0(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v4 = *(a1 + 24);
  return sub_26115AC24();
}

uint64_t sub_261113ACC()
{
  v1 = OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics;
  if (*(v0 + OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics))
  {
    v2 = *(v0 + OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics);
  }

  else
  {
    v2 = sub_261113B34(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_261113B34(uint64_t a1)
{
  v2 = sub_26115A254();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider);

  sub_26115A2D4();

  __swift_project_boxed_opaque_existential_1Tm(&v16, v18);
  sub_26111DA1C();
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
  v16 = 0x746567726174;
  v17 = 0xE600000000000000;
  sub_26115A364();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  sub_26115A354();
  return v8;
}

id PASUITargetViewPresenter.init(navigationController:flowController:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v56 = a2;
  v57 = a3;
  v58 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &ObjectType - v11;
  swift_unknownObjectWeakInit();
  v13 = &v3[OBJC_IVAR___PASUIDependentViewPresenter_navigationController];
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  *&v3[OBJC_IVAR___PASUIDependentViewPresenter_flowTimer] = 0;
  v3[OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount] = 0;
  v14 = OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *&v3[v14] = sub_26115A2E4();
  v18 = OBJC_IVAR___PASUIDependentViewPresenter__authenticator;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  *&v3[v18] = sub_26115A2E4();
  v22 = OBJC_IVAR___PASUIDependentViewPresenter__deviceProvider;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v3[v22] = sub_26115A2E4();
  v26 = OBJC_IVAR___PASUIDependentViewPresenter__targetAppleIDExchanger;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F48, &qword_26115DD38);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  *&v3[v26] = sub_26115A2E4();
  v30 = OBJC_IVAR___PASUIDependentViewPresenter__accountStore;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F58, &qword_26115DD40);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *&v3[v30] = sub_26115A2E4();
  v34 = OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *&v3[v34] = sub_26115A2E4();
  *&v3[OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics] = 0;
  v38 = OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *&v3[v38] = sub_26115A2E4();
  sub_26115AD44();
  v42 = sub_26115AD54();
  v43 = sub_26115B834();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_261107000, v42, v43, "PAS=== Welcome to ProximityAppleIDSetup - Target ===PAS", v44, 2u);
    MEMORY[0x2666FA930](v44, -1, -1);
  }

  v45 = *(v6 + 8);
  v45(v12, v5);
  sub_26115AD44();
  v46 = sub_26115AD54();
  v47 = sub_26115B834();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_261107000, v46, v47, "PASUITargetViewPresenter init with nav and flow controller", v48, 2u);
    MEMORY[0x2666FA930](v48, -1, -1);
  }

  v45(v10, v5);
  sub_26115A344();
  sub_26115A324();
  sub_26115A314();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v60[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v60[0] = v49;
  sub_26115A334();

  sub_26110CEE0(v60, &qword_27FE80F98, &qword_261160420);
  swift_beginAccess();
  v50 = v58;
  sub_261114250(v58, v13);
  swift_endAccess();
  v51 = &v4[OBJC_IVAR___PASUIDependentViewPresenter_flowController];
  v52 = v57;
  *v51 = v56;
  *(v51 + 1) = v52;
  v59.receiver = v4;
  v59.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v59, sel_init);
  sub_26110CEE0(v50, &qword_27FE80FA0, &qword_26115DD70);
  return v53;
}

uint64_t sub_261114250(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FA0, &qword_26115DD70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id PASUITargetViewPresenter.init(navigationController:)(uint64_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  swift_unknownObjectWeakInit();
  v12 = &v1[OBJC_IVAR___PASUIDependentViewPresenter_navigationController];
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  *&v1[OBJC_IVAR___PASUIDependentViewPresenter_flowTimer] = 0;
  v1[OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount] = 0;
  v13 = OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *&v1[v13] = sub_26115A2E4();
  v17 = OBJC_IVAR___PASUIDependentViewPresenter__authenticator;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v1[v17] = sub_26115A2E4();
  v21 = OBJC_IVAR___PASUIDependentViewPresenter__deviceProvider;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v1[v21] = sub_26115A2E4();
  v25 = OBJC_IVAR___PASUIDependentViewPresenter__targetAppleIDExchanger;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F48, &qword_26115DD38);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *&v1[v25] = sub_26115A2E4();
  v29 = OBJC_IVAR___PASUIDependentViewPresenter__accountStore;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F58, &qword_26115DD40);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *&v1[v29] = sub_26115A2E4();
  v33 = OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  *&v1[v33] = sub_26115A2E4();
  *&v1[OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics] = 0;
  v37 = OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  *&v1[v37] = sub_26115A2E4();
  sub_26115AD44();
  v41 = sub_26115AD54();
  v42 = sub_26115B834();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_261107000, v41, v42, "PAS=== Welcome to ProximityAppleIDSetup - Target ===PAS", v43, 2u);
    MEMORY[0x2666FA930](v43, -1, -1);
  }

  v44 = *(v5 + 8);
  v44(v11, v4);
  sub_26115AD44();
  v45 = sub_26115AD54();
  v46 = sub_26115B834();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_261107000, v45, v46, "PASUITargetViewPresenter init with nav controller", v47, 2u);
    MEMORY[0x2666FA930](v47, -1, -1);
  }

  v44(v9, v4);
  sub_26115A344();
  sub_26115A324();
  sub_26115A314();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  v60[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  v60[0] = v48;
  sub_26115A334();

  sub_26110CEE0(v60, &qword_27FE80F98, &qword_261160420);
  sub_26111BED4(a1, v60);
  swift_beginAccess();
  sub_26111BF38(v60, v12);
  swift_endAccess();
  v49 = sub_26115A8C4();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_26115A8B4();
  v53 = &v2[OBJC_IVAR___PASUIDependentViewPresenter_flowController];
  v54 = MEMORY[0x277D434A8];
  *v53 = v52;
  v53[1] = v54;
  v59.receiver = v2;
  v59.super_class = ObjectType;
  v55 = objc_msgSendSuper2(&v59, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v55;
}

id PASUITargetViewPresenter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PASUITargetViewPresenter.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_26115AD64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v55 - v9;
  swift_unknownObjectWeakInit();
  v11 = &v0[OBJC_IVAR___PASUIDependentViewPresenter_navigationController];
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0;
  *&v0[OBJC_IVAR___PASUIDependentViewPresenter_flowTimer] = 0;
  v0[OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount] = 0;
  v12 = OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F18, &qword_26115DD20);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v0[v12] = sub_26115A2E4();
  v16 = OBJC_IVAR___PASUIDependentViewPresenter__authenticator;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F28, &qword_26115DD28);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v0[v16] = sub_26115A2E4();
  v20 = OBJC_IVAR___PASUIDependentViewPresenter__deviceProvider;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  *&v0[v20] = sub_26115A2E4();
  v24 = OBJC_IVAR___PASUIDependentViewPresenter__targetAppleIDExchanger;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F48, &qword_26115DD38);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *&v0[v24] = sub_26115A2E4();
  v28 = OBJC_IVAR___PASUIDependentViewPresenter__accountStore;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F58, &qword_26115DD40);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *&v0[v28] = sub_26115A2E4();
  v32 = OBJC_IVAR___PASUIDependentViewPresenter__analyticsProvider;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F68, &qword_26115DD48);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  *&v0[v32] = sub_26115A2E4();
  *&v0[OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics] = 0;
  v36 = OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F80, &unk_26115DD50);
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  *&v0[v36] = sub_26115A2E4();
  sub_26115AD44();
  v40 = sub_26115AD54();
  v41 = sub_26115B834();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_261107000, v40, v41, "PAS=== Welcome to ProximityAppleIDSetup - Target ===PAS", v42, 2u);
    MEMORY[0x2666FA930](v42, -1, -1);
  }

  v43 = *(v4 + 8);
  v43(v10, v3);
  sub_26115AD44();
  v44 = sub_26115AD54();
  v45 = sub_26115B834();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_261107000, v44, v45, "PASUITargetViewPresenter init", v46, 2u);
    MEMORY[0x2666FA930](v46, -1, -1);
  }

  v43(v8, v3);
  sub_26115A344();
  sub_26115A324();
  sub_26115A314();

  sub_26115A324();
  type metadata accessor for PASUIViewControllerProvider();
  *(swift_allocObject() + 16) = 0;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F88, &unk_261160410);
  *(&v58 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F90, &unk_26115DD60);
  *&v57 = v47;
  sub_26115A334();

  sub_26110CEE0(&v57, &qword_27FE80F98, &qword_261160420);
  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  swift_beginAccess();
  sub_26111BF38(&v57, v11);
  swift_endAccess();
  v48 = sub_26115A8C4();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_26115A8B4();
  v52 = &v1[OBJC_IVAR___PASUIDependentViewPresenter_flowController];
  v53 = MEMORY[0x277D434A8];
  *v52 = v51;
  v52[1] = v53;
  v56.receiver = v1;
  v56.super_class = ObjectType;
  return objc_msgSendSuper2(&v56, sel_init);
}

id PASUITargetViewPresenter.__deallocating_deinit()
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
    _os_log_impl(&dword_261107000, v11, v12, "PASUITargetViewPresenter deinit", v13, 2u);
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

uint64_t PASUITargetViewPresenter.activateAndPresentInitialStep(withTemplate:)(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_26115AD64();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = sub_26115B7A4();
  v2[19] = sub_26115B794();
  v7 = sub_26115B774();
  v2[20] = v7;
  v2[21] = v6;

  return MEMORY[0x2822009F8](sub_2611151A8, v7, v6);
}

uint64_t sub_2611151A8()
{
  v1 = v0[13];
  v2 = *(v0[14] + OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider);

  sub_26115A2D4();

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v5 = sub_26111BFA8();
  v6 = MEMORY[0x277D435B8];
  v0[10] = v5;
  v0[11] = v6;
  v0[7] = v1;
  v7 = *(MEMORY[0x277D43588] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_2611152B4;

  return MEMORY[0x2821A4B28](v0 + 7, v3, v4);
}

uint64_t sub_2611152B4()
{
  v2 = *v1;
  v3 = (*v1)[22];
  v8 = *v1;
  (*v1)[23] = v0;

  if (v0)
  {
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_2611156F8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v4 = v2[20];
    v5 = v2[21];
    v6 = sub_2611153D0;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2611153D0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[18];
  v0[24] = sub_26115B794();
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_261115474;
  v3 = v0[14];

  return sub_2611164E4();
}

uint64_t sub_261115474()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 144);
  v7 = *v0;

  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_2611155B0, v5, v4);
}

uint64_t sub_2611155B0()
{
  v1 = v0[24];
  v2 = v0[14];

  v4 = *(v2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v3 = *(v2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v5 = *(v2 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount);
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  v6 = v0[20];
  v7 = v0[21];

  return MEMORY[0x2822009F8](sub_26111566C, v6, v7);
}

uint64_t sub_26111566C()
{
  v1 = v0[19];
  v2 = v0[17];

  v3 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_2611156F8()
{
  v24 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v3 = v1;
  v4 = sub_26115AD54();
  v5 = sub_26115B814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 128);
    v22 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136446210;
    *(v0 + 96) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v12 = sub_26115B6B4();
    v14 = sub_26111C268(v12, v13, &v23);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_261107000, v4, v5, "Failed to activate PASUITargetViewPresenter with message session: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2666FA930](v10, -1, -1);
    MEMORY[0x2666FA930](v9, -1, -1);

    (*(v7 + 8))(v22, v8);
  }

  else
  {
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);
    v17 = *(v0 + 120);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 144);
  *(v0 + 192) = sub_26115B794();
  v19 = swift_task_alloc();
  *(v0 + 200) = v19;
  *v19 = v0;
  v19[1] = sub_261115474;
  v20 = *(v0 + 112);

  return sub_2611164E4();
}

uint64_t sub_261115AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261115B54, v5, v4);
}

uint64_t sub_261115B54()
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

  return PASUITargetViewPresenter.activateAndPresentInitialStep(withTemplate:)(v9);
}

uint64_t sub_261115C18(void *a1)
{
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v9 = *v1;

  (v4)[2](v4, a1);
  _Block_release(v4);

  v7 = *(v9 + 8);

  return v7();
}

uint64_t PASUITargetViewPresenter.activate(withTemplate:)(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261115E70, v7, v6);
}

uint64_t sub_261115E70()
{
  v1 = v0[13];
  v2 = *(v0[14] + OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider);

  sub_26115A2D4();

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v5 = sub_26111BFA8();
  v6 = MEMORY[0x277D435B8];
  v0[10] = v5;
  v0[11] = v6;
  v0[7] = v1;
  v7 = *(MEMORY[0x277D43588] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_261115F7C;

  return MEMORY[0x2821A4B28](v0 + 7, v3, v4);
}

uint64_t sub_261115F7C()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v8 = *v1;
  (*v1)[22] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_2611162B8;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_261116098;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261116098()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = swift_task_alloc();
  v0[23] = v1;
  *v1 = v0;
  v1[1] = sub_261116130;
  v2 = v0[14];

  return sub_2611164E4();
}

uint64_t sub_261116130()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 160);
  v4 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_261116250, v4, v3);
}

uint64_t sub_261116250()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2611162B8()
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
    _os_log_impl(&dword_261107000, v4, v5, "Failed to activate PASUITargetViewPresenter with message session: %{public}s", v9, 0xCu);
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
  v18[1] = sub_261116130;
  v19 = *(v0 + 112);

  return sub_2611164E4();
}

uint64_t sub_2611164E4()
{
  v1[9] = v0;
  v2 = sub_26115AD64();
  v1[10] = v2;
  v3 = *(v2 - 8);
  v1[11] = v3;
  v4 = *(v3 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_26115B7A4();
  v1[14] = sub_26115B794();
  v6 = sub_26115B774();
  v1[15] = v6;
  v1[16] = v5;

  return MEMORY[0x2822009F8](sub_2611165E4, v6, v5);
}

uint64_t sub_2611165E4()
{
  v1 = *(v0 + 72);
  *(v0 + 136) = sub_261113ACC();
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  v2 = *(MEMORY[0x277D433B0] + 4);
  v5 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  *v3 = v0;
  v3[1] = sub_2611166AC;

  return v5(v0 + 40);
}

uint64_t sub_2611166AC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = *(*v0 + 136);
  v7 = *v0;

  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_2611167F0, v5, v4);
}

uint64_t sub_2611167F0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter____lazy_storage___analytics);
  *(v0 + 56) = 1;
  *(v0 + 64) = 1;

  v3 = sub_26115A374();

  v4 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowTimer);
  *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowTimer) = v3;

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = *(v0 + 104);
    sub_26115AD44();
    v6 = sub_26115AD54();
    v7 = sub_26115B824();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    if (v8)
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261107000, v6, v7, "PASUITargetViewPresenter delegate is nil in activate", v12, 2u);
      MEMORY[0x2666FA930](v12, -1, -1);
    }

    (*(v11 + 8))(v9, v10);
  }

  v13 = (*(v0 + 72) + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  *(v0 + 152) = *v13;
  *(v0 + 160) = v13[1];
  *(v0 + 168) = swift_getObjectType();
  sub_26111DA74(&qword_27FE81048);
  swift_unknownObjectRetain();
  sub_26115AC44();
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_261116A1C;
  v15 = *(v0 + 72);

  return sub_2611170AC();
}

uint64_t sub_261116A1C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = *(MEMORY[0x277D43578] + 4);
  v5 = swift_task_alloc();
  v1[23] = v5;
  *v5 = v3;
  v5[1] = sub_261116B8C;
  v6 = v1[21];
  v7 = v1[20];
  v8 = v1[19];

  return MEMORY[0x2821A4AF0](v6, v7);
}

uint64_t sub_261116B8C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 128);
  v4 = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_261116CAC, v4, v3);
}

uint64_t sub_261116CAC()
{
  v1 = v0[14];
  v2 = v0[12];

  sub_26115AD44();
  v3 = sub_26115AD54();
  v4 = sub_26115B834();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_261107000, v3, v4, "PASUITargetViewPresenter activated", v5, 2u);
    MEMORY[0x2666FA930](v5, -1, -1);
  }

  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v9 = v0[11];

  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_261116F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261116FE8, v5, v4);
}

uint64_t sub_261116FE8()
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
  v7[1] = sub_26111DABC;
  v8 = v0[4];
  v9 = v0[2];

  return PASUITargetViewPresenter.activate(withTemplate:)(v9);
}

uint64_t sub_2611170AC()
{
  v1[8] = v0;
  v2 = sub_26115AD64();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  sub_26115B7A4();
  v1[12] = sub_26115B794();
  v6 = sub_26115B774();
  v1[13] = v6;
  v1[14] = v5;

  return MEMORY[0x2822009F8](sub_2611171A0, v6, v5);
}

uint64_t sub_2611171A0()
{
  v1 = *(v0[8] + OBJC_IVAR___PASUIDependentViewPresenter__accountStore);

  sub_26115A2D4();

  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  v4 = *(MEMORY[0x277D43460] + 4);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_26111727C;

  return MEMORY[0x2821A4878](v2, v3);
}

uint64_t sub_26111727C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v7 = *(v3 + 112);
  v8 = *(v3 + 104);
  if (v1)
  {
    v9 = sub_261117460;
  }

  else
  {
    v9 = sub_2611173C0;
  }

  return MEMORY[0x2822009F8](v9, v8, v7);
}

uint64_t sub_2611173C0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 96);

  if (v1)
  {
    v3 = *(v0 + 64);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v3 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount) = 1;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v4 = *(v0 + 88);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_261117460()
{
  v24 = v0;
  v1 = *(v0 + 136);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_26115AD44();
  v4 = v1;
  v5 = sub_26115AD54();
  v6 = sub_26115B814();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v8 = *(v0 + 80);
    v22 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    *(v0 + 56) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v13 = sub_26115B6B4();
    v15 = sub_26111C268(v13, v14, &v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_261107000, v5, v6, "Failed to fetch proto account in PASUITargetViewPresenter with error: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2666FA930](v11, -1, -1);
    MEMORY[0x2666FA930](v10, -1, -1);

    (*(v8 + 8))(v22, v9);
  }

  else
  {
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v18 = *(v0 + 72);

    (*(v17 + 8))(v16, v18);
  }

  v19 = *(v0 + 88);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t PASUITargetViewPresenter.startFlow(withNavigationController:)(uint64_t a1)
{
  type metadata accessor for PASViewControllerPresentationHandler();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  swift_unknownObjectRetain();
  sub_26111C840(v3, v1);
}

uint64_t PASUITargetViewPresenter.startFlow(withFlowStepsHandler:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1Tm(a1, v2);

  return sub_26111CA2C(v4, v1, v2, v3);
}

Swift::Void __swiftcall PASUITargetViewPresenter.startFlow(withContainerViewController:)(UIViewController *withContainerViewController)
{
  v3 = type metadata accessor for PASDefaultFlowStepsPresentationHandler();
  v4 = swift_allocObject();
  *(v4 + 16) = withContainerViewController;
  v10[3] = v3;
  v10[4] = &protocol witness table for PASDefaultFlowStepsPresentationHandler;
  v10[0] = v4;
  v5 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  v6 = withContainerViewController;

  sub_26111BF38(v10, v1 + v5);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v8 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v9 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount);
  sub_26115ABF4();
  sub_26115AC04();

  swift_unknownObjectRelease();
}

uint64_t _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC19stepDidRequestResetyy0abC011PASFlowStep_pF_0()
{
  v1 = v0;
  v2 = sub_26115AD64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_26115AD44();
  v10 = sub_26115AD54();
  v11 = sub_26115B834();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_261107000, v10, v11, "PASUITargetViewPresenter reset", v12, 2u);
    MEMORY[0x2666FA930](v12, -1, -1);
  }

  v13 = *(v3 + 8);
  v13(v9, v2);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_26115AD44();
    v14 = sub_26115AD54();
    v15 = sub_26115B824();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_261107000, v14, v15, "PASUITargetViewPresenter delegate is nil in reset", v16, 2u);
      MEMORY[0x2666FA930](v16, -1, -1);
    }

    v13(v7, v2);
  }

  v17 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v18 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v19 = *(v1 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount);
  sub_26115ABF4();
  sub_26115AC04();
  return swift_unknownObjectRelease();
}

uint64_t _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC12handleCancelyyF_0()
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FD0, &qword_26115DDF0);
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
    _os_log_impl(&dword_261107000, v13, v14, "PASUITargetViewPresenter flowDidCancel", v15, 2u);
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
      _os_log_impl(&dword_261107000, v17, v18, "PASUITargetViewPresenter delegate is nil in reset", v19, 2u);
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
    sub_26110CE78(v4, v28, &qword_27FE80FD0, &qword_26115DDF0);
    v24 = objc_allocWithZone(sub_26115A904());
    v25 = sub_26115A8F4();
    [v23 proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  return sub_26110CEE0(v4, &qword_27FE80FD0, &qword_26115DDF0);
}

uint64_t PASUITargetViewPresenter.setTemplate(_:)(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261117FC8, v7, v6);
}

uint64_t sub_261117FC8()
{
  v1 = v0[13];
  v2 = *(v0[14] + OBJC_IVAR___PASUIDependentViewPresenter__messageSessionProvider);

  sub_26115A2D4();

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v3);
  v5 = sub_26111BFA8();
  v6 = MEMORY[0x277D435B8];
  v0[10] = v5;
  v0[11] = v6;
  v0[7] = v1;
  v7 = *(MEMORY[0x277D43588] + 4);
  v8 = v1;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_2611180D4;

  return MEMORY[0x2821A4B28](v0 + 7, v3, v4);
}

uint64_t sub_2611180D4()
{
  v2 = *v1;
  v3 = (*v1)[21];
  v8 = *v1;
  (*v1)[22] = v0;

  if (v0)
  {
    v4 = v2[19];
    v5 = v2[20];
    v6 = sub_261118260;
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

uint64_t sub_2611181F0()
{
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[17];

  v3 = v0[1];

  return v3();
}

uint64_t sub_261118260()
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
    _os_log_impl(&dword_261107000, v5, v6, "Failed to set template message session in PASUITargetViewPresenter: %{public}s", v10, 0xCu);
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

uint64_t sub_2611185E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_26115B7A4();
  v3[5] = sub_26115B794();
  v5 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261118684, v5, v4);
}

uint64_t sub_261118684()
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

  return PASUITargetViewPresenter.setTemplate(_:)(v9);
}

uint64_t sub_261118748()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t PASUITargetViewPresenter.proximitySetupSelectedAccountType(_:)(uint64_t a1)
{
  v2[30] = a1;
  v2[31] = v1;
  v3 = sub_26115AD64();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v6 = sub_26115A4B4();
  v2[35] = v6;
  v7 = *(v6 - 8);
  v2[36] = v7;
  v8 = *(v7 + 64) + 15;
  v2[37] = swift_task_alloc();
  sub_26115B7A4();
  v2[38] = sub_26115B794();
  v10 = sub_26115B774();
  v2[39] = v10;
  v2[40] = v9;

  return MEMORY[0x2822009F8](sub_2611189F0, v10, v9);
}

uint64_t sub_2611189F0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  *(v0 + 328) = sub_261113ACC();
  *(v0 + 224) = v2;
  *(v0 + 232) = 0;
  v3 = *(MEMORY[0x277D433B0] + 4);
  v6 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_261118AB8;

  return v6(v0 + 224);
}

uint64_t sub_261118AB8()
{
  v1 = *v0;
  v2 = *(*v0 + 336);
  v3 = *(*v0 + 328);
  v7 = *v0;

  v4 = *(v1 + 320);
  v5 = *(v1 + 312);

  return MEMORY[0x2822009F8](sub_261118BFC, v5, v4);
}

uint64_t sub_261118BFC()
{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[35];
  v4 = *(v0[31] + OBJC_IVAR___PASUIDependentViewPresenter__featureFlagsProvider);

  sub_26115A2D4();

  v5 = v0[22];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 18, v0[21]);
  (*(v2 + 104))(v1, *MEMORY[0x277D433E0], v3);
  LOBYTE(v4) = sub_26115A734();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  if (v4 & 1) != 0 && (v6 = (v0[31] + OBJC_IVAR___PASUIDependentViewPresenter_flowController), v8 = *v6, v7 = v6[1], swift_getObjectType(), (sub_26115AC14()))
  {
    v9 = v0[34];
    sub_26115AD44();
    v10 = sub_26115AD54();
    v11 = sub_26115B834();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261107000, v10, v11, "PASUITargetViewPresenter proximitySetupSelectedAccountType and signInForSelf is enabled. We'll take it from here", v12, 2u);
      MEMORY[0x2666FA930](v12, -1, -1);
    }

    v14 = v0[33];
    v13 = v0[34];
    v15 = v0[32];

    (*(v14 + 8))(v13, v15);
    v16 = 0;
  }

  else
  {
    v16 = v0[30];
  }

  v17 = v0[31];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[43] = Strong;
  if (Strong)
  {
    v0[26] = &unk_2873A1538;
    v0[27] = &unk_2873BC7E0;
    v19 = swift_dynamicCastObjCProtocolConditional();
    if (v19)
    {
      v20 = v19;
      v0[2] = v0;
      v0[7] = v0 + 233;
      v0[3] = sub_261118F54;
      v21 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB8, &qword_26115DDA8);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_2611190E4;
      v0[13] = &block_descriptor_0;
      v0[14] = v21;
      [v20 proximitySetupSelectedAccount:v16 completion:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    v23 = v0[38];
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = v0[38];
  }

  v24 = v0[37];
  v25 = v0[34];

  v26 = v0[1];

  return v26(1);
}

uint64_t sub_261118F54()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26111905C, v2, v1);
}

uint64_t sub_26111905C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 304);

  swift_unknownObjectRelease();
  v3 = *(v0 + 233);
  v4 = *(v0 + 296);
  v5 = *(v0 + 272);

  v6 = *(v0 + 8);

  return v6(v3);
}

uint64_t sub_2611190E4(uint64_t a1, char a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return MEMORY[0x282200948](v3);
}

uint64_t PASUITargetViewPresenter.setupPasscodeAndBiometric()()
{
  v1[23] = v0;
  sub_26115B7A4();
  v1[24] = sub_26115B794();
  v3 = sub_26115B774();
  v1[25] = v3;
  v1[26] = v2;

  return MEMORY[0x2822009F8](sub_2611191D8, v3, v2);
}

uint64_t sub_2611191D8()
{
  v1 = *(v0 + 184);
  *(v0 + 216) = sub_261113ACC();
  *(v0 + 168) = 2;
  *(v0 + 176) = 1;
  v2 = *(MEMORY[0x277D433B0] + 4);
  v5 = (*MEMORY[0x277D433B0] + MEMORY[0x277D433B0]);
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  v3[1] = sub_2611192A4;

  return v5(v0 + 168);
}

uint64_t sub_2611192A4()
{
  v1 = *v0;
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v7 = *v0;

  v4 = *(v1 + 208);
  v5 = *(v1 + 200);

  return MEMORY[0x2822009F8](sub_2611193E8, v5, v4);
}

uint64_t sub_2611193E8()
{
  v1 = v0[23];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[29] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v0[2] = v0;
    v0[7] = v0 + 177;
    v0[3] = sub_261119570;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB8, &qword_26115DDA8);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_2611190E4;
    v0[13] = &block_descriptor_9;
    v0[14] = v4;
    [v3 setupPasscodeAndBiometricWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v5 = v0[24];

    v6 = v0[1];

    return v6(0);
  }
}

uint64_t sub_261119570()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261119678, v2, v1);
}

uint64_t sub_261119678()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 192);

  v3 = *(v0 + 177);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t PASUITargetViewPresenter.performAIDASignIn(with:)(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  v3 = sub_26115AD64();
  v2[23] = v3;
  v4 = *(v3 - 8);
  v2[24] = v4;
  v5 = *(v4 + 64) + 15;
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_26115B7A4();
  v2[28] = sub_26115B794();
  v7 = sub_26115B774();
  v2[29] = v7;
  v2[30] = v6;

  return MEMORY[0x2822009F8](sub_2611197F8, v7, v6);
}

uint64_t sub_2611197F8()
{
  v44 = v0;
  v1 = *(v0 + 216);
  sub_26115AD44();
  v2 = sub_26115AD54();
  v3 = sub_26115B804();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_261107000, v2, v3, "PASUITargetViewPresenter performAIDASignIn", v4, 2u);
    MEMORY[0x2666FA930](v4, -1, -1);
  }

  v5 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  v9 = *(v7 + 8);
  *(v0 + 248) = v9;
  v9(v5, v6);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = *(v0 + 208);
    sub_26115AD44();
    v11 = sub_26115AD54();
    v12 = sub_26115B824();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 208);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_261107000, v11, v12, "PASUITargetViewPresenter delegate is nil in performAIDASignIn", v17, 2u);
      MEMORY[0x2666FA930](v17, -1, -1);
    }

    v9(v14, v15);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 256) = Strong;
  if (Strong)
  {
    v19 = Strong;
    v20 = *(v0 + 168);
    v21 = sub_26115A394();
    *(v0 + 264) = v21;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_261119C58;
    v22 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB8, &qword_26115DDA8);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_2611190E4;
    *(v0 + 104) = &block_descriptor_13;
    *(v0 + 112) = v22;
    [v19 setupPerformAIDASignInWith:v21 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v23 = *(v0 + 224);

    v24 = *(v0 + 200);
    sub_26115AD44();
    v25 = sub_26115AD54();
    v26 = sub_26115B804();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 248);
    v30 = *(v0 + 192);
    v29 = *(v0 + 200);
    v31 = *(v0 + 184);
    if (v27)
    {
      v42 = *(v0 + 248);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v43 = v33;
      *v32 = 136446210;
      *(v0 + 273) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC0, &unk_26115DDC0);
      v34 = sub_26115B6B4();
      v36 = sub_26111C268(v34, v35, &v43);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_261107000, v25, v26, "PASUITargetViewPresenter performAIDASignIn result: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x2666FA930](v33, -1, -1);
      MEMORY[0x2666FA930](v32, -1, -1);

      v42(v29, v31);
    }

    else
    {

      v28(v29, v31);
    }

    v38 = *(v0 + 208);
    v37 = *(v0 + 216);
    v39 = *(v0 + 200);

    v40 = *(v0 + 8);

    return v40(0);
  }
}

uint64_t sub_261119C58()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_261119D60, v2, v1);
}

uint64_t sub_261119D60()
{
  v27 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 224);

  v4 = *(v0 + 272);
  swift_unknownObjectRelease();

  v5 = *(v0 + 200);
  sub_26115AD44();
  v6 = sub_26115AD54();
  v7 = sub_26115B804();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 192);
    v24 = *(v0 + 200);
    v25 = *(v0 + 248);
    v9 = *(v0 + 184);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v26 = v11;
    *v10 = 136446210;
    *(v0 + 273) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC0, &unk_26115DDC0);
    v12 = sub_26115B6B4();
    v14 = sub_26111C268(v12, v13, &v26);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_261107000, v6, v7, "PASUITargetViewPresenter performAIDASignIn result: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2666FA930](v11, -1, -1);
    MEMORY[0x2666FA930](v10, -1, -1);

    v25(v24, v9);
  }

  else
  {
    v15 = *(v0 + 248);
    v17 = *(v0 + 192);
    v16 = *(v0 + 200);
    v18 = *(v0 + 184);

    v15(v16, v18);
  }

  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  v21 = *(v0 + 200);

  v22 = *(v0 + 8);

  return v22(v4);
}

uint64_t PASUITargetViewPresenter.present(step:)(uint64_t a1, uint64_t a2)
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
    _os_log_impl(&dword_261107000, v15, v16, "PASUITargetViewPresenter present step %{public}s", v18, 0xCu);
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
  sub_261112D1C(0, 0, v9, &unk_26115DDD8, v26);
}

uint64_t sub_26111A280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = sub_26115AD64();
  v6[16] = v7;
  v8 = *(v7 - 8);
  v6[17] = v8;
  v9 = *(v8 + 64) + 15;
  v6[18] = swift_task_alloc();
  sub_26115B7A4();
  v6[19] = sub_26115B794();
  v11 = sub_26115B774();
  v6[20] = v11;
  v6[21] = v10;

  return MEMORY[0x2822009F8](sub_26111A378, v11, v10);
}

uint64_t sub_26111A378()
{
  v1 = (v0[13] + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v3 = *v1;
  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = *(MEMORY[0x277D43580] + 4);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_26111A440;
  v8 = v0[14];
  v7 = v0[15];

  return MEMORY[0x2821A4B18](v8, v7, ObjectType, v2);
}

uint64_t sub_26111A440()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;
  *(*v1 + 184) = v0;

  v5 = *(v2 + 168);
  v6 = *(v2 + 160);
  if (v0)
  {
    v7 = sub_26111A670;
  }

  else
  {
    v7 = sub_26111A57C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_26111A57C()
{
  v1 = v0[19];
  v2 = v0[13];

  v3 = v2 + OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    v5 = v0[14];
    v4 = v0[15];
    sub_26111BED4(v3, (v0 + 2));
    v6 = v0[5];
    v7 = v0[6];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v6);
    (*(v7 + 8))(v5, v4, v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v8 = v0[18];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26111A670()
{
  v29 = v0;
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 112);

  sub_26115AD44();
  swift_unknownObjectRetain();
  v5 = v1;
  v6 = sub_26115AD54();
  v7 = sub_26115B814();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 184);
    v9 = *(v0 + 136);
    v27 = *(v0 + 144);
    v10 = *(v0 + 128);
    v26 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446466;
    *(v0 + 80) = v26;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
    v13 = sub_26115B6B4();
    v15 = sub_26111C268(v13, v14, &v28);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    *(v0 + 96) = v8;
    v16 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FB0, qword_261161680);
    v17 = sub_26115B6B4();
    v19 = sub_26111C268(v17, v18, &v28);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_261107000, v6, v7, "PASUITargetViewPresenter did not present step %{public}s.\n%{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666FA930](v12, -1, -1);
    MEMORY[0x2666FA930](v11, -1, -1);

    (*(v9 + 8))(v27, v10);
  }

  else
  {
    v21 = *(v0 + 136);
    v20 = *(v0 + 144);
    v22 = *(v0 + 128);

    (*(v21 + 8))(v20, v22);
  }

  v23 = *(v0 + 144);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t PASUITargetViewPresenter.flowDidComplete(with:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_26115A224();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FD0, &qword_26115DDF0);
  v2[12] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v8 = sub_26115AD64();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_26115B7A4();
  v2[19] = sub_26115B794();
  v12 = sub_26115B774();
  v2[20] = v12;
  v2[21] = v11;

  return MEMORY[0x2822009F8](sub_26111AA88, v12, v11);
}

uint64_t sub_26111AA88()
{
  v54 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = *(v0 + 56);
  sub_26115AD44();
  sub_26110CE78(v3, v2, &qword_27FE80FD0, &qword_26115DDF0);
  v4 = sub_26115AD54();
  v5 = sub_26115B834();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);
  if (v6)
  {
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v52 = *(v0 + 144);
    v13 = swift_slowAlloc();
    v51 = v9;
    v14 = swift_slowAlloc();
    v53 = v14;
    *v13 = 141558274;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_26110CE78(v10, v11, &qword_27FE80FD0, &qword_26115DDF0);
    v15 = sub_26115B6B4();
    v17 = v16;
    sub_26110CEE0(v10, &qword_27FE80FD0, &qword_26115DDF0);
    v18 = sub_26111C268(v15, v17, &v53);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_261107000, v4, v5, "PASUITargetViewPresenter flowDidComplete with %{mask.hash}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2666FA930](v14, -1, -1);
    MEMORY[0x2666FA930](v13, -1, -1);

    v19 = *(v8 + 8);
    v19(v52, v51);
  }

  else
  {

    sub_26110CEE0(v10, &qword_27FE80FD0, &qword_26115DDF0);
    v19 = *(v8 + 8);
    v19(v7, v9);
  }

  *(v0 + 176) = v19;
  v20 = *(v0 + 64);
  sub_26110CE78(*(v0 + 56), *(v0 + 104), &qword_27FE80FD0, &qword_26115DDF0);
  v21 = objc_allocWithZone(sub_26115A904());
  v22 = sub_26115A8F4();
  *(v0 + 184) = v22;
  v23 = *(v20 + OBJC_IVAR___PASUIDependentViewPresenter_flowTimer);
  *(v0 + 192) = v23;
  if (v23)
  {
    v24 = v22;
    v25 = *(v0 + 88);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v27 = swift_allocObject();
    *(v0 + 200) = v27;
    *(v27 + 16) = &unk_26115DE00;
    *(v27 + 24) = v26;
    *(v0 + 40) = &unk_26115DE10;
    *(v0 + 48) = v27;

    v28 = v24;
    sub_26115A214();
    v29 = *(MEMORY[0x277D435A8] + 4);
    v30 = swift_task_alloc();
    *(v0 + 208) = v30;
    *v30 = v0;
    v30[1] = sub_26111AF38;
    v31 = *(v0 + 88);

    return MEMORY[0x2821A4B98](v0 + 40, v31);
  }

  else
  {
    v32 = *(v0 + 152);

    v33 = *(v0 + 64);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v34 = *(v0 + 136);
      sub_26115AD44();
      v35 = sub_26115AD54();
      v36 = sub_26115B824();
      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 176);
      v40 = *(v0 + 128);
      v39 = *(v0 + 136);
      v41 = *(v0 + 120);
      if (v37)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_261107000, v35, v36, "PASUITargetViewPresenter delegate is nil in flowDidComplete", v42, 2u);
        MEMORY[0x2666FA930](v42, -1, -1);
      }

      v38(v39, v41);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong proximitySetupCompletedWithResult_];
      swift_unknownObjectRelease();
    }

    v44 = *(v0 + 136);
    v45 = *(v0 + 144);
    v47 = *(v0 + 104);
    v46 = *(v0 + 112);
    v48 = *(v0 + 88);

    v49 = *(v0 + 8);

    return v49();
  }
}

uint64_t sub_26111AF38()
{
  v1 = *v0;
  v2 = *(*v0 + 208);
  v3 = *(*v0 + 200);
  v4 = *(*v0 + 192);
  v5 = *(*v0 + 88);
  v6 = *(*v0 + 80);
  v7 = *(*v0 + 72);
  v11 = *v0;

  (*(v6 + 8))(v5, v7);

  v8 = *(v1 + 168);
  v9 = *(v1 + 160);

  return MEMORY[0x2822009F8](sub_26111B0FC, v9, v8);
}

uint64_t sub_26111B0FC()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 64);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = *(v0 + 136);
    sub_26115AD44();
    v4 = sub_26115AD54();
    v5 = sub_26115B824();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 176);
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v10 = *(v0 + 120);
    if (v6)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261107000, v4, v5, "PASUITargetViewPresenter delegate is nil in flowDidComplete", v11, 2u);
      MEMORY[0x2666FA930](v11, -1, -1);
    }

    v7(v8, v10);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong proximitySetupCompletedWithResult_];
    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 104);
  v15 = *(v0 + 112);
  v17 = *(v0 + 88);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26111B2D0()
{
  v1 = v0[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81008, &unk_261160930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115D860;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000261163730;
  sub_26115A8D4();
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
  v7 = sub_26115A8E4();
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

uint64_t sub_26111B4D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_26111B5C4;

  return v6();
}

uint64_t sub_26111B5C4(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t PASUITargetViewPresenter.stepDidRequestCancel(_:)()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111B774, v3, v2);
}

uint64_t sub_26111B774()
{
  v2 = v0[2];
  v1 = v0[3];

  _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC12handleCancelyyF_0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_26111B7E0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111B874;

  return PASUITargetViewPresenter.performAIDASignIn(with:)(a1);
}

uint64_t sub_26111B874(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_26111B970(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111DAF0;

  return PASUITargetViewPresenter.proximitySetupSelectedAccountType(_:)(a1);
}

uint64_t sub_26111BA04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26111DAF0;

  return PASUITargetViewPresenter.setupPasscodeAndBiometric()();
}

uint64_t sub_26111BA90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26110CAC4;

  return PASUITargetViewPresenter.flowDidComplete(with:)(a1);
}

uint64_t sub_26111BB28()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111DAD0, v3, v2);
}

uint64_t sub_26111BBC0()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111B774, v3, v2);
}

uint64_t sub_26111BC58()
{
  *(v1 + 16) = v0;
  sub_26115B7A4();
  *(v1 + 24) = sub_26115B794();
  v3 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111BCF0, v3, v2);
}

uint64_t sub_26111BCF0()
{
  v2 = v0[2];
  v1 = v0[3];

  _s23ProximityAppleIDSetupUI24PASUITargetViewPresenterC19stepDidRequestResetyy0abC011PASFlowStep_pF_0();
  v3 = v0[1];

  return v3();
}

unint64_t sub_26111BD58()
{
  if (*(v0 + 8) != 1)
  {
    return 0xD00000000000002ALL;
  }

  v1 = 0xD000000000000033;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000024;
  }
}

unint64_t sub_26111BDD0()
{
  if (v0[1])
  {
    v1 = MEMORY[0x277D84F90];

    return sub_2611107D0(v1);
  }

  else
  {
    v3 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81008, &unk_261160930);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26115D860;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000261163730;
    v5 = sub_26115AAA4();
    v6 = MEMORY[0x277D435B0];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v6;
    *(inited + 48) = v5;
    *(inited + 56) = v7;
    v8 = sub_2611107D0(inited);
    swift_setDeallocating();
    sub_26110CEE0(inited + 32, &qword_27FE80E50, &qword_26115E190);
    return v8;
  }
}

uint64_t sub_26111BED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26111BF38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FA0, &qword_26115DD70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26111BFA8()
{
  result = qword_27FE80FA8;
  if (!qword_27FE80FA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE80FA8);
  }

  return result;
}

uint64_t sub_26111BFF4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26111C0EC;

  return v7(a1);
}

uint64_t sub_26111C0EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26111C20C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_26111C268(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_26111C268(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26111C334(v11, 0, 0, 1, a1, a2);
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
    sub_2611105C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_26111C334(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_26111C440(a5, a6);
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
    result = sub_26115B984();
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

uint64_t sub_26111C440(uint64_t a1, unint64_t a2)
{
  v4 = sub_26111C48C(a1, a2);
  sub_26111C5BC(&unk_287397A00);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_26111C48C(uint64_t a1, unint64_t a2)
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

  v6 = sub_26111C6A8(v5, 0);
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

  result = sub_26115B984();
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
        v10 = sub_26115B724();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_26111C6A8(v10, 0);
        result = sub_26115B944();
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

uint64_t sub_26111C5BC(uint64_t result)
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

  result = sub_26111C71C(result, v12, 1, v3);
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

void *sub_26111C6A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81040, &qword_26115E228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_26111C71C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81040, &qword_26115E228);
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

_BYTE **sub_26111C810(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_26111C820(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_26111C840(uint64_t a1, uint64_t a2)
{
  v10[3] = type metadata accessor for PASViewControllerPresentationHandler();
  v10[4] = &off_287398688;
  v10[0] = a1;
  sub_26111BED4(v10, v9);
  v4 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();

  sub_26111BF38(v9, a2 + v4);
  swift_endAccess();
  v5 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v6 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v7 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount);
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_26111C924(uint64_t a1, uint64_t a2)
{
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81020, &qword_26115EC40);
  v11[4] = &protocol witness table for <A> Binding<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_26110CE78(a1, boxed_opaque_existential_1, &qword_27FE81020, &qword_26115EC40);
  sub_26111BED4(v11, v10);
  v5 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  sub_26111BF38(v10, a2 + v5);
  swift_endAccess();
  v6 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v7 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v8 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount);
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_26111CA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a3;
  v14[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_26111BED4(v14, v13);
  v8 = OBJC_IVAR___PASUIDependentViewPresenter_navigationController;
  swift_beginAccess();
  sub_26111BF38(v13, a2 + v8);
  swift_endAccess();
  v9 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v10 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController + 8);
  swift_getObjectType();
  v11 = *(a2 + OBJC_IVAR___PASUIDependentViewPresenter_hasProtoAccount);
  sub_26115ABF4();
  sub_26115AC04();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26111CB5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26111CBA4(uint64_t a1)
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

  return sub_26111A280(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26111CC6C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26111CCA4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26111B874;

  return sub_26111B2B0(v2);
}

uint64_t sub_26111CD38()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26111CD70(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110CAC4;

  return sub_26111B4D8(a1, v5);
}

unint64_t sub_26111CE2C()
{
  result = qword_27FE80FD8;
  if (!qword_27FE80FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FD8);
  }

  return result;
}

unint64_t sub_26111CE84()
{
  result = qword_27FE80FE0;
  if (!qword_27FE80FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FE0);
  }

  return result;
}

unint64_t sub_26111CEDC()
{
  result = qword_27FE80FE8;
  if (!qword_27FE80FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FE8);
  }

  return result;
}

unint64_t sub_26111CF34()
{
  result = qword_27FE80FF0;
  if (!qword_27FE80FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FF0);
  }

  return result;
}

unint64_t sub_26111CF88()
{
  result = qword_27FE80FF8;
  if (!qword_27FE80FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80FF8);
  }

  return result;
}

uint64_t sub_26111D038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_26111D094(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_26111D0F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v4 = *v3;
  v5 = v3[1];
  swift_getObjectType();
  result = sub_26115AC14();
  *a2 = result & 1;
  return result;
}

uint64_t sub_26111D144(unsigned __int8 *a1, void *a2)
{
  v2 = *a1;
  v3 = (*a2 + OBJC_IVAR___PASUIDependentViewPresenter_flowController);
  v4 = *v3;
  v5 = v3[1];
  swift_getObjectType();
  return sub_26115AC24();
}

uint64_t getEnumTagSinglePayload for PASUITargetViewPresenterError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PASUITargetViewPresenterError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PASUITargetViewPresenter.AnalyticsEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PASUITargetViewPresenter.AnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26111D3AC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26111D3C8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_26111D3FC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110CAC4;

  return sub_2611185E8(v2, v3, v4);
}

uint64_t sub_26111D4B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_26110DB28;

  return sub_26113F41C(v2, v3, v5);
}

uint64_t sub_26111D574(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_26113F504(a1, v4, v5, v7);
}

uint64_t sub_26111D640()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261116F4C(v2, v3, v4);
}

uint64_t objectdestroy_38Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26111D73C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26110DB28;

  return sub_261115AB8(v2, v3, v4);
}

uint64_t objectdestroy_42Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26111D858()
{
  result = qword_27FE81010;
  if (!qword_27FE81010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81010);
  }

  return result;
}

unint64_t sub_26111D8AC()
{
  result = qword_27FE81018;
  if (!qword_27FE81018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81018);
  }

  return result;
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

uint64_t sub_26111D964(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26110DB28;

  return sub_26111BFF4(a1, v5);
}

unint64_t sub_26111DA1C()
{
  result = qword_27FE81038;
  if (!qword_27FE81038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81038);
  }

  return result;
}

uint64_t sub_26111DA74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PASUITargetViewPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_26111DAF8(void *a1, void *a2)
{
  [v2 addChildViewController_];
  v5 = [a1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  [a2 addSubview_];

  [a1 didMoveToParentViewController_];
  v7 = [a1 view];
  if (!v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE820E0, &qword_261161EF0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26115E240;
  v10 = [a1 view];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [a2 safeAreaLayoutGuide];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v9 + 32) = v15;
  v16 = [a1 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [a2 safeAreaLayoutGuide];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor_];
  *(v9 + 40) = v21;
  v22 = [a1 view];
  if (!v22)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [a2 safeAreaLayoutGuide];
  v26 = [v25 leadingAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v9 + 48) = v27;
  v28 = [a1 view];
  if (!v28)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v29 = v28;
  v30 = objc_opt_self();
  v31 = [v29 trailingAnchor];

  v32 = [a2 safeAreaLayoutGuide];
  v33 = [v32 trailingAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v9 + 56) = v34;
  sub_26111DEC0();
  v35 = sub_26115B744();

  [v30 activateConstraints_];
}

unint64_t sub_26111DEC0()
{
  result = qword_27FE81050;
  if (!qword_27FE81050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81050);
  }

  return result;
}

uint64_t sub_26111DF84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[2];
  v3[2] = a1;
  v3[3] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v3[2])
  {
    v5 = v3[3];
    v6 = v3[2];
    ObjectType = swift_getObjectType();
    v8 = v3[5];
    v9 = v3[6];
    v10 = *(v5 + 16);

    swift_unknownObjectRetain();
    v10(v8, v9, ObjectType, v5);
    swift_unknownObjectRelease();
    if (v3[2])
    {
      v11 = v3[3];
      v12 = v3[2];
      v13 = swift_getObjectType();
      v15 = v3[7];
      v14 = v3[8];
      v16 = *(v11 + 40);

      swift_unknownObjectRetain();
      v16(v15, v14, v13, v11);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_26111E0A0(uint64_t a1, uint64_t a2)
{
  v3 = v2[6];
  v2[5] = a1;
  v2[6] = a2;

  if (v2[2])
  {
    v5 = v2[3];
    v6 = v2[2];
    ObjectType = swift_getObjectType();
    v9 = v2[5];
    v8 = v2[6];
    v10 = *(v5 + 16);

    swift_unknownObjectRetain();
    v10(v9, v8, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26111E164(uint64_t a1, uint64_t a2)
{
  v3 = v2[8];
  v2[7] = a1;
  v2[8] = a2;

  if (v2[2])
  {
    v5 = v2[3];
    v6 = v2[2];
    ObjectType = swift_getObjectType();
    v9 = v2[7];
    v8 = v2[8];
    v10 = *(v5 + 40);

    swift_unknownObjectRetain();
    v10(v9, v8, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_26111E228(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = result;
  if (a3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_26111EE24(v8, v33);
      v10 = v34;
      if (v34)
      {
        __swift_project_boxed_opaque_existential_1Tm(v33, v34);

        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        v10 = sub_26115A694();
        v12 = v11;
        __swift_destroy_boxed_opaque_existential_1(v31);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {

        sub_26110CEE0(v33, &qword_27FE81098, &qword_26115E5F0);
        v12 = 0;
      }

      v30 = a2;
      sub_26111EE24(a2, v33);
      v13 = v34;
      if (v34)
      {
        __swift_project_boxed_opaque_existential_1Tm(v33, v34);
        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        v14 = sub_26115A694();
        v13 = v15;
        __swift_destroy_boxed_opaque_existential_1(v31);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        sub_26110CEE0(v33, &qword_27FE81098, &qword_26115E5F0);
        v14 = 0;
      }

      v16 = a3(v10, v12, v14, v13);
      v18 = v17;

      if (v18)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0xE000000000000000;
      }

      sub_26111E0A0(v19, v20);
      sub_26111EE94(a3);

      a2 = v30;
    }
  }

  if (a6)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_26111EE24(v8, v33);
      v21 = v34;
      if (v34)
      {
        __swift_project_boxed_opaque_existential_1Tm(v33, v34);

        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        v21 = sub_26115A694();
        v23 = v22;
        __swift_destroy_boxed_opaque_existential_1(v31);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {

        sub_26110CEE0(v33, &qword_27FE81098, &qword_26115E5F0);
        v23 = 0;
      }

      sub_26111EE24(a2, v33);
      v24 = v34;
      if (v34)
      {
        __swift_project_boxed_opaque_existential_1Tm(v33, v34);
        sub_26115A434();
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        v25 = sub_26115A694();
        v24 = v26;
        __swift_destroy_boxed_opaque_existential_1(v31);
        __swift_destroy_boxed_opaque_existential_1(v33);
      }

      else
      {
        sub_26110CEE0(v33, &qword_27FE81098, &qword_26115E5F0);
        v25 = 0;
      }

      v27 = a6(v21, v23, v25, v24);
      v29 = v28;

      sub_26111E164(v27, v29);
      sub_26111EE94(a6);
    }
  }

  return result;
}

uint64_t sub_26111E628()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_26111E6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v46 = a4;
  v43 = a1;
  v44 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81058, &unk_26115E2F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81060, &unk_261161BA0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81068, &unk_26115E300);
  v39 = *(v13 - 8);
  v40 = v13;
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81070, &unk_261161BB0);
  v41 = *(v17 - 8);
  v42 = v17;
  v18 = *(v41 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  v21 = MEMORY[0x277D84F90];
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  if (v21 >> 62 && sub_26115B9A4())
  {
    v22 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v22 = MEMORY[0x277D84FA0];
  }

  *(v4 + 32) = v22;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v4 + 72) = sub_26115A2E4();

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA04();
  swift_unknownObjectRelease();
  v26 = *(v4 + 72);

  sub_26115A2D4();

  swift_getObjectType();
  sub_26115AA14();
  swift_unknownObjectRelease();
  sub_26111EDDC(&qword_27FE81078, &qword_27FE81060, &unk_261161BA0);
  sub_26115AD74();
  sub_26111EC34();
  v27 = sub_26115B874();
  v47 = v27;
  v28 = sub_26115B854();
  (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
  sub_26111EDDC(&qword_27FE81080, &qword_27FE81068, &unk_26115E300);
  sub_26111EC80();
  v29 = v40;
  sub_26115ADC4();
  sub_26110CEE0(v9, &qword_27FE81058, &unk_26115E2F0);

  (*(v39 + 8))(v16, v29);
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = swift_allocObject();
  v33 = v43;
  v32 = v44;
  v31[2] = v43;
  v31[3] = v32;
  v34 = v45;
  v31[4] = v30;
  v31[5] = v34;
  v31[6] = v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_26111ED68;
  *(v35 + 24) = v31;
  sub_2611122C8(v33);
  sub_2611122C8(v34);
  sub_26111EDDC(&qword_27FE81090, &qword_27FE81070, &unk_261161BB0);
  v36 = v42;
  sub_26115ADD4();

  (*(v41 + 8))(v20, v36);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  return v5;
}

unint64_t sub_26111EC34()
{
  result = qword_27FE81E90;
  if (!qword_27FE81E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE81E90);
  }

  return result;
}

unint64_t sub_26111EC80()
{
  result = qword_27FE81088;
  if (!qword_27FE81088)
  {
    sub_26111EC34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81088);
  }

  return result;
}

uint64_t sub_26111ECD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26111ED10()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26111ED78()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26111EDB0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1, a1 + 40);
}

uint64_t sub_26111EDDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_26111EE24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26111EE94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_26111EEF4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedDevice] = 0;
  v5 = &v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedTermsRemoteUI];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo;
  *&v2[v8] = sub_261110694(MEMORY[0x277D84F90]);
  v2[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept] = 0;
  v9 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler__viewControllerProvider;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81B50, &unk_26115E4D0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[v9] = sub_26115A2E4();
  v13 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_authResults;
  v14 = sub_26115A3D4();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v2[v13], a1, v14);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_init);
  (*(v15 + 8))(a1, v14);
  return v16;
}

uint64_t sub_26111F060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[21] = a7;
  v8[22] = v7;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v9 = sub_26115AD64();
  v8[23] = v9;
  v10 = *(v9 - 8);
  v8[24] = v10;
  v11 = *(v10 + 64) + 15;
  v8[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26111F12C, 0, 0);
}

uint64_t sub_26111F12C()
{
  v1 = v0[25];
  v2 = v0[16];
  v44 = v0[17];
  v3 = v0[15];
  v4 = v0[22] + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_authResults;
  sub_26115A3C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81158, qword_26115E478);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26115E310;
  v6 = *MEMORY[0x277CEC738];
  *(inited + 32) = *MEMORY[0x277CEC738];
  v7 = *MEMORY[0x277CEC720];
  v8 = *MEMORY[0x277CEC730];
  *(inited + 40) = *MEMORY[0x277CEC720];
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CEC728];
  *(inited + 56) = *MEMORY[0x277CEC728];
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  sub_261120B04(inited);
  swift_setDeallocating();
  type metadata accessor for AATermsEntry(0);
  swift_arrayDestroy();
  v14 = objc_allocWithZone(MEMORY[0x277CECAA0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811C0, &qword_26115E490);
  v15 = sub_26115B604();

  sub_261120F08(&qword_27FE80D28, type metadata accessor for AATermsEntry);
  v16 = sub_26115B7E4();

  v17 = [v14 initWithAuthResults:v15 proxiedDevice:v3 anisetteDataProvider:v2 appProvidedContext:v44 termsEntries:v16];
  v0[26] = v17;

  v45 = v17;
  sub_26115AD44();
  v18 = sub_26115AD54();
  v19 = sub_26115B834();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_261107000, v18, v19, "PASUIProxiedTermsHandler loadProxiedTerms", v20, 2u);
    MEMORY[0x2666FA930](v20, -1, -1);
  }

  v22 = v0[24];
  v21 = v0[25];
  v23 = v0[22];
  v24 = v0[23];
  v25 = v0[21];
  v43 = v0[20];
  v26 = v0[18];
  v27 = v0[19];
  v28 = v0[15];

  (*(v22 + 8))(v21, v24);
  [v45 setDelegate_];
  v29 = *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedDevice);
  *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedDevice) = v28;

  v30 = (v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction);
  v31 = *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction);
  v32 = *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction + 8);
  *v30 = v26;
  v30[1] = v27;
  v33 = v28;
  sub_26111EE94(v31);
  v34 = (v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction);
  v35 = *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction);
  v36 = *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction + 8);
  *v34 = v43;
  v34[1] = v25;

  sub_26111EE94(v35);
  v37 = (v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedTermsRemoteUI);
  v38 = *(v23 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_proxiedTermsRemoteUI);
  *v37 = v45;
  v37[1] = &off_287398508;

  swift_unknownObjectRelease();
  sub_26115B7A4();
  v39 = v45;
  v0[27] = sub_26115B794();
  v41 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_26111F4E0, v41, v40);
}

uint64_t sub_26111F4E0()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[22];

  v4 = *(v3 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler__viewControllerProvider);

  sub_26115A2D4();

  v5 = v0[13];
  v6 = v0[14];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 10, v5);
  v7 = (*(v6 + 8))(v5, v6);
  [v2 presentFromViewController:v7 modal:1];

  __swift_destroy_boxed_opaque_existential_1(v0 + 10);

  return MEMORY[0x2822009F8](sub_26111F5D4, 0, 0);
}

uint64_t sub_26111F5D4()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26111F63C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo;
  if (*(*(v2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo) + 16))
  {
    sub_26115AD44();
    v10 = sub_26115AD54();
    v11 = sub_26115B814();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_261107000, v10, v11, "PASUIProxiedTermsHandler setAcceptedTermsInfo is not empty", v12, 2u);
      MEMORY[0x2666FA930](v12, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  v13 = *(v2 + v9);
  *(v2 + v9) = a1;

  if (*(v2 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept) == 1)
  {
    return sub_26111F7D0();
  }

  return result;
}

uint64_t sub_26111F7D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v39 - v4;
  v5 = sub_26115AD64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v39 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v39 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  sub_26115AD44();
  v18 = sub_26115AD54();
  v19 = sub_26115B804();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_261107000, v18, v19, "PASUIProxiedTermsHandler handleAccept", v20, 2u);
    MEMORY[0x2666FA930](v20, -1, -1);
  }

  v21 = *(v6 + 8);
  v21(v17, v5);
  v22 = OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept;
  if (v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_didAccept] == 1)
  {
    sub_26115AD44();
    v23 = sub_26115AD54();
    v24 = sub_26115B814();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_261107000, v23, v24, "PASUIProxiedTermsHandler handleAccept entered multiple times", v25, 2u);
      MEMORY[0x2666FA930](v25, -1, -1);
    }

    v21(v15, v5);
  }

  v1[v22] = 1;
  if (*(*&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo] + 16))
  {
    v26 = *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction];
    if (v26)
    {
      v27 = *&v1[OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptAction + 8];
      v28 = sub_26115B7D4();
      v29 = v40;
      (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
      sub_26115B7A4();
      sub_2611122C8(v26);
      sub_2611122C8(v26);
      v30 = v1;
      v31 = sub_26115B794();
      v32 = swift_allocObject();
      v33 = MEMORY[0x277D85700];
      v32[2] = v31;
      v32[3] = v33;
      v32[4] = v26;
      v32[5] = v27;
      v32[6] = v30;
      sub_261112D1C(0, 0, v29, &unk_26115E4B0, v32);
      sub_26111EE94(v26);
    }

    v10 = v39;
    sub_26115AD44();
    v35 = sub_26115AD54();
    v36 = sub_26115B814();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "PASUIProxiedTermsHandler handleAccept acceptAction is nil";
      goto LABEL_14;
    }
  }

  else
  {
    sub_26115AD44();
    v35 = sub_26115AD54();
    v36 = sub_26115B814();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "PASUIProxiedTermsHandler handleAccept acceptedTermsInfo isEmpty";
LABEL_14:
      _os_log_impl(&dword_261107000, v35, v36, v38, v37, 2u);
      MEMORY[0x2666FA930](v37, -1, -1);
    }
  }

  return (v21)(v10, v5);
}

uint64_t sub_26111FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_26115B7A4();
  v6[5] = sub_26115B794();
  v8 = sub_26115B774();
  v6[6] = v8;
  v6[7] = v7;

  return MEMORY[0x2822009F8](sub_26111FD08, v8, v7);
}

uint64_t sub_26111FD08()
{
  v1 = v0[2];
  v2 = *(v0[4] + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_acceptedTermsInfo);
  v0[8] = v2;

  v7 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_26111FE18;
  v5 = v0[3];

  return v7(v2);
}

uint64_t sub_26111FE18()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_26111FF5C, v5, v4);
}

uint64_t sub_26111FF5C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26111FFBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_26115AD64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_26115AD44();
  v14 = sub_26115AD54();
  v15 = sub_26115B804();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_261107000, v14, v15, "PASUIProxiedTermsHandler handleDecline", v16, 2u);
    MEMORY[0x2666FA930](v16, -1, -1);
  }

  v17 = *(v7 + 8);
  v17(v13, v6);
  v18 = v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction;
  v19 = *(v1 + OBJC_IVAR____TtC23ProximityAppleIDSetupUI24PASUIProxiedTermsHandler_declineAction);
  if (v19)
  {
    v20 = *(v18 + 8);
    v21 = sub_26115B7D4();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    sub_26115B7A4();
    sub_2611122C8(v19);

    v22 = sub_26115B794();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v19;
    v23[5] = v20;
    sub_261112D1C(0, 0, v5, &unk_26115E4C0, v23);
    sub_26111EE94(v19);
  }

  else
  {
    sub_26115AD44();
    v26 = sub_26115AD54();
    v27 = sub_26115B814();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_261107000, v26, v27, "PASUIProxiedTermsHandler handleDecline declineAction is nil", v28, 2u);
      MEMORY[0x2666FA930](v28, -1, -1);
    }

    return (v17)(v11, v6);
  }
}

uint64_t sub_2611202E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_26115B7A4();
  v4[3] = sub_26115B794();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_26110E430;

  return v9();
}

id sub_261120424()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PASUIProxiedTermsHandler()
{
  result = qword_27FE810E8;
  if (!qword_27FE810E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261120584()
{
  result = sub_26115A3D4();
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

uint64_t sub_261120650@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  result = sub_26115ADA4();
  *a1 = result;
  return result;
}

uint64_t sub_261120690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *v7;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_26110CAC4;

  return sub_26111F060(a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_261120870(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_26115B9A4();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE811E0, &qword_26115E4C8);
      result = sub_26115B934();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_26115B9A4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v22 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  v21 = v1;
  while (v22)
  {
    result = MEMORY[0x2666FA050](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    v10 = *(v3 + 40);
    sub_26115AD94();
    sub_261120F08(&qword_27FE811E8, MEMORY[0x277CBCDA8]);
    result = sub_26115B644();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *(v7 + 8 * (v12 >> 6));
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_261120F08(&qword_27FE811F0, MEMORY[0x277CBCDA8]);
      do
      {
        v23 = *(*(v3 + 48) + 8 * v12);
        result = sub_26115B664();
        if (result)
        {

          v1 = v21;
          goto LABEL_11;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v7 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v1 = v21;
    }

    *(v7 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 8 * v12) = v8;
    v17 = *(v3 + 16);
    v9 = __OFADD__(v17, 1);
    v18 = v17 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_261120B04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811D0, &qword_26115E498);
    v3 = sub_26115B934();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_26115B6A4();
      sub_26115BA94();
      v29 = v7;
      sub_26115B704();
      v9 = sub_26115BAB4();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_26115B6A4();
        v20 = v19;
        if (v18 == sub_26115B6A4() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_26115B9F4();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_261120CF8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261120D40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26110CAC4;

  return sub_26111FC6C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_261120E08()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_261120E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_2611202E4(a1, v4, v5, v7);
}

uint64_t sub_261120F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t PASFlowStepPasscodeBiometricsRequest.buildView()()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE811F8, qword_26115E4E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  sub_261121FF4(&qword_27FE81200, MEMORY[0x277D435A0]);

  v10 = sub_26115AF34();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26115A2E4();
  v21 = v10;
  v22 = v12;
  v23 = v16;
  v17 = sub_26112119C();
  sub_26115B414();

  (*(v3 + 16))(v7, v9, v2);
  v21 = &type metadata for PASUIPasscodeBiometricsRequestView;
  v22 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_26115B574();
  (*(v3 + 8))(v9, v2);
  return v18;
}

unint64_t sub_26112119C()
{
  result = qword_27FE81208;
  if (!qword_27FE81208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81208);
  }

  return result;
}

uint64_t sub_261121200()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE811F8, qword_26115E4E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - v7;
  v9 = *v0;
  sub_261121FF4(&qword_27FE81200, MEMORY[0x277D435A0]);

  v10 = sub_26115AF34();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_26115A2E4();
  v21 = v10;
  v22 = v12;
  v23 = v16;
  v17 = sub_26112119C();
  sub_26115B414();

  (*(v2 + 16))(v6, v8, v1);
  v21 = &type metadata for PASUIPasscodeBiometricsRequestView;
  v22 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = sub_26115B574();
  (*(v2 + 8))(v8, v1);
  return v18;
}

uint64_t sub_261121424(uint64_t a1, int a2)
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

uint64_t sub_26112146C(uint64_t result, int a2, int a3)
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

uint64_t sub_2611214D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  swift_retain_n();
  swift_retain_n();
  v10 = sub_261121744();
  v12 = v11;
  v13 = (a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80C48, &unk_261160100) + 36));
  v14 = v13 + *(sub_26115AF04() + 20);
  result = sub_26115B7B4();
  *v13 = &unk_26115E5E0;
  v13[1] = a2;
  *a4 = sub_26110C934;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = sub_2611216E8;
  *(a4 + 32) = v8;
  *(a4 + 40) = sub_261121730;
  *(a4 + 48) = v9;
  *(a4 + 56) = 0;
  *(a4 + 64) = v10;
  *(a4 + 72) = v12;
  *(a4 + 80) = 1;
  *(a4 + 88) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_261121628()
{
  v0[2] = sub_26115B7A4();
  v0[3] = sub_26115B794();
  v1 = *(MEMORY[0x277D43598] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26110E430;

  return MEMORY[0x2821A4B58]();
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261121730(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  return sub_261121C54(a3, a4);
}

uint64_t sub_261121744()
{
  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4();
  swift_unknownObjectRelease();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v5, v6);
    v0 = sub_26115A454();
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v5);
    if (v2)
    {
      return v0;
    }
  }

  else
  {
    sub_26112192C(&v5);
  }

  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4();
  swift_unknownObjectRelease();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v5, v6);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(v4, v4[3]);
    v0 = sub_26115A6A4();
    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_destroy_boxed_opaque_existential_1(&v5);
  }

  else
  {
    sub_26112192C(&v5);
    v0 = 0;
  }

  return v0;
}

uint64_t sub_26112189C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110CAC4;

  return sub_261121628();
}

uint64_t sub_26112192C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81098, &qword_26115E5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261121994()
{
  v0 = sub_26115AD64();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4();
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_261110928(&v13, v15);
    *&v13 = 0;
    *(&v13 + 1) = 0xE000000000000000;
    sub_26115B954();

    v12[0] = 0x45444F4353534150;
    v12[1] = 0xE90000000000005FLL;
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    v5 = sub_26115A444();
    MEMORY[0x2666F9DF0](v5);

    MEMORY[0x2666F9DF0](0x545345555145525FLL, 0xEF5F454C5449545FLL);
    __swift_project_boxed_opaque_existential_1Tm(v15, v16);
    sub_26115A434();
    __swift_project_boxed_opaque_existential_1Tm(&v13, v14);
    v6 = sub_26115A694();
    MEMORY[0x2666F9DF0](v6);

    __swift_destroy_boxed_opaque_existential_1(&v13);
    v7 = sub_26115B6F4();

    __swift_destroy_boxed_opaque_existential_1(v15);
    return v7;
  }

  else
  {
    sub_26112192C(&v13);
    sub_26115AD44();
    v9 = sub_26115AD54();
    v10 = sub_26115B814();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_261107000, v9, v10, "PASUIPasscodeBiometricsRequestView title targetDevice is nil", v11, 2u);
      MEMORY[0x2666FA930](v11, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return sub_26115B6F4();
  }
}

uint64_t sub_261121C54(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x4E574F4E4B4E55;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  sub_26115A2D4();
  swift_getObjectType();
  sub_26115A9F4();
  swift_unknownObjectRelease();
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1Tm(&v14, v16);
    v4 = sub_26115A444();
    v6 = v5;
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    sub_26112192C(&v14);
    v6 = 0xED00005343495254;
    v4 = 0x454D4F49425F4F4ELL;
  }

  v7 = sub_26115ACC4();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_26115B954();

    v14 = 0xD00000000000001BLL;
    v15 = 0x8000000261163A30;
    MEMORY[0x2666F9DF0](v2, v3);

    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](v4, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE81B30, &qword_261160B70);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_26115D860;
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_261121EE0();
    *(v11 + 32) = v9;
    *(v11 + 40) = v10;
    v12 = sub_26115B6D4();
  }

  else
  {
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_26115B954();

    v14 = 0xD00000000000001ELL;
    v15 = 0x8000000261163A10;
    MEMORY[0x2666F9DF0](v2, v3);

    MEMORY[0x2666F9DF0](95, 0xE100000000000000);
    MEMORY[0x2666F9DF0](v4, v6);

    v12 = sub_26115B6F4();
  }

  return v12;
}

unint64_t sub_261121EE0()
{
  result = qword_27FE81210;
  if (!qword_27FE81210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81210);
  }

  return result;
}

unint64_t sub_261121F38()
{
  result = qword_27FE80C78;
  if (!qword_27FE80C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE80C48, &unk_261160100);
    sub_26110CD50();
    sub_261121FF4(&qword_27FE80C70, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE80C78);
  }

  return result;
}

uint64_t sub_261121FF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261122040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11 = a1;
  v12 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81218, &qword_26115E608);
  if (swift_dynamicCast())
  {
    sub_261110928(v9, v13);
    v4 = v14;
    v5 = v15;
    __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    *&v9[0] = (*(v5 + 8))(v4, v5);
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81228, &qword_26115E618));
    v7 = sub_26115B0D4();
    [*(v3 + 16) pushViewController:v7 animated:0];

    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_26110CEE0(v9, &qword_27FE81220, &qword_26115E610);
  }
}

uint64_t sub_261122174()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2611221D0(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  v10 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80FC8, &qword_26115DDE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81218, &qword_26115E608);
  if (swift_dynamicCast())
  {
    sub_261110928(v7, v11);
    v2 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1Tm(v11, v12);
    *&v7[0] = (*(v3 + 8))(v2, v3);
    v4 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81228, &qword_26115E618));
    v5 = sub_26115B0D4();
    sub_261122374(v5);

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    return sub_26110CEE0(v7, &qword_27FE81220, &qword_26115E610);
  }
}

uint64_t PASDefaultFlowStepsPresentationHandler.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_261122374(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = [v9 view];
  if (!v10)
  {
    sub_26115AD44();

    v20 = sub_26115AD54();
    v21 = sub_26115B814();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      *(v22 + 4) = v9;
      *v23 = v9;
      v24 = v9;
      _os_log_impl(&dword_261107000, v20, v21, "PASUITargetViewPresenter addHostingController failed - no view on %{public}@", v22, 0xCu);
      sub_26110CEE0(v23, &qword_27FE81EB0, &qword_26115F960);
      MEMORY[0x2666FA930](v23, -1, -1);
      MEMORY[0x2666FA930](v22, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    return;
  }

  v29 = v10;
  v11 = [v9 childViewControllers];
  sub_261122758();
  v12 = sub_26115B754();

  v27 = a1;
  v28 = v9;
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_19:

    sub_26111DAF8(v27, v29);
    v25 = v29;

    return;
  }

LABEL_18:
  v13 = sub_26115B9A4();
  if (!v13)
  {
    goto LABEL_19;
  }

LABEL_4:
  v14 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x2666FA050](v14, v12);
    }

    else
    {
      if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v15 = *(v12 + 8 * v14 + 32);
    }

    v16 = v15;
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v18 = [v15 view];
    if (!v18)
    {
      break;
    }

    v19 = v18;
    [v18 removeFromSuperview];

    [v16 removeFromParentViewController];
    ++v14;
    if (v17 == v13)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
}

unint64_t sub_261122758()
{
  result = qword_27FE818F0;
  if (!qword_27FE818F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FE818F0);
  }

  return result;
}

uint64_t sub_2611227A4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_261122874(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

id sub_2611227D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *v10 = *(v1 + 40);
  *(a1 + 32) = *v10;
  *(a1 + 48) = v7;
  *(a1 + 56) = v8;
  *(a1 + 64) = v6;
  sub_2611122C8(v2);
  sub_2611122C8(v4);

  return v10[0];
}

uint64_t sub_261122874(uint64_t a1, uint64_t a2)
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

  v14 = 0xD00000000000001BLL;
  v15 = 0x8000000261163B70;
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

uint64_t sub_261122A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  v19 = 0xD000000000000014;
  v20 = 0x8000000261163B50;
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_261122C18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261122C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PASFlowStepCheckInternet.buildView()()
{
  v1 = *v0;
  sub_261124B68(&qword_27FE81230, MEMORY[0x277D434B8]);

  sub_26115AF34();
  sub_261122D9C();
  return sub_26115B574();
}

unint64_t sub_261122D9C()
{
  result = qword_27FE81238;
  if (!qword_27FE81238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81238);
  }

  return result;
}

void *sub_261122DF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for PASUICheckInternetViewProxCardAdapter();
  v5 = swift_allocObject();

  result = sub_261122EF4(v6);
  *(a1 + 24) = v4;
  *(a1 + 32) = &off_28739AD30;
  *a1 = v5;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_261122E58()
{
  v1 = *v0;
  sub_261124B68(&qword_27FE81230, MEMORY[0x277D434B8]);

  sub_26115AF34();
  sub_261122D9C();
  return sub_26115B574();
}

void *sub_261122EF4(uint64_t a1)
{
  v2 = v1;
  v1[4] = a1;

  sub_26115B6F4();

  v4 = sub_26115B674();

  v12[4] = sub_261124A6C;
  v12[5] = a1;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_26114D6D0;
  v12[3] = &block_descriptor_41;
  v5 = _Block_copy(v12);
  v6 = [objc_opt_self() actionWithTitle:v4 style:1 handler:v5];

  _Block_release(v5);

  v2[5] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE80F38, &qword_26115DD30);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v2[2] = sub_26115A2E4();
  if (MEMORY[0x277D84F90] >> 62 && sub_26115B9A4())
  {
    v10 = sub_261120870(MEMORY[0x277D84F90]);
  }

  else
  {
    v10 = MEMORY[0x277D84FA0];
  }

  v2[3] = v10;
  return v2;
}

uint64_t sub_2611230A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12 - v5;
  v7 = sub_26115B7D4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_26115B7A4();

  v8 = sub_26115B794();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = a2;
  sub_261112D1C(0, 0, v6, &unk_26115EA10, v9);
}

uint64_t sub_2611231C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  sub_26115B7A4();
  v4[8] = sub_26115B794();
  v6 = sub_26115B774();
  v4[9] = v6;
  v4[10] = v5;

  return MEMORY[0x2822009F8](sub_26112325C, v6, v5);
}

uint64_t sub_26112325C()
{
  v1 = type metadata accessor for PASUIMonogramMaker();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = sub_261124B68(&qword_27FE812A8, type metadata accessor for PASUIMonogramMaker);
  v0[2] = v2;
  v3 = *(MEMORY[0x277D434B0] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_26112335C;
  v5 = v0[7];

  return MEMORY[0x2821A49A0](v0 + 2);
}

uint64_t sub_26112335C()
{
  v1 = *v0;
  v2 = (*v0)[11];
  v6 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v3 = v1[10];
  v4 = v1[9];

  return MEMORY[0x2822009F8](sub_261123488, v4, v3);
}

uint64_t sub_261123488()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

void sub_2611234E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81298, &unk_26115E9C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - v6;
  sub_26114CA50(a1);
  [*(v1 + 40) setEnabled_];
  v8 = *(v1 + 32);
  sub_26115A994();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  sub_26111EDDC(&qword_27FE812A0, &qword_27FE81298, &unk_26115E9C0);
  swift_unknownObjectRetain();
  sub_26115ADD4();

  (*(v4 + 8))(v7, v3);
  swift_beginAccess();
  sub_26115AD84();
  swift_endAccess();

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2611247C8;
  *(v14 + 24) = v13;

  v15 = sub_26115B674();
  aBlock[4] = sub_261124808;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26114D6D0;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);
  v17 = [objc_opt_self() actionWithTitle:v15 style:0 handler:v16];

  _Block_release(v16);

  [a1 setDismissButtonAction_];
}

uint64_t sub_261123864(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE818E0, &qword_26115E4A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    if ((v9 & 1) == 0)
    {
      v12 = sub_26115B7D4();
      (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
      sub_26115B7A4();
      swift_unknownObjectRetain();

      v13 = sub_26115B794();
      v14 = swift_allocObject();
      v15 = MEMORY[0x277D85700];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = a3;
      v14[5] = v11;
      sub_261112D1C(0, 0, v8, &unk_26115E9F8, v14);
    }
  }

  return result;
}

uint64_t sub_2611239D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_26115B7A4();
  v5[4] = sub_26115B794();
  v7 = sub_26115B774();

  return MEMORY[0x2822009F8](sub_261123A70, v7, v6);
}

uint64_t sub_261123A70()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  sub_26115B6F4();
  v4 = sub_26115B674();

  [v3 setTitle_];

  sub_26115B6F4();
  v5 = sub_26115B674();

  [v3 setSubtitle_];

  v6 = *(v2 + 40);
  [v6 setEnabled_];
  v7 = v0[1];

  return v7();
}

uint64_t sub_261123BB0()
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
      sub_26114D9D4(v3, &unk_26115E9D8, v4, &unk_26115E9E0, v5);

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_261123CEC()
{
  v1 = *(MEMORY[0x277D43428] + 4);
  v4 = (*MEMORY[0x277D43428] + MEMORY[0x277D43428]);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_26110CAC4;

  return v4();
}

void sub_261123D90()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);
}

uint64_t sub_261123DC0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_261123E50(uint64_t a1, int a2)
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

uint64_t sub_261123E98(uint64_t result, int a2, int a3)
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

uint64_t sub_261123F00@<X0>(uint64_t a1@<X8>)
{
  v33[2] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81240, &qword_26115E928);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81248, &qword_26115E930);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v33 - v7;
  v9 = sub_26115AF74();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81250, &qword_26115E938);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81258, &qword_26115E940);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v33 - v20;
  if (sub_26115A984())
  {
    swift_storeEnumTagMultiPayload();
    sub_2611244C8();
    sub_26110CC00();
    return sub_26115B104();
  }

  else
  {
    sub_26115B4D4();
    sub_26115B084();
    v23 = sub_26115B094();
    (*(*(v23 - 8) + 56))(v17, 0, 1, v23);
    v24 = sub_26115B4F4();
    v33[1] = v1;
    v25 = v24;

    sub_26110CEE0(v17, &qword_27FE81250, &qword_26115E938);
    v33[3] = v25;
    sub_26115AF64();
    sub_26115B374();
    (*(v10 + 8))(v13, v9);

    v26 = sub_26115B274();
    (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
    v27 = sub_26115B294();
    sub_26110CEE0(v8, &qword_27FE81248, &qword_26115E930);
    KeyPath = swift_getKeyPath();
    v29 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81260, &qword_26115E978) + 36)];
    *v29 = KeyPath;
    v29[1] = v27;
    v30 = sub_26115B474();
    v31 = swift_getKeyPath();
    v32 = &v21[*(v18 + 36)];
    *v32 = v31;
    v32[1] = v30;
    sub_261124458(v21, v4);
    swift_storeEnumTagMultiPayload();
    sub_2611244C8();
    sub_26110CC00();
    sub_26115B104();
    return sub_261124668(v21);
  }
}

uint64_t sub_261124350@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115B004();
  *a1 = result;
  return result;
}

uint64_t sub_26112437C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115B004();
  *a1 = result;
  return result;
}

uint64_t sub_2611243A8(uint64_t *a1)
{
  v1 = *a1;

  return sub_26115B014();
}

uint64_t sub_2611243D4(uint64_t *a1)
{
  v1 = *a1;

  return sub_26115B014();
}

uint64_t sub_261124400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26115AFE4();
  *a1 = result;
  return result;
}

uint64_t sub_26112442C(uint64_t *a1)
{
  v1 = *a1;

  return sub_26115AFF4();
}

uint64_t sub_261124458(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81258, &qword_26115E940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2611244C8()
{
  result = qword_27FE81268;
  if (!qword_27FE81268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81258, &qword_26115E940);
    sub_261124580();
    sub_26111EDDC(&qword_27FE81288, &qword_27FE81290, &qword_26115E9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81268);
  }

  return result;
}

unint64_t sub_261124580()
{
  result = qword_27FE81270;
  if (!qword_27FE81270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE81260, &qword_26115E978);
    swift_getOpaqueTypeConformance2();
    sub_26111EDDC(&qword_27FE81278, &qword_27FE81280, &qword_26115E9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE81270);
  }

  return result;
}

uint64_t sub_261124668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE81258, &qword_26115E940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611246D0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261124728()
{
  MEMORY[0x2666FA9D0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_2611247C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_261123BB0();
}

uint64_t sub_2611247D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_261124828()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26110DB28;

  return sub_261123CEC();
}

uint64_t sub_2611248B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26110DB28;

  return sub_261157C74(v2);
}

uint64_t sub_261124964()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2611249AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26110DB28;

  return sub_2611239D8(a1, v4, v5, v7, v6);
}

uint64_t sub_261124A74()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261124AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26110CAC4;

  return sub_2611231C4(a1, v4, v5, v6);
}

uint64_t sub_261124B68(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261124BB4()
{
  result = qword_27FE812B0;
  if (!qword_27FE812B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FE812B8, &qword_26115EA18);
    sub_2611244C8();
    sub_26110CC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE812B0);
  }

  return result;
}

uint64_t sub_261124C54()
{
  sub_26115BA94();
  sub_26115B704();
  return sub_26115BAB4();
}

uint64_t sub_261124CC8()
{
  sub_26115BA94();
  sub_26115B704();
  return sub_26115BAB4();
}

uint64_t sub_261124D1C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26115B9D4();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_261124DBC(void *a1)
{
  v2 = v1;
  v4 = sub_26115AD64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26115AD44();
  v9 = sub_26115AD54();
  v10 = sub_26115B7F4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_261107000, v9, v10, "PASUINonUIExtensionConfiguration accept extension is accepting a new non-UI connection", v11, 2u);
    MEMORY[0x2666FA930](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = sub_26115ACA4();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  [a1 activate];
  return 1;
}

uint64_t sub_261124F48(void *a1)
{
  v2 = *v1;
  sub_261124DBC(a1);
  return 1;
}

void sub_261125084(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_261125234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26115A1D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_2611252A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811C0, &qword_26115E490);
    v4 = sub_26115B614();
  }

  v7 = a3;
  v6(v4, a3);
}

void sub_261125494(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE811C0, &qword_26115E490);
    v5 = sub_26115B604();
  }

  if (a2)
  {
    v6 = sub_26115A1D4();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_261125670(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_2611257F8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26115A1D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}