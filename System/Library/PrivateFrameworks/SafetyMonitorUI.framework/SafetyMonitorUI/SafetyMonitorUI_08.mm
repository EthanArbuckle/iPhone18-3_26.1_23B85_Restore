void sub_2646E1628()
{
  v1 = v0;
  v2 = v0[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_isInSettings];
  v3 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_sessionType];
  v4 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_onboardingCompletionHandler];
  v5 = *&v1[OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_onboardingCompletionHandler + 8];
  objc_allocWithZone(type metadata accessor for CheckInOnboardingViewController4());
  sub_264611394(v4);
  v8 = CheckInOnboardingViewController4.init(isInSettings:sessionType:onboardingCompletionHandler:)(v2, v3, v4, v5);
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    [v6 pushViewController:v8 animated:1];
  }
}

id CheckInOnboardingViewController3.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_264785714();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_264785714();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_264785714();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id CheckInOnboardingViewController3.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_264785714();

  if (a4)
  {
    v12 = sub_264785714();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id CheckInOnboardingViewController3.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646E1B40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2646E1B78()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC15SafetyMonitorUI32CheckInOnboardingViewController3_continueButton);
  if (result)
  {
    return [result setEnabled_];
  }

  __break(1u);
  return result;
}

void ResolvedMapItem.init(mapItem:destinationType:geofenceSize:)(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  switch(a2)
  {
    case 3:
      v10 = qword_27FF75098;
      v15 = a1;
      v11 = a1;
      if (v10 != -1)
      {
        swift_once();
      }

      v7 = &qword_27FF78CF0;
      break;
    case 2:
      v8 = qword_27FF75090;
      v15 = a1;
      v9 = a1;
      if (v8 != -1)
      {
        swift_once();
      }

      v7 = &qword_27FF78CE0;
      break;
    case 1:
      v5 = qword_27FF75088;
      v15 = a1;
      v6 = a1;
      if (v5 != -1)
      {
        swift_once();
      }

      v7 = &qword_27FF78CD0;
      break;
    default:
      return;
  }

  v12 = *v7;
  v13 = v7[1];
  v14 = sub_264785714();
  [v15 setName_];
}

Swift::Void __swiftcall ResolvedMapItem.modifyMapItemName()()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 3:
      if (qword_27FF75098 != -1)
      {
        swift_once();
      }

      v3 = &qword_27FF78CF0;
      break;
    case 2:
      if (qword_27FF75090 != -1)
      {
        swift_once();
      }

      v3 = &qword_27FF78CE0;
      break;
    case 1:
      if (qword_27FF75088 != -1)
      {
        swift_once();
      }

      v3 = &qword_27FF78CD0;
      break;
    default:
      return;
  }

  v4 = *v3;
  v5 = v3[1];
  v6 = sub_264785714();
  [v2 setName_];
}

uint64_t static ResolvedMapItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2646936F0();
  return sub_264785AE4() & (v3 == v5);
}

uint64_t ResolvedMapItem.hash(into:)()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_264785AF4();
  MEMORY[0x26673FC80](v1);
  return MEMORY[0x26673FC80](v2);
}

uint64_t ResolvedMapItem.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](v2);
  MEMORY[0x26673FC80](v3);
  return sub_264785F94();
}

uint64_t sub_2646E1FA4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](v2);
  MEMORY[0x26673FC80](v3);
  return sub_264785F94();
}

uint64_t sub_2646E2010()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v3 = *v0;
  sub_264785AF4();
  MEMORY[0x26673FC80](v1);
  return MEMORY[0x26673FC80](v2);
}

uint64_t sub_2646E205C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_264785F44();
  sub_264785AF4();
  MEMORY[0x26673FC80](v2);
  MEMORY[0x26673FC80](v3);
  return sub_264785F94();
}

uint64_t sub_2646E20C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_2646936F0();
  return sub_264785AE4() & (v3 == v5);
}

uint64_t MKMapItem.Error.hashValue.getter()
{
  sub_264785F44();
  MEMORY[0x26673FC80](0);
  return sub_264785F94();
}

uint64_t MKMapItem.estimatedETA(for:)(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_2646E21AC, 0, 0);
}

uint64_t sub_2646E21AC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B00, &qword_264790720);
  *v5 = v0;
  v5[1] = sub_2646E22B4;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000012, 0x8000000264798970, sub_2646E2830, v3, v6);
}

uint64_t sub_2646E22B4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2646E23EC;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_2646E23D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2646E23EC()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

void sub_2646E2450(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [a2 placemark];
  v12 = [v11 location];

  if (v12)
  {
    v13 = [objc_opt_self() defaultManager];
    [v12 coordinate];
    v15 = v14;
    [v12 coordinate];
    v17 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v15 longitude:v16];
    (*(v7 + 16))(v10, a1, v6);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = swift_allocObject();
    (*(v7 + 32))(v19 + v18, v10, v6);
    aBlock[4] = sub_2646E2A78;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2646E2784;
    aBlock[3] = &block_descriptor_11;
    v20 = _Block_copy(aBlock);

    [v13 estimateEtaToDestination:v17 transportType:a3 completionHandler:v20];
    _Block_release(v20);
  }

  else
  {
    sub_2646E2990();
    aBlock[0] = swift_allocError();
    sub_264785884();
  }
}

uint64_t sub_2646E2704(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
    return sub_264785884();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
    return sub_264785894();
  }
}

void sub_2646E2784(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v14 = a2;
  v13 = a4;
  v12(v14, a3, a4, a5, a6);
}

unint64_t sub_2646E283C()
{
  result = qword_27FF77B08;
  if (!qword_27FF77B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B08);
  }

  return result;
}

unint64_t sub_2646E2894()
{
  result = qword_27FF77B10;
  if (!qword_27FF77B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B10);
  }

  return result;
}

uint64_t sub_2646E28E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2646E2930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2646E2990()
{
  result = qword_27FF77B20;
  if (!qword_27FF77B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B20);
  }

  return result;
}

uint64_t sub_2646E29E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2646E2A78(int a1, int a2, void *a3)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B18, &qword_26478E988) - 8) + 80);

  return sub_2646E2704(a1, a2, a3);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t CheckInOnboardingNavigationView.init(onboardingCompletionHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

id CheckInOnboardingNavigationView.makeUIViewController(context:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = type metadata accessor for CheckInOnboardingFlowViewController();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_spinner;
  v7 = objc_allocWithZone(MEMORY[0x277D750E8]);

  *&v5[v6] = [v7 init];
  v5[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_displayingOnboarding] = 0;
  v8 = &v5[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_onboardingCompletionHandler];
  *v8 = sub_26461103C;
  v8[1] = v3;
  v5[OBJC_IVAR____TtC15SafetyMonitorUI35CheckInOnboardingFlowViewController_isInSettings] = 0;
  v10.receiver = v5;
  v10.super_class = v4;
  return objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
}

uint64_t sub_2646E2C34()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2646E2C74()
{
  result = qword_27FF77B28;
  if (!qword_27FF77B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B28);
  }

  return result;
}

uint64_t sub_2646E2CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646E2DCC();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2646E2D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646E2DCC();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2646E2D94()
{
  sub_2646E2DCC();
  sub_264784B74();
  __break(1u);
}

unint64_t sub_2646E2DCC()
{
  result = qword_27FF77B30;
  if (!qword_27FF77B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77B30);
  }

  return result;
}

uint64_t CheckInView.init(state:edgeInsets:buttonAction:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[3];
  v27 = a1[2];
  v16 = a1[4];
  v17 = a1[5];
  v18 = *(a1 + 50);
  v19 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B38, &qword_26478EAA0);
  sub_2647852E4();
  *a4 = v30;
  *(a4 + 8) = v31;
  *(a4 + 16) = v32;
  *(a4 + 146) = 0;
  v20 = type metadata accessor for CheckInView();
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  v21 = *(v20 + 60);
  *(a4 + v21) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B40, &qword_26478EAD8);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + 24) = v14;
  *(a4 + 32) = v13;
  *(a4 + 40) = v27;
  *(a4 + 48) = v15;
  *(a4 + 56) = v16;
  *(a4 + 64) = v17;
  *(a4 + 74) = v18;
  *(a4 + 72) = v19;
  v23 = (a4 + *(v20 + 64));
  *v23 = a5;
  v23[1] = a6;
  v23[2] = a7;
  v23[3] = a8;
  v24 = v18 >> 5;
  *(a4 + 152) = a2;
  *(a4 + 160) = a3;
  if (v24 <= 2)
  {
    if (v18 >> 5)
    {
      if (v24 == 1)
      {
        v26 = v19 & 0xFF00FFFF | (v18 << 16);
        *(a4 + 75) = v26 & 1;
        *(a4 + 80) = v14;
        *(a4 + 88) = v13;
        *(a4 + 96) = v27;
        *(a4 + 104) = v15;
        *(a4 + 128) = v16;
        *(a4 + 136) = v17;
        *(a4 + 144) = BYTE1(v26) & 1;
        *(a4 + 145) = BYTE2(v26) & 1;
        *(a4 + 146) = 0;
      }

      *(a4 + 75) = v16 & 1;
      *(a4 + 80) = v14;
      *(a4 + 88) = v13;
      *(a4 + 96) = v27;
      *(a4 + 104) = v15;
      *(a4 + 144) = BYTE1(v16) & 1;
      *(a4 + 145) = BYTE2(v16) & 1;
      v25 = BYTE3(v16) & 1;
LABEL_12:
      *(a4 + 146) = v25;
    }

    *(a4 + 75) = 0;
    *(a4 + 112) = v14;
    *(a4 + 120) = v13;
    *(a4 + 144) = 1;
LABEL_14:
    *(a4 + 146) = 0;
  }

  if ((v18 >> 5) <= 4u)
  {
    if (v24 == 3)
    {
      *(a4 + 75) = v16 & 1;
      *(a4 + 80) = v14;
      *(a4 + 88) = v13;
      *(a4 + 96) = v27;
      *(a4 + 104) = v15;
      *(a4 + 144) = 0;
      *(a4 + 145) = BYTE1(v16) & 1;
      v25 = WORD1(v16) & 1;
      goto LABEL_12;
    }

    *(a4 + 75) = v27 & 1;
    *(a4 + 80) = v14;
    *(a4 + 88) = v13;
    *(a4 + 144) = 0;
    *(a4 + 145) = BYTE1(v27) & 1;
    goto LABEL_14;
  }

  if (v24 == 5)
  {
    *(a4 + 75) = v14 & 1;
    *(a4 + 144) = 1;
  }

  else
  {
    *(a4 + 75) = 0;
    *(a4 + 144) = 1;
    *(a4 + 146) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CheckInView()
{
  result = qword_27FF77BE8;
  if (!qword_27FF77BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_2646E30E8()
{
  v1 = sub_264784574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B40, &qword_26478EAD8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v20 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C10, &qword_26478ECC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  v14 = type metadata accessor for CheckInView();
  sub_26460CCE8(v0 + *(v14 + 60), v9, &qword_27FF77B40, &qword_26478EAD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26460E7E4(v9, v13, &qword_27FF77C10, &qword_26478ECC8);
  }

  else
  {
    v15 = *v9;
    sub_2647859E4();
    v16 = sub_264784BE4();
    sub_264783DA4();

    sub_264784564();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
  }

  v17 = sub_2647854C4();
  v18 = (*(*(v17 - 8) + 48))(v13, 1, v17) != 1;
  sub_26460CD50(v13, &qword_27FF77C10, &qword_26478ECC8);
  return v18;
}

uint64_t sub_2646E3378()
{
  if (*(v0 + 75))
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);
    v5[4] = sub_264745BBC;
    v5[5] = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_26474DD7C;
    v5[3] = &block_descriptor_12;
    v2 = _Block_copy(v5);
    [v1 initWithDynamicProvider_];
    _Block_release(v2);

    sub_264785134();
    v3 = sub_2647851F4();
  }

  else
  {
    if (qword_27FF753C0 != -1)
    {
      swift_once();
    }

    v3 = qword_27FF79308;
  }

  return v3;
}

uint64_t CheckInView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v119 = sub_264784AA4();
  v118 = *(v119 - 8);
  v3 = *(v118 + 64);
  MEMORY[0x28223BE20](v119);
  v117 = &v98[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v109 = type metadata accessor for CheckInView();
  v112 = *(v109 - 8);
  v5 = *(v112 + 64);
  MEMORY[0x28223BE20](v109);
  v114 = v6;
  v115 = &v98[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B48, &qword_26478EAE0);
  v7 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105);
  *&v107 = &v98[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B50, &qword_26478EAE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v98[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B58, &qword_26478EAF0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v98[-v15];
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B60, &qword_26478EAF8);
  v17 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v102 = &v98[-v18];
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B68, &qword_26478EB00);
  v19 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v104 = &v98[-v20];
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B70, &qword_26478EB08);
  v21 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v106 = &v98[-v22];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B78, &qword_26478EB10);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v108 = &v98[-v25];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B80, &qword_26478EB18);
  v113 = *(v116 - 8);
  v26 = *(v113 + 64);
  MEMORY[0x28223BE20](v116);
  v111 = &v98[-v27];
  v28 = [objc_opt_self() mainScreen];
  [v28 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v132.origin.x = v30;
  v132.origin.y = v32;
  v132.size.width = v34;
  v132.size.height = v36;
  CGRectGetHeight(v132);
  *v12 = sub_264784714();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B88, &qword_26478EB20);
  sub_2646E4040(v2, &v12[*(v37 + 44)]);
  v99 = *(v2 + 144);
  v110 = v23;
  if (v99)
  {
    v38 = 188.0;
  }

  else if (((*(v2 + 74) << 16) & 0xE00000) == 0x200000)
  {
    v38 = 188.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = *(v2 + 8);
  v40 = *(v2 + 16);
  *&v125 = *v2;
  BYTE8(v125) = v39;
  *&v126 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B90, &qword_26478EB28);
  sub_2647852F4();
  v41 = v123;
  v42 = v124;
  sub_264785504();
  v43 = v41;
  if (v42)
  {
    v43 = v38;
  }

  if (v38 > v43)
  {
    sub_2647859E4();
    v44 = sub_264784BE4();
    sub_264783DA4();
  }

  sub_264784314();
  sub_26460E7E4(v12, v16, &qword_27FF77B50, &qword_26478EAE8);
  v45 = &v16[*(v13 + 36)];
  v46 = v130;
  v45[4] = v129;
  v45[5] = v46;
  v45[6] = v131;
  v47 = v126;
  *v45 = v125;
  v45[1] = v47;
  v48 = v128;
  v45[2] = v127;
  v45[3] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B98, &unk_26478EB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889C0;
  v50 = sub_264784C64();
  *(inited + 32) = v50;
  v51 = sub_264784C84();
  *(inited + 33) = v51;
  v52 = sub_264784C44();
  *(inited + 34) = v52;
  v53 = sub_264784C74();
  sub_264784C74();
  if (sub_264784C74() != v50)
  {
    v53 = sub_264784C74();
  }

  sub_264784C74();
  if (sub_264784C74() != v51)
  {
    v53 = sub_264784C74();
  }

  sub_264784C74();
  if (sub_264784C74() != v52)
  {
    v53 = sub_264784C74();
  }

  sub_264783F54();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v107;
  sub_26460CCE8(v16, v107, &qword_27FF77B58, &qword_26478EAF0);
  v63 = v62 + *(v105 + 36);
  *v63 = v53;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  v64 = sub_264784C54();
  sub_264783F54();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  sub_26460CD50(v16, &qword_27FF77B58, &qword_26478EAF0);
  v73 = v102;
  sub_26460E7E4(v62, v102, &qword_27FF77B48, &qword_26478EAE0);
  v74 = &v73[*(v100 + 36)];
  *v74 = v64;
  *(v74 + 1) = v66;
  *(v74 + 2) = v68;
  *(v74 + 3) = v70;
  *(v74 + 4) = v72;
  v74[40] = 0;
  v75 = (v2 + *(v109 + 64));
  v76 = v75[1];
  v109 = *v75;
  v107 = v76;
  v77 = sub_264784C34();
  v78 = v104;
  sub_26460E7E4(v73, v104, &qword_27FF77B60, &qword_26478EAF8);
  v79 = &v78[*(v101 + 36)];
  *v79 = v77;
  *(v79 + 24) = v107;
  *(v79 + 8) = v109;
  v79[40] = 0;
  LOBYTE(v62) = *(v2 + 75);
  v80 = sub_2646E3378();
  LOBYTE(v73) = sub_2646E30E8();
  v81 = v78;
  v82 = v106;
  sub_26460E7E4(v81, v106, &qword_27FF77B68, &qword_26478EB00);
  v83 = &v82[*(v103 + 36)];
  *v83 = v62;
  *(v83 + 1) = v80;
  v83[16] = v73;
  v84 = v115;
  sub_2646E7AB8(v2, v115);
  v85 = (*(v112 + 80) + 16) & ~*(v112 + 80);
  v86 = swift_allocObject();
  sub_2646E7BAC(v84, v86 + v85);
  v87 = v108;
  sub_26460E7E4(v82, v108, &qword_27FF77B70, &qword_26478EB08);
  v88 = v110;
  v89 = &v87[*(v110 + 36)];
  *v89 = sub_2646A495C;
  v89[1] = 0;
  v89[2] = sub_2646E7C10;
  v89[3] = v86;
  v90 = v117;
  sub_264784A94();
  v91 = sub_2646E7C80();
  v92 = v111;
  sub_264784FF4();
  (*(v118 + 8))(v90, v119);
  sub_26460CD50(v87, &qword_27FF77B78, &qword_26478EB10);
  if ((v99 & *(v2 + 145)) == 1)
  {
    if (qword_27FF751A8 != -1)
    {
      swift_once();
    }

    v93 = &qword_27FF78F08;
  }

  else
  {
    if (qword_27FF751B0 != -1)
    {
      swift_once();
    }

    v93 = &qword_27FF78F18;
  }

  v94 = *v93;
  v95 = v93[1];

  v123 = *&v94;
  v124 = v95;
  v121 = v88;
  v122 = v91;
  swift_getOpaqueTypeConformance2();
  sub_264613FC4();
  v96 = v116;
  sub_264784F74();

  return (*(v113 + 8))(v92, v96);
}

uint64_t sub_2646E4040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C50, &qword_26478EE08);
  v75 = *(v73 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v70 = &v70 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C58, &qword_26478EE10);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C60, &qword_26478EE18);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v70 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C68, &qword_26478EE20);
  v16 = *(*(v71 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v71);
  v76 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v70 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v70 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C70, &qword_26478EE28);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v74 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v72 = &v70 - v28;
  sub_2646E4614(&v70 - v28);
  v29 = objc_opt_self();
  v30 = [v29 mainScreen];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v78.origin.x = v32;
  v78.origin.y = v34;
  v78.size.width = v36;
  v78.size.height = v38;
  CGRectGetHeight(v78);
  *v15 = sub_264784714();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C78, &qword_26478EE30);
  sub_2646E5F84(a1, &v15[*(v39 + 44)]);
  v40 = sub_264784C54();
  v41 = *(a1 + 145);
  if (v41 == 1)
  {
    v42 = [v29 mainScreen];
    [v42 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    v79.origin.x = v44;
    v79.origin.y = v46;
    v79.size.width = v48;
    v79.size.height = v50;
    CGRectGetHeight(v79);
  }

  sub_264783F54();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_26460E7E4(v15, v21, &qword_27FF77C60, &qword_26478EE18);
  v59 = &v21[*(v71 + 36)];
  *v59 = v40;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  sub_26460E7E4(v21, v23, &qword_27FF77C68, &qword_26478EE20);
  if (v41)
  {
    v60 = v70;
    sub_2646E478C(v70);
    sub_26460E7E4(v60, v11, &qword_27FF77C50, &qword_26478EE08);
    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  (*(v75 + 56))(v11, v61, 1, v73);
  v62 = v72;
  v63 = v74;
  sub_26460CCE8(v72, v74, &qword_27FF77C70, &qword_26478EE28);
  v64 = v76;
  sub_26460CCE8(v23, v76, &qword_27FF77C68, &qword_26478EE20);
  sub_26460CCE8(v11, v9, &qword_27FF77C58, &qword_26478EE10);
  v65 = v11;
  v66 = v9;
  v67 = v77;
  sub_26460CCE8(v63, v77, &qword_27FF77C70, &qword_26478EE28);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C80, &qword_26478EE38);
  sub_26460CCE8(v64, v67 + *(v68 + 48), &qword_27FF77C68, &qword_26478EE20);
  sub_26460CCE8(v66, v67 + *(v68 + 64), &qword_27FF77C58, &qword_26478EE10);
  sub_26460CD50(v65, &qword_27FF77C58, &qword_26478EE10);
  sub_26460CD50(v23, &qword_27FF77C68, &qword_26478EE20);
  sub_26460CD50(v62, &qword_27FF77C70, &qword_26478EE28);
  sub_26460CD50(v66, &qword_27FF77C58, &qword_26478EE10);
  sub_26460CD50(v64, &qword_27FF77C68, &qword_26478EE20);
  return sub_26460CD50(v63, &qword_27FF77C70, &qword_26478EE28);
}

uint64_t sub_2646E4614@<X0>(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000015;
  v4 = [objc_opt_self() mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v18.origin.x = v6;
  v18.origin.y = v8;
  v18.size.width = v10;
  v18.size.height = v12;
  CGRectGetHeight(v18);
  if (((*(v1 + 74) << 16) & 0xE00000) == 0x600000)
  {
    v13 = sub_264785164();
    v14 = "viewType(for:withPayloadID:)";
    v3 = 0xD00000000000001BLL;
  }

  else
  {
    if (qword_27FF75398 != -1)
    {
      swift_once();
    }

    v13 = qword_27FF792E0;

    v14 = "stopInactivityTimer";
  }

  *a1 = sub_264784714();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DB0, &qword_26478EF60);
  sub_2646E4D0C(v1, v3, v14 | 0x8000000000000000, v13, a1 + *(v15 + 44));
}

uint64_t sub_2646E478C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = type metadata accessor for CheckInView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C88, &qword_26478EE40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C90, &qword_26478EE48);
  v11 = *(v10 - 8);
  v22 = v10;
  v23 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_2646E7AB8(v1, &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_2646E7BAC(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C98, &qword_26478EE50);
  sub_2646E8A04();
  sub_264785334();
  LOBYTE(v26) = *(v1 + 75);
  v17 = sub_26460CDF0(&qword_27FF77CF8, &qword_27FF77C88, &qword_26478EE40);
  v18 = sub_2646E8DAC();
  sub_264784ED4();
  (*(v6 + 8))(v9, v5);
  v26 = v5;
  v27 = &type metadata for CheckInButtonStyle;
  v28 = v17;
  v29 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_264785034();
  return (*(v23 + 8))(v14, v19);
}

void sub_2646E4AD4(double *a1, uint64_t *a2)
{
  v3 = *a1;
  sub_2646E4B58();
  if (v4 < v3)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    v7 = a2[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B90, &qword_26478EB28);
    sub_264785304();
  }
}

void sub_2646E4B58()
{
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 _referenceBounds];
  v3 = v2;
  v4 = v2;

  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = [v0 mainScreen];
  [v5 _referenceBounds];
  v7 = v6;
  v8 = v6;

  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v7 < 9.22337204e18)
  {
    v9 = [objc_opt_self() currentDevice];
    [v9 userInterfaceIdiom];

    v10 = [v0 mainScreen];
    [v10 _referenceBounds];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_2646E4D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v116[2] = a3;
  v117 = a4;
  v116[1] = a2;
  v138 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DB8, &qword_26478EF68);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v137 = v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v136 = v116 - v10;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DC0, &qword_26478EF70);
  v11 = *(*(v133 - 8) + 64);
  MEMORY[0x28223BE20](v133);
  v118 = v116 - v12;
  v13 = sub_264785284();
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  MEMORY[0x28223BE20](v13);
  v122 = v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DC8, &qword_26478EF78);
  v16 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v119 = v116 - v17;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DD0, &qword_26478EF80);
  v18 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130);
  v132 = v116 - v19;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DD8, &qword_26478EF88);
  v20 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126);
  v127 = v116 - v21;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DE0, &unk_26478EF90);
  v22 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v129 = v116 - v23;
  v24 = sub_264784A74();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF771E0, &qword_264792500);
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v116 - v32;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DE8, &qword_26478EFA0);
  v34 = *(*(v120 - 8) + 64);
  MEMORY[0x28223BE20](v120);
  v36 = v116 - v35;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DF0, &qword_26478EFA8);
  v37 = *(*(v125 - 8) + 64);
  MEMORY[0x28223BE20](v125);
  v121 = v116 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77DF8, &unk_26478EFB0);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v134 = v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v139 = v116 - v43;
  v44 = *(a1 + 74) >> 5;
  v135 = a1;
  if (v44 >= 6)
  {
    sub_264784014();
    sub_264784A64();
    sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500);
    sub_2646E99E4(&qword_27FF771F0, MEMORY[0x277CDE330]);
    sub_264784E84();
    (*(v25 + 8))(v28, v24);
    (*(v30 + 8))(v33, v29);
    v68 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E20, &unk_26478EFC0) + 36)];
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76C20, &qword_26478B740) + 28);
    v70 = *MEMORY[0x277CDF440];
    v71 = sub_264783F84();
    (*(*(v71 - 8) + 104))(v68 + v69, v70, v71);
    *v68 = swift_getKeyPath();
    LOBYTE(v70) = sub_264784C34();
    sub_264783F54();
    v72 = &v36[*(v120 + 36)];
    *v72 = v70;
    *(v72 + 1) = v73;
    *(v72 + 2) = v74;
    *(v72 + 3) = v75;
    *(v72 + 4) = v76;
    v72[40] = 0;
    if (*(a1 + 75))
    {
      v77 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }

      v77 = qword_27FF792F0;
    }

    KeyPath = swift_getKeyPath();
    *&v173 = v77;
    v88 = sub_2647840B4();
    v89 = v121;
    sub_26460E7E4(v36, v121, &qword_27FF77DE8, &qword_26478EFA0);
    v90 = (v89 + *(v125 + 36));
    *v90 = KeyPath;
    v90[1] = v88;
    sub_26460CCE8(v89, v127, &qword_27FF77DF0, &qword_26478EFA8);
    swift_storeEnumTagMultiPayload();
    sub_2646E9294();
    sub_2646E9550(&qword_27FF77E28, &qword_27FF77DC8, &qword_26478EF78, sub_2646E9604);
    v91 = v129;
    sub_264784874();
    sub_26460CCE8(v91, v132, &qword_27FF77DE0, &unk_26478EF90);
    swift_storeEnumTagMultiPayload();
    sub_2646E91DC();
    sub_2646E9550(&qword_27FF77E40, &qword_27FF77DC0, &qword_26478EF70, sub_264690D34);
    sub_264784874();
    sub_26460CD50(v91, &qword_27FF77DE0, &unk_26478EF90);
    sub_26460CD50(v89, &qword_27FF77DF0, &qword_26478EFA8);
  }

  else
  {
    if (v44 == 3)
    {

      sub_264785274();
      v46 = v122;
      v45 = v123;
      v47 = v124;
      (*(v123 + 104))(v122, *MEMORY[0x277CE0FE0], v124);
      v121 = sub_2647852C4();

      (*(v45 + 8))(v46, v47);
      sub_264785504();
      sub_2647840A4();
      v123 = v193;
      v124 = v191;
      v122 = v195;
      v120 = v196;
      v154 = v192;
      v153 = v194;
      v48 = v117;

      v49 = sub_264785194();
      sub_264785504();
      sub_2647840A4();
      v50 = v197;
      v51 = v198;
      v52 = v199;
      LOBYTE(v47) = v200;
      v53 = v201;
      v54 = v202;
      v55 = sub_264785504();
      LOBYTE(v140) = v51;
      v152 = v47;
      *&v155 = v49;
      *(&v155 + 1) = v50;
      LOBYTE(v156) = v51;
      *(&v156 + 1) = v52;
      v56 = v47;
      LOBYTE(v157) = v47;
      *(&v157 + 1) = v53;
      *&v158 = v54;
      *(&v158 + 1) = v55;
      v159 = v57;
      LOBYTE(v47) = v154;
      v58 = v153;
      v172 = v57;
      v170 = v157;
      v171 = v158;
      v168 = v155;
      v169 = v156;
      v160[0] = v49;
      v160[1] = v50;
      v161 = v51;
      v162 = v52;
      v163 = v56;
      v164 = v53;
      v165 = v54;
      v166 = v55;
      v167 = v57;
      sub_26460CCE8(&v155, &v173, &qword_27FF76CF0, &qword_26478B940);
      sub_26460CD50(v160, &qword_27FF76CF0, &qword_26478B940);
      LOBYTE(v49) = sub_264784C34();
      sub_264783F54();
      v152 = 0;
      *&v140 = v121;
      *(&v140 + 1) = v124;
      LOBYTE(v141) = v47;
      *(&v141 + 1) = v123;
      LOBYTE(v142) = v58;
      *(&v142 + 1) = v122;
      *&v143 = v120;
      *(&v143 + 1) = v48;
      v146 = v170;
      v147 = v171;
      *&v148 = v172;
      v144 = v168;
      v145 = v169;
      BYTE8(v148) = v49;
      *&v149 = v59;
      *(&v149 + 1) = v60;
      *&v150 = v61;
      *(&v150 + 1) = v62;
      v151 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E38, &unk_26478EFD8);
      sub_2646E9604();
      v63 = v119;
      sub_264785034();
      v180 = v148;
      v181 = v149;
      v182 = v150;
      v183 = v151;
      v176 = v144;
      v177 = v145;
      v178 = v146;
      v179 = v147;
      v173 = v140;
      v174 = v141;
      v175[0] = v142;
      v175[1] = v143;
      sub_26460CD50(&v173, &qword_27FF77E38, &unk_26478EFD8);
      v64 = &qword_27FF77DC8;
      v65 = &qword_26478EF78;
      sub_26460CCE8(v63, v127, &qword_27FF77DC8, &qword_26478EF78);
      swift_storeEnumTagMultiPayload();
      sub_2646E9294();
      sub_2646E9550(&qword_27FF77E28, &qword_27FF77DC8, &qword_26478EF78, sub_2646E9604);
      v66 = v129;
      sub_264784874();
      sub_26460CCE8(v66, v132, &qword_27FF77DE0, &unk_26478EF90);
      swift_storeEnumTagMultiPayload();
      sub_2646E91DC();
      sub_2646E9550(&qword_27FF77E40, &qword_27FF77DC0, &qword_26478EF70, sub_264690D34);
      sub_264784874();
      sub_26460CD50(v66, &qword_27FF77DE0, &unk_26478EF90);
      v67 = v63;
    }

    else
    {
      type metadata accessor for ImageProvider();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v79 = [objc_opt_self() bundleForClass_];
      v80 = sub_264785714();
      v81 = [objc_opt_self() imageNamed:v80 inBundle:v79 withConfiguration:0];

      if (!v81)
      {
        [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      }

      sub_264785254();
      v83 = v122;
      v82 = v123;
      v84 = v124;
      (*(v123 + 104))(v122, *MEMORY[0x277CE0FE0], v124);
      v85 = sub_2647852C4();

      (*(v82 + 8))(v83, v84);
      sub_264785504();
      sub_2647840A4();
      *&v173 = v85;
      *(&v173 + 1) = v168;
      LOBYTE(v174) = BYTE8(v168);
      *(&v174 + 1) = v169;
      LOBYTE(v175[0]) = BYTE8(v169);
      *(v175 + 8) = v170;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76D60, &unk_26478B980);
      sub_264690D34();
      v86 = v118;
      sub_264785034();

      v64 = &qword_27FF77DC0;
      v65 = &qword_26478EF70;
      sub_26460CCE8(v86, v132, &qword_27FF77DC0, &qword_26478EF70);
      swift_storeEnumTagMultiPayload();
      sub_2646E91DC();
      sub_2646E9550(&qword_27FF77E40, &qword_27FF77DC0, &qword_26478EF70, sub_264690D34);
      sub_264784874();
      v67 = v86;
    }

    sub_26460CD50(v67, v64, v65);
  }

  if (qword_27FF75260 != -1)
  {
    swift_once();
  }

  v173 = xmmword_27FF79078;
  sub_264613FC4();

  v92 = sub_264784E44();
  v94 = v93;
  v96 = v95;
  sub_264784CB4();
  v97 = sub_264784E24();
  v99 = v98;
  v101 = v100;

  sub_264784D14();
  v102 = sub_264784DD4();
  v132 = v103;
  v133 = v102;
  v105 = v104;
  v131 = v106;
  sub_26460ECC4(v97, v99, v101 & 1);

  sub_26460ECC4(v92, v94, v96 & 1);

  sub_264785504();
  sub_264784314();
  v107 = v105 & 1;
  LOBYTE(v160[0]) = v107;
  if (*(v135 + 75))
  {
    v108 = sub_264785204();
  }

  else
  {
    if (qword_27FF753A8 != -1)
    {
      swift_once();
    }
  }

  *&v140 = v133;
  *(&v140 + 1) = v132;
  LOBYTE(v141) = v107;
  *(&v141 + 1) = v131;
  v146 = v188;
  v147 = v189;
  v148 = v190;
  v142 = v184;
  v143 = v185;
  v144 = v186;
  v145 = v187;
  *&v149 = v108;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E48, &unk_26478EFE8);
  sub_2646E9690();
  v109 = v136;
  sub_264785034();
  v178 = v146;
  v179 = v147;
  v180 = v148;
  *&v181 = v149;
  v175[0] = v142;
  v175[1] = v143;
  v176 = v144;
  v177 = v145;
  v173 = v140;
  v174 = v141;
  sub_26460CD50(&v173, &qword_27FF77E48, &unk_26478EFE8);
  v110 = v139;
  v111 = v134;
  sub_26460CCE8(v139, v134, &qword_27FF77DF8, &unk_26478EFB0);
  v112 = v137;
  sub_26460CCE8(v109, v137, &qword_27FF77DB8, &qword_26478EF68);
  v113 = v138;
  sub_26460CCE8(v111, v138, &qword_27FF77DF8, &unk_26478EFB0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77E58, &qword_26478EFF8);
  sub_26460CCE8(v112, v113 + *(v114 + 48), &qword_27FF77DB8, &qword_26478EF68);
  sub_26460CD50(v109, &qword_27FF77DB8, &qword_26478EF68);
  sub_26460CD50(v110, &qword_27FF77DF8, &unk_26478EFB0);
  sub_26460CD50(v112, &qword_27FF77DB8, &qword_26478EF68);
  return sub_26460CD50(v111, &qword_27FF77DF8, &unk_26478EFB0);
}

uint64_t sub_2646E5F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D18, &qword_26478EEC8);
  v115 = *(v3 - 8);
  v116 = v3;
  v4 = *(v115 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v108 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v107 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D20, &qword_26478EED0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v111 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v110 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v100 - v15;
  MEMORY[0x28223BE20](v14);
  v117 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D28, &qword_26478EED8);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v100 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D30, &qword_26478EEE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v109 = &v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = *(a1 + 120);
  v113 = a1;
  v114 = v16;
  v118 = &v100 - v28;
  if (v27)
  {
    v104 = v22;
    v105 = v19;
    v106 = v18;
    *&v125 = *(a1 + 112);
    *(&v125 + 1) = v27;
    sub_264613FC4();

    v29 = sub_264784E44();
    v31 = v30;
    v33 = v32;
    sub_264784CB4();
    v34 = sub_264784E24();
    v36 = v35;
    v38 = v37;

    sub_264784D04();
    v39 = sub_264784DD4();
    v102 = v40;
    v103 = v39;
    v42 = v41;
    v101 = v43;
    sub_26460ECC4(v34, v36, v38 & 1);

    v44 = v31;
    a1 = v113;
    sub_26460ECC4(v29, v44, v33 & 1);

    KeyPath = swift_getKeyPath();
    LOBYTE(v152) = v42 & 1;
    sub_264785504();
    sub_264784314();
    *(&v119[3] + 5) = v141;
    *(&v119[4] + 5) = v142;
    *(&v119[5] + 5) = v143;
    *(&v119[6] + 5) = v144;
    *(v119 + 5) = v138;
    *(&v119[1] + 5) = v139;
    *(&v119[2] + 5) = v140;
    if (*(a1 + 75))
    {
      v46 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }
    }

    v16 = v114;
    v49 = v104;
    v48 = v105;
    *(&v123[4] + 11) = v119[4];
    *(&v123[5] + 11) = v119[5];
    *(&v123[6] + 11) = v119[6];
    *(v123 + 11) = v119[0];
    *(&v123[1] + 11) = v119[1];
    *(&v123[2] + 11) = v119[2];
    *&v121 = v103;
    *(&v121 + 1) = v102;
    LOBYTE(v122) = v42 & 1;
    *(&v122 + 1) = v101;
    *&v123[0] = KeyPath;
    WORD4(v123[0]) = 1;
    BYTE10(v123[0]) = 1;
    *(&v123[3] + 11) = v119[3];
    *(&v123[7] + 1) = *(&v119[6] + 13);
    v124 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D80, &qword_26478EF48);
    sub_2646E900C();
    sub_264785034();
    v133 = v123[6];
    v134 = v123[7];
    v135 = v124;
    v129 = v123[2];
    v130 = v123[3];
    v131 = v123[4];
    v132 = v123[5];
    v125 = v121;
    v126 = v122;
    v127 = v123[0];
    v128 = v123[1];
    sub_26460CD50(&v125, &qword_27FF77D80, &qword_26478EF48);
    sub_26460E7E4(v49, v118, &qword_27FF77D28, &qword_26478EED8);
    v47 = *(v48 + 56);
  }

  else
  {
    v47 = *(v19 + 56);
  }

  v47();
  v50 = *(a1 + 88);
  if (v50)
  {
    *&v125 = *(a1 + 80);
    *(&v125 + 1) = v50;
    sub_264613FC4();

    v51 = sub_264784E44();
    v53 = v52;
    v55 = v54;
    sub_264784CB4();
    v56 = sub_264784E24();
    v58 = v57;
    v60 = v59;

    sub_264784D04();
    v104 = sub_264784DD4();
    v105 = v61;
    v106 = v62;
    v64 = v63;
    sub_26460ECC4(v56, v58, v60 & 1);

    v65 = v53;
    a1 = v113;
    sub_26460ECC4(v51, v65, v55 & 1);

    v66 = swift_getKeyPath();
    sub_264785504();
    sub_264784314();
    *&v120[55] = v148;
    *&v120[71] = v149;
    *&v120[87] = v150;
    *&v120[103] = v151;
    *&v120[7] = v145;
    *&v120[23] = v146;
    v67 = v64 & 1;
    LOBYTE(v152) = v67;
    *&v120[39] = v147;
    if (*(a1 + 75))
    {
      v68 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }
    }

    v16 = v114;
    *(&v123[4] + 9) = *&v120[64];
    *(&v123[5] + 9) = *&v120[80];
    *(&v123[6] + 9) = *&v120[96];
    *(v123 + 9) = *v120;
    *(&v123[1] + 9) = *&v120[16];
    *(&v123[2] + 9) = *&v120[32];
    *&v121 = v104;
    *(&v121 + 1) = v106;
    LOBYTE(v122) = v67;
    *(&v122 + 1) = v105;
    *&v123[0] = v66;
    BYTE8(v123[0]) = 1;
    *(&v123[3] + 9) = *&v120[48];
    *(&v123[7] + 1) = *&v120[111];
    v124 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D40, &qword_26478EF20);
    sub_2646E8E10();
    v70 = v107;
    sub_264785034();
    v133 = v123[6];
    v134 = v123[7];
    v135 = v124;
    v129 = v123[2];
    v130 = v123[3];
    v131 = v123[4];
    v132 = v123[5];
    v125 = v121;
    v126 = v122;
    v127 = v123[0];
    v128 = v123[1];
    sub_26460CD50(&v125, &qword_27FF77D40, &qword_26478EF20);
    v71 = v117;
    sub_26460E7E4(v70, v117, &qword_27FF77D18, &qword_26478EEC8);
    v69 = *(v115 + 56);
    v69(v71, 0, 1, v116);
  }

  else
  {
    v69 = *(v115 + 56);
    v69(v117, 1, 1, v116);
  }

  v72 = *(a1 + 104);
  if (v72)
  {
    v104 = v69;
    *&v125 = *(a1 + 96);
    *(&v125 + 1) = v72;
    sub_264613FC4();

    v73 = sub_264784E44();
    v75 = v74;
    v77 = v76;
    sub_264784CB4();
    v78 = sub_264784E24();
    v80 = v79;
    v82 = v81;

    sub_264784D04();
    v105 = sub_264784DD4();
    v106 = v83;
    v107 = v84;
    v86 = v85;
    sub_26460ECC4(v78, v80, v82 & 1);

    sub_26460ECC4(v73, v75, v77 & 1);

    v87 = swift_getKeyPath();
    sub_264785504();
    sub_264784314();
    *&v136[55] = v155;
    *&v136[71] = v156;
    *&v136[87] = v157;
    *&v136[103] = v158;
    *&v136[7] = v152;
    *&v136[23] = v153;
    v88 = v86 & 1;
    v137 = v88;
    *&v136[39] = v154;
    if (*(v113 + 75))
    {
      v89 = sub_264785204();
    }

    else
    {
      if (qword_27FF753A8 != -1)
      {
        swift_once();
      }
    }

    v91 = v114;
    *(&v123[4] + 9) = *&v136[64];
    *(&v123[5] + 9) = *&v136[80];
    *(&v123[6] + 9) = *&v136[96];
    *(v123 + 9) = *v136;
    *(&v123[1] + 9) = *&v136[16];
    *(&v123[2] + 9) = *&v136[32];
    *&v121 = v105;
    *(&v121 + 1) = v107;
    LOBYTE(v122) = v88;
    *(&v122 + 1) = v106;
    *&v123[0] = v87;
    BYTE8(v123[0]) = 1;
    *(&v123[3] + 9) = *&v136[48];
    *(&v123[7] + 1) = *&v136[111];
    v124 = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D40, &qword_26478EF20);
    sub_2646E8E10();
    v92 = v108;
    sub_264785034();
    v133 = v123[6];
    v134 = v123[7];
    v135 = v124;
    v129 = v123[2];
    v130 = v123[3];
    v131 = v123[4];
    v132 = v123[5];
    v125 = v121;
    v126 = v122;
    v127 = v123[0];
    v128 = v123[1];
    sub_26460CD50(&v125, &qword_27FF77D40, &qword_26478EF20);
    sub_26460E7E4(v92, v91, &qword_27FF77D18, &qword_26478EEC8);
    v104(v91, 0, 1, v116);
    v90 = v91;
  }

  else
  {
    v69(v16, 1, 1, v116);
    v90 = v16;
  }

  v93 = v109;
  sub_26460CCE8(v118, v109, &qword_27FF77D30, &qword_26478EEE0);
  v94 = v117;
  v95 = v110;
  sub_26460CCE8(v117, v110, &qword_27FF77D20, &qword_26478EED0);
  v96 = v111;
  sub_26460CCE8(v90, v111, &qword_27FF77D20, &qword_26478EED0);
  v97 = v112;
  sub_26460CCE8(v93, v112, &qword_27FF77D30, &qword_26478EEE0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D38, &qword_26478EEE8);
  sub_26460CCE8(v95, v97 + *(v98 + 48), &qword_27FF77D20, &qword_26478EED0);
  sub_26460CCE8(v96, v97 + *(v98 + 64), &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v90, &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v94, &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v118, &qword_27FF77D30, &qword_26478EEE0);
  sub_26460CD50(v96, &qword_27FF77D20, &qword_26478EED0);
  sub_26460CD50(v95, &qword_27FF77D20, &qword_26478EED0);
  return sub_26460CD50(v93, &qword_27FF77D30, &qword_26478EEE0);
}

uint64_t sub_2646E6D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D08, &qword_26478EE88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CB0, &qword_26478EE58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  LODWORD(v9) = *(a1 + 144);
  v47 = v10;
  if (v9 == 1)
  {
    if (qword_27FF75198 != -1)
    {
      swift_once();
    }

    v11 = &qword_27FF78EE8;
  }

  else
  {
    if (qword_27FF751A0 != -1)
    {
      swift_once();
    }

    v11 = &qword_27FF78EF8;
  }

  v12 = *v11;
  v13 = v11[1];

  if (*(a1 + 146) == 1)
  {
    sub_264785274();
    v41 = sub_264784E54();
    v42 = v14;
    v16 = v15;
    v18 = v17;
    v48 = v12;
    v49 = v13;
    sub_264613FC4();
    v19 = sub_264784E44();
    v21 = v20;
    v43 = v3;
    v23 = v22;
    v24 = sub_264784E04();
    v44 = v7;
    v45 = v6;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_26460ECC4(v19, v21, v23 & 1);

    sub_26460ECC4(v41, v16, v18 & 1);

    v31 = v47;
    sub_2646E70D8(v24, v26, v28 & 1, v30, v47);
    v32 = v26;
    v6 = v45;
    sub_26460ECC4(v24, v32, v28 & 1);
  }

  else
  {
    v48 = v12;
    v49 = v13;
    sub_264613FC4();
    v33 = sub_264784E44();
    v35 = v34;
    v37 = v36;
    v31 = v47;
    sub_2646E70D8(v33, v34, v36 & 1, v38, v47);
    sub_26460ECC4(v33, v35, v37 & 1);
  }

  sub_26460CCE8(v31, v6, &qword_27FF77CB0, &qword_26478EE58);
  swift_storeEnumTagMultiPayload();
  sub_2646E8A88();
  sub_264784874();
  return sub_26460CD50(v31, &qword_27FF77CB0, &qword_26478EE58);
}

uint64_t sub_2646E70D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77D10, &qword_26478EE90);
  v60 = *(v61 - 8);
  v9 = *(v60 + 64);
  MEMORY[0x28223BE20](v61);
  v58 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CE0, &qword_26478EE70);
  v12 = *(v11 - 8);
  v59 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v57 = &v57 - v14;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CD0, &qword_26478EE68);
  v15 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v62);
  v64 = &v57 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CC0, &qword_26478EE60);
  v17 = *(*(v63 - 8) + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v57 - v18;
  v19 = sub_264784CB4();
  KeyPath = swift_getKeyPath();
  *&v67 = a1;
  *(&v67 + 1) = a2;
  LOBYTE(v68) = a3 & 1;
  *(&v68 + 1) = a4;
  *&v69 = KeyPath;
  *(&v69 + 1) = v19;
  sub_26460C474(a1, a2, a3 & 1);

  sub_264784CF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CE8, &unk_26478EE78);
  sub_2646E8CF4();
  v21 = v58;
  sub_264784EA4();
  v22 = v57;
  sub_26460ECC4(a1, a2, a3 & 1);

  sub_264785504();
  sub_264784314();
  (*(v60 + 32))(v22, v21, v61);
  v23 = (v22 + *(v59 + 44));
  v24 = v72;
  v23[4] = v71;
  v23[5] = v24;
  v23[6] = v73;
  v25 = v68;
  *v23 = v67;
  v23[1] = v25;
  v26 = v70;
  v23[2] = v69;
  v23[3] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B98, &unk_26478EB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2647889B0;
  LOBYTE(v21) = sub_264784C64();
  *(inited + 32) = v21;
  v28 = sub_264784C84();
  *(inited + 33) = v28;
  v29 = sub_264784C74();
  sub_264784C74();
  if (sub_264784C74() != v21)
  {
    v29 = sub_264784C74();
  }

  sub_264784C74();
  if (sub_264784C74() != v28)
  {
    v29 = sub_264784C74();
  }

  v30 = v64;
  sub_26460E7E4(v22, v64, &qword_27FF77CE0, &qword_26478EE70);
  v31 = v30 + *(v62 + 36);
  *v31 = v29;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  *(v31 + 40) = 1;
  v32 = sub_264784C44();
  sub_264783F54();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v30;
  v42 = v65;
  sub_26460E7E4(v41, v65, &qword_27FF77CD0, &qword_26478EE68);
  v43 = v42 + *(v63 + 36);
  *v43 = v32;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  v44 = sub_264784C54();
  sub_264783F54();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v42;
  v54 = v66;
  sub_26460E7E4(v53, v66, &qword_27FF77CC0, &qword_26478EE60);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77CB0, &qword_26478EE58);
  v56 = v54 + *(result + 36);
  *v56 = v44;
  *(v56 + 8) = v46;
  *(v56 + 16) = v48;
  *(v56 + 24) = v50;
  *(v56 + 32) = v52;
  *(v56 + 40) = 0;
  return result;
}

uint64_t sub_2646E7628@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_264784A04();
  v1 = *(v24 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v24);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C38, &qword_26478EDF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  sub_264784A14();
  if (qword_27FF75398 != -1)
  {
    swift_once();
  }

  sub_264784A24();
  v9 = sub_2647851F4();
  v10 = &v8[*(v5 + 36)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C40, &qword_26478EDF8);
  v12 = v10 + *(v11 + 52);
  v13 = *(sub_2647842B4() + 20);
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_264784674();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  __asm { FMOV            V0.2D, #20.0 }

  *v12 = _Q0;
  *v10 = v9;
  *(v10 + *(v11 + 56)) = 256;
  (*(v1 + 32))(v8, v4, v24);
  if (qword_27FF753B0 != -1)
  {
    swift_once();
  }

  sub_264784A24();
  v21 = sub_2647851F4();
  v22 = v25;
  sub_26460E7E4(v8, v25, &qword_27FF77C38, &qword_26478EDF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C48, &qword_26478EE00);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t sub_2646E790C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  v6 = sub_264784C34();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C28, &qword_26478EDE0);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C30, &qword_26478EDE8) + 36);
  *v8 = v5;
  *(v8 + 8) = v6;
}

uint64_t sub_2646E7A0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77C10, &qword_26478ECC8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26460CCE8(a1, &v6 - v4, &qword_27FF77C10, &qword_26478ECC8);
  return sub_264784454();
}

uint64_t sub_2646E7AB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckInView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646E7B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  result = a2;
  v8 = (a7 >> 21) & 7;
  if (v8 > 1)
  {
    if (v8 - 2 >= 2)
    {
      if (v8 != 4)
      {
        return result;
      }

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v8)
  {

LABEL_6:
  }

LABEL_8:
}

uint64_t sub_2646E7BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CheckInView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2646E7C10(double *a1)
{
  v3 = *(type metadata accessor for CheckInView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_2646E4AD4(a1, v4);
}

unint64_t sub_2646E7C80()
{
  result = qword_27FF77BA0;
  if (!qword_27FF77BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B78, &qword_26478EB10);
    sub_2646E7D38();
    sub_26460CDF0(&qword_27FF77268, &qword_27FF77270, &qword_26478C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BA0);
  }

  return result;
}

unint64_t sub_2646E7D38()
{
  result = qword_27FF77BA8;
  if (!qword_27FF77BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B70, &qword_26478EB08);
    sub_2646E7DC4();
    sub_2646E8020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BA8);
  }

  return result;
}

unint64_t sub_2646E7DC4()
{
  result = qword_27FF77BB0;
  if (!qword_27FF77BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B68, &qword_26478EB00);
    sub_2646E7E50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BB0);
  }

  return result;
}

unint64_t sub_2646E7E50()
{
  result = qword_27FF77BB8;
  if (!qword_27FF77BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B60, &qword_26478EAF8);
    sub_2646E7EDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BB8);
  }

  return result;
}

unint64_t sub_2646E7EDC()
{
  result = qword_27FF77BC0;
  if (!qword_27FF77BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B48, &qword_26478EAE0);
    sub_2646E7F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BC0);
  }

  return result;
}

unint64_t sub_2646E7F68()
{
  result = qword_27FF77BC8;
  if (!qword_27FF77BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B58, &qword_26478EAF0);
    sub_26460CDF0(&qword_27FF77BD0, &qword_27FF77B50, &qword_26478EAE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BC8);
  }

  return result;
}

unint64_t sub_2646E8020()
{
  result = qword_27FF77BD8;
  if (!qword_27FF77BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77BD8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SafetyMonitorUI16CheckInViewStateO(uint64_t a1)
{
  v1 = *(a1 + 50);
  if ((v1 >> 6) <= 2u)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2646E80CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFF9 && *(a1 + 51))
  {
    return (*a1 + 2097146);
  }

  if ((((*(a1 + 50) << 16) & 0x1E0000 | (8 * ((*(a1 + 48) >> 2) & 0x3F80 | (*(a1 + 48) >> 1))) | (*(a1 + 50) >> 5)) ^ 0x1FFFFFu) >= 0x1FFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 50) << 16) & 0x1E0000 | (8 * ((*(a1 + 48) >> 2) & 0x3F80 | (*(a1 + 48) >> 1))) | (*(a1 + 50) >> 5)) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_2646E813C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 2097146;
    if (a3 > 0x1FFFF9)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFF9)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 50) = (v3 >> 13) & 0xFE;
      *(result + 48) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

uint64_t sub_2646E81D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = a1 + 48;
  *(result + 2) = ((v2 | (*(result + 2) << 16)) >> 16) & 0x1F;
  *result = v2;
  return result;
}

uint64_t sub_2646E81EC(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 48);
    result += 48;
    v3 = (v2 | (*(result + 2) << 16)) & 0x1010101 | (a2 << 21);
    *result = v2 & 0x101;
    *(result + 2) = BYTE2(v3);
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 50) = -64;
    *(result + 48) = 0;
  }

  return result;
}

uint64_t sub_2646E8260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 152);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77BE0, &qword_26478ECB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2646E8330(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 152) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77BE0, &qword_26478ECB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646E83E0()
{
  sub_2646E8588(319, &qword_27FF77BF8, &qword_27FF77B38, &qword_26478EAA0, MEMORY[0x277CE10B8]);
  if (v0 <= 0x3F)
  {
    sub_2646E8538();
    if (v1 <= 0x3F)
    {
      sub_264613E28();
      if (v2 <= 0x3F)
      {
        sub_2646E8588(319, &qword_27FF77C08, &qword_27FF77C10, &qword_26478ECC8, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIEdgeInsets(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2646E8538()
{
  if (!qword_27FF77C00)
  {
    v0 = sub_264785B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF77C00);
    }
  }
}

void sub_2646E8588(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

unint64_t sub_2646E85F0()
{
  result = qword_27FF77C18;
  if (!qword_27FF77C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C20, &qword_26478ECD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77B78, &qword_26478EB10);
    sub_2646E7C80();
    swift_getOpaqueTypeConformance2();
    sub_2646E99E4(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77C18);
  }

  return result;
}

uint64_t sub_2646E86E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_2646E8730(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for CheckInView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 16);

  sub_2646E7B20(*(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), *(v5 + 72) | (*(v5 + 74) << 16));
  v7 = *(v0 + v3 + 88);

  v8 = *(v0 + v3 + 104);

  v9 = *(v0 + v3 + 120);

  v10 = *(v0 + v3 + 136);

  v11 = *(v0 + v3 + 160);

  v12 = v1[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77B40, &qword_26478EAD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_2647854C4();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

  else
  {
    v15 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2646E8998()
{
  v1 = *(type metadata accessor for CheckInView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 160);
  return (*(v2 + 152))();
}

unint64_t sub_2646E8A04()
{
  result = qword_27FF77CA0;
  if (!qword_27FF77CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C98, &qword_26478EE50);
    sub_2646E8A88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CA0);
  }

  return result;
}

unint64_t sub_2646E8A88()
{
  result = qword_27FF77CA8;
  if (!qword_27FF77CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CB0, &qword_26478EE58);
    sub_2646E8B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CA8);
  }

  return result;
}

unint64_t sub_2646E8B14()
{
  result = qword_27FF77CB8;
  if (!qword_27FF77CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CC0, &qword_26478EE60);
    sub_2646E8BA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CB8);
  }

  return result;
}

unint64_t sub_2646E8BA0()
{
  result = qword_27FF77CC8;
  if (!qword_27FF77CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CD0, &qword_26478EE68);
    sub_2646E8C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CC8);
  }

  return result;
}

unint64_t sub_2646E8C2C()
{
  result = qword_27FF77CD8;
  if (!qword_27FF77CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CE0, &qword_26478EE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CE8, &unk_26478EE78);
    sub_2646E8CF4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CD8);
  }

  return result;
}

unint64_t sub_2646E8CF4()
{
  result = qword_27FF77CF0;
  if (!qword_27FF77CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77CE8, &unk_26478EE78);
    sub_26460CDF0(&qword_27FF765C0, &qword_27FF765C8, &qword_26478A6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77CF0);
  }

  return result;
}

unint64_t sub_2646E8DAC()
{
  result = qword_27FF77D00;
  if (!qword_27FF77D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D00);
  }

  return result;
}

unint64_t sub_2646E8E10()
{
  result = qword_27FF77D48;
  if (!qword_27FF77D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D40, &qword_26478EF20);
    sub_2646E8EC8();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D48);
  }

  return result;
}

unint64_t sub_2646E8EC8()
{
  result = qword_27FF77D50;
  if (!qword_27FF77D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D58, &qword_26478EF28);
    sub_2646E8F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D50);
  }

  return result;
}

unint64_t sub_2646E8F54()
{
  result = qword_27FF77D60;
  if (!qword_27FF77D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D68, &unk_26478EF30);
    sub_26460CDF0(&qword_27FF77D70, &qword_27FF77D78, &unk_264792F00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D60);
  }

  return result;
}

unint64_t sub_2646E900C()
{
  result = qword_27FF77D88;
  if (!qword_27FF77D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D80, &qword_26478EF48);
    sub_2646E90C4();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D88);
  }

  return result;
}

unint64_t sub_2646E90C4()
{
  result = qword_27FF77D90;
  if (!qword_27FF77D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77D98, &qword_26478EF50);
    sub_2646E9150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77D90);
  }

  return result;
}

unint64_t sub_2646E9150()
{
  result = qword_27FF77DA0;
  if (!qword_27FF77DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DA8, &qword_26478EF58);
    sub_2646E8F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77DA0);
  }

  return result;
}

unint64_t sub_2646E91DC()
{
  result = qword_27FF77E00;
  if (!qword_27FF77E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DE0, &unk_26478EF90);
    sub_2646E9294();
    sub_2646E9550(&qword_27FF77E28, &qword_27FF77DC8, &qword_26478EF78, sub_2646E9604);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E00);
  }

  return result;
}

unint64_t sub_2646E9294()
{
  result = qword_27FF77E08;
  if (!qword_27FF77E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DF0, &qword_26478EFA8);
    sub_2646E934C();
    sub_26460CDF0(&qword_27FF76260, &qword_27FF76268, &qword_26478EFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E08);
  }

  return result;
}

unint64_t sub_2646E934C()
{
  result = qword_27FF77E10;
  if (!qword_27FF77E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77DE8, &qword_26478EFA0);
    sub_2646E93D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E10);
  }

  return result;
}

unint64_t sub_2646E93D8()
{
  result = qword_27FF77E18;
  if (!qword_27FF77E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77E20, &unk_26478EFC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF771E0, &qword_264792500);
    sub_264784A74();
    sub_26460CDF0(&qword_27FF771E8, &qword_27FF771E0, &qword_264792500);
    sub_2646E99E4(&qword_27FF771F0, MEMORY[0x277CDE330]);
    swift_getOpaqueTypeConformance2();
    sub_26460CDF0(&qword_27FF77138, &qword_27FF76C20, &qword_26478B740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E18);
  }

  return result;
}

uint64_t sub_2646E9550(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_2646E99E4(&qword_27FF76008, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2646E9604()
{
  result = qword_27FF77E30;
  if (!qword_27FF77E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77E38, &unk_26478EFD8);
    sub_264690BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E30);
  }

  return result;
}

unint64_t sub_2646E9690()
{
  result = qword_27FF77E50;
  if (!qword_27FF77E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77E48, &unk_26478EFE8);
    sub_26465D720();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E50);
  }

  return result;
}

unint64_t sub_2646E975C()
{
  result = qword_27FF77E60;
  if (!qword_27FF77E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C30, &qword_26478EDE8);
    sub_26460CDF0(&qword_27FF77E68, &qword_27FF77C28, &qword_26478EDE0);
    sub_26460CDF0(&qword_27FF76B00, &qword_27FF76B08, &unk_26478B650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E60);
  }

  return result;
}

unint64_t sub_2646E9844()
{
  result = qword_27FF77E70;
  if (!qword_27FF77E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C48, &qword_26478EE00);
    sub_2646E98FC();
    sub_26460CDF0(&qword_27FF76D68, &qword_27FF76D70, &qword_26478EF40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E70);
  }

  return result;
}

unint64_t sub_2646E98FC()
{
  result = qword_27FF77E78;
  if (!qword_27FF77E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF77C38, &qword_26478EDF0);
    sub_2646E99E4(&qword_27FF77E80, MEMORY[0x277CDE278]);
    sub_26460CDF0(&qword_27FF77E88, &qword_27FF77C40, &qword_26478EDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF77E78);
  }

  return result;
}

uint64_t sub_2646E99E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2646E9A30(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2646F4B44(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_2646F2398(v10, a2, a3);
  *a1 = v7;
  return result;
}

uint64_t sub_2646E9AF0()
{
  v1 = v0;
  v2 = *v0;
  if (*v0)
  {
    sub_264785F64();
    v3 = v2;
    sub_264785AF4();
  }

  else
  {
    sub_264785F64();
  }

  v4 = *(v1 + 1);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26673FCA0](*&v4);
  v5 = *(v1 + 2);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26673FCA0](*&v5);
  *(v1 + 24);
  *(v1 + 24);
  sub_264785794();

  v6 = v1[4];
  sub_264785F64();
  if (v6)
  {
    v7 = v6;
    sub_264785AF4();
  }

  v8 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v9 = *(v8 + 32);
  sub_264783AF4();
  sub_2646F1F30(&qword_27FF77F80, MEMORY[0x277CC9578]);
  sub_264785644();
  v10 = v1 + *(v8 + 36);
  if (v10[8] == 1)
  {
    return sub_264785F64();
  }

  v12 = *v10;
  sub_264785F64();
  if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return MEMORY[0x26673FCA0](v13);
}

uint64_t sub_2646E9D5C()
{
  sub_264785CE4();
  MEMORY[0x26673F4D0](0xD000000000000012, 0x8000000264798F50);
  v6 = *(v0 + 24);
  sub_264785D84();
  MEMORY[0x26673F4D0](0x75746974616C202CLL, 0xEC000000203A6564);
  v1 = *(v0 + 8);
  sub_264785934();
  MEMORY[0x26673F4D0](0x7469676E6F6C202CLL, 0xED0000203A656475);
  v2 = *(v0 + 16);
  sub_264785934();
  MEMORY[0x26673F4D0](0x203A636E7568202CLL, 0xE800000000000000);
  v3 = (v0 + *(type metadata accessor for SafetyCacheMapView.Annotation(0) + 36));
  v7 = *v3;
  v8 = *(v3 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F78, &qword_26478F340);
  v4 = sub_264785764();
  MEMORY[0x26673F4D0](v4);

  return 0;
}

uint64_t sub_2646E9EE4()
{
  sub_264785F44();
  sub_2646E9AF0();
  return sub_264785F94();
}

uint64_t sub_2646E9F28()
{
  sub_264785F44();
  sub_2646E9AF0();
  return sub_264785F94();
}

id sub_2646E9F68()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CD4EC8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F90, &qword_26478F380);
  sub_264784AB4();
  [v2 setDelegate_];

  type metadata accessor for SafetyCacheMapView.EnrouteAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = sub_264785714();
  [v2 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:v4];

  sub_264784AB4();
  sub_2646EA6D4(*v1, v2);

  sub_264784AB4();
  v5 = v1 + *(type metadata accessor for SafetyCacheMapView(0) + 24);
  v9 = *v5;
  v10 = *(v5 + 1);
  v11 = *(v5 + 1);
  v12 = *(v5 + 2);
  v13 = v5[48];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F98, &qword_26478F388);
  MEMORY[0x26673F100](v15, v6);
  sub_2646EC928(v15, v2);

  return v2;
}

id sub_2646EA0E8(void *a1)
{
  v2 = v1;
  v59 = a1;
  v58 = sub_264783F74();
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2647841F4();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v53);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  v60 = sub_264784574();
  v12 = *(v60 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v60);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SafetyCacheMapView(0);
  v17 = *(v16 - 8);
  v56 = (v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F90, &qword_26478F380);
  sub_264784AB4();
  v21 = v67[0];
  sub_2646F54B0(v2, v20, type metadata accessor for SafetyCacheMapView);
  v22 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  sub_2646F53EC(v20, v21 + v22);
  swift_endAccess();

  sub_264784AB4();
  v23 = v61;
  sub_264784AC4();
  sub_264784424();
  v24 = *(v12 + 8);
  v51 = v12 + 8;
  v52 = v24;
  v24(v15, v60);
  v25 = v9;
  v26 = v9;
  v27 = v53;
  (*(v5 + 104))(v26, *MEMORY[0x277CDFA90], v53);
  LOBYTE(v20) = sub_2647841E4();
  v28 = *(v5 + 8);
  v28(v25, v27);
  v28(v11, v27);
  v29 = &v23[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext];
  swift_beginAccess();
  v29[8] = v20 & 1;

  sub_264784AB4();
  v30 = v61;
  sub_264784AC4();
  sub_2647843E4();
  v32 = v31;
  v33 = v60;
  v34 = v52;
  v52(v15, v60);
  v35 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext;
  swift_beginAccess();
  *&v30[v35] = v32;

  sub_264784AB4();
  v36 = v67[0];
  sub_264784AC4();
  v37 = v55;
  sub_2647843A4();
  v34(v15, v33);
  v38 = &v36[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext];
  swift_beginAccess();
  v39 = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0);
  (*(v57 + 40))(&v38[*(v39 + 24)], v37, v58);
  swift_endAccess();

  sub_264784AB4();
  v40 = v61;
  v41 = v54;
  v42 = v59;
  sub_2646EA6D4(*v54, v59);

  sub_264784AB4();
  v43 = v66;
  v44 = v56;
  v45 = v41 + v56[8];
  v46 = *(v45 + 1);
  v47 = v45[48];
  v61 = *v45;
  v62 = v46;
  v48 = *(v45 + 2);
  v63 = *(v45 + 1);
  v64 = v48;
  v65 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F98, &qword_26478F388);
  MEMORY[0x26673F100](v67, v49);
  sub_2646EC928(v67, v42);

  [v42 setZoomEnabled_];
  [v42 setScrollEnabled_];
  [v42 setPitchEnabled_];
  return [v42 setRotateEnabled_];
}

uint64_t sub_2646EA6D4(void *a1, void *a2)
{
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD0, &qword_26478F3A8);
  v5 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v7 = &v147 - v6;
  v177 = type metadata accessor for SafetyCacheMapView(0);
  v8 = *(*(v177 - 8) + 64);
  MEMORY[0x28223BE20](v177);
  v168 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v160 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v147 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v147 - v17;
  v166 = sub_264783E24();
  v157 = *(v166 - 8);
  v19 = *(v157 + 64);
  v20 = MEMORY[0x28223BE20](v166);
  v154 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v153 = &v147 - v23;
  MEMORY[0x28223BE20](v22);
  v170 = &v147 - v24;
  v167 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v149 = *(v167 - 8);
  v25 = *(v149 + 64);
  v26 = MEMORY[0x28223BE20](v167);
  v161 = &v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v164 = (&v147 - v29);
  MEMORY[0x28223BE20](v28);
  v163 = &v147 - v30;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE8, &qword_26478F3D8);
  v179 = *(v176 - 8);
  v31 = *(v179 + 64);
  v32 = MEMORY[0x28223BE20](v176);
  v165 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v147 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = (&v147 - v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF77FF0, qword_26478F3E0);
  v150 = *(v39 - 8);
  v40 = *(v150 + 64);
  MEMORY[0x28223BE20](v39);
  v159 = &v147 - v41;
  v42 = 494.0 / a1[2];
  v155 = v2;
  *(v2 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_priorityDistanceBetweenEnrouteAnnotations) = v42;
  v43 = [a2 annotations];
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
  v44 = sub_2647857F4();

  v185[0] = v44;
  v185[1] = sub_2646EC358;
  v185[2] = 0;
  v185[3] = sub_2646F49D8;
  v185[4] = 0;
  v185[5] = sub_2646F4A3C;
  v185[6] = 0;
  v181 = sub_2646F4B58(v185);
  v45 = 0;
  sub_2646E9A30(&v181, sub_2646F6B00, sub_2646F6B18);
  v171 = v7;
  v178 = a2;

  v46 = v181;
  v181 = a1;

  sub_2646E9A30(&v181, sub_2646F6B00, sub_2646F6B18);
  v172 = v18;
  v173 = v16;
  v151 = a1;
  v174 = v181;
  v175 = v46;
  v184 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F0, &qword_264787DE8);
  sub_26460CDF0(&unk_27FF78000, &qword_27FF756F0, &qword_264787DE8);
  sub_2646F1F30(&qword_27FF76748, type metadata accessor for SafetyCacheMapView.Annotation);
  sub_264785664();
  v158 = v39;
  v47 = sub_264785E04();
  v181 = MEMORY[0x277D84F90];
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = 0;
    v50 = (v48 - 1);
    v156 = MEMORY[0x277D84F90];
    while (v49 < *(v47 + 16))
    {
      sub_26460CCE8(v47 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v49, v38, &qword_27FF77FE8, &qword_26478F3D8);
      sub_2646EC414(v38, v178, &v184);
      v51 = sub_26460CD50(v38, &qword_27FF77FE8, &qword_26478F3D8);
      if (v184)
      {
        v162 = v50;
        MEMORY[0x26673F500](v51);
        if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v156 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_264785814();
        }

        v148 = v49 + 1;
        sub_264785844();
        v156 = v181;
        v50 = v162;
        v52 = v162 == v49;
        v49 = v148;
        if (v52)
        {
          goto LABEL_13;
        }
      }

      else if (v48 == ++v49)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v156 = MEMORY[0x277D84F90];
LABEL_13:

  v53 = sub_264785DF4();
  v38 = v53;
  v48 = MEMORY[0x277D84F90];
  v181 = MEMORY[0x277D84F90];
  v175 = *(v53 + 16);
  if (v175)
  {
    v54 = 0;
    v174 = v53 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
    v45 = &qword_27FF77FE8;
    v162 = (v157 + 8);
    v55 = v170;
    v49 = v165;
    while (v54 < v38[2])
    {
      sub_26460CCE8(v174 + *(v179 + 72) * v54, v36, &qword_27FF77FE8, &qword_26478F3D8);
      sub_26460CCE8(v36, v49, &qword_27FF77FE8, &qword_26478F3D8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_26460CD50(v49, &qword_27FF77FE8, &qword_26478F3D8);
        sub_264783E04();
        v56 = sub_264783E14();
        v57 = sub_2647859D4();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 0;
          _os_log_impl(&dword_264605000, v56, v57, "#SafetyCacheMapView: found an inserted item that was actually a removal?", v58, 2u);
          v59 = v58;
          v55 = v170;
          MEMORY[0x266740650](v59, -1, -1);
        }

        (*v162)(v55, v166);
        sub_26460CD50(v36, &qword_27FF77FE8, &qword_26478F3D8);
      }

      else
      {
        v60 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78030, &unk_26478F410) + 48);
        v61 = v163;
        sub_2646F5518(v60, v163);
        v62 = v164;
        sub_2646F54B0(v61, v164, type metadata accessor for SafetyCacheMapView.Annotation);
        v63 = type metadata accessor for SafetyCacheMapView._Annotation(0);
        v64 = objc_allocWithZone(v63);
        sub_2646F54B0(v62, v64 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, type metadata accessor for SafetyCacheMapView.Annotation);
        v180.receiver = v64;
        v180.super_class = v63;
        objc_msgSendSuper2(&v180, sel_init);
        sub_2646F5450(v62, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646F5450(v61, type metadata accessor for SafetyCacheMapView.Annotation);
        v65 = sub_26460CD50(v36, &qword_27FF77FE8, &qword_26478F3D8);
        MEMORY[0x26673F500](v65);
        if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v66 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_264785814();
        }

        sub_264785844();
        v48 = v181;
        v55 = v170;
        v49 = v165;
      }

      if (v175 == ++v54)
      {
        goto LABEL_24;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_24:

  v49 = v156;
  if (!(v156 >> 62))
  {
    v67 = v178;
    v68 = v154;
    v69 = v153;
    if (!*((v156 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

LABEL_37:
  v87 = sub_264785C14();
  v67 = v178;
  v68 = v154;
  v69 = v153;
  if (!v87)
  {
LABEL_38:

    if (v48 >> 62)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

LABEL_26:
  sub_264783E04();

  v70 = sub_264783E14();
  v45 = sub_2647859B4();

  if (os_log_type_enabled(v70, v45))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v183 = 0;
    v184 = v72;
    *v71 = 136642819;
    v181 = v49;
    v182 = sub_2646F6B30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78010, &qword_26478F400);
    v73 = v48;
    sub_2646F5A40();
    v74 = sub_264785674();
    v76 = v75;

    v77 = sub_2646DF234(v74, v76, &v184);
    v48 = v73;

    *(v71 + 4) = v77;
    _os_log_impl(&dword_264605000, v70, v45, "#SafetyCacheMapView: removing annotations %{sensitive}s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x266740650](v72, -1, -1);
    v78 = v71;
    v68 = v154;
    MEMORY[0x266740650](v78, -1, -1);

    (*(v157 + 8))(v153, v166);
  }

  else
  {

    (*(v157 + 8))(v69, v166);
  }

  v38 = sub_2647857E4();

  [v67 removeAnnotations_];

  if (v48 >> 62)
  {
LABEL_39:
    if (!sub_264785C14())
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

LABEL_30:
  if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_31:
  sub_264783E04();

  v79 = sub_264783E14();
  v45 = sub_2647859B4();

  if (os_log_type_enabled(v79, v45))
  {
    v80 = v68;
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v183 = 0;
    v184 = v82;
    *v81 = 136642819;
    v181 = v48;
    v182 = sub_2646F6B30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78010, &qword_26478F400);
    sub_2646F5A40();
    v83 = sub_264785674();
    v85 = v84;

    v86 = sub_2646DF234(v83, v85, &v184);

    *(v81 + 4) = v86;
    _os_log_impl(&dword_264605000, v79, v45, "#SafetyCacheMapView: inserted annotations %{sensitive}s", v81, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v82);
    MEMORY[0x266740650](v82, -1, -1);
    MEMORY[0x266740650](v81, -1, -1);

    (*(v157 + 8))(v80, v166);
  }

  else
  {

    (*(v157 + 8))(v68, v166);
  }

  v38 = sub_2647857E4();

  [v67 addAnnotations_];

LABEL_41:
  v88 = [v67 annotations];
  v89 = sub_2647857F4();

  if (v89 >> 62)
  {
    v175 = sub_264785C14();
    if (v175)
    {
      goto LABEL_43;
    }

LABEL_122:

    v145 = [v67 overlays];
    if (!v145)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF76940, &qword_26478B1E0);
      sub_2647857F4();
      v145 = sub_2647857E4();
    }

    [v67 removeOverlays_];

    sub_2646F55FC(v151, v67);
    sub_2646EDF10(v67);
    return (*(v150 + 8))(v159, v158);
  }

  v175 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v175)
  {
    goto LABEL_122;
  }

LABEL_43:
  if (v175 >= 1)
  {
    v90 = v155 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    v174 = v89 & 0xC000000000000001;
    swift_beginAccess();
    v91 = 0;
    v170 = (v149 + 56);
    v92 = (v149 + 48);
    v93 = &qword_27FF766A8;
    v94 = &unk_26478AA80;
    v166 = v89;
    v165 = v90;
    v164 = (v149 + 48);
    while (1)
    {
      if (v174)
      {
        v97 = MEMORY[0x26673FA30](v91, v89);
      }

      else
      {
        v97 = *(v89 + 8 * v91 + 32);
        swift_unknownObjectRetain();
      }

      type metadata accessor for SafetyCacheMapView._Annotation(0);
      v98 = swift_dynamicCastClass();
      if (!v98)
      {
        goto LABEL_46;
      }

      v179 = v97;
      v176 = v98;
      v99 = v94;
      v100 = v93;
      v101 = v172;
      sub_2646F54B0(v98 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v172, type metadata accessor for SafetyCacheMapView.Annotation);
      v102 = v167;
      (*v170)(v101, 0, 1, v167);
      v103 = v168;
      sub_2646F54B0(v90, v168, type metadata accessor for SafetyCacheMapView);
      v104 = *(v177 + 20);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
      v106 = v173;
      MEMORY[0x26673F100](v105);
      sub_2646F5450(v103, type metadata accessor for SafetyCacheMapView);
      v107 = *(v169 + 48);
      v108 = v171;
      sub_26460CCE8(v101, v171, v100, v99);
      sub_26460CCE8(v106, v108 + v107, v100, v99);
      v109 = *v92;
      if ((*v92)(v108, 1, v102) != 1)
      {
        break;
      }

      sub_26460CD50(v106, v100, v99);
      sub_26460CD50(v101, v100, v99);
      v52 = v109(v108 + v107, 1, v102) == 1;
      v110 = v108;
      v67 = v178;
      v93 = v100;
      v94 = v99;
      if (!v52)
      {
        goto LABEL_57;
      }

      sub_26460CD50(v110, v93, v99);
      v95 = &selRef_selectAnnotation_animated_;
      v89 = v166;
      v90 = v165;
      v96 = v176;
LABEL_45:
      [v67 *v95];
LABEL_46:
      ++v91;
      swift_unknownObjectRelease();
      if (v175 == v91)
      {
        goto LABEL_122;
      }
    }

    v111 = v160;
    sub_26460CCE8(v108, v160, v100, v99);
    v93 = v100;
    if (v109(v108 + v107, 1, v102) == 1)
    {
      sub_26460CD50(v173, v100, v99);
      sub_26460CD50(v172, v100, v99);
      sub_2646F5450(v111, type metadata accessor for SafetyCacheMapView.Annotation);
      v110 = v108;
      v67 = v178;
      v92 = v164;
      v94 = v99;
LABEL_57:
      sub_26460CD50(v110, &qword_27FF77FD0, &qword_26478F3A8);
      v89 = v166;
      v90 = v165;
      v96 = v176;
LABEL_117:
      v95 = &selRef_deselectAnnotation_animated_;
      goto LABEL_45;
    }

    v112 = v108 + v107;
    v113 = v161;
    sub_2646F5518(v112, v161);
    v114 = *v111;
    v115 = *v113;
    v94 = v99;
    if (*v111)
    {
      v116 = v176;
      if (!v115)
      {
        goto LABEL_116;
      }

      sub_264659B70(0, &qword_27FF77F50, 0x277CBFC40);
      v117 = v115;
      v118 = v114;
      v119 = sub_264785AE4();

      v111 = v160;
      if ((v119 & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v116 = v176;
      if (v115)
      {
        goto LABEL_116;
      }
    }

    if (vabdd_f64(*(v111 + 8), *(v161 + 8)) >= 0.000001 || vabdd_f64(*(v111 + 16), *(v161 + 16)) >= 0.000001)
    {
      goto LABEL_116;
    }

    v120 = *(v111 + 24);
    if (v120 > 2)
    {
      if (v120 == 3)
      {
        v124 = 0xEA0000000000746ELL;
        v123 = 0x6563655274736F6DLL;
      }

      else
      {
        if (v120 == 4)
        {
          v123 = 0x6574756F726E65;
        }

        else
        {
          v123 = 0x6E776F6E6B6E75;
        }

        v124 = 0xE700000000000000;
      }
    }

    else
    {
      if (v120 == 1)
      {
        v121 = 0x6F6C6E557473616CLL;
      }

      else
      {
        v121 = 0x636F4C7472617473;
      }

      if (v120 == 1)
      {
        v122 = 0xEA00000000006B63;
      }

      else
      {
        v122 = 0xED00006E6F697461;
      }

      if (*(v111 + 24))
      {
        v123 = v121;
      }

      else
      {
        v123 = 0x74616E6974736564;
      }

      if (*(v111 + 24))
      {
        v124 = v122;
      }

      else
      {
        v124 = 0xEB000000006E6F69;
      }
    }

    v125 = *(v161 + 24);
    v126 = 0xEA0000000000746ELL;
    v127 = 0x6574756F726E65;
    if (v125 != 4)
    {
      v127 = 0x6E776F6E6B6E75;
    }

    if (v125 == 3)
    {
      v127 = 0x6563655274736F6DLL;
    }

    else
    {
      v126 = 0xE700000000000000;
    }

    if (v125 == 1)
    {
      v128 = 0x6F6C6E557473616CLL;
    }

    else
    {
      v128 = 0x636F4C7472617473;
    }

    if (v125 == 1)
    {
      v129 = 0xEA00000000006B63;
    }

    else
    {
      v129 = 0xED00006E6F697461;
    }

    if (!*(v161 + 24))
    {
      v128 = 0x74616E6974736564;
      v129 = 0xEB000000006E6F69;
    }

    if (*(v161 + 24) <= 2u)
    {
      v130 = v128;
    }

    else
    {
      v130 = v127;
    }

    if (*(v161 + 24) <= 2u)
    {
      v131 = v129;
    }

    else
    {
      v131 = v126;
    }

    if (v123 == v130 && v124 == v131)
    {

      v111 = v160;
    }

    else
    {
      v132 = sub_264785E84();

      v111 = v160;
      if ((v132 & 1) == 0)
      {
        goto LABEL_116;
      }
    }

    v133 = *(v111 + 32);
    v134 = *(v161 + 32);
    if (v133)
    {
      if (v134)
      {
        sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
        v135 = v134;
        v136 = v133;
        v137 = sub_264785AE4();

        v111 = v160;
        if (v137)
        {
LABEL_112:
          v138 = *(v102 + 32);
          v139 = sub_264783AB4();
          v111 = v160;
          if (v139)
          {
            v140 = *(v102 + 36);
            v141 = (v160 + v140);
            v142 = *(v160 + v140 + 8);
            v143 = v161 + v140;
            v144 = v142 & *(v143 + 8);
            if (v142)
            {
              v67 = v178;
              v89 = v166;
              v92 = v164;
            }

            else
            {
              v67 = v178;
              v89 = v166;
              v92 = v164;
              if ((*(v143 + 8) & 1) == 0)
              {
                v144 = *v141 == *v143;
              }
            }

            sub_2646F5450(v161, type metadata accessor for SafetyCacheMapView.Annotation);
            sub_26460CD50(v173, v93, v94);
            sub_26460CD50(v172, v93, v94);
            sub_2646F5450(v160, type metadata accessor for SafetyCacheMapView.Annotation);
            sub_26460CD50(v171, v93, v94);
            v95 = &selRef_selectAnnotation_animated_;
            v90 = v165;
            v96 = v116;
            if (v144)
            {
              goto LABEL_45;
            }

            goto LABEL_117;
          }
        }
      }
    }

    else if (!v134)
    {
      goto LABEL_112;
    }

LABEL_116:
    sub_2646F5450(v161, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26460CD50(v173, v93, v94);
    sub_26460CD50(v172, v93, v94);
    sub_2646F5450(v111, type metadata accessor for SafetyCacheMapView.Annotation);
    sub_26460CD50(v171, v93, v94);
    v67 = v178;
    v89 = v166;
    v90 = v165;
    v92 = v164;
    v96 = v116;
    goto LABEL_117;
  }

  __break(1u);

  sub_26460CD50(v38, &qword_27FF77FE8, &qword_26478F3D8);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2646EBFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_264783B64();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v37 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v37 - v17;
  v19 = qword_26478F438[*(a1 + 24)];
  v20 = qword_26478F438[*(a2 + 24)];
  if (v19 != v20)
  {
    v34 = v19 < v20;
    return v34 & 1;
  }

  v21 = *(a1 + 8);
  v22 = *(a2 + 8);
  v23 = v21 < v22;
  if (v21 != v22 || (v24 = *(a1 + 16), v25 = *(a2 + 16), v23 = v24 < v25, v24 != v25))
  {
    v34 = v23;
    return v34 & 1;
  }

  v26 = v16;
  v27 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) + 32);
  sub_264783AF4();
  sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578]);
  if (sub_264785684())
  {
    v28 = *(a1 + 32);
    if (v28)
    {
      v29 = [v28 id];
      sub_264783B44();

      v30 = v5[4];
      v30(v18, v15, v26);
      v31 = *(a2 + 32);
      if (v31)
      {
        v32 = [v31 id];
        sub_264783B44();

        v30(v12, v9, v26);
        sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0]);
        if ((sub_264785684() & 1) == 0)
        {
          v34 = MEMORY[0x26673D850](v18, v12);
          v36 = v5[1];
          v36(v12, v26);
          v36(v18, v26);
          return v34 & 1;
        }

        v33 = v5[1];
        v33(v12, v26);
        v33(v18, v26);
      }

      else
      {
        (v5[1])(v18, v26);
      }
    }

    v34 = 0;
    return v34 & 1;
  }

  return sub_264783A84();
}

uint64_t sub_2646EC358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    sub_2646F54B0(v4 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, a2, type metadata accessor for SafetyCacheMapView.Annotation);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_2646EC414@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v27 = sub_264783E24();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE8, &qword_26478F3D8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26460CCE8(a1, v12, &qword_27FF77FE8, &qword_26478F3D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78030, &unk_26478F410);
    sub_2646F5518(&v12[*(v17 + 48)], v16);
    v18 = [a2 annotations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
    v19 = sub_2647857F4();

    MEMORY[0x28223BE20](v20);
    *(&v27 - 2) = v16;
    v21 = sub_264684DB0(sub_2646F5AF0, (&v27 - 4), v19);

    *v28 = v21;
    return sub_2646F5450(v16, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  else
  {
    v23 = v28;
    sub_26460CD50(v12, &qword_27FF77FE8, &qword_26478F3D8);
    sub_264783E04();
    v24 = sub_264783E14();
    v25 = sub_2647859D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_264605000, v24, v25, "#SafetyCacheMapView: found a removed item that was actually an insertion?", v26, 2u);
      MEMORY[0x266740650](v26, -1, -1);
    }

    result = (*(v5 + 8))(v8, v27);
    *v23 = 0;
  }

  return result;
}

uint64_t sub_2646EC74C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    sub_2646F54B0(v9 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v7, type metadata accessor for SafetyCacheMapView.Annotation);
    v10 = sub_2646F526C(v7, a2);
    sub_2646F5450(v7, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2646EC83C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v9 = swift_dynamicCastClassUnconditional();
  sub_2646F54B0(v9 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v7, type metadata accessor for SafetyCacheMapView.Annotation);
  v10 = sub_2646E9D5C();
  v12 = v11;
  result = sub_2646F5450(v7, type metadata accessor for SafetyCacheMapView.Annotation);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

void sub_2646EC928(uint64_t a1, void *a2)
{
  v5 = sub_264783E24();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v35[-v11];
  if (*(a1 + 32))
  {
    sub_264783E04();
    v13 = sub_264783E14();
    v14 = sub_2647859B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_264605000, v13, v14, "#SafetyCacheMapView, setting a nil region—letting MapKit handle visibility of annotations", v15, 2u);
      MEMORY[0x266740650](v15, -1, -1);
    }

    (*(v6 + 8))(v10, v5);
    v16 = [a2 annotations];
    if (!v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FE0, &qword_26478F3D0);
      sub_2647857F4();
      v16 = sub_2647857E4();
    }

    [a2 showAnnotations:v16 animated:0];
  }

  else
  {
    v17 = *a1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    sub_264783E04();
    v21 = v2;
    v22 = sub_264783E14();
    v23 = sub_2647859B4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42 = v37;
      *v24 = 136315651;
      v25 = v21;
      v26 = [v25 description];
      v27 = sub_264785724();
      v36 = v23;
      v29 = v28;

      v30 = sub_2646DF234(v27, v29, &v42);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_2646DF234(0xD000000000000019, 0x8000000264799070, &v42);
      *(v24 + 22) = 2085;
      v38 = v17;
      v39 = v18;
      v40 = v19;
      v41 = v20;
      type metadata accessor for MKCoordinateRegion(0);
      v31 = sub_264785764();
      v33 = sub_2646DF234(v31, v32, &v42);

      *(v24 + 24) = v33;
      _os_log_impl(&dword_264605000, v22, v36, "#SafetyCacheMapView, %s, %s: reset map region to be %{sensitive}s", v24, 0x20u);
      v34 = v37;
      swift_arrayDestroy();
      MEMORY[0x266740650](v34, -1, -1);
      MEMORY[0x266740650](v24, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    [a2 setRegion:1 animated:{v17, v18, v19, v20}];
  }
}

_BYTE *sub_2646ECD08(void *a1, uint64_t a2)
{
  v4 = sub_264783E24();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v101 - v10;
  v12 = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v101 - v21;
  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v110 = v23;
    v107 = v23 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation;
    v108 = v5;
    v24 = *(v23 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation + 24);
    swift_unknownObjectRetain();
    v109 = a2;
    if (v24 > 3)
    {
      v54 = sub_264785714();
      v55 = [a1 dequeueReusableAnnotationViewWithIdentifier_];

      if (!v55)
      {
        v56 = objc_allocWithZone(type metadata accessor for SafetyCacheMapView.EnrouteAnnotationView());
        swift_unknownObjectRetain();
        v57 = sub_264785714();
        v55 = [v56 initWithAnnotation:v110 reuseIdentifier:v57];
        swift_unknownObjectRelease();
      }

      v53 = v55;
      [v53 setEnabled_];
      sub_264783E04();
      swift_unknownObjectRetain();
      v58 = sub_264783E14();
      v59 = sub_2647859F4();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v106 = v4;
        v62 = v61;
        v114[0] = v61;
        *v60 = 136642819;
        sub_2646F54B0(v107, v22, type metadata accessor for SafetyCacheMapView.Annotation);
        v63 = sub_2646E9D5C();
        v65 = v64;
        sub_2646F5450(v22, type metadata accessor for SafetyCacheMapView.Annotation);
        v66 = sub_2646DF234(v63, v65, v114);

        *(v60 + 4) = v66;
        _os_log_impl(&dword_264605000, v58, v59, "#SafetyCacheMap, created non selectable map annotation with (annotation: %{sensitive}s)", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v62);
        MEMORY[0x266740650](v62, -1, -1);
        MEMORY[0x266740650](v60, -1, -1);

        (*(v108 + 8))(v9, v106);
      }

      else
      {

        (*(v108 + 8))(v9, v4);
      }

      goto LABEL_30;
    }

    v104 = v20;
    v105 = v11;
    v106 = v4;
    v25 = sub_264785714();
    v26 = [a1 dequeueReusableAnnotationViewWithIdentifier_];

    if (v26)
    {
      type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        goto LABEL_7;
      }
    }

    v28 = v111 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    swift_beginAccess();
    v29 = *(v28 + *(type metadata accessor for SafetyCacheMapView(0) + 28));
    v30 = type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler];
    v31[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_isSelectionAnimated] = v29;
    *v32 = 0;
    v32[1] = 0;
    swift_unknownObjectRetain();
    v33 = sub_264785714();
    v113.receiver = v31;
    v113.super_class = v30;
    v27 = objc_msgSendSuper2(&v113, sel_initWithAnnotation_reuseIdentifier_, v110, v33);

    swift_unknownObjectRelease();
LABEL_7:
    v34 = v111;
    v35 = v111 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    swift_beginAccess();
    v102 = type metadata accessor for SafetyCacheMapView(0);
    v36 = *(v102 + 28);
    v103 = v35;
    v27[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_isSelectionAnimated] = *(v35 + v36);
    sub_2646EF684();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    v39 = v110;
    *(v38 + 16) = v37;
    *(v38 + 24) = v39;
    v40 = &v27[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler];
    v42 = *&v27[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler];
    v41 = *&v27[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_onTapHandler + 8];
    *v40 = sub_2646F55F4;
    v40[1] = v38;
    swift_unknownObjectRetain();

    sub_26460C9A0(v42);

    v43 = v22;
    v44 = v107;
    sub_2646F54B0(v107, v43, type metadata accessor for SafetyCacheMapView.Annotation);
    v45 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext;
    swift_beginAccess();
    sub_2646F54B0(v34 + v45, v15, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v46 = v27;
    v47 = sub_2646EDA2C(v15);
    sub_2646F5450(v15, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v48 = v43;
    sub_2646F5450(v43, type metadata accessor for SafetyCacheMapView.Annotation);
    [v46 setGlyphImage_];

    v49 = v104;
    sub_2646F54B0(v44, v104, type metadata accessor for SafetyCacheMapView.Annotation);
    v50 = *(v49 + 24);
    v51 = &selRef_systemGrayColor;
    if (v50 > 2)
    {
      v67 = 0;
      v52 = v48;
      if (v50 - 4 < 2)
      {
        goto LABEL_21;
      }
    }

    else if (*(v49 + 24))
    {
      v52 = v43;
      if (v50 != 1)
      {
        v51 = &selRef_systemGreenColor;
      }
    }

    else
    {
      v51 = &selRef_systemRedColor;
      v52 = v43;
    }

    v67 = [objc_opt_self() *v51];
LABEL_21:
    sub_2646F5450(v49, type metadata accessor for SafetyCacheMapView.Annotation);
    [v46 setMarkerTintColor_];

    v68 = [objc_opt_self() systemWhiteColor];
    [v46 setGlyphTintColor_];

    v69 = *(v103 + *(v102 + 28));
    v70 = v46;
    [v70 setEnabled_];
    v71 = v70;
    v72 = v105;
    sub_264783E04();
    v73 = v71;
    swift_unknownObjectRetain();
    v53 = v73;
    v74 = sub_264783E14();
    v75 = sub_2647859F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v112 = v104;
      *v76 = 136643587;
      sub_2646F54B0(v107, v52, type metadata accessor for SafetyCacheMapView.Annotation);
      v77 = sub_2646E9D5C();
      v79 = v78;
      sub_2646F5450(v52, type metadata accessor for SafetyCacheMapView.Annotation);
      v80 = sub_2646DF234(v77, v79, &v112);

      *(v76 + 4) = v80;
      *(v76 + 12) = 2080;
      v81 = [v53 glyphImage];
      if (v81)
      {
        v82 = v81;
        v83 = [v81 description];

        v84 = sub_264785724();
        v86 = v85;
      }

      else
      {
        v86 = 0xE300000000000000;
        v84 = 7104878;
      }

      v87 = sub_2646DF234(v84, v86, &v112);

      *(v76 + 14) = v87;
      *(v76 + 22) = 2080;
      v88 = [v53 markerTintColor];
      v89 = v106;
      if (v88)
      {
        v90 = v88;
        v91 = [v88 description];

        v92 = sub_264785724();
        v94 = v93;
      }

      else
      {

        v94 = 0xE300000000000000;
        v92 = 7104878;
      }

      v95 = sub_2646DF234(v92, v94, &v112);

      *(v76 + 24) = v95;
      *(v76 + 32) = 1024;
      v96 = [v53 isEnabled];

      *(v76 + 34) = v96;
      _os_log_impl(&dword_264605000, v74, v75, "#SafetyCacheMap, created map annotation with (annotation: %{sensitive}s, image: %s, tint color: %s, enabled: %{BOOL}d", v76, 0x26u);
      v97 = v104;
      swift_arrayDestroy();
      MEMORY[0x266740650](v97, -1, -1);
      MEMORY[0x266740650](v76, -1, -1);

      (*(v108 + 8))(v105, v89);
    }

    else
    {

      (*(v108 + 8))(v72, v106);
    }

LABEL_30:
    v98 = v110;
    [v53 setAnnotation_];
    LODWORD(v99) = 1148846080;
    [v53 setDisplayPriority_];
    sub_2646EE710(v98);
    [v53 setZPriority_];

    swift_unknownObjectRelease();
    return v53;
  }

  return 0;
}

uint64_t sub_2646ED7F4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = type metadata accessor for SafetyCacheMapView(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
    v16 = result;
    swift_beginAccess();
    sub_2646F54B0(v16 + v15, v13, type metadata accessor for SafetyCacheMapView);

    sub_2646F54B0(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v9, type metadata accessor for SafetyCacheMapView.Annotation);
    v17 = type metadata accessor for SafetyCacheMapView.Annotation(0);
    (*(*(v17 - 8) + 56))(v9, 0, 1, v17);
    v18 = *(v10 + 20);
    sub_26460CCE8(v9, v7, &qword_27FF766A8, &unk_26478AA80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
    sub_2647853E4();
    sub_26460CD50(v9, &qword_27FF766A8, &unk_26478AA80);
    return sub_2646F5450(v13, type metadata accessor for SafetyCacheMapView);
  }

  return result;
}

id sub_2646EDA2C(uint64_t a1)
{
  if (*(v1 + 24) <= 2u)
  {
    *(v1 + 24);
LABEL_7:
    v6 = sub_264785714();
    v2 = [objc_opt_self() systemImageNamed_];

    return v2;
  }

  if (*(v1 + 24) - 4 < 2)
  {
    return 0;
  }

  v3 = *(v1 + 32);
  if (!v3)
  {
    goto LABEL_7;
  }

  v5 = v3;
  v2 = sub_2646F09C8(v5, a1);

  if (!v2)
  {
    goto LABEL_7;
  }

  return v2;
}

uint64_t sub_2646EDC14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for SafetyCacheMapView(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  sub_2646F54B0(a1 + v16, v15, type metadata accessor for SafetyCacheMapView);
  sub_2646F54B0(a2 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, v10, type metadata accessor for SafetyCacheMapView.Annotation);
  v17 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
  v18 = *(v12 + 28);
  sub_26460CCE8(v10, v8, &qword_27FF766A8, &unk_26478AA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  sub_2647853E4();
  sub_26460CD50(v10, &qword_27FF766A8, &unk_26478AA80);
  return sub_2646F5450(v15, type metadata accessor for SafetyCacheMapView);
}

uint64_t sub_2646EDF10(void *a1)
{
  v64 = a1;
  v2 = sub_264783E24();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v65 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v62 = &v59 - v7;
  MEMORY[0x28223BE20](v6);
  v63 = &v59 - v8;
  v67 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v9 = *(v67 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v67);
  v60 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v61 = &v59 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v71 = &v59 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v66 = &v59 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v59 - v20;
  MEMORY[0x28223BE20](v19);
  v68 = &v59 - v22;
  v23 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = *(v24 + 16);

  if (v25)
  {
    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27 >= *(v24 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v30 = *(v9 + 72);
      sub_2646F54B0(v24 + v29 + v30 * v27, v21, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v21[24] == 3)
      {
        break;
      }

      v31 = sub_264785E84();

      if (v31)
      {
        goto LABEL_10;
      }

      result = sub_2646F5450(v21, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_4:
      if (v25 == ++v27)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    sub_2646F5518(v21, v71);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_2646F2094(0, *(v28 + 16) + 1, 1);
      v28 = v72;
    }

    v34 = *(v28 + 16);
    v33 = *(v28 + 24);
    if (v34 >= v33 >> 1)
    {
      sub_2646F2094(v33 > 1, v34 + 1, 1);
      v28 = v72;
    }

    *(v28 + 16) = v34 + 1;
    result = sub_2646F5518(v71, v28 + v29 + v34 * v30);
    goto LABEL_4;
  }

  v28 = MEMORY[0x277D84F90];
LABEL_16:

  if (*(v28 + 16))
  {
    v35 = v66;
    sub_2646F54B0(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v66, type metadata accessor for SafetyCacheMapView.Annotation);

    v36 = v68;
    sub_2646F5518(v35, v68);
    v37 = v36 + *(v67 + 36);
    if (*(v37 + 8))
    {
      v38 = v62;
      sub_264783E04();
      v39 = sub_264783E14();
      v40 = sub_2647859D4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_264605000, v39, v40, "#SafetyCacheMapView, missing hunc for most recent location", v41, 2u);
        MEMORY[0x266740650](v41, -1, -1);
      }

      (*(v69 + 8))(v38, v70);
    }

    else
    {
      v46 = *v37;
      v47 = v63;
      sub_264783E04();
      v48 = v61;
      sub_2646F54B0(v36, v61, type metadata accessor for SafetyCacheMapView.Annotation);
      v49 = sub_264783E14();
      v50 = sub_2647859F4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v72 = v52;
        *v51 = 136642819;
        sub_2646F54B0(v48, v60, type metadata accessor for SafetyCacheMapView.Annotation);
        v53 = sub_264785764();
        v55 = v54;
        sub_2646F5450(v48, type metadata accessor for SafetyCacheMapView.Annotation);
        v56 = sub_2646DF234(v53, v55, &v72);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_264605000, v49, v50, "#SafetyCacheMapView, Creating background circle for most recent location: %{sensitive}s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v52);
        MEMORY[0x266740650](v52, -1, -1);
        MEMORY[0x266740650](v51, -1, -1);
      }

      else
      {

        sub_2646F5450(v48, type metadata accessor for SafetyCacheMapView.Annotation);
      }

      (*(v69 + 8))(v47, v70);
      v57 = v64;
      v58 = [objc_opt_self() circleWithCenterCoordinate:*(v36 + 8) radius:{*(v36 + 16), v46}];
      [v57 addOverlay_];
    }

    return sub_2646F5450(v36, type metadata accessor for SafetyCacheMapView.Annotation);
  }

  else
  {

    v42 = v65;
    sub_264783E04();
    v43 = sub_264783E14();
    v44 = sub_2647859D4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_264605000, v43, v44, "#SafetyCacheMapView, missing most recent location in map annotations", v45, 2u);
      MEMORY[0x266740650](v45, -1, -1);
    }

    return (*(v69 + 8))(v42, v70);
  }
}

uint64_t sub_2646EE710(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v84 = *(v4 - 8);
  v5 = v84;
  v6 = *(v84 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v86 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v78 - v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD0, &qword_26478F3A8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v78 - v15;
  v17 = type metadata accessor for SafetyCacheMapView(0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v82 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v78 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v78 - v29;
  v83 = a1 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation;
  sub_2646F54B0(a1 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation, &v78 - v29, type metadata accessor for SafetyCacheMapView.Annotation);
  v31 = v4;
  (*(v5 + 56))(v30, 0, 1, v4);
  v32 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  v79 = v32;
  v80 = v2;
  sub_2646F54B0(v2 + v32, v21, type metadata accessor for SafetyCacheMapView);
  v33 = *(v18 + 28);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
  MEMORY[0x26673F100](v34);
  sub_2646F5450(v21, type metadata accessor for SafetyCacheMapView);
  v35 = *(v13 + 56);
  sub_26460CCE8(v30, v16, &qword_27FF766A8, &unk_26478AA80);
  sub_26460CCE8(v28, &v16[v35], &qword_27FF766A8, &unk_26478AA80);
  v36 = *(v84 + 48);
  if (v36(v16, 1, v31) == 1)
  {
    sub_26460CD50(v28, &qword_27FF766A8, &unk_26478AA80);
    sub_26460CD50(v30, &qword_27FF766A8, &unk_26478AA80);
    if (v36(&v16[v35], 1, v31) == 1)
    {
      return sub_26460CD50(v16, &qword_27FF766A8, &unk_26478AA80);
    }

    goto LABEL_6;
  }

  v38 = v82;
  sub_26460CCE8(v16, v82, &qword_27FF766A8, &unk_26478AA80);
  if (v36(&v16[v35], 1, v31) == 1)
  {
    sub_26460CD50(v28, &qword_27FF766A8, &unk_26478AA80);
    sub_26460CD50(v30, &qword_27FF766A8, &unk_26478AA80);
    sub_2646F5450(v38, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_6:
    sub_26460CD50(v16, &qword_27FF77FD0, &qword_26478F3A8);
    goto LABEL_7;
  }

  v75 = v81;
  sub_2646F5518(&v16[v35], v81);
  v76 = sub_2646F526C(v38, v75);
  sub_2646F5450(v75, type metadata accessor for SafetyCacheMapView.Annotation);
  sub_26460CD50(v28, &qword_27FF766A8, &unk_26478AA80);
  sub_26460CD50(v30, &qword_27FF766A8, &unk_26478AA80);
  sub_2646F5450(v38, type metadata accessor for SafetyCacheMapView.Annotation);
  result = sub_26460CD50(v16, &qword_27FF766A8, &unk_26478AA80);
  if (v76)
  {
    return result;
  }

LABEL_7:
  result = v83;
  v39 = *(v83 + 24);
  if (v39 <= 2)
  {
    *(v83 + 24);
    return result;
  }

  if (v39 == 4)
  {
    v40 = *(v80 + v79);
    sub_2646F54B0(v83, v85, type metadata accessor for SafetyCacheMapView.Annotation);
    v41 = *(v40 + 16);

    v83 = v41;
    if (!v41)
    {
LABEL_79:
      v42 = 0;
      goto LABEL_80;
    }

    v82 = v31;
    v42 = 0;
    while (1)
    {
      if (v42 >= *(v40 + 16))
      {
        __break(1u);
LABEL_82:
        sub_2646F5450(v86, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_80:
        sub_2646F5450(v85, type metadata accessor for SafetyCacheMapView.Annotation);

        v77 = (*(v80 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_priorityDistanceBetweenEnrouteAnnotations) * v42) + 500.0;
        return result;
      }

      v43 = v86;
      sub_2646F54B0(v40 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v42, v86, type metadata accessor for SafetyCacheMapView.Annotation);
      v44 = *v43;
      v45 = *v85;
      if (v44)
      {
        if (!v45)
        {
          goto LABEL_71;
        }

        sub_264659B70(0, &qword_27FF77F50, 0x277CBFC40);
        v46 = v45;
        v47 = v44;
        v48 = sub_264785AE4();

        if ((v48 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (v45)
      {
        goto LABEL_71;
      }

      if (vabdd_f64(*(v86 + 8), *(v85 + 8)) >= 0.000001 || vabdd_f64(*(v86 + 16), *(v85 + 16)) >= 0.000001)
      {
        goto LABEL_71;
      }

      v49 = *(v86 + 24);
      if (v49 > 2)
      {
        if (v49 == 3)
        {
          v53 = 0xEA0000000000746ELL;
          v52 = 0x6563655274736F6DLL;
        }

        else
        {
          if (v49 == 4)
          {
            v52 = 0x6574756F726E65;
          }

          else
          {
            v52 = 0x6E776F6E6B6E75;
          }

          v53 = 0xE700000000000000;
        }
      }

      else
      {
        if (v49 == 1)
        {
          v50 = 0x6F6C6E557473616CLL;
        }

        else
        {
          v50 = 0x636F4C7472617473;
        }

        if (v49 == 1)
        {
          v51 = 0xEA00000000006B63;
        }

        else
        {
          v51 = 0xED00006E6F697461;
        }

        if (*(v86 + 24))
        {
          v52 = v50;
        }

        else
        {
          v52 = 0x74616E6974736564;
        }

        if (*(v86 + 24))
        {
          v53 = v51;
        }

        else
        {
          v53 = 0xEB000000006E6F69;
        }
      }

      v54 = *(v85 + 24);
      v55 = 0xEA0000000000746ELL;
      v56 = 0x6574756F726E65;
      if (v54 != 4)
      {
        v56 = 0x6E776F6E6B6E75;
      }

      if (v54 == 3)
      {
        v56 = 0x6563655274736F6DLL;
      }

      else
      {
        v55 = 0xE700000000000000;
      }

      if (v54 == 1)
      {
        v57 = 0x6F6C6E557473616CLL;
      }

      else
      {
        v57 = 0x636F4C7472617473;
      }

      v58 = 0xEA00000000006B63;
      if (v54 != 1)
      {
        v58 = 0xED00006E6F697461;
      }

      if (!*(v85 + 24))
      {
        v57 = 0x74616E6974736564;
        v58 = 0xEB000000006E6F69;
      }

      if (*(v85 + 24) <= 2u)
      {
        v59 = v57;
      }

      else
      {
        v59 = v56;
      }

      if (*(v85 + 24) <= 2u)
      {
        v60 = v58;
      }

      else
      {
        v60 = v55;
      }

      if (v52 == v59 && v53 == v60)
      {
      }

      else
      {
        v61 = sub_264785E84();

        if ((v61 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      v62 = *(v86 + 32);
      v63 = *(v85 + 32);
      if (v62)
      {
        if (!v63)
        {
          goto LABEL_71;
        }

        sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
        v64 = v63;
        v65 = v62;
        v66 = sub_264785AE4();

        if ((v66 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else if (v63)
      {
        goto LABEL_71;
      }

      v67 = *(v82 + 32);
      if ((sub_264783AB4() & 1) == 0)
      {
        goto LABEL_71;
      }

      v68 = *(v82 + 36);
      v69 = (v86 + v68);
      v70 = *(v86 + v68 + 8);
      v71 = v85 + v68;
      v72 = *(v71 + 8);
      if (v70)
      {
        if (*(v71 + 8))
        {
          goto LABEL_82;
        }

LABEL_71:
        sub_2646F5450(v86, type metadata accessor for SafetyCacheMapView.Annotation);
        goto LABEL_72;
      }

      if (*(v71 + 8))
      {
        goto LABEL_71;
      }

      v73 = *v69;
      v74 = *v71;
      sub_2646F5450(v86, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v73 == v74)
      {
        goto LABEL_80;
      }

LABEL_72:
      if (v83 == ++v42)
      {
        goto LABEL_79;
      }
    }
  }

  return result;
}

uint64_t sub_2646EF1B8()
{
  result = type metadata accessor for SafetyCacheMapView(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(319);
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

uint64_t sub_2646EF388()
{
  result = type metadata accessor for SafetyCacheMapView.Annotation(319);
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

id sub_2646EF438(uint64_t a1, uint64_t a2)
{
  sub_26460CCE8(a1, v16, &qword_27FF77FC8, &qword_26478F3A0);
  v5 = v17;
  if (v17)
  {
    v6 = __swift_project_boxed_opaque_existential_0(v16, v17);
    v7 = *(v5 - 8);
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v6);
    v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10);
    v11 = sub_264785E74();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView.IdentifiableTapGestureRecognizer();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, sel_initWithTarget_action_, v11, a2);
  swift_unknownObjectRelease();
  sub_26460CD50(a1, &qword_27FF77FC8, &qword_26478F3A0);
  return v13;
}

id sub_2646EF644(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2646EF684()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118630SelectableMarkerAnnotationView_isSelectionAnimated) == 1)
  {
    v2 = [v0 gestureRecognizers];
    if (!v2)
    {
      [v0 setGestureRecognizers_];
      return;
    }

    v3 = v2;
    v31 = sub_264659B70(0, &qword_27FF77018, 0x277D75548);
    v4 = sub_2647857F4();

    v33 = v4;
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      goto LABEL_76;
    }

    v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
        if (v6)
        {
          v8 = sub_264785C14();
        }

        else
        {
          v8 = *(v5 + 16);
        }

        goto LABEL_29;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26673FA30](v8, v4);
      }

      else
      {
        if (v8 >= *(v5 + 16))
        {
          goto LABEL_69;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView.IdentifiableTapGestureRecognizer();
      v11 = swift_dynamicCastClass();

      v12 = v8 + 1;
      v13 = __OFADD__(v8, 1);
      if (v11)
      {
        break;
      }

      ++v8;
      if (v13)
      {
        goto LABEL_70;
      }
    }

    if (!v13)
    {
      if (v6)
      {
        if (v12 != sub_264785C14())
        {
LABEL_36:
          v5 = v8 + 5;
          do
          {
            v16 = v5 - 4;
            if ((v4 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x26673FA30](v5 - 4, v4);
            }

            else
            {
              if ((v16 & 0x8000000000000000) != 0)
              {
                goto LABEL_71;
              }

              if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_72;
              }

              v17 = *(v4 + 8 * v5);
            }

            v18 = v17;
            v19 = swift_dynamicCastClass();

            if (!v19)
            {
              if (v16 != v8)
              {
                if ((v4 & 0xC000000000000001) != 0)
                {
                  v20 = MEMORY[0x26673FA30](v8, v4);
                  v21 = MEMORY[0x26673FA30](v5 - 4, v4);
                }

                else
                {
                  if (v8 < 0)
                  {
                    goto LABEL_79;
                  }

                  v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v8 >= v22)
                  {
                    goto LABEL_80;
                  }

                  if (v16 >= v22)
                  {
                    goto LABEL_81;
                  }

                  v23 = *(v4 + 8 * v5);
                  v20 = *(v4 + 8 * v8 + 32);
                  v21 = v23;
                }

                v24 = v21;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
                {
                  v4 = sub_264681790(v4);
                  v6 = (v4 >> 62) & 1;
                }

                else
                {
                  v6 = 0;
                }

                v25 = v4 & 0xFFFFFFFFFFFFFF8;
                v26 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
                *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v24;

                if ((v4 & 0x8000000000000000) != 0 || v6)
                {
                  v4 = sub_264681790(v4);
                  v25 = v4 & 0xFFFFFFFFFFFFFF8;
                  if ((v16 & 0x8000000000000000) != 0)
                  {
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
                    __break(1u);
LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
LABEL_76:
                    v7 = sub_264785C14();
                    goto LABEL_5;
                  }
                }

                else if ((v16 & 0x8000000000000000) != 0)
                {
                  goto LABEL_68;
                }

                if (v16 >= *(v25 + 16))
                {
                  goto LABEL_75;
                }

                v27 = *(v25 + 8 * v5);
                *(v25 + 8 * v5) = v20;

                v33 = v4;
              }

              if (__OFADD__(v8++, 1))
              {
                goto LABEL_74;
              }
            }

            v29 = v5 - 3;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_73;
            }

            if (v4 >> 62)
            {
              v30 = sub_264785C14();
            }

            else
            {
              v30 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v5;
          }

          while (v29 != v30);
        }
      }

      else if (v12 != *(v5 + 16))
      {
        goto LABEL_36;
      }

LABEL_29:
      if (v4 >> 62)
      {
        v14 = sub_264785C14();
        if (v14 >= v8)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14 >= v8)
        {
LABEL_31:
          sub_2646A236C(v8, v14);
          if (v33)
          {
            v15 = sub_2647857E4();
          }

          else
          {
            v15 = 0;
          }

          [v1 setGestureRecognizers_];

          return;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
    }

    __break(1u);
    return;
  }

  v32 = [objc_allocWithZone(type metadata accessor for SafetyCacheMapView.SelectableMarkerAnnotationView.IdentifiableTapGestureRecognizer()) initWithTarget:v0 action:sel_tapHandler_];
  [v0 addGestureRecognizer_];
}

void sub_2646EFD20()
{
  v1 = v0;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FA8, &unk_26478F390));
  v3 = sub_264784784();
  v4 = [v3 view];
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = v6;
  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  v9 = [v1 subviews];
  sub_264659B70(0, &unk_27FF77FB0, 0x277D75D18);
  v10 = sub_2647857F4();

  if (v10 >> 62)
  {
    v11 = sub_264785C14();
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v11)
    {
      goto LABEL_12;
    }
  }

  if (v11 < 1)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  for (i = 0; i != v11; ++i)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x26673FA30](i, v10);
    }

    else
    {
      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    [v13 removeFromSuperview];
  }

LABEL_12:

  v15 = [v3 view];
  if (!v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v15;
  [v1 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_26478B4E0;
  v18 = [v3 view];
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  v20 = [v18 widthAnchor];

  v21 = [v20 constraintEqualToConstant_];
  *(v17 + 32) = v21;
  v22 = [v3 view];
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = v22;
  v24 = [v22 heightAnchor];

  v25 = [v24 constraintEqualToConstant_];
  *(v17 + 40) = v25;
  v26 = [v3 view];
  if (!v26)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v26;
  v28 = [v26 centerXAnchor];

  v29 = [v1 centerXAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v17 + 48) = v30;
  v31 = [v3 view];

  if (!v31)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v32 = objc_opt_self();
  v33 = [v31 centerYAnchor];

  v34 = [v1 centerYAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v17 + 56) = v35;
  sub_264659B70(0, &qword_27FF77FC0, 0x277CCAAD0);
  v36 = sub_2647857E4();

  [v32 activateConstraints_];

  v37 = *&v1[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController];
  *&v1[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController] = v3;
}

void sub_2646F019C()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_prepareForReuse);
  v1 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController;
  v2 = *&v0[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118621EnrouteAnnotationView_annotationHostingController];
  if (!v2)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];

    v5 = *&v0[v1];
LABEL_5:
    *&v0[v1] = 0;

    return;
  }

  __break(1u);
}

double sub_2646F0280@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_264785174();
  sub_264783FD4();
  v3 = sub_264785504();
  v5 = v4;
  v6 = sub_2647851C4();
  KeyPath = swift_getKeyPath();
  v8 = sub_264785504();
  *a1 = v11 * 0.5;
  *(a1 + 8) = v11;
  result = v12;
  *(a1 + 16) = v12;
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *(a1 + 40) = v15;
  *(a1 + 48) = v2;
  *(a1 + 56) = 256;
  *(a1 + 64) = v3;
  *(a1 + 72) = v5;
  *(a1 + 80) = KeyPath;
  *(a1 + 88) = v6;
  *(a1 + 96) = 0x3FE6666666666666;
  *(a1 + 104) = v8;
  *(a1 + 112) = v10;
  return result;
}

double sub_2646F0374@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2647845C4();
  v18 = 1;
  sub_2646F0280(&v9);
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = v16;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v27[0] = v9;
  v27[1] = v10;
  v27[2] = v11;
  v27[3] = v12;
  v27[4] = v13;
  v27[5] = v14;
  v27[6] = v15;
  v28 = v16;
  sub_2646F1F94(&v19, &v8);
  sub_2646F2004(v27);
  *(&v17[4] + 7) = v23;
  *(&v17[5] + 7) = v24;
  *(&v17[6] + 7) = v25;
  *(&v17[7] + 7) = v26;
  *(v17 + 7) = v19;
  *(&v17[1] + 7) = v20;
  *(&v17[2] + 7) = v21;
  *(&v17[3] + 7) = v22;
  v3 = v17[5];
  *(a1 + 81) = v17[4];
  *(a1 + 97) = v3;
  *(a1 + 113) = v17[6];
  *(a1 + 128) = *(&v17[6] + 15);
  v4 = v17[1];
  *(a1 + 17) = v17[0];
  *(a1 + 33) = v4;
  result = *&v17[2];
  v6 = v17[3];
  *(a1 + 49) = v17[2];
  v7 = v18;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 65) = v6;
  return result;
}

id _s15SafetyMonitorUI14CachedGeocoderC13GeocodeStatusCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2646F0670@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2646F54B0(v6, v5, type metadata accessor for SafetyCacheMapView);
  v7 = type metadata accessor for SafetyCacheMapView.Coordinator(0);
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_priorityDistanceBetweenEnrouteAnnotations] = 0;
  v9 = &v8[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_contactImageRenderingContext];
  *v9 = 0;
  v9[8] = 0;
  v10 = *(type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0) + 24);
  v11 = *MEMORY[0x277CDF3D0];
  v12 = sub_264783F74();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  sub_2646F54B0(v5, &v8[OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent], type metadata accessor for SafetyCacheMapView);
  v15.receiver = v8;
  v15.super_class = v7;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  result = sub_2646F5450(v5, type metadata accessor for SafetyCacheMapView);
  *a2 = v13;
  return result;
}

uint64_t sub_2646F07DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646F1F30(&qword_27FF77FA0, type metadata accessor for SafetyCacheMapView);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2646F0870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2646F1F30(&qword_27FF77FA0, type metadata accessor for SafetyCacheMapView);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2646F0904()
{
  sub_2646F1F30(&qword_27FF77FA0, type metadata accessor for SafetyCacheMapView);
  sub_264784834();
  __break(1u);
}

void sub_2646F095C()
{
  v0 = [objc_opt_self() defaultSettings];
  v1 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) initWithSettings_];

  qword_27FF77E90 = v1;
}

uint64_t sub_2646F09C8(void *a1, uint64_t a2)
{
  v71 = sub_264783F74();
  v74 = *(v71 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext(0);
  v7 = *(*(v78 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v78);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (&v68 - v10);
  v12 = sub_264783E24();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(MEMORY[0x277D4AA90]) init];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
  v18 = swift_allocObject();
  v80 = xmmword_264788990;
  *(v18 + 16) = xmmword_264788990;
  *(v18 + 32) = a1;
  v19 = sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
  v69 = a1;
  v20 = sub_2647857E4();

  v21 = swift_allocObject();
  *(v21 + 16) = v80;
  *(v21 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF75FB0, &unk_26478F3C0);
  v22 = sub_2647857E4();

  v23 = [v16 fetchAdditionalInfoFor:v20 keysToFetch:v22];

  v75 = v16;
  v72 = v17;
  v73 = v6;
  if (v23)
  {
    v24 = sub_2647857F4();

    v25 = v19;
    if (v24 >> 62)
    {
      result = sub_264785C14();
    }

    else
    {
      result = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v15;
    v28 = v79;
    if (result)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x26673FA30](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v29 = *(v24 + 32);
      }

      v30 = v29;
    }

    else
    {

      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
    v25 = v19;
    v27 = v15;
    v28 = v79;
  }

  sub_264783E04();
  sub_2646F54B0(a2, v11, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
  sub_2646F54B0(a2, v28, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
  v31 = sub_264783E14();
  v32 = sub_2647859F4();
  v33 = os_log_type_enabled(v31, v32);
  v70 = v25;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v68 = v27;
    v35 = v34;
    v36 = swift_slowAlloc();
    v82[0] = v36;
    *v35 = 136315650;
    v37 = *v11;
    v38 = sub_264785914();
    v79 = a2;
    v39 = v28;
    v40 = v38;
    v42 = v41;
    sub_2646F5450(v11, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v43 = sub_2646DF234(v40, v42, v82);

    *(v35 + 4) = v43;
    *(v35 + 12) = 2080;
    if (*(v39 + 8))
    {
      v44 = 1702195828;
    }

    else
    {
      v44 = 0x65736C6166;
    }

    if (*(v39 + 8))
    {
      v45 = 0xE400000000000000;
    }

    else
    {
      v45 = 0xE500000000000000;
    }

    sub_2646F5450(v39, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    v46 = sub_2646DF234(v44, v45, v82);

    *(v35 + 14) = v46;
    *(v35 + 22) = 2080;
    a2 = v79;
    v81 = vdupq_n_s64(0x4044000000000000uLL);
    type metadata accessor for CGSize(0);
    v47 = sub_264785764();
    v49 = sub_2646DF234(v47, v48, v82);

    *(v35 + 24) = v49;
    _os_log_impl(&dword_264605000, v31, v32, "#SafetyCacheMapView generating avatar image (display scale: %s, isRTL: %s, size: %s)", v35, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v36, -1, -1);
    MEMORY[0x266740650](v35, -1, -1);

    (*(v76 + 8))(v68, v77);
  }

  else
  {

    sub_2646F5450(v28, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    sub_2646F5450(v11, type metadata accessor for SafetyCacheMapView.ContactImageRenderingContext);
    (*(v76 + 8))(v27, v77);
  }

  v50 = v78;
  if (v30)
  {
    v51 = v30;
  }

  else
  {
    v51 = v69;
  }

  v52 = *a2;
  v53 = *(a2 + 8);
  v54 = *(v50 + 24);
  v56 = v73;
  v55 = v74;
  v57 = v71;
  (*(v74 + 104))(v73, *MEMORY[0x277CDF3D0], v71);
  v58 = v30;
  LOBYTE(v54) = sub_264783F64();
  (*(v55 + 8))(v56, v57);
  v59 = [objc_opt_self() scopeWithPointSize:v53 scale:0 rightToLeft:(v54 & 1) == 0 style:40.0 backgroundStyle:{40.0, v52}];
  if (qword_27FF74FF8 != -1)
  {
    swift_once();
  }

  v60 = qword_27FF77E90;
  v61 = swift_allocObject();
  *(v61 + 16) = v80;
  *(v61 + 32) = v51;
  v62 = v51;
  v63 = sub_2647857E4();

  v64 = [v60 avatarImageForContacts:v63 scope:v59];

  v65 = [v64 CGImage];
  if (v65)
  {
    v66 = v65;
    v67 = [objc_allocWithZone(type metadata accessor for NeverTemplatedImage()) initWithCGImage_];

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
    return 0;
  }

  return v67;
}

id sub_2646F1348(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for NeverTemplatedImage();
  return objc_msgSendSuper2(&v7, *a4, a3);
}

id sub_2646F13A8(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for NeverTemplatedImage();
  return objc_msgSendSuper2(&v11, *a6, a4, a5, a2);
}

id sub_2646F1590(void *a1, uint64_t a2, void *a3, const char **a4)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for NeverTemplatedImage();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

uint64_t sub_2646F166C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_264783F74();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_2646F172C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = sub_264783F74();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2646F17CC()
{
  result = sub_264783F74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2646F1864(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2646F1934(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766E8, &unk_26478F160);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646F19E4()
{
  sub_2646F1AC4();
  if (v0 <= 0x3F)
  {
    sub_2646F1B1C(319, &unk_27FF77F20, &qword_27FF766A8, &unk_26478AA80);
    if (v1 <= 0x3F)
    {
      sub_2646F1B1C(319, &qword_27FF77F30, &qword_27FF766B8, &qword_26478F190);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2646F1AC4()
{
  if (!qword_27FF77F18)
  {
    type metadata accessor for SafetyCacheMapView.Annotation(255);
    v0 = sub_264785854();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF77F18);
    }
  }
}

void sub_2646F1B1C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_264785414();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2646F1B84(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_264783AF4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

void *sub_2646F1C50(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_264783AF4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2646F1CF4()
{
  sub_2646F1DF8(319, &qword_27FF77F48, &qword_27FF77F50, 0x277CBFC40);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CLLocationCoordinate2D(319);
    if (v1 <= 0x3F)
    {
      sub_2646F1DF8(319, &unk_27FF77F58, &unk_27FF75FA0, 0x277CBDA58);
      if (v2 <= 0x3F)
      {
        sub_264783AF4();
        if (v3 <= 0x3F)
        {
          sub_2646F1E50();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2646F1DF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_264659B70(255, a3, a4);
    v5 = sub_264785B44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2646F1E50()
{
  if (!qword_27FF77F68)
  {
    v0 = sub_264785B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27FF77F68);
    }
  }
}

uint64_t sub_2646F1F30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2646F1F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F88, &qword_26478F348);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646F2004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F88, &qword_26478F348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_2646F2074(char *a1, int64_t a2, char a3)
{
  result = sub_2646F20B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2646F2094(size_t a1, int64_t a2, char a3)
{
  result = sub_2646F21C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2646F20B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78060, &qword_264789860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2646F21C0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD8, &unk_26478F3B0);
  v10 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_2646F2398(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_264785E34();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SafetyCacheMapView.Annotation(0);
        v10 = sub_264785834();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for SafetyCacheMapView.Annotation(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2646F24D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v69 = sub_264783B64();
  v8 = *(v69 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v69);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v75 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v68 = &v60 - v15;
  MEMORY[0x28223BE20](v14);
  v76 = &v60 - v16;
  v78 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v17 = *(*(v78 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v78);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = (&v60 - v22);
  result = MEMORY[0x28223BE20](v21);
  v27 = (&v60 - v26);
  v62 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v25 + 72);
    v64 = (v8 + 32);
    v66 = (v8 + 8);
    v67 = v20;
    v30 = v28 + v29 * (a3 - 1);
    v31 = -v29;
    v32 = a1 - a3;
    v77 = v28;
    v61 = v29;
    v33 = v28 + v29 * a3;
    v65 = -v29;
LABEL_8:
    v72 = v30;
    v73 = a3;
    v70 = v33;
    v71 = v32;
    v34 = v32;
    while (1)
    {
      sub_2646F54B0(v33, v27, type metadata accessor for SafetyCacheMapView.Annotation);
      sub_2646F54B0(v30, v23, type metadata accessor for SafetyCacheMapView.Annotation);
      v35 = qword_26478F438[*(v27 + 24)];
      v36 = qword_26478F438[*(v23 + 24)];
      if (v35 == v36)
      {
        v37 = v27[1];
        v38 = v23[1];
        v39 = v37 < v38;
        if (v37 == v38 && (v40 = v27[2], v41 = v23[2], v39 = v40 < v41, v40 == v41))
        {
          v42 = *(v78 + 32);
          sub_264783AF4();
          sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578]);
          if (sub_264785684())
          {
            v43 = *(v27 + 4);
            if (!v43)
            {
              goto LABEL_6;
            }

            v44 = [v43 id];
            v45 = v68;
            sub_264783B44();

            v46 = v76;
            v47 = v69;
            v74 = *v64;
            v74(v76, v45, v69);
            v48 = *(v23 + 4);
            if (!v48)
            {
              (*v66)(v46, v47);
              goto LABEL_5;
            }

            v49 = [v48 id];
            v50 = v63;
            sub_264783B44();

            v74(v75, v50, v47);
            sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0]);
            v51 = v76;
            if (sub_264785684())
            {
              v59 = *v66;
              (*v66)(v75, v47);
              v59(v51, v47);
LABEL_5:
              v20 = v67;
              v31 = v65;
LABEL_6:
              sub_2646F5450(v23, type metadata accessor for SafetyCacheMapView.Annotation);
              result = sub_2646F5450(v27, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_7:
              a3 = v73 + 1;
              v30 = v72 + v61;
              v32 = v71 - 1;
              v33 = v70 + v61;
              if (v73 + 1 == v62)
              {
                return result;
              }

              goto LABEL_8;
            }

            v52 = v75;
            v53 = MEMORY[0x26673D850](v51, v75);
            v54 = v47;
            v55 = *v66;
            v56 = v52;
            v57 = v54;
            (*v66)(v56);
            v55(v76, v57);
            v20 = v67;
            v31 = v65;
          }

          else
          {
            v53 = sub_264783A84();
          }
        }

        else
        {
          v53 = v39;
        }
      }

      else
      {
        v53 = v35 < v36;
      }

      sub_2646F5450(v23, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646F5450(v27, type metadata accessor for SafetyCacheMapView.Annotation);
      if ((v53 & 1) == 0)
      {
        goto LABEL_7;
      }

      if (!v77)
      {
        __break(1u);
        return result;
      }

      sub_2646F5518(v33, v20);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2646F5518(v20, v30);
      v30 += v31;
      v33 += v31;
      if (__CFADD__(v34++, 1))
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

uint64_t sub_2646F2A84(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v188 = a1;
  v198 = sub_264783B64();
  v8 = *(v198 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v198);
  v193 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v205 = &v178 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v194 = &v178 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v207 = &v178 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v179 = &v178 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v178 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v180 = &v178 - v24;
  MEMORY[0x28223BE20](v23);
  v183 = &v178 - v25;
  v212 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v204 = *(v212 - 8);
  v26 = *(v204 + 64);
  v27 = MEMORY[0x28223BE20](v212);
  v191 = &v178 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v210 = &v178 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v211 = &v178 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (&v178 - v34);
  v36 = MEMORY[0x28223BE20](v33);
  v203 = &v178 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v185 = &v178 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v182 = &v178 - v41;
  result = MEMORY[0x28223BE20](v40);
  v181 = &v178 - v43;
  v44 = a3[1];
  if (v44 < 1)
  {
    v46 = MEMORY[0x277D84F90];
LABEL_128:
    v35 = *v188;
    if (!*v188)
    {
      goto LABEL_166;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_130:
      v213 = v46;
      v174 = *(v46 + 2);
      if (v174 >= 2)
      {
        while (*a3)
        {
          v175 = *&v46[16 * v174];
          v176 = *&v46[16 * v174 + 24];
          sub_2646F3B90(*a3 + *(v204 + 72) * v175, *a3 + *(v204 + 72) * *&v46[16 * v174 + 16], *a3 + *(v204 + 72) * v176, v35);
          if (v5)
          {
          }

          if (v176 < v175)
          {
            goto LABEL_153;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_2646F47DC(v46);
          }

          if (v174 - 2 >= *(v46 + 2))
          {
            goto LABEL_154;
          }

          v177 = &v46[16 * v174];
          *v177 = v175;
          *(v177 + 1) = v176;
          v213 = v46;
          result = sub_2646F4750(v174 - 1);
          v46 = v213;
          v174 = *(v213 + 2);
          if (v174 <= 1)
          {
          }
        }

        goto LABEL_164;
      }
    }

LABEL_160:
    result = sub_2646F47DC(v46);
    v46 = result;
    goto LABEL_130;
  }

  v178 = v22;
  v45 = 0;
  v197 = (v8 + 32);
  v46 = MEMORY[0x277D84F90];
  v196 = (v8 + 8);
  v187 = a4;
  v190 = a3;
  while (2)
  {
    v202 = v46;
    if (v45 + 1 >= v44)
    {
      v84 = v45 + 1;
      goto LABEL_43;
    }

    v208 = v44;
    v186 = v5;
    v201 = *a3;
    v47 = v201;
    v48 = *(v204 + 72);
    v49 = &v201[v48 * (v45 + 1)];
    v50 = v181;
    sub_2646F54B0(v49, v181, type metadata accessor for SafetyCacheMapView.Annotation);
    v51 = &v47[v48 * v45];
    v52 = v182;
    sub_2646F54B0(v51, v182, type metadata accessor for SafetyCacheMapView.Annotation);
    LODWORD(v206) = sub_2646EBFDC(v50, v52);
    sub_2646F5450(v52, type metadata accessor for SafetyCacheMapView.Annotation);
    result = sub_2646F5450(v50, type metadata accessor for SafetyCacheMapView.Annotation);
    v184 = v45;
    v53 = v45 + 2;
    v209 = v48;
    v54 = &v201[v48 * (v45 + 2)];
    v55 = v185;
    do
    {
      if (v208 == v53)
      {
        v5 = v186;
        v84 = v208;
        goto LABEL_29;
      }

      sub_2646F54B0(v54, v55, type metadata accessor for SafetyCacheMapView.Annotation);
      v57 = v203;
      sub_2646F54B0(v49, v203, type metadata accessor for SafetyCacheMapView.Annotation);
      v58 = v57;
      v59 = qword_26478F438[*(v55 + 24)];
      v60 = qword_26478F438[*(v57 + 24)];
      if (v59 != v60)
      {
        v56 = v59 < v60;
        goto LABEL_7;
      }

      v61 = *(v55 + 8);
      v62 = *(v57 + 8);
      v63 = v61 < v62;
      if (v61 == v62 && (v64 = *(v55 + 16), v65 = *(v57 + 16), v63 = v64 < v65, v64 == v65))
      {
        v66 = *(v212 + 32);
        v67 = v58;
        sub_264783AF4();
        sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578]);
        if ((sub_264785684() & 1) == 0)
        {
          v56 = sub_264783A84();
          v58 = v67;
LABEL_22:
          a3 = v190;
          goto LABEL_7;
        }

        v68 = *(v55 + 32);
        if (!v68)
        {
          v56 = 0;
          v58 = v203;
          goto LABEL_22;
        }

        v69 = [v68 id];
        v70 = v180;
        sub_264783B44();

        v71 = v198;
        v72 = v183;
        v201 = *v197;
        (v201)(v183, v70, v198);
        v73 = *(v203 + 32);
        a3 = v190;
        if (v73)
        {
          v74 = v72;
          v75 = [v73 id];
          v76 = v179;
          sub_264783B44();

          v77 = v178;
          (v201)(v178, v76, v71);
          v78 = v77;
          sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0]);
          v79 = v74;
          if (sub_264785684())
          {
            a3 = v190;
            v80 = *v196;
            v81 = v198;
            (*v196)(v77, v198);
            v80(v79, v81);
            v56 = 0;
          }

          else
          {
            a3 = v190;
            v56 = MEMORY[0x26673D850](v79, v77);
            v82 = *v196;
            v83 = v198;
            (*v196)(v78, v198);
            v82(v183, v83);
          }
        }

        else
        {
          (*v196)(v72, v71);
          v56 = 0;
        }

        v46 = v202;
        v58 = v203;
        v55 = v185;
      }

      else
      {
        v56 = v63;
      }

LABEL_7:
      sub_2646F5450(v58, type metadata accessor for SafetyCacheMapView.Annotation);
      result = sub_2646F5450(v55, type metadata accessor for SafetyCacheMapView.Annotation);
      ++v53;
      v54 += v209;
      v49 += v209;
    }

    while ((v206 & 1) == (v56 & 1));
    v84 = v53 - 1;
    v5 = v186;
LABEL_29:
    a4 = v187;
    v45 = v184;
    if (v206)
    {
      if (v84 < v184)
      {
        goto LABEL_157;
      }

      if (v184 < v84)
      {
        v186 = v5;
        v85 = v209 * (v84 - 1);
        v86 = v84 * v209;
        v208 = v84;
        v87 = v184;
        v88 = v184 * v209;
        do
        {
          if (v87 != --v84)
          {
            v89 = *a3;
            if (!*a3)
            {
              goto LABEL_163;
            }

            sub_2646F5518(&v89[v88], v191);
            if (v88 < v85 || &v89[v88] >= &v89[v86])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v88 != v85)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_2646F5518(v191, &v89[v85]);
            a3 = v190;
            v46 = v202;
          }

          ++v87;
          v85 -= v209;
          v86 -= v209;
          v88 += v209;
        }

        while (v87 < v84);
        v5 = v186;
        a4 = v187;
        v45 = v184;
        v84 = v208;
      }
    }

LABEL_43:
    v90 = a3[1];
    if (v84 >= v90)
    {
      goto LABEL_77;
    }

    if (__OFSUB__(v84, v45))
    {
      goto LABEL_156;
    }

    if (v84 - v45 >= a4)
    {
LABEL_77:
      if (v84 < v45)
      {
        goto LABEL_155;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2646F48D4(0, *(v46 + 2) + 1, 1, v46);
        v46 = result;
      }

      v128 = *(v46 + 2);
      v127 = *(v46 + 3);
      v129 = v128 + 1;
      if (v128 >= v127 >> 1)
      {
        result = sub_2646F48D4((v127 > 1), v128 + 1, 1, v46);
        v46 = result;
      }

      *(v46 + 2) = v129;
      v130 = &v46[16 * v128];
      *(v130 + 4) = v45;
      *(v130 + 5) = v84;
      v195 = v84;
      v131 = *v188;
      if (!*v188)
      {
        goto LABEL_165;
      }

      if (!v128)
      {
LABEL_3:
        v44 = a3[1];
        v45 = v195;
        a4 = v187;
        if (v195 >= v44)
        {
          goto LABEL_128;
        }

        continue;
      }

      while (1)
      {
        v132 = v129 - 1;
        if (v129 >= 4)
        {
          break;
        }

        if (v129 == 3)
        {
          v133 = *(v46 + 4);
          v134 = *(v46 + 5);
          v143 = __OFSUB__(v134, v133);
          v135 = v134 - v133;
          v136 = v143;
LABEL_97:
          if (v136)
          {
            goto LABEL_144;
          }

          v149 = &v46[16 * v129];
          v151 = *v149;
          v150 = *(v149 + 1);
          v152 = __OFSUB__(v150, v151);
          v153 = v150 - v151;
          v154 = v152;
          if (v152)
          {
            goto LABEL_147;
          }

          v155 = &v46[16 * v132 + 32];
          v157 = *v155;
          v156 = *(v155 + 1);
          v143 = __OFSUB__(v156, v157);
          v158 = v156 - v157;
          if (v143)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v153, v158))
          {
            goto LABEL_151;
          }

          if (v153 + v158 >= v135)
          {
            if (v135 < v158)
            {
              v132 = v129 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v159 = &v46[16 * v129];
        v161 = *v159;
        v160 = *(v159 + 1);
        v143 = __OFSUB__(v160, v161);
        v153 = v160 - v161;
        v154 = v143;
LABEL_111:
        if (v154)
        {
          goto LABEL_146;
        }

        v162 = &v46[16 * v132];
        v164 = *(v162 + 4);
        v163 = *(v162 + 5);
        v143 = __OFSUB__(v163, v164);
        v165 = v163 - v164;
        if (v143)
        {
          goto LABEL_149;
        }

        if (v165 < v153)
        {
          goto LABEL_3;
        }

LABEL_118:
        v170 = v132 - 1;
        if (v132 - 1 >= v129)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (!*a3)
        {
          goto LABEL_162;
        }

        v171 = *&v46[16 * v170 + 32];
        v172 = *&v46[16 * v132 + 40];
        sub_2646F3B90(*a3 + *(v204 + 72) * v171, *a3 + *(v204 + 72) * *&v46[16 * v132 + 32], *a3 + *(v204 + 72) * v172, v131);
        if (v5)
        {
        }

        if (v172 < v171)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_2646F47DC(v46);
        }

        if (v170 >= *(v46 + 2))
        {
          goto LABEL_141;
        }

        v173 = &v46[16 * v170];
        *(v173 + 4) = v171;
        *(v173 + 5) = v172;
        v213 = v46;
        result = sub_2646F4750(v132);
        v46 = v213;
        v129 = *(v213 + 2);
        if (v129 <= 1)
        {
          goto LABEL_3;
        }
      }

      v137 = &v46[16 * v129 + 32];
      v138 = *(v137 - 64);
      v139 = *(v137 - 56);
      v143 = __OFSUB__(v139, v138);
      v140 = v139 - v138;
      if (v143)
      {
        goto LABEL_142;
      }

      v142 = *(v137 - 48);
      v141 = *(v137 - 40);
      v143 = __OFSUB__(v141, v142);
      v135 = v141 - v142;
      v136 = v143;
      if (v143)
      {
        goto LABEL_143;
      }

      v144 = &v46[16 * v129];
      v146 = *v144;
      v145 = *(v144 + 1);
      v143 = __OFSUB__(v145, v146);
      v147 = v145 - v146;
      if (v143)
      {
        goto LABEL_145;
      }

      v143 = __OFADD__(v135, v147);
      v148 = v135 + v147;
      if (v143)
      {
        goto LABEL_148;
      }

      if (v148 >= v140)
      {
        v166 = &v46[16 * v132 + 32];
        v168 = *v166;
        v167 = *(v166 + 1);
        v143 = __OFSUB__(v167, v168);
        v169 = v167 - v168;
        if (v143)
        {
          goto LABEL_152;
        }

        if (v135 < v169)
        {
          v132 = v129 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

    break;
  }

  if (__OFADD__(v45, a4))
  {
    goto LABEL_158;
  }

  if (v45 + a4 < v90)
  {
    v90 = v45 + a4;
  }

  if (v90 < v45)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v195 = v90;
  if (v84 == v90)
  {
    goto LABEL_77;
  }

  v186 = v5;
  v91 = *a3;
  v46 = v202;
  v92 = *(v204 + 72);
  v93 = &v91[v92 * (v84 - 1)];
  v209 = -v92;
  v184 = v45;
  v94 = v45 - v84;
  v189 = v92;
  v95 = &v91[v84 * v92];
  v192 = v35;
  v206 = v91;
  while (2)
  {
    v208 = v84;
    v199 = v95;
    v200 = v94;
    v96 = v95;
    v201 = v93;
    v97 = v93;
LABEL_56:
    sub_2646F54B0(v96, v35, type metadata accessor for SafetyCacheMapView.Annotation);
    v98 = v211;
    sub_2646F54B0(v97, v211, type metadata accessor for SafetyCacheMapView.Annotation);
    v99 = v98;
    v100 = qword_26478F438[*(v35 + 24)];
    v101 = qword_26478F438[*(v98 + 24)];
    if (v100 == v101)
    {
      v102 = v35[1];
      v103 = *(v98 + 8);
      v104 = v102 < v103;
      if (v102 == v103 && (v105 = v35[2], v106 = *(v98 + 16), v104 = v105 < v106, v105 == v106))
      {
        v107 = *(v212 + 32);
        v108 = v35;
        v109 = v98;
        sub_264783AF4();
        sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578]);
        if (sub_264785684())
        {
          v110 = *(v108 + 4);
          v35 = v108;
          if (!v110)
          {
            goto LABEL_53;
          }

          v111 = [v110 id];
          v112 = v194;
          sub_264783B44();

          v113 = *v197;
          v114 = v112;
          v115 = v198;
          (*v197)(v207, v114, v198);
          v116 = *(v211 + 32);
          if (v116)
          {
            v117 = [v116 id];
            v118 = v205;
            v119 = v193;
            sub_264783B44();

            v113(v118, v119, v115);
            sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0]);
            if ((sub_264785684() & 1) == 0)
            {
              v120 = v207;
              v121 = v205;
              v122 = MEMORY[0x26673D850](v207, v205);
              v123 = *v196;
              (*v196)(v121, v115);
              v123(v120, v115);
              v46 = v202;
              v99 = v211;
              v35 = v192;
              goto LABEL_69;
            }

            v126 = *v196;
            (*v196)(v205, v115);
            v126(v207, v115);
            v46 = v202;
            v35 = v192;
          }

          else
          {
            (*v196)(v207, v115);
            v46 = v202;
          }

LABEL_53:
          sub_2646F5450(v211, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646F5450(v35, type metadata accessor for SafetyCacheMapView.Annotation);
          v91 = v206;
LABEL_54:
          v84 = v208 + 1;
          v93 = &v201[v189];
          v94 = v200 - 1;
          v95 = v199 + v189;
          if (v208 + 1 == v195)
          {
            v5 = v186;
            a3 = v190;
            v45 = v184;
            v84 = v195;
            goto LABEL_77;
          }

          continue;
        }

        v122 = sub_264783A84();
        v99 = v109;
        v35 = v108;
LABEL_69:
        v91 = v206;
      }

      else
      {
        v122 = v104;
      }
    }

    else
    {
      v122 = v100 < v101;
    }

    break;
  }

  sub_2646F5450(v99, type metadata accessor for SafetyCacheMapView.Annotation);
  result = sub_2646F5450(v35, type metadata accessor for SafetyCacheMapView.Annotation);
  if ((v122 & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v91)
  {
    v124 = v210;
    sub_2646F5518(v96, v210);
    swift_arrayInitWithTakeFrontToBack();
    sub_2646F5518(v124, v97);
    v97 += v209;
    v96 += v209;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_54;
    }

    goto LABEL_56;
  }

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
  return result;
}

uint64_t sub_2646F3B90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v107 = sub_264783B64();
  v8 = *(v107 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v107);
  v12 = v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v103 = (v100 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v104 = v100 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v106 = (v100 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = v100 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v105 = (v100 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v109 = v100 - v24;
  MEMORY[0x28223BE20](v23);
  v110 = v100 - v25;
  v113 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v26 = *(*(v113 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v113);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (v100 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (v100 - v32);
  result = MEMORY[0x28223BE20](v31);
  v37 = (v100 - v36);
  v111 = *(v38 + 72);
  if (!v111)
  {
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v111 == -1)
  {
    goto LABEL_94;
  }

  v39 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v111 == -1)
  {
    goto LABEL_95;
  }

  v112 = a2;
  v40 = (a2 - a1) / v111;
  v116 = a1;
  v115 = a4;
  if (v40 >= v39 / v111)
  {
    v43 = v39 / v111 * v111;
    v110 = v35;
    if (a4 < v112 || v112 + v43 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != v112)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v43;
    if (v43 >= 1)
    {
      v72 = -v111;
      v100[1] = v12;
      v101 = (v8 + 8);
      v73 = a4 + v43;
      v111 = -v111;
      v105 = (v8 + 32);
      do
      {
        v102 = v71;
        v74 = v112;
        v112 += v72;
        v109 = v74;
        while (1)
        {
          if (v74 <= a1)
          {
            v116 = v74;
            v114 = v102;
            goto LABEL_92;
          }

          v75 = a4;
          v76 = a3;
          v77 = v73 + v72;
          sub_2646F54B0(v77, v30, type metadata accessor for SafetyCacheMapView.Annotation);
          v78 = v110;
          sub_2646F54B0(v112, v110, type metadata accessor for SafetyCacheMapView.Annotation);
          v79 = v78;
          v80 = qword_26478F438[*(v30 + 24)];
          v81 = qword_26478F438[*(v78 + 24)];
          v108 = v71;
          if (v80 == v81)
          {
            v82 = v30[1];
            v83 = *(v78 + 8);
            v84 = v82 < v83;
            if (v82 == v83 && (v85 = v30[2], v86 = *(v78 + 16), v84 = v85 < v86, v85 == v86))
            {
              v87 = *(v113 + 32);
              v88 = v79;
              sub_264783AF4();
              sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578]);
              if (sub_264785684())
              {
                v89 = *(v30 + 4);
                if (v89)
                {
                  v90 = [v89 id];
                  v91 = v104;
                  sub_264783B44();

                  v92 = v106;
                  v93 = v107;
                  v100[0] = *v105;
                  (v100[0])(v106, v91, v107);
                  v94 = *(v110 + 32);
                  if (v94)
                  {
                    v95 = [v94 id];
                    sub_264783B44();

                    v96 = v103;
                    (v100[0])();
                    sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0]);
                    if (sub_264785684())
                    {
                      v97 = v96;
                      v98 = *v101;
                      (*v101)(v97, v93);
                      v98(v106, v93);
                      v99 = 0;
                    }

                    else
                    {
                      v99 = MEMORY[0x26673D850](v106, v96);
                      v100[0] = *v101;
                      (v100[0])(v96, v93);
                      (v100[0])(v106, v93);
                    }
                  }

                  else
                  {
                    (*v101)(v92, v93);
                    v99 = 0;
                  }
                }

                else
                {
                  v99 = 0;
                }

                v79 = v110;
              }

              else
              {
                v99 = sub_264783A84();
                v79 = v88;
              }
            }

            else
            {
              v99 = v84;
            }
          }

          else
          {
            v99 = v80 < v81;
          }

          a3 = &v76[v111];
          sub_2646F5450(v79, type metadata accessor for SafetyCacheMapView.Annotation);
          sub_2646F5450(v30, type metadata accessor for SafetyCacheMapView.Annotation);
          if (v99)
          {
            break;
          }

          v71 = v77;
          if (v76 < v73 || a3 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v76 != v73)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v73 = v77;
          a4 = v75;
          v45 = v77 > v75;
          v72 = v111;
          v74 = v109;
          if (!v45)
          {
            v112 = v109;
            goto LABEL_91;
          }
        }

        if (v76 < v109 || a3 >= v109)
        {
          swift_arrayInitWithTakeFrontToBack();
          v71 = v108;
          v72 = v111;
        }

        else
        {
          v71 = v108;
          v72 = v111;
          if (v76 != v109)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a4 = v75;
      }

      while (v73 > v75);
    }

LABEL_91:
    v116 = v112;
    v114 = v71;
  }

  else
  {
    v41 = v40 * v111;
    v42 = v111;
    if (a4 < a1 || a1 + v41 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v41;
    v114 = (a4 + v41);
    v45 = v41 < 1;
    v46 = v112;
    if (!v45 && v112 < a3)
    {
      v102 = (v8 + 8);
      v103 = (v8 + 32);
      do
      {
        sub_2646F54B0(v46, v37, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646F54B0(a4, v33, type metadata accessor for SafetyCacheMapView.Annotation);
        v48 = qword_26478F438[*(v37 + 24)];
        v49 = qword_26478F438[*(v33 + 24)];
        if (v48 == v49)
        {
          v50 = v37[1];
          v51 = v33[1];
          v52 = v50 < v51;
          if (v50 == v51 && (v53 = v37[2], v54 = v33[2], v52 = v53 < v54, v53 == v54))
          {
            v112 = v46;
            v55 = *(v113 + 32);
            sub_264783AF4();
            sub_2646F1F30(&qword_27FF78038, MEMORY[0x277CC9578]);
            if (sub_264785684())
            {
              v56 = *(v37 + 4);
              if (!v56)
              {
                goto LABEL_42;
              }

              v106 = a4;
              v57 = [v56 id];
              v58 = v109;
              sub_264783B44();

              v59 = v110;
              v60 = v58;
              v61 = v107;
              v104 = *v103;
              (v104)(v110, v60, v107);
              v62 = *(v33 + 4);
              if (!v62)
              {
                (*v102)(v59, v61);
                a4 = v106;
                goto LABEL_42;
              }

              v63 = [v62 id];
              sub_264783B44();

              v64 = v105;
              (v104)();
              sub_2646F1F30(&qword_27FF78040, MEMORY[0x277CC95F0]);
              v65 = v110;
              if (sub_264785684())
              {
                v66 = v64;
                v67 = *v102;
                (*v102)(v66, v61);
                v67(v65, v61);
                a4 = v106;
                v42 = v111;
LABEL_42:
                sub_2646F5450(v33, type metadata accessor for SafetyCacheMapView.Annotation);
                sub_2646F5450(v37, type metadata accessor for SafetyCacheMapView.Annotation);
                v46 = v112;
                goto LABEL_43;
              }

              v68 = MEMORY[0x26673D850](v65, v64);
              v69 = v64;
              v70 = *v102;
              (*v102)(v69, v61);
              v70(v110, v61);
              v46 = v112;
              a4 = v106;
            }

            else
            {
              v68 = sub_264783A84();
              v46 = v112;
            }
          }

          else
          {
            v68 = v52;
          }
        }

        else
        {
          v68 = v48 < v49;
        }

        sub_2646F5450(v33, type metadata accessor for SafetyCacheMapView.Annotation);
        sub_2646F5450(v37, type metadata accessor for SafetyCacheMapView.Annotation);
        v42 = v111;
        if (v68)
        {
          if (a1 < v46 || a1 >= v46 + v111)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 += v42;
          goto LABEL_49;
        }

LABEL_43:
        if (a1 < a4 || a1 >= a4 + v42)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v115 = a4 + v42;
        a4 += v42;
LABEL_49:
        a1 += v42;
        v116 = a1;
      }

      while (a4 < v44 && v46 < a3);
    }
  }

LABEL_92:
  sub_2646F47F0(&v116, &v115, &v114);
  return 1;
}

uint64_t sub_2646F4750(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2646F47DC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2646F47F0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2646F48D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF78048, &unk_26478FCD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_2646F4A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - v6;
  sub_26460CCE8(a1, &v10 - v6, &qword_27FF766A8, &unk_26478AA80);
  v8 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  result = (*(*(v8 - 8) + 48))(v7, 1, v8);
  if (result != 1)
  {
    return sub_2646F5518(v7, a2);
  }

  __break(1u);
  return result;
}

void *sub_2646F4B58(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF78050, &qword_26478F420);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v71 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v57 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF766A8, &unk_26478AA80);
  v7 = *(v66 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v66);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - v15;
  MEMORY[0x28223BE20](v14);
  v70 = &v57 - v17;
  v67 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v69 = *(v67 - 8);
  v18 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v72 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v20 = a1[1];
  v22 = a1[2];
  v75 = a1[3];
  v76 = v20;
  v80 = a1[4];
  v81 = v22;
  v83[0] = v21;
  if (v21 >> 62)
  {
LABEL_54:
    v77 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_264785C14();
  }

  else
  {
    v77 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v69;
  v58 = *(v69 + 80);
  v74 = MEMORY[0x277D84F90];
  v57 = (v58 + 32) & ~v58;
  v73 = MEMORY[0x277D84F90] + v57;
  v25 = a1[6];
  v60 = a1[5];
  v59 = v25;
  sub_26460CCE8(v83, &v82, &qword_27FF78028, &qword_26478F408);
  v78 = v21;
  v79 = v21 & 0xC000000000000001;
  v64 = (v7 + 6);
  v65 = (v7 + 7);
  v63 = (v24 + 56);
  v62 = (v24 + 48);

  v26 = 0;
  v27 = 0;
  a1 = &qword_27FF766A8;
  v21 = &unk_26478AA80;
  if (v23)
  {
    goto LABEL_5;
  }

LABEL_4:
  while (1)
  {
    v28 = 1;
    v27 = v23;
LABEL_16:
    v31 = v66;
    v32 = v68;
    (*v65)(v68, v28, 1, v66);
    v33 = v32;
    v34 = v71;
    sub_26460E7E4(v33, v71, &unk_27FF78050, &qword_26478F420);
    if ((*v64)(v34, 1, v31) != 1)
    {
      v35 = v61;
      sub_26460E7E4(v71, v61, &qword_27FF766A8, &unk_26478AA80);
      v60(v35);
      sub_26460CD50(v35, &qword_27FF766A8, &unk_26478AA80);
    }

    v7 = v70;
    v36 = v67;
    (*v63)();
    if ((*v62)(v7, 1, v36) == 1)
    {
      break;
    }

    sub_2646F5518(v7, v72);
    if (v26)
    {
      v7 = v74;
      v37 = __OFSUB__(v26--, 1);
      if (v37)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v38 = v74[3];
    if (((v38 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_51;
    }

    v39 = v38 & 0xFFFFFFFFFFFFFFFELL;
    if (v39 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = v39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77FD8, &unk_26478F3B0);
    v41 = *(v69 + 72);
    v42 = v57;
    v7 = swift_allocObject();
    v43 = _swift_stdlib_malloc_size(v7);
    if (!v41)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v44 = v43 - v42;
    if (v43 - v42 == 0x8000000000000000 && v41 == -1)
    {
      goto LABEL_53;
    }

    v46 = v42;
    v47 = v44 / v41;
    v7[2] = v40;
    v7[3] = 2 * (v44 / v41);
    v48 = v7 + v46;
    v49 = v74[3] >> 1;
    v50 = v49 * v41;
    if (v74[2])
    {
      if (v7 < v74 || v48 >= v74 + v46 + v50)
      {
        v73 = v7 + v46;
        swift_arrayInitWithTakeFrontToBack();
LABEL_38:
        v48 = v73;
      }

      else if (v7 != v74)
      {
        v73 = v7 + v46;
        swift_arrayInitWithTakeBackToFront();
        goto LABEL_38;
      }

      v74[2] = 0;
    }

    v73 = v48 + v50;
    v51 = (v47 & 0x7FFFFFFFFFFFFFFFLL) - v49;

    v37 = __OFSUB__(v51, 1);
    v26 = v51 - 1;
    if (v37)
    {
      goto LABEL_50;
    }

LABEL_41:
    v52 = v73;
    sub_2646F5518(v72, v73);
    v73 = v52 + *(v69 + 72);
    v74 = v7;
    if (v27 != v23)
    {
      while (1)
      {
LABEL_5:
        if (v79)
        {
          v29 = MEMORY[0x26673FA30](v27, v78);
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_48;
          }
        }

        else
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          if (v27 >= *(v77 + 16))
          {
            goto LABEL_49;
          }

          v29 = *(v78 + 8 * v27 + 32);
          swift_unknownObjectRetain();
          v30 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_48;
          }
        }

        v82 = v29;
        v76(&v82);
        swift_unknownObjectRelease();
        sub_26460E7E4(v13, v16, &qword_27FF766A8, &unk_26478AA80);
        v7 = v80;
        if (v75(v16))
        {
          sub_26460E7E4(v16, v68, &qword_27FF766A8, &unk_26478AA80);
          v28 = 0;
          v27 = v30;
          goto LABEL_16;
        }

        sub_26460CD50(v16, &qword_27FF766A8, &unk_26478AA80);
        ++v27;
        if (v30 == v23)
        {
          goto LABEL_4;
        }
      }
    }
  }

  sub_26460CD50(v83, &qword_27FF78028, &qword_26478F408);

  sub_26460CD50(v7, &qword_27FF766A8, &unk_26478AA80);
  result = v74;
  v54 = v74[3];
  if (v54 >= 2)
  {
    v55 = v54 >> 1;
    v37 = __OFSUB__(v55, v26);
    v56 = v55 - v26;
    if (v37)
    {
      __break(1u);
    }

    else
    {
      v74[2] = v56;
    }
  }

  return result;
}

uint64_t sub_2646F526C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1)
  {
    if (!v5)
    {
      return 0;
    }

    sub_264659B70(0, &qword_27FF77F50, 0x277CBFC40);
    v6 = v5;
    v7 = v4;
    v8 = sub_264785AE4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (vabdd_f64(*(a1 + 8), *(a2 + 8)) >= 0.000001 || vabdd_f64(*(a1 + 16), *(a2 + 16)) >= 0.000001 || (sub_264692780(*(a1 + 24), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(a1 + 32);
  v10 = *(a2 + 32);
  if (!v9)
  {
    if (!v10)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v10)
  {
    return 0;
  }

  sub_264659B70(0, &unk_27FF75FA0, 0x277CBDA58);
  v11 = v10;
  v12 = v9;
  v13 = sub_264785AE4();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v14 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v15 = *(v14 + 32);
  if ((sub_264783AB4() & 1) == 0)
  {
    return 0;
  }

  v16 = *(v14 + 36);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = a2 + v16;
  result = *(v19 + 8);
  if ((v18 & 1) == 0)
  {
    return (*v17 == *v19) & ~result;
  }

  return result;
}

uint64_t sub_2646F53EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646F5450(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2646F54B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2646F5518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2646F557C()
{
  MEMORY[0x2667406F0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2646F55B4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_2646F55FC(uint64_t a1, void *a2)
{
  v30 = a2;
  v3 = sub_264783E24();
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SafetyCacheMapView.Annotation(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = MEMORY[0x277D84F90];
    v14 = *(v8 + 72);
    while (1)
    {
      sub_2646F54B0(v12, v10, type metadata accessor for SafetyCacheMapView.Annotation);
      if (v10[24] > 2u || v10[24])
      {
        v15 = sub_264785E84();

        if ((v15 & 1) == 0)
        {
          v16 = *(v10 + 1);
          v17 = *(v10 + 2);
          sub_2646F5450(v10, type metadata accessor for SafetyCacheMapView.Annotation);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_2647036FC(0, *(v13 + 2) + 1, 1, v13);
          }

          v19 = *(v13 + 2);
          v18 = *(v13 + 3);
          if (v19 >= v18 >> 1)
          {
            v13 = sub_2647036FC((v18 > 1), v19 + 1, 1, v13);
          }

          *(v13 + 2) = v19 + 1;
          v20 = &v13[16 * v19];
          *(v20 + 4) = v16;
          *(v20 + 5) = v17;
          goto LABEL_5;
        }
      }

      else
      {
      }

      sub_2646F5450(v10, type metadata accessor for SafetyCacheMapView.Annotation);
LABEL_5:
      v12 += v14;
      if (!--v11)
      {
        goto LABEL_15;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_15:
  v21 = v27;
  sub_264783E04();

  v22 = sub_264783E14();
  v23 = sub_2647859F4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(v13 + 2);

    _os_log_impl(&dword_264605000, v22, v23, "#SafetyCacheMapView, connecting %ld annotations to make route on map", v24, 0xCu);
    MEMORY[0x266740650](v24, -1, -1);
  }

  else
  {
  }

  v25 = v30;
  (*(v28 + 8))(v21, v29);
  v26 = [objc_opt_self() polylineWithCoordinates:v13 + 32 count:*(v13 + 2)];

  [v25 addOverlay_];
}

unint64_t sub_2646F5A40()
{
  result = qword_27FF78018;
  if (!qword_27FF78018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF78010, &qword_26478F400);
    sub_26460CDF0(&qword_27FF78020, &qword_27FF78028, &qword_26478F408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF78018);
  }

  return result;
}

id sub_2646F5B10(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SafetyCacheMapView(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  v14 = OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapView11Coordinator_parent;
  swift_beginAccess();
  sub_2646F54B0(v1 + v14, v13, type metadata accessor for SafetyCacheMapView);
  v15 = &v13[*(v4 + 24)];
  v16 = *(v15 + 1);
  v17 = v15[48];
  v44 = *v15;
  v45 = v16;
  v18 = *(v15 + 2);
  v46 = *(v15 + 1);
  v47 = v18;
  v48 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF77F98, &qword_26478F388);
  MEMORY[0x26673F100](&v41);
  v20 = v43;
  sub_2646F5450(v13, type metadata accessor for SafetyCacheMapView);
  if (v20)
  {
    goto LABEL_4;
  }

  sub_2646F54B0(v2 + v14, v11, type metadata accessor for SafetyCacheMapView);
  v21 = &v11[*(v4 + 24)];
  v22 = *(v21 + 1);
  v23 = v21[48];
  v44 = *v21;
  v45 = v22;
  v24 = *(v21 + 2);
  v46 = *(v21 + 1);
  v47 = v24;
  v48 = v23;
  MEMORY[0x26673F100](&v41, v19);
  v39 = v42;
  v40 = v41;
  v25 = v43;
  result = sub_2646F5450(v11, type metadata accessor for SafetyCacheMapView);
  if ((v25 & 1) == 0)
  {
    result = [a1 region];
    v28.f64[1] = v27;
    v30.f64[1] = v29;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v40, v28), vceqq_f64(v39, v30)))) & 1) == 0)
    {
LABEL_4:
      sub_2646F54B0(v2 + v14, v8, type metadata accessor for SafetyCacheMapView);
      [a1 region];
      v31 = &v8[*(v4 + 24)];
      v32 = *(v31 + 1);
      v33 = v31[48];
      v44 = *v31;
      v45 = v32;
      v34 = *(v31 + 2);
      v46 = *(v31 + 1);
      v47 = v34;
      v48 = v33;
      v41.f64[0] = v35;
      v41.f64[1] = v36;
      v42.f64[0] = v37;
      v42.f64[1] = v38;
      v43 = 0;

      sub_2647853E4();
      sub_2646F5450(v8, type metadata accessor for SafetyCacheMapView);
    }
  }

  return result;
}

uint64_t sub_2646F5DD4(void *a1)
{
  v2 = v1;
  v4 = sub_264785594();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2647855C4();
  v65 = *(v67 - 1);
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v67);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_264783E24();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v59 - v16;
  sub_264783E04();
  v18 = sub_264783E14();
  v19 = sub_2647859F4();
  v20 = os_log_type_enabled(v18, v19);
  v68 = v10;
  if (v20)
  {
    v21 = v4;
    v22 = a1;
    v23 = v15;
    v24 = v11;
    v25 = v5;
    v26 = v2;
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_264605000, v18, v19, "#SafetyCacheMapView, didSelect is called.", v27, 2u);
    v28 = v27;
    v2 = v26;
    v5 = v25;
    v11 = v24;
    v15 = v23;
    a1 = v22;
    v4 = v21;
    v10 = v68;
    MEMORY[0x266740650](v28, -1, -1);
  }

  v29 = *(v11 + 8);
  v29(v17, v10);
  if (![a1 annotation])
  {
    goto LABEL_26;
  }

  type metadata accessor for SafetyCacheMapView._Annotation(0);
  v30 = swift_dynamicCastClass();
  if (v30)
  {
    v61 = v4;
    v62 = v5;
    v31 = v30 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation;
    v32 = *(v30 + OBJC_IVAR____TtCV15SafetyMonitorUI18SafetyCacheMapViewP33_0136281DCC3F5D58BE1F34FEE765118611_Annotation_wrappedAnnotation + 24);
    if (v32 > 2)
    {
      if (v32 == 3)
      {
        v33 = v29;
        v63 = v2;
        v34 = v10;
        v60 = v30;
      }

      else
      {
        if (v32 == 4)
        {
          swift_unknownObjectRelease();

          goto LABEL_26;
        }

        v33 = v29;
        v63 = v2;
        v34 = v10;
        v60 = v30;
      }
    }

    else
    {
      v60 = v30;
      v63 = v2;
      v33 = v29;
      v34 = v10;
    }

    v35 = sub_264785E84();

    if (v35)
    {
      swift_unknownObjectRelease();
      v10 = v34;
LABEL_14:
      v2 = v63;
      v29 = v33;
      goto LABEL_26;
    }

    v36 = *(v31 + 24);
    if (v36 > 2)
    {
      if (v36 == 3)
      {
        v10 = v34;
        v37 = v62;
      }

      else
      {
        v10 = v34;
        v37 = v62;
        if (v36 != 4)
        {
          swift_unknownObjectRelease();

          goto LABEL_14;
        }
      }

      v2 = v63;
      v29 = v33;
    }

    else if (*(v31 + 24))
    {
      v37 = v62;
      v29 = v33;
      v10 = v34;
      v2 = v63;
    }

    else
    {
      v10 = v34;
      v37 = v62;
      v2 = v63;
      v29 = v33;
    }

    v38 = sub_264785E84();

    if ((v38 & 1) == 0)
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      v51 = sub_264785A44();
      v52 = swift_allocObject();
      v53 = v60;
      *(v52 + 16) = v2;
      *(v52 + 24) = v53;
      aBlock[4] = sub_2646F6A98;
      aBlock[5] = v52;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_13;
      v54 = _Block_copy(aBlock);
      v55 = v2;
      swift_unknownObjectRetain();

      v56 = v64;
      sub_2647855B4();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2646F1F30(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      v57 = v66;
      v58 = v61;
      sub_264785BD4();
      MEMORY[0x26673F780](0, v56, v57, v54);
      _Block_release(v54);
      swift_unknownObjectRelease();

      (*(v37 + 8))(v57, v58);
      return (*(v65 + 8))(v56, v67);
    }
  }

  swift_unknownObjectRelease();
LABEL_26:
  sub_264783E04();
  v39 = v2;
  v40 = sub_264783E14();
  v41 = sub_2647859F4();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    aBlock[0] = v43;
    *v42 = 136315394;
    v44 = v39;
    v45 = [v44 description];
    v46 = sub_264785724();
    v67 = v29;
    v48 = v47;

    v49 = sub_2646DF234(v46, v48, aBlock);

    *(v42 + 4) = v49;
    *(v42 + 12) = 2080;
    *(v42 + 14) = sub_2646DF234(0xD000000000000015, 0x8000000264799090, aBlock);
    _os_log_impl(&dword_264605000, v40, v41, "#SafetyCacheMapView, %s, %s: early return for selecting enroute annotation", v42, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v43, -1, -1);
    MEMORY[0x266740650](v42, -1, -1);

    return v67(v15, v68);
  }

  else
  {

    return (v29)(v15, v10);
  }
}

id sub_2646F67C4(uint64_t a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_allocWithZone(MEMORY[0x277CD4F30]);
    swift_unknownObjectRetain();
    v5 = [v4 initWithPolyline_];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 systemBlueColor];
    [v7 setStrokeColor_];

    [v7 setLineWidth_];
    [v7 setLineCap_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF769A0, &unk_26478BD70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_26478B4D0;
    sub_264659B70(0, &qword_27FF75EF8, 0x277CCABB0);
    *(v9 + 32) = sub_264785AC4();
    *(v9 + 40) = sub_264785AC4();
    v10 = sub_2647857E4();

    [v7 setLineDashPattern_];

LABEL_5:
    swift_unknownObjectRelease();
    return v7;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = objc_allocWithZone(MEMORY[0x277CD4DA8]);
    swift_unknownObjectRetain();
    v14 = [v13 initWithCircle_];
    v15 = objc_opt_self();
    v7 = v14;
    v16 = [v15 systemBlueColor];
    v17 = [v16 colorWithAlphaComponent_];

    [v7 setFillColor_];
    goto LABEL_5;
  }

  v19 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

  return [v19 initWithOverlay_];
}

uint64_t sub_2646F6A58()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2646F6B34()
{
  v1 = v0;
  v2 = sub_264783E24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  v10 = &v0[OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel__cacheMapViewModel];
  swift_beginAccess();
  v11 = *(v10 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  sub_264783ED4();

  v31 = v37;
  v32 = v38;
  v33 = v39;
  v34 = v40;
  v29 = v35;
  v30 = v36;
  sub_2646BBAB4(&v29);

  sub_2646F8DA0();
  sub_2646F77C4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v36)
  {
    v13 = *(&v37 + 1);
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    v14 = *(&v37 + 1);
    sub_26460CD50(&v29, &qword_27FF756F8, &qword_264787DF0);
    if (v13)
    {

      sub_264783DE4();
      v15 = sub_264783E14();
      v16 = sub_2647859F4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_264605000, v15, v16, "#SafetyCacheDetailViewModel: trying to resolve most recent location when safety cache is set", v17, 2u);
        MEMORY[0x266740650](v17, -1, -1);
      }

      return (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    sub_26460CD50(&v29, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264783DE4();
  v19 = v1;
  v20 = sub_264783E14();
  v21 = sub_2647859D4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28 = v23;
    *v22 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_264783ED4();

    v31 = v37;
    v32 = v38;
    v33 = v39;
    v34 = v40;
    v29 = v35;
    v30 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF756F8, &qword_264787DF0);
    v24 = sub_264785764();
    v26 = sub_2646DF234(v24, v25, &v28);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_264605000, v20, v21, "#SafetyCacheDetailViewModel: missing most recent location in safety cache: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x266740650](v23, -1, -1);
    MEMORY[0x266740650](v22, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_2646F6FB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();
}

uint64_t sub_2646F7030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  return v1;
}

double sub_2646F70F4()
{
  v1 = v0 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize;
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2646F713C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_routeIconSize);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_2646F71F4()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2646F7238(char a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_isTransparencyMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2646F72E8(uint64_t a1, uint64_t *a2)
{
  sub_26460CCE8(a1, v6, &qword_27FF75710, &qword_264787E40);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  sub_26460CE38(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_2646F735C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  return sub_26460CCE8(v1 + v3, a1, &qword_27FF75710, &qword_264787E40);
}

uint64_t sub_2646F73C4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_callFunctionProvider;
  swift_beginAccess();
  sub_26460CE38(a1, v1 + v3);
  return swift_endAccess();
}

void sub_2646F7484(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_2646F74E4()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_2646F7530(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_contact;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2646F75E8()
{
  v1 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2646F762C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SafetyMonitorUI26SafetyCacheDetailViewModel_sessionType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void sub_2646F76DC(__int128 *a1)
{
  v1 = a1[3];
  v10 = a1[2];
  v11 = v1;
  v2 = a1[5];
  v12 = a1[4];
  v13 = v2;
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    v7[8] = v10;
    v7[9] = v11;
    v7[10] = v12;
    v7[11] = v13;
    v7[6] = v8;
    v7[7] = v9;
    sub_26460CCE8(&v8, v7, &qword_27FF756F8, &qword_264787DF0);
    v6 = v5;
    sub_264783EE4();
    sub_2646F6B34();
  }
}

uint64_t sub_2646F77C4()
{
  v1 = v0;
  v41 = sub_264783E24();
  v40 = *(v41 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_264785594();
  v38 = *(v39 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2647855C4();
  v36 = *(v37 - 8);
  v8 = *(v36 + 64);
  MEMORY[0x28223BE20](v37);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2647855A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_264783ED4();

  if (v51)
  {
    v16 = *(&v54 + 1);
    v17 = v55;
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v44 = v50;
    v45 = v51;
    sub_2646C6804(*(&v54 + 1), v55);
    sub_26460CD50(&v44, &qword_27FF756F8, &qword_264787DF0);
    if (v17 >> 60 != 15)
    {
      sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
      (*(v12 + 104))(v15, *MEMORY[0x277D851C0], v11);
      v41 = sub_264785A64();
      (*(v12 + 8))(v15, v11);
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = v1;
      aBlock[4] = sub_264703840;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_264659F60;
      aBlock[3] = &block_descriptor_14;
      v19 = _Block_copy(aBlock);
      sub_2646C6804(v16, v17);
      v20 = v1;
      sub_2647855B4();
      v42 = MEMORY[0x277D84F90];
      sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
      sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
      v21 = v39;
      sub_264785BD4();
      v22 = v41;
      MEMORY[0x26673F780](0, v10, v7, v19);
      _Block_release(v19);

      sub_264655900(v16, v17);
      (*(v38 + 8))(v7, v21);
      (*(v36 + 8))(v10, v37);
    }
  }

  else
  {
    v46 = v52;
    v47 = v53;
    v48 = v54;
    v49 = v55;
    v44 = v50;
    v45 = v51;
    sub_26460CD50(&v44, &qword_27FF756F8, &qword_264787DF0);
  }

  sub_264783DE4();
  v24 = v1;
  v25 = sub_264783E14();
  v26 = sub_2647859B4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v50 = v28;
    *v27 = 136315394;
    v29 = v24;
    v30 = [v29 description];
    v31 = sub_264785724();
    v33 = v32;

    v34 = sub_2646DF234(v31, v33, &v50);

    *(v27 + 4) = v34;
    *(v27 + 12) = 2080;
    *(v27 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, &v50);
    _os_log_impl(&dword_264605000, v25, v26, "%s, %s: Destination map item is not available in the safetyCacheViewModel", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266740650](v28, -1, -1);
    MEMORY[0x266740650](v27, -1, -1);
  }

  return (*(v40 + 8))(v4, v41);
}

void sub_2646F7EBC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_opt_self();
  v5 = sub_264783A04();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  v9[4] = sub_264706914;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26464CCBC;
  v9[3] = &block_descriptor_203_0;
  v7 = _Block_copy(v9);
  v8 = a3;

  [v4 _mapItemFromHandle_completionHandler_];
  _Block_release(v7);
}

uint64_t sub_2646F7FCC(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_264785594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  (MEMORY[0x28223BE20])();
  v71 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_2647855C4();
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  (MEMORY[0x28223BE20])();
  v12 = &v62[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_264783E24();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = (MEMORY[0x28223BE20])();
  v18 = &v62[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v20 = &v62[-v19];
  if (a2)
  {
    v68 = v7;
    v69 = v6;
    sub_264783DE4();
    v21 = a3;
    v22 = sub_264783E14();
    v23 = sub_2647859D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v64 = v22;
      v25 = v24;
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v25 = 136315394;
      v26 = v21;
      v27 = [v26 description];
      v63 = v23;
      v28 = v18;
      v29 = v27;
      v30 = sub_264785724();
      v66 = a1;
      v67 = a3;
      v31 = v30;
      v32 = v14;
      v33 = v12;
      v34 = v13;
      v36 = v35;

      v18 = v28;
      v37 = sub_2646DF234(v31, v36, aBlock);
      v13 = v34;
      v12 = v33;
      v14 = v32;
      a1 = v66;

      *(v25 + 4) = v37;
      a3 = v67;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, aBlock);
      v38 = v64;
      _os_log_impl(&dword_264605000, v64, v63, "#DetailView, %s, %s: Error resolving map item from map data handle", v25, 0x16u);
      v39 = v65;
      swift_arrayDestroy();
      MEMORY[0x266740650](v39, -1, -1);
      MEMORY[0x266740650](v25, -1, -1);
    }

    else
    {
    }

    (*(v14 + 8))(v20, v13);
    v7 = v68;
    v6 = v69;
  }

  if (a1)
  {
    sub_264659B70(0, &qword_27FF76980, 0x277D85C78);
    v40 = a1;
    v41 = sub_264785A44();
    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    *(v42 + 24) = v40;
    aBlock[4] = sub_26470695C;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_264659F60;
    aBlock[3] = &block_descriptor_209;
    v43 = _Block_copy(aBlock);
    v44 = a3;
    v45 = v40;

    sub_2647855B4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_264703CEC(&qword_27FF75CD8, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FF76990, &qword_264788A90);
    sub_26460CDF0(&qword_27FF75CE0, &unk_27FF76990, &qword_264788A90);
    v46 = v71;
    sub_264785BD4();
    MEMORY[0x26673F780](0, v12, v46, v43);
    _Block_release(v43);

    (*(v7 + 8))(v46, v6);
    return (*(v70 + 8))(v12, v72);
  }

  else
  {
    sub_264783DE4();
    v48 = a3;
    v49 = sub_264783E14();
    v50 = sub_2647859D4();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v72 = v13;
      aBlock[0] = v52;
      v53 = v52;
      *v51 = 136315394;
      v54 = v48;
      v55 = [v54 description];
      v56 = v14;
      v57 = sub_264785724();
      v58 = v18;
      v60 = v59;

      v61 = sub_2646DF234(v57, v60, aBlock);

      *(v51 + 4) = v61;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_2646DF234(0xD00000000000001BLL, 0x80000002647990B0, aBlock);
      _os_log_impl(&dword_264605000, v49, v50, "#DetailView, %s, %s: Fail to resolve destination map item", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266740650](v53, -1, -1);
      MEMORY[0x266740650](v51, -1, -1);

      return (*(v56 + 8))(v58, v72);
    }

    else
    {

      return (*(v14 + 8))(v18, v13);
    }
  }
}