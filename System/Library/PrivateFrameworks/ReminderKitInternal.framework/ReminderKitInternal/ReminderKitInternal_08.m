uint64_t sub_2300EA6EC(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14880);
  }

  else
  {

    return sub_230310E68();
  }
}

uint64_t sub_2300EA760(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v45 = a2;
  v6 = sub_23030EBB8();
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v43 = v9;
    v49 = MEMORY[0x277D84F90];
    v12 = v7;
    v13 = v10;
    sub_2303109B8();
    v14 = a3 + 56;
    v15 = sub_230310658();
    v16 = v12;
    v17 = v15;
    v18 = 0;
    v19 = *(a3 + 36);
    v41 = v16 + 16;
    v42 = (v16 + 8);
    v36 = a3 + 64;
    v37 = v16;
    v38 = v13;
    v39 = v6;
    v40 = v19;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(a3 + 32))
    {
      v23 = v17 >> 6;
      if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_23;
      }

      if (v19 != *(a3 + 36))
      {
        goto LABEL_24;
      }

      v46 = v18;
      v19 = v14;
      v14 = v43;
      (*(v16 + 16))(v43, *(a3 + 48) + *(v16 + 72) * v17, v6);
      v44(&v48, v14);
      v47 = v4;
      if (v4)
      {
        goto LABEL_28;
      }

      (*v42)(v14, v6);
      v6 = v48;
      sub_230310988();
      sub_2303109C8();
      sub_2303109D8();
      sub_230310998();
      v20 = 1 << *(a3 + 32);
      if (v17 >= v20)
      {
        goto LABEL_25;
      }

      v24 = *(v19 + 8 * v23);
      if ((v24 & (1 << v17)) == 0)
      {
        goto LABEL_26;
      }

      v14 = v19;
      LODWORD(v19) = v40;
      if (v40 != *(a3 + 36))
      {
        goto LABEL_27;
      }

      v25 = v24 & (-2 << (v17 & 0x3F));
      if (v25)
      {
        v20 = __clz(__rbit64(v25)) | v17 & 0x7FFFFFFFFFFFFFC0;
        v16 = v37;
        v21 = v38;
        v22 = v46;
      }

      else
      {
        v26 = v23 << 6;
        v27 = v23 + 1;
        v28 = (v36 + 8 * v23);
        while (v27 < (v20 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            v31 = v37;
            v32 = v38;
            sub_2300EB170(v17, v40, 0);
            v21 = v32;
            v16 = v31;
            v20 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        v33 = v37;
        v34 = v38;
        sub_2300EB170(v17, v40, 0);
        v21 = v34;
        v16 = v33;
LABEL_19:
        v22 = v46;
      }

      v18 = v22 + 1;
      v17 = v20;
      v6 = v39;
      v4 = v47;
      if (v18 == v21)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    (*v42)(v14, v6);

    __break(1u);
  }

  return result;
}

uint64_t REMChangeItemWithUnsavedMembershipsOfRemindersInSections.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:modifiedOn:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  sub_230127188(a1);
  v14 = v13;
  if (a2)
  {
    v15 = [a2 uuid];
    sub_23030EBA8();

    v16 = sub_23030EBB8();
    (*(*(v16 - 8) + 56))(v12, 0, 1, v16);
  }

  else
  {
    v17 = sub_23030EBB8();
    (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  }

  REMChangeItemWithUnsavedMembershipsOfRemindersInSections.updateMembershipsOfReminders(withReminderIdentifiers:destinationSectionIdentifier:modifiedOn:)(v14, v12, a3, a4, a5);

  return sub_2300BB7F8(v12);
}

void REMChangeItemWithUnsavedMembershipsOfRemindersInSections.updateMembershipsOfReminders(withReminderIdentifiers:destinationSectionIdentifier:modifiedOn:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[2] = a2;
  v14[3] = a3;
  sub_2300EA760(sub_2300EAFC8, v14, a1);
  v7 = objc_allocWithZone(MEMORY[0x277D446F8]);
  sub_2300EAFE8();
  v8 = sub_23030FCC8();

  v9 = [v7 initWithMemberships_];

  v10 = (*(a5 + 8))(a4, a5);
  if (v10)
  {
    v11 = v10;
    (*(a5 + 16))([v10 mergingWith:v9 mergePolicy:0], a4, a5);
  }

  else
  {
    v12 = *(a5 + 16);
    v13 = v9;
    v12(v9, a4, a5);
  }
}

uint64_t sub_2300EAD84@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v21 = a3;
  v5 = sub_23030EB58();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  sub_2300BB860(a1, &v20 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_23030EB88();
  v13 = sub_23030EBB8();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    v15 = sub_23030EB88();
    (*(v14 + 8))(v11, v13);
  }

  v16 = objc_allocWithZone(MEMORY[0x277D446F0]);
  v17 = sub_23030EAA8();
  v18 = [v16 initWithMemberIdentifier:v12 groupIdentifier:v15 isObsolete:0 modifiedOn:v17];

  result = (*(v6 + 8))(v8, v5);
  *v21 = v18;
  return result;
}

unint64_t sub_2300EAFE8()
{
  result = qword_27DB152A0;
  if (!qword_27DB152A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB152A0);
  }

  return result;
}

void (*sub_2300EB034(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 unsavedMembershipsOfRemindersInSections];
  return sub_2300EB090;
}

void sub_2300EB090(id *a1)
{
  v1 = *a1;
  [a1[1] setUnsavedMembershipsOfRemindersInSections_];
}

void (*sub_2300EB0D8(void *a1))(id *)
{
  a1[1] = v1;
  *a1 = [v1 unsavedMembershipsOfRemindersInSections];
  return sub_2300EB184;
}

uint64_t sub_2300EB170(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t static REMPermanentlyHiddenDataView.fetchReminderAndCheckIfPermanentlyHidden(store:reminderID:)(char a1, void *a2)
{
  v5 = sub_23030EBB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for REMObjectID_Codable();
  v10 = objc_allocWithZone(v9);
  v11 = a2;
  v12 = [v11 uuid];
  sub_23030EBA8();

  v13 = sub_23030EB88();
  (*(v6 + 8))(v8, v5);
  v14 = [v11 entityName];
  if (!v14)
  {
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v14 = sub_23030F8B8();
  }

  v21.receiver = v10;
  v21.super_class = v9;
  v15 = objc_msgSendSuper2(&v21, sel_initWithUUID_entityName_, v13, v14);

  type metadata accessor for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation();
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = a1;
  sub_2300BE118(v16, v15, v19);

  if (!v2)
  {
    v17 = v19[0];
  }

  return v17 & 1;
}

uint64_t sub_2300EB3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265646E696D6572 && a2 == 0xEA00000000004449)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_230311048();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2300EB43C(uint64_t a1)
{
  v2 = sub_2300EBF88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300EB478(uint64_t a1)
{
  v2 = sub_2300EBF88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB152A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300EBF88();
  v8 = v7;
  sub_230311448();
  v10[1] = v8;
  type metadata accessor for REMObjectID_Codable();
  sub_2300EBFDC(qword_280C9BFD8);
  sub_230310DF8();

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB152B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300EBF88();
  sub_230311428();
  if (!v2)
  {
    type metadata accessor for REMObjectID_Codable();
    sub_2300EBFDC(&qword_280C9C5D0);
    sub_230310CE8();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2300EB820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000230340A50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2300EB8B4(uint64_t a1)
{
  v2 = sub_2300EC020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300EB8F0(uint64_t a1)
{
  v2 = sub_2300EC020();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB152C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300EC020();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB152D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300EC020();
  sub_230311428();
  if (!v2)
  {
    v9 = sub_230310CA8();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2300EBBD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB152C0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300EC020();
  sub_230311448();
  sub_230310DB8();
  return (*(v3 + 8))(v5, v2);
}

id REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithFetchResultTokenToDiffAgainst_, a1);

  return v3;
}

id REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2300EBF88()
{
  result = qword_27DB152B0;
  if (!qword_27DB152B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152B0);
  }

  return result;
}

uint64_t sub_2300EBFDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMObjectID_Codable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2300EC020()
{
  result = qword_27DB152C8;
  if (!qword_27DB152C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152C8);
  }

  return result;
}

unint64_t sub_2300EC078()
{
  result = qword_27DB152D8;
  if (!qword_27DB152D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152D8);
  }

  return result;
}

unint64_t sub_2300EC0D8()
{
  result = qword_27DB152E0;
  if (!qword_27DB152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152E0);
  }

  return result;
}

void **assignWithCopy for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters(void **a1, void **a2)
{
  v3 = *a2;
  v4 = *a1;
  *a1 = *a2;
  v5 = v3;

  return a1;
}

void **assignWithTake for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Parameters(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for REMPermanentlyHiddenDataView.PermanentlyHiddenInvocation.Result(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_2300EC2B8()
{
  result = qword_27DB152E8;
  if (!qword_27DB152E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152E8);
  }

  return result;
}

unint64_t sub_2300EC310()
{
  result = qword_27DB152F0;
  if (!qword_27DB152F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152F0);
  }

  return result;
}

unint64_t sub_2300EC368()
{
  result = qword_27DB152F8;
  if (!qword_27DB152F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB152F8);
  }

  return result;
}

unint64_t sub_2300EC3C0()
{
  result = qword_27DB15300;
  if (!qword_27DB15300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15300);
  }

  return result;
}

unint64_t sub_2300EC418()
{
  result = qword_27DB15308;
  if (!qword_27DB15308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15308);
  }

  return result;
}

unint64_t sub_2300EC470()
{
  result = qword_27DB15310;
  if (!qword_27DB15310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15310);
  }

  return result;
}

void *firstly<A>(closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5();
  type metadata accessor for Promise();
  v8 = sub_2300951C0(v7);
  (*(v4 + 8))(v7, a3);
  return v8;
}

uint64_t firstly<A>(on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_2300ECE2C(a1, a2, a3, a4, sub_2300ED628);
}

{
  v7 = swift_allocObject();
  v7[2] = a4;
  v7[3] = a2;
  v7[4] = a3;

  type metadata accessor for Promise();
  v8 = Promise.__allocating_init(resolver:)(sub_2300ED628);

  return v8;
}

uint64_t sub_2300EC650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a8;
  v26 = a3;
  v28 = a5;
  v13 = sub_23030F458();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_23030F4C8();
  v17 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v21 = v26;
  v20[2] = v25;
  v20[3] = a6;
  v20[4] = a7;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = v21;
  v20[8] = a4;
  aBlock[4] = sub_2300ED93C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_52;
  v22 = _Block_copy(aBlock);

  sub_23030F488();
  v29 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v19, v16, v22);
  _Block_release(v22);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v27);
}

void *sub_2300EC9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5();
  type metadata accessor for Promise();
  v8 = sub_2300951C0(v7);
  (*(v4 + 8))(v7, a3);
  return v8;
}

uint64_t sub_2300ECB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v33 = a8;
  v35 = a5;
  v30 = a3;
  v31 = a1;
  v29 = a10;
  v12 = sub_23030F458();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_23030F4C8();
  v16 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v20 = swift_allocObject();
  v22 = v29;
  v21 = v30;
  v20[2] = a9;
  v20[3] = v22;
  v20[4] = v19;
  v20[5] = v21;
  v23 = v32;
  v24 = v33;
  v20[6] = a4;
  v20[7] = v23;
  v25 = v31;
  v20[8] = v24;
  v20[9] = v25;
  v20[10] = a2;
  aBlock[4] = sub_2300ED77C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2300F5280;
  aBlock[3] = &block_descriptor_40;
  v26 = _Block_copy(aBlock);

  sub_23030F488();
  v36 = MEMORY[0x277D84F90];
  sub_2300ED808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB16A40);
  sub_2300ED860();
  sub_230310648();
  MEMORY[0x2319120F0](0, v18, v15, v26);
  _Block_release(v26);
  (*(v13 + 8))(v15, v12);
  (*(v16 + 8))(v18, v34);
}

uint64_t sub_2300ECE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a8;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2300ED6F0;
  *(v17 + 24) = v16;
  v20[4] = sub_2300EDA24;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_23005FEDC;
  v20[3] = &block_descriptor_27;
  v18 = _Block_copy(v20);

  dispatch_sync(a5, v18);
  _Block_release(v18);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2300ED034(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  a1();
  v16 = swift_allocObject();
  v16[2] = a7;
  v16[3] = a3;
  v16[4] = a4;
  v17 = qword_280C9BA30;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = qword_280C9BA38;
  sub_230047648(v18, a9, v16);

  v19 = swift_allocObject();
  *(v19 + 16) = a5;
  *(v19 + 24) = a6;

  sub_230065368(v18, a11, v19);
}

uint64_t sub_2300ED19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(uint64_t a1), uint64_t, uint64_t (*)(void *a1), uint64_t))
{
  type metadata accessor for Promise();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = Promise.__allocating_init(resolver:)(a7);

  return v8;
}

uint64_t sub_2300ED25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v17 = swift_allocObject();
  v17[2] = a9;
  v17[3] = a10;
  v17[4] = v16;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a7;
  v17[8] = a8;
  v17[9] = a1;
  v17[10] = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_2300ED6B4;
  *(v18 + 24) = v17;
  aBlock[4] = sub_230060B84;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23005FEDC;
  aBlock[3] = &block_descriptor_2;
  v19 = _Block_copy(aBlock);

  dispatch_sync(a5, v19);
  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2300ED448(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v25 = a2;
    a4();
    v19 = swift_allocObject();
    v19[2] = a8;
    v19[3] = a9;
    v19[4] = a6;
    v19[5] = a7;
    v20 = qword_280C9BA30;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = qword_280C9BA38;
    sub_230047648(v21, a11, v19);

    v22 = swift_allocObject();
    *(v22 + 16) = v25;
    *(v22 + 24) = a3;

    sub_230065368(v21, a13, v22);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_230095B08();
    v23 = swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    *(v24 + 24) = 1;
    *(v24 + 32) = 0u;
    *(v24 + 48) = 0u;
    a2();
  }
}

uint64_t objectdestroy_7Tm()
{

  return swift_deallocObject();
}

unint64_t sub_2300ED808()
{
  result = qword_280C9B430;
  if (!qword_280C9B430)
  {
    sub_23030F458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B430);
  }

  return result;
}

unint64_t sub_2300ED860()
{
  result = qword_280C9B410;
  if (!qword_280C9B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB16A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C9B410);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{

  return swift_deallocObject();
}

void *sub_2300EDA68(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_23009D850(*(a1 + 16), 0);
  v4 = sub_23009DE30(&v6, v3 + 4, v2, a1);
  sub_230060014();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2300EDAF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_2300A3B64(*(a1 + 16), 0);
  v4 = sub_23009E870(&v6, v3 + 32, v2, a1);
  sub_230060014();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_2300EDB88()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15318);
  v1 = __swift_project_value_buffer(v0, qword_27DB15318);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

ReminderKitInternal::REMTitleEmbeddingMethods_optional __swiftcall REMTitleEmbeddingMethods.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_230310C08();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t REMTitleEmbeddingMethods.rawValue.getter()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E65746E6553;
  }
}

uint64_t sub_2300EDD14(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x800000023033EA30;
  if (v3 == 1)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x800000023033EA30;
  }

  else
  {
    v6 = 0x800000023033EA50;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E65746E6553;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEC00000063655632;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000011;
    v4 = 0x800000023033EA50;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x65636E65746E6553;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000063655632;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_230311048();
  }

  return v11 & 1;
}

uint64_t sub_2300EDDF4()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

uint64_t sub_2300EDEA4()
{
  sub_23030F9C8();
}

uint64_t sub_2300EDF40()
{
  sub_230311358();
  sub_23030F9C8();

  return sub_2303113A8();
}

void sub_2300EDFF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000063655632;
  v4 = 0xD000000000000010;
  v5 = 0x800000023033EA30;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v5 = 0x800000023033EA50;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x65636E65746E6553;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t REMTitleEmbeddingConfig.majorLanguage.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t REMTitleEmbeddingConfig.currentMethod.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void __swiftcall REMTitleEmbeddingConfig.init(majorLanguage:revision:currentMethod:stopWords:)(ReminderKitInternal::REMTitleEmbeddingConfig *__return_ptr retstr, Swift::String majorLanguage, Swift::Int revision, Swift::String currentMethod, Swift::OpaquePointer stopWords)
{
  retstr->majorLanguage = majorLanguage;
  retstr->revision = revision;
  retstr->currentMethod = currentMethod;
  retstr->stopWords = stopWords;
}

uint64_t REMTitleEmbeddingConfig.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23030E9B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23030E908();
  v9 = sub_23030E9C8();
  if (v2)
  {

    v11 = objc_opt_self();
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_230310848();

    v22 = 0xD00000000000002ELL;
    v23 = 0x8000000230340A90;
    v12 = sub_23030E888();
    MEMORY[0x231911790](v12);

    v13 = sub_23030F8B8();

    [v11 internalErrorWithDebugDescription_];

    swift_willThrow();
    v16 = *(v6 + 8);
    v16(a1, v5);
    return (v16)(v8, v5);
  }

  else
  {
    v14 = v9;
    v15 = v10;
    v26 = a1;
    sub_23030E408();
    swift_allocObject();
    sub_23030E3F8();
    sub_2300EE420();
    sub_23030E3E8();

    sub_23005FE3C(v14, v15);
    v18 = *(v6 + 8);
    v18(v26, v5);
    result = (v18)(v8, v5);
    v19 = v23;
    v20 = v24;
    v21 = v25;
    *a2 = v22;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20;
    *(a2 + 32) = v21;
  }

  return result;
}

unint64_t sub_2300EE420()
{
  result = qword_27DB15330;
  if (!qword_27DB15330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15330);
  }

  return result;
}

uint64_t REMTitleEmbeddingConfig.saveConfig(to:)()
{
  v1 = sub_23030E9B8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  sub_23030E908();
  sub_23030E458();
  swift_allocObject();
  sub_23030E448();
  v13 = v12;
  v14 = v5;
  v15 = v6;
  v16 = v0[2];
  sub_2300EE858();
  v7 = sub_23030E438();
  v9 = v8;

  sub_23030EA28();
  (*(v2 + 8))(v4, v1);
  sub_23005FE3C(v7, v9);
  return 1;
}

unint64_t sub_2300EE858()
{
  result = qword_27DB15338;
  if (!qword_27DB15338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15338);
  }

  return result;
}

uint64_t sub_2300EE8AC()
{
  v1 = 0x6E614C726F6A616DLL;
  v2 = 0x4D746E6572727563;
  if (*v0 != 2)
  {
    v2 = 0x64726F57706F7473;
  }

  if (*v0)
  {
    v1 = 0x6E6F697369766572;
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

uint64_t sub_2300EE944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2300F3D1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2300EE96C(uint64_t a1)
{
  v2 = sub_2300F2CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300EE9A8(uint64_t a1)
{
  v2 = sub_2300F2CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMTitleEmbeddingConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15340);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[2] = v1[3];
  v12[3] = v7;
  v8 = v1[4];
  v12[0] = v1[5];
  v12[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300F2CC8();
  sub_230311448();
  v16 = 0;
  v9 = v12[4];
  sub_230310DA8();
  if (!v9)
  {
    v10 = v12[0];
    v15 = 1;
    sub_230310DD8();
    v14 = 2;
    sub_230310DA8();
    v12[5] = v10;
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_230059F7C(&qword_280C96EE8);
    sub_230310DF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t REMTitleEmbeddingConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2300F2CC8();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = sub_230310C98();
  v11 = v10;
  v12 = v9;
  v25 = 1;
  v20 = sub_230310CC8();
  v24 = 2;
  v13 = sub_230310C98();
  v21 = v15;
  v19 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  v23 = 3;
  sub_230059F7C(&qword_280C98850);
  sub_230310CE8();
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  v16 = v22;
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void *static REMTitleEmbedding.detectLanguages(string:threshold:)(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CD89C0]) init];
  v3 = sub_23030F8B8();
  [v2 processString_];

  v4 = sub_2303103A8();
  v5 = sub_2300F34B4(v4, a1);

  v6 = v5[2];
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    v10 = v7;
    sub_2300F27AC(&v10);

    return v10;
  }

  v7 = sub_23009DA8C(v6, 0);
  v8 = sub_23009E588(&v10, v7 + 4, v6, v5);

  sub_230060014();
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t REMSentence2VecTitleEmbedding.__allocating_init(lang:)(void *a1)
{
  v2 = swift_allocObject();
  REMSentence2VecTitleEmbedding.init(lang:)(a1);
  return v2;
}

uint64_t REMSentence2VecTitleEmbedding.init(lang:)(void *a1)
{
  v2 = v1;
  *(v2 + 16) = a1;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 sentenceEmbeddingForLanguage_];
  if (v6)
  {
    *(v2 + 32) = v6;
    v7 = [v6 revision];

    *(v2 + 24) = v7;
  }

  else
  {
    v8 = objc_opt_self();
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000023, 0x8000000230340AF0);
    type metadata accessor for NLLanguage(0);
    sub_230310A28();
    v9 = sub_23030F8B8();

    [v8 internalErrorWithDebugDescription_];

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

void *REMSentence2VecTitleEmbedding.__allocating_init(from:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  sub_23030F7C8();

  v0 = objc_opt_self();
  v1 = sub_23030F8B8();

  v2 = [v0 dominantLanguageForString_];

  if (v2)
  {
    v3 = swift_allocObject();
    REMSentence2VecTitleEmbedding.init(lang:)(v2);
  }

  else
  {
    v4 = objc_opt_self();
    v3 = sub_23030F8B8();
    [v4 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_2300EF444(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t REMSentence2VecTitleEmbedding.vector(for:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(v2 + 32);
    v4 = sub_2303101F8();
    if (v4)
    {
      v12 = v4;
      v5 = &unk_2844EA0C8;
LABEL_14:
      sub_23009CE4C(v5);
      type metadata accessor for RDVector();
      result = swift_allocObject();
      v11 = *(v12 + 16);
      *(result + 16) = v12;
      *(result + 24) = v11;
      return result;
    }

    result = [v3 dimension];
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v9 = result;
        v10 = sub_23030FD48();
        *(v10 + 16) = v9;
        bzero((v10 + 32), 8 * v9);
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
      }

      v12 = v10;
      v5 = &unk_2844EA0F0;
      goto LABEL_14;
    }
  }

  else
  {
    result = [*(v2 + 32) dimension];
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v7 = result;
        v8 = sub_23030FD48();
        *(v8 + 16) = v7;
        bzero((v8 + 32), 8 * v7);
      }

      else
      {
        v8 = MEMORY[0x277D84F90];
      }

      v12 = v8;
      v5 = &unk_2844EA118;
      goto LABEL_14;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall REMSentence2VecTitleEmbedding.config()(ReminderKitInternal::REMTitleEmbeddingConfig *__return_ptr retstr)
{
  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v4 = *(v1 + 24);
  retstr->majorLanguage._countAndFlagsBits = v3;
  retstr->majorLanguage._object = v5;
  retstr->revision = v4;
  strcpy(&retstr->currentMethod, "Sentence2Vec");
  v6 = MEMORY[0x277D84F90];
  BYTE5(retstr->currentMethod._object) = 0;
  HIWORD(retstr->currentMethod._object) = -5120;
  retstr->stopWords._rawValue = v6;
}

uint64_t REMSentence2VecTitleEmbedding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2300EF660@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = REMSentence2VecTitleEmbedding.init(lang:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2300EF6B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2300F3E98(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2300EF708@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v5 = *(v3 + 24);
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  strcpy((a1 + 24), "Sentence2Vec");
  v7 = MEMORY[0x277D84F90];
  *(a1 + 37) = 0;
  *(a1 + 38) = -5120;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_2300EF768(void *a1, void *a2)
{
  v3 = v2;
  *(v2 + 48) = 22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15380);
  inited = swift_initStackObject();
  v5 = *MEMORY[0x277CD88F8];
  *(inited + 32) = *MEMORY[0x277CD88F8];
  v6 = MEMORY[0x277CD8938];
  *(inited + 16) = xmmword_230319540;
  v7 = *v6;
  v8 = *MEMORY[0x277CD8980];
  *(inited + 40) = *v6;
  *(inited + 48) = v8;
  v9 = *MEMORY[0x277CD88D8];
  *(inited + 56) = *MEMORY[0x277CD88D8];
  *(inited + 64) = v9;
  v10 = *MEMORY[0x277CD8920];
  v11 = *MEMORY[0x277CD8928];
  *(inited + 72) = *MEMORY[0x277CD8920];
  *(inited + 80) = v11;
  v12 = *MEMORY[0x277CD8908];
  *(inited + 88) = *MEMORY[0x277CD8908];
  v13 = v9;
  v14 = v5;
  v15 = v7;
  v16 = v8;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = sub_2302A3A38(inited);
  swift_setDeallocating();
  type metadata accessor for NLTag(0);
  swift_arrayDestroy();
  *(v3 + 56) = v20;
  *(v3 + 40) = a2;
  *(v3 + 16) = a1;
  v21 = objc_opt_self();
  v22 = a2;
  v23 = a1;
  v24 = [v21 wordEmbeddingForLanguage_];
  if (v24)
  {
    *(v3 + 32) = v24;
    v25 = [v24 revision];

    *(v3 + 24) = v25;
  }

  else
  {
    v26 = objc_opt_self();
    sub_230310848();
    MEMORY[0x231911790](0xD000000000000023, 0x8000000230340D00);
    type metadata accessor for NLLanguage(0);
    sub_230310A28();
    MEMORY[0x231911790](0xD000000000000034, 0x8000000230340D30);
    v27 = sub_23030F8B8();

    [v26 internalErrorWithDebugDescription_];

    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t REMUniversalGrammarTitleEmbedding.__allocating_init(lang:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15358);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_230315CE0;
  v3 = *MEMORY[0x277CD8970];
  *(v2 + 32) = *MEMORY[0x277CD8970];
  v4 = objc_allocWithZone(MEMORY[0x277CD89D8]);
  type metadata accessor for NLTagScheme(0);
  v5 = v3;
  v6 = sub_23030FCC8();

  v7 = [v4 initWithTagSchemes_];

  v8 = swift_allocObject();
  sub_2300EF768(a1, v7);
  return v8;
}

uint64_t REMUniversalGrammarTitleEmbedding.__allocating_init(from:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  sub_23030F7C8();

  v2 = objc_opt_self();
  v3 = sub_23030F8B8();

  v4 = [v2 dominantLanguageForString_];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15358);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_2303167B0;
    v6 = *MEMORY[0x277CD8950];
    v7 = *MEMORY[0x277CD8970];
    *(v5 + 32) = *MEMORY[0x277CD8950];
    *(v5 + 40) = v7;
    v8 = objc_allocWithZone(MEMORY[0x277CD89D8]);
    type metadata accessor for NLTagScheme(0);
    v9 = v6;
    v10 = v7;
    v11 = sub_23030FCC8();

    v12 = [v8 initWithTagSchemes_];

    v1 = swift_allocObject();
    sub_2300EF768(v4, v12);
  }

  else
  {
    v13 = objc_opt_self();
    v14 = sub_23030F8B8();
    [v13 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  return v1;
}

uint64_t REMUniversalGrammarTitleEmbedding.vector(for:)(uint64_t a1, unint64_t a2)
{
  v7 = v3;
  if (!a2)
  {
    v19 = [*(v3 + 32) dimension];
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (v19)
      {
        v20 = v19;
        v21 = sub_23030FD48();
        *(v21 + 16) = v20;
        bzero((v21 + 32), 8 * v20);
      }

      else
      {
        v21 = MEMORY[0x277D84F90];
      }

      v31[0] = v21;
      sub_23009CE4C(&unk_2844EA190);
      type metadata accessor for RDVector();
      result = swift_allocObject();
      v27 = *(v21 + 16);
      *(result + 16) = v21;
      *(result + 24) = v27;
      return result;
    }

    __break(1u);
    goto LABEL_27;
  }

  v4 = a2;
  v5 = a1;
  v8 = *(v3 + 40);
  v9 = sub_23030F8B8();
  [v8 setString_];

  v32 = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v10);
  sub_230310408();
  v2 = v32;
  v6 = v32 >> 62;
  if (v32 >> 62)
  {
    if (!sub_2303106D8())
    {
LABEL_4:
      if (qword_27DB13AF0 == -1)
      {
LABEL_5:
        v11 = sub_23030EF48();
        __swift_project_value_buffer(v11, qword_27DB15318);

        v12 = sub_23030EF38();
        v13 = sub_230310288();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v31[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_23004E30C(v5, v4, v31);
          _os_log_impl(&dword_230044000, v12, v13, "Failed vectorizing title: %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v15);
          MEMORY[0x231914180](v15, -1, -1);
          MEMORY[0x231914180](v14, -1, -1);
        }

        goto LABEL_8;
      }

LABEL_27:
      swift_once();
      goto LABEL_5;
    }
  }

  else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

LABEL_8:
  v16 = Array<A>.sum()(v2);
  if (v16)
  {
    v17 = v16;
    if (v6)
    {
      v18 = sub_2303106D8();
    }

    else
    {
      v18 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = / infix(_:_:)(v17, v18);

    swift_beginAccess();
    v30 = *(v25 + 16);

    sub_23009CE4C(&unk_2844EA140);

    v26 = v30;
LABEL_23:
    type metadata accessor for RDVector();
    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v29 = *(v26 + 16);

    result = v28;
    *(v28 + 24) = v29;
    return result;
  }

  result = [*(v7 + 32) dimension];
  if ((result & 0x8000000000000000) == 0)
  {
    if (result)
    {
      v23 = result;
      v24 = sub_23030FD48();
      *(v24 + 16) = v23;
      bzero((v24 + 32), 8 * v23);
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v31[0] = v24;
    sub_23009CE4C(&unk_2844EA168);
    v26 = v31[0];
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_2300F0178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a1;
  if (sub_2300AEB10())
  {
    v9 = sub_23030FB28();
    MEMORY[0x2319116F0](v9);

    v10 = sub_2303101F8();

    if (v10)
    {
      type metadata accessor for RDVector();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      *(v11 + 24) = *(v10 + 16);
      MEMORY[0x231911A30]();
      if (*((*a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23030FD18();
      }

      sub_23030FD68();
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __swiftcall REMUniversalGrammarTitleEmbedding.config()(ReminderKitInternal::REMTitleEmbeddingConfig *__return_ptr retstr)
{
  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v4 = *(v1 + 24);
  retstr->majorLanguage._countAndFlagsBits = v3;
  retstr->majorLanguage._object = v5;
  retstr->revision = v4;
  retstr->currentMethod._countAndFlagsBits = 0xD000000000000010;
  v6 = MEMORY[0x277D84F90];
  retstr->currentMethod._object = 0x800000023033EA30;
  retstr->stopWords._rawValue = v6;
}

uint64_t REMUniversalGrammarTitleEmbedding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2300F03A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15358);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_230315CE0;
  v6 = *MEMORY[0x277CD8970];
  *(v5 + 32) = *MEMORY[0x277CD8970];
  v7 = objc_allocWithZone(MEMORY[0x277CD89D8]);
  type metadata accessor for NLTagScheme(0);
  v8 = v6;
  v9 = sub_23030FCC8();

  v10 = [v7 initWithTagSchemes_];

  v11 = swift_allocObject();
  result = sub_2300EF768(a1, v10);
  if (!v2)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t sub_2300F04AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2300F3FE4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2300F04FC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v5 = *(v3 + 24);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v5;
  a1[3] = 0xD000000000000010;
  v7 = MEMORY[0x277D84F90];
  a1[4] = 0x800000023033EA30;
  a1[5] = v7;
  return result;
}

uint64_t sub_2300F0570(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  *(v3 + 48) = v6;
  *(v3 + 24) = a1;
  v7 = a1;
  [v6 setLanguage_];
  v8 = [objc_opt_self() wordEmbeddingForLanguage_];
  if (v8)
  {
    *(v3 + 32) = v8;
    v9 = [v8 revision];

    *(v3 + 16) = v9;
    *(v3 + 40) = a2;
  }

  else
  {

    v10 = objc_opt_self();
    sub_230310848();
    MEMORY[0x231911790](0xD00000000000001FLL, 0x8000000230340CE0);
    type metadata accessor for NLLanguage(0);
    sub_230310A28();
    v11 = sub_23030F8B8();

    [v10 internalErrorWithDebugDescription_];

    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v3;
}

uint64_t REMFilteredTitleEmbedding.__allocating_init(lang:)(void *a1)
{
  v2 = swift_allocObject();
  sub_2300F0570(a1, MEMORY[0x277D84FA0]);
  return v2;
}

uint64_t REMFilteredTitleEmbedding.__allocating_init(from:stopWordThresholdByPercent:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  REMFilteredTitleEmbedding.init(from:stopWordThresholdByPercent:)(a1, a2);
  return v4;
}

uint64_t REMFilteredTitleEmbedding.init(from:stopWordThresholdByPercent:)(uint64_t a1, double a2)
{
  v146 = *v2;
  v147 = v3;
  v154 = sub_23030ED18();
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v7 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v144 - v9;
  v155 = sub_23030ED38();
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v12 = &v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CD89E0]) initWithUnit_];
  v150 = a1;
  v151 = v2;
  v2[6] = v13;
  v156[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_2300B0FA8();
  v14 = sub_23030F7C8();
  v16 = v15;
  v17 = objc_opt_self();
  v18 = sub_23030F8B8();
  v19 = [v17 dominantLanguageForString_];

  if (!v19)
  {
    if (qword_27DB13AF0 != -1)
    {
      swift_once();
    }

    v36 = sub_23030EF48();
    __swift_project_value_buffer(v36, qword_27DB15318);

    v37 = sub_23030EF38();
    v38 = sub_230310288();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v10;
      v41 = swift_slowAlloc();
      v156[0] = v41;
      *v39 = 136315138;
      v42 = sub_23004E30C(v14, v16, v156);

      *(v39 + 4) = v42;
      _os_log_impl(&dword_230044000, v37, v38, "failed detecting language %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v43 = v41;
      v10 = v40;
      MEMORY[0x231914180](v43, -1, -1);
      MEMORY[0x231914180](v39, -1, -1);
    }

    else
    {
    }

LABEL_20:
    v54 = v154;
    v55 = v155;
    v56 = v153;
    sub_23030EC88();
    sub_23030ED28();
    sub_23030ECE8();
    (*(v152 + 8))(v7, v54);
    v57 = sub_23030EC18();
    v58 = *(v57 - 8);
    if ((*(v58 + 48))(v10, 1, v57) == 1)
    {
      (*(v56 + 8))(v12, v55);

      sub_2300F435C(v10);
      v59 = objc_opt_self();
      v60 = sub_23030F8B8();
      [v59 internalErrorWithDebugDescription_];

      swift_willThrow();
    }

    else
    {
      sub_23030EC08();
      (*(v56 + 8))(v12, v55);
      (*(v58 + 8))(v10, v57);
      v61 = sub_23030F8B8();

      v62 = objc_opt_self();
      v63 = v61;
      v64 = [v62 wordEmbeddingForLanguage_];
      if (v64)
      {
        v21 = v151;
        v151[4] = v64;
        v65 = v64;
        *(v21 + 16) = [v65 revision];
        *(v21 + 24) = v63;
        v66 = *(v21 + 48);
        v67 = v63;
        [v66 setLanguage_];
        v30 = v150;
        if (qword_27DB13AF0 != -1)
        {
          swift_once();
        }

        v68 = sub_23030EF48();
        __swift_project_value_buffer(v68, qword_27DB15318);
        v69 = v67;
        v25 = sub_23030EF38();
        v70 = sub_2303102A8();

        if (os_log_type_enabled(v25, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v156[0] = v72;
          *v71 = 136315138;
          v73 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
          v75 = v74;

          v76 = sub_23004E30C(v73, v75, v156);
          v21 = v151;

          *(v71 + 4) = v76;
          _os_log_impl(&dword_230044000, v25, v70, "loaded word embedding for local lang %s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x231914180](v72, -1, -1);
          MEMORY[0x231914180](v71, -1, -1);
        }

        else
        {
        }

        v27 = 0;
        v145 = 0;
        goto LABEL_31;
      }

      v77 = objc_opt_self();
      v156[0] = 0;
      v156[1] = 0xE000000000000000;
      sub_230310848();
      MEMORY[0x231911790](0xD00000000000002ALL, 0x8000000230340B70);
      v157 = v63;
      type metadata accessor for NLLanguage(0);
      sub_230310A28();
      MEMORY[0x231911790](0xD00000000000002CLL, 0x8000000230340BA0);
      v78 = sub_23030F8B8();

      [v77 internalErrorWithDebugDescription_];

      swift_willThrow();
    }

    v21 = v151;

    swift_deallocPartialClassInstance();
    return v21;
  }

  v20 = [objc_opt_self() wordEmbeddingForLanguage_];
  if (!v20)
  {
    v149 = v10;
    if (qword_27DB13AF0 != -1)
    {
      swift_once();
    }

    v44 = sub_23030EF48();
    __swift_project_value_buffer(v44, qword_27DB15318);
    v45 = v19;
    v46 = sub_23030EF38();
    v47 = sub_230310288();

    v48 = v46;
    if (os_log_type_enabled(v46, v47))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v156[0] = v50;
      *v49 = 136315138;
      v51 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v53 = sub_23004E30C(v51, v52, v156);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_230044000, v48, v47, "failed loading word embedding for detected language %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x231914180](v50, -1, -1);
      MEMORY[0x231914180](v49, -1, -1);
    }

    else
    {
    }

    v10 = v149;
    goto LABEL_20;
  }

  v21 = v151;
  v151[4] = v20;
  v22 = v20;
  v23 = v19;
  v145 = v22;
  *(v21 + 16) = [v145 revision];
  *(v21 + 24) = v23;
  v24 = *(v21 + 48);
  v25 = v23;
  [v24 setLanguage_];
  if (qword_27DB13AF0 != -1)
  {
    goto LABEL_88;
  }

  while (1)
  {
    v26 = sub_23030EF48();
    __swift_project_value_buffer(v26, qword_27DB15318);
    v27 = v25;
    v25 = sub_23030EF38();
    v28 = sub_2303102A8();

    v29 = os_log_type_enabled(v25, v28);
    v30 = v150;
    if (v29)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v156[0] = v32;
      *v31 = 136315138;
      v33 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v35 = sub_23004E30C(v33, v34, v156);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_230044000, v25, v28, "loaded word embedding for detected language %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x231914180](v32, -1, -1);
      MEMORY[0x231914180](v31, -1, -1);
    }

    else
    {
    }

LABEL_31:
    v144 = v27;
    v149 = *(v30 + 16);
    if (!v149)
    {
      v80 = MEMORY[0x277D84F98];
      v138 = 0.0;
      goto LABEL_78;
    }

    v79 = 0;
    v148 = v30 + 32;
    v80 = MEMORY[0x277D84F98];
LABEL_34:
    if (v79 < *(v30 + 16))
    {
      break;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    swift_once();
  }

  v152 = v79;
  v81 = *(v21 + 48);

  v82 = v81;
  v83 = sub_23030F8B8();
  [v82 setString_];

  v25 = *(v21 + 48);
  v84 = sub_230310228();

  v157 = MEMORY[0x277D84FA0];
  v85 = *(v84 + 16);
  if (v85)
  {
    v86 = v84 + 40;
    do
    {
      v87 = sub_23030FB28();
      v88 = MEMORY[0x2319116F0](v87);
      v90 = v89;

      v25 = &v157;
      sub_2300A8988(v156, v88, v90);

      v86 += 16;
      --v85;
    }

    while (v85);

    v91 = v157;
  }

  else
  {
    v92 = MEMORY[0x277D84FA0];

    v91 = v92;
  }

  v93 = 0;
  ++v152;
  v94 = v91 + 56;
  v95 = 1 << *(v91 + 32);
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  else
  {
    v96 = -1;
  }

  v21 = v96 & *(v91 + 56);
  v97 = (v95 + 63) >> 6;
  v154 = v97;
  v155 = v91;
  v153 = v91 + 56;
  while (v21)
  {
    v98 = v93;
LABEL_51:
    v99 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v100 = (*(v91 + 48) + ((v98 << 10) | (16 * v99)));
    v101 = *v100;
    v102 = v100[1];
    v103 = v80[2];

    if (!v103 || (v25 = v80, v104 = sub_23005EE00(v101, v102), (v105 & 1) == 0))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156[0] = v80;
      v121 = v101;
      v122 = v101;
      v123 = v102;
      v25 = v80;
      v125 = sub_23005EE00(v122, v102);
      v126 = v80[2];
      v127 = (v124 & 1) == 0;
      v128 = v126 + v127;
      if (__OFADD__(v126, v127))
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      v129 = v124;
      if (v80[3] >= v128)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v124)
          {
            goto LABEL_44;
          }
        }

        else
        {
          v25 = v156;
          sub_230089734();
          if (v129)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        sub_230084148(v128, isUniquelyReferenced_nonNull_native);
        v25 = v156[0];
        v130 = sub_23005EE00(v121, v123);
        if ((v129 & 1) != (v131 & 1))
        {
LABEL_89:
          sub_2303112A8();
          __break(1u);
          goto LABEL_90;
        }

        v125 = v130;
        if (v129)
        {
LABEL_44:

          v80 = v156[0];
          *(*(v156[0] + 56) + 8 * v125) = 1;
          goto LABEL_45;
        }
      }

      v80 = v156[0];
      *(v156[0] + 8 * (v125 >> 6) + 64) |= 1 << v125;
      v132 = (v80[6] + 16 * v125);
      *v132 = v121;
      v132[1] = v123;
      *(v80[7] + 8 * v125) = 1;
      v133 = v80[2];
      v116 = __OFADD__(v133, 1);
      v134 = v133 + 1;
      if (v116)
      {
        goto LABEL_83;
      }

      goto LABEL_75;
    }

    v106 = *(v80[7] + 8 * v104);
    v107 = v106 + 1;
    if (__OFADD__(v106, 1))
    {
      goto LABEL_84;
    }

    v108 = swift_isUniquelyReferenced_nonNull_native();
    v156[0] = v80;
    v109 = v101;
    v110 = v101;
    v111 = v102;
    v25 = v80;
    v112 = sub_23005EE00(v110, v102);
    v114 = v80[2];
    v115 = (v113 & 1) == 0;
    v116 = __OFADD__(v114, v115);
    v117 = v114 + v115;
    if (v116)
    {
      goto LABEL_85;
    }

    v118 = v113;
    if (v80[3] >= v117)
    {
      if ((v108 & 1) == 0)
      {
        v25 = v156;
        v135 = v112;
        sub_230089734();
        v112 = v135;
        if (v118)
        {
LABEL_70:
          v25 = v112;

          v80 = v156[0];
          *(*(v156[0] + 56) + 8 * v25) = v107;
          goto LABEL_45;
        }

        goto LABEL_74;
      }
    }

    else
    {
      sub_230084148(v117, v108);
      v25 = v156[0];
      v112 = sub_23005EE00(v109, v111);
      if ((v118 & 1) != (v119 & 1))
      {
        goto LABEL_89;
      }
    }

    if (v118)
    {
      goto LABEL_70;
    }

LABEL_74:
    v80 = v156[0];
    *(v156[0] + 8 * (v112 >> 6) + 64) |= 1 << v112;
    v136 = (v80[6] + 16 * v112);
    *v136 = v109;
    v136[1] = v111;
    *(v80[7] + 8 * v112) = v107;
    v137 = v80[2];
    v116 = __OFADD__(v137, 1);
    v134 = v137 + 1;
    if (v116)
    {
      goto LABEL_87;
    }

LABEL_75:
    v80[2] = v134;
LABEL_45:
    v93 = v98;
    v97 = v154;
    v91 = v155;
    v94 = v153;
  }

  while (1)
  {
    v98 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      __break(1u);
      goto LABEL_82;
    }

    if (v98 >= v97)
    {
      break;
    }

    v21 = *(v94 + 8 * v98);
    ++v93;
    if (v21)
    {
      goto LABEL_51;
    }
  }

  v30 = v150;
  v21 = v151;
  v79 = v152;
  if (v152 != v149)
  {
    goto LABEL_34;
  }

  v138 = *(v150 + 16);
LABEL_78:

  MEMORY[0x28223BE20](v139);
  *(&v144 - 2) = v138;
  *(&v144 - 1) = a2;
  v140 = v147;
  v141 = sub_2300F453C(v80, sub_2300F43C4);
  v25 = v140;
  if (v140)
  {
LABEL_90:

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {
    v142 = sub_2300B31B0(v141);

    *(v21 + 40) = v142;

    return v21;
  }

  return result;
}

uint64_t sub_2300F1868(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(v1 + 32);

  v6 = [v5 dimension];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v4 + 16);
    if (v7 >= v6)
    {
      v7 = v6;
    }

    v8 = 2 * v7;
    if (v6)
    {
      v2 = v8 + 1;
    }

    else
    {
      v2 = 1;
    }

    sub_230311088();
    swift_unknownObjectRetain_n();
    v9 = swift_dynamicCastClass();
    if (!v9)
    {
      swift_unknownObjectRelease();
      v9 = MEMORY[0x277D84F90];
    }

    v10 = *(v9 + 16);

    if (v10 == v2 >> 1)
    {
      v11 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v11)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  swift_unknownObjectRelease();
  sub_23009D600(v4, v4 + 32, 0, v2);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v12 = sub_230310218();

  if (*(v12 + 16))
  {
    v13 = *(v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t REMFilteredTitleEmbedding.vector(for:)(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    v31 = [*(v3 + 32) dimension];
    v32 = (v31 + 1);
    if (__OFADD__(v31, 1))
    {
      __break(1u);
    }

    else if ((v32 & 0x8000000000000000) == 0)
    {
      if (v31 == -1)
      {
        v34 = MEMORY[0x277D84F90];
      }

      else
      {
        v33 = v31;
        v34 = sub_23030FD48();
        *(v34 + 16) = v32;
        bzero((v34 + 32), 8 * v33 + 8);
      }

      v111[0] = v34;
      v48 = &unk_2844EA240;
      goto LABEL_46;
    }

    __break(1u);
    goto LABEL_106;
  }

  v4 = a2;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v35 = [*(v3 + 32) dimension];
    v36 = (v35 + 1);
    if (__OFADD__(v35, 1))
    {
      __break(1u);
    }

    else if ((v36 & 0x8000000000000000) == 0)
    {
      if (v35 == -1)
      {
        v38 = MEMORY[0x277D84F90];
      }

      else
      {
        v37 = v35;
        v38 = sub_23030FD48();
        *(v38 + 16) = v36;
        bzero((v38 + 32), 8 * v37 + 8);
      }

      v111[0] = v38;
      v48 = &unk_2844EA1B8;
LABEL_46:
      sub_23009CE4C(v48);
      type metadata accessor for RDVector();
      result = swift_allocObject();
      v50 = *(v111[0] + 16);
      *(result + 16) = v111[0];
      *(result + 24) = v50;
      return result;
    }

    __break(1u);
LABEL_109:
    swift_once();
    goto LABEL_97;
  }

  v7 = v3;
  v8 = *(v3 + 24);
  v104 = a1;
  v9 = _s19ReminderKitInternal25REMFilteredTitleEmbeddingC17decodeEmojiInText_8languageS2S_So10NLLanguageatFZ_0(a1, a2, v8);
  v10 = *(v3 + 48);
  v11 = sub_23030F8B8();
  [v10 setString_];

  v108 = v9;
  v12 = sub_230310228();
  v13 = v12;
  v112 = MEMORY[0x277D84F90];
  v107 = *(v12 + 16);
  v109 = v7;
  if (!v107)
  {

    v39 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v41 = v40;
    if (v39 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v41 == v42)
    {
    }

    else
    {
      v44 = sub_230311048();

      if ((v44 & 1) == 0)
      {

        v46 = v104;
        v47 = v4;
LABEL_57:
        v111[0] = 32;
        v111[1] = 0xE100000000000000;
        MEMORY[0x28223BE20](v45);
        v102[2] = v111;
        v61 = sub_2300F2908(0x7FFFFFFFFFFFFFFFLL, 1, sub_2300F4CA4, v102, v46, v47, &v103);
        v62 = v61;
        v63 = *(v61 + 16);
        if (!v63)
        {

          v5 = 0;
          v17 = MEMORY[0x277D84F90];
          goto LABEL_80;
        }

        v103 = v4;
        v105 = 0;
        v64 = 0;
        v65 = *(v109 + 40);
        v108 = (v61 + 32);
        v66 = v65 + 56;
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          while (1)
          {
            if (v64 >= *(v62 + 16))
            {
              __break(1u);
              goto LABEL_103;
            }

            v67 = v64++;
            v68 = &v108[32 * v67];
            v70 = *(v68 + 2);
            v69 = *(v68 + 3);
            v72 = *v68;
            v71 = *(v68 + 1);

            v73 = MEMORY[0x2319116F0](v72, v71, v70, v69);
            v75 = v74;

            if (!*(v65 + 16))
            {
              break;
            }

            sub_230311358();
            sub_23030F9C8();
            v76 = sub_2303113A8();
            v77 = -1 << *(v65 + 32);
            v78 = v76 & ~v77;
            if (((*(v66 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
            {
              break;
            }

            v79 = ~v77;
            while (1)
            {
              v80 = (*(v65 + 48) + 16 * v78);
              v81 = *v80 == v73 && v80[1] == v75;
              if (v81 || (sub_230311048() & 1) != 0)
              {
                break;
              }

              v78 = (v78 + 1) & v79;
              if (((*(v66 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
              {
                goto LABEL_70;
              }
            }

            if (v64 == v63)
            {
LABEL_79:

              v4 = v103;
              v5 = v105;
              goto LABEL_80;
            }
          }

LABEL_70:
          v82 = sub_2303101F8();
          if (v82)
          {
            v83 = v82;

LABEL_73:
            type metadata accessor for RDVector();
            v84 = swift_allocObject();
            *(v84 + 16) = v83;
            *(v84 + 24) = *(v83 + 16);
            MEMORY[0x231911A30]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_23030FD18();
            }

            sub_23030FD68();
            v17 = v112;
            if (v64 == v63)
            {
              goto LABEL_79;
            }
          }

          else
          {
            sub_23030F958();

            v83 = sub_2303101F8();

            if (v83)
            {
              goto LABEL_73;
            }

            v105 = 1;
            if (v64 == v63)
            {
              goto LABEL_103;
            }
          }
        }
      }
    }

    v51 = sub_23030F9D8();
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v53 = v51;
      v111[0] = MEMORY[0x277D84F90];
      result = sub_23009EC34(0, v51 & ~(v51 >> 63), 0);
      if (v53 < 0)
      {
        goto LABEL_111;
      }

      v52 = v111[0];
      do
      {
        v54 = sub_23030FAF8();
        v56 = v55;
        if ((sub_23030F788() & 1) == 0)
        {

          v56 = 0xE100000000000000;
          v54 = 32;
        }

        v111[0] = v52;
        v58 = *(v52 + 16);
        v57 = *(v52 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_23009EC34((v57 > 1), v58 + 1, 1);
          v52 = v111[0];
        }

        *(v52 + 16) = v58 + 1;
        v59 = v52 + 16 * v58;
        *(v59 + 32) = v54;
        *(v59 + 40) = v56;
        sub_23030F9E8();
        --v53;
      }

      while (v53);
    }

    v111[0] = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_2300B0FA8();
    v46 = sub_23030F7C8();
    v47 = v60;

    goto LABEL_57;
  }

  v103 = v4;
  v105 = 0;
  v14 = 0;
  v15 = *(v7 + 40);
  v106 = v12 + 32;
  v16 = v15 + 56;
  v17 = MEMORY[0x277D84F90];
  while (v14 < *(v13 + 16))
  {
    ++v14;
    v18 = sub_23030FB28();
    v19 = MEMORY[0x2319116F0](v18);
    v21 = v20;

    if (*(v15 + 16))
    {
      sub_230311358();
      sub_23030F9C8();
      v22 = sub_2303113A8();
      v23 = -1 << *(v15 + 32);
      v24 = v22 & ~v23;
      if ((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = (*(v15 + 48) + 16 * v24);
          v27 = *v26 == v19 && v26[1] == v21;
          if (v27 || (sub_230311048() & 1) != 0)
          {
            break;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_8;
      }
    }

LABEL_19:
    v28 = sub_2303101F8();
    if (v28)
    {
      v29 = v28;

LABEL_22:
      type metadata accessor for RDVector();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = *(v29 + 16);
      MEMORY[0x231911A30]();
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23030FD18();
      }

      sub_23030FD68();
      v17 = v112;
LABEL_8:
      if (v14 == v107)
      {

        goto LABEL_79;
      }
    }

    else
    {
      sub_23030F958();

      v29 = sub_2303101F8();

      if (v29)
      {
        goto LABEL_22;
      }

      v105 = 1;
      if (v14 == v107)
      {
        goto LABEL_101;
      }
    }
  }

  __break(1u);
LABEL_101:

LABEL_103:

  v5 = 1;
  v4 = v103;
LABEL_80:
  v31 = Array<A>.sum()(v17);
  if (!v31)
  {
    result = [*(v109 + 32) dimension];
    if ((result & 0x8000000000000000) == 0)
    {
      if (result)
      {
        v89 = result;
        v87 = sub_23030FD48();
        *(v87 + 16) = v89;
        bzero((v87 + 32), 8 * v89);
      }

      else
      {
        v87 = MEMORY[0x277D84F90];
      }

      if (v5)
      {
        goto LABEL_84;
      }

      goto LABEL_91;
    }

    __break(1u);
LABEL_111:
    __break(1u);
    return result;
  }

  if (!(v17 >> 62))
  {
    v85 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_83;
  }

LABEL_106:
  v101 = v31;
  v85 = sub_2303106D8();
  v31 = v101;
LABEL_83:
  v86 = / infix(_:_:)(v31, v85);

  swift_beginAccess();
  v87 = *(v86 + 16);

  if ((v5 & 1) == 0)
  {
LABEL_91:
    v88 = &unk_2844EA210;
    goto LABEL_92;
  }

LABEL_84:
  v88 = &unk_2844EA1E0;
LABEL_92:
  v110 = v87;
  sub_23009CE4C(v88);
  v90 = v110;
  type metadata accessor for RDVector();
  result = swift_allocObject();
  v91 = *(v90 + 16);
  *(result + 16) = v90;
  *(result + 24) = v91;
  v92 = (v90 + 32);
  while (v91)
  {
    v93 = *v92++;
    --v91;
    if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      return result;
    }
  }

  v2 = result;
  if (qword_27DB13AF0 != -1)
  {
    goto LABEL_109;
  }

LABEL_97:
  v94 = sub_23030EF48();
  __swift_project_value_buffer(v94, qword_27DB15318);

  v95 = sub_23030EF38();
  v96 = sub_2303102A8();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v99 = v4;
    v100 = v98;
    v110 = v98;
    *v97 = 136315138;
    *(v97 + 4) = sub_23004E30C(v104, v99, &v110);
    _os_log_impl(&dword_230044000, v95, v96, "title %s is mapped to all-zero vector", v97, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v100);
    MEMORY[0x231914180](v100, -1, -1);
    MEMORY[0x231914180](v97, -1, -1);
  }

  return v2;
}

void __swiftcall REMFilteredTitleEmbedding.config()(ReminderKitInternal::REMTitleEmbeddingConfig *__return_ptr retstr)
{
  v3 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v10 = v4;
  v11 = v3;
  v12 = *(v1 + 16);
  v8 = sub_23009D850(v7, 0);
  v9 = sub_23009DE30(&v13, v8 + 4, v7, v6);

  sub_230060014();
  if (v9 == v7)
  {
    v3 = v11;
    v5 = v12;
    v4 = v10;
LABEL_5:
    retstr->majorLanguage._countAndFlagsBits = v3;
    retstr->majorLanguage._object = v4;
    retstr->revision = v5;
    retstr->currentMethod._countAndFlagsBits = 0xD000000000000011;
    retstr->currentMethod._object = 0x800000023033EA50;
    retstr->stopWords._rawValue = v8;
    return;
  }

  __break(1u);
}

id *REMFilteredTitleEmbedding.deinit()
{

  return v0;
}

uint64_t REMFilteredTitleEmbedding.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2300F2684@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2300F0570(a1, MEMORY[0x277D84FA0]);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2300F26E4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2300F41DC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_2300F2734@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v6 = v5;
  v7 = *(v3 + 16);

  result = sub_2300EDA68(v8);
  *a1 = v4;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = 0xD000000000000011;
  a1[4] = 0x800000023033EA50;
  a1[5] = result;
  return result;
}

uint64_t sub_2300F27AC(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2302A3808(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_230310E48();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = (v2 + 6);
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[2 * i + 5];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 1) >= v11)
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 2) = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 2;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14968);
      v7 = sub_23030FD48();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2300F2D1C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_2300F2908@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_23030FB28();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_23007F1DC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_23007F1DC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_23030FAF8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_23030F9E8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_23030F9E8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_23030FB28();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_23007F1DC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_23030FB28();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_23007F1DC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_23007F1DC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_23030F9E8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2300F2CC8()
{
  result = qword_27DB15348;
  if (!qword_27DB15348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15348);
  }

  return result;
}

uint64_t sub_2300F2D1C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2302A36A0(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_2300F32B0((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v16 >= v17;
        ++v14;
        v16 = v17;
        if ((((v13 < v10) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23007EA34(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_23007EA34((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_2300F32B0((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_2300F32B0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[1] < v6[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v6 - 1) < *(v14 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

unint64_t *sub_2300F34B4(uint64_t a1, double a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2300F3628(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_2300F3714(v10, v6, v4, a2);
  result = MEMORY[0x231914180](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_2300F3628(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
{
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v12) >= a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_2300F382C(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_2300F382C(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_2300F3714(unint64_t *result, uint64_t a2, uint64_t a3, double a4)
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

    v8 = sub_2300F3628(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_2300F379C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

    v8 = sub_2300F43DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2300F382C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15388);
  result = sub_230310BC8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    sub_230311358();
    v19 = v17;
    sub_23030F9C8();
    v20 = sub_2303113A8();

    v21 = -1 << *(v9 + 32);
    v22 = v20 & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v19;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    v10 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v31 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2300F3A88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14660);
  result = sub_230310BC8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_230311358();

    sub_23030F9C8();
    result = sub_2303113A8();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2300F3CC4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_230311048() & 1;
  }
}

uint64_t sub_2300F3D1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E614C726F6A616DLL && a2 == 0xED00006567617567;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D746E6572727563 && a2 == 0xED0000646F687465 || (sub_230311048() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64726F57706F7473 && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_230311048();

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

uint64_t sub_2300F3E98(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  v4 = sub_23030F8B8();
  type metadata accessor for REMSentence2VecTitleEmbedding();
  v5 = swift_allocObject();
  REMSentence2VecTitleEmbedding.init(lang:)(v4);
  if (v1)
  {
    v6 = objc_opt_self();
    sub_230310848();

    MEMORY[0x231911790](v3, v2);

    v7 = sub_23030F8B8();

    [v6 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_2300F3FE4(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  v4 = sub_23030F8B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15358);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_230315CE0;
  v6 = *MEMORY[0x277CD8970];
  *(v5 + 32) = *MEMORY[0x277CD8970];
  v7 = objc_allocWithZone(MEMORY[0x277CD89D8]);
  type metadata accessor for NLTagScheme(0);
  v8 = v6;
  v9 = sub_23030FCC8();

  v10 = [v7 initWithTagSchemes_];

  type metadata accessor for REMUniversalGrammarTitleEmbedding();
  v11 = swift_allocObject();
  sub_2300EF768(v4, v10);
  if (v1)
  {
    v12 = objc_opt_self();
    sub_230310848();

    MEMORY[0x231911790](v3, v2);

    v13 = sub_23030F8B8();

    [v12 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  else
  {
  }

  return v11;
}

uint64_t sub_2300F41DC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];

  v4 = sub_23030F8B8();

  v6 = sub_2300B38E4(v5);

  swift_bridgeObjectRelease_n();
  type metadata accessor for REMFilteredTitleEmbedding();
  v7 = swift_allocObject();
  sub_2300F0570(v4, v6);
  if (v1)
  {
    v8 = objc_opt_self();
    sub_230310848();

    MEMORY[0x231911790](v3, v2);

    v9 = sub_23030F8B8();

    [v8 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_2300F435C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2300F43DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a3 + 56) + 8 * v14);

    LOBYTE(v18) = a4(v16, v17, v18);

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_2300F3A88(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_2300F3A88(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2300F453C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2300F43DC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_2300F379C(v10, v6, v4, a2);
  result = MEMORY[0x231914180](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

char *_s19ReminderKitInternal25REMFilteredTitleEmbeddingC17decodeEmojiInText_8languageS2S_So10NLLanguageatFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = sub_230311468();
  v6 = *(v62 - 8);
  v7 = MEMORY[0x28223BE20](v62);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v61 = &v54 - v9;
  v69 = sub_2303114B8();
  v10 = *(v69 - 8);
  v11 = MEMORY[0x28223BE20](v69);
  v66 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v67 = &v54 - v14;
  v15 = MEMORY[0x2319135A0](v13);
  v68 = [objc_opt_self() emojiLocaleDataWithLocaleIdentifier_];
  v16 = sub_23030F9D8();
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v18 = v16;
    v75 = MEMORY[0x277D84F90];
    result = sub_23009EC34(0, v16 & ~(v16 >> 63), 0);
    if ((v18 & 0x8000000000000000) == 0)
    {
      v55 = v15;
      v20 = 0;
      v17 = v75;
      v64 = (v10 + 8);
      v65 = (v10 + 32);
      v58 = *MEMORY[0x277D84E10];
      v56 = (v6 + 8);
      v57 = (v6 + 104);
      v21 = 15;
      v70 = a1;
      v71 = a2;
      v22 = v69;
      while (1)
      {
        v73 = v20;
        v74 = v17;
        v72 = v21;
        v23 = sub_23030FAF8();
        v25 = v24;
        if ((sub_2300A470C(v23, v24) & 0x100000000) != 0)
        {
          v29 = v25 & 0x2000000000000000;
          v30 = v23 & 0xFFFFFFFFFFFFLL;
          v32 = v25 & 0x1000000000000000;
          v33 = v23 & 0x800000000000000;
        }

        else
        {
          v26 = v66;
          sub_2303114C8();
          v27 = v22;
          v28 = v67;
          (*v65)(v67, v26, v27);
          v29 = v25 & 0x2000000000000000;
          v30 = v23 & 0xFFFFFFFFFFFFLL;
          if ((v25 & 0x2000000000000000) != 0)
          {
            v31 = HIBYTE(v25) & 0xF;
          }

          else
          {
            v31 = v23 & 0xFFFFFFFFFFFFLL;
          }

          v32 = v25 & 0x1000000000000000;
          v33 = v23 & 0x800000000000000;
          v34 = 7;
          if (((v25 >> 60) & ((v23 & 0x800000000000000) == 0)) != 0)
          {
            v34 = 11;
          }

          if (sub_2300A43F0(0xFuLL, v34 | (v31 << 16), v23, v25) == 1)
          {
            v63 = v25 & 0x2000000000000000;
            if (sub_230311498())
            {
              (*v64)(v28, v69);
LABEL_30:
              v20 = v73;
              v17 = v74;
LABEL_31:

              v43 = v68;
              v44 = sub_23030F8B8();

              v45 = [objc_opt_self() emojiTokenWithString:v44 localeData:v43];

              if (v45)
              {
                v46 = [v45 nameForType_];
                if (v46)
                {
                  v47 = v46;
                  v23 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
                  v49 = v48;

                  v25 = v49;
                }

                else
                {
                }
              }

              v22 = v69;
              goto LABEL_37;
            }

            sub_230311488();
            v39 = v59;
            (*v57)(v59, v58, v62);
            v60 = sub_230311458();
            v40 = *v56;
            v41 = v39;
            v42 = v62;
            (*v56)(v41, v62);
            v40(v61, v42);
            v22 = v69;
            (*v64)(v67, v69);
            v29 = v63;
            if (v60)
            {
              goto LABEL_30;
            }
          }

          else
          {
            (*v64)(v28, v27);
            v22 = v27;
          }
        }

        if (v29)
        {
          v35 = HIBYTE(v25) & 0xF;
        }

        else
        {
          v35 = v30;
        }

        if (v33)
        {
          v36 = 1;
        }

        else
        {
          v36 = v32 == 0;
        }

        v37 = 7;
        if (!v36)
        {
          v37 = 11;
        }

        if (sub_2300A43F0(0xFuLL, v37 | (v35 << 16), v23, v25) < 2)
        {
          v20 = v73;
          v17 = v74;
        }

        else
        {
          v20 = v73;
          v38 = sub_2300A3F20(v23, v25);
          v17 = v74;
          if (v38)
          {
            goto LABEL_31;
          }
        }

        if (sub_2300A41CC(v23, v25))
        {
          goto LABEL_31;
        }

LABEL_37:
        v75 = v17;
        v51 = *(v17 + 16);
        v50 = *(v17 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_23009EC34((v50 > 1), v51 + 1, 1);
          v22 = v69;
          v17 = v75;
        }

        *(v17 + 16) = v51 + 1;
        v52 = v17 + 16 * v51;
        *(v52 + 32) = v23;
        *(v52 + 40) = v25;
        v21 = sub_23030F9E8();
        if (!--v18)
        {
          v15 = v55;
          goto LABEL_41;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_41:
    v75 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
    sub_2300B0FA8();
    v53 = sub_23030F7C8();

    objc_autoreleasePoolPop(v15);
    return v53;
  }

  return result;
}

uint64_t sub_2300F4CA4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_230311048() & 1;
  }
}

unint64_t sub_2300F4D00()
{
  result = qword_27DB15360;
  if (!qword_27DB15360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15360);
  }

  return result;
}

uint64_t destroy for REMTitleEmbeddingConfig()
{
}

uint64_t initializeWithCopy for REMTitleEmbeddingConfig(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

void *assignWithCopy for REMTitleEmbeddingConfig(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];

  a1[5] = a2[5];

  return a1;
}

uint64_t assignWithTake for REMTitleEmbeddingConfig(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMTitleEmbeddingConfig(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for REMTitleEmbeddingConfig(uint64_t result, int a2, int a3)
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

unint64_t sub_2300F5158()
{
  result = qword_27DB15368;
  if (!qword_27DB15368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15368);
  }

  return result;
}

unint64_t sub_2300F51B0()
{
  result = qword_27DB15370;
  if (!qword_27DB15370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15370);
  }

  return result;
}

unint64_t sub_2300F5208()
{
  result = qword_27DB15378;
  if (!qword_27DB15378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15378);
  }

  return result;
}

uint64_t sub_2300F5280(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t REMCache.ExecutionMode.hashValue.getter()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t sub_2300F535C()
{
  sub_230311358();
  REMCache.ExecutionMode.hash(into:)();
  return sub_2303113A8();
}

uint64_t REMCache.__allocating_init(cacheQueue:countLimit:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  REMCache.init(cacheQueue:countLimit:)(a1, a2);
  return v4;
}

uint64_t REMCache.init(cacheQueue:countLimit:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = a1;
  type metadata accessor for REMCacheContext();
  v5 = swift_allocObject();
  sub_2300F597C(a2);
  *(v3 + 24) = v5;
  return v3;
}

uint64_t sub_2300F5488(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2300F597C(a1);
  return v2;
}

uint64_t sub_2300F54C8(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a2;
  v25 = a3;
  v6 = *v4;
  v23 = sub_23030F4C8();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23030F458();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_23030F448();
  v15 = swift_allocObject();
  v16 = swift_weakInit();
  if (v14)
  {
    MEMORY[0x28223BE20](v16);
    *(&v23 - 3) = *(v6 + 80);
    v18 = v24;
    v17 = v25;
    *(&v23 - 4) = v15;
    *(&v23 - 3) = v18;
    *(&v23 - 2) = v17;
    sub_230310368();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v20 = swift_allocObject();
    v20[2] = *(v6 + 80);
    v20[3] = *(v6 + 88);
    v20[4] = v15;
    v21 = v25;
    v20[5] = v24;
    v20[6] = v21;
    aBlock[4] = sub_2300F5F74;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2300F5280;
    aBlock[3] = &block_descriptor_21;
    v22 = _Block_copy(aBlock);

    sub_23030F488();
    MEMORY[0x2319120F0](0, v9, v13, v22);
    _Block_release(v22);
    (*(v7 + 8))(v9, v23);
    (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_2300F57FC(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    a2(v4);
  }

  return result;
}

uint64_t REMCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2300F597C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15390);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + 16) = v3;
  [v3 setCountLimit_];
  return v1;
}

uint64_t REMCacheContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id REMCacheContext.setObject(_:forKey:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return [*(v2 + 16) setObject:a1 forKey:a2];
  }

  else
  {
    return [*(v2 + 16) removeObjectForKey_];
  }
}

uint64_t REMStructWrapper.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t REMStructWrapper.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_2300F5D00(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2300F5E94()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2300F5F80(void *a1@<X0>, id *a2@<X8>)
{
  v3 = v2;
  v24[2] = *MEMORY[0x277D85DE8];
  v24[0] = 0;
  v6 = [v3 resultFromPerformingInvocation:a1 error:v24];
  v7 = v24[0];
  if (v6)
  {
    v8 = v6;
    type metadata accessor for REMComplicationDataView.FetchModelInvocation.Result();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      v11 = v7;
      sub_2300F6590(v10, v3, v24);
      *a2 = v24[0];
    }

    else
    {
      v13 = objc_opt_self();
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      v14 = v7;
      sub_230310848();
      MEMORY[0x231911790](0xD00000000000003ELL, 0x80000002303400A0);
      v15 = [v8 description];
      v16 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v18 = v17;

      MEMORY[0x231911790](v16, v18);

      MEMORY[0x231911790](0x746365707865202CLL, 0xEC000000203A6465);
      MEMORY[0x231911790](0x746C75736552, 0xE600000000000000);
      MEMORY[0x231911790](0x61636F766E69202CLL, 0xEE00203A6E6F6974);
      v19 = [a1 description];
      v20 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v22 = v21;

      MEMORY[0x231911790](v20, v22);

      v23 = sub_23030F8B8();

      [v13 internalErrorWithDebugDescription_];

      swift_willThrow();
    }
  }

  else
  {
    v12 = v24[0];
    sub_23030E808();

    swift_willThrow();
  }
}

uint64_t sub_2300F620C()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_27DB15398);
  v1 = __swift_project_value_buffer(v0, qword_27DB15398);
  if (qword_280C97090 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1718);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMComplicationDataView.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t REMComplicationDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::tuple_ReminderKitInternal_REMComplicationDataView_Model __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> REMComplicationDataView.fetchModel()()
{
  v2 = v0;
  v3 = [objc_allocWithZone(type metadata accessor for REMComplicationDataView.FetchModelInvocation()) init];
  sub_2300F5F80(v3, &v5);

  if (!v1)
  {
    *v2 = v5;
  }

  return result;
}

id REMComplicationDataView.FetchModelInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id REMComplicationDataView.FetchModelInvocation.init(coder:)(void *a1)
{
  v3 = [v1 init];

  return v3;
}

id REMComplicationDataView.FetchModelInvocation.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t REMComplicationDataView.FetchModelInvocation.clientResult(from:store:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_2300F6590(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_2300F6590@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *&a1[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_accountStorages];
  if (v4 >> 62)
  {
    goto LABEL_47;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = MEMORY[0x277D84F98];
    if (v5)
    {
      v7 = 0;
      v45 = v4 & 0xFFFFFFFFFFFFFF8;
      v46 = v4 & 0xC000000000000001;
      v43 = v5;
      v44 = v4;
      do
      {
        if (v46)
        {
          v10 = MEMORY[0x231912650](v7);
        }

        else
        {
          if (v7 >= *(v45 + 16))
          {
            goto LABEL_41;
          }

          v10 = *(v4 + 8 * v7 + 32);
        }

        v11 = v10;
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v13 = [objc_allocWithZone(MEMORY[0x277D44548]) initWithStore:a2 storage:v10];
        v14 = [v13 objectID];
        if ((v6 & 0xC000000000000001) != 0)
        {
          if (v6 < 0)
          {
            v15 = v6;
          }

          else
          {
            v15 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v16 = v13;
          v17 = sub_2303106D8();
          v4 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_45;
          }

          v6 = sub_2301C1710(v15, v4);
        }

        else
        {
          v18 = v13;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v6;
        v20 = sub_230059108(v14);
        v21 = *(v6 + 16);
        v22 = (v4 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_42;
        }

        v24 = v4;
        if (*(v6 + 24) >= v23)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v6 = v48;
            if (v4)
            {
              goto LABEL_5;
            }
          }

          else
          {
            sub_230089154();
            v6 = v48;
            if (v24)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          sub_230083BC4(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_230059108(v14);
          if ((v24 & 1) != (v26 & 1))
          {
            sub_23004CBA4(0, &qword_280C9C478);
            result = sub_2303112A8();
            __break(1u);
            return result;
          }

          v20 = v25;
          v6 = v48;
          if (v24)
          {
LABEL_5:
            v8 = *(v6 + 56);
            v9 = *(v8 + 8 * v20);
            *(v8 + 8 * v20) = v13;

            goto LABEL_6;
          }
        }

        *(v6 + 8 * (v20 >> 6) + 64) |= 1 << v20;
        *(*(v6 + 48) + 8 * v20) = v14;
        *(*(v6 + 56) + 8 * v20) = v13;

        v27 = *(v6 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_46;
        }

        *(v6 + 16) = v29;
LABEL_6:
        ++v7;
        v4 = v44;
      }

      while (v12 != v43);
    }

    v30 = *&a1[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_listStorages];
    v48 = MEMORY[0x277D84F98];
    if (v30 >> 62)
    {
      break;
    }

    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v31)
    {
      goto LABEL_49;
    }

LABEL_32:
    v32 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x231912650](v32, v30);
      }

      else
      {
        if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v33 = *(v30 + 8 * v32 + 32);
      }

      v34 = v33;
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      v47 = v33;
      sub_2300F76E4(&v48, &v47, v6, a2);

      ++v32;
      if (v35 == v31)
      {
        v36 = v48;
        goto LABEL_50;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v37 = v4;
    v5 = sub_2303106D8();
    v4 = v37;
  }

  v31 = sub_2303106D8();
  if (v31)
  {
    goto LABEL_32;
  }

LABEL_49:
  v36 = MEMORY[0x277D84F98];
LABEL_50:

  v39 = sub_2300F7980(v38, v36, a2);

  *a3 = v39;
  return result;
}

uint64_t sub_2300F696C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_2300F6590(a1, a2, &v5);
  *a3 = v5;
  return result;
}

id REMComplicationDataView.FetchModelInvocation.Result.__allocating_init(accountStorages:listStorages:reminderStorages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_accountStorages] = a1;
  *&v7[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_listStorages] = a2;
  *&v7[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_reminderStorages] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id REMComplicationDataView.FetchModelInvocation.Result.init(accountStorages:listStorages:reminderStorages:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_accountStorages] = a1;
  *&v3[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_listStorages] = a2;
  *&v3[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_reminderStorages] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id REMComplicationDataView.FetchModelInvocation.Result.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_2300F6C58();
  if (v3)
  {
    v4 = v3;
    v5 = sub_2300F6D68();
    if (v5)
    {
      v6 = v5;
      v7 = sub_2300F6E74();
      if (v7)
      {
        v8 = v7;
        v9 = objc_allocWithZone(ObjectType);
        *&v9[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_accountStorages] = v4;
        *&v9[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_listStorages] = v6;
        *&v9[OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_reminderStorages] = v8;
        v16.receiver = v9;
        v16.super_class = ObjectType;
        v10 = objc_msgSendSuper2(&v16, sel_init);

        swift_getObjectType();
        swift_deallocPartialClassInstance();
        return v10;
      }
    }
  }

  v12 = objc_opt_self();
  v13 = sub_23030F8B8();
  v14 = [v12 internalErrorWithDebugDescription_];

  v15 = sub_23030E7F8();
  [a1 failWithError_];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_2300F6C58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2303167B0;
  *(v0 + 32) = sub_23004CBA4(0, &qword_27DB153E8);
  *(v0 + 40) = sub_23004CBA4(0, &qword_280C9C2C8);
  sub_2303103E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153C8);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2300F6D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2303167B0;
  *(v0 + 32) = sub_23004CBA4(0, &qword_27DB153E8);
  *(v0 + 40) = sub_23004CBA4(0, &qword_280C9C2E0);
  sub_2303103E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153D0);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2300F6E74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2303167B0;
  *(v0 + 32) = sub_23004CBA4(0, &qword_27DB153E8);
  *(v0 + 40) = sub_23004CBA4(0, &qword_280C9C2C0);
  sub_2303103E8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153D8);
  if (swift_dynamicCast())
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

Swift::Void __swiftcall REMComplicationDataView.FetchModelInvocation.Result.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_accountStorages);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153C8);
  v29[0] = v3;
  sub_2300F7468(v29, v27);
  v4 = v28;
  if (v28)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v6 = *(v4 - 8);
    MEMORY[0x28223BE20](v5);
    v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v8);

    v9 = sub_230311038();
    (*(v6 + 8))(v8, v4);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {

    v9 = 0;
  }

  v10 = sub_23030F8B8();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  sub_230061918(v29, &qword_27DB14810);
  v11 = *(v1 + OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_listStorages);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153D0);
  v29[0] = v11;
  sub_2300F7468(v29, v27);
  v12 = v28;
  if (v28)
  {
    v13 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v14 = *(v12 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);

    v17 = sub_230311038();
    (*(v14 + 8))(v16, v12);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {

    v17 = 0;
  }

  v18 = sub_23030F8B8();
  [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];
  swift_unknownObjectRelease();

  sub_230061918(v29, &qword_27DB14810);
  v19 = *(v1 + OBJC_IVAR___REMComplicationDataViewFetchModelInvocationResult_reminderStorages);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB153D8);
  v29[0] = v19;
  sub_2300F7468(v29, v27);
  v20 = v28;
  if (v28)
  {
    v21 = __swift_project_boxed_opaque_existential_1(v27, v28);
    v22 = *(v20 - 8);
    MEMORY[0x28223BE20](v21);
    v24 = v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v24);

    v25 = sub_230311038();
    (*(v22 + 8))(v24, v20);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {

    v25 = 0;
  }

  v26 = sub_23030F8B8();
  [(objc_class *)with.super.isa encodeObject:v25 forKey:v26];
  swift_unknownObjectRelease();

  sub_230061918(v29, &qword_27DB14810);
}

uint64_t sub_2300F7468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id REMComplicationDataView.FetchModelInvocation.Result.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2300F76E4(uint64_t *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = [*a2 accountID];
  v9 = sub_2301BFD88(v8, a3);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277D44660]) initWithStore:a4 account:v9 storage:v7];
    v12 = [v11 objectID];
    v13 = *a1;
    if ((*a1 & 0xC000000000000001) == 0)
    {
      v24 = v11;
      goto LABEL_12;
    }

    if (v13 < 0)
    {
      v7 = *a1;
    }

    else
    {
      v7 = (v13 & 0xFFFFFFFFFFFFFF8);
    }

    v14 = v11;
    v15 = sub_2303106D8();
    if (!__OFADD__(v15, 1))
    {
      *a1 = sub_2301C195C(v7, v15 + 1);
LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *a1;
      sub_2300A18AC(v11, v12, isUniquelyReferenced_nonNull_native);

      *a1 = v26;
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (qword_27DB13AF8 == -1)
  {
    goto LABEL_9;
  }

  swift_once();
LABEL_9:
  v16 = sub_23030EF48();
  __swift_project_value_buffer(v16, qword_27DB15398);
  v17 = v7;
  v18 = v8;
  v12 = sub_23030EF38();
  v19 = sub_230310298();

  if (os_log_type_enabled(v12, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412546;
    v22 = [v17 objectID];
    *(v20 + 4) = v22;
    *(v20 + 12) = 2112;
    *(v20 + 14) = v18;
    *v21 = v22;
    v21[1] = v18;
    v23 = v18;
    _os_log_impl(&dword_230044000, v12, v19, "Complications Data View fetched a list with an account ID, but no corresponding account was provided. Failed to make list. {list.objectID: %@, accountID: %@)", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15000);
    swift_arrayDestroy();
    MEMORY[0x231914180](v21, -1, -1);
    MEMORY[0x231914180](v20, -1, -1);

    v12 = v23;
  }

  else
  {
  }

LABEL_14:
}

uint64_t sub_2300F7980(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2303106D8())
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x231912650](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v8 = *(a1 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v14 = v8;
      sub_2300F7AF4(&v14, a2, a3, &v13);

      if (v13)
      {
        MEMORY[0x231911A30]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23030FD18();
        }

        sub_23030FD68();
        v7 = v15;
      }

      ++v6;
      if (v10 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return MEMORY[0x277D84F90];
}

void sub_2300F7AF4(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 listID];
  if (!v8)
  {
    if (qword_27DB13AF8 != -1)
    {
      swift_once();
    }

    v14 = sub_23030EF48();
    __swift_project_value_buffer(v14, qword_27DB15398);
    v15 = v7;
    v12 = sub_23030EF38();
    v16 = sub_230310298();

    if (os_log_type_enabled(v12, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = [v15 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&dword_230044000, v12, v16, "Complications Data View fetched a reminder with no list ID. Failed to make reminder. {reminder.objectID: %@}", v17, 0xCu);
      sub_230061918(v18, &qword_27DB15000);
      MEMORY[0x231914180](v18, -1, -1);
      MEMORY[0x231914180](v17, -1, -1);
    }

    goto LABEL_14;
  }

  v9 = v8;
  v10 = sub_2301BFD9C(v8, a2);
  if (!v10)
  {
    if (qword_27DB13AF8 != -1)
    {
      swift_once();
    }

    v20 = sub_23030EF48();
    __swift_project_value_buffer(v20, qword_27DB15398);
    v21 = v7;
    v22 = v9;
    v12 = sub_23030EF38();
    v23 = sub_230310298();

    if (os_log_type_enabled(v12, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      v26 = [v21 objectID];
      *(v24 + 4) = v26;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v22;
      *v25 = v26;
      v25[1] = v9;
      v27 = v22;
      _os_log_impl(&dword_230044000, v12, v23, "Complications Data View fetched a reminder with a list ID, but no corresponding list was provided. Failed to make reminder. {reminder.objectID: %@, listID: %@}", v24, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15000);
      swift_arrayDestroy();
      MEMORY[0x231914180](v25, -1, -1);
      MEMORY[0x231914180](v24, -1, -1);

LABEL_15:
      v12 = 0;
      goto LABEL_16;
    }

LABEL_14:
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(MEMORY[0x277D44750]) initWithStore:a3 list:v10 storage:v7];
  v13 = [v12 displayDate];

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_16:
  *a4 = v12;
}

uint64_t sub_2300F7F14(char a1, void (*a2)(void), void (*a3)(void *__return_ptr))
{
  a2();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  a3(v8);

  if (!v3)
  {
    a1 = v8[0];
  }

  return a1 & 1;
}

uint64_t sub_2300F7FD8(uint64_t a1)
{
  v2 = sub_2300F8094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300F8014(uint64_t a1)
{
  v2 = sub_2300F8094();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2300F8094()
{
  result = qword_280C97630;
  if (!qword_280C97630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97630);
  }

  return result;
}

uint64_t sub_2300F8148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000230340FE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2300F81DC(uint64_t a1)
{
  v2 = sub_2300F8298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300F8218(uint64_t a1)
{
  v2 = sub_2300F8298();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2300F8298()
{
  result = qword_280C98B20;
  if (!qword_280C98B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B20);
  }

  return result;
}

uint64_t sub_2300F839C(uint64_t a1)
{
  v2 = sub_2300F8578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300F83D8(uint64_t a1)
{
  v2 = sub_2300F8578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300F8458(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_230311448();
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2300F8578()
{
  result = qword_280C97658;
  if (!qword_280C97658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97658);
  }

  return result;
}

uint64_t sub_2300F8638(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_230311448();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2300F8784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000230341000 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_230311048();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_2300F8818(uint64_t a1)
{
  v2 = sub_2300F8A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2300F8854(uint64_t a1)
{
  v2 = sub_2300F8A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2300F88D4(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v11 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11();
  sub_230311448();
  sub_230310DB8();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2300F8A14()
{
  result = qword_280C98B38;
  if (!qword_280C98B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B38);
  }

  return result;
}

uint64_t sub_2300F8AAC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X3>, _BYTE *a4@<X8>)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a3();
  sub_230311428();
  if (!v4)
  {
    v10 = v14;
    v11 = sub_230310CA8();
    (*(v15 + 8))(v9, v7);
    *v10 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2300F8C6C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v13 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13();
  sub_230311448();
  sub_230310DB8();
  return (*(v8 + 8))(v10, v7);
}

id REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.__allocating_init(fetchResultTokenToDiffAgainst:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithFetchResultTokenToDiffAgainst_];

  return v3;
}

id REMPrivacyPermissionsDataView.IncompleteRemindersCountWithDueDateInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

unint64_t sub_2300F8E5C()
{
  result = qword_27DB15420;
  if (!qword_27DB15420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15420);
  }

  return result;
}

unint64_t sub_2300F8EBC()
{
  result = qword_27DB15428;
  if (!qword_27DB15428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15428);
  }

  return result;
}

unint64_t sub_2300F8F14()
{
  result = qword_27DB15430;
  if (!qword_27DB15430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15430);
  }

  return result;
}

unint64_t sub_2300F8F74()
{
  result = qword_27DB15438;
  if (!qword_27DB15438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15438);
  }

  return result;
}

unint64_t sub_2300F9088()
{
  result = qword_27DB15440;
  if (!qword_27DB15440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15440);
  }

  return result;
}

unint64_t sub_2300F90E0()
{
  result = qword_27DB15448;
  if (!qword_27DB15448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB15448);
  }

  return result;
}

unint64_t sub_2300F9138()
{
  result = qword_280C98B28;
  if (!qword_280C98B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B28);
  }

  return result;
}

unint64_t sub_2300F9190()
{
  result = qword_280C98B30;
  if (!qword_280C98B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B30);
  }

  return result;
}

unint64_t sub_2300F91E8()
{
  result = qword_280C97648;
  if (!qword_280C97648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97648);
  }

  return result;
}

unint64_t sub_2300F9240()
{
  result = qword_280C97650;
  if (!qword_280C97650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97650);
  }

  return result;
}

unint64_t sub_2300F9298()
{
  result = qword_280C98B10;
  if (!qword_280C98B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B10);
  }

  return result;
}

unint64_t sub_2300F92F0()
{
  result = qword_280C98B18;
  if (!qword_280C98B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C98B18);
  }

  return result;
}

unint64_t sub_2300F9348()
{
  result = qword_280C97620;
  if (!qword_280C97620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97620);
  }

  return result;
}

unint64_t sub_2300F93A0()
{
  result = qword_280C97628;
  if (!qword_280C97628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C97628);
  }

  return result;
}

uint64_t static NSFileProtectionType.rem_spotlightIndexFileProtection.getter()
{
  if (qword_280C98810 != -1)
  {
    swift_once();
  }

  v0 = qword_280C98818;
  v1 = qword_280C98818;
  return v0;
}

uint64_t sub_2300F94C8()
{
  v0 = sub_23030EF48();
  __swift_allocate_value_buffer(v0, qword_280C97170);
  v1 = __swift_project_value_buffer(v0, qword_280C97170);
  if (qword_280C99DE8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280CB1730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void static REMAnchoredBubbleModel.train(titleList:distanceScale:usePCA:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = MEMORY[0x2319135A0]();
  sub_2300F963C(a1, a2, a3 & 1, &v7, &v8);
  objc_autoreleasePoolPop(v6);
}

void sub_2300F963C(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X4>, void *a5@<X8>)
{
  v28 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15518);
  sub_230107F2C();
  sub_2300A85F0();
  v8 = sub_23030FC38();
  v10 = v9;

  v11 = objc_opt_self();
  v12 = sub_23030F8B8();
  v13 = [v11 dominantLanguageForString_];

  if (v13)
  {

    static REMAnchoredBubbleModel.train(titleList:lang:distanceScale:usePCA:)(a1, v13, a2, a3 & 1, 1);
    v15 = v14;
    v16 = v26;

    if (!v26)
    {
      *a5 = v15;
      return;
    }
  }

  else
  {
    if (qword_280C97168 != -1)
    {
      swift_once();
    }

    v17 = sub_23030EF48();
    __swift_project_value_buffer(v17, qword_280C97170);

    v18 = sub_23030EF38();
    v19 = sub_230310288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      v22 = sub_23004E30C(v8, v10, &v28);

      *(v20 + 4) = v22;
      _os_log_impl(&dword_230044000, v18, v19, "REMAnchoredBubbleModel: Unable to detect language from title string %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x231914180](v21, -1, -1);
      MEMORY[0x231914180](v20, -1, -1);
    }

    else
    {
    }

    v23 = objc_opt_self();
    v24 = sub_23030F8B8();
    v16 = [v23 internalErrorWithDebugDescription_];

    swift_willThrow();
  }

  *a4 = v16;
}

void static REMAnchoredBubbleModel.train(titleList:lang:distanceScale:usePCA:)(uint64_t a1, void *a2, uint64_t a3, char a4, char a5)
{
  v9 = a2;
  v11 = [objc_opt_self() wordEmbeddingForLanguage_];
  if (v11)
  {
    v12 = v11;
    v45 = a5;
    v46 = a4;
    v48 = v9;
    v13 = sub_2300F9E24(a1, v9);
    v14 = *(v13 + 16);
    v15 = MEMORY[0x277D84F90];
    if (!v14)
    {
      goto LABEL_5;
    }

    v44 = a3;
    v15 = sub_23009DB1C(v14, 0);
    v16 = sub_23009E6E4(&v50, v15 + 4, v14, v13);
    v9 = v52;

    sub_230060014();
    if (v16 == v14)
    {
      a3 = v44;
LABEL_5:
      v50 = v15;
      sub_230102620(&v50, sub_2302A381C, sub_2301030A4);
      if (v5)
      {

        __break(1u);
        objc_autoreleasePoolPop(v5);
        __break(1u);
      }

      else
      {

        v17 = v50;
        if (v45)
        {
          v18 = sub_2301055B0(v50, v12);
        }

        else
        {
          v18 = 0;
        }

        v32 = sub_230105AA8(v31);

        v49 = 0x3FC999999999999ALL;
        v50 = MEMORY[0x277D84F98];
        v34 = MEMORY[0x2319135A0](v33);
        sub_2300FA864(a3, v46 & 1, &v50, v17, v12, v32, v18, &v49);
        v47 = v12;

        objc_autoreleasePoolPop(v34);
        v35 = sub_230104DA8(v50);
        v36 = v49;
        type metadata accessor for REMAnchoredBubbleModel();
        v37 = swift_allocObject();
        v38 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictionEditingSessionID;
        v39 = sub_23030EBB8();
        (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
        v40 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction;
        *(v37 + 16) = v48;
        *(v37 + 24) = v35;
        v41 = (v37 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_version);
        *v41 = 3223089;
        v41[1] = 0xE300000000000000;
        *(v37 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) = v36;
        *(v37 + v40) = v18;
        v42 = v48;

        v43 = MEMORY[0x277D84F90];
        *(v37 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens) = MEMORY[0x277D84F90];
        *(v37 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = v43;
        *(v37 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_predefinedLabels) = 0;
      }

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_280C97168 != -1)
  {
LABEL_15:
    swift_once();
  }

  v19 = sub_23030EF48();
  __swift_project_value_buffer(v19, qword_280C97170);
  v20 = v9;
  v21 = sub_23030EF38();
  v22 = sub_230310288();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v50 = v24;
    *v23 = 136315138;
    v25 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v27 = sub_23004E30C(v25, v26, &v50);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_230044000, v21, v22, "REMAnchoredBubbleModel: Missing NLEmbedding for %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x231914180](v24, -1, -1);
    MEMORY[0x231914180](v23, -1, -1);
  }

  v28 = objc_opt_self();
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_230310848();

  v50 = 0xD000000000000030;
  v51 = 0x8000000230341020;
  v29 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  MEMORY[0x231911790](v29);

  v30 = sub_23030F8B8();

  [v28 internalErrorWithDebugDescription_];

  swift_willThrow();
}

uint64_t sub_2300F9E24(uint64_t a1, uint64_t a2)
{
  v121 = sub_23030E4A8();
  MEMORY[0x28223BE20](v121);
  v120 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = MEMORY[0x277D84F98];
  v7 = a1 + 64;
  v6 = *(a1 + 64);
  v131 = MEMORY[0x277D84FA0];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v6;
  v11 = (v8 + 63) >> 6;
  v119 = (v4 + 8);
  v116 = *MEMORY[0x277CD8958];
  v115 = *MEMORY[0x277CD8970];
  v114 = *MEMORY[0x277CD88F8];
  v113 = *MEMORY[0x277CD8980];
  v112 = *MEMORY[0x277CD8920];
  v111 = *MEMORY[0x277CD8928];

  v12 = 0;
  v110 = xmmword_2303167B0;
  v109 = xmmword_23031A240;
  v124 = a1 + 64;
  v123 = v11;
  v108 = a1;
  v122 = a2;
  while (v10)
  {
LABEL_12:
    v14 = (v12 << 10) | (16 * __clz(__rbit64(v10)));
    v15 = (*(a1 + 48) + v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (*(a1 + 56) + v14);
    v19 = v18[1];
    v128 = *v18;

    v125 = MEMORY[0x2319135A0](v20);
    if (sub_23030F9D8() > 99)
    {
      goto LABEL_63;
    }

    v21 = _s19ReminderKitInternal25REMFilteredTitleEmbeddingC17decodeEmojiInText_8languageS2S_So10NLLanguageatFZ_0(v17, v16, a2);
    v23 = v22;

    v130[0] = v21;
    v130[1] = v23;
    v24 = v120;
    sub_23030E478();
    sub_2300A85F0();
    v25 = sub_230310558();
    v27 = v26;
    (*v119)(v24, v121);

    v29 = HIBYTE(v27) & 0xF;
    if ((v27 & 0x2000000000000000) == 0)
    {
      v29 = v25 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v129 = v19;
      v126 = v29;
      v130[0] = MEMORY[0x277D84F90];
      v127 = MEMORY[0x2319135A0](v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15358);
      v30 = swift_allocObject();
      *(v30 + 16) = v110;
      v31 = v116;
      v32 = v115;
      *(v30 + 32) = v116;
      *(v30 + 40) = v32;
      v33 = objc_allocWithZone(MEMORY[0x277CD89D8]);
      type metadata accessor for NLTagScheme(0);
      v34 = v31;
      v118 = v32;
      v35 = sub_23030FCC8();

      v36 = [v33 initWithTagSchemes_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15380);
      inited = swift_initStackObject();
      *(inited + 16) = v109;
      v38 = v114;
      *(inited + 32) = v114;
      v39 = v113;
      v40 = v112;
      *(inited + 40) = v113;
      *(inited + 48) = v40;
      v41 = v111;
      *(inited + 56) = v111;
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      v46 = sub_2302A3A38(inited);
      a2 = v122;
      swift_setDeallocating();
      type metadata accessor for NLTag(0);
      swift_arrayDestroy();
      v47 = sub_23030F8B8();
      [v36 setString_];

      v48 = sub_2303103F8();
      MEMORY[0x28223BE20](v48);
      *(&v107 - 8) = v117;
      *(&v107 - 7) = a2;
      *(&v107 - 6) = v46;
      *(&v107 - 5) = v36;
      *(&v107 - 4) = 22;
      *(&v107 - 3) = v130;
      *(&v107 - 2) = v25;
      *(&v107 - 1) = v27;
      sub_230310408();

      objc_autoreleasePoolPop(v127);
      v49 = v130[0];
      v127 = *(v130[0] + 16);
      if (v127)
      {
        v50 = 0;
        v126 = v130[0] + 32;
        while (1)
        {
          if (v50 >= *(v49 + 16))
          {
            goto LABEL_67;
          }

          v54 = (v126 + 16 * v50);
          v56 = *v54;
          v55 = v54[1];
          v57 = v131;
          if (*(v131 + 16))
          {
            sub_230311358();

            sub_23030F9C8();
            v58 = sub_2303113A8();
            v59 = -1 << *(v57 + 32);
            v60 = v58 & ~v59;
            if ((*(v57 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
            {
              v61 = ~v59;
              while (1)
              {
                v62 = (*(v57 + 48) + 16 * v60);
                v63 = *v62 == v56 && v62[1] == v55;
                if (v63 || (sub_230311048() & 1) != 0)
                {
                  break;
                }

                v60 = (v60 + 1) & v61;
                if (((*(v57 + 56 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
                {
                  goto LABEL_33;
                }
              }

              goto LABEL_20;
            }
          }

          else
          {
          }

LABEL_33:
          v64 = v132;
          if (v132[2])
          {
            v65 = sub_23005EE00(v56, v55);
            if (v66)
            {
              v67 = (v64[7] + 24 * v65);
              v68 = v67[2];
              v69 = *v67 == v128 && v67[1] == v129;
              if (!v69 && (sub_230311048() & 1) == 0)
              {
                sub_2300A1368(v56, v55);

                sub_2300A8988(v130, v56, v55);

                goto LABEL_20;
              }

              v70 = v68 + 1;
              if (__OFADD__(v68, 1))
              {
                goto LABEL_70;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v130[0] = v64;
              v72 = sub_23005EE00(v56, v55);
              v74 = v64[2];
              v75 = (v73 & 1) == 0;
              v76 = __OFADD__(v74, v75);
              v77 = v74 + v75;
              if (v76)
              {
                goto LABEL_71;
              }

              v78 = v73;
              if (v64[3] < v77)
              {
                sub_2300843FC(v77, isUniquelyReferenced_nonNull_native);
                v72 = sub_23005EE00(v56, v55);
                if ((v78 & 1) != (v79 & 1))
                {
                  goto LABEL_73;
                }

                goto LABEL_55;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_55:
                if ((v78 & 1) == 0)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                v98 = v72;
                sub_2300898B0();
                v72 = v98;
                if ((v78 & 1) == 0)
                {
LABEL_61:
                  v99 = v130[0];
                  *(v130[0] + 8 * (v72 >> 6) + 64) |= 1 << v72;
                  v100 = (v99[6] + 16 * v72);
                  *v100 = v56;
                  v100[1] = v55;
                  v101 = (v99[7] + 24 * v72);
                  v102 = v129;
                  *v101 = v128;
                  v101[1] = v102;
                  v101[2] = v70;
                  v103 = v99[2];
                  v76 = __OFADD__(v103, 1);
                  v104 = v103 + 1;
                  if (v76)
                  {
                    goto LABEL_72;
                  }

                  v99[2] = v104;
                  v132 = v99;
                  goto LABEL_20;
                }
              }

              v94 = v72;

              v52 = v130[0];
              v95 = (*(v130[0] + 56) + 24 * v94);
              v96 = v129;
              *v95 = v128;
              v95[1] = v96;
              v95[2] = v70;
              goto LABEL_19;
            }
          }

          v80 = v129;

          v81 = swift_isUniquelyReferenced_nonNull_native();
          v130[0] = v64;
          v82 = sub_23005EE00(v56, v55);
          v84 = v64[2];
          v85 = (v83 & 1) == 0;
          v76 = __OFADD__(v84, v85);
          v86 = v84 + v85;
          if (v76)
          {
            goto LABEL_68;
          }

          v87 = v83;
          if (v64[3] >= v86)
          {
            if ((v81 & 1) == 0)
            {
              v97 = v82;
              sub_2300898B0();
              v82 = v97;
              if ((v87 & 1) == 0)
              {
LABEL_52:
                v89 = v130[0];
                *(v130[0] + 8 * (v82 >> 6) + 64) |= 1 << v82;
                v90 = (v89[6] + 16 * v82);
                *v90 = v56;
                v90[1] = v55;
                v91 = (v89[7] + 24 * v82);
                *v91 = v128;
                v91[1] = v80;
                v91[2] = 1;
                v92 = v89[2];
                v76 = __OFADD__(v92, 1);
                v93 = v92 + 1;
                if (v76)
                {
                  goto LABEL_69;
                }

                v89[2] = v93;
                v132 = v89;
                goto LABEL_20;
              }

              goto LABEL_18;
            }
          }

          else
          {
            sub_2300843FC(v86, v81);
            v82 = sub_23005EE00(v56, v55);
            if ((v87 & 1) != (v88 & 1))
            {
              goto LABEL_73;
            }
          }

          if ((v87 & 1) == 0)
          {
            goto LABEL_52;
          }

LABEL_18:
          v51 = v82;

          v52 = v130[0];
          v53 = (*(v130[0] + 56) + 24 * v51);
          *v53 = v128;
          v53[1] = v80;
          v53[2] = 1;
LABEL_19:

          v132 = v52;
LABEL_20:
          if (++v50 == v127)
          {

            a1 = v108;
            a2 = v122;
            goto LABEL_6;
          }
        }
      }

      a1 = v108;
    }

    else
    {
LABEL_63:
    }

LABEL_6:
    v10 &= v10 - 1;
    objc_autoreleasePoolPop(v125);
    v7 = v124;
    v11 = v123;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v105 = v132;

      return v105;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

void sub_2300FA864(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double *a8)
{
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    *a3 = sub_230105D4C(a4, *&a1, a5, a6, a7);

    *a8 = a1;
    return;
  }

  v36 = 0.4;
  v16 = sub_230105D4C(a4, 0.4, a5, a6, a7);
  *a3 = v16;

  v17 = sub_230108638(v16);

  v18 = sub_2300FAC24(v17, a5, a7, 0.4);

  v35 = v18 & 1;
  v19 = swift_beginAccess();
  v20 = v36;
  if (v36 > 0.01)
  {
    if (v35 == 1)
    {
      while (1)
      {
        v21 = MEMORY[0x2319135A0]();
        sub_2300FADF4(&v36, a3, a4, a5, a6, a7, &v35);
        if (v9)
        {
          objc_autoreleasePoolPop(v21);
          __break(1u);
          return;
        }

        v9 = 0;
        objc_autoreleasePoolPop(v21);
        v20 = v36;
        if (v36 <= 0.01)
        {
          break;
        }

        if (!v35)
        {
          goto LABEL_16;
        }
      }

      if (v35)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_16;
  }

  if ((v18 & 1) == 0)
  {
LABEL_16:
    if (qword_280C97168 != -1)
    {
      swift_once();
    }

    v29 = sub_23030EF48();
    __swift_project_value_buffer(v29, qword_280C97170);
    v30 = sub_23030EF38();
    v31 = sub_2303102A8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134217984;
      *(v32 + 4) = v20;
      _os_log_impl(&dword_230044000, v30, v31, "REMAnchoredBubbleModel: selected scale %f", v32, 0xCu);
      MEMORY[0x231914180](v32, -1, -1);
    }

    *a8 = v20;
    return;
  }

LABEL_10:
  v23 = MEMORY[0x2319135A0](v19);
  if (qword_280C97168 != -1)
  {
    swift_once();
  }

  v24 = sub_23030EF48();
  __swift_project_value_buffer(v24, qword_280C97170);
  v25 = sub_23030EF38();
  v26 = sub_2303102A8();
  if (os_log_type_enabled(v25, v26))
  {
    v33 = v23;
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = 0x3FC999999999999ALL;
    _os_log_impl(&dword_230044000, v25, v26, "REMAnchoredBubbleModel: fall back with default %f", v27, 0xCu);
    v28 = v27;
    v23 = v33;
    MEMORY[0x231914180](v28, -1, -1);
  }

  *a3 = sub_230105D4C(a4, 0.2, a5, a6, a7);

  *a8 = 0.2;
  objc_autoreleasePoolPop(v23);
}

uint64_t sub_2300FAC24(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v16 = 0;
  v17 = 0;
  v9 = MEMORY[0x2319135A0]();
  sub_230101BC4(a1, a2, a3, &v16, &v17, v4, a4);
  objc_autoreleasePoolPop(v9);
  if (qword_280C97168 != -1)
  {
    swift_once();
  }

  v10 = sub_23030EF48();
  __swift_project_value_buffer(v10, qword_280C97170);
  v11 = sub_23030EF38();
  v12 = sub_2303102A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    swift_beginAccess();
    *(v13 + 4) = v16;
    *(v13 + 12) = 2048;
    swift_beginAccess();
    *(v13 + 14) = v17;
    _os_log_impl(&dword_230044000, v11, v12, "REMAnchoredBubbleModel: checking singular with %ld vectorizable bubbles and %ld are non-singular", v13, 0x16u);
    MEMORY[0x231914180](v13, -1, -1);
  }

  result = swift_beginAccess();
  v15 = 5 * v17;
  if ((v17 * 5) >> 64 == (5 * v17) >> 63)
  {
    swift_beginAccess();
    return v15 < v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2300FADF4(double *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  swift_beginAccess();
  *a1 = *a1 + -0.05;
  if (qword_280C97168 != -1)
  {
    swift_once();
  }

  v13 = sub_23030EF48();
  __swift_project_value_buffer(v13, qword_280C97170);
  v14 = sub_23030EF38();
  v15 = sub_2303102A8();
  if (os_log_type_enabled(v14, v15))
  {
    v26 = a4;
    v16 = a6;
    v17 = a3;
    v18 = a5;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    swift_beginAccess();
    *(v19 + 4) = *a1;
    _os_log_impl(&dword_230044000, v14, v15, "REMAnchoredBubbleModel: current scale %f", v19, 0xCu);
    v20 = v19;
    a5 = v18;
    a3 = v17;
    a6 = v16;
    a4 = v26;
    MEMORY[0x231914180](v20, -1, -1);
  }

  swift_beginAccess();
  v21 = sub_230105D4C(a3, *a1, a4, a5, a6);
  *a2 = v21;

  v22 = sub_230108638(v21);

  swift_beginAccess();
  LOBYTE(v21) = sub_2300FAC24(v22, a4, a6, *a1);

  *a7 = v21 & 1;
  v23 = sub_23030EF38();
  v24 = sub_2303102A8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    swift_beginAccess();
    *(v25 + 4) = *a1;
    _os_log_impl(&dword_230044000, v23, v24, "REMAnchoredBubbleModel: trained for scale %f", v25, 0xCu);
    MEMORY[0x231914180](v25, -1, -1);
  }
}

uint64_t sub_2300FB0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_23030EBB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  result = sub_230100EB4(a1, a2);
  if (v18 == -1)
  {
    goto LABEL_10;
  }

  v19 = v17;
  if ((v18 & 1) == 0)
  {
    v21 = v7;
    goto LABEL_7;
  }

  v20 = sub_2300FCD8C();
  if (v19 < 0 || v19 >= *(v20 + 16))
  {

LABEL_10:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -1;
    return result;
  }

  v21 = v7;

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230315CE0;
  *(inited + 32) = 4;
  v23 = inited + 32;
  *(inited + 40) = MEMORY[0x277D84FA0];
  v28 = sub_23008CD08(inited);
  swift_setDeallocating();
  sub_230061918(v23, &qword_27DB15458);
  sub_23030EB68();

  sub_230055F74(v15, v13, &qword_27DB14800);
  if ((*(v21 + 48))(v13, 1, v6) == 1)
  {
    sub_230061918(v15, &qword_27DB14800);
    sub_230061918(v13, &qword_27DB14800);
    v24 = 0xE500000000000000;
    v25 = 0x296C696E28;
  }

  else
  {
    (*(v21 + 32))(v9, v13, v6);
    v25 = sub_23030EB78();
    v24 = v26;
    sub_230061918(v15, &qword_27DB14800);
    (*(v21 + 8))(v9, v6);
  }

  type metadata accessor for REMSuggestedList();
  result = swift_allocObject();
  *(result + 16) = v25;
  *(result + 24) = v24;
  *a3 = v28;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_2300FB3F0()
{
  v1 = v0;
  v2 = sub_23030E9B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - v7;
  sub_23030E908();
  v9 = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale);
  v10 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v12 = v11;
  v13 = *(v0 + 24);
  sub_23030E458();
  swift_allocObject();

  sub_23030E448();
  v40[0] = 3223089;
  v40[1] = 0xE300000000000000;
  v40[2] = v9;
  v40[3] = v10;
  v40[4] = v12;
  v40[5] = v13;
  sub_230106B1C();
  v14 = sub_23030E438();
  v37 = v2;
  v16 = v14;
  v18 = v17;

  v38 = v16;
  v39 = v18;
  sub_23030EA28();
  if (qword_280C97168 != -1)
  {
    swift_once();
  }

  v19 = sub_23030EF48();
  __swift_project_value_buffer(v19, qword_280C97170);
  v20 = v37;
  (*(v3 + 16))(v6, v8, v37);
  v21 = sub_23030EF38();
  v22 = sub_2303102A8();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v34 = v23;
    v36 = swift_slowAlloc();
    v40[0] = v36;
    *v23 = 136315138;
    v33 = sub_23030E888();
    v25 = v24;
    v35 = *(v3 + 8);
    v35(v6, v20);
    v26 = sub_23004E30C(v33, v25, v40);

    v27 = v34;
    *(v34 + 1) = v26;
    _os_log_impl(&dword_230044000, v21, v22, "REMAnchoredBubbleModel: Model info saved to {%s}", v27, 0xCu);
    v28 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x231914180](v28, -1, -1);
    v29 = v27;
    v30 = v35;
    MEMORY[0x231914180](v29, -1, -1);
  }

  else
  {

    v30 = *(v3 + 8);
    v30(v6, v20);
  }

  if (*(v1 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction))
  {

    v31 = sub_2302D41DC();
    sub_23005FE3C(v38, v39);

    v30(v8, v20);
  }

  else
  {
    v30(v8, v20);
    sub_23005FE3C(v38, v39);
    v31 = 1;
  }

  return v31 & 1;
}

uint64_t sub_2300FBA20(uint64_t a1)
{
  v3 = sub_23030E9B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v7 = *(v1 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale);
  v8 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v10 = v9;
  v11 = *(v1 + 24);
  sub_23030E458();
  swift_allocObject();

  sub_23030E448();
  v26[0] = 3223089;
  v26[1] = 0xE300000000000000;
  v26[2] = v7;
  v26[3] = v8;
  v26[4] = v10;
  v26[5] = v11;
  sub_230106B1C();
  v12 = sub_23030E438();
  v14 = v13;

  sub_23030EA28();
  if (qword_280C97168 != -1)
  {
    swift_once();
  }

  v15 = sub_23030EF48();
  __swift_project_value_buffer(v15, qword_280C97170);
  (*(v4 + 16))(v6, a1, v3);
  v16 = sub_23030EF38();
  v17 = sub_2303102A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26[0] = v25;
    *v18 = 136315138;
    v19 = sub_23030E888();
    v21 = v20;
    (*(v4 + 8))(v6, v3);
    v22 = sub_23004E30C(v19, v21, v26);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_230044000, v16, v17, "REMAnchoredBubbleModel.saveBubblesJson: Model info saved to {%s}", v18, 0xCu);
    v23 = v25;
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x231914180](v23, -1, -1);
    MEMORY[0x231914180](v18, -1, -1);
    sub_23005FE3C(v12, v14);
  }

  else
  {
    sub_23005FE3C(v12, v14);

    (*(v4 + 8))(v6, v3);
  }

  return 1;
}

uint64_t static REMAnchoredBubbleModel.loadOnDeviceTrainedModel(baseURL:)()
{
  v0 = sub_23030E9B8();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = v24 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  sub_23030E908();
  v8 = sub_23030E9C8();
  v10 = v9;
  sub_23030E918();
  v25 = sub_2302D5C58();
  v27 = v7;
  v11 = *(v1 + 8);
  v11(v5, v0);
  sub_23030E408();
  swift_allocObject();
  sub_23030E3F8();
  sub_230106B70();
  sub_23030E3E8();

  v24[1] = v1 + 8;
  v26 = v0;
  v12 = v28;
  v13 = v29;
  v14 = v30;
  v15 = v31;

  v16 = sub_23030F8B8();
  type metadata accessor for REMAnchoredBubbleModel();
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictionEditingSessionID;
  v19 = sub_23030EBB8();
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction;
  *(v17 + 16) = v16;
  *(v17 + 24) = v15;
  v21 = (v17 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_version);
  *v21 = v12;
  v21[1] = v13;
  *(v17 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) = v14;
  *(v17 + v20) = v25;
  sub_23005FE3C(v8, v10);

  v22 = MEMORY[0x277D84F90];
  *(v17 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens) = MEMORY[0x277D84F90];
  v11(v27, v26);
  result = v17;
  *(v17 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = v22;
  *(v17 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_predefinedLabels) = 0;
  return result;
}

uint64_t static REMAnchoredBubbleModel.loadGroceryModel(from:labels:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_23030E9B8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_23030E9C8();
  v6 = v5;
  sub_23030E408();
  swift_allocObject();
  sub_23030E3F8();
  sub_230106B70();
  sub_23030E3E8();

  v7 = sub_23030F8B8();
  type metadata accessor for REMAnchoredBubbleModel();
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictionEditingSessionID;
  v10 = sub_23030EBB8();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction;
  *(v8 + 16) = v7;
  *(v8 + 24) = v18;
  v12 = (v8 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_version);
  *v12 = v15;
  v12[1] = v16;
  *(v8 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) = v17;
  *(v8 + v11) = 0;
  sub_23005FE3C(v4, v6);

  v13 = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens) = MEMORY[0x277D84F90];
  *(v8 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = v13;
  *(v8 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_predefinedLabels) = a2;

  return v8;
}

uint64_t sub_2300FCD28()
{

  v0 = sub_23030F668();

  return v0;
}

uint64_t sub_2300FCD8C()
{
  if (*(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_predefinedLabels))
  {
  }

  v3 = *(v0 + 24);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_6:
    while (1)
    {
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(v3 + 56) + ((v8 << 11) | (32 * v10));
      if ((*(v11 + 24) & 1) == 0)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v13 = *(v11 + 8);
    v1 = *(v11 + 16);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_23007E928(0, *(v9 + 2) + 1, 1, v9);
    }

    v14 = *(v9 + 2);
    v15 = *(v9 + 3);
    v16 = v14 + 1;
    if (v14 >= v15 >> 1)
    {
      v22 = v14 + 1;
      v18 = v9;
      v19 = *(v9 + 2);
      v20 = sub_23007E928((v15 > 1), v14 + 1, 1, v18);
      v14 = v19;
      v16 = v22;
      v9 = v20;
    }

    *(v9 + 2) = v16;
    v17 = &v9[16 * v14];
    *(v17 + 4) = v13;
    *(v17 + 5) = v1;
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      v21 = sub_2301026A4(v9);

      v23 = v21;

      sub_230102620(&v23, sub_2302A37B8, sub_230102FAC);

      return v23;
    }

    v6 = *(v3 + 64 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2300FCFB4()
{
  v1 = [objc_opt_self() wordEmbeddingForLanguage_];
  if (v1)
  {
    v40 = v1;
    v41 = v0;
    v2 = *(v0 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15498);
    v3 = sub_230310B98();
    v4 = v3;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 64);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 64;
    if (v8)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_11:
        v14 = v11 | (v5 << 6);
        v15 = (*(v2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(v2 + 56) + 32 * v14;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        v23 = (v4[6] + 16 * v14);
        *v23 = v17;
        v23[1] = v16;
        v24 = v4[7] + 40 * v14;
        *v24 = v19;
        *(v24 + 8) = v20;
        *(v24 + 16) = v21;
        *(v24 + 24) = v22;
        *(v24 + 32) = &type metadata for REMAnchoredBubbleModel.BubbleCategory;
        v25 = v4[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          break;
        }

        v4[2] = v27;

        sub_230106CCC(v20, v21, v22);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v9)
        {
          v28 = *(v41 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction);
          v29 = *(v41 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale);

          v30 = sub_2300FAC24(v4, v40, v28, v29);

          return v30 & 1;
        }

        v13 = *(v2 + 64 + 8 * v5);
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v8 = (v13 - 1) & v13;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_280C97168 != -1)
  {
LABEL_21:
    swift_once();
  }

  v32 = sub_23030EF48();
  __swift_project_value_buffer(v32, qword_280C97170);

  v33 = sub_23030EF38();
  v34 = sub_230310288();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    v37 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v39 = sub_23004E30C(v37, v38, &v42);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_230044000, v33, v34, "REMAnchoredBubbleModel: failed to init wordEmbedding for language code %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x231914180](v36, -1, -1);
    MEMORY[0x231914180](v35, -1, -1);
  }

  return 0;
}

unint64_t sub_2300FD32C()
{
  v123 = [objc_opt_self() wordEmbeddingForLanguage_];
  if (!v123)
  {
    if (qword_280C97168 == -1)
    {
LABEL_83:
      v93 = sub_23030EF48();
      __swift_project_value_buffer(v93, qword_280C97170);

      v94 = sub_23030EF38();
      v95 = sub_230310288();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        *&v131 = v97;
        *v96 = 136315138;
        v98 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
        v100 = sub_23004E30C(v98, v99, &v131);

        *(v96 + 4) = v100;
        _os_log_impl(&dword_230044000, v94, v95, "REMAnchoredBubbleModel: failed to init wordEmbedding for language code %s", v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        MEMORY[0x231914180](v97, -1, -1);
        MEMORY[0x231914180](v96, -1, -1);
      }

      v101 = MEMORY[0x277D84F90];

      return sub_23008CDFC(v101);
    }

LABEL_89:
    swift_once();
    goto LABEL_83;
  }

  log = MEMORY[0x277D84F98];
  v133 = MEMORY[0x277D84F98];
  v1 = *(v0 + 24);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 24) + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v2;
  v119 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_pcaDimensionReduction;
  v115 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale;
  v8 = (v5 + 63) >> 6;
  v124 = v0;
  v125 = *(v0 + 24);

  v9 = 0;
  v118 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v13 = v9;
        if (!v7)
        {
          while (1)
          {
            v9 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v9 >= v8)
            {

              return log;
            }

            v7 = *(v3 + 8 * v9);
            ++v13;
            if (v7)
            {
              goto LABEL_10;
            }
          }

          __break(1u);
          goto LABEL_89;
        }

LABEL_10:
        v14 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v15 = v14 | (v9 << 6);
        v16 = (*(v125 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v125 + 56) + 32 * v15;
        v20 = *v19;
        v22 = *(v19 + 8);
        v21 = *(v19 + 16);
        v23 = *(v19 + 24);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v24 = sub_2300FCD8C();
        if ((v22 & 0x8000000000000000) == 0 && v22 < *(v24 + 16))
        {
          v28 = v24 + 16 * v22;
          v108 = *(v28 + 32);
          v109 = *(v28 + 40);

          goto LABEL_20;
        }

        if (qword_280C97168 != -1)
        {
          swift_once();
        }

        v25 = sub_23030EF48();
        __swift_project_value_buffer(v25, qword_280C97170);

        v26 = sub_23030EF38();
        v27 = sub_230310288();

        if (os_log_type_enabled(v26, v27))
        {
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          *&v131 = v11;
          *v10 = 136315138;
          v12 = sub_23004E30C(v17, v18, &v131);

          *(v10 + 4) = v12;
          _os_log_impl(&dword_230044000, v26, v27, "REMAnchoredBubbleModel.triggerWordsByList: category list is nil for %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v11);
          MEMORY[0x231914180](v11, -1, -1);
          MEMORY[0x231914180](v10, -1, -1);
        }

        else
        {
        }
      }

      sub_230106CCC(*(v19 + 8), *(v19 + 16), 0);
      sub_230106CCC(v22, v21, 0);

      v108 = v22;
      v109 = v21;
LABEL_20:
      v104 = v21;
      if (log[2].isa && (v29 = sub_23005EE00(v108, v109), (v30 & 1) != 0))
      {
        v31 = *(log[7].isa + v29);
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v33 = v31;
      }

      else
      {
        result = sub_23007E928(0, *(v31 + 16) + 1, 1, v31);
        v33 = result;
      }

      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      if (v35 >= v34 >> 1)
      {
        result = sub_23007E928((v34 > 1), v35 + 1, 1, v33);
        v33 = result;
      }

      *(v33 + 16) = v35 + 1;
      v111 = v33;
      v36 = v33 + 16 * v35;
      *(v36 + 32) = v17;
      *(v36 + 40) = v18;
      if (__OFADD__(v118++, 1))
      {
        goto LABEL_92;
      }

      if (qword_280C97168 != -1)
      {
        swift_once();
      }

      v103 = sub_23030EF48();
      __swift_project_value_buffer(v103, qword_280C97170);

      v38 = sub_23030EF38();
      v39 = sub_2303102A8();

      if (os_log_type_enabled(v38, v39))
      {
        logb = v38;
        v40 = swift_slowAlloc();
        v112 = v39;
        v41 = swift_slowAlloc();
        *&v131 = v41;
        *v40 = 134218242;
        *(v40 + 4) = v118;
        *(v40 + 12) = 2080;
        *(v40 + 14) = sub_23004E30C(v17, v18, &v131);
        _os_log_impl(&dword_230044000, logb, v112, "REMAnchoredBubbleModel: Anchor word no %ld: %s", v40, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v41);
        MEMORY[0x231914180](v41, -1, -1);
        MEMORY[0x231914180](v40, -1, -1);
      }

      else
      {
      }

      v42 = *(v124 + v119);

      result = sub_2303101F8();
      if (!result)
      {

        goto LABEL_76;
      }

      if (v42)
      {
        break;
      }

LABEL_76:
      sub_230106CDC(v22, v104, v23);

      v89 = sub_23030EF38();
      v90 = sub_2303102A8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_230044000, v89, v90, "REMAnchoredBubbleModel: Anchor word has no embedding", v91, 2u);
        MEMORY[0x231914180](v91, -1, -1);
      }

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v130 = v133;
      sub_2300A19F0(v111, v108, v109, isUniquelyReferenced_nonNull_native);

      log = v130;
      v133 = v130;
      swift_endAccess();
    }

    v43 = *(result + 16);
    if (v43 >> 60)
    {
      goto LABEL_93;
    }

    v44 = result;
    v113 = *(result + 16);
    v45 = 8 * v43;

    v46 = swift_slowAlloc();
    if (*(v44 + 16))
    {
      v47 = (v44 + 32);
      v48 = v46;
      memcpy(v46, v47, v45);

      v49 = v113;
    }

    else
    {
      v48 = v46;

      v49 = v113;
      if (v113)
      {
        goto LABEL_94;
      }
    }

    type metadata accessor for REMLinearAlgebraDataRef();
    inited = swift_initStackObject();
    *(inited + 16) = v48;
    *(inited + 24) = v49;
    *&v131 = v49;
    *(&v131 + 1) = inited;
    sub_2302D46DC(&v131, &v130);

    v102 = v130;
    v51 = sub_230310208();

    v52 = *(v51 + 16);
    if (v52)
    {
      break;
    }

LABEL_74:

    sub_230106CDC(v22, v104, v23);
    swift_beginAccess();
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v133;
    sub_2300A19F0(v111, v108, v109, v80);

    v81 = v128;
    v133 = v128;
    swift_endAccess();
    v82 = sub_23030EF38();
    v83 = sub_2303102A8();
    log = v81;
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *&v131 = v117;
      *v84 = 136315138;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
      v85 = sub_23030F668();
      v87 = v86;

      v88 = sub_23004E30C(v85, v87, &v131);

      *(v84 + 4) = v88;
      _os_log_impl(&dword_230044000, v82, v83, "REMAnchoredBubbleModel: Trigger words: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v117);
      MEMORY[0x231914180](v117, -1, -1);
      MEMORY[0x231914180](v84, -1, -1);
    }

    else
    {
    }
  }

  v53 = (v51 + 40);
  v110 = v23;
  while (1)
  {
    v55 = v53;
    v56 = *(v53 - 1);
    v57 = *v53;
    v58 = *(v124 + v119);

    v116 = v56;
    result = sub_2303101F8();
    if (!result)
    {

LABEL_45:

      v54 = v55;
      v23 = v110;
      goto LABEL_46;
    }

    loga = v57;
    if (!v58)
    {

      goto LABEL_45;
    }

    __n = v55;
    v105 = v52;
    v59 = *(result + 16);
    if (v59 >> 60)
    {
      break;
    }

    v60 = result;
    v114 = v58;

    v61 = swift_slowAlloc();
    v23 = v110;
    if (*(v60 + 16))
    {
      v62 = v61;
      memcpy(v61, (v60 + 32), 8 * v59);

      v54 = __n;
    }

    else
    {
      v62 = v61;

      v54 = __n;
      if (v59)
      {
        goto LABEL_91;
      }
    }

    v63 = swift_initStackObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v59;
    isa = v114[6].isa;
    if (isa)
    {
      v131 = *&v114[4].isa;
      v132 = isa;
      v126 = v59;
      v127 = v63;
      static REMMatrix.mul(_:_:)(&v131, &v126, &v128);

      v71 = v128;
      v72 = v129;
    }

    else
    {
      __na = v59;
      v65 = v63;
      if (qword_27DB13D28 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v103, qword_27DB19638);
      v66 = sub_23030EF38();
      v67 = sub_230310288();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = v67;
        v70 = v68;
        _os_log_impl(&dword_230044000, v66, v69, "REMPCASolver project vector: missing PCA projection", v68, 2u);
        MEMORY[0x231914180](v70, -1, -1);
      }

      v128 = __na;
      v129 = v65;
      v72 = v65;

      v71 = __na;
    }

    v73 = *(v124 + v115);
    v131 = v102;
    v126 = v71;
    v127 = v72;
    static REMVector.angularCosineDistance(lhs:rhs:)(&v131, &v126);
    if (v73 <= 0.49)
    {
      if (v73 > 0.2)
      {
        v76 = v73;
      }

      else
      {
        v76 = 0.2;
      }

      v75 = v74 <= 0.25;
    }

    else
    {
      v75 = v74 <= 0.25;
      v76 = 0.49;
    }

    v52 = v105;
    if (v75)
    {
      if (v74 * 4.0 * v76 < v20)
      {
LABEL_71:
        v78 = *(v111 + 2);
        v77 = *(v111 + 3);
        if (v78 >= v77 >> 1)
        {
          v111 = sub_23007E928((v77 > 1), v78 + 1, 1, v111);
        }

        *(v111 + 2) = v78 + 1;
        v79 = &v111[16 * v78];
        *(v79 + 4) = v116;
        *(v79 + 5) = loga;
        goto LABEL_46;
      }
    }

    else if (v76 + v76 + v74 * (1.0 - v76) * 4.0 + -1.0 < v20)
    {
      goto LABEL_71;
    }

LABEL_46:
    v53 = (v54 + 24);
    if (!--v52)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  return result;
}

uint64_t sub_2300FE388@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  result = sub_2303101F8();
  if (result)
  {
    if (a1)
    {
      v5 = *(result + 16);
      v6 = result;

      sub_230100234(v6, v5, v9);
      v8[0] = v9[0];
      v8[1] = v9[1];
      sub_2302D46DC(v8, v10);

      v7 = v10[1];
      *a2 = v10[0];
      a2[1] = v7;
      return result;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

char *sub_2300FE5B0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v131 = a5;
  v126 = *v6;
  v11 = sub_23030EBB8();
  v12 = *(v11 - 8);
  v129 = v11;
  v130 = v12;
  MEMORY[0x28223BE20](v11);
  v121 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB154A0);
  MEMORY[0x28223BE20](v127);
  v128 = &v119 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14800);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v124 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v125 = &v119 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v119 - v20;
  v22 = sub_23030E4A8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v122 = a1;
    v123 = a2;
    v132 = v6[2];
    v133 = v6;
    v26 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v28 = v27;
    v29 = objc_opt_self();
    v120 = a3;
    v30 = sub_23030F8B8();
    v31 = [v29 baseLanguageFromLanguage_];

    v32 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v34 = v33;

    if (v26 == v32 && v28 == v34)
    {

      v35 = v133;
      v36 = v122;
      v37 = v123;
      goto LABEL_6;
    }

    v38 = sub_230311048();

    v35 = v133;
    a3 = v120;
    v36 = v122;
    v37 = v123;
    if (v38)
    {
LABEL_6:
      *&v134 = _s19ReminderKitInternal25REMFilteredTitleEmbeddingC17decodeEmojiInText_8languageS2S_So10NLLanguageatFZ_0(v36, v37, v132);
      *(&v134 + 1) = v39;
      sub_23030E478();
      sub_2300A85F0();
      v122 = sub_230310558();
      v123 = v40;
      (*(v23 + 8))(v25, v22);

      v41 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictionEditingSessionID;
      swift_beginAccess();
      v42 = v130;
      v43 = v129;
      v120 = *(v130 + 16);
      v120(v21, v131, v129);
      v119 = *(v42 + 56);
      v119(v21, 0, 1, v43);
      v44 = *(v127 + 48);
      v45 = v35 + v41;
      v46 = v128;
      sub_230055F74(v45, v128, &qword_27DB14800);
      sub_230055F74(v21, v46 + v44, &qword_27DB14800);
      v47 = *(v42 + 48);
      if (v47(v46, 1, v43) == 1)
      {
        sub_230061918(v21, &qword_27DB14800);
        if (v47(v46 + v44, 1, v43) == 1)
        {
          sub_230061918(v46, &qword_27DB14800);
          goto LABEL_40;
        }
      }

      else
      {
        v59 = v125;
        sub_230055F74(v46, v125, &qword_27DB14800);
        if (v47(v46 + v44, 1, v43) != 1)
        {
          v82 = v130;
          v83 = v121;
          (*(v130 + 32))(v121, v46 + v44, v43);
          sub_230106FB8();
          LODWORD(v127) = sub_23030F818();
          v84 = *(v82 + 8);
          v84(v83, v43);
          sub_230061918(v21, &qword_27DB14800);
          v84(v125, v43);
          sub_230061918(v46, &qword_27DB14800);
          if (v127)
          {
LABEL_40:
            v85 = v132;
            v86 = sub_2300FF38C();

            v87 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens;
            v88 = v133;
            v89 = *(v133 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens);
            if (*(v89 + 16) + 1 == *(v86 + 16))
            {

              v90 = sub_2300FF614(1, v86);
              v91 = sub_2300A7A0C(v89, v90);

              if (v91)
              {
                if (*(v86 + 16))
                {

                  sub_2301002EC(v85, &v134);

                  v92 = v137;
                  if (v137 != 255)
                  {
                    v131 = v87;
                    v93 = v134;
                    v94 = v135;
                    v95 = v136;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143C0);
                    v96 = swift_allocObject();
                    *(v96 + 16) = xmmword_230315CE0;
                    *(v96 + 32) = v93;
                    *(v96 + 48) = v94;
                    *(v96 + 56) = v95;
                    *(v96 + 64) = v92;
                    *(v88 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = v96;
                    sub_230106E94(v93, *(&v93 + 1), v94, v95, v92);

                    a4 = sub_23007F430(0, 1, 1, MEMORY[0x277D84F90]);
                    v98 = *(a4 + 2);
                    v97 = *(a4 + 3);
                    if (v98 >= v97 >> 1)
                    {
                      a4 = sub_23007F430((v97 > 1), v98 + 1, 1, a4);
                    }

                    *(a4 + 2) = v98 + 1;
                    v99 = &a4[40 * v98];
                    *(v99 + 2) = v93;
                    *(v99 + 6) = v94;
                    *(v99 + 7) = v95;
                    v99[64] = v92;
LABEL_65:
                    v88 = v133;
                    v87 = v131;
                    goto LABEL_66;
                  }

LABEL_48:
                  a4 = *(v88 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions);

LABEL_66:
                  *(v88 + v87) = v86;

                  *(v88 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = a4;
                  goto LABEL_69;
                }
              }
            }

            if (sub_2300A7A0C(*(v88 + v87), v86))
            {
              goto LABEL_48;
            }

            v101 = sub_2300B38E4(v100);

            v131 = v87;

            v103 = sub_230104F20(v102, v101);

            v104 = 1 << *(v103 + 32);
            v105 = -1;
            if (v104 < 64)
            {
              v105 = ~(-1 << v104);
            }

            a3 = v105 & *(v103 + 56);
            v106 = (v104 + 63) >> 6;

            v107 = 0;
            a4 = MEMORY[0x277D84F90];
            while (1)
            {
              v108 = v107;
              if (!a3)
              {
                break;
              }

LABEL_57:
              a3 &= a3 - 1;

              sub_2301002EC(v132, &v134);

              v109 = v137;
              if (v137 == 255)
              {
                sub_230106D5C(v134, *(&v134 + 1), v135, v136, 0xFFu);
              }

              else
              {
                v129 = v135;
                v130 = v134;
                v127 = v136;
                v128 = *(&v134 + 1);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  a4 = sub_23007F430(0, *(a4 + 2) + 1, 1, a4);
                }

                v111 = *(a4 + 2);
                v110 = *(a4 + 3);
                v112 = v127;
                v113 = v128;
                v114 = v129;
                v115 = v130;
                if (v111 >= v110 >> 1)
                {
                  v117 = sub_23007F430((v110 > 1), v111 + 1, 1, a4);
                  v113 = v128;
                  v114 = v129;
                  v112 = v127;
                  a4 = v117;
                  v115 = v130;
                }

                *(a4 + 2) = v111 + 1;
                v116 = &a4[40 * v111];
                *(v116 + 4) = v115;
                *(v116 + 5) = v113;
                *(v116 + 6) = v114;
                *(v116 + 7) = v112;
                v116[64] = v109;
              }
            }

            while (1)
            {
              v107 = v108 + 1;
              if (__OFADD__(v108, 1))
              {
                break;
              }

              if (v107 >= v106)
              {

                goto LABEL_65;
              }

              a3 = *(v103 + 56 + 8 * v107);
              ++v108;
              if (a3)
              {
                goto LABEL_57;
              }
            }

LABEL_73:
            __break(1u);
            goto LABEL_74;
          }

LABEL_22:
          v60 = v124;
          v120(v124, v131, v43);
          v119(v60, 0, 1, v43);
          v61 = v133;
          swift_beginAccess();
          sub_230106CEC(v60, v61 + v41);
          swift_endAccess();
          v62 = HIBYTE(v123) & 0xF;
          if ((v123 & 0x2000000000000000) == 0)
          {
            v62 = v122 & 0xFFFFFFFFFFFFLL;
          }

          if (!v62)
          {

            a4 = MEMORY[0x277D84F90];
            *(v61 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens) = MEMORY[0x277D84F90];

            *(v61 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = a4;
LABEL_70:

            return a4;
          }

          v63 = v132;
          v64 = sub_2300FF38C();

          v65 = OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens;
          *(v61 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestTitleTokens) = v64;

          v66 = *(v61 + v65);
          v67 = *(v66 + 16);

          if (v67)
          {
            a3 = 0;
            v68 = v66 + 40;
            v130 = v67 - 1;
            a4 = MEMORY[0x277D84F90];
            v131 = v66 + 40;
            do
            {
              v69 = v68 + 16 * a3;
              v70 = a3;
              while (1)
              {
                if (v70 >= *(v66 + 16))
                {
                  __break(1u);
                  goto LABEL_73;
                }

                a3 = v70 + 1;

                sub_2301002EC(v63, &v134);

                v71 = v137;
                if (v137 != 255)
                {
                  break;
                }

                sub_230106D5C(v134, *(&v134 + 1), v135, v136, 0xFFu);
                v69 += 16;
                ++v70;
                if (v67 == a3)
                {
                  goto LABEL_68;
                }
              }

              v128 = v135;
              v72 = *(&v134 + 1);
              v129 = v134;
              v73 = v136;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a4 = sub_23007F430(0, *(a4 + 2) + 1, 1, a4);
              }

              v75 = *(a4 + 2);
              v74 = *(a4 + 3);
              v76 = v128;
              v77 = v129;
              if (v75 >= v74 >> 1)
              {
                v81 = sub_23007F430((v74 > 1), v75 + 1, 1, a4);
                v79 = v72;
                v76 = v128;
                v77 = v129;
                v78 = v73;
                a4 = v81;
              }

              else
              {
                v78 = v73;
                v79 = v72;
              }

              v68 = v131;
              v63 = v132;
              *(a4 + 2) = v75 + 1;
              v80 = &a4[40 * v75];
              *(v80 + 4) = v77;
              *(v80 + 5) = v79;
              *(v80 + 6) = v76;
              *(v80 + 7) = v78;
              v80[64] = v71;
              v61 = v133;
            }

            while (v130 != v70);
          }

          else
          {
            a4 = MEMORY[0x277D84F90];
          }

LABEL_68:

          *(v61 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_latestPredictions) = a4;
LABEL_69:

          goto LABEL_70;
        }

        sub_230061918(v21, &qword_27DB14800);
        (*(v130 + 8))(v59, v43);
      }

      sub_230061918(v46, &qword_27DB154A0);
      goto LABEL_22;
    }
  }

  if (qword_280C97168 != -1)
  {
LABEL_74:
    swift_once();
  }

  v48 = sub_23030EF48();
  __swift_project_value_buffer(v48, qword_280C97170);

  v49 = sub_23030EF38();
  v50 = sub_2303102A8();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v134 = v52;
    *v51 = 136315394;
    if (a4)
    {
      v53 = a3;
    }

    else
    {
      v53 = 0x296C696E28;
    }

    if (a4)
    {
      v54 = a4;
    }

    else
    {
      v54 = 0xE500000000000000;
    }

    v55 = sub_23004E30C(v53, v54, &v134);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    v56 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
    v58 = sub_23004E30C(v56, v57, &v134);

    *(v51 + 14) = v58;
    _os_log_impl(&dword_230044000, v49, v50, "REMAnchoredBubbleModel: lang %s is not supported by current model (%s)", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x231914180](v52, -1, -1);
    MEMORY[0x231914180](v51, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2300FF38C()
{
  v20 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x2319135A0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15358);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2303167B0;
  v1 = *MEMORY[0x277CD8958];
  v2 = *MEMORY[0x277CD8970];
  *(v0 + 32) = *MEMORY[0x277CD8958];
  *(v0 + 40) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CD89D8]);
  type metadata accessor for NLTagScheme(0);
  v4 = v1;
  v5 = v2;
  v6 = sub_23030FCC8();

  v7 = [v3 initWithTagSchemes_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15380);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23031A240;
  v9 = *MEMORY[0x277CD88F8];
  *(inited + 32) = *MEMORY[0x277CD88F8];
  v10 = *MEMORY[0x277CD8980];
  v11 = *MEMORY[0x277CD8920];
  *(inited + 40) = *MEMORY[0x277CD8980];
  *(inited + 48) = v11;
  v12 = *MEMORY[0x277CD8928];
  *(inited + 56) = *MEMORY[0x277CD8928];
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_2302A3A38(inited);
  swift_setDeallocating();
  type metadata accessor for NLTag(0);
  swift_arrayDestroy();
  v17 = sub_23030F8B8();
  [v7 setString_];

  sub_2303103F8();
  sub_230310408();

  objc_autoreleasePoolPop(v19);
  return v20;
}

uint64_t sub_2300FF614(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v31 = *(a2 + 16);
        v27 = v4 - 1;
        v8 = MEMORY[0x277D84F90];
        v30 = MEMORY[0x277D84F90];
        v28 = a2 + 40;
        while (1)
        {
          v29 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = *(v8 + 16);
            if (v13 >= v3)
            {
              break;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_23009EC34(0, v13 + 1, 1);
            }

            v15 = *(v8 + 16);
            v14 = *(v8 + 24);
            if (v15 >= v14 >> 1)
            {
              result = sub_23009EC34((v14 > 1), v15 + 1, 1);
            }

            *(v8 + 16) = v15 + 1;
            v16 = v8 + 16 * v15;
            *(v16 + 32) = v10;
            *(v16 + 40) = v11;
            v9 += 2;
            v5 = v12;
            if (v31 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v29 >= v13)
          {
            goto LABEL_33;
          }

          v17 = v8 + 16 * v29;
          v18 = *(v17 + 40);
          v25 = *(v17 + 32);

          v26 = v18;

          v19 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_23009EC34(0, *(v30 + 16) + 1, 1);
            v19 = v30;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_23009EC34((v20 > 1), v21 + 1, 1);
            v19 = v30;
          }

          *(v19 + 16) = v21 + 1;
          v30 = v19;
          v22 = v19 + 16 * v21;
          *(v22 + 32) = v25;
          *(v22 + 40) = v26;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2302A37B8(v8);
            v8 = result;
          }

          v7 = v28;
          if (v29 >= *(v8 + 16))
          {
            goto LABEL_34;
          }

          v23 = v8 + 16 * v29;
          *(v23 + 32) = v10;
          *(v23 + 40) = v11;

          if ((v29 + 1) < v3)
          {
            v6 = v29 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v27 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v30 = MEMORY[0x277D84F90];
LABEL_29:

      return v30;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

double sub_2300FF870()
{
  result = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) + 0.05;
  *(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) = result;
  return result;
}

double sub_2300FF890()
{
  result = *(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) + -0.05;
  *(v0 + OBJC_IVAR____TtC19ReminderKitInternal22REMAnchoredBubbleModel_distanceScale) = result;
  return result;
}

uint64_t sub_2300FF8B0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v13 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB154F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_230107DC8();
  sub_230311448();
  LOBYTE(v15) = 0;
  sub_230310DC8();
  if (!v4)
  {
    v15 = a2;
    v16 = a3;
    v17 = v13 & 1;
    v14 = 1;
    sub_230107E70();
    sub_230310DF8();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2300FFA50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB154B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2301076B4();
  sub_230311448();
  v14 = 0;
  sub_230310DA8();
  if (!v2)
  {
    v13 = 1;
    sub_230310DC8();
    v12 = 2;
    sub_230310DA8();
    v11 = *(v3 + 40);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB15488);
    sub_230107708();
    sub_230310DF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2300FFC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2300819F0(a1, v10);
  v5 = sub_23030F9B8();
  if (v2)
  {

    sub_2300819F0(a1, v10);
    v7 = sub_23030FFC8();
    v8 = 0;
  }

  else
  {
    v7 = v5;
    v8 = v6;
  }

  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v2 != 0;
  return result;
}

uint64_t sub_2300FFD20()
{
  if (*(v0 + 16))
  {
    return sub_23030FFD8();
  }

  else
  {
    return sub_23030FA28();
  }
}

uint64_t sub_2300FFD54()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_230311358();
  if (v2)
  {
    MEMORY[0x2319130E0](v1);
  }

  else
  {
    sub_23030F9C8();
  }

  return sub_2303113A8();
}

uint64_t sub_2300FFDC0()
{
  if (*(v0 + 16))
  {
    return MEMORY[0x2319130E0](*v0);
  }

  return sub_23030F9C8();
}

uint64_t sub_2300FFE1C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_230311358();
  if (v2)
  {
    MEMORY[0x2319130E0](v1);
  }

  else
  {
    sub_23030F9C8();
  }

  return sub_2303113A8();
}

uint64_t sub_2300FFE84(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    if (v3 == v4)
    {
      return *(a2 + 16);
    }

    else
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v6 = a1[1];
    if (v3 == v4 && v6 == a2[1])
    {
      return 1;
    }

    else
    {
      return sub_230311048();
    }
  }
}