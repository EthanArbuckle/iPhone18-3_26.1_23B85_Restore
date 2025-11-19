uint64_t sub_12D0()
{
  sub_2EB4();
  sub_2FA4();
  sub_1378();
  return sub_2E94();
}

uint64_t sub_1378()
{
  v0 = (*(*(sub_154C(&qword_80A0, &unk_3250) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v11 - v1;
  if (qword_8090 != -1)
  {
    swift_once();
  }

  v3 = sub_2DC4();
  sub_15E4(v3, qword_8A00);
  strcpy(v2, "com.apple.tv");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  v4 = enum case for Image.appIcon(_:);
  v5 = sub_2F54();
  (*(*(v5 - 8) + 104))(v2, v4, v5);
  sub_161C(v2, 0, 1, v5);
  v6 = sub_2EF4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2EE4();
  v12[3] = v6;
  v12[4] = &protocol witness table for StaticIconUrlProvider;
  v12[0] = v9;
  v11[3] = &type metadata for FindVideoActionProvider;
  v11[4] = sub_1644();
  sub_2E24();
  sub_1698(v11);
  return sub_1698(v12);
}

uint64_t sub_154C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1594@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2E54();
  v3 = sub_2E44();
  a1[3] = v2;
  result = sub_16F4();
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_15E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_1644()
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_1698(void *a1)
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

unint64_t sub_16F4()
{
  result = qword_80B0;
  if (!qword_80B0)
  {
    sub_2E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80B0);
  }

  return result;
}

uint64_t sub_174C()
{
  v0 = sub_2DC4();
  sub_17B4(v0, qword_8A00);
  sub_15E4(v0, qword_8A00);
  return sub_2DB4();
}

uint64_t *sub_17B4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1828()
{
  sub_154C(&qword_80C8, &qword_33F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_32D0;
  sub_2F84();
  *(inited + 32) = sub_2F64();
  sub_154C(&qword_80D0, &qword_33F8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_32E0;
  *(v1 + 56) = &type metadata for VideoConfiguration;
  v2 = sub_1DF4();
  *(v1 + 64) = v2;
  *(v1 + 32) = 0xD00000000000002ALL;
  *(v1 + 40) = 0x8000000000003080;
  *(inited + 40) = v1;
  v3 = sub_2E34();
  v7[3] = v3;
  v7[4] = sub_1EA8(&qword_80E0, &type metadata accessor for CoreSignalTypes);
  v4 = sub_1E48(v7);
  (*(*(v3 - 8) + 104))(v4, enum case for CoreSignalTypes.app(_:), v3);
  *(inited + 48) = sub_2F74();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_32E0;
  *(v5 + 56) = &type metadata for VideoConfiguration;
  *(v5 + 64) = v2;
  *(v5 + 32) = 0xD00000000000002ALL;
  *(v5 + 40) = 0x8000000000003080;
  *(inited + 56) = v5;
  sub_154C(&qword_80E8, &qword_3400);
  sub_1EA8(&qword_80F0, &type metadata accessor for Signal);
  return sub_2FA4();
}

uint64_t sub_1A74(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to SignalSubscriber.getAsyncSubscriptions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2458;

  return SignalSubscriber.getAsyncSubscriptions()(a1, a2);
}

uint64_t sub_1B1C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to SignalSubscriber.getAsyncLookupSubscriptions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2458;

  return SignalSubscriber.getAsyncLookupSubscriptions()(a1, a2);
}

uint64_t sub_1BC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C50;

  return sub_1A50();
}

uint64_t sub_1C50(uint64_t a1)
{
  sub_246C();
  v4 = *(v3 + 16);
  v5 = *v1;
  sub_245C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

unint64_t sub_1D48()
{
  result = qword_80B8;
  if (!qword_80B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80B8);
  }

  return result;
}

unint64_t sub_1DA0()
{
  result = qword_80C0;
  if (!qword_80C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80C0);
  }

  return result;
}

unint64_t sub_1DF4()
{
  result = qword_80D8;
  if (!qword_80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80D8);
  }

  return result;
}

uint64_t *sub_1E48(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1EA8(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 sub_1EF0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1EFC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1F3C(uint64_t result, int a2, int a3)
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

uint64_t sub_1F9C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1FD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_205C;

  return sub_1F88();
}

uint64_t sub_205C()
{
  sub_246C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_245C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_2144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValid(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1C50;

  return CandidateSuggestionConfigurator.isValid(signal:)(a1, a2, a3);
}

uint64_t sub_21F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to CandidateSuggestionConfigurator.isValidWithDebug(signal:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22A4;

  return CandidateSuggestionConfigurator.isValidWithDebug(signal:)(a1, a2, a3);
}

uint64_t sub_22A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_246C();
  v8 = *(v7 + 16);
  v9 = *v3;
  sub_245C();
  *v10 = v9;

  v11 = *(v9 + 8);

  return v11(a1, a2, a3);
}

uint64_t sub_23AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DF4();

  return CandidateSuggestionConfigurator.create(actionIdentifier:)(a1, a2, v4);
}

unint64_t sub_2404()
{
  result = qword_80F8;
  if (!qword_80F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80F8);
  }

  return result;
}

uint64_t sub_2478()
{
  sub_154C(&qword_8198, &qword_3558);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_32E0;
  *(v0 + 56) = &type metadata for VideoOwnerDefinition;
  *(v0 + 64) = sub_2588();
  return v0;
}

uint64_t sub_2528()
{
  v1 = sub_2F04();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_2588()
{
  result = qword_81A0;
  if (!qword_81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81A0);
  }

  return result;
}

uint64_t sub_25EC()
{
  v0 = sub_2E04();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2E14();
  qword_8A18 = result;
  return result;
}

unint64_t sub_263C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for VideoGenerator;
  result = sub_27CC();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_2670@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for VideoTargetOwnerDefinition;
  result = sub_2778();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_26CC()
{
  result = qword_81A8;
  if (!qword_81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81A8);
  }

  return result;
}

unint64_t sub_2724()
{
  result = qword_81B0;
  if (!qword_81B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81B0);
  }

  return result;
}

unint64_t sub_2778()
{
  result = qword_81B8;
  if (!qword_81B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81B8);
  }

  return result;
}

unint64_t sub_27CC()
{
  result = qword_81C0;
  if (!qword_81C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81C0);
  }

  return result;
}

unint64_t sub_2820()
{
  result = qword_81C8;
  if (!qword_81C8)
  {
    sub_2E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81C8);
  }

  return result;
}

unint64_t sub_2888@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for VideoSuggestionsRepository;
  result = sub_29EC();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_28C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2ED4();
  result = sub_2EC4();
  a1[3] = v2;
  a1[4] = &protocol witness table for NoOpSuggestionFilter;
  *a1 = result;
  return result;
}

uint64_t sub_2908@<X0>(uint64_t *a1@<X8>)
{
  if (qword_8098 != -1)
  {
    swift_once();
  }

  v2 = qword_8A18;
  a1[3] = sub_2E04();
  a1[4] = sub_2820();
  *a1 = v2;

  return _swift_retain(v2);
}

unint64_t sub_2998()
{
  result = qword_81D0;
  if (!qword_81D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D0);
  }

  return result;
}

unint64_t sub_29EC()
{
  result = qword_81D8;
  if (!qword_81D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81D8);
  }

  return result;
}

uint64_t sub_2A58()
{
  sub_154C(&unk_81F0, &qword_3778);
  v0 = *(sub_2EA4() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_32E0;
  sub_12D0();
  return v3;
}

uint64_t sub_2B10(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to InternalSuggestionsRepository.getAsyncPooledSuggestions()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2BB8;

  return InternalSuggestionsRepository.getAsyncPooledSuggestions()(a1, a2);
}

uint64_t sub_2BB8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2CB8(uint64_t a1)
{
  v2 = sub_29EC();

  return SuggestionsRepository.getOwner()(a1, v2);
}

unint64_t sub_2D08()
{
  result = qword_81E0;
  if (!qword_81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81E0);
  }

  return result;
}

unint64_t sub_2D60()
{
  result = qword_81E8;
  if (!qword_81E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_81E8);
  }

  return result;
}