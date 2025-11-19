id AddSpeakerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id AddSpeakerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for AddSpeakerIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id AddSpeakerIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id AddSpeakerIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for AddSpeakerIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t AddSpeakerIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result - 100 >= 3)
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

unint64_t sub_268B24EEC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AddSpeakerIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B24F44()
{
  v1 = OBJC_IVAR___AddSpeakerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B24FB0(uint64_t a1)
{
  v3 = OBJC_IVAR___AddSpeakerIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *AddSpeakerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___AddSpeakerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id AddSpeakerIntentResponse.init()()
{
  *&v0[OBJC_IVAR___AddSpeakerIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddSpeakerIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AddSpeakerIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___AddSpeakerIntentResponse_code) = 0;
  v13 = type metadata accessor for AddSpeakerIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id AddSpeakerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id AddSpeakerIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___AddSpeakerIntentResponse_code) = 0;
  v13 = type metadata accessor for AddSpeakerIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id AddSpeakerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id AddSpeakerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___AddSpeakerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AddSpeakerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B2549C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AddSpeakerSourceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B25594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AddSpeakerDestinationsUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B255E0(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B25734(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B25770()
{
  result = qword_2802A8FC8;
  if (!qword_2802A8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FC8);
  }

  return result;
}

unint64_t sub_268B257C8()
{
  result = qword_2802A8FD0;
  if (!qword_2802A8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FD0);
  }

  return result;
}

unint64_t sub_268B25820()
{
  result = qword_2802A8FD8;
  if (!qword_2802A8FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FD8);
  }

  return result;
}

id sub_268B25904@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B259C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B24F44();
  *a2 = result;
  return result;
}

id MoveSpeakerIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MoveSpeakerSourceUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t MoveSpeakerDestinationsUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

id MoveSpeakerIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoveSpeakerIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MoveSpeakerIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MoveSpeakerIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for MoveSpeakerIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id MoveSpeakerIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id MoveSpeakerIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for MoveSpeakerIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id MoveSpeakerIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id MoveSpeakerIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for MoveSpeakerIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t MoveSpeakerIntentResponseCode.init(rawValue:)(unint64_t result)
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

unint64_t sub_268B260D0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MoveSpeakerIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B26128()
{
  v1 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B26194(uint64_t a1)
{
  v3 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *MoveSpeakerIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___MoveSpeakerIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id MoveSpeakerIntentResponse.init()()
{
  *&v0[OBJC_IVAR___MoveSpeakerIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MoveSpeakerIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MoveSpeakerIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___MoveSpeakerIntentResponse_code) = 0;
  v13 = type metadata accessor for MoveSpeakerIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id MoveSpeakerIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id MoveSpeakerIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___MoveSpeakerIntentResponse_code) = 0;
  v13 = type metadata accessor for MoveSpeakerIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id MoveSpeakerIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id MoveSpeakerIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___MoveSpeakerIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for MoveSpeakerIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_268B26680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MoveSpeakerSourceUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B26778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = MoveSpeakerDestinationsUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B267C4(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B26918(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B26954()
{
  result = qword_2802A8FE8;
  if (!qword_2802A8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FE8);
  }

  return result;
}

unint64_t sub_268B269AC()
{
  result = qword_2802A8FF0;
  if (!qword_2802A8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FF0);
  }

  return result;
}

unint64_t sub_268B26A04()
{
  result = qword_2802A8FF8;
  if (!qword_2802A8FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A8FF8);
  }

  return result;
}

id sub_268B26AE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

uint64_t sub_268B26B90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B26128();
  *a2 = result;
  return result;
}

id SetRoomDimmingStateIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SetRoomDimmingStateIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetRoomDimmingStateIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetRoomDimmingStateIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetRoomDimmingStateIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetRoomDimmingStateIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRoomDimmingStateIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetRoomDimmingStateIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetRoomDimmingStateIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetRoomDimmingStateIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetRoomDimmingStateIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetRoomDimmingStateIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetRoomDimmingStateIntentResponseCode.init(rawValue:)(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B271F0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetRoomDimmingStateIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B27248()
{
  v1 = OBJC_IVAR___SetRoomDimmingStateIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B272B4(uint64_t a1)
{
  v3 = OBJC_IVAR___SetRoomDimmingStateIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetRoomDimmingStateIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetRoomDimmingStateIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetRoomDimmingStateIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetRoomDimmingStateIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetRoomDimmingStateIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetRoomDimmingStateIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetRoomDimmingStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetRoomDimmingStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRoomDimmingStateIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetRoomDimmingStateIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetRoomDimmingStateIntentResponse_code) = 0;
  v13 = type metadata accessor for SetRoomDimmingStateIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetRoomDimmingStateIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetRoomDimmingStateIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetRoomDimmingStateIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetRoomDimmingStateIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_268B277B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B277F0()
{
  result = qword_2802A9008;
  if (!qword_2802A9008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9008);
  }

  return result;
}

id sub_268B27850@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 roomDimmingState];
  *a2 = result;
  return result;
}

uint64_t sub_268B27898@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B27248();
  *a2 = result;
  return result;
}

id SetPlaybackSpeedIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t SetPlaybackSpeedSpeedMagnitudeUnsupportedReason.init(rawValue:)(uint64_t result)
{
  if ((result - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  return result;
}

void sub_268B27A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v7 = OUTLINED_FUNCTION_6_46(a1);
  v9 = [v7 *v8];
  if (v9)
  {
    v10 = v9;
    a5(0);
    v11 = sub_268B37CF4();
  }

  else
  {
    v11 = 0;
  }

  *v5 = v11;
}

id SetPlaybackSpeedIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetPlaybackSpeedIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetPlaybackSpeedIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SetPlaybackSpeedIntent.init(coder:)(void *a1)
{
  v13 = type metadata accessor for SetPlaybackSpeedIntent();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetPlaybackSpeedIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_268B37BC4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id SetPlaybackSpeedIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v16 = type metadata accessor for SetPlaybackSpeedIntent();
  v12 = OUTLINED_FUNCTION_7_36(v16, sel_initWithIdentifier_backingStore_, v6, v7, v8, v9, v10, v11, v3);
  v14 = objc_msgSendSuper2(v12, v13);

  return v14;
}

id SetPlaybackSpeedIntent.__allocating_init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(v0) initWithDomain:v2 verb:v3 parametersByName:v4];

  return v5;
}

id SetPlaybackSpeedIntent.init(domain:verb:parametersByName:)()
{
  v2 = OUTLINED_FUNCTION_8_35();

  v3 = sub_268B37BC4();

  if (v1)
  {
    v4 = sub_268B37B54();
  }

  else
  {
    v4 = 0;
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for SetPlaybackSpeedIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithDomain_verb_parametersByName_, v2, v3, v4);

  return v5;
}

unint64_t SetPlaybackSpeedIntentResponseCode.init(rawValue:)(unint64_t result)
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

unint64_t sub_268B27F78@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetPlaybackSpeedIntentResponseCode.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B27FD0()
{
  v1 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268B2803C(uint64_t a1)
{
  v3 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *SetPlaybackSpeedIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SetPlaybackSpeedIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SetPlaybackSpeedIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SetPlaybackSpeedIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SetPlaybackSpeedIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SetPlaybackSpeedIntentResponse.init(coder:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetPlaybackSpeedIntentResponse_code) = 0;
  v13 = type metadata accessor for SetPlaybackSpeedIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithCoder_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetPlaybackSpeedIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore_];

  return v3;
}

id SetPlaybackSpeedIntentResponse.init(backingStore:)(void *a1)
{
  *(v1 + OBJC_IVAR___SetPlaybackSpeedIntentResponse_code) = 0;
  v13 = type metadata accessor for SetPlaybackSpeedIntentResponse();
  v9 = OUTLINED_FUNCTION_7_36(v13, sel_initWithBackingStore_, v3, v4, v5, v6, v7, v8, v1);
  v11 = objc_msgSendSuper2(v9, v10);

  if (v11)
  {
  }

  return v11;
}

id SetPlaybackSpeedIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName_];

  return v3;
}

id SetPlaybackSpeedIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___SetPlaybackSpeedIntentResponse_code] = 0;
  if (a1)
  {
    v2 = sub_268B37B54();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for SetPlaybackSpeedIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithPropertiesByName_, v2);

  if (v3)
  {
  }

  return v3;
}

BOOL sub_268B28538@<W0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetPlaybackSpeedDevicesUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_268B28630@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SetPlaybackSpeedSpeedMagnitudeUnsupportedReason.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B2867C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_268B37B54();

  v10.receiver = v3;
  v10.super_class = a3(v7);
  v8 = objc_msgSendSuper2(&v10, sel_initWithJSONDictionary_forIntent_, v6, a2);

  if (v8)
  {
  }

  return v8;
}

id sub_268B287D0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_268B2880C()
{
  result = qword_2802A9018;
  if (!qword_2802A9018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9018);
  }

  return result;
}

unint64_t sub_268B28864()
{
  result = qword_2802A9020;
  if (!qword_2802A9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9020);
  }

  return result;
}

unint64_t sub_268B288BC()
{
  result = qword_2802A9028;
  if (!qword_2802A9028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9028);
  }

  return result;
}

id sub_268B289A0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) mediaType];
  *v1 = result;
  return result;
}

id sub_268B28A38(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) speedMagnitude];
  *v1 = v3;
  return result;
}

id sub_268B28A88(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) playbackSpeedType];
  *v1 = result;
  return result;
}

id sub_268B28AD8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) requestedPlaybackSpeedUnit];
  *v1 = result;
  return result;
}

uint64_t sub_268B28B1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_268B27FD0();
  *a2 = result;
  return result;
}

unint64_t Direction.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B28C60@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = Direction.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_268B28C94(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue_];

  return v1;
}

id sub_268B28D20(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm_];

  return v1;
}

id DirectionResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DirectionResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DirectionResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DirectionResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DirectionResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B28FA0()
{
  result = qword_2802A9030;
  if (!qword_2802A9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9030);
  }

  return result;
}

unint64_t RepeatState.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B29058@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = RepeatState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id RepeatStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RepeatStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RepeatStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RepeatStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RepeatStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B29300()
{
  result = qword_2802A9038;
  if (!qword_2802A9038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9038);
  }

  return result;
}

unint64_t ShuffleState.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B293B8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ShuffleState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ShuffleStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ShuffleStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ShuffleStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ShuffleStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShuffleStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B29660()
{
  result = qword_2802A9040;
  if (!qword_2802A9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9040);
  }

  return result;
}

unint64_t SubtitleState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B29718@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SubtitleState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SubtitleStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SubtitleStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SubtitleStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id SubtitleStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubtitleStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B299C0()
{
  result = qword_2802A9048;
  if (!qword_2802A9048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9048);
  }

  return result;
}

unint64_t DeviceProximity.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B29A84@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = DeviceProximity.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id DeviceProximityResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceProximityResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceProximityResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id DeviceProximityResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceProximityResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t NowPlayingState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B29D8C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = NowPlayingState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id NowPlayingStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id NowPlayingStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for NowPlayingStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id NowPlayingStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t LanguageType.init(rawValue:)(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2A094@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = LanguageType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id LanguageTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id LanguageTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for LanguageTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id LanguageTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguageTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2A33C()
{
  result = qword_2802A9050;
  if (!qword_2802A9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9050);
  }

  return result;
}

unint64_t NowPlayingMediaType.init(rawValue:)(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2A3F4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = NowPlayingMediaType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id NowPlayingMediaTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id NowPlayingMediaTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for NowPlayingMediaTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id NowPlayingMediaTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingMediaTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2A69C()
{
  result = qword_2802A9058;
  if (!qword_2802A9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9058);
  }

  return result;
}

unint64_t NLMediaType.init(rawValue:)(unint64_t result)
{
  if (result > 0x1A)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2A754@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = NLMediaType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id NLMediaTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id NLMediaTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for NLMediaTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id NLMediaTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLMediaTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2A9FC()
{
  result = qword_2802A9060;
  if (!qword_2802A9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9060);
  }

  return result;
}

unint64_t VolumeSettingState.init(rawValue:)(unint64_t result)
{
  if (result > 7)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2AAB4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VolumeSettingState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id VolumeSettingStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id VolumeSettingStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for VolumeSettingStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id VolumeSettingStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSettingStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2AD5C()
{
  result = qword_2802A9068;
  if (!qword_2802A9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9068);
  }

  return result;
}

unint64_t VolumeSettingUnit.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2AE14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VolumeSettingUnit.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id VolumeSettingUnitResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id VolumeSettingUnitResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for VolumeSettingUnitResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id VolumeSettingUnitResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSettingUnitResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2B0BC()
{
  result = qword_2802A9070;
  if (!qword_2802A9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9070);
  }

  return result;
}

unint64_t VolumeSettingAttribute.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2B174@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VolumeSettingAttribute.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id VolumeSettingAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id VolumeSettingAttributeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for VolumeSettingAttributeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id VolumeSettingAttributeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSettingAttributeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2B41C()
{
  result = qword_2802A9078;
  if (!qword_2802A9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9078);
  }

  return result;
}

unint64_t VolumeSettingQualifier.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2B4D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VolumeSettingQualifier.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id VolumeSettingQualifierResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id VolumeSettingQualifierResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for VolumeSettingQualifierResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id VolumeSettingQualifierResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSettingQualifierResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2B77C()
{
  result = qword_2802A9080;
  if (!qword_2802A9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9080);
  }

  return result;
}

unint64_t VolumeSettingType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2B834@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = VolumeSettingType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id VolumeSettingTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id VolumeSettingTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for VolumeSettingTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id VolumeSettingTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VolumeSettingTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2BADC()
{
  result = qword_2802A9088;
  if (!qword_2802A9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9088);
  }

  return result;
}

unint64_t GroupType.init(rawValue:)(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2BB94@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GroupType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id GroupTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id GroupTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for GroupTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id GroupTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GroupTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2BE3C()
{
  result = qword_2802A9090;
  if (!qword_2802A9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9090);
  }

  return result;
}

unint64_t RoomDimmingState.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2BEF4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = RoomDimmingState.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id RoomDimmingStateResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RoomDimmingStateResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RoomDimmingStateResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RoomDimmingStateResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoomDimmingStateResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2C19C()
{
  result = qword_2802A9098;
  if (!qword_2802A9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A9098);
  }

  return result;
}

unint64_t PlaybackSpeedType.init(rawValue:)(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2C254@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = PlaybackSpeedType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id PlaybackSpeedTypeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PlaybackSpeedTypeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlaybackSpeedTypeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id PlaybackSpeedTypeResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaybackSpeedTypeResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2C4FC()
{
  result = qword_2802A90A0;
  if (!qword_2802A90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A90A0);
  }

  return result;
}

unint64_t ControlsSettingName.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2C5B4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = ControlsSettingName.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id ControlsSettingNameResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ControlsSettingNameResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ControlsSettingNameResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id ControlsSettingNameResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlsSettingNameResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2C85C()
{
  result = qword_2802A90A8;
  if (!qword_2802A90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A90A8);
  }

  return result;
}

unint64_t RequestedPlaybackSpeedUnit.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_268B2C914@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = RequestedPlaybackSpeedUnit.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id RequestedPlaybackSpeedUnitResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id RequestedPlaybackSpeedUnitResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for RequestedPlaybackSpeedUnitResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id RequestedPlaybackSpeedUnitResolutionResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestedPlaybackSpeedUnitResolutionResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_268B2CBBC()
{
  result = qword_2802A90B0;
  if (!qword_2802A90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A90B0);
  }

  return result;
}

id sub_268B2CC60()
{
  v1 = [*v0 context];

  return v1;
}

id sub_268B2CC98(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B2CCFC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_268B2CDF4()
{
  result = qword_2802A90B8;
  if (!qword_2802A90B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A90B8);
  }

  return result;
}

id sub_268B2CE38(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_268B2CE9C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 zoneNames];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37CF4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_268B2CF04(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_268B37CE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setZoneNames_];
}

id sub_268B2CF74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentHome];
  *a2 = result;
  return result;
}

id sub_268B2CFB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentRoom];
  *a2 = result;
  return result;
}

id sub_268B2CFEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberOfAffectedRooms];
  *a2 = result;
  return result;
}

id sub_268B2D028@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isDeviceSelectedUsingContext];
  *a2 = result;
  return result;
}

id sub_268B2D064@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 context];
  *a2 = result;
  return result;
}

id sub_268B2D0A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 disambiguated];
  *a2 = result;
  return result;
}

id sub_268B2D0DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 confirmed];
  *a2 = result;
  return result;
}

id sub_268B2D118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 skipConfirmation];
  *a2 = result;
  return result;
}

id sub_268B2D154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isEndpoint];
  *a2 = result;
  return result;
}

void sub_268B2D190(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_268B37BF4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_268B2D1F4(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_268B37BC4();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id sub_268B2D264@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isPreResolved];
  *a2 = result;
  return result;
}

id Device.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id Device.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for Device();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id Device.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Device.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Device();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeviceResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B2D9C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_60()
{

  return sub_268B38284();
}

id SignedDuration.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id SignedDuration.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for SignedDuration();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id SignedDuration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SignedDuration.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SignedDuration();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_268B2E114(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SignedDurationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B2E1C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SignedDurationResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B2E32C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SignedDurationResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id SignedDurationResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id SignedDurationResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for SignedDurationResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B2E6A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B2E6F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 direction];
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_61()
{

  return sub_268B38284();
}

uint64_t sub_268B2E7BC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 nowPlayingTimestamp];
  if (v3)
  {
    v4 = v3;
    sub_268B345D4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_268B34614();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_268B2E83C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_2688F33D8(a1, &v11 - v6);
  v8 = *a2;
  v9 = sub_268B34614();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) != 1)
  {
    v10 = sub_268B34594();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  [v8 setNowPlayingTimestamp_];
}

id sub_268B2E940@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 silentPrimary];
  *a2 = result;
  return result;
}

void sub_268B2E97C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_46(a1);
  v4 = [v2 *v3];
  if (v4)
  {
    v5 = v4;
    v6 = sub_268B37BF4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *v1 = v6;
  v1[1] = v8;
}

id DeviceContext.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceContext.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceContext();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceContext.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceContext.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceContext();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_268B2ED2C(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceContextResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B2EDE0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceContextResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B2EF44(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceContextResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id DeviceContextResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceContextResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceContextResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B2F2C0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B2F344(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) proximity];
  *v1 = result;
  return result;
}

id sub_268B2F394(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) nowPlayingState];
  *v1 = result;
  return result;
}

id sub_268B2F3F8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) nowPlayingMediaType];
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_62()
{

  return sub_268B38284();
}

id sub_268B2F5B4(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___LanguageOptionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B2F618(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___LanguageOptionResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B2F710(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___LanguageOptionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_268B2F774@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isActive];
  *a2 = result;
  return result;
}

void sub_268B2F7B0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 characteristics];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37CF4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_268B2F818(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_268B37CE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setCharacteristics_];
}

id LanguageOption.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id LanguageOption.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for LanguageOption();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id LanguageOption.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LanguageOption.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LanguageOption();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LanguageOptionResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id LanguageOptionResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for LanguageOptionResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B2FFAC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B30160@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fromEntity];
  *a2 = result;
  return result;
}

id DeviceQuery.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceQuery.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceQuery();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceQuery.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceQuery.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceQuery();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_268B304EC(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B305A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B30704(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceQueryResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id DeviceQueryResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceQueryResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceQueryResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B30A80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_63()
{

  return sub_268B38284();
}

id sub_268B30DF8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___VolumeLevelResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B30E5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___VolumeLevelResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B30F54(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___VolumeLevelResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_268B30FB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 volumeSettingValue];
  *a2 = result;
  return result;
}

id sub_268B30FF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 resolvedVolumeOutput];
  *a2 = result;
  return result;
}

id sub_268B31030@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 currentVolumeOutput];
  *a2 = result;
  return result;
}

id VolumeLevel.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id VolumeLevel.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for VolumeLevel();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id VolumeLevel.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id VolumeLevel.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for VolumeLevel();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id VolumeLevelResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id VolumeLevelResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for VolumeLevelResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B31790(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B317F8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) volumeSettingState];
  *v1 = result;
  return result;
}

id sub_268B31848(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) volumeSettingUnit];
  *v1 = result;
  return result;
}

id sub_268B31898(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) volumeSettingQualifier];
  *v1 = result;
  return result;
}

id sub_268B31930(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_6_46(a1) volumeSettingType];
  *v1 = result;
  return result;
}

id sub_268B319C8(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceGroupResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B31A2C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___DeviceGroupResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B31B24(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___DeviceGroupResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_268B31B88(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groupName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268B37BF4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_268B31BF0(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_268B37BC4();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setGroupName_];
}

void sub_268B31C60(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 streams];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for MediaStream();
    v5 = sub_268B37CF4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_268B31CD0(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for MediaStream();
    v3 = sub_268B37CE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setStreams_];
}

id sub_268B31D48@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 includesTVs];
  *a2 = result;
  return result;
}

id sub_268B31D84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 excludeGroup];
  *a2 = result;
  return result;
}

id DeviceGroup.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id DeviceGroup.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for DeviceGroup();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id DeviceGroup.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DeviceGroup.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceGroup();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DeviceGroupResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id DeviceGroupResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for DeviceGroupResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B324E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B32544@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_268B32628(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___MediaStreamResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B3268C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___MediaStreamResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B32784(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___MediaStreamResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

void sub_268B327E8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 devices];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for Device();
    v5 = sub_268B37CF4();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_268B32858(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for Device();
    v3 = sub_268B37CE4();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDevices_];
}

id sub_268B328D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 groupLeader];
  *a2 = result;
  return result;
}

id MediaStream.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id MediaStream.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for MediaStream();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id MediaStream.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id MediaStream.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for MediaStream();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id MediaStreamResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id MediaStreamResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for MediaStreamResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B33030(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id PlaybackSpeed.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id PlaybackSpeed.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for PlaybackSpeed();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id PlaybackSpeed.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PlaybackSpeed.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PlaybackSpeed();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_268B33438(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PlaybackSpeedResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B334EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___PlaybackSpeedResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B33650(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___PlaybackSpeedResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id PlaybackSpeedResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id PlaybackSpeedResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PlaybackSpeedResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B339CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B33A04@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 speedMagnitude];
  *a2 = v4;
  return result;
}

id sub_268B33A4C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 playbackSpeedType];
  *a2 = result;
  return result;
}

id ControlsSettingAttribute.__allocating_init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [objc_allocWithZone(v0) initWithIdentifier:v3 displayString:v4 pronunciationHint:v5];

  return v6;
}

id ControlsSettingAttribute.init(identifier:display:pronunciationHint:)()
{
  OUTLINED_FUNCTION_1_63();
  if (v2)
  {
    v3 = sub_268B37BC4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_268B37BC4();

  if (v1)
  {
    v5 = sub_268B37BC4();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for ControlsSettingAttribute();
  v6 = objc_msgSendSuper2(&v8, sel_initWithIdentifier_displayString_pronunciationHint_, v3, v4, v5);

  return v6;
}

id ControlsSettingAttribute.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ControlsSettingAttribute.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ControlsSettingAttribute();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_268B33E38(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ControlsSettingAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_268B33EEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_268B2CDF4();

    sub_268B38294();
  }

  else
  {

    sub_268B38454();
    sub_268B2CDF4();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_268B2CDF4();
  v2 = sub_268B37CE4();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ControlsSettingAttributeResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_268B34050(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ControlsSettingAttributeResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id ControlsSettingAttributeResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_268B37B54();

  v6 = [v4 initWithJSONDictionary:v5 forIntent:a2];

  return v6;
}

id ControlsSettingAttributeResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = sub_268B37B54();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for ControlsSettingAttributeResolutionResult();
  v5 = objc_msgSendSuper2(&v7, sel_initWithJSONDictionary_forIntent_, v4, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_268B343CC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_268B34410@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 settingName];
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_64()
{

  return sub_268B38284();
}