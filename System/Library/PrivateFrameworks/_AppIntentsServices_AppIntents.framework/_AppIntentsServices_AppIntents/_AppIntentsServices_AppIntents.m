uint64_t _IdentifiableAppEntityRepresentation<>.init<A>(instanceIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_275244C44();
  v5 = sub_275244C94();
  (*(*(a3 - 8) + 8))(a1, a3);
  return v5;
}

uint64_t static _IdentifiableAppEntityRepresentation<>.queryByIdentifier<A>(instanceIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[11] = a1;
  v9[6] = a2;
  v9[7] = a3;
  v9[8] = a4;
  v9[9] = a5;
  v9[2] = a2;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = swift_getKeyPath();
  v5 = sub_275244D04();
  WitnessTable = swift_getWitnessTable();
  sub_275241230(sub_275241204, v9, v5, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  sub_275244C84();
}

uint64_t sub_2752411B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + a2 - 24);
  v5 = *(a1 + a2 - 8);
  result = sub_275244C44();
  *a3 = result;
  a3[1] = v7;
  return result;
}

__n128 sub_2752411F8(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_275241230(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  (MEMORY[0x28223BE20])();
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_275244D24();
  if (!v26)
  {
    return sub_275244CF4();
  }

  v48 = v26;
  v52 = sub_275244DA4();
  v39 = sub_275244DB4();
  sub_275244D84();
  result = sub_275244D14();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_275244D44();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_275244D94();
      result = sub_275244D34();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t EntityIdentifier.typeIdentifier.getter()
{
  sub_275244BE4();
  v1 = *(v0 + 8);
  return sub_275244BC4();
}

unint64_t sub_275241680()
{
  result = qword_2809B5650;
  if (!qword_2809B5650)
  {
    sub_275244C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5650);
  }

  return result;
}

uint64_t sub_275241708(uint64_t a1, uint64_t a2)
{
  v4 = sub_275241D04();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_275241754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275241D04();

  return MEMORY[0x28213DE08](a1, a2, a3, v6);
}

id static IntentToggleOperation.lnValueType.getter()
{
  v0 = [objc_opt_self() intentToggleOperationValueType];

  return v0;
}

uint64_t sub_2752417FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275241D04();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_275241870(char a1, void (*a2)(uint64_t *__return_ptr, void), SEL *a3)
{
  a2(v7, a1 & 1);
  v4 = [objc_opt_self() *a3];
  v5 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_275241A28(v7, v4);
}

uint64_t sub_2752418E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275241CB0();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_275241930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_275241CB0();

  return MEMORY[0x28213DE08](a1, a2, a3, v6);
}

id static IntentToggleState.lnValueType.getter()
{
  v0 = [objc_opt_self() intentToggleStateValueType];

  return v0;
}

uint64_t sub_2752419DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275241CB0();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_275241A28(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v5 = [v2 initWithValue:sub_275244DC4() valueType:a2];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

unint64_t sub_275241AA4()
{
  result = qword_2809B5658;
  if (!qword_2809B5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5658);
  }

  return result;
}

unint64_t sub_275241AF8()
{
  result = qword_2809B5660;
  if (!qword_2809B5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5660);
  }

  return result;
}

unint64_t sub_275241B50()
{
  result = qword_2809B5668;
  if (!qword_2809B5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5668);
  }

  return result;
}

unint64_t sub_275241BAC()
{
  result = qword_2809B5670;
  if (!qword_2809B5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5670);
  }

  return result;
}

unint64_t sub_275241C00()
{
  result = qword_2809B5678;
  if (!qword_2809B5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5678);
  }

  return result;
}

unint64_t sub_275241C58()
{
  result = qword_2809B5680;
  if (!qword_2809B5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5680);
  }

  return result;
}

unint64_t sub_275241CB0()
{
  result = qword_2809B5688;
  if (!qword_2809B5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5688);
  }

  return result;
}

unint64_t sub_275241D04()
{
  result = qword_2809B5690;
  if (!qword_2809B5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809B5690);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_275241E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5880, MEMORY[0x277CB9F90]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentApplication.lnValueType.getter()
{
  v0 = [objc_opt_self() applicationValueType];

  return v0;
}

uint64_t sub_275241EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5880, MEMORY[0x277CB9F90]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275241FA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5878, MEMORY[0x277CBA090]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentCalendarEvent.lnValueType.getter()
{
  v0 = [objc_opt_self() calendarEventValueType];

  return v0;
}

uint64_t sub_275242080(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5878, MEMORY[0x277CBA090]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242128(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5870, MEMORY[0x277CBA1B8]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentCurrencyAmount.lnValueType.getter()
{
  v0 = [objc_opt_self() currencyAmountValueType];

  return v0;
}

uint64_t sub_275242204(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5870, MEMORY[0x277CBA1B8]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id IntentEnvironment.lnValue.getter()
{
  sub_275244C14();
  sub_275244BD4();
  v0 = [objc_opt_self() environmentValueType];
  v1 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_275241A28(v3, v0);
}

uint64_t sub_275242300(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5868, MEMORY[0x277CB9FA8]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentEnvironment.lnValueType.getter()
{
  v0 = [objc_opt_self() environmentValueType];

  return v0;
}

uint64_t sub_2752423DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5868, MEMORY[0x277CB9FA8]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242484(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5860, MEMORY[0x277CB9EB0]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentMediaItem.lnValueType.getter()
{
  v0 = [objc_opt_self() mediaItemValueType];

  return v0;
}

uint64_t sub_275242560(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5860, MEMORY[0x277CB9EB0]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242608(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5858, MEMORY[0x277CB9FC0]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentMediaSearch.lnValueType.getter()
{
  v0 = [objc_opt_self() mediaSearchValueType];

  return v0;
}

uint64_t sub_2752426E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5858, MEMORY[0x277CB9FC0]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_27524278C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5850, MEMORY[0x277CBA390]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentMessageConversation.lnValueType.getter()
{
  v0 = [objc_opt_self() messageConversationValueType];

  return v0;
}

uint64_t sub_275242868(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5850, MEMORY[0x277CBA390]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242910(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5848, MEMORY[0x277CB9C80]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentNote.lnValueType.getter()
{
  v0 = [objc_opt_self() noteValueType];

  return v0;
}

uint64_t sub_2752429EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5848, MEMORY[0x277CB9C80]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5840, MEMORY[0x277CBA050]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentNotification.lnValueType.getter()
{
  v0 = [objc_opt_self() notificationValueType];

  return v0;
}

uint64_t sub_275242B70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5840, MEMORY[0x277CBA050]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242C18(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5838, MEMORY[0x277CBA0A0]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentPaymentMethod.lnValueType.getter()
{
  v0 = [objc_opt_self() paymentMethodValueType];

  return v0;
}

uint64_t sub_275242CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5838, MEMORY[0x277CBA0A0]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5830, MEMORY[0x277CB9DB8]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentPerson.lnValueType.getter()
{
  v0 = [objc_opt_self() personValueType];

  return v0;
}

uint64_t sub_275242E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5830, MEMORY[0x277CB9DB8]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275242F20(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5828, MEMORY[0x277CBA460]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static _IntentPhotoItemCollection.lnValueType.getter()
{
  v0 = [objc_opt_self() photoItemCollectionValueType];

  return v0;
}

uint64_t sub_275242FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5828, MEMORY[0x277CBA460]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_2752430A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5820, MEMORY[0x277CBA060]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentReminderTask.lnValueType.getter()
{
  v0 = [objc_opt_self() taskValueType];

  return v0;
}

uint64_t sub_275243180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5820, MEMORY[0x277CBA060]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275243228(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5818, MEMORY[0x277CBA2D0]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

id static IntentReminderTaskList.lnValueType.getter()
{
  v0 = [objc_opt_self() taskListValueType];

  return v0;
}

uint64_t sub_275243304(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5818, MEMORY[0x277CBA2D0]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

id sub_2752433AC(void (*a1)(uint64_t *__return_ptr), uint64_t *a2, SEL *a3)
{
  a1(v9);
  v5 = *a2;
  v6 = [objc_opt_self() *a3];
  v7 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_275241A28(v9, v6);
}

uint64_t sub_275243424(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5810, MEMORY[0x277CB9CB8]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2752434BC@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  sub_275244D64();
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B56A0, &qword_275245448);
    v4 = a1(0);
    v5 = swift_dynamicCast() ^ 1;
    v6 = a2;
    v7 = v4;
  }

  else
  {
    sub_275243640(v9);
    v7 = a1(0);
    v6 = a2;
    v5 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v6, v5, 1, v7);
}

id static IntentTimer.lnValueType.getter()
{
  v0 = [objc_opt_self() timerValueType];

  return v0;
}

uint64_t sub_2752435C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2752443C0(&qword_2809B5810, MEMORY[0x277CB9CB8]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275243640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B5698, &qword_275245440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_2752443C0(unint64_t *a1, void (*a2)(uint64_t))
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

id StringSearchCriteria.lnValue.getter()
{
  sub_275244C24();
  v0 = [objc_opt_self() stringValueType];
  v1 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_275241A28(v3, v0);
}

uint64_t sub_2752444B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275244720(&qword_2809B58A0);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t static StringSearchCriteria.from(_:context:)@<X0>(uint64_t a1@<X8>)
{
  sub_275244D64();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B56A0, &qword_275245448);
    v2 = sub_275244C34();
    v3 = swift_dynamicCast() ^ 1;
    v4 = a1;
    v5 = v2;
  }

  else
  {
    sub_275243640(v7);
    v5 = sub_275244C34();
    v4 = a1;
    v3 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v3, 1, v5);
}

id static StringSearchCriteria.lnValueType.getter()
{
  v0 = [objc_opt_self() stringValueType];

  return v0;
}

uint64_t sub_27524461C(uint64_t a1, uint64_t a2)
{
  v4 = sub_275244720(&qword_2809B58A0);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275244720(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_275244C34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t PlaceDescriptor.lnValue.getter()
{
  v0 = sub_275244CE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275244C64();
  sub_275244B78(&qword_2809B58A8, MEMORY[0x277CE41B0]);
  v5 = sub_275244C54();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_275244878(uint64_t a1, uint64_t a2)
{
  v4 = sub_275244B78(&unk_2809B58D0, MEMORY[0x277CCB120]);

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t static PlaceDescriptor.from(_:context:)@<X0>(uint64_t a1@<X8>)
{
  sub_275244D74();
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B56A0, &qword_275245448);
    v2 = sub_275244C74();
    v3 = swift_dynamicCast() ^ 1;
    v4 = a1;
    v5 = v2;
  }

  else
  {
    sub_275243640(v7);
    v5 = sub_275244C74();
    v4 = a1;
    v3 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v4, v3, 1, v5);
}

unint64_t sub_2752449DC()
{
  result = qword_2809B58B0;
  if (!qword_2809B58B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809B58B0);
  }

  return result;
}

uint64_t sub_275244AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275244B78(&unk_2809B58D0, MEMORY[0x277CCB120]);

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_275244B78(unint64_t *a1, void (*a2)(uint64_t))
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