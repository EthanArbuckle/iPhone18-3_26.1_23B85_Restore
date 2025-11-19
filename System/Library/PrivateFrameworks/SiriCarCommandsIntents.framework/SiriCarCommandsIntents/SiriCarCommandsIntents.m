id SetTrunkStatusIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetTrunkStatusIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetTrunkStatusIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetTrunkStatusIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetTrunkStatusIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetTrunkStatusIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_26682F404()
{
  v1 = *v0;
  sub_266834AE8();
  MEMORY[0x26D5DDDC0](v1);
  return sub_266834B08();
}

uint64_t sub_26682F478()
{
  v1 = *v0;
  sub_266834AE8();
  MEMORY[0x26D5DDDC0](v1);
  return sub_266834B08();
}

unint64_t sub_26682F4BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26682FA54(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SetTrunkStatusIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26682F5E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26682F63C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *SetTrunkStatusIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SetTrunkStatusIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetTrunkStatusIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetTrunkStatusIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetTrunkStatusIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetTrunkStatusIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SetTrunkStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetTrunkStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_26682F9DC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_26682FA54(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26682FA8C()
{
  result = qword_28009AAF8;
  if (!qword_28009AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AAF8);
  }

  return result;
}

id GetTrunkStatusIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetTrunkStatusIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetTrunkStatusIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetTrunkStatusIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetTrunkStatusIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetTrunkStatusIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetTrunkStatusIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *GetTrunkStatusIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *GetTrunkStatusIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetTrunkStatusIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetTrunkStatusIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetTrunkStatusIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetTrunkStatusIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___GetTrunkStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetTrunkStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266830144(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_2668301A4()
{
  result = qword_28009AB68;
  if (!qword_28009AB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AB68);
  }

  return result;
}

uint64_t sub_2668301F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266830250(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___GetTrunkStatusIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

unint64_t IntentTrunkStatus.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_2668302D0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id static IntentTrunkStatusResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentTrunkStatusResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentTrunkStatusResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentTrunkStatusResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266830460()
{
  result = qword_28009AB70;
  if (!qword_28009AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AB70);
  }

  return result;
}

id SetCarClimateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetCarClimateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarClimateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarClimateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetCarClimateIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarClimateIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetCarClimateIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SetCarClimateIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SetCarClimateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetCarClimateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetCarClimateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarClimateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarClimateIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SetCarClimateIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarClimateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266830B10(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266830B70()
{
  result = qword_28009AB80;
  if (!qword_28009AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AB80);
  }

  return result;
}

uint64_t sub_266830BC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266830C1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SetCarClimateIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id GetCarClimateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetCarClimateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetCarClimateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetCarClimateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetCarClimateIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetCarClimateIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetCarClimateIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *GetCarClimateIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *GetCarClimateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetCarClimateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetCarClimateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetCarClimateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetCarClimateIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___GetCarClimateIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetCarClimateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2668312D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266831334()
{
  result = qword_28009AB90;
  if (!qword_28009AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AB90);
  }

  return result;
}

uint64_t sub_266831388@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2668313E0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___GetCarClimateIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

unint64_t sub_26683146C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2668315EC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static IntentClimateResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentClimateResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentClimateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentClimateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2668315EC(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266831624()
{
  result = qword_28009AB98;
  if (!qword_28009AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AB98);
  }

  return result;
}

id SetCarRadioStationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetCarRadioStationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarRadioStationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarRadioStationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetCarRadioStationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarRadioStationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetCarRadioStationIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SetCarRadioStationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SetCarRadioStationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetCarRadioStationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetCarRadioStationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarRadioStationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarRadioStationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SetCarRadioStationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarRadioStationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266831CD4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266831D34()
{
  result = qword_28009ABA8;
  if (!qword_28009ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABA8);
  }

  return result;
}

uint64_t sub_266831D88@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266831DE0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SetCarRadioStationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id SetCarPlayClimateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetCarPlayClimateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlayClimateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarPlayClimateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetCarPlayClimateIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarPlayClimateIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t sub_26683206C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266832504(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t SetCarPlayClimateIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SetCarPlayClimateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SetCarPlayClimateIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SetCarPlayClimateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SetCarPlayClimateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetCarPlayClimateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetCarPlayClimateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetCarPlayClimateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlayClimateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarPlayClimateIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SetCarPlayClimateIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarPlayClimateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2668324CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266832504(unint64_t result)
{
  if (result - 100 >= 2)
  {
    v1 = 0;
  }

  else
  {
    v1 = result;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

unint64_t sub_266832550()
{
  result = qword_28009ABB8;
  if (!qword_28009ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABB8);
  }

  return result;
}

uint64_t sub_2668325A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SetCarPlayClimateIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2668325FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SetCarPlayClimateIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id SetCarPlaySeatSettingsIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetCarPlaySeatSettingsIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlaySeatSettingsIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarPlaySeatSettingsIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetCarPlaySeatSettingsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarPlaySeatSettingsIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t SetCarPlaySeatSettingsIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SetCarPlaySeatSettingsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SetCarPlaySeatSettingsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetCarPlaySeatSettingsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetCarPlaySeatSettingsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetCarPlaySeatSettingsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266832CB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266832D14()
{
  result = qword_28009ABC8;
  if (!qword_28009ABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABC8);
  }

  return result;
}

uint64_t sub_266832D68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266832DC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SetCarPlaySeatSettingsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

unint64_t sub_266832E4C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266832FCC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static IntentRadioBandResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentRadioBandResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentRadioBandResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentRadioBandResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266832FCC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266833004()
{
  result = qword_28009ABD0;
  if (!qword_28009ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABD0);
  }

  return result;
}

unint64_t sub_266833088@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266833208(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id static IntentSeatTypeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentSeatTypeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentSeatTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentSeatTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266833208(unint64_t result)
{
  if (result > 0xC)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266833240()
{
  result = qword_28009ABD8;
  if (!qword_28009ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABD8);
  }

  return result;
}

id static IntentRelativeTemperatureChangeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentRelativeTemperatureChangeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentRelativeTemperatureChangeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentRelativeTemperatureChangeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266833438()
{
  result = qword_28009ABE0;
  if (!qword_28009ABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABE0);
  }

  return result;
}

unint64_t IntentTemperatureChange.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id static IntentTemperatureChangeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentTemperatureChangeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentTemperatureChangeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentTemperatureChangeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266833624()
{
  result = qword_28009ABE8;
  if (!qword_28009ABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABE8);
  }

  return result;
}

unint64_t IntentExtremeTemperatureChange.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

id static IntentExtremeTemperatureChangeResolutionResult.success(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id static IntentExtremeTemperatureChangeResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id IntentExtremeTemperatureChangeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntentExtremeTemperatureChangeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_266833810()
{
  result = qword_28009ABF0;
  if (!qword_28009ABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009ABF0);
  }

  return result;
}

id GetSignalActivationStatusIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetSignalActivationStatusIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSignalActivationStatusIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSignalActivationStatusIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetSignalActivationStatusIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetSignalActivationStatusIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetSignalActivationStatusIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *GetSignalActivationStatusIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *GetSignalActivationStatusIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetSignalActivationStatusIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetSignalActivationStatusIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSignalActivationStatusIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSignalActivationStatusIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___GetSignalActivationStatusIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetSignalActivationStatusIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t GetSignalActivationStatusCarSignalUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_266833EF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

id static GetSignalActivationStatusCarSignalResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id sub_266833FB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266834038()
{
  result = qword_28009AC00;
  if (!qword_28009AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AC00);
  }

  return result;
}

unint64_t sub_266834090()
{
  result = qword_28009AC08;
  if (!qword_28009AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AC08);
  }

  return result;
}

uint64_t sub_2668340E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26683413C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___GetSignalActivationStatusIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id DeactivateSignalIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeactivateSignalIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeactivateSignalIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeactivateSignalIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeactivateSignalIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeactivateSignalIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t DeactivateSignalIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DeactivateSignalIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *DeactivateSignalIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DeactivateSignalIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DeactivateSignalIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeactivateSignalIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeactivateSignalIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DeactivateSignalIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeactivateSignalIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t DeactivateSignalCarSignalUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id static DeactivateSignalCarSignalResolutionResult.unsupported(forReason:)(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() unsupportedWithReason_];

  return v1;
}

id sub_2668348E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266834968()
{
  result = qword_28009AC18;
  if (!qword_28009AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AC18);
  }

  return result;
}

unint64_t sub_2668349C0()
{
  result = qword_28009AC20;
  if (!qword_28009AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28009AC20);
  }

  return result;
}

uint64_t sub_266834A14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266834A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DeactivateSignalIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}