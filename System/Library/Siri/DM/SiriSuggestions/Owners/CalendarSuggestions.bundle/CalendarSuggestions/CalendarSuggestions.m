uint64_t sub_1320()
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v0 = sub_55DC();
  v1 = sub_1EF0(v0, qword_C648);
  v2 = sub_55FC();
  if (os_log_type_enabled(v1, v2))
  {
    *sub_1ED8() = 0;
    sub_1F18(&dword_0, v3, v4, "#CalendarOwnerDefinitionFactory createOwnerDefinitions");
  }

  sub_1C20(&qword_C3E0, &unk_5910);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_5800;
  *(v5 + 56) = &type metadata for CalendarOwnerDefinition;
  *(v5 + 64) = sub_1C68();
  return v5;
}

uint64_t sub_144C()
{
  v1 = sub_550C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_14A8()
{
  v0 = sub_53EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_53FC();
  qword_C640 = result;
  return result;
}

unint64_t sub_1508@<X0>(uint64_t a1@<X8>)
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v2 = sub_55DC();
  v3 = sub_1EF0(v2, qword_C648);
  v4 = sub_55FC();
  if (sub_1E74(v4))
  {
    v5 = sub_1ED8();
    sub_1ECC(v5);
    sub_1E3C(&dword_0, v6, v7, "#CalendarOwnerDefinition getSourceGenerator");
    sub_1EB0();
  }

  *(a1 + 24) = &type metadata for CalendarGenerator;
  result = sub_1DC4();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_15AC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v2 = sub_55DC();
  v3 = sub_1EF0(v2, qword_C648);
  v4 = sub_55FC();
  if (sub_1E74(v4))
  {
    v5 = sub_1ED8();
    sub_1ECC(v5);
    sub_1E3C(&dword_0, v6, v7, "#CalendarOwnerDefinition getTargetOwnerDefinition");
    sub_1EB0();
  }

  v8 = type metadata accessor for CalendarTargetOwnerDefinition();
  v9 = swift_allocObject();
  a1[3] = v8;
  result = sub_1D7C(&qword_C410, v10, type metadata accessor for CalendarTargetOwnerDefinition);
  a1[4] = result;
  *a1 = v9;
  return result;
}

uint64_t sub_1694@<X0>(uint64_t *a1@<X8>)
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v2 = sub_55DC();
  v3 = sub_1EF0(v2, qword_C648);
  v4 = sub_55FC();
  if (sub_1E74(v4))
  {
    v5 = sub_1ED8();
    sub_1ECC(v5);
    sub_1E3C(&dword_0, v6, v7, "#CalendarOwnerDefinition getOwner");
    sub_1EB0();
  }

  if (qword_C268 != -1)
  {
    sub_1E90();
  }

  v8 = qword_C640;
  a1[3] = sub_53EC();
  sub_1E5C();
  a1[4] = sub_1D7C(v9, 255, v10);
  *a1 = v8;

  return _swift_retain(v8);
}

uint64_t sub_17AC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v2 = sub_55DC();
  v3 = sub_1EF0(v2, qword_C648);
  v4 = sub_55FC();
  if (sub_1E74(v4))
  {
    v5 = sub_1ED8();
    sub_1ECC(v5);
    sub_1E3C(&dword_0, v6, v7, "#CalendarTargetOwnerDefinition getSuggestionsRepo");
    sub_1EB0();
  }

  v8 = type metadata accessor for CalendarSuggestionsRepository();
  v9 = swift_allocObject();
  a1[3] = v8;
  result = sub_1D7C(&qword_C3F8, 255, type metadata accessor for CalendarSuggestionsRepository);
  a1[4] = result;
  *a1 = v9;
  return result;
}

void *sub_189C()
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v0 = sub_55DC();
  v1 = sub_1EF0(v0, qword_C648);
  v2 = sub_55FC();
  if (os_log_type_enabled(v1, v2))
  {
    *sub_1ED8() = 0;
    sub_1F18(&dword_0, v3, v4, "#CalendarTargetOwnerDefinition getSuggestionsResolvers");
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_194C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v2 = sub_55DC();
  v3 = sub_1EF0(v2, qword_C648);
  v4 = sub_55FC();
  if (sub_1E74(v4))
  {
    v5 = sub_1ED8();
    sub_1ECC(v5);
    sub_1E3C(&dword_0, v6, v7, "#CalendarTargetOwnerDefinition getSuggestionsFilter");
    sub_1EB0();
  }

  v8 = sub_54BC();
  result = sub_54AC();
  a1[3] = v8;
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = result;
  return result;
}

uint64_t sub_19FC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v2 = sub_55DC();
  v3 = sub_1EF0(v2, qword_C648);
  v4 = sub_55FC();
  if (sub_1E74(v4))
  {
    v5 = sub_1ED8();
    sub_1ECC(v5);
    sub_1E3C(&dword_0, v6, v7, "#CalendarTargetOwnerDefinition getOwner");
    sub_1EB0();
  }

  if (qword_C268 != -1)
  {
    sub_1E90();
  }

  v8 = qword_C640;
  a1[3] = sub_53EC();
  sub_1E5C();
  a1[4] = sub_1D7C(v9, 255, v10);
  *a1 = v8;

  return _swift_retain(v8);
}

uint64_t sub_1BE8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C20(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1C68()
{
  result = qword_C3E8;
  if (!qword_C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C3E8);
  }

  return result;
}

unint64_t sub_1CD0()
{
  result = qword_C400;
  if (!qword_C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C400);
  }

  return result;
}

unint64_t sub_1D28()
{
  result = qword_C408;
  if (!qword_C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C408);
  }

  return result;
}

uint64_t sub_1D7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_1DC4()
{
  result = qword_C418;
  if (!qword_C418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C418);
  }

  return result;
}

uint64_t sub_1E1C()
{

  return swift_once();
}

void sub_1E3C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_1E74(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1E90()
{

  return swift_once();
}

uint64_t sub_1EB0()
{
}

uint64_t sub_1ED8()
{

  return swift_slowAlloc();
}

uint64_t sub_1EF0(uint64_t a1, uint64_t a2)
{
  sub_1BE8(a1, a2);

  return sub_55BC();
}

void sub_1F18(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_1F38()
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v0 = sub_55DC();
  sub_1BE8(v0, qword_C648);
  v1 = sub_55BC();
  v2 = sub_55FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#CalendarSuggestionsRepository getPooledSuggestions", v3, 2u);
  }

  sub_1C20(&qword_C4D0, qword_5A98);
  v4 = *(sub_548C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_59D0;
  sub_549C();
  sub_27A8();
  sub_2168();

  sub_27A8();
  sub_2214();

  sub_27A8();
  sub_22BC();

  sub_27A8();
  sub_2368();

  sub_27A8();
  sub_2410();

  return v7;
}

uint64_t sub_2168()
{

  sub_316C();
  sub_542C();
  return sub_547C();
}

uint64_t sub_2214()
{

  sub_3258();
  sub_542C();
  return sub_547C();
}

uint64_t sub_22BC()
{

  sub_3504();
  sub_542C();
  return sub_547C();
}

uint64_t sub_2368()
{

  sub_3338();
  sub_542C();
  return sub_547C();
}

uint64_t sub_2410()
{

  sub_3418();
  sub_542C();
  return sub_547C();
}

uint64_t sub_24F4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to InternalSuggestionsRepository.getAsyncPooledSuggestions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_259C;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t sub_259C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_269C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return SuggestionsRepository.getOwner()(a1, WitnessTable);
}

uint64_t sub_2768(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarSuggestionsRepository();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27A8()
{

  return sub_55EC();
}

uint64_t sub_27C8()
{
  v0 = sub_55DC();
  sub_2848(v0, qword_C648);
  sub_1BE8(v0, qword_C648);
  return sub_55CC();
}

uint64_t *sub_2848(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_28AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v4 = sub_55DC();
  sub_1BE8(v4, qword_C648);
  v5 = sub_55BC();
  v6 = sub_55FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#CalendarInvocationActionProvider getInvocationAction", v7, 2u);
  }

  v8 = a1[4];
  sub_38D8(a1, a1[3]);
  sub_543C();
  sub_3054();

  v9 = sub_54FC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_54EC();
  a2[3] = v9;
  result = sub_391C();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_2A34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v4 = sub_55DC();
  sub_1BE8(v4, qword_C648);
  v5 = sub_55BC();
  v6 = sub_55FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#CalendarInvocationActionProvider getInvocationAction", v7, 2u);
  }

  v8 = a1[4];
  sub_38D8(a1, a1[3]);
  sub_543C();
  sub_3054();

  v9 = sub_54FC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_54EC();
  a2[3] = v9;
  result = sub_391C();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_2BBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v4 = sub_55DC();
  sub_1BE8(v4, qword_C648);
  v5 = sub_55BC();
  v6 = sub_55FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#CalendarInvocationActionProvider getInvocationAction", v7, 2u);
  }

  v8 = a1[4];
  sub_38D8(a1, a1[3]);
  sub_543C();
  sub_3054();

  v9 = sub_54FC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_54EC();
  a2[3] = v9;
  result = sub_391C();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_2D44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v4 = sub_55DC();
  sub_1BE8(v4, qword_C648);
  v5 = sub_55BC();
  v6 = sub_55FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#CalendarInvocationActionProvider getInvocationAction", v7, 2u);
  }

  v8 = a1[4];
  sub_38D8(a1, a1[3]);
  sub_543C();
  sub_3054();

  v9 = sub_54FC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_54EC();
  a2[3] = v9;
  result = sub_391C();
  a2[4] = result;
  *a2 = v12;
  return result;
}

unint64_t sub_2ECC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v4 = sub_55DC();
  sub_1BE8(v4, qword_C648);
  v5 = sub_55BC();
  v6 = sub_55FC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "#CalendarInvocationActionProvider getInvocationAction", v7, 2u);
  }

  v8 = a1[4];
  sub_38D8(a1, a1[3]);
  sub_543C();
  sub_3054();

  v9 = sub_54FC();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_54EC();
  a2[3] = v9;
  result = sub_391C();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t sub_3054()
{
  if (qword_C270 != -1)
  {
    swift_once();
  }

  v0 = sub_55DC();
  sub_1BE8(v0, qword_C648);
  v1 = sub_55BC();
  v2 = sub_55FC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "#CalendarInvocationActionProvider mapToDirectInvocation", v3, 2u);
  }

  sub_1C20(&qword_C508, &qword_5CD8);

  return sub_55EC();
}

uint64_t sub_316C()
{
  if (qword_C278 != -1)
  {
    sub_3994();
  }

  v0 = sub_53AC();
  sub_1BE8(v0, qword_C660);
  if (qword_C280 != -1)
  {
    sub_3974();
  }

  sub_54DC();
  sub_39D0();
  v2[3] = &unk_8550;
  sub_3780();
  sub_39F8();
  sub_39B4();
  sub_540C();
  sub_3638(v2);
  return sub_3638(v3);
}

uint64_t sub_3258()
{
  if (qword_C278 != -1)
  {
    sub_3994();
  }

  v0 = sub_53AC();
  sub_1BE8(v0, qword_C660);
  if (qword_C280 != -1)
  {
    sub_3974();
  }

  sub_54DC();
  sub_39D0();
  v2[3] = &unk_8570;
  sub_372C();
  sub_39F8();
  sub_39B4();
  sub_39DC();
  sub_3638(v2);
  return sub_3638(v3);
}

uint64_t sub_3338()
{
  if (qword_C278 != -1)
  {
    sub_3994();
  }

  v0 = sub_53AC();
  sub_1BE8(v0, qword_C660);
  if (qword_C280 != -1)
  {
    sub_3974();
  }

  sub_54DC();
  sub_39D0();
  v2[3] = &unk_85B0;
  sub_3684();
  sub_39F8();
  sub_39B4();
  sub_39DC();
  sub_3638(v2);
  return sub_3638(v3);
}

uint64_t sub_3418()
{
  if (qword_C278 != -1)
  {
    sub_3994();
  }

  v0 = sub_53AC();
  sub_1BE8(v0, qword_C660);
  if (qword_C280 != -1)
  {
    sub_3974();
  }

  sub_54DC();
  sub_39D0();
  v2[3] = &unk_85D0;
  sub_35E4();
  sub_39F8();
  sub_39B4();
  sub_540C();
  sub_3638(v2);
  return sub_3638(v3);
}

uint64_t sub_3504()
{
  if (qword_C278 != -1)
  {
    sub_3994();
  }

  v0 = sub_53AC();
  sub_1BE8(v0, qword_C660);
  if (qword_C280 != -1)
  {
    sub_3974();
  }

  sub_54DC();
  sub_39D0();
  v2[3] = &unk_8590;
  sub_36D8();
  sub_39F8();
  sub_39B4();
  sub_39DC();
  sub_3638(v2);
  return sub_3638(v3);
}

unint64_t sub_35E4()
{
  result = qword_C4D8;
  if (!qword_C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4D8);
  }

  return result;
}

uint64_t sub_3638(void *a1)
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

unint64_t sub_3684()
{
  result = qword_C4E0;
  if (!qword_C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E0);
  }

  return result;
}

unint64_t sub_36D8()
{
  result = qword_C4E8;
  if (!qword_C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4E8);
  }

  return result;
}

unint64_t sub_372C()
{
  result = qword_C4F0;
  if (!qword_C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F0);
  }

  return result;
}

unint64_t sub_3780()
{
  result = qword_C4F8;
  if (!qword_C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C4F8);
  }

  return result;
}

unint64_t sub_3810(uint64_t a1)
{
  result = sub_35E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3838(uint64_t a1)
{
  result = sub_3684();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3860(uint64_t a1)
{
  result = sub_36D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_3888(uint64_t a1)
{
  result = sub_372C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_38B0(uint64_t a1)
{
  result = sub_3780();
  *(a1 + 8) = result;
  return result;
}

void *sub_38D8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_391C()
{
  result = qword_C500;
  if (!qword_C500)
  {
    sub_54FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C500);
  }

  return result;
}

uint64_t sub_3974()
{

  return swift_once();
}

uint64_t sub_3994()
{

  return swift_once();
}

uint64_t sub_39DC()
{

  return sub_540C();
}

uint64_t sub_39F8()
{

  return _swift_retain(v0);
}

uint64_t sub_3A10()
{
  sub_51C8();
  v0[46] = v1;
  v2 = sub_559C();
  v0[47] = v2;
  v3 = *(v2 - 8);
  v0[48] = v3;
  v4 = *(v3 + 64) + 15;
  v0[49] = swift_task_alloc();

  return _swift_task_switch(sub_3ACC, 0, 0);
}

uint64_t sub_3ACC()
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v1 = sub_55DC();
  sub_1BE8(v1, qword_C648);
  v2 = sub_55BC();
  v3 = sub_55FC();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_1ED8() = 0;
    sub_51D4(&dword_0, v4, v5, "#CalendarGenerator generateCandidateSuggestions");
    sub_51A0();
  }

  v6 = *(v0 + 384);
  v28 = *(v0 + 392);
  v8 = *(v0 + 368);
  v7 = *(v0 + 376);

  sub_1C20(&qword_C618, &qword_5EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_59D0;
  v30 = v8[4];
  sub_38D8(v8, v8[3]);
  v10 = &_swiftEmptyArrayStorage;
  sub_5194();
  sub_55EC();
  v29 = enum case for Objective.discoverability(_:);
  v32 = *(v6 + 104);
  v32(v28);
  sub_551C();

  v31 = *(v6 + 8);
  v31(v28, v7);
  sub_5144();
  sub_5194();
  sub_55EC();
  v11 = sub_50FC();
  v12(v11);
  sub_50E4();
  sub_551C();

  sub_5184();
  v13();
  v27 = v8[4];
  sub_38D8(v8, v8[3]);
  sub_5194();
  sub_55EC();
  v14 = sub_50FC();
  v15(v14);
  sub_50E4();
  sub_551C();

  sub_5184();
  v16();
  sub_5144();
  sub_5194();
  sub_55EC();
  v17 = sub_50FC();
  v18(v17);
  sub_50E4();
  sub_551C();

  sub_5184();
  v19();
  sub_5144();
  sub_5194();
  sub_55EC();
  (v32)(v28, v29, v7);
  sub_551C();

  v31(v28, v7);
  for (i = 32; i != 232; i += 40)
  {
    sub_4E54(inited + i, v0 + 248);
    *(v0 + 360) = *(v0 + 280);
    v21 = *(v0 + 264);
    *(v0 + 328) = *(v0 + 248);
    *(v0 + 344) = v21;
    if (*(v0 + 352))
    {
      sub_50C4((v0 + 328), v0 + 288);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_4F2C(0, v10[2] + 1, 1, v10);
      }

      v23 = v10[2];
      v22 = v10[3];
      if (v23 >= v22 >> 1)
      {
        v10 = sub_4F2C((v22 > 1), v23 + 1, 1, v10);
      }

      v10[2] = v23 + 1;
      sub_50C4((v0 + 288), &v10[5 * v23 + 4]);
    }

    else
    {
      sub_4EC4(v0 + 328);
    }
  }

  v24 = *(v0 + 392);
  swift_setDeallocating();
  sub_5064();

  v25 = *(v0 + 8);

  return v25(v10);
}

uint64_t sub_3FE4()
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v1 = sub_55DC();
  sub_1BE8(v1, qword_C648);
  v2 = sub_55BC();
  v3 = sub_55FC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = sub_1ED8();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "#CalendarGenerator getSubscriptions", v4, 2u);
    sub_51A0();
  }

  sub_1C20(&qword_C5E8, &qword_5E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5800;
  sub_558C();
  v6 = sub_541C();
  v15[3] = v6;
  v15[4] = sub_4E0C(&qword_C5F0, 255, &type metadata accessor for CoreSignalTypes);
  v7 = sub_4DAC(v15);
  (*(*(v6 - 8) + 104))(v7, enum case for CoreSignalTypes.app(_:), v6);
  *(inited + 32) = sub_557C();
  sub_1C20(&qword_C5F8, &qword_5E98);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_59D0;
  v9 = type metadata accessor for CalendarConfigurator();
  v10 = swift_allocObject();
  sub_45F8(0xD000000000000018, 0x8000000000006120);
  *(v8 + 56) = v9;
  v12 = sub_4E0C(&qword_C600, v11, type metadata accessor for CalendarConfigurator);
  *(v8 + 64) = v12;
  *(v8 + 32) = v10;
  sub_5114();
  sub_5164();
  *(v8 + 96) = v9;
  *(v8 + 104) = v12;
  *(v8 + 72) = v10;
  sub_5114();
  sub_5164();
  *(v8 + 136) = v9;
  *(v8 + 144) = v12;
  *(v8 + 112) = v10;
  sub_5114();
  sub_5164();
  *(v8 + 176) = v9;
  *(v8 + 184) = v12;
  *(v8 + 152) = v10;
  v13 = sub_5114();
  sub_45F8(0xD00000000000001DLL, v0 | 0x8000000000000000);
  *(v8 + 216) = v9;
  *(v8 + 224) = v12;
  *(v8 + 192) = v13;
  *(inited + 40) = v8;
  sub_1C20(&qword_C608, &qword_5EA0);
  sub_4E0C(&qword_C610, 255, &type metadata accessor for Signal);
  return sub_55EC();
}

uint64_t sub_4328(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to SignalSubscriber.getAsyncSubscriptions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_50E0;

  return SignalSubscriber.getAsyncSubscriptions()(a1, a2);
}

uint64_t sub_43D0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to SignalSubscriber.getAsyncLookupSubscriptions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_50E0;

  return SignalSubscriber.getAsyncLookupSubscriptions()(a1, a2);
}

uint64_t sub_4478()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_450C;

  return sub_3A10();
}

uint64_t sub_450C()
{
  sub_51C8();
  v2 = v1;
  sub_51BC();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_5134();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_45F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v6 = sub_55DC();
  sub_1BE8(v6, qword_C648);
  v7 = sub_55BC();
  v8 = sub_55FC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = sub_1ED8();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "#CalendarConfigurator init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_46F0()
{
  if (qword_C270 != -1)
  {
    sub_1E1C();
  }

  v1 = sub_55DC();
  sub_1BE8(v1, qword_C648);
  v2 = sub_55BC();
  v3 = sub_55FC();
  if (os_log_type_enabled(v2, v3))
  {
    *sub_1ED8() = 0;
    sub_51D4(&dword_0, v4, v5, "#CalendarConfigurator setContext");
    sub_51A0();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_47D0()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_482C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_4864()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_48F0;

  return sub_46D4();
}

uint64_t sub_48F0()
{
  sub_51C8();
  sub_51BC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_5134();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_49D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_450C;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_4A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_4B34;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_4B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_51BC();
  v8 = *(v7 + 16);
  v9 = *v3;
  sub_5134();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(a1, a2, a3);
}

uint64_t sub_4C3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, WitnessTable);
}

unint64_t sub_4D00()
{
  result = qword_C5D8;
  if (!qword_C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5D8);
  }

  return result;
}

unint64_t sub_4D58()
{
  result = qword_C5E0;
  if (!qword_C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5E0);
  }

  return result;
}

uint64_t *sub_4DAC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_4E0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_4E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C20(&qword_C620, &qword_5EB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4EC4(uint64_t a1)
{
  v2 = sub_1C20(&qword_C620, &qword_5EB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_4F2C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C20(&qword_C628, &qword_5EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C20(&qword_C630, &qword_5EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_5064()
{
  v1 = *(v0 + 16);
  sub_1C20(&qword_C620, &qword_5EB8);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_50C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_5114()
{

  return swift_allocObject();
}

void *sub_5144()
{
  v4 = v0[4];
  v2 = v0[3];

  return sub_38D8(v0, v2);
}

uint64_t sub_5164()
{

  return sub_45F8(0xD000000000000019, v0 | 0x8000000000000000);
}

uint64_t sub_51A0()
{
}

void sub_51D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_51F4()
{
  v0 = sub_53AC();
  sub_2848(v0, qword_C660);
  sub_1BE8(v0, qword_C660);
  return sub_539C();
}

uint64_t sub_525C()
{
  v0 = (*(*(sub_1C20(&qword_C638, &unk_5ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = (&v9 - v1);
  *v2 = 0xD000000000000013;
  v2[1] = 0x80000000000063E0;
  v3 = enum case for Image.appIcon(_:);
  v4 = sub_556C();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_5374(v2, 0, 1, v4);
  v5 = sub_54DC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_54CC();
  qword_C678 = result;
  return result;
}