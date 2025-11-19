uint64_t sub_14C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC31SystemCommandsSuggestionsPlugin35SystemCommandsSuggestionsRepository_templateDirectory;
  v4 = sub_40E4();
  v5 = sub_27A8(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_1538(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC31SystemCommandsSuggestionsPlugin35SystemCommandsSuggestionsRepository_templateDirectory;
  v7 = sub_40E4();
  sub_27A8(v7);
  (*(v8 + 32))(v5 + v6, a1);
  return v5;
}

uint64_t sub_15B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC31SystemCommandsSuggestionsPlugin35SystemCommandsSuggestionsRepository_templateDirectory;
  v4 = sub_40E4();
  sub_27A8(v4);
  (*(v5 + 32))(v1 + v3, a1);
  return v1;
}

__n128 *sub_161C()
{
  v1 = [objc_opt_self() hasFlashlight];
  sub_1A24(&qword_C608, qword_45F8);
  v2 = *(sub_41C4() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  if (v1)
  {
    v6 = sub_29BC(v5, xmmword_4440);
    (*(v7 + 120))(v6);
    sub_295C();
    (*(v8 + 128))();
  }

  else
  {
    v11 = sub_29BC(v5, xmmword_4430);
    (*(v12 + 128))(v11);
  }

  sub_295C();
  v10 = (*(v9 + 136))();
  (*(*v0 + 144))(v10);
  return v5;
}

void sub_1808()
{
  sub_29E8();
  v1 = sub_1A24(&qword_C450, &qword_4490);
  sub_28E0(v1);
  v3 = *(v2 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2894();
  v4 = sub_1A24(&qword_C458, &qword_4498);
  sub_28E0(v4);
  v6 = *(v5 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2854();
  sub_42F4();
  v7 = *(sub_1A24(&qword_C460, &qword_44A0) + 48);
  *v0 = 0xD000000000000012;
  v0[1] = 0x8000000000004B30;
  v8 = sub_4284();
  sub_2874(v8);
  v9 = sub_4294();
  sub_27A8(v9);
  v11 = *(v10 + 104);
  v12 = sub_28A4();
  v13(v12);
  v14 = sub_27E4();
  sub_2940(v14);
  v15 = sub_2908();
  sub_2A00(v15, &protocol witness table for StaticIconUrlProvider);
  sub_2924();
  sub_2984();
  sub_275C();
  v19 = sub_2668(v16, v17, v18);
  sub_28B4(v19);
  sub_27D0();
  sub_4154();
  sub_2990();
  v20 = sub_1A24(&qword_C470, &qword_44A8);
  sub_2774(v20);
  v21 = sub_4214();
  sub_28EC(v21);
  v22 = sub_2834();
  sub_27B8(v22, &protocol witness table for SimpleActionKeyMapper);
  sub_28C4();
  sub_2968();
  sub_29D0();
}

uint64_t sub_1A24(uint64_t *a1, uint64_t *a2)
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

void sub_1AC8()
{
  sub_29E8();
  v1 = sub_1A24(&qword_C450, &qword_4490);
  sub_28E0(v1);
  v3 = *(v2 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2894();
  v4 = sub_1A24(&qword_C458, &qword_4498);
  sub_28E0(v4);
  v6 = *(v5 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2854();
  sub_42F4();
  v7 = *(sub_1A24(&qword_C460, &qword_44A0) + 48);
  *v0 = 0x6C69662E6B636F6CLL;
  v0[1] = 0xE90000000000006CLL;
  v8 = sub_4284();
  sub_2874(v8);
  v9 = sub_4294();
  sub_27A8(v9);
  v11 = *(v10 + 104);
  v12 = sub_28A4();
  v13(v12);
  v14 = sub_27E4();
  sub_2940(v14);
  v15 = sub_2908();
  sub_2A00(v15, &protocol witness table for StaticIconUrlProvider);
  sub_2924();
  sub_2984();
  sub_275C();
  v19 = sub_2668(v16, v17, v18);
  sub_28B4(v19);
  sub_27D0();
  sub_4154();
  sub_2990();
  v20 = sub_1A24(&qword_C470, &qword_44A8);
  sub_2774(v20);
  v21 = sub_4214();
  sub_28EC(v21);
  v22 = sub_2834();
  sub_27B8(v22, &protocol witness table for SimpleActionKeyMapper);
  sub_28C4();
  sub_41B4();
  sub_29D0();
}

void sub_1CE8()
{
  sub_29E8();
  v1 = sub_1A24(&qword_C450, &qword_4490);
  sub_28E0(v1);
  v3 = *(v2 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2894();
  v4 = sub_1A24(&qword_C458, &qword_4498);
  sub_28E0(v4);
  v6 = *(v5 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2854();
  sub_42F4();
  v7 = *(sub_1A24(&qword_C460, &qword_44A0) + 48);
  strcpy(v0, "restart.circle");
  v0[15] = -18;
  v8 = sub_4284();
  sub_2874(v8);
  v9 = sub_4294();
  sub_27A8(v9);
  v11 = *(v10 + 104);
  v12 = sub_28A4();
  v13(v12);
  v14 = sub_27E4();
  sub_2940(v14);
  v15 = sub_2908();
  sub_2A00(v15, &protocol witness table for StaticIconUrlProvider);
  sub_2924();
  sub_2984();
  sub_275C();
  v19 = sub_2668(v16, v17, v18);
  sub_28B4(v19);
  sub_27D0();
  sub_4154();
  sub_2990();
  v20 = sub_1A24(&qword_C470, &qword_44A8);
  sub_2774(v20);
  v21 = sub_4214();
  sub_28EC(v21);
  v22 = sub_2834();
  sub_27B8(v22, &protocol witness table for SimpleActionKeyMapper);
  sub_28C4();
  sub_2968();
  sub_29D0();
}

void sub_1F0C()
{
  sub_29E8();
  v1 = sub_1A24(&qword_C450, &qword_4490);
  sub_28E0(v1);
  v3 = *(v2 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2894();
  v4 = sub_1A24(&qword_C458, &qword_4498);
  sub_28E0(v4);
  v6 = *(v5 + 64);
  sub_28D4();
  __chkstk_darwin();
  sub_2854();
  sub_42F4();
  v7 = *(sub_1A24(&qword_C460, &qword_44A0) + 48);
  *v0 = 0xD000000000000011;
  v0[1] = 0x8000000000004BB0;
  v8 = sub_4284();
  sub_2874(v8);
  v9 = sub_4294();
  sub_27A8(v9);
  v11 = *(v10 + 104);
  v12 = sub_28A4();
  v13(v12);
  v14 = sub_27E4();
  sub_2940(v14);
  v15 = sub_2908();
  sub_2A00(v15, &protocol witness table for StaticIconUrlProvider);
  sub_2924();
  sub_2984();
  sub_275C();
  v19 = sub_2668(v16, v17, v18);
  sub_28B4(v19);
  sub_27D0();
  sub_4154();
  sub_2990();
  v20 = sub_1A24(&qword_C470, &qword_44A8);
  sub_2774(v20);
  v21 = sub_4214();
  sub_28EC(v21);
  v22 = sub_2834();
  sub_27B8(v22, &protocol witness table for SimpleActionKeyMapper);
  sub_28C4();
  sub_2968();
  sub_29D0();
}

uint64_t sub_2128()
{
  v1 = OBJC_IVAR____TtC31SystemCommandsSuggestionsPlugin35SystemCommandsSuggestionsRepository_templateDirectory;
  v2 = sub_40E4();
  sub_27A8(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2180()
{
  v1 = OBJC_IVAR____TtC31SystemCommandsSuggestionsPlugin35SystemCommandsSuggestionsRepository_templateDirectory;
  v2 = sub_40E4();
  sub_27A8(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t sub_2214()
{
  v1 = *v0;
  sub_295C();
  return (*(v2 + 112))();
}

uint64_t sub_2254(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to InternalSuggestionsRepository.getAsyncPooledSuggestions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22FC;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t sub_22FC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_23FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return SuggestionsRepository.getOwner()(a1, WitnessTable);
}

uint64_t sub_2460@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_4174();
  v3 = sub_4164();
  a1[3] = v2;
  result = sub_2668(&qword_C478, 255, &type metadata accessor for UtteranceAction);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_24F8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2544()
{
  v1 = *v0;
  sub_295C();
  return (*(v2 + 80))();
}

uint64_t sub_2584@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t type metadata accessor for SystemCommandsSuggestionsRepository()
{
  result = qword_CC10;
  if (!qword_CC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2668(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26B8()
{
  result = sub_40E4();
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

uint64_t sub_2774(uint64_t a1)
{

  return Transformer.init(transform:)(sub_2584, 0, v1, a1);
}

double sub_27B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 136) = v2;
  *(v3 - 128) = a2;
  *(v3 - 160) = a1;
  *(v3 - 176) = 0;
  result = 0.0;
  *(v3 - 208) = 0u;
  *(v3 - 192) = 0u;
  return result;
}

uint64_t sub_27E4()
{
  sub_1A6C(v0, 0, 1, v1);

  return type metadata accessor for StaticIconUrlProvider(0);
}

uint64_t sub_2834()
{

  return SimpleActionKeyMapper.init(actionId:loggingParamsIdTransformer:)(0, 0, v0);
}

uint64_t sub_2854()
{

  return type metadata accessor for ResolvableParameter(0);
}

uint64_t sub_2874(uint64_t a1)
{

  return sub_1A6C(v1 + v2, 1, 1, a1);
}

uint64_t sub_28B4(uint64_t result)
{
  *(v2 - 176) = result;
  *(v2 - 208) = v1;
  return result;
}

uint64_t sub_28EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_2908()
{

  return StaticIconUrlProvider.init(icon:)(v0);
}

uint64_t sub_2924()
{

  return swift_allocObject();
}

uint64_t sub_2940(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t sub_2968()
{

  return sub_41B4();
}

uint64_t sub_2990()
{
  sub_24F8((v0 - 208));

  return sub_24F8((v0 - 160));
}

__n128 *sub_29BC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  v3 = *v2;
  return result;
}

uint64_t sub_2A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 - 136) = v2;
  *(v3 - 128) = a2;
  *(v3 - 160) = a1;

  return type metadata accessor for SystemCommandsSuggestionsInvocationActionProvider();
}

uint64_t sub_2A34()
{
  v0 = sub_14A4();
  v2 = *v0;
  v1 = *(v0 + 1);
  v3 = type metadata accessor for SystemCommandsSuggestionConfigurator();
  sub_3760();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  v5 = sub_1460();
  v7 = *v5;
  v6 = *(v5 + 1);
  sub_3760();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v6;

  v9 = sub_1488();
  v11 = *v9;
  v10 = *(v9 + 1);
  sub_3760();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  v13 = sub_1438();
  v14 = *v13;
  v15 = *(v13 + 1);
  sub_3760();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  sub_1A24(&qword_C610, &qword_4628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_4430;
  sub_42D4();

  *(inited + 32) = sub_42C4();
  sub_1A24(&qword_C618, &qword_4630);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_4610;
  *(v18 + 56) = v3;
  sub_3724();
  v22 = sub_320C(v19, v20, v21);
  *(v18 + 32) = v8;
  *(v18 + 96) = v3;
  *(v18 + 104) = v22;
  *(v18 + 64) = v22;
  *(v18 + 72) = v16;
  *(inited + 40) = v18;

  *(inited + 48) = sub_42B4();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_4610;
  *(v23 + 56) = v3;
  *(v23 + 64) = v22;
  *(v23 + 32) = v8;
  *(v23 + 96) = v3;
  *(v23 + 104) = v22;
  *(v23 + 72) = v16;
  *(inited + 56) = v23;

  *(inited + 64) = sub_42A4();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_4440;
  *(v24 + 56) = v3;
  *(v24 + 64) = v22;
  *(v24 + 32) = v12;
  *(v24 + 96) = v3;
  *(v24 + 104) = v22;
  *(v24 + 72) = v4;
  *(v24 + 136) = v3;
  *(v24 + 144) = v22;
  *(v24 + 112) = v8;
  *(v24 + 176) = v3;
  *(v24 + 184) = v22;
  *(v24 + 152) = v16;
  *(inited + 72) = v24;
  sub_1A24(&qword_C628, &qword_4638);
  sub_320C(&qword_C630, 255, &type metadata accessor for Signal);
  return sub_42F4();
}

uint64_t sub_2CC0()
{
  sub_377C();
  sub_3760();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  return result;
}

uint64_t sub_2D60()
{
  sub_37AC();
  sub_377C();
  v0 = async function pointer to SignalSubscriber.getAsyncSubscriptions()[1];
  v1 = swift_task_alloc();
  v2 = sub_37A0(v1);
  *v2 = v3;
  v4 = sub_373C(v2);

  return SignalSubscriber.getAsyncSubscriptions()(v4);
}

uint64_t sub_2DF0()
{
  sub_37AC();
  sub_377C();
  v0 = async function pointer to SignalSubscriber.getAsyncLookupSubscriptions()[1];
  v1 = swift_task_alloc();
  v2 = sub_37A0(v1);
  *v2 = v3;
  v4 = sub_373C(v2);

  return SignalSubscriber.getAsyncLookupSubscriptions()(v4);
}

uint64_t sub_2E80()
{
  sub_3750();
  v1 = *(v0 + 80);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_37A0(v3);
  *v4 = v5;
  v6 = sub_3788(v4);

  return v8(v6);
}

uint64_t sub_2FA0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *v1;
  sub_376C();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(a1);
}

uint64_t sub_3098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_30C8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_24E0();
}

uint64_t sub_30EC()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t sub_310C()
{
  v1 = *(v0 + 24);

  sub_3760();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_320C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3254()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_328C()
{
  sub_377C();
  sub_3750();
  v1 = *(v0 + 96);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = sub_37A0(v3);
  *v4 = v5;
  v6 = sub_373C(v4);

  return v8(v6);
}

uint64_t sub_339C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_376C();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_3488()
{
  sub_3750();
  v2 = (*(v1 + 104))();
  v3 = *(v0 + 8);
  v4 = v2 & 1;

  return v3(v4);
}

uint64_t sub_3504()
{
  sub_37AC();
  v0 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v1 = swift_task_alloc();
  v2 = sub_37A0(v1);
  *v2 = v3;
  v4 = sub_3788(v2);

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(v4);
}

uint64_t sub_359C()
{
  sub_37AC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *(*v0 + 16);
  v8 = *v0;
  sub_376C();
  *v9 = v8;

  v10 = *(v8 + 8);

  return v10(v6, v4, v2);
}

uint64_t sub_36A4()
{
  sub_377C();
  WitnessTable = swift_getWitnessTable();

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(v1, v0, WitnessTable);
}

uint64_t sub_37B8()
{
  sub_1A24(&qword_C7A8, &qword_4830);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_4820;
  v1 = type metadata accessor for SystemCommandsSuggestionsOwnerDefinition();
  inited = swift_initStaticObject();
  *(v0 + 56) = v1;
  sub_40A4();
  *(v0 + 64) = sub_3F3C(v3, v4, v5);
  *(v0 + 32) = inited;
  return v0;
}

uint64_t *sub_387C()
{
  if (qword_CF20 != -1)
  {
    swift_once();
  }

  return &qword_CA00;
}

uint64_t sub_38E4()
{
  v1 = sub_4244();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_3940()
{
  type metadata accessor for SystemCommandsSuggestionsOwnerDefinition();
  result = swift_initStaticObject();
  qword_CA00 = result;
  return result;
}

uint64_t sub_396C()
{
  type metadata accessor for SystemCommandsSuggestionsOwnerDefinition();

  return swift_initStaticObject();
}

uint64_t sub_399C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SystemCommandsGenerator();
  v3 = sub_1A94();
  a1[3] = v2;
  result = sub_3F3C(&qword_C7B8, 255, type metadata accessor for SystemCommandsGenerator);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_3A1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SystemCommandsSuggestionsTargetOwnerDefinition();
  v3 = swift_allocObject();
  a1[3] = v2;
  sub_40BC();
  result = sub_3F3C(v4, v5, v6);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_3B68@<X0>(uint64_t *a1@<X8>)
{
  v2 = (*(*(sub_1A24(&qword_C7D0, qword_4838) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v4 = &v16 - v3;
  v5 = sub_40E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  sub_40D4();
  result = sub_3E6C(v4, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v6 + 32))(v12, v4, v5);
    v14 = type metadata accessor for SystemCommandsSuggestionsRepository();
    (*(v6 + 16))(v10, v12, v5);
    v15 = sub_1538(v10);
    a1[3] = v14;
    a1[4] = sub_3F3C(&qword_C7D8, 255, type metadata accessor for SystemCommandsSuggestionsRepository);
    *a1 = v15;
    return (*(v6 + 8))(v12, v5);
  }

  return result;
}

uint64_t sub_3D7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_41F4();
  result = sub_41E4();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = result;
  return result;
}

uint64_t sub_3DBC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_4134();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_4144();
  a1[3] = v2;
  result = sub_3F3C(&qword_C7C8, 255, &type metadata accessor for DomainOwner);
  a1[4] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_3F3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}