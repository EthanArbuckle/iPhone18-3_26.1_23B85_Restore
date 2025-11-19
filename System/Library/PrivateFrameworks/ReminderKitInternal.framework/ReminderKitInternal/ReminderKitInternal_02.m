uint64_t _s19ReminderKitInternal24REMRemindersListDataViewO15TodayGroupModelV5GroupVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_2300756FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_230075774(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB18738);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_230075850@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_2300758A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_2300758E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_230075934()
{

  return swift_deallocObject();
}

uint64_t sub_230075980()
{

  return swift_deallocObject();
}

uint64_t sub_2300759F8()
{

  return swift_deallocObject();
}

uint64_t sub_230075AA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 104))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_230075B24()
{

  return swift_deallocObject();
}

__n128 sub_230075B68@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*(a1 + 8) + 16);
  *a2 = result;
  return result;
}

__n128 sub_230075B78(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(*(a2 + 8) + 16) = *a1;
  return result;
}

double sub_230075B88@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(*(*(a1 + 8) + 16) + 8 * *a2);
  *a3 = result;
  return result;
}

double sub_230075BA0(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(*(*(a2 + 8) + 16) + 8 * *a3) = *a1;
  return result;
}

void *_s19ReminderKitInternal9REMVectorVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_230075C00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_230075C50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_230075CB0()
{

  return swift_deallocObject();
}

uint64_t sub_230075CF8()
{

  return swift_deallocObject();
}

uint64_t sub_230075D40()
{

  return swift_deallocObject();
}

uint64_t sub_230075D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_230075E50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14980);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_230075F14()
{

  return swift_deallocObject();
}

uint64_t sub_230075F5C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DB14308);
  v6 = *(sub_230311408() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    (*(*(v1 - 8) + 8))(v0 + v7, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_230076104()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_23007613C()
{

  return swift_deallocObject();
}

uint64_t sub_23007617C()
{

  return swift_deallocObject();
}

id sub_2300761E4(id result, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_2300761F8(result, a2);
  }

  return result;
}

id sub_2300761F8(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

uint64_t sub_230076218()
{

  sub_2301CF8FC(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_230076268()
{

  return swift_deallocObject();
}

uint64_t sub_2300762B0()
{

  sub_2301CFAA0(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_2300762FC()
{

  return swift_deallocObject();
}

uint64_t sub_230076354()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_23007642C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

unint64_t sub_2300764EC()
{
  v1 = 0x53676E6974726F73;
  v2 = 0x6D6F43746E756F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x706D6F43776F6873;
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

uint64_t sub_23007658C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_230308C54(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23007682C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_23030EB58();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
      v15 = *(*(Configuration - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, Configuration);
    }
  }
}

uint64_t sub_23007695C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = sub_23030EB58();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
      v14 = *(*(Configuration - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, Configuration);
    }
  }

  return result;
}

uint64_t sub_230076A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v11 = *(*(Configuration - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, Configuration);
  }
}

uint64_t sub_230076B70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for REMRemindersListDataView.ScheduledTodayGroup(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
    v13 = *(*(Configuration - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, Configuration);
  }
}

uint64_t sub_230076C6C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_23030EB58();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
      v14 = *(*(Configuration - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, Configuration);
    }
  }
}

_BYTE *sub_230076D88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = sub_23030EB58();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
      v14 = *(*(Configuration - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, Configuration);
    }
  }

  return result;
}

uint64_t sub_230076EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23030EB58();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_23030EE08();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v15 = *(*(Configuration - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, Configuration);
}

uint64_t sub_230076FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_23030EB58();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_23030EE08();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration(0);
  v17 = *(*(Configuration - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, Configuration);
}

uint64_t sub_230077134(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_230077264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB15AA0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_230077394(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_2300774A8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_2300775EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 254)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[8];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_230077720(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for REMRemindersListDataView.ShowCompleted(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 254)
  {
    *(a1 + a4[7]) = a2 + 1;
  }

  else
  {
    v13 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t _s26TemplateSectionsInvocationC10ParametersVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  v4 = v3;
  return a1;
}

__n128 sub_230077924@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(*(a1 + 16) + 16);
  *a2 = result;
  return result;
}

__n128 sub_230077934(__n128 *a1, uint64_t a2)
{
  result = *a1;
  *(*(a2 + 16) + 16) = *a1;
  return result;
}

double sub_230077944@<D0>(uint64_t a1@<X0>, void *a2@<X1>, double *a3@<X8>)
{
  result = *(*(*(a1 + 16) + 16) + 8 * *a2);
  *a3 = result;
  return result;
}

double sub_23007795C(double *a1, uint64_t a2, void *a3)
{
  result = *a1;
  *(*(*(a2 + 16) + 16) + 8 * *a3) = *a1;
  return result;
}

uint64_t sub_230077984@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2 * v3;
  if ((*a2 * v3) >> 64 == v4 >> 63)
  {
    v5 = a2[1];
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (!v6)
    {
      *a3 = *(*(*(result + 16) + 16) + 8 * v7);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2300779C4(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 8);
  v4 = *a3 * v3;
  if ((*a3 * v3) >> 64 == v4 >> 63)
  {
    v5 = a3[1];
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (!v6)
    {
      *(*(*(a2 + 16) + 16) + 8 * v7) = *result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s19ReminderKitInternal9REMMatrixVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

id sub_230077AEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

uint64_t sub_230077B44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_230077B9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ConfigurationIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

void *_s11CodingErrorOwta(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_230077CA0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_230077CB8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_230077D14()
{
  sub_23030F9C8();
}

void sub_230077D8C(uint64_t *a1@<X8>)
{
  v2 = 0x54746E65746E6F63;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xEB00000000657079;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

id *assignWithTake for REMAccountSnapshotSummary(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

void sub_2300780F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005>::result_type std::mersenne_twister_engine<unsigned long long,64ul,312ul,156ul,31ul,13043109905998158313ull,29ul,6148914691236517205ull,17ul,8202884508482404352ull,37ul,18444473444759240704ull,43ul,6364136223846793005ull>::operator()(std::mersenne_twister_engine<unsigned long long, 64, 312, 156, 31, 13043109905998158313, 29, 6148914691236517205, 17, 8202884508482404352, 37, 18444473444759240704, 43, 6364136223846793005> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x138;
  v3 = 0xB5026F5AA96619E9;
  if ((this->__x_[v2] & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 ^ this->__x_[(i + 156) % 0x138] ^ ((this->__x_[v2] & 0x7FFFFFFE | this->__x_[i] & 0xFFFFFFFF80000000) >> 1);
  this->__x_[i] = v4;
  this->__i_ = v2;
  v5 = (((v4 >> 29) & 0x5555555555555555 ^ v4) << 17) & 0x71D67FFFEDA60000 ^ (v4 >> 29) & 0x5555555555555555 ^ v4;
  return (v5 << 37) & 0xFFF7EEE000000000 ^ v5 ^ (((v5 << 37) & 0xFFF7EEE000000000 ^ v5) >> 43);
}

void sub_23007A778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id soft_getCTGreenTeaOsLogHandle(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getgetCTGreenTeaOsLogHandleSymbolLoc_ptr;
  v10 = getgetCTGreenTeaOsLogHandleSymbolLoc_ptr;
  if (!getgetCTGreenTeaOsLogHandleSymbolLoc_ptr)
  {
    v3 = libCTGreenTeaLoggerLibrary();
    v8[3] = dlsym(v3, "getCTGreenTeaOsLogHandle");
    getgetCTGreenTeaOsLogHandleSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v6 = [REMRegulatoryLogger init];
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  v4 = v2(a1);

  return v4;
}

void *__getct_green_tea_logger_createSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libCTGreenTeaLoggerLibrary();
  result = dlsym(v2, "ct_green_tea_logger_create");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getct_green_tea_logger_createSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libCTGreenTeaLoggerLibrary()
{
  v12 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = libCTGreenTeaLoggerLibraryCore_frameworkLibrary;
  v9 = libCTGreenTeaLoggerLibraryCore_frameworkLibrary;
  if (!libCTGreenTeaLoggerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __libCTGreenTeaLoggerLibraryCore_block_invoke;
    v3[4] = &unk_2788BC570;
    v4 = &v6;
    v5 = v3;
    v10 = xmmword_2788BC550;
    v11 = 0;
    v7[3] = _sl_dlopen();
    libCTGreenTeaLoggerLibraryCore_frameworkLibrary = *(v4[1] + 24);
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  v1 = v3[0];
  if (!v0)
  {
    v1 = abort_report_np();
    __break(1u);
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void sub_23007B150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libCTGreenTeaLoggerLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libCTGreenTeaLoggerLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getgetCTGreenTeaOsLogHandleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = libCTGreenTeaLoggerLibrary();
  result = dlsym(v2, "getCTGreenTeaOsLogHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getgetCTGreenTeaOsLogHandleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t REMSuggestedAttributesAccuracy.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v12 = *(v1 + 96);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 128);
  v5 = v14;
  v6 = *(v1 + 32);
  v11[0] = *(v1 + 16);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_23007B300(v11, v10);
}

uint64_t REMSuggestedAttributesAccuracy.droppingSensitiveFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 80);
  v17 = *(v1 + 96);
  v18 = v2;
  v4 = *(v1 + 32);
  v14[0] = *(v1 + 16);
  v5 = *(v1 + 48);
  v6 = *(v1 + 16);
  v14[1] = *(v1 + 32);
  v14[2] = v5;
  v7 = *(v1 + 80);
  v9 = *(v1 + 48);
  v15 = *(v1 + 64);
  v8 = v15;
  v16 = v7;
  v10 = *(v1 + 112);
  *(a1 + 96) = v17;
  *(a1 + 112) = v10;
  *(a1 + 64) = v8;
  *(a1 + 80) = v3;
  *(a1 + 48) = v9;
  v19 = *(v1 + 128);
  v11 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  *(a1 + 8) = v11;
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return sub_23007B300(v14, v13);
}

void __swiftcall REMSuggestedAttributesAccuracy.init(correctSample:incorrectSample:metrics:)(ReminderKitInternal::REMSuggestedAttributesAccuracy *__return_ptr retstr, Swift::OpaquePointer correctSample, Swift::OpaquePointer incorrectSample, ReminderKitInternal::MultiClassificationMetric *metrics)
{
  retstr->correctSample = correctSample;
  retstr->incorrectSample = incorrectSample;
  v4 = *&metrics->typeIIErrors._rawValue;
  *&retstr->metrics.recalls._rawValue = *&metrics->recalls._rawValue;
  *&retstr->metrics.typeIIErrors._rawValue = v4;
  *&retstr->metrics.precision = *&metrics->precision;
  retstr->metrics.indexedClasses._rawValue = metrics->indexedClasses._rawValue;
  v5 = *&metrics->confusionMatrix._rawValue;
  *&retstr->metrics.correctIndices._rawValue = *&metrics->correctIndices._rawValue;
  *&retstr->metrics.confusionMatrix._rawValue = v5;
  v6 = *&metrics->falseNegatives._rawValue;
  *&retstr->metrics.trueNegatives._rawValue = *&metrics->trueNegatives._rawValue;
  *&retstr->metrics.falseNegatives._rawValue = v6;
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO011SectionPathE0O9hashValueSivg_0()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t sub_23007B464()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t sub_23007B4A8()
{
  v1 = 0x636572726F636E69;
  if (*v0 != 1)
  {
    v1 = 0x7363697274656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5374636572726F63;
  }
}

uint64_t sub_23007B51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23007D988(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23007B550(uint64_t a1)
{
  v2 = sub_23007B8E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23007B58C(uint64_t a1)
{
  v2 = sub_23007B8E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t REMSuggestedAttributesAccuracy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB13DD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = *v1;
  v13[0] = v1[1];
  v8 = *(v1 + 6);
  v28 = *(v1 + 5);
  v29 = v8;
  v30 = *(v1 + 7);
  v31 = v1[16];
  v9 = *(v1 + 2);
  v24 = *(v1 + 1);
  v25 = v9;
  v10 = *(v1 + 4);
  v26 = *(v1 + 3);
  v27 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23007B8E0();

  sub_230311448();
  *&v16 = v7;
  LOBYTE(v14[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  sub_230059F7C(&qword_280C96EE8);
  v11 = v13[1];
  sub_230310DF8();

  if (!v11)
  {
    *&v16 = v13[0];
    LOBYTE(v14[0]) = 1;
    sub_230310DF8();
    v20 = v28;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v16 = v24;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v32 = 2;
    sub_23007B300(&v24, v14);
    sub_23007B97C();
    sub_230310DF8();
    v14[4] = v20;
    v14[5] = v21;
    v14[6] = v22;
    v15 = v23;
    v14[0] = v16;
    v14[1] = v17;
    v14[2] = v18;
    v14[3] = v19;
    sub_23007B9D0(v14);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23007B8E0()
{
  result = qword_27DB13DD8;
  if (!qword_27DB13DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB13DD8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_23007B97C()
{
  result = qword_27DB13DF0;
  if (!qword_27DB13DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB13DF0);
  }

  return result;
}

uint64_t REMSuggestedAttributesAccuracy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DF8);
  v5 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v21 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23007B8E0();
  sub_230311428();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB13DE0);
  LOBYTE(v23[0]) = 0;
  sub_230059F7C(&qword_280C98850);
  v8 = v55;
  sub_230310CE8();
  v21 = v29[0];
  LOBYTE(v23[0]) = 1;
  sub_230310CE8();
  v9 = v29[0];
  v38 = 2;
  sub_23007BDA8();
  sub_230310CE8();
  (*(v22 + 8))(v7, v8);
  v51 = v43;
  v10 = v43;
  v52 = v44;
  v53 = v45;
  v47 = v39;
  v48 = v40;
  v49 = v41;
  v11 = v41;
  v50 = v42;
  v12 = v46;
  v54 = v46;
  v13 = v9;
  v14 = v21;
  *&v23[0] = v21;
  *(&v23[0] + 1) = v13;
  v23[3] = v41;
  v24 = v42;
  v23[1] = v39;
  v23[2] = v40;
  v28 = v46;
  v26 = v44;
  v27 = v45;
  v25 = v43;
  v15 = v23[0];
  v16 = v39;
  *(a2 + 32) = v40;
  *(a2 + 48) = v11;
  *a2 = v15;
  *(a2 + 16) = v16;
  v17 = v24;
  v18 = v26;
  v19 = v27;
  *(a2 + 128) = v12;
  *(a2 + 96) = v18;
  *(a2 + 112) = v19;
  *(a2 + 64) = v17;
  *(a2 + 80) = v10;
  sub_23007BDFC(v23, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v29[0] = v14;
  v29[1] = v13;
  v34 = v51;
  v35 = v52;
  v36 = v53;
  v37 = v54;
  v30 = v47;
  v31 = v48;
  v32 = v49;
  v33 = v50;
  return sub_23007BE34(v29);
}

unint64_t sub_23007BDA8()
{
  result = qword_27DB13E08;
  if (!qword_27DB13E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB13E08);
  }

  return result;
}

uint64_t destroy for REMSuggestedAttributesAccuracy()
{
}

uint64_t initializeWithCopy for REMSuggestedAttributesAccuracy(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;
  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  v7 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v7;
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v8;

  return a1;
}

void *assignWithCopy for REMSuggestedAttributesAccuracy(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  a1[6] = a2[6];

  a1[7] = a2[7];

  a1[8] = a2[8];

  a1[9] = a2[9];

  a1[10] = a2[10];

  a1[11] = a2[11];

  a1[12] = a2[12];

  a1[13] = a2[13];
  a1[14] = a2[14];
  a1[15] = a2[15];
  a1[16] = a2[16];

  return a1;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for REMSuggestedAttributesAccuracy(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t getEnumTagSinglePayload for REMSuggestedAttributesAccuracy(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t storeEnumTagSinglePayload for REMSuggestedAttributesAccuracy(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnfairLock.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnfairLock.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23007C48C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23007C4AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for REM_os_activity.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for REM_os_activity.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_23007C6B8()
{
  result = qword_27DB13F80;
  if (!qword_27DB13F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB13F80);
  }

  return result;
}

void *sub_23007C734@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23007C760@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_23007C7F8()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t sub_23007C840()
{
  v1 = *v0;
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  return sub_2303113A8();
}

uint64_t sub_23007C884(uint64_t a1, id *a2)
{
  result = sub_23030F8C8();
  *a2 = 0;
  return result;
}

uint64_t sub_23007C8FC(uint64_t a1, id *a2)
{
  v3 = sub_23030F8D8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23007C97C@<X0>(uint64_t *a1@<X8>)
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v2 = sub_23030F8B8();

  *a1 = v2;
  return result;
}

uint64_t sub_23007C9C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23007DAB0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23007CA00(uint64_t a1)
{
  v2 = sub_23005A138(&qword_27DB140D0, type metadata accessor for NLLanguage);
  v3 = sub_23005A138(&qword_27DB140D8, type metadata accessor for NLLanguage);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007CB94(uint64_t a1)
{
  v2 = sub_23005A138(&qword_27DB14070, type metadata accessor for NLTag);
  v3 = sub_23005A138(&qword_27DB14078, type metadata accessor for NLTag);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007CC50(uint64_t a1)
{
  v2 = sub_23005A138(&qword_27DB140C0, type metadata accessor for NLTagScheme);
  v3 = sub_23005A138(&qword_27DB140C8, type metadata accessor for NLTagScheme);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007CD9C(uint64_t a1)
{
  v2 = sub_23005A138(&qword_27DB14080, type metadata accessor for REMSortingStyle);
  v3 = sub_23005A138(&unk_27DB14088, type metadata accessor for REMSortingStyle);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007CE58(uint64_t a1)
{
  v2 = sub_23005A138(&qword_27DB140B0, type metadata accessor for REMSmartListType);
  v3 = sub_23005A138(&qword_27DB140B8, type metadata accessor for REMSmartListType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007CF14(uint64_t a1)
{
  v2 = sub_23005A138(&qword_27DB140A0, type metadata accessor for Dataclass);
  v3 = sub_23005A138(&qword_27DB140A8, type metadata accessor for Dataclass);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007CFD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_23030F8B8();

  *a1 = v2;
  return result;
}

uint64_t sub_23007D018(uint64_t a1)
{
  v2 = sub_23005A138(&qword_280C96E10, type metadata accessor for Key);
  v3 = sub_23005A138(&qword_27DB14098, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23007D0D4()
{
  v0 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v1 = MEMORY[0x231911850](v0);

  return v1;
}

uint64_t sub_23007D110()
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_23030F9C8();
}

uint64_t sub_23007D164()
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_230311358();
  sub_23030F9C8();
  v0 = sub_2303113A8();

  return v0;
}

uint64_t sub_23007D1D8()
{
  v0 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  v2 = v1;
  if (v0 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_230311048();
  }

  return v5 & 1;
}

unint64_t sub_23007D8DC()
{
  result = qword_27DB14060;
  if (!qword_27DB14060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14060);
  }

  return result;
}

unint64_t sub_23007D934()
{
  result = qword_27DB14068;
  if (!qword_27DB14068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14068);
  }

  return result;
}

uint64_t sub_23007D988(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5374636572726F63 && a2 == 0xED0000656C706D61;
  if (v4 || (sub_230311048() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636572726F636E69 && a2 == 0xEF656C706D615374 || (sub_230311048() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_230311048();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_23007DAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

Swift::Int __swiftcall Diff.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Diff.elements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Diff.remainingIndexes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

ReminderKitInternal::Diff __swiftcall Diff.init(elements:remainingIndexes:)(Swift::OpaquePointer elements, Swift::OpaquePointer remainingIndexes)
{
  v2->_rawValue = elements._rawValue;
  v2[1]._rawValue = remainingIndexes._rawValue;
  result.remainingIndexes = remainingIndexes;
  result.elements = elements;
  return result;
}

uint64_t DiffProtocol.startIndex.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();

  return 0;
}

uint64_t DiffProtocol.endIndex.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  swift_getAssociatedTypeWitness();
  v2 = sub_23030FD78();

  return v2;
}

uint64_t (*sub_23007DD74(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 24 * v3;
    v5 = *(v4 + 48);
    *result = *(v4 + 32);
    *(result + 16) = v5;
    return nullsub_1;
  }

  __break(1u);
  return result;
}

uint64_t *sub_23007DDD0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    v5 = v2[1];
    a2[2] = result;
    a2[3] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_23007DE30@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  v4 = *(v2 + 16);
  a1[2] = 0;
  a1[3] = v4;
}

uint64_t *sub_23007DE88@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23007DEB8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_230240B88(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_23007DEF0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_23007DF30(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_23007DF4C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_23007DF68(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_23007DF84@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_23007DF9C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_23007DFB4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

void *sub_23007DFCC()
{
  v1 = sub_23009D3A4(*v0, v0[1]);

  return v1;
}

void *Diff.Element.init(trace:)@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result[3];
  v3 = result[1];
  if (*result + 1 == result[2])
  {
    if (!__OFADD__(v3, 1))
    {
      if (v3 + 1 == v2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = -1;
        return result;
      }

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

LABEL_6:
  if (v3 >= v2)
  {
    *a2 = *result;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = v3;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t Point.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x2319130E0](*v0);
  return MEMORY[0x2319130E0](v1);
}

uint64_t Point.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  return sub_2303113A8();
}

uint64_t sub_23007E144()
{
  v1 = *v0;
  v2 = v0[1];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  return sub_2303113A8();
}

uint64_t sub_23007E1A0()
{
  v1 = v0[1];
  MEMORY[0x2319130E0](*v0);
  return MEMORY[0x2319130E0](v1);
}

uint64_t sub_23007E1DC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  return sub_2303113A8();
}

__n128 Trace.from.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Trace.to.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t Trace.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x2319130E0](*v0);
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  return MEMORY[0x2319130E0](v4);
}

uint64_t Trace.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  MEMORY[0x2319130E0](v4);
  MEMORY[0x2319130E0](v5);
  return sub_2303113A8();
}

uint64_t sub_23007E34C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  MEMORY[0x2319130E0](v4);
  MEMORY[0x2319130E0](v5);
  return sub_2303113A8();
}

uint64_t sub_23007E3DC()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  MEMORY[0x2319130E0](*v0);
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  return MEMORY[0x2319130E0](v4);
}

uint64_t sub_23007E440()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  sub_230311358();
  MEMORY[0x2319130E0](v1);
  MEMORY[0x2319130E0](v2);
  MEMORY[0x2319130E0](v3);
  MEMORY[0x2319130E0](v4);
  MEMORY[0x2319130E0](v5);
  return sub_2303113A8();
}

uint64_t sub_23007E4E4()
{
  result = sub_230310058();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = MEMORY[0x277D84F90];
    if (v1)
    {
      v7 = MEMORY[0x277D84F90];
      sub_23009EBC4(0, v1, 0);
      v2 = 0;
      result = v7;
      v3 = *(v7 + 16);
      v4 = 40 * v3;
      do
      {
        v8 = result;
        v5 = *(result + 24);
        if (v3 + v2 >= v5 >> 1)
        {
          sub_23009EBC4((v5 > 1), v3 + v2 + 1, 1);
          result = v8;
        }

        *(result + 16) = v3 + v2 + 1;
        v6 = (result + v4);
        v6[4] = v2;
        v6[5] = 0;
        v6[7] = 0;
        v6[8] = 0;
        v6[6] = v2 + 1;
        v4 += 40;
        ++v2;
      }

      while (v1 != v2);
    }
  }

  return result;
}

uint64_t Collection<>.diff(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a4;
  return Collection.diff(_:identitiesEqual:contentsEqual:)(a1, sub_230080ADC, v6, 0, 0, a2, a3, a5);
}

uint64_t Collection<>.diffTraces(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  return Collection.diffTraces(to:isEqual:)(a1, sub_23008073C, v5, a2, a3);
}

char *Collection<>.outputDiffPathTraces(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  return Collection.outputDiffPathTraces(to:isEqual:)(a1, sub_230080ADC, v5, a2, a3);
}

uint64_t DiffProtocol.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedTypeWitness();
  sub_23030FE28();
}

uint64_t Diff.Element.debugDescription.getter()
{
  if (*(v0 + 16))
  {
    if (*(v0 + 16) != 1)
    {
      v5 = 10325;
      v2 = sub_230310E58();
      MEMORY[0x231911790](v2);

      MEMORY[0x231911790](44, 0xE100000000000000);
      goto LABEL_7;
    }

    v1 = 10308;
  }

  else
  {
    v1 = 10313;
  }

  v5 = v1;
LABEL_7:
  v3 = sub_230310E58();
  MEMORY[0x231911790](v3);

  MEMORY[0x231911790](41, 0xE100000000000000);
  return v5;
}

uint64_t Diff.RemainingIndex.debugDescription.getter()
{
  v0 = sub_230310E58();
  MEMORY[0x231911790](v0);

  MEMORY[0x231911790](44, 0xE100000000000000);
  v1 = sub_230310E58();
  MEMORY[0x231911790](v1);

  MEMORY[0x231911790](41, 0xE100000000000000);
  return 40;
}

char *sub_23007E928(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB18F60);
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

char *sub_23007EA48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14348);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23007EB60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_23007EC64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143A8);
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

char *sub_23007ED70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23007EEA4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23007EFB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23007F0D4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  v15 = 24 * v9;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v11;
}

char *sub_23007F1DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23007F2E8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23007F430(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23007F59C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_23007F6C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14398);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB143A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23007F7F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14390);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_23007FA04(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_23007FBE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14358);
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

char *sub_23007FCD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14340);
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

void *sub_23007FE28(void *result, int64_t a2, char a3, void *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = a4[3];
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = a4[2];
  if (v8 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    v11[2] = v9;
    v11[3] = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (v6)
  {
    if (v11 != a4 || v11 + 4 >= &a4[2 * v9 + 4])
    {
      memmove(v11 + 4, a4 + 4, 16 * v9);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142B8);
    swift_arrayInitWithCopy();
  }

  return v11;
}

void *sub_23007FF54(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14310);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14318);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_230080088(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2300801BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2300802C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2300803D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_230080508(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB142C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_23008064C()
{
  result = sub_230310058();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = MEMORY[0x277D84F90];
    if (v1)
    {
      v8 = MEMORY[0x277D84F90];
      sub_23009EBC4(0, v1, 0);
      v2 = 0;
      result = v8;
      v3 = *(v8 + 16);
      v4 = 40 * v3 + 64;
      do
      {
        v9 = result;
        v5 = *(result + 24);
        v6 = v3 + 1;
        if (v3 >= v5 >> 1)
        {
          sub_23009EBC4((v5 > 1), v3 + 1, 1);
          result = v9;
        }

        *(result + 16) = v6;
        v7 = (result + v4);
        *(v7 - 4) = 0;
        *(v7 - 3) = v2;
        *(v7 - 2) = 0;
        *(v7 - 1) = v2 + 1;
        *v7 = 0;
        v4 += 40;
        v3 = v6;
        ++v2;
      }

      while (v1 != v2);
    }
  }

  return result;
}

unint64_t sub_230080740(uint64_t a1)
{
  result = sub_23006C89C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_230080844()
{
  result = qword_27DB142A0;
  if (!qword_27DB142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB142A0);
  }

  return result;
}

unint64_t sub_23008089C()
{
  result = qword_27DB142A8;
  if (!qword_27DB142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB142A8);
  }

  return result;
}

void *assignWithCopy for Diff(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for Diff(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Diff.Element(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Diff.Element(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
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

uint64_t getEnumTagSinglePayload for Trace(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Trace(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

uint64_t KMeansAutoTuner.TuningMethod.hashValue.getter()
{
  sub_230311358();
  MEMORY[0x2319130E0](0);
  return sub_2303113A8();
}

uint64_t _s19ReminderKitInternal22REMNavigationSpecifierO011AccountPathE0O9hashValueSivg_0()
{
  sub_230311358();
  MEMORY[0x2319130E0](0);
  return sub_2303113A8();
}

uint64_t sub_230080BC0()
{
  sub_230311358();
  MEMORY[0x2319130E0](0);
  return sub_2303113A8();
}

uint64_t KMeansAutoTuner.__allocating_init(pointCloud:mathod:minK:maxK:maxIter:randomGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  KMeansAutoTuner.init(pointCloud:mathod:minK:maxK:maxIter:randomGenerator:)(a1, v12, a3, a4, a5, a6);
  return v11;
}

uint64_t KMeansAutoTuner.init(pointCloud:mathod:minK:maxK:maxIter:randomGenerator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v10 = a4;
  v11 = a3;
  if (a3 >= a4)
  {
    sub_23008199C();
    swift_allocError();
    goto LABEL_5;
  }

  v13 = v7;
  swift_beginAccess();
  v15 = *(a1 + 40);
  if (v15 < v10)
  {
    sub_23008C85C();
    swift_allocError();
    v11 = v10;
    v10 = v15;
LABEL_5:
    *v16 = v11;
    v16[1] = v10;
    swift_willThrow();

LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(a6);
    swift_deallocPartialClassInstance();
    return v8;
  }

  *(v6 + 32) = v11;
  *(v6 + 40) = v10;
  v72 = v6 + 48;
  sub_2300819F0(a6, v6 + 48);
  v18 = v10 - v11;
  if (__OFSUB__(v10, v11))
  {
    goto LABEL_77;
  }

  if (v18 == 1)
  {
    v19 = MEMORY[0x277D84F90];
    v71 = v8;
    *(v8 + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14418);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_230315CE0;
    *(inited + 32) = v11;
    sub_2300819F0(a6, v79);
    type metadata accessor for KMeans();
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 96) = v19;
    *(v21 + 104) = v19;
    *(v21 + 112) = v19;
    *(v21 + 120) = 0;
    if (v11 <= 0)
    {
      v60 = objc_opt_self();
      v79[5] = 0;
      v79[6] = 0xE000000000000000;

      sub_230310848();
      MEMORY[0x231911790](0xD00000000000003ALL, 0x800000023033FF20);
      v61 = sub_230310E58();
      v62 = a6;
      MEMORY[0x231911790](v61);

      v63 = sub_23030F8B8();

      [v60 invalidParameterErrorWithDescription_];

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v62);
      __swift_destroy_boxed_opaque_existential_1(v79);

      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v21 + 16) = v11;
      *(v21 + 24) = *(a1 + 57);
      sub_2300819F0(v79, v21 + 56);
      v22[4] = a1;
      v22[5] = 0x3F1A36E2EB1C432DLL;
      v22[6] = a5;
      swift_beginAccess();
      v23 = *(a1 + 32) * 0.0001;

      KMeans.trainCenters(_:_:convergeDistance:)(v24, a5, v23);
      if (!v7)
      {
        __swift_destroy_boxed_opaque_existential_1(v79);
        *(inited + 40) = v22;
        v64 = sub_23008C6EC(inited);
        swift_setDeallocating();
        sub_23008C7F4(inited + 32);

        __swift_destroy_boxed_opaque_existential_1(a6);
        v8 = v71;
        *(v71 + 24) = v64;
        return v8;
      }

      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(v79);
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14420);
    swift_arrayDestroy();
    goto LABEL_71;
  }

  v77 = a1;
  swift_beginAccess();
  v25 = MEMORY[0x277D84F90];
  if (v11 == v10)
  {
    v26 = MEMORY[0x277D84F98];
    v27 = INFINITY;
    v28 = -INFINITY;
    v70 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v76 = a5;
  v26 = MEMORY[0x277D84F98];
  v28 = -INFINITY;
  v27 = INFINITY;
  v70 = MEMORY[0x277D84F90];
  v71 = v8;
  v34 = v11;
  v74 = v11;
  v75 = a6;
  v73 = v10 - v11;
LABEL_24:
  v35 = v34;
  v78 = v34;
  while (v34 >= v11 && v35 < v10)
  {
    sub_2300819F0(a6, v79);
    type metadata accessor for KMeans();
    v36 = swift_allocObject();
    v37 = v36;
    *(v36 + 96) = v25;
    *(v36 + 104) = v25;
    *(v36 + 112) = v25;
    *(v36 + 120) = 0;
    if (v78 < 1)
    {
      v65 = objc_opt_self();

      sub_230310848();
      MEMORY[0x231911790](0xD00000000000003ALL, 0x800000023033FF20);
      v79[17] = v35;
      v66 = sub_230310E58();
      MEMORY[0x231911790](v66);

      v67 = sub_23030F8B8();

      [v65 invalidParameterErrorWithDescription_];

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(v79);

      swift_deallocPartialClassInstance();
LABEL_69:

      goto LABEL_71;
    }

    v38 = v26;
    if (*(v77 + 40) < v35)
    {
      v68 = objc_opt_self();

      v69 = sub_23030F8B8();
      [v68 invalidParameterErrorWithDescription_];

      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(v79);

      swift_deallocPartialClassInstance();
      goto LABEL_69;
    }

    *(v36 + 16) = v35;
    *(v36 + 24) = *(v77 + 57);
    sub_2300819F0(v79, v36 + 56);
    *(v37 + 32) = v77;
    *(v37 + 40) = 0x3F1A36E2EB1C432DLL;
    *(v37 + 48) = v76;
    v39 = *(v77 + 32) * 0.0001;
    v40 = swift_retain_n();
    KMeans.trainCenters(_:_:convergeDistance:)(v40, v76, v39);
    if (v13)
    {

      __swift_destroy_boxed_opaque_existential_1(a6);
      __swift_destroy_boxed_opaque_existential_1(v79);

LABEL_71:
      v8 = v71;
      a6 = v72;
      goto LABEL_6;
    }

    __swift_destroy_boxed_opaque_existential_1(v79);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79[0] = v38;
    v43 = sub_23006FA30(v35);
    v44 = v38[2];
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_76;
    }

    v47 = v42;
    if (v38[3] < v46)
    {
      sub_23008574C(v46, isUniquelyReferenced_nonNull_native, &qword_27DB146B8);
      v48 = sub_23006FA30(v35);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_80;
      }

      v43 = v48;
      goto LABEL_35;
    }

    v25 = MEMORY[0x277D84F90];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23008A6DC(&qword_27DB146B8);
LABEL_35:
      v25 = MEMORY[0x277D84F90];
    }

    v26 = v79[0];
    if (v47)
    {
      *(*(v79[0] + 56) + 8 * v43) = v37;

      v13 = 0;
      if (!v26[2])
      {
        goto LABEL_25;
      }
    }

    else
    {
      *(v79[0] + 8 * (v43 >> 6) + 64) |= 1 << v43;
      *(v26[6] + 8 * v43) = v35;
      *(v26[7] + 8 * v43) = v37;
      v50 = v26[2];
      v29 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v29)
      {
        goto LABEL_78;
      }

      v26[2] = v51;
      v13 = 0;
      if (!v51)
      {
        goto LABEL_25;
      }
    }

    v30 = v35 - 1;
    v52 = sub_23006FA30(v35 - 1);
    v25 = MEMORY[0x277D84F90];
    if (v53)
    {
      v54 = *(v26[7] + 8 * v52);
      swift_beginAccess();
      v55 = *(v37 + 120);
      swift_beginAccess();
      v56 = v55 - *(v54 + 120);
      if (v56 >= 0.0)
      {
        goto LABEL_74;
      }

      if (v56 < v27)
      {
        v27 = v56;
      }

      if (v28 <= v56)
      {
        v28 = v56;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_23007EB60(0, *(v70 + 2) + 1, 1, v70);
      }

      v58 = *(v70 + 2);
      v57 = *(v70 + 3);
      if (v58 >= v57 >> 1)
      {
        v70 = sub_23007EB60((v57 > 1), v58 + 1, 1, v70);
      }

      v34 = v35 + 1;

      *(v70 + 2) = v58 + 1;
      *&v70[8 * v58 + 32] = v56;
      v59 = v10 - 1 == v35;
      v8 = v71;
      v13 = 0;
      v11 = v74;
      a6 = v75;
      v18 = v73;
      v25 = MEMORY[0x277D84F90];
      if (v59)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

LABEL_25:
    ++v35;

    v11 = v74;
    a6 = v75;
    v18 = v73;
    v34 = v78;
    if (v10 == v35)
    {
      v8 = v71;
LABEL_15:
      v29 = __OFSUB__(v18, 2);
      v30 = v18 - 2;
      if (v29)
      {
        goto LABEL_79;
      }

      if ((v30 & 0x8000000000000000) == 0)
      {
        v31 = &v70[8 * v10 + 16 + -8 * v11];
        v32 = v30;
        while (v30 < *(v70 + 2))
        {
          if ((v28 + v27) * 0.5 >= *v31)
          {
            v30 = v32;
            goto LABEL_61;
          }

          --v31;
          if (v32-- <= 0)
          {
            v30 = -1;
            goto LABEL_61;
          }
        }

        __break(1u);
LABEL_74:

        __swift_destroy_boxed_opaque_existential_1(v75);

        v8 = v71;
        goto LABEL_66;
      }

LABEL_61:
      __swift_destroy_boxed_opaque_existential_1(a6);

      if (v30 != -1)
      {
        v29 = __OFADD__(v11, v30);
        v30 += v11;
        if (!v29)
        {
          goto LABEL_66;
        }

        __break(1u);
      }

      v30 = v10 - 1;
LABEL_66:
      *(v8 + 16) = v30;
      *(v8 + 24) = v26;
      return v8;
    }
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  result = sub_2303112A8();
  __break(1u);
  return result;
}

ReminderKitInternal::KMeansAutoTuner::KMeanTuningHistory __swiftcall KMeansAutoTuner.tuningSnapshot()()
{
  v3 = v2[4];
  v4 = v2[5];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v1;
  v19 = v2[2];
  if (v3 != v4)
  {
    if (v3 < v4)
    {
      v7 = v2[3];
      v6 = MEMORY[0x277D84F90];
      v8 = v3;
      do
      {
        if (*(v7 + 16))
        {
          isUniquelyReferenced_nonNull_native = sub_23006FA30(v8);
          if (v10)
          {
            v13 = *(*(v7 + 56) + 8 * isUniquelyReferenced_nonNull_native);
            swift_beginAccess();
            v14 = v13[13];
            v15 = v13[14];
            v16 = v13[15];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_23007ED70(0, *(v6 + 16) + 1, 1, v6);
              v6 = isUniquelyReferenced_nonNull_native;
            }

            v18 = *(v6 + 16);
            v17 = *(v6 + 24);
            if (v18 >= v17 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_23007ED70((v17 > 1), v18 + 1, 1, v6);
              v6 = isUniquelyReferenced_nonNull_native;
            }

            *(v6 + 16) = v18 + 1;
            v9 = (v6 + 24 * v18);
            v9[4] = v14;
            v9[5] = v15;
            v9[6] = v16;
          }
        }

        ++v8;
      }

      while (v4 != v8);
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_4:
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v19;
  v5[3] = v6;
LABEL_17:
  result.modelMetricHistory._rawValue = v12;
  result.bestK = v11;
  result.maxK = v10;
  result.minK = isUniquelyReferenced_nonNull_native;
  return result;
}

unint64_t KMeansAutoTuner.bestModel()()
{
  if (!*(*(v0 + 24) + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_23006FA30(*(v0 + 16));
  if ((v2 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }
}

uint64_t KMeansAutoTuner.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  return v0;
}

uint64_t KMeansAutoTuner.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 48);

  return swift_deallocClassInstance();
}

unint64_t sub_23008199C()
{
  result = qword_27DB14410;
  if (!qword_27DB14410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB14410);
  }

  return result;
}

uint64_t sub_2300819F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_230081A54(unsigned __int8 a1)
{
  sub_230311358();
  sub_23030F9C8();

  v2 = sub_2303113A8();

  return sub_2300821CC(a1, v2);
}

unint64_t sub_230081B9C(uint64_t a1)
{
  sub_23030EBB8();
  sub_23008E17C(&qword_280C98528);
  v2 = sub_23030F768();

  return sub_230082454(a1, v2);
}

unint64_t sub_230081C20(uint64_t a1)
{
  v2 = sub_230310748();

  return sub_230082600(a1, v2);
}

unint64_t sub_230081C64(char a1)
{
  sub_230311358();
  MEMORY[0x2319130E0](a1 & 1);
  v2 = sub_2303113A8();

  return sub_2300826C8(a1 & 1, v2);
}

unint64_t sub_230081CD0(char a1)
{
  sub_230311358();
  REMFeatureFlags.rawValue.getter();
  sub_23030F9C8();

  v2 = sub_2303113A8();

  return sub_230082738(a1, v2);
}

unint64_t sub_230081DAC(char a1)
{
  sub_230311358();
  sub_23030BF7C(a1);
  sub_23030F9C8();

  v2 = sub_2303113A8();

  return sub_230082FC0(a1, v2);
}

unint64_t sub_230081E34(uint64_t a1, uint64_t a2, char a3)
{
  sub_230311358();
  if (a3)
  {
    MEMORY[0x2319130E0](1);
    sub_230310458();
  }

  else
  {
    MEMORY[0x2319130E0](0);
  }

  sub_23008E0EC();
  sub_23030F778();
  v6 = sub_2303113A8();
  return sub_230083628(a1, a2, a3 & 1, v6);
}

unint64_t sub_230081EF4(unsigned __int8 a1)
{
  sub_230311358();
  MEMORY[0x2319130E0](a1);
  v2 = sub_2303113A8();

  return sub_230083854(a1, v2);
}

unint64_t sub_230081F64(uint64_t a1)
{
  sub_230311358();
  sub_23030F9C8();
  v2 = sub_2303113A8();
  return sub_230083930(a1, v2);
}

unint64_t sub_230081FCC(uint64_t a1)
{
  sub_230311358();
  MEMORY[0x2319130E0](a1);
  v2 = sub_2303113A8();

  return sub_2300838C4(a1, v2);
}

unint64_t sub_230082060(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v4 = sub_23030F768();
  return sub_2300839E0(a1, v4, a2);
}

unint64_t sub_23008213C(uint64_t a1)
{
  _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
  sub_230311358();
  sub_23030F9C8();
  v2 = sub_2303113A8();

  return sub_230083AC0(a1, v2);
}

unint64_t sub_2300821CC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v8 = 0x6974736972756568;
          v9 = 0xE900000000000063;
        }

        else
        {
          if (v7 == 4)
          {
            v8 = 0x6465726F68636E61;
          }

          else
          {
            v8 = 0x6867696C746F7073;
          }

          if (v7 == 4)
          {
            v9 = 0xEE00656C62627542;
          }

          else
          {
            v9 = 0xE900000000000074;
          }
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v7 == 1)
        {
          v8 = 5131883;
        }

        else
        {
          v8 = 0x6168654265726F63;
        }

        if (v7 == 1)
        {
          v9 = 0xE300000000000000;
        }

        else
        {
          v9 = 0xEC000000726F6976;
        }
      }

      else
      {
        v8 = 0x5079726575516C6ELL;
        v9 = 0xED00007265737261;
      }

      v10 = 0xE900000000000074;
      v11 = 0x6867696C746F7073;
      if (v6 == 4)
      {
        v11 = 0x6465726F68636E61;
        v10 = 0xEE00656C62627542;
      }

      if (v6 == 3)
      {
        v11 = 0x6974736972756568;
        v10 = 0xE900000000000063;
      }

      v12 = 0x6168654265726F63;
      if (v6 == 1)
      {
        v12 = 5131883;
      }

      v13 = 0xEC000000726F6976;
      if (v6 == 1)
      {
        v13 = 0xE300000000000000;
      }

      if (!v6)
      {
        v12 = 0x5079726575516C6ELL;
        v13 = 0xED00007265737261;
      }

      v14 = v6 <= 2 ? v12 : v11;
      v15 = v6 <= 2 ? v13 : v10;
      if (v8 == v14 && v9 == v15)
      {
        break;
      }

      v16 = sub_230311048();

      if ((v16 & 1) == 0)
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

unint64_t sub_230082454(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_23030EBB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_23008E17C(&qword_280C98520);
      v15 = sub_23030F818();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_230082600(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23008E1C0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2319124D0](v9, a1);
      sub_23008E21C(v9);
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

unint64_t sub_2300826C8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_230082738(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEF656D6954746C75;
      v8 = 0x6166654469726973;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          break;
        case 2:
          v8 = 0x6170655361746164;
          v7 = 0xEE006E6F69746172;
          break;
        case 3:
          v8 = 0x6F6E6E4177656976;
          v7 = 0xEE006E6F69746174;
          break;
        case 4:
          v8 = 0xD00000000000001BLL;
          v7 = 0x800000023033F060;
          break;
        case 5:
          v8 = 0xD000000000000021;
          v7 = 0x800000023033F080;
          break;
        case 6:
          v8 = 0xD000000000000023;
          v7 = 0x800000023033F0B0;
          break;
        case 7:
          v8 = 0x697463656C6C6F63;
          v7 = 0xEE00776569566E6FLL;
          break;
        case 8:
          v8 = 0x656E6F5A656D6974;
          v7 = 0xEF74726F70707553;
          break;
        case 9:
          v8 = 0x657461436F747561;
          v7 = 0xEE00657A69726F67;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x800000023033F110;
          break;
        case 0xB:
          v8 = 0x6C41746E65677275;
          v7 = 0xEB00000000747265;
          break;
        case 0xC:
          v8 = 0xD000000000000013;
          v7 = 0x800000023033F140;
          break;
        case 0xD:
          v8 = 0x726F707075537861;
          v7 = 0xEF534F63616D5F74;
          break;
        case 0xE:
          v8 = 0xD000000000000011;
          v7 = 0x800000023033F170;
          break;
        case 0xF:
          v8 = 0xD000000000000017;
          v7 = 0x800000023033F190;
          break;
        case 0x10:
          v8 = 0xD000000000000016;
          v7 = 0x800000023033F1B0;
          break;
        case 0x11:
          v8 = 0xD000000000000014;
          v7 = 0x800000023033F1D0;
          break;
        case 0x12:
          v8 = 0xD000000000000012;
          v7 = 0x800000023033F1F0;
          break;
        case 0x13:
          v8 = 0xD000000000000010;
          v7 = 0x800000023033F210;
          break;
        case 0x14:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000023033F230;
          break;
        case 0x15:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000023033F250;
          break;
        case 0x16:
          v8 = 0xD000000000000010;
          v7 = 0x800000023033F270;
          break;
        case 0x17:
          v8 = 0xD00000000000001ALL;
          v7 = 0x800000023033F290;
          break;
        case 0x18:
          v8 = 0xD00000000000001CLL;
          v7 = 0x800000023033F2B0;
          break;
        case 0x19:
          v8 = 0xD000000000000015;
          v7 = 0x800000023033F2D0;
          break;
        case 0x1A:
          v8 = 0xD000000000000019;
          v7 = 0x800000023033F2F0;
          break;
        case 0x1B:
          v8 = 0x434174726F706572;
          v7 = 0xEE006E7265636E6FLL;
          break;
        default:
          v8 = 0xD000000000000010;
          v7 = 0x800000023033F020;
          break;
      }

      v9 = 0x6166654469726973;
      v10 = 0xEF656D6954746C75;
      switch(a1)
      {
        case 1:
          goto LABEL_81;
        case 2:
          v11 = 0x6170655361746164;
          v12 = 0x6E6F69746172;
          goto LABEL_56;
        case 3:
          v10 = 0xEE006E6F69746174;
          if (v8 != 0x6F6E6E4177656976)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 4:
          v10 = 0x800000023033F060;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 5:
          v10 = 0x800000023033F080;
          if (v8 != 0xD000000000000021)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 6:
          v10 = 0x800000023033F0B0;
          if (v8 != 0xD000000000000023)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 7:
          v11 = 0x697463656C6C6F63;
          v12 = 0x776569566E6FLL;
          goto LABEL_56;
        case 8:
          v10 = 0xEF74726F70707553;
          if (v8 != 0x656E6F5A656D6974)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 9:
          v11 = 0x657461436F747561;
          v12 = 0x657A69726F67;
          goto LABEL_56;
        case 10:
          v10 = 0x800000023033F110;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 11:
          v10 = 0xEB00000000747265;
          if (v8 != 0x6C41746E65677275)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 12:
          v10 = 0x800000023033F140;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 13:
          v10 = 0xEF534F63616D5F74;
          if (v8 != 0x726F707075537861)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 14:
          v10 = 0x800000023033F170;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 15:
          v10 = 0x800000023033F190;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 16:
          v10 = 0x800000023033F1B0;
          if (v8 != 0xD000000000000016)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 17:
          v10 = 0x800000023033F1D0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 18:
          v10 = 0x800000023033F1F0;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 19:
          v10 = 0x800000023033F210;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 20:
          v10 = 0x800000023033F230;
          if (v8 != 0xD00000000000001ALL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 21:
          v10 = 0x800000023033F250;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 22:
          v10 = 0x800000023033F270;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 23:
          v9 = 0xD00000000000001ALL;
          v10 = 0x800000023033F290;
LABEL_81:
          if (v8 == v9)
          {
            goto LABEL_82;
          }

          goto LABEL_83;
        case 24:
          v10 = 0x800000023033F2B0;
          if (v8 != 0xD00000000000001CLL)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 25:
          v10 = 0x800000023033F2D0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 26:
          v10 = 0x800000023033F2F0;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        case 27:
          v11 = 0x434174726F706572;
          v12 = 0x6E7265636E6FLL;
LABEL_56:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v8 != v11)
          {
            goto LABEL_83;
          }

          goto LABEL_82;
        default:
          v10 = 0x800000023033F020;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_83;
          }

LABEL_82:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_83:
          v13 = sub_230311048();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_230082FC0(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000657079;
      v8 = 0x54746E756F636361;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6C6562614C676174;
          v7 = 0xED0000746E756F43;
          break;
        case 2:
          v7 = 0xEE00746E756F4374;
          v8 = 0x73694C6C61746F74;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x800000023033FD40;
          break;
        case 4:
          v8 = 0xD000000000000012;
          v7 = 0x800000023033FD60;
          break;
        case 5:
          v8 = 0xD000000000000018;
          v7 = 0x800000023033FD80;
          break;
        case 6:
          v8 = 0xD000000000000017;
          v7 = 0x800000023033FDA0;
          break;
        case 7:
          v8 = 0xD00000000000001ELL;
          v7 = 0x800000023033FDC0;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x800000023033FDE0;
          break;
        case 9:
          v8 = 0x756F4370756F7267;
          v7 = 0xEA0000000000746ELL;
          break;
        case 0xA:
          v8 = 0xD000000000000013;
          v7 = 0x800000023033FE00;
          break;
        case 0xB:
          v8 = 0xD000000000000014;
          v7 = 0x800000023033FE20;
          break;
        case 0xC:
          v8 = 0xD000000000000014;
          v7 = 0x800000023033FE40;
          break;
        case 0xD:
          v8 = 0x6154656E696C6E69;
          v7 = 0xEE00746E756F4367;
          break;
        case 0xE:
          v8 = 0xD000000000000012;
          v7 = 0x800000023033FE70;
          break;
        case 0xF:
          v8 = 0x656D686361747461;
          v7 = 0xEF746E756F43746ELL;
          break;
        case 0x10:
          v8 = 0xD000000000000014;
          v7 = 0x800000023033FEA0;
          break;
        case 0x11:
          v8 = 0xD000000000000015;
          v7 = 0x800000023033FEC0;
          break;
        case 0x12:
          v8 = 0xD00000000000001DLL;
          v7 = 0x800000023033FEE0;
          break;
        case 0x13:
          v8 = 0xD000000000000019;
          v7 = 0x800000023033FF00;
          break;
        default:
          break;
      }

      v9 = 0x54746E756F636361;
      v10 = 0xEB00000000657079;
      switch(a1)
      {
        case 1:
          v10 = 0xED0000746E756F43;
          if (v8 == 0x6C6562614C676174)
          {
            goto LABEL_60;
          }

          goto LABEL_61;
        case 2:
          v10 = 0xEE00746E756F4374;
          if (v8 != 0x73694C6C61746F74)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 3:
          v10 = 0x800000023033FD40;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 4:
          v10 = 0x800000023033FD60;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 5:
          v10 = 0x800000023033FD80;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 6:
          v10 = 0x800000023033FDA0;
          if (v8 != 0xD000000000000017)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 7:
          v10 = 0x800000023033FDC0;
          if (v8 != 0xD00000000000001ELL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 8:
          v9 = 0xD000000000000010;
          v10 = 0x800000023033FDE0;
          goto LABEL_59;
        case 9:
          v10 = 0xEA0000000000746ELL;
          if (v8 != 0x756F4370756F7267)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 10:
          v10 = 0x800000023033FE00;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 11:
          v10 = 0x800000023033FE20;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 12:
          v10 = 0x800000023033FE40;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 13:
          v10 = 0xEE00746E756F4367;
          if (v8 != 0x6154656E696C6E69)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 14:
          v10 = 0x800000023033FE70;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 15:
          v10 = 0xEF746E756F43746ELL;
          if (v8 != 0x656D686361747461)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 16:
          v10 = 0x800000023033FEA0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 17:
          v10 = 0x800000023033FEC0;
          if (v8 != 0xD000000000000015)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 18:
          v10 = 0x800000023033FEE0;
          if (v8 != 0xD00000000000001DLL)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        case 19:
          v10 = 0x800000023033FF00;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        default:
LABEL_59:
          if (v8 != v9)
          {
            goto LABEL_61;
          }

LABEL_60:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_61:
          v11 = sub_230311048();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_230083628(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v9 = a3;
    v10 = ~v6;
    do
    {
      v11 = *(v8 + 48) + 24 * v7;
      v13 = *v11;
      v12 = *(v11 + 8);
      if (*(v11 + 16))
      {
        if (v9)
        {
          sub_23004CBA4(0, &qword_280C9B980);
          v14 = v13;

          if (sub_230310448())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
            v15 = sub_23030FCC8();
            v16 = sub_23030FCC8();
            v17 = sub_230310448();
            sub_23008E140(v13, v12, 1);

            v9 = a3;
            if (v17)
            {
              return v7;
            }
          }

          else
          {
            sub_23008E140(v13, v12, 1);
          }
        }
      }

      else if ((v9 & 1) == 0)
      {
        sub_23004CBA4(0, &qword_280C9B980);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB169E0);
        v18 = sub_23030FCC8();
        v19 = sub_23030FCC8();
        v20 = sub_230310448();
        sub_23008E140(v13, v12, 0);

        v9 = a3;
        if (v20)
        {
          return v7;
        }
      }

      v7 = (v7 + 1) & v10;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_230083854(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_2300838C4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_230083930(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
      {
        break;
      }

      if (sub_230311048())
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2300839E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3);
      if (sub_23030F818())
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_230083AC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0();
      v8 = v7;
      if (v6 == _sSo15REMSortingStylea19ReminderKitInternalE11descriptionSSvg_0() && v8 == v9)
      {
        break;
      }

      v11 = sub_230311048();

      if ((v11 & 1) == 0)
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

uint64_t sub_230083BD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14528);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_23004B314((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_23008E1C0(v23, &v36);
        sub_23004D5CC(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_230310748();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_23004B314(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_230083E90(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB146A8);
  v33 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23004B314(v24, v34);
      }

      else
      {
        sub_23004D5CC(v24, v34);
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23004B314(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_230084148(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14660);
  v34 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2300843FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14680);
  v36 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = v25[1];
      v37 = v25[2];
      v38 = *v25;
      if ((v36 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v38;
      v17[1] = v26;
      v17[2] = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2300846EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14670);
  v37 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = *v25;
      v27 = v25[2];
      v38 = v25[1];
      if ((v37 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v26;
      v17[1] = v38;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2300849BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14658);
  v34 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      result = sub_230311348();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230084C40(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_23030EEA8();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14640);
  v39 = a2;
  result = sub_230310BA8();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_230311358();
      MEMORY[0x2319130E0](v24);
      result = sub_2303113A8();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_230084FCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145F8);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_230311348();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230085250(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_230310BA8();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = a2;
    v32 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      result = sub_230311348();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v6 + 32);
      if (v30 >= 64)
      {
        bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v30;
      }

      *(v6 + 16) = 0;
    }

    v4 = v32;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_2300854AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14608);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      result = sub_230311348();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23008574C(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_230310BA8();
  v8 = result;
  if (*(v6 + 16))
  {
    v31 = v4;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_230311348();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v4 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v6 + 32);
    v4 = v31;
    if (v30 >= 64)
    {
      bzero((v6 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2300859B4(uint64_t a1, int a2)
{
  v3 = v2;
  v39 = sub_23030EB58();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14628);
  v37 = a2;
  result = sub_230310BA8();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_230311348();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_230085D00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14630);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v21;
      }

      result = sub_230311348();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_230085F68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB145E8);
  v30 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();

      result = sub_2303113A8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2300862E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14598);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_230310438();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23008656C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB145A0);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_230310438();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230086804(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  result = sub_230310BA8();
  v8 = result;
  if (*(v6 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v6 + 48) + 8 * v20);
      v22 = *(*(v6 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = sub_230310438();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v32 = 1 << *(v6 + 32);
      if (v32 >= 64)
      {
        bzero((v6 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v6 + 16) = 0;
    }

    v4 = v33;
  }

  else
  {
  }

  *v4 = v8;
  return result;
}

uint64_t sub_230086A8C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14448);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      sub_230311358();
      sub_23030F9C8();

      result = sub_2303113A8();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_32:
  *v3 = v7;
  return result;
}

uint64_t sub_230087030(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_230310BA8();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_2300872D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB14580);
  v39 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 16);
      v26 = v22 + 40 * v21;
      v27 = *v26;
      v28 = *(v26 + 8);
      v42 = *(v26 + 16);
      v43 = *(v23 + 8);
      v41 = *(v26 + 24);
      v40 = *(v26 + 32);
      if ((v39 & 1) == 0)
      {
        sub_23008E030(v24, v43, v25);
        sub_23008E06C(v27, v28, v42, v41, v40);
      }

      sub_230311358();
      if (v25)
      {
        MEMORY[0x2319130E0](1);
        sub_230310458();
      }

      else
      {
        MEMORY[0x2319130E0](0);
      }

      sub_23008E0EC();
      sub_23030F778();
      result = sub_2303113A8();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v43;
      *(v16 + 16) = v25;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v27;
      *(v17 + 8) = v28;
      *(v17 + 16) = v42;
      *(v17 + 24) = v41;
      *(v17 + 32) = v40;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v39)
    {
      v36 = 1 << *(v5 + 32);
      if (v36 >= 64)
      {
        bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v36;
      }

      *(v5 + 16) = 0;
    }

    v3 = v37;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_23008761C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14578);
  v31 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_230311358();
      MEMORY[0x2319130E0](v20);
      result = sub_2303113A8();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2300878A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14570);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      sub_230311358();
      REMFeatureFlags.rawValue.getter();
      sub_23030F9C8();

      result = sub_2303113A8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_230087B58(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14560);
  v34 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_230311358();
      sub_23030F9C8();
      result = sub_2303113A8();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230087E00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14558);
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_230311348();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_230088098(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB14540);
  v30 = a2;
  result = sub_230310BA8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_230311358();
      MEMORY[0x2319130E0](v20);
      result = sub_2303113A8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}