uint64_t sub_266EBD1E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266EBD238(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_266EBD28C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 suggestion];
  *a2 = result;
  return result;
}

uint64_t sub_266EBD2DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266EBD334(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_266EBD4D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SocialConversationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266EBD530(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SocialConversationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_266EBD604@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266EBD65C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_266EBD770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266EBD7C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void sub_266EBD8D0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_266EC1E78();
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

void sub_266EBD940(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_266EC1E68();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

id SearchForSportsIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchForSportsIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchForSportsIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchForSportsIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SearchForSportsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchForSportsIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266EBDBEC()
{
  v1 = *v0;
  sub_266EC1ED8();
  MEMORY[0x26D5F70A0](v1);
  return sub_266EC1EF8();
}

uint64_t sub_266EBDC60()
{
  v1 = *v0;
  sub_266EC1ED8();
  MEMORY[0x26D5F70A0](v1);
  return sub_266EC1EF8();
}

unint64_t sub_266EBDCA4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266EBE1FC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_266EBDD2C()
{
  v1 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266EBDDC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_266EBDE1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *SearchForSportsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SearchForSportsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SearchForSportsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SearchForSportsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SearchForSportsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchForSportsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SearchForSportsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SearchForSportsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SearchForSportsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EBE1C4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266EBE1FC(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_266EBE234()
{
  result = qword_2800ECC78;
  if (!qword_2800ECC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ECC78);
  }

  return result;
}

id GetSuggestionsIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GetSuggestionsIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSuggestionsIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSuggestionsIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id GetSuggestionsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetSuggestionsIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void sub_266EBE574(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 suggestions];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for Suggestion();
    v5 = sub_266EC1E98();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266EBE5E4(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for Suggestion();
    v3 = sub_266EC1E88();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSuggestions_];
}

uint64_t sub_266EBE6A4()
{
  v1 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *GetSuggestionsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *GetSuggestionsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___GetSuggestionsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id GetSuggestionsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___GetSuggestionsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GetSuggestionsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GetSuggestionsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___GetSuggestionsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for GetSuggestionsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EBEA90(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266EBEAF0()
{
  result = qword_2800ECCE8;
  if (!qword_2800ECCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ECCE8);
  }

  return result;
}

id ExecuteSuggestionIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ExecuteSuggestionIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecuteSuggestionIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ExecuteSuggestionIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ExecuteSuggestionIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ExecuteSuggestionIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266EBEE24()
{
  v1 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *ExecuteSuggestionIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *ExecuteSuggestionIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___ExecuteSuggestionIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id ExecuteSuggestionIntentResponse.init()()
{
  *&v0[OBJC_IVAR___ExecuteSuggestionIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExecuteSuggestionIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ExecuteSuggestionIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___ExecuteSuggestionIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ExecuteSuggestionIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EBF210(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266EBF270()
{
  result = qword_2800ECCF8;
  if (!qword_2800ECCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ECCF8);
  }

  return result;
}

void sub_266EBF334(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 actionIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_266EC1E78();
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

void sub_266EBF39C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_266EC1E68();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setActionIdentifier_];
}

void sub_266EBF40C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 parameters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ActionParameter();
    v5 = sub_266EC1E98();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_266EBF47C(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    type metadata accessor for ActionParameter();
    v3 = sub_266EC1E88();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setParameters_];
}

id Suggestion.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_266EC1E68();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_266EC1E68();

  if (a6)
  {
    v10 = sub_266EC1E68();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Suggestion.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_266EC1E68();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_266EC1E68();

  if (a6)
  {
    v10 = sub_266EC1E68();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Suggestion();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id Suggestion.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id Suggestion.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Suggestion();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EBF8B4(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SuggestionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266EBF968(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266EBFA60();

    sub_266EC1EB8();
  }

  else
  {

    sub_266EC1EC8();
    sub_266EBFA60();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266EBFA60();
  v2 = sub_266EC1E88();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___SuggestionResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

unint64_t sub_266EBFA60()
{
  result = qword_2800ECD00;
  if (!qword_2800ECD00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800ECD00);
  }

  return result;
}

id sub_266EBFB18(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___SuggestionResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266EBFDB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id ActionParameter.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_266EC1E68();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_266EC1E68();

  if (a6)
  {
    v10 = sub_266EC1E68();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id ActionParameter.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_266EC1E68();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_266EC1E68();

  if (a6)
  {
    v10 = sub_266EC1E68();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for ActionParameter();
  v11 = objc_msgSendSuper2(&v13, sel_initWithIdentifier_displayString_pronunciationHint_, v8, v9, v10);

  return v11;
}

id ActionParameter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ActionParameter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ActionParameter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EC0238(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ActionParameterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_successWithResolvedObject_, a1);

  return v2;
}

id sub_266EC02EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_266EBFA60();

    sub_266EC1EB8();
  }

  else
  {

    sub_266EC1EC8();
    sub_266EBFA60();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_266EBFA60();
  v2 = sub_266EC1E88();

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___ActionParameterResolutionResult;
  v3 = objc_msgSendSuper2(&v5, sel_disambiguationWithObjectsToDisambiguate_, v2);

  return v3;
}

id sub_266EC0450(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___ActionParameterResolutionResult;
  v2 = objc_msgSendSuper2(&v4, sel_confirmationRequiredWithObjectToConfirm_, a1);

  return v2;
}

id sub_266EC06F0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id SocialConversationIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialConversationIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialConversationIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialConversationIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SocialConversationIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SocialConversationIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266EC0A28()
{
  v1 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SocialConversationIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SocialConversationIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SocialConversationIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SocialConversationIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SocialConversationIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SocialConversationIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialConversationIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SocialConversationIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SocialConversationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EC0E14(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266EC0E74()
{
  result = qword_2800ECD10;
  if (!qword_2800ECD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ECD10);
  }

  return result;
}

id SiriLinkFlowIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriLinkFlowIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriLinkFlowIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriLinkFlowIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SiriLinkFlowIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriLinkFlowIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266EC11C0()
{
  v1 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *SiriLinkFlowIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *SiriLinkFlowIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___SiriLinkFlowIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id SiriLinkFlowIntentResponse.init()()
{
  *&v0[OBJC_IVAR___SiriLinkFlowIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriLinkFlowIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriLinkFlowIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___SiriLinkFlowIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SiriLinkFlowIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EC15AC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266EC160C()
{
  result = qword_2800ECD20;
  if (!qword_2800ECD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ECD20);
  }

  return result;
}

id DisambiguateActionsIntent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DisambiguateActionsIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisambiguateActionsIntent();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DisambiguateActionsIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DisambiguateActionsIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisambiguateActionsIntent();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_266EC1940()
{
  v1 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *DisambiguateActionsIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

char *DisambiguateActionsIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___DisambiguateActionsIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity_];

  return v7;
}

id DisambiguateActionsIntentResponse.init()()
{
  *&v0[OBJC_IVAR___DisambiguateActionsIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisambiguateActionsIntentResponse();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DisambiguateActionsIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___DisambiguateActionsIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DisambiguateActionsIntentResponse();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_266EC1D2C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_266EC1D8C()
{
  result = qword_2800ECD30;
  if (!qword_2800ECD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800ECD30);
  }

  return result;
}