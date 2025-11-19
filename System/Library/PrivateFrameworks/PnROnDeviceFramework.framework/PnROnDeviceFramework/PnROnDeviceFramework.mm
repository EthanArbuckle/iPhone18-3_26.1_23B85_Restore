uint64_t sub_25E972990()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

BOOL sub_25E972A08(void *a1)
{
  v1 = [a1 ended];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_25E972A4C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E9733EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E9D77F0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25E973458(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E9D77F0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_25E9734CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 executionTime];
  *a2 = result;
  return result;
}

id sub_25E97351C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 appEntityQueryResponseTime];
  *a2 = result;
  return result;
}

id sub_25E97356C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 plannerResponseTime];
  *a2 = result;
  return result;
}

id sub_25E9735BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToPlanCreatedTime];
  *a2 = result;
  return result;
}

id sub_25E97360C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToLastQueryDecorationEventTime];
  *a2 = result;
  return result;
}

id sub_25E97365C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lastQueryDecorationEventToPlanCreatedTime];
  *a2 = result;
  return result;
}

id sub_25E9736AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToContextRetrievedTime];
  *a2 = result;
  return result;
}

id sub_25E9736FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToEntitySpanMatchedTime];
  *a2 = result;
  return result;
}

id sub_25E97374C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startToToolsRetrievedTime];
  *a2 = result;
  return result;
}

uint64_t sub_25E973AD0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E973B0C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E973B44()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_25E973CF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 planningTime];
  *a2 = result;
  return result;
}

id sub_25E973D40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 executionTime];
  *a2 = result;
  return result;
}

id sub_25E973D90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 requestResponseTime];
  *a2 = result;
  return result;
}

id sub_25E973DE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 responsePreparationTime];
  *a2 = result;
  return result;
}

id sub_25E973E30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 queryTime];
  *a2 = result;
  return result;
}

id sub_25E973E84@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_27FD0DD78;
  *a1 = qword_27FD0DD78;

  return v2;
}

uint64_t sub_25E973EE4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 165)
  {
    v4 = *a1;
    if (v4 <= 0x5A)
    {
      v5 = 90;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 90;
    if (v4 >= 0x59)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 28)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_25E973FA4(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 165)
  {
    *result = a2 + 90;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 28)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_25E97405C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D638, &qword_25E9D8A98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E9D8990;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000025E9DCD10;
  *(inited + 48) = sub_25E9D7FA0();
  *(inited + 56) = 0x6D614E726F727265;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_25E9D7FA0();
  *(inited + 80) = 0x6E6F73616572;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = sub_25E9D7FA0();
  v1 = sub_25E97F224(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D640, &unk_25E9D8AA0);
  swift_arrayDestroy();
  return v1;
}

id sub_25E97419C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_25E974770();
    v5 = sub_25E9D7F30();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

BOOL sub_25E974250(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_25E9742B4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void _s20PnROnDeviceFramework20CoreAnalyticsServiceO017submitReliabilityF08category6reasonyAA0I8CategoryO_SStFZ_0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = v5 >> 5;
  if (v5 >> 5 <= 2)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = 0x800000025E9DCCE0;
        v8 = 0x800000025E9DC800;
        v9 = 0xD000000000000018;
        v10 = 0xD000000000000020;
      }

      else
      {
        v7 = 0x800000025E9DCCC0;
        if (v5)
        {
          v9 = 0x5564616552535062;
        }

        else
        {
          v9 = 0x4664616552535062;
        }

        if (v5)
        {
          v8 = 0xEE006E776F6E6B6ELL;
        }

        else
        {
          v8 = 0xED000064656C6961;
        }

        v10 = 0xD000000000000011;
      }
    }

    else
    {
      v7 = 0xEA0000000000726FLL;
      v10 = 0x727245796D6D7544;
      v8 = 0xE900000000000072;
      v9 = 0x6F72724574736574;
    }

    goto LABEL_33;
  }

  if (v6 == 3)
  {
    v11 = v5 & 0x1F;
    v7 = 0x800000025E9DCCA0;
    if (v11 <= 1)
    {
      if (v11)
      {
        v8 = 0x800000025E9DC870;
        v9 = 0xD000000000000020;
      }

      else
      {
        v8 = 0x800000025E9DC840;
        v9 = 0xD00000000000002BLL;
      }

      goto LABEL_32;
    }

    if (v11 == 2)
    {
      v12 = "IERequestGrainUploadFailed";
    }

    else
    {
      if (v11 != 3)
      {
        v8 = 0x800000025E9DC8E0;
        v9 = 0xD000000000000019;
        goto LABEL_32;
      }

      v12 = "IEPlannerGrainUploadFailed";
    }

    v8 = (v12 - 32) | 0x8000000000000000;
    v9 = 0xD00000000000001ALL;
LABEL_32:
    v10 = 0xD000000000000010;
    goto LABEL_33;
  }

  if (v6 == 4)
  {
    v7 = 0x800000025E9DCC80;
    v10 = 0xD000000000000014;
    if (v5)
    {
      v8 = 0x800000025E9DC910;
      v9 = 0xD000000000000016;
    }

    else
    {
      v8 = 0xEC000000726F7272;
      v9 = 0x45636972656E6567;
    }
  }

  else
  {
    v7 = 0x800000025E9DCC60;
    if (v5)
    {
      v8 = 0x800000025E9DC950;
      v9 = 0xD000000000000015;
    }

    else
    {
      v8 = 0x800000025E9DC930;
      v9 = 0xD000000000000017;
    }

    v10 = 0xD000000000000017;
  }

LABEL_33:
  v13 = sub_25E9D7FA0();
  v14 = swift_allocObject();
  v14[2] = v10;
  v14[3] = v7;
  v14[4] = v9;
  v14[5] = v8;
  v14[6] = a2;
  v14[7] = a3;
  v16[4] = sub_25E974748;
  v16[5] = v14;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_25E97419C;
  v16[3] = &block_descriptor;
  v15 = _Block_copy(v16);

  AnalyticsSendEventLazy();
  _Block_release(v15);
}

uint64_t getEnumTagSinglePayload for CoreAnalyticsService(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CoreAnalyticsService(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25E974748()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  return sub_25E97405C();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E974770()
{
  result = qword_27FD0D630;
  if (!qword_27FD0D630)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D630);
  }

  return result;
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

void sub_25E974840(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t ReliabilityCategory.BiomeStreamIssues.rawValue.getter()
{
  if (*v0)
  {
    result = 0x5564616552535062;
  }

  else
  {
    result = 0x4664616552535062;
  }

  *v0;
  return result;
}

unint64_t ReliabilityCategory.SELFUploadIssues.rawValue.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000019;
  if (v1 == 3)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (v1 == 2)
  {
    v3 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD000000000000020;
  if (!*v0)
  {
    v4 = 0xD00000000000002BLL;
  }

  if (*v0 <= 1u)
  {
    result = v4;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

unint64_t ReliabilityCategory.MetricsComputeIssues.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x45636972656E6567;
  }

  *v0;
  return result;
}

unint64_t ReliabilityCategory.PnROnDeviceWorkerIssues.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0xD000000000000017;
  }

  *v0;
  return result;
}

uint64_t ReliabilityCategory.DummyError.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25E9D82D0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25E974A90()
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t sub_25E974B04()
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t ReliabilityCategory.AIMLInstrumentationStreamsIssues.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_25E9D82D0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_25E974BDC()
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t sub_25E974C50()
{
  sub_25E9D8390();
  sub_25E9D8010();
  return sub_25E9D83C0();
}

uint64_t sub_25E974CB0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E9D82D0();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_25E974D2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x5564616552535062;
  }

  else
  {
    v4 = 0x4664616552535062;
  }

  if (v3)
  {
    v5 = 0xED000064656C6961;
  }

  else
  {
    v5 = 0xEE006E776F6E6B6ELL;
  }

  if (*a2)
  {
    v6 = 0x5564616552535062;
  }

  else
  {
    v6 = 0x4664616552535062;
  }

  if (*a2)
  {
    v7 = 0xEE006E776F6E6B6ELL;
  }

  else
  {
    v7 = 0xED000064656C6961;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E9D8300();
  }

  return v9 & 1;
}

uint64_t sub_25E974DEC()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E974E88()
{
  *v0;
  sub_25E9D8010();
}

uint64_t sub_25E974F10()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E974FB4(uint64_t *a1@<X8>)
{
  v2 = 0x4664616552535062;
  if (*v1)
  {
    v2 = 0x5564616552535062;
  }

  v3 = 0xED000064656C6961;
  if (*v1)
  {
    v3 = 0xEE006E776F6E6B6ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

PnROnDeviceFramework::ReliabilityCategory::SELFUploadIssues_optional __swiftcall ReliabilityCategory.SELFUploadIssues.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E9D82D0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E975074()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E975144()
{
  *v0;
  *v0;
  *v0;
  sub_25E9D8010();
}

uint64_t sub_25E975200()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E9752D8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = "encyUploadFailed";
  v4 = "IERequestGrainUploadFailed";
  v5 = 0xD000000000000019;
  if (v2 == 3)
  {
    v5 = 0xD00000000000001ALL;
  }

  else
  {
    v4 = "IEPlannerGrainUploadFailed";
  }

  if (v2 == 2)
  {
    v6 = 0xD00000000000001ALL;
  }

  else
  {
    v6 = v5;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  v7 = 0xD000000000000020;
  if (*v1)
  {
    v8 = "urnGrainLatencyUploadFailed";
  }

  else
  {
    v7 = 0xD00000000000002BLL;
    v8 = "Failed";
  }

  if (*v1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v7 = v6;
    v9 = v3;
  }

  *a1 = v7;
  a1[1] = v9 | 0x8000000000000000;
}

uint64_t sub_25E975374(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0x45636972656E6567;
  }

  if (v3)
  {
    v5 = 0xEC000000726F7272;
  }

  else
  {
    v5 = 0x800000025E9DC910;
  }

  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0x45636972656E6567;
  }

  if (*a2)
  {
    v7 = 0x800000025E9DC910;
  }

  else
  {
    v7 = 0xEC000000726F7272;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25E9D8300();
  }

  return v9 & 1;
}

uint64_t sub_25E975428()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9754B8()
{
  *v0;
  sub_25E9D8010();
}

uint64_t sub_25E975534()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

void sub_25E9755CC(unint64_t *a1@<X8>)
{
  v2 = 0x800000025E9DC910;
  v3 = 0x45636972656E6567;
  if (*v1)
  {
    v3 = 0xD000000000000016;
  }

  else
  {
    v2 = 0xEC000000726F7272;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25E975624@<X0>(char *a1@<X8>)
{
  v2 = sub_25E9D82D0();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_25E975688()
{
  result = qword_27FD0D660;
  if (!qword_27FD0D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D660);
  }

  return result;
}

unint64_t sub_25E9756E0()
{
  result = qword_27FD0D668;
  if (!qword_27FD0D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D668);
  }

  return result;
}

unint64_t sub_25E975738()
{
  result = qword_27FD0D670;
  if (!qword_27FD0D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D670);
  }

  return result;
}

unint64_t sub_25E975790()
{
  result = qword_27FD0D678;
  if (!qword_27FD0D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D678);
  }

  return result;
}

unint64_t sub_25E9757E8()
{
  result = qword_27FD0D680;
  if (!qword_27FD0D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D680);
  }

  return result;
}

uint64_t sub_25E97583C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000015;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v3)
  {
    v5 = "JSONSerializationError";
  }

  else
  {
    v5 = "doWorkSiriMetricsFailed";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000015;
  }

  else
  {
    v7 = 0xD000000000000017;
  }

  if (*a2)
  {
    v8 = "doWorkSiriMetricsFailed";
  }

  else
  {
    v8 = "JSONSerializationError";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25E9D8300();
  }

  return v10 & 1;
}

unint64_t sub_25E9758EC()
{
  result = qword_27FD0D688;
  if (!qword_27FD0D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0D688);
  }

  return result;
}

uint64_t sub_25E975940()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E9759C0()
{
  *v0;
  sub_25E9D8010();
}

uint64_t sub_25E975A2C()
{
  v1 = *v0;
  sub_25E9D8390();
  sub_25E9D8010();

  return sub_25E9D83C0();
}

uint64_t sub_25E975AB4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25E9D82D0();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25E975B10(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000017;
  }

  if (*v1)
  {
    v3 = "doWorkSiriMetricsFailed";
  }

  else
  {
    v3 = "JSONSerializationError";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1B)
  {
    goto LABEL_17;
  }

  if (a2 + 229 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 229) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 229;
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

      return (*a1 | (v4 << 8)) - 229;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 229;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x18 | (*a1 >> 5)) ^ 0x1F;
  if (v6 >= 0x1A)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ReliabilityCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 229 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 229) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1B)
  {
    v4 = 0;
  }

  if (a2 > 0x1A)
  {
    v5 = ((a2 - 27) >> 8) + 1;
    *result = a2 - 27;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReliabilityCategory.SELFUploadIssues(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReliabilityCategory.SELFUploadIssues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PnRError(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PnRError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double SELFComponent.SearchTool.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  v0[5] = 0u;
  return result;
}

double SELFComponent.SearchTool.init()()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_25E976038()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  if (!qword_27FD0DD78)
  {
    return 0;
  }

  sub_25E976108();
  v1 = v0;
  v2 = sub_25E9D7E70();

  if (v2 >> 62)
  {
    v3 = sub_25E9D8290();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3;
}

unint64_t sub_25E976108()
{
  result = qword_27FD0D690;
  if (!qword_27FD0D690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0D690);
  }

  return result;
}

uint64_t sub_25E976154(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v154 = MEMORY[0x28223BE20](a1);
  if (qword_27FD0D5C8 != -1)
  {
    goto LABEL_129;
  }

  while (1)
  {
    v5 = sub_25E9D7F10();
    __swift_project_value_buffer(v5, qword_27FD0DB90);
    v6 = sub_25E9D7F00();
    v7 = sub_25E9D8120();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25E971000, v6, v7, "Start: computeSearchToolMetrics", v8, 2u);
      MEMORY[0x25F8C51A0](v8, -1, -1);
    }

    result = sub_25E977068();
    if (v3)
    {
      return result;
    }

    if (v4[2])
    {
      v10 = v4[2];
    }

    else
    {
      v10 = sub_25E97F328(MEMORY[0x277D84F90]);
    }

    v11 = v154;
    v3 = v10 + 64;
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;

    v16 = 0;
    v125 = v10;
    v126 = v10 + 64;
    v127 = v15;
    while (v14)
    {
LABEL_19:
      v20 = (*(v10 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v14)))));
      v21 = *v20;
      v22 = v20[1];
      v23 = v4[2];
      if (!v23)
      {
        v37 = v20[1];

        goto LABEL_29;
      }

      v24 = *(v23 + 16);
      v25 = v20[1];

      if (!v24)
      {
        goto LABEL_29;
      }

      v26 = sub_25E978F5C(v21, v22);
      if ((v27 & 1) == 0)
      {
        goto LABEL_28;
      }

      v28 = (*(v23 + 56) + 16 * v26);
      v29 = *v28;
      v30 = *(v28 + 1);

      v31 = v4[3];
      if (v31 && *(v31 + 16))
      {
        v32 = v4[3];

        v33 = sub_25E978F5C(v21, v22);
        if (v34)
        {
          v35 = (*(v31 + 56) + 16 * v33);
          v139 = *(v35 + 1);
          v140 = *v35;

          v36 = v4[4];
          if (!v36)
          {
            goto LABEL_38;
          }

          goto LABEL_30;
        }

LABEL_28:
      }

LABEL_29:
      v30 = 0;
      v139 = 0;
      v140 = 0;
      v29 = 90;
      v36 = v4[4];
      if (!v36)
      {
        goto LABEL_38;
      }

LABEL_30:
      if (!*(v36 + 16))
      {
        goto LABEL_38;
      }

      v38 = sub_25E978F5C(v21, v22);
      if ((v39 & 1) == 0)
      {
        goto LABEL_37;
      }

      v40 = (*(v36 + 56) + 16 * v38);
      v152 = *v40;
      v153 = *(v40 + 1);

      v41 = v4[5];
      if (v41 && *(v41 + 16))
      {
        v42 = v4[5];

        v43 = sub_25E978F5C(v21, v22);
        if (v44)
        {
          v45 = (*(v41 + 56) + 16 * v43);
          v137 = *(v45 + 1);
          v138 = *v45;

          v46 = v4[6];
          if (!v46)
          {
            goto LABEL_47;
          }

          goto LABEL_39;
        }

LABEL_37:
      }

LABEL_38:
      v137 = 0;
      v138 = 0;
      v152 = 90;
      v153 = 0;
      v46 = v4[6];
      if (!v46)
      {
        goto LABEL_47;
      }

LABEL_39:
      if (!*(v46 + 16))
      {
        goto LABEL_47;
      }

      v47 = sub_25E978F5C(v21, v22);
      if ((v48 & 1) == 0)
      {
        goto LABEL_46;
      }

      v49 = (*(v46 + 56) + 16 * v47);
      v150 = *v49;
      v151 = *(v49 + 1);

      v50 = v4[7];
      if (v50 && *(v50 + 16))
      {
        v51 = v4[7];

        v52 = sub_25E978F5C(v21, v22);
        if (v53)
        {
          v54 = (*(v50 + 56) + 16 * v52);
          v135 = *(v54 + 1);
          v136 = *v54;

          v55 = v4[8];
          if (!v55)
          {
            goto LABEL_56;
          }

          goto LABEL_48;
        }

LABEL_46:
      }

LABEL_47:
      v135 = 0;
      v136 = 0;
      v150 = 90;
      v151 = 0;
      v55 = v4[8];
      if (!v55)
      {
        goto LABEL_56;
      }

LABEL_48:
      if (!*(v55 + 16))
      {
        goto LABEL_56;
      }

      v56 = sub_25E978F5C(v21, v22);
      if ((v57 & 1) == 0)
      {
LABEL_55:

LABEL_56:
        v133 = 0;
        v134 = 0;
        v148 = 90;
        v149 = 0;
        v64 = v4[10];
        if (!v64)
        {
          goto LABEL_64;
        }

        goto LABEL_57;
      }

      v58 = (*(v55 + 56) + 16 * v56);
      v148 = *v58;
      v149 = *(v58 + 1);

      v59 = v4[9];
      if (!v59 || !*(v59 + 16))
      {
        goto LABEL_56;
      }

      v60 = v4[9];

      v61 = sub_25E978F5C(v21, v22);
      if ((v62 & 1) == 0)
      {
        goto LABEL_55;
      }

      v63 = (*(v59 + 56) + 16 * v61);
      v133 = *(v63 + 1);
      v134 = *v63;

      v64 = v4[10];
      if (!v64)
      {
        goto LABEL_64;
      }

LABEL_57:
      if (*(v64 + 16))
      {

        v65 = sub_25E978F5C(v21, v22);
        if (v66)
        {
          v67 = (*(v64 + 56) + 16 * v65);
          v146 = *v67;
          v147 = *(v67 + 1);

          v68 = v4[11];
          if (!v68 || !*(v68 + 16))
          {
            goto LABEL_64;
          }

          v69 = v4[11];

          v70 = sub_25E978F5C(v21, v22);
          if (v71)
          {
            v72 = (*(v68 + 56) + 16 * v70);
            v131 = *(v72 + 1);
            v132 = *v72;

            goto LABEL_65;
          }
        }
      }

LABEL_64:
      v131 = 0;
      v132 = 0;
      v146 = 90;
      v147 = 0;
LABEL_65:
      v73 = v4[2];
      v141 = v29;
      if (!v73)
      {
        v83 = v30;
        v84 = v21;
        v129 = 0;
        v130 = 0;
        v143 = 0;
        v128 = 0;
        v85 = 0;
        v144 = 90;
        v145 = 0;
        goto LABEL_86;
      }

      if (!*(v73 + 16))
      {
        goto LABEL_75;
      }

      v74 = sub_25E978F5C(v21, v22);
      if ((v75 & 1) == 0)
      {
        goto LABEL_74;
      }

      v76 = (*(v73 + 56) + 16 * v74);
      v144 = *v76;
      v145 = *(v76 + 1);

      v77 = v4[7];
      if (v77 && *(v77 + 16))
      {
        v78 = v4[7];

        v79 = sub_25E978F5C(v21, v22);
        if (v80)
        {
          v81 = (*(v77 + 56) + 16 * v79);
          v129 = *(v81 + 1);
          v130 = *v81;

          v82 = v4[2];
          if (!v82)
          {
            goto LABEL_82;
          }

          goto LABEL_76;
        }

LABEL_74:
      }

LABEL_75:
      v129 = 0;
      v130 = 0;
      v144 = 90;
      v145 = 0;
      v82 = v4[2];
      if (!v82)
      {
        goto LABEL_82;
      }

LABEL_76:
      if (!*(v82 + 16))
      {
        goto LABEL_82;
      }

      v86 = sub_25E978F5C(v21, v22);
      if ((v87 & 1) == 0)
      {
        v83 = v30;
        v84 = v21;
LABEL_84:

LABEL_85:
        v143 = 0;
        v128 = 0;
        v85 = 0;
LABEL_86:
        v142 = 90;
        goto LABEL_87;
      }

      v88 = (*(v82 + 56) + 16 * v86);
      v142 = *v88;
      v143 = *(v88 + 1);

      v89 = v4[9];
      if (!v89)
      {
LABEL_82:
        v83 = v30;
        v84 = v21;
        goto LABEL_85;
      }

      v83 = v30;
      if (!*(v89 + 16))
      {
        v84 = v21;
        goto LABEL_85;
      }

      v90 = v4[9];

      v84 = v21;
      v91 = sub_25E978F5C(v21, v22);
      if ((v92 & 1) == 0)
      {
        goto LABEL_84;
      }

      v93 = (*(v89 + 56) + 16 * v91);
      v128 = *v93;
      v85 = *(v93 + 1);

LABEL_87:
      v94 = *v11;
      if (*(*v11 + 16) && (v95 = sub_25E978F5C(v84, v22), (v96 & 1) != 0))
      {
        v97 = (*(v94 + 56) + 304 * v95);
        memcpy(v167, v97, sizeof(v167));
        v98 = v97;
        v11 = v154;
        memmove(v168, v98, 0x130uLL);
        nullsub_1(v168);
        sub_25E97F4EC(v167, v166);
      }

      else
      {
        sub_25E97F43C(v167);
        memcpy(v168, v167, 0x130uLL);
      }

      memcpy(v167, v168, sizeof(v167));
      if (sub_25E97F474(v167) == 1)
      {
        v165[0] = xmmword_25E9D90A0;
        v165[2] = 0uLL;
        v165[1] = 0x5AuLL;
        v165[3] = 0x5AuLL;
        v165[4] = 0uLL;
        v165[6] = 0uLL;
        v165[5] = 0x5AuLL;
        v165[7] = 0x5AuLL;
        v165[8] = 0uLL;
        v165[10] = 0uLL;
        v165[9] = 0x5AuLL;
        v165[11] = 0x5AuLL;
        v165[12] = 0uLL;
        v165[14] = 0uLL;
        v165[13] = 0x5AuLL;
        v165[15] = 0x5AuLL;
        v165[16] = 0uLL;
        v165[17] = 0x5AuLL;
        v165[18] = 0uLL;
        nullsub_1(v165);
        memcpy(v166, v168, sizeof(v166));
        sub_25E981210(v166, &qword_27FD0D698, &qword_25E9D90E0);
        memcpy(v168, v165, 0x130uLL);
      }

      memcpy(v166, v168, sizeof(v166));
      if (sub_25E97F474(v166) != 1)
      {

        v168[0] = v84;
        v168[1] = v22;
      }

      memcpy(v165, v168, sizeof(v165));
      if (sub_25E97F474(v165) != 1)
      {
        v168[2] = v141;
        v168[3] = v83;
        v168[4] = v140;
        v168[5] = v139;
      }

      memcpy(v164, v168, sizeof(v164));
      if (sub_25E97F474(v164) != 1)
      {
        v168[6] = v152;
        v168[7] = v153;
        v168[8] = v138;
        v168[9] = v137;
      }

      memcpy(v163, v168, sizeof(v163));
      if (sub_25E97F474(v163) != 1)
      {
        v168[10] = v150;
        v168[11] = v151;
        v168[12] = v136;
        v168[13] = v135;
      }

      memcpy(v162, v168, sizeof(v162));
      if (sub_25E97F474(v162) != 1)
      {
        v168[14] = v148;
        v168[15] = v149;
        v168[16] = v134;
        v168[17] = v133;
      }

      memcpy(v161, v168, sizeof(v161));
      if (sub_25E97F474(v161) != 1)
      {
        v168[18] = v146;
        v168[19] = v147;
        v168[20] = v132;
        v168[21] = v131;
      }

      memcpy(v160, v168, sizeof(v160));
      if (sub_25E97F474(v160) != 1)
      {
        v168[22] = v144;
        v168[23] = v145;
        v168[24] = v130;
        v168[25] = v129;
      }

      memcpy(v159, v168, sizeof(v159));
      if (sub_25E97F474(v159) != 1)
      {
        v168[26] = v142;
        v168[27] = v143;
        v168[28] = v128;
        v168[29] = v85;
      }

      memcpy(__src, v168, sizeof(__src));
      memcpy(v158, v168, sizeof(v158));
      if (sub_25E97F474(v158) != 1)
      {
        memcpy(v156, __src, sizeof(v156));
        sub_25E97F4EC(v156, __dst);
        v106 = *v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v11;
        v109 = isUniquelyReferenced_nonNull_native;
        v169 = *v108;
        v110 = v169;
        v112 = sub_25E978F5C(v84, v22);
        v113 = v110[2];
        v114 = (v111 & 1) == 0;
        v115 = v113 + v114;
        if (__OFADD__(v113, v114))
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          result = sub_25E9D8330();
          __break(1u);
          return result;
        }

        v116 = v111;
        if (v110[3] >= v115)
        {
          if (v109)
          {
            if ((v111 & 1) == 0)
            {
              goto LABEL_121;
            }
          }

          else
          {
            sub_25E97D76C();
            if ((v116 & 1) == 0)
            {
              goto LABEL_121;
            }
          }
        }

        else
        {
          sub_25E979724(v115, v109);
          v117 = sub_25E978F5C(v84, v22);
          if ((v116 & 1) != (v118 & 1))
          {
            goto LABEL_132;
          }

          v112 = v117;
          if ((v116 & 1) == 0)
          {
LABEL_121:
            v119 = v169;
            v169[(v112 >> 6) + 8] |= 1 << v112;
            v120 = (v119[6] + 16 * v112);
            *v120 = v84;
            v120[1] = v22;
            memcpy((v119[7] + 304 * v112), __src, 0x130uLL);
            v121 = v119[2];
            v122 = __OFADD__(v121, 1);
            v123 = v121 + 1;
            if (v122)
            {
              goto LABEL_131;
            }

            v119[2] = v123;
            v11 = v154;
            *v154 = v119;
            goto LABEL_12;
          }
        }

        v17 = v169;
        v18 = (v169[7] + 304 * v112);
        memcpy(__dst, v18, sizeof(__dst));
        memcpy(v18, __src, 0x130uLL);
        sub_25E97F498(__dst);
        *v154 = v17;
        v11 = v154;
LABEL_12:
        v3 = v126;
        v15 = v127;
        goto LABEL_13;
      }

      v99 = sub_25E978F5C(v84, v22);
      v101 = v100;

      v3 = v126;
      v15 = v127;
      if (v101)
      {
        v102 = *v11;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v104 = *v11;
        __dst[0] = *v11;
        if (!v103)
        {
          sub_25E97D76C();
          v104 = __dst[0];
        }

        v105 = *(*(v104 + 48) + 16 * v99 + 8);

        memcpy(v156, (*(v104 + 56) + 304 * v99), sizeof(v156));
        sub_25E97F498(v156);
        sub_25E97C530(v99, v104);
        *v11 = v104;
      }

LABEL_13:
      v14 &= v14 - 1;
      memcpy(v156, v168, sizeof(v156));
      sub_25E981210(v156, &qword_27FD0D698, &qword_25E9D90E0);
      v10 = v125;
    }

    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v124 = *v11;
      }

      v14 = *(v3 + 8 * v19);
      ++v16;
      if (v14)
      {
        v16 = v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_129:
    swift_once();
  }
}

unint64_t sub_25E976E14@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    goto LABEL_5;
  }

  result = sub_25E978F5C(result, a2);
  if ((v7 & 1) == 0)
  {
    v5 = 0;
LABEL_5:
    *a4 = 89;
    goto LABEL_6;
  }

  v8 = *(a3 + 56) + 16 * result;
  v9 = *v8;
  v5 = *(v8 + 8);
  *a4 = v9;
LABEL_6:
  a4[1] = v5;
  return result;
}

uint64_t sub_25E976E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25E978F5C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v8 = *v6;
  v7 = v6[1];

  return v8;
}

uint64_t sub_25E976ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_25E978F5C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

uint64_t sub_25E976F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25E978F5C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void *sub_25E976F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_25E978F5C(a1, a2), (v7 & 1) != 0))
  {
    memmove(a4, (*(a3 + 56) + 360 * v6), 0x168uLL);

    return nullsub_1(a4);
  }

  else
  {
    sub_25E980E0C(__src);
    return memcpy(a4, __src, 0x168uLL);
  }
}

unint64_t sub_25E97700C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_25E978F5C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_25E977068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v307 = &v305 - v3;
  v4 = MEMORY[0x277D84F90];
  v5 = sub_25E97F328(MEMORY[0x277D84F90]);
  v6 = sub_25E97F328(v4);
  v7 = sub_25E97F328(v4);
  v8 = sub_25E97F328(v4);
  v315 = sub_25E97F328(v4);
  v311 = sub_25E97F328(v4);
  v314 = sub_25E97F328(v4);
  v310 = sub_25E97F328(v4);
  v313 = sub_25E97F328(v4);
  v309 = sub_25E97F328(v4);
  swift_beginAccess();
  v9 = qword_27FD0DD78;
  v10 = 0x27FD0D000uLL;
  if (qword_27FD0DD78)
  {
    v306 = v0;
    sub_25E976108();
    v11 = v9;
    isUniquelyReferenced_nonNull_native = sub_25E9D7E70();

    if (qword_27FD0D5C8 != -1)
    {
LABEL_195:
      swift_once();
    }

    v13 = sub_25E9D7F10();
    __swift_project_value_buffer(v13, qword_27FD0DB90);

    v14 = sub_25E9D7F00();
    LOBYTE(v15) = sub_25E9D8120();
    v16 = os_log_type_enabled(v14, v15);
    v17 = isUniquelyReferenced_nonNull_native >> 62;
    v318 = isUniquelyReferenced_nonNull_native;
    if (v16)
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      v19 = v8;
      if (v17)
      {
        goto LABEL_216;
      }

      v20 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      *(v18 + 4) = v20;
      v21 = v18;

      _os_log_impl(&dword_25E971000, v14, v15, "STSchemaSTEvent length %ld", v21, 0xCu);
      MEMORY[0x25F8C51A0](v21, -1, -1);

      v8 = v19;
    }

    else
    {
    }

    v10 = 0x27FD0D000uLL;
    if (v17)
    {
      v230 = v318;
      v23 = sub_25E9D8290();
      v22 = v230;
      if (v23)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = v318;
      v23 = *((v318 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v23)
      {
LABEL_10:
        v17 = 0;
        v316 = v23;
        v317 = v22 & 0xC000000000000001;
        v308 = v22 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v317)
          {
            v24 = MEMORY[0x25F8C4B40](v17, v22);
          }

          else
          {
            if (v17 >= *(v308 + 16))
            {
              goto LABEL_179;
            }

            v24 = *(v22 + 8 * v17 + 32);
          }

          isUniquelyReferenced_nonNull_native = v24;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
            goto LABEL_195;
          }

          v320 = v17 + 1;
          v25 = sub_25E9D7840();
          if (!v25)
          {
            goto LABEL_11;
          }

          v26 = v25;
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (!v27)
          {
            goto LABEL_171;
          }

          v28 = v27;
          v29 = [v27 eventMetadata];
          v323 = v28;
          if (v29)
          {
            break;
          }

          v322 = 0;
          v19 = 0xE000000000000000;
LABEL_29:
          v43 = [v28 stGeneralSearchContext];
          v319 = isUniquelyReferenced_nonNull_native;
          v321 = v19;
          if (v43)
          {
            v44 = v43;
            v45 = [v43 startedOrChanged];

            if (v45)
            {

              v46 = sub_25E9D7850();
              if (!v46)
              {
                __break(1u);
LABEL_218:
                __break(1u);
LABEL_219:
                __break(1u);
LABEL_220:
                __break(1u);
LABEL_221:
                __break(1u);
LABEL_222:
                __break(1u);
LABEL_223:
                __break(1u);
LABEL_224:
                __break(1u);
LABEL_225:
                __break(1u);
LABEL_226:
                __break(1u);
LABEL_227:
                result = sub_25E9D8330();
                __break(1u);
                return result;
              }

              v47 = v46;
              v14 = sub_25E9D7870();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v324 = v5;
              v48 = sub_25E978F5C(v322, v19);
              v50 = *(v5 + 16);
              v51 = (v49 & 1) == 0;
              v52 = __OFADD__(v50, v51);
              v53 = v50 + v51;
              if (v52)
              {
                goto LABEL_180;
              }

              v54 = v49;
              if (*(v5 + 24) >= v53)
              {
                v15 = v323;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v216 = v48;
                  sub_25E97D5F4();
                  v15 = v323;
                  v48 = v216;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v5 = v324;
                if (v54)
                {
                  goto LABEL_51;
                }
              }

              else
              {
                sub_25E979464(v53, isUniquelyReferenced_nonNull_native);
                v48 = sub_25E978F5C(v322, v321);
                if ((v54 & 1) != (v55 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v15 = v323;
                v5 = v324;
                if (v54)
                {
LABEL_51:
                  v75 = *(v5 + 56) + 16 * v48;
                  v76 = 39;
LABEL_57:
                  *v75 = v76;
                  *(v75 + 8) = v14;
                  v19 = v321;
                  goto LABEL_58;
                }
              }

              *(v5 + 8 * (v48 >> 6) + 64) |= 1 << v48;
              v56 = (*(v5 + 48) + 16 * v48);
              v19 = v321;
              *v56 = v322;
              v56[1] = v19;
              v57 = *(v5 + 56) + 16 * v48;
              *v57 = 39;
              *(v57 + 8) = v14;
              v58 = *(v5 + 16);
              v52 = __OFADD__(v58, 1);
              v59 = v58 + 1;
              if (v52)
              {
                goto LABEL_190;
              }

              *(v5 + 16) = v59;
LABEL_47:

              goto LABEL_58;
            }
          }

          v15 = v323;
          v60 = [v323 stGeneralSearchContext];
          if (v60)
          {
            v61 = v60;
            v62 = [v60 ended];

            if (!v62)
            {
              v15 = v323;
              goto LABEL_58;
            }

            v63 = sub_25E9D7850();
            if (!v63)
            {
              goto LABEL_222;
            }

            v64 = v63;
            v14 = sub_25E9D7870();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v324 = v6;
            v18 = sub_25E978F5C(v322, v19);
            v66 = v6[2];
            v67 = (v65 & 1) == 0;
            v52 = __OFADD__(v66, v67);
            v68 = v66 + v67;
            if (v52)
            {
              goto LABEL_185;
            }

            v69 = v65;
            if (v6[3] >= v68)
            {
              v15 = v323;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v220 = v18;
                sub_25E97D5F4();
                v15 = v323;
                v18 = v220;
              }

              isUniquelyReferenced_nonNull_native = v319;
              v6 = v324;
              if (v69)
              {
                goto LABEL_56;
              }
            }

            else
            {
              sub_25E979464(v68, isUniquelyReferenced_nonNull_native);
              v18 = sub_25E978F5C(v322, v321);
              if ((v69 & 1) != (v70 & 1))
              {
                goto LABEL_227;
              }

              isUniquelyReferenced_nonNull_native = v319;
              v15 = v323;
              v6 = v324;
              if (v69)
              {
LABEL_56:
                v75 = v6[7] + 16 * v18;
                v76 = 40;
                goto LABEL_57;
              }
            }

            v6[(v18 >> 6) + 8] |= 1 << v18;
            v71 = (v6[6] + 16 * v18);
            v19 = v321;
            *v71 = v322;
            v71[1] = v19;
            v72 = v6[7] + 16 * v18;
            *v72 = 40;
            *(v72 + 8) = v14;
            v73 = v6[2];
            v52 = __OFADD__(v73, 1);
            v74 = v73 + 1;
            if (v52)
            {
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              isUniquelyReferenced_nonNull_native = v318;
              v304 = v18;
              v20 = sub_25E9D8290();
              v18 = v304;
              goto LABEL_6;
            }

            v6[2] = v74;
            goto LABEL_47;
          }

LABEL_58:
          v77 = [v15 stAnswerSynthesisContext];
          if (v77)
          {
            v78 = v77;
            v79 = [v77 startedOrChanged];

            if (v79)
            {

              v80 = sub_25E9D7850();
              if (!v80)
              {
                goto LABEL_218;
              }

              v81 = v80;
              v14 = sub_25E9D7870();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v324 = v7;
              v82 = sub_25E978F5C(v322, v19);
              v84 = v7[2];
              v85 = (v83 & 1) == 0;
              v52 = __OFADD__(v84, v85);
              v86 = v84 + v85;
              if (v52)
              {
                goto LABEL_181;
              }

              v87 = v83;
              if (v7[3] >= v86)
              {
                v15 = v323;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v217 = v82;
                  sub_25E97D5F4();
                  v15 = v323;
                  v82 = v217;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v7 = v324;
                if (v87)
                {
                  goto LABEL_80;
                }
              }

              else
              {
                sub_25E979464(v86, isUniquelyReferenced_nonNull_native);
                v82 = sub_25E978F5C(v322, v321);
                if ((v87 & 1) != (v88 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v15 = v323;
                v7 = v324;
                if (v87)
                {
LABEL_80:
                  v108 = v7[7] + 16 * v82;
                  v109 = 41;
LABEL_86:
                  *v108 = v109;
                  *(v108 + 8) = v14;
                  v19 = v321;
                  goto LABEL_87;
                }
              }

              v7[(v82 >> 6) + 8] |= 1 << v82;
              v89 = (v7[6] + 16 * v82);
              v19 = v321;
              *v89 = v322;
              v89[1] = v19;
              v90 = v7[7] + 16 * v82;
              *v90 = 41;
              *(v90 + 8) = v14;
              v91 = v7[2];
              v52 = __OFADD__(v91, 1);
              v92 = v91 + 1;
              if (v52)
              {
                goto LABEL_191;
              }

              v7[2] = v92;
LABEL_76:

              goto LABEL_87;
            }
          }

          v15 = v323;
          v93 = [v323 stAnswerSynthesisContext];
          if (v93)
          {
            v94 = v93;
            v95 = [v93 ended];

            if (!v95)
            {
              v15 = v323;
              goto LABEL_87;
            }

            v96 = sub_25E9D7850();
            if (!v96)
            {
              goto LABEL_223;
            }

            v97 = v96;
            v14 = sub_25E9D7870();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v324 = v8;
            v18 = sub_25E978F5C(v322, v19);
            v99 = v8[2];
            v100 = (v98 & 1) == 0;
            v52 = __OFADD__(v99, v100);
            v101 = v99 + v100;
            if (v52)
            {
              goto LABEL_186;
            }

            v102 = v98;
            if (v8[3] >= v101)
            {
              v15 = v323;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v221 = v18;
                sub_25E97D5F4();
                v15 = v323;
                v18 = v221;
              }

              isUniquelyReferenced_nonNull_native = v319;
              v8 = v324;
              if (v102)
              {
                goto LABEL_85;
              }
            }

            else
            {
              sub_25E979464(v101, isUniquelyReferenced_nonNull_native);
              v18 = sub_25E978F5C(v322, v321);
              if ((v102 & 1) != (v103 & 1))
              {
                goto LABEL_227;
              }

              isUniquelyReferenced_nonNull_native = v319;
              v15 = v323;
              v8 = v324;
              if (v102)
              {
LABEL_85:
                v108 = v8[7] + 16 * v18;
                v109 = 42;
                goto LABEL_86;
              }
            }

            v8[(v18 >> 6) + 8] |= 1 << v18;
            v104 = (v8[6] + 16 * v18);
            v19 = v321;
            *v104 = v322;
            v104[1] = v19;
            v105 = v8[7] + 16 * v18;
            *v105 = 42;
            *(v105 + 8) = v14;
            v106 = v8[2];
            v52 = __OFADD__(v106, 1);
            v107 = v106 + 1;
            if (v52)
            {
              goto LABEL_212;
            }

            v8[2] = v107;
            goto LABEL_76;
          }

LABEL_87:
          v110 = [v15 stSpotlightContext];
          if (v110)
          {
            v111 = v110;
            v112 = [v110 startedOrChanged];

            if (v112)
            {

              v113 = sub_25E9D7850();
              if (!v113)
              {
                goto LABEL_219;
              }

              v114 = v113;
              v14 = sub_25E9D7870();

              v115 = v315;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v324 = v115;
              v116 = sub_25E978F5C(v322, v19);
              v118 = *(v115 + 16);
              v119 = (v117 & 1) == 0;
              v52 = __OFADD__(v118, v119);
              v120 = v118 + v119;
              if (v52)
              {
                goto LABEL_182;
              }

              v121 = v117;
              if (*(v115 + 24) >= v120)
              {
                v15 = v323;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v218 = v116;
                  sub_25E97D5F4();
                  v15 = v323;
                  v116 = v218;
                }

                isUniquelyReferenced_nonNull_native = v319;
              }

              else
              {
                sub_25E979464(v120, isUniquelyReferenced_nonNull_native);
                v116 = sub_25E978F5C(v322, v321);
                if ((v121 & 1) != (v122 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v15 = v323;
              }

              v135 = v324;
              v315 = v324;
              if ((v121 & 1) == 0)
              {
                v324[(v116 >> 6) + 8] |= 1 << v116;
                v138 = (v135[6] + 16 * v116);
                v19 = v321;
                *v138 = v322;
                v138[1] = v19;
                v139 = v135[7] + 16 * v116;
                *v139 = 43;
                *(v139 + 8) = v14;
                v140 = v135[2];
                v52 = __OFADD__(v140, 1);
                v141 = v140 + 1;
                if (v52)
                {
                  goto LABEL_192;
                }

LABEL_117:
                v135[2] = v141;

                goto LABEL_118;
              }

              v136 = v324[7] + 16 * v116;
              v137 = 43;
LABEL_115:
              *v136 = v137;
              *(v136 + 8) = v14;
              v19 = v321;
              goto LABEL_118;
            }
          }

          v15 = v323;
          v123 = [v323 stSpotlightContext];
          if (v123)
          {
            v124 = v123;
            v125 = [v123 ended];

            if (v125)
            {

              v126 = sub_25E9D7850();
              if (!v126)
              {
                goto LABEL_224;
              }

              v127 = v126;
              v14 = sub_25E9D7870();

              v128 = v311;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v324 = v128;
              v18 = sub_25E978F5C(v322, v19);
              v130 = *(v128 + 16);
              v131 = (v129 & 1) == 0;
              v52 = __OFADD__(v130, v131);
              v132 = v130 + v131;
              if (v52)
              {
                goto LABEL_187;
              }

              v133 = v129;
              if (*(v128 + 24) >= v132)
              {
                v15 = v323;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v222 = v18;
                  sub_25E97D5F4();
                  v15 = v323;
                  v18 = v222;
                }

                isUniquelyReferenced_nonNull_native = v319;
              }

              else
              {
                sub_25E979464(v132, isUniquelyReferenced_nonNull_native);
                v18 = sub_25E978F5C(v322, v321);
                if ((v133 & 1) != (v134 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v15 = v323;
              }

              v135 = v324;
              v311 = v324;
              if ((v133 & 1) == 0)
              {
                v324[(v18 >> 6) + 8] |= 1 << v18;
                v142 = (v135[6] + 16 * v18);
                v19 = v321;
                *v142 = v322;
                v142[1] = v19;
                v143 = v135[7] + 16 * v18;
                *v143 = 44;
                *(v143 + 8) = v14;
                v144 = v135[2];
                v52 = __OFADD__(v144, 1);
                v141 = v144 + 1;
                if (v52)
                {
                  goto LABEL_213;
                }

                goto LABEL_117;
              }

              v136 = v324[7] + 16 * v18;
              v137 = 44;
              goto LABEL_115;
            }

            v15 = v323;
          }

LABEL_118:
          v145 = [v15 stGlobalSearchContext];
          if (v145)
          {
            v146 = v145;
            v147 = [v145 startedOrChanged];

            if (v147)
            {

              v148 = sub_25E9D7850();
              if (!v148)
              {
                goto LABEL_220;
              }

              v149 = v148;
              v14 = sub_25E9D7870();

              v150 = v314;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v324 = v150;
              v151 = sub_25E978F5C(v322, v19);
              v153 = *(v150 + 16);
              v154 = (v152 & 1) == 0;
              v52 = __OFADD__(v153, v154);
              v155 = v153 + v154;
              if (v52)
              {
                goto LABEL_183;
              }

              v156 = v152;
              if (*(v150 + 24) >= v155)
              {
                v15 = v323;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v219 = v151;
                  sub_25E97D5F4();
                  v15 = v323;
                  v151 = v219;
                }

                isUniquelyReferenced_nonNull_native = v319;
              }

              else
              {
                sub_25E979464(v155, isUniquelyReferenced_nonNull_native);
                v151 = sub_25E978F5C(v322, v321);
                if ((v156 & 1) != (v157 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v15 = v323;
              }

              v170 = v324;
              v314 = v324;
              if ((v156 & 1) == 0)
              {
                v324[(v151 >> 6) + 8] |= 1 << v151;
                v173 = (v170[6] + 16 * v151);
                v19 = v321;
                *v173 = v322;
                v173[1] = v19;
                v174 = v170[7] + 16 * v151;
                *v174 = 45;
                *(v174 + 8) = v14;
                v175 = v170[2];
                v52 = __OFADD__(v175, 1);
                v176 = v175 + 1;
                if (v52)
                {
                  goto LABEL_193;
                }

LABEL_148:
                v170[2] = v176;

                goto LABEL_149;
              }

              v171 = v324[7] + 16 * v151;
              v172 = 45;
LABEL_146:
              *v171 = v172;
              *(v171 + 8) = v14;
              v19 = v321;
              goto LABEL_149;
            }
          }

          v15 = v323;
          v158 = [v323 stGlobalSearchContext];
          if (v158)
          {
            v159 = v158;
            v160 = [v158 ended];

            if (v160)
            {

              v161 = sub_25E9D7850();
              if (!v161)
              {
                goto LABEL_225;
              }

              v162 = v161;
              v14 = sub_25E9D7870();

              v163 = v310;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v324 = v163;
              v18 = sub_25E978F5C(v322, v19);
              v165 = *(v163 + 16);
              v166 = (v164 & 1) == 0;
              v52 = __OFADD__(v165, v166);
              v167 = v165 + v166;
              if (v52)
              {
                goto LABEL_188;
              }

              v168 = v164;
              if (*(v163 + 24) >= v167)
              {
                v15 = v323;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v223 = v18;
                  sub_25E97D5F4();
                  v15 = v323;
                  v18 = v223;
                }

                isUniquelyReferenced_nonNull_native = v319;
              }

              else
              {
                sub_25E979464(v167, isUniquelyReferenced_nonNull_native);
                v18 = sub_25E978F5C(v322, v321);
                if ((v168 & 1) != (v169 & 1))
                {
                  goto LABEL_227;
                }

                isUniquelyReferenced_nonNull_native = v319;
                v15 = v323;
              }

              v170 = v324;
              v310 = v324;
              if ((v168 & 1) == 0)
              {
                v324[(v18 >> 6) + 8] |= 1 << v18;
                v177 = (v170[6] + 16 * v18);
                v19 = v321;
                *v177 = v322;
                v177[1] = v19;
                v178 = v170[7] + 16 * v18;
                *v178 = 46;
                *(v178 + 8) = v14;
                v179 = v170[2];
                v52 = __OFADD__(v179, 1);
                v176 = v179 + 1;
                if (v52)
                {
                  goto LABEL_214;
                }

                goto LABEL_148;
              }

              v171 = v324[7] + 16 * v18;
              v172 = 46;
              goto LABEL_146;
            }

            v15 = v323;
          }

LABEL_149:
          v180 = [v15 searchToolHallucinationDetectionContext];
          if (!v180 || (v181 = v180, v182 = [v180 startedOrChanged], v181, !v182))
          {
            v194 = v323;
            v195 = [v323 searchToolHallucinationDetectionContext];
            if (!v195)
            {
              v26 = isUniquelyReferenced_nonNull_native;
              isUniquelyReferenced_nonNull_native = v194;
LABEL_171:

LABEL_11:

              goto LABEL_12;
            }

            v196 = v195;
            v197 = [v195 ended];

            if (!v197)
            {
              v26 = isUniquelyReferenced_nonNull_native;
              isUniquelyReferenced_nonNull_native = v323;
              goto LABEL_171;
            }

            v198 = sub_25E9D7850();
            if (!v198)
            {
              goto LABEL_226;
            }

            v199 = v198;
            v14 = sub_25E9D7870();

            v200 = v309;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v324 = v200;
            v201 = sub_25E978F5C(v322, v19);
            v203 = *(v200 + 16);
            v204 = (v202 & 1) == 0;
            v52 = __OFADD__(v203, v204);
            v205 = v203 + v204;
            if (v52)
            {
              goto LABEL_189;
            }

            v19 = v202;
            if (*(v200 + 24) < v205)
            {
              sub_25E979464(v205, isUniquelyReferenced_nonNull_native);
              v201 = sub_25E978F5C(v322, v321);
              if ((v19 & 1) != (v206 & 1))
              {
                goto LABEL_227;
              }

              goto LABEL_173;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
LABEL_173:
              isUniquelyReferenced_nonNull_native = v319;
              if (v19)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v224 = v201;
              sub_25E97D5F4();
              v201 = v224;
              isUniquelyReferenced_nonNull_native = v319;
              if (v19)
              {
LABEL_174:
                v214 = v201;

                v309 = v324;
                v215 = v324[7] + 16 * v214;
                *v215 = 48;
                *(v215 + 8) = v14;

                goto LABEL_12;
              }
            }

            v15 = v324;
            v324[(v201 >> 6) + 8] |= 1 << v201;
            v225 = (v15[6] + 16 * v201);
            v226 = v321;
            *v225 = v322;
            v225[1] = v226;
            v227 = v15[7] + 16 * v201;
            *v227 = 48;
            *(v227 + 8) = v14;

            v228 = v15[2];
            v52 = __OFADD__(v228, 1);
            v229 = v228 + 1;
            if (v52)
            {
              goto LABEL_215;
            }

            v309 = v15;
            v15[2] = v229;
            goto LABEL_12;
          }

          v312 = v8;
          v8 = v7;
          v7 = v6;
          v6 = v5;

          v183 = sub_25E9D7850();
          if (!v183)
          {
            goto LABEL_221;
          }

          v184 = v183;
          v185 = sub_25E9D7870();

          v186 = v313;
          v5 = swift_isUniquelyReferenced_nonNull_native();
          v324 = v186;
          v188 = sub_25E978F5C(v322, v19);
          v189 = *(v186 + 16);
          v190 = (v187 & 1) == 0;
          v191 = v189 + v190;
          if (__OFADD__(v189, v190))
          {
            goto LABEL_184;
          }

          isUniquelyReferenced_nonNull_native = v187;
          if (*(v186 + 24) >= v191)
          {
            if ((v5 & 1) == 0)
            {
              sub_25E97D5F4();
            }
          }

          else
          {
            sub_25E979464(v191, v5);
            v192 = sub_25E978F5C(v322, v321);
            if ((isUniquelyReferenced_nonNull_native & 1) != (v193 & 1))
            {
              goto LABEL_227;
            }

            v188 = v192;
          }

          v5 = v6;
          v6 = v7;
          if (isUniquelyReferenced_nonNull_native)
          {

            v313 = v324;
            v207 = v324[7] + 16 * v188;
            *v207 = 47;
            *(v207 + 8) = v185;

            v7 = v8;
            v8 = v312;
          }

          else
          {
            v208 = v324;
            v324[(v188 >> 6) + 8] |= 1 << v188;
            v209 = (v208[6] + 16 * v188);
            v210 = v321;
            *v209 = v322;
            v209[1] = v210;
            v211 = v208[7] + 16 * v188;
            *v211 = 47;
            *(v211 + 8) = v185;

            v212 = v208[2];
            v52 = __OFADD__(v212, 1);
            v213 = v212 + 1;
            if (v52)
            {
              goto LABEL_194;
            }

            v7 = v8;
            v313 = v208;
            v208[2] = v213;
            v8 = v312;
          }

LABEL_12:
          v10 = 0x27FD0D000;
          ++v17;
          v22 = v318;
          if (v320 == v316)
          {
            goto LABEL_197;
          }
        }

        v30 = v29;
        v31 = [v29 searchToolId];

        if (v31)
        {
          v32 = v307;
          sub_25E9D8100();

          v33 = v32;
          v34 = sub_25E9D77F0();
          v35 = *(v34 - 8);
          if ((*(v35 + 48))(v33, 1, v34) != 1)
          {
            v36 = sub_25E9D77C0();
            v321 = v17;
            v322 = v36;
            v37 = v7;
            v38 = v5;
            v39 = v8;
            v40 = v6;
            v42 = v41;
            (*(v35 + 8))(v33, v34);
            v19 = v42;
            v6 = v40;
            v8 = v39;
            v5 = v38;
            v7 = v37;
            v17 = v321;
            goto LABEL_28;
          }

          sub_25E981210(v33, &qword_27FD0D7D8, &qword_25E9D9BC0);
        }

        v322 = 0;
        v19 = 0xE000000000000000;
LABEL_28:
        v28 = v323;
        goto LABEL_29;
      }
    }

LABEL_197:

    v0 = v306;
  }

  v231 = v0[2];
  v0[2] = v5;

  v232 = v0[3];
  v0[3] = v6;

  v233 = v0[4];
  v0[4] = v7;

  v234 = v0[5];
  v0[5] = v8;

  v235 = v0[6];
  v0[6] = v315;

  v236 = v0[7];
  v0[7] = v311;

  v237 = v0[8];
  v0[8] = v314;

  v238 = v0[9];
  v0[9] = v310;

  v239 = v0[10];
  v0[10] = v313;

  v240 = v0[11];
  v0[11] = v309;

  if (*(v10 + 1480) != -1)
  {
    swift_once();
  }

  v241 = sub_25E9D7F10();
  v323 = __swift_project_value_buffer(v241, qword_27FD0DB90);
  v242 = sub_25E9D7F00();
  v243 = sub_25E9D8120();
  v244 = os_log_type_enabled(v242, v243);
  v321 = v7;
  v322 = v6;
  v312 = v8;
  v320 = v5;
  if (v244)
  {
    v245 = swift_slowAlloc();
    v246 = swift_slowAlloc();
    v324 = v246;
    *v245 = 136315394;

    v247 = sub_25E9D7F40();
    v249 = v248;

    v250 = sub_25E9887EC(v247, v249, &v324);

    *(v245 + 4) = v250;
    *(v245 + 12) = 2080;

    v251 = sub_25E9D7F40();
    v253 = v252;

    v254 = sub_25E9887EC(v251, v253, &v324);

    *(v245 + 14) = v254;
    _os_log_impl(&dword_25E971000, v242, v243, "General Search Start Dict: %s, End Dict: %s", v245, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v246, -1, -1);
    MEMORY[0x25F8C51A0](v245, -1, -1);
  }

  v255 = sub_25E9D7F00();
  v256 = sub_25E9D8120();
  if (os_log_type_enabled(v255, v256))
  {
    v257 = swift_slowAlloc();
    v258 = swift_slowAlloc();
    v324 = v258;
    *v257 = 136315394;

    v259 = sub_25E9D7F40();
    v261 = v260;

    v262 = sub_25E9887EC(v259, v261, &v324);

    *(v257 + 4) = v262;
    *(v257 + 12) = 2080;

    v263 = sub_25E9D7F40();
    v265 = v264;

    v266 = sub_25E9887EC(v263, v265, &v324);

    *(v257 + 14) = v266;
    _os_log_impl(&dword_25E971000, v255, v256, "Answer Synthesis Start Dict: %s, End Dict: %s", v257, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v258, -1, -1);
    MEMORY[0x25F8C51A0](v257, -1, -1);
  }

  v267 = sub_25E9D7F00();
  v268 = sub_25E9D8120();
  if (os_log_type_enabled(v267, v268))
  {
    v269 = swift_slowAlloc();
    v270 = swift_slowAlloc();
    v324 = v270;
    *v269 = 136315394;

    v271 = sub_25E9D7F40();
    v273 = v272;

    v274 = sub_25E9887EC(v271, v273, &v324);

    *(v269 + 4) = v274;
    *(v269 + 12) = 2080;

    v275 = sub_25E9D7F40();
    v277 = v276;

    v278 = sub_25E9887EC(v275, v277, &v324);

    *(v269 + 14) = v278;
    _os_log_impl(&dword_25E971000, v267, v268, "Spotlight Start Dict: %s, End Dict: %s", v269, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v270, -1, -1);
    MEMORY[0x25F8C51A0](v269, -1, -1);
  }

  v279 = sub_25E9D7F00();
  v280 = sub_25E9D8120();
  if (os_log_type_enabled(v279, v280))
  {
    v281 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    v324 = v282;
    *v281 = 136315394;

    v283 = sub_25E9D7F40();
    v285 = v284;

    v286 = sub_25E9887EC(v283, v285, &v324);

    *(v281 + 4) = v286;
    *(v281 + 12) = 2080;

    v287 = sub_25E9D7F40();
    v289 = v288;

    v290 = sub_25E9887EC(v287, v289, &v324);

    *(v281 + 14) = v290;
    _os_log_impl(&dword_25E971000, v279, v280, "Global Search Start Dict: %s, End Dict: %s", v281, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v282, -1, -1);
    MEMORY[0x25F8C51A0](v281, -1, -1);
  }

  v291 = sub_25E9D7F00();
  v292 = sub_25E9D8120();
  if (os_log_type_enabled(v291, v292))
  {
    v293 = swift_slowAlloc();
    v294 = swift_slowAlloc();
    v324 = v294;
    *v293 = 136315394;

    v295 = sub_25E9D7F40();
    v297 = v296;

    v298 = sub_25E9887EC(v295, v297, &v324);

    *(v293 + 4) = v298;
    *(v293 + 12) = 2080;

    v299 = sub_25E9D7F40();
    v301 = v300;

    v302 = sub_25E9887EC(v299, v301, &v324);

    *(v293 + 14) = v302;
    _os_log_impl(&dword_25E971000, v291, v292, "HallucinationDetection Start Dict: %s, End Dict: %s", v293, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8C51A0](v294, -1, -1);
    MEMORY[0x25F8C51A0](v293, -1, -1);
  }
}

void *SELFComponent.SearchTool.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  v8 = v0[9];

  v9 = v0[10];

  v10 = v0[11];

  return v0;
}

uint64_t SELFComponent.SearchTool.__deallocating_deinit()
{
  SELFComponent.SearchTool.deinit();

  return swift_deallocClassInstance();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E978F04(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_25E978F5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25E9D8390();
  sub_25E9D8010();
  v6 = sub_25E9D83C0();

  return sub_25E979120(a1, a2, v6);
}

unint64_t sub_25E978FD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_25E9D77F0();
  sub_25E981094(&qword_27FD0D798);
  v5 = sub_25E9D7F60();

  return sub_25E9791D8(a1, v5);
}

unint64_t sub_25E97906C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = sub_25E9D7F60();
  return sub_25E979384(a1, v8, a2, a3);
}

unint64_t sub_25E979120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E9D8300())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E9791D8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_25E981094(&qword_27FD0D7A0);
      v16 = sub_25E9D7F90();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_25E979384(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v11 = *(*(v4 + 48) + 8 * v6);
      if (sub_25E9D7F90())
      {
        break;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25E979464(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D730, &qword_25E9D91D0);
  v40 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + v23;
      v28 = *v27;
      v41 = *(v27 + 8);
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = *(v8 + 56) + v17;
      *v19 = v28;
      *(v19 + 8) = v41;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E979724(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D760, &qword_25E9D9200);
  v36 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      if (v36)
      {
        v25 = (*(v5 + 56) + 304 * v21);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 304 * v21), sizeof(__dst));

        sub_25E97F4EC(__dst, __src);
        v25 = __dst;
      }

      memcpy(__src, v25, 0x130uLL);
      v26 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = memcpy((*(v8 + 56) + 304 * v16), __src, 0x130uLL);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25E979A54(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25E9D77F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C0, &qword_25E9D9250);
  v47 = a2;
  result = sub_25E9D82B0();
  v14 = result;
  if (*(v11 + 16))
  {
    v51 = v10;
    v43 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v44 = (v7 + 16);
    v45 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    v46 = v11;
    while (v19)
    {
      v24 = __clz(__rbit64(v19));
      v25 = (v19 - 1) & v19;
LABEL_17:
      v28 = v24 | (v15 << 6);
      v50 = v25;
      v29 = *(v7 + 72);
      v30 = *(v11 + 48) + v29 * v28;
      if (v47)
      {
        (*v48)(v51, v30, v6);
      }

      else
      {
        (*v44)(v51, v30, v6);
      }

      v31 = (*(v11 + 56) + 16 * v28);
      v32 = *(v31 + 1);
      v49 = *v31;
      v33 = *(v14 + 40);
      sub_25E981094(&qword_27FD0D798);
      result = sub_25E9D7F60();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v21 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v21 + 8 * v36);
          if (v40 != -1)
          {
            v22 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v35) & ~*(v21 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v48)(*(v14 + 48) + v29 * v22, v51, v6);
      v23 = *(v14 + 56) + 16 * v22;
      *v23 = v49;
      *(v23 + 8) = v32;
      ++*(v14 + 16);
      v7 = v45;
      v11 = v46;
      v19 = v50;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v27 = v16[v15];
      ++v26;
      if (v27)
      {
        v24 = __clz(__rbit64(v27));
        v25 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v11 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v16, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v41;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25E979E18(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_25E9D77F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7A8, &qword_25E9D9238);
  v47 = a2;
  result = sub_25E9D82B0();
  v14 = result;
  if (*(v11 + 16))
  {
    v52 = v10;
    v53 = v6;
    v44 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v45 = (v7 + 16);
    v46 = v7;
    v48 = (v7 + 32);
    v21 = result + 64;
    v22 = v7;
    while (v19)
    {
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v29 = v26 | (v15 << 6);
      v30 = *(v11 + 48);
      v51 = *(v22 + 72);
      v31 = v30 + v51 * v29;
      if (v47)
      {
        (*v48)(v52, v31, v53);
      }

      else
      {
        (*v45)(v52, v31, v53);
      }

      v32 = (*(v11 + 56) + 32 * v29);
      v33 = *v32;
      v49 = v32[1];
      v50 = v33;
      v34 = *(v14 + 40);
      sub_25E981094(&qword_27FD0D798);
      result = sub_25E9D7F60();
      v35 = -1 << *(v14 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v21 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v21 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v21 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v48)(*(v14 + 48) + v51 * v23, v52, v53);
      v24 = (*(v14 + 56) + 32 * v23);
      v25 = v49;
      *v24 = v50;
      v24[1] = v25;
      ++*(v14 + 16);
      v22 = v46;
    }

    v27 = v15;
    while (1)
    {
      v15 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v28 = v16[v15];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v19 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v42 = 1 << *(v11 + 32);
    v3 = v44;
    if (v42 >= 64)
    {
      bzero(v16, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v42;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_25E97A210(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v62 = a6;
  v9 = v6;
  v12 = a3(0);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v61 = &v51 - v14;
  v15 = sub_25E9D77F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v20 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v56 = a2;
  v21 = v19;
  result = sub_25E9D82B0();
  v23 = result;
  if (*(v19 + 16))
  {
    v60 = v15;
    v24 = 0;
    v25 = (v19 + 64);
    v26 = 1 << *(v19 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v19 + 64);
    v29 = (v26 + 63) >> 6;
    v51 = v9;
    v52 = (v16 + 16);
    v53 = v19;
    v54 = v16;
    v58 = (v16 + 32);
    v30 = result + 64;
    v31 = v57;
    while (v28)
    {
      v33 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
LABEL_17:
      v36 = v33 | (v24 << 6);
      v37 = *(v21 + 48);
      v59 = *(v54 + 72);
      v38 = v37 + v59 * v36;
      if (v56)
      {
        (*v58)(v31, v38, v60);
        v39 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_25E981140(v39 + v40 * v36, v61, v62);
      }

      else
      {
        (*v52)(v31, v38, v60);
        v41 = *(v21 + 56);
        v40 = *(v55 + 72);
        sub_25E9810D8(v41 + v40 * v36, v61, v62);
      }

      v42 = *(v23 + 40);
      sub_25E981094(&qword_27FD0D798);
      result = sub_25E9D7F60();
      v43 = -1 << *(v23 + 32);
      v44 = result & ~v43;
      v45 = v44 >> 6;
      if (((-1 << v44) & ~*(v30 + 8 * (v44 >> 6))) == 0)
      {
        v46 = 0;
        v47 = (63 - v43) >> 6;
        v31 = v57;
        while (++v45 != v47 || (v46 & 1) == 0)
        {
          v48 = v45 == v47;
          if (v45 == v47)
          {
            v45 = 0;
          }

          v46 |= v48;
          v49 = *(v30 + 8 * v45);
          if (v49 != -1)
          {
            v32 = __clz(__rbit64(~v49)) + (v45 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v32 = __clz(__rbit64((-1 << v44) & ~*(v30 + 8 * (v44 >> 6)))) | v44 & 0x7FFFFFFFFFFFFFC0;
      v31 = v57;
LABEL_9:
      *(v30 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      (*v58)((*(v23 + 48) + v59 * v32), v31, v60);
      result = sub_25E981140(v61, *(v23 + 56) + v40 * v32, v62);
      ++*(v23 + 16);
      v21 = v53;
    }

    v34 = v24;
    while (1)
    {
      v24 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v24 >= v29)
      {
        break;
      }

      v35 = v25[v24];
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v28 = (v35 - 1) & v35;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v9 = v51;
      goto LABEL_36;
    }

    v50 = 1 << *(v21 + 32);
    v9 = v51;
    if (v50 >= 64)
    {
      bzero(v25, ((v50 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v25 = -1 << v50;
    }

    *(v21 + 16) = 0;
  }

LABEL_36:
  *v9 = v23;
  return result;
}

uint64_t sub_25E97A670(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D748, &qword_25E9D91E8);
  v38 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97A910(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D740, &qword_25E9D91E0);
  v40 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97ABE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D750, &qword_25E9D91F0);
  v39 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      if (v39)
      {
        v26 = *(v5 + 56) + 288 * v22;
        v40 = *(v26 + 8);
        v41 = *v26;
        v44 = *(v26 + 16);
        v27 = *(v26 + 20);
        v42 = *(v26 + 24);
        v43 = *(v26 + 40);
        v46 = *(v26 + 56);
        v45 = *(v26 + 64);
        v47 = *(v26 + 80);
        v48 = *(v26 + 96);
        v49 = *(v26 + 112);
        v50 = *(v26 + 128);
        v51 = *(v26 + 144);
        v52 = *(v26 + 160);
        v53 = *(v26 + 176);
        v54 = *(v26 + 192);
        v55 = *(v26 + 208);
        v56 = *(v26 + 224);
        v59 = *(v26 + 272);
        v57 = *(v26 + 240);
        v58 = *(v26 + 256);
      }

      else
      {
        memcpy(__dst, (*(v5 + 56) + 288 * v22), sizeof(__dst));
        v58 = __dst[16];
        v59 = __dst[17];
        v56 = __dst[14];
        v57 = __dst[15];
        v54 = __dst[12];
        v55 = __dst[13];
        v52 = __dst[10];
        v53 = __dst[11];
        v50 = __dst[8];
        v51 = __dst[9];
        v48 = __dst[6];
        v49 = __dst[7];
        v47 = __dst[5];
        v45 = __dst[4];
        v46 = BYTE8(__dst[3]);
        v42 = *(&__dst[1] + 8);
        v43 = *(&__dst[2] + 8);
        v44 = __dst[1];
        v27 = BYTE4(__dst[1]);
        v40 = *(&__dst[0] + 1);
        v41 = *&__dst[0];

        sub_25E981038(__dst, v60);
      }

      v28 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      LOBYTE(__dst[0]) = v27;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 288 * v16;
      *v18 = v41;
      *(v18 + 8) = v40;
      *(v18 + 16) = v44;
      *(v18 + 20) = v27;
      *(v18 + 40) = v43;
      *(v18 + 24) = v42;
      *(v18 + 56) = v46;
      *(v18 + 64) = v45;
      *(v18 + 80) = v47;
      *(v18 + 96) = v48;
      *(v18 + 112) = v49;
      *(v18 + 128) = v50;
      *(v18 + 144) = v51;
      *(v18 + 160) = v52;
      *(v18 + 176) = v53;
      *(v18 + 192) = v54;
      *(v18 + 208) = v55;
      *(v18 + 224) = v56;
      *(v18 + 240) = v57;
      *(v18 + 256) = v58;
      *(v18 + 272) = v59;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97B044(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D8, &qword_25E9D9190);
  v38 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97B300(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D0, &qword_25E9D9188);
  v35 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      memcpy(__src, (*(v5 + 56) + 360 * v21), sizeof(__src));
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
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
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = memcpy((*(v8 + 56) + 360 * v16), __src, 0x168uLL);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97B5C0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D728, &qword_25E9D91C8);
  v48 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v47 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 240 * v22);
      if (v48)
      {
        v75 = v26[11];
        v76 = v26[12];
        v77 = v26[13];
        v78 = v26[14];
        v71 = v26[7];
        v72 = v26[8];
        v73 = v26[9];
        v74 = v26[10];
        v67 = v26[3];
        v68 = v26[4];
        v69 = v26[5];
        v70 = v26[6];
        v64 = *v26;
        v65 = v26[1];
        v66 = v26[2];
      }

      else
      {
        v28 = v26[1];
        v27 = v26[2];
        v49 = *v26;
        v50 = v28;
        v51 = v27;
        v29 = v26[6];
        v31 = v26[3];
        v30 = v26[4];
        v54 = v26[5];
        v55 = v29;
        v52 = v31;
        v53 = v30;
        v32 = v26[10];
        v34 = v26[7];
        v33 = v26[8];
        v58 = v26[9];
        v59 = v32;
        v56 = v34;
        v57 = v33;
        v35 = v26[14];
        v37 = v26[11];
        v36 = v26[12];
        v62 = v26[13];
        v63 = v35;
        v60 = v37;
        v61 = v36;

        sub_25E980FDC(&v49, &v64);
        v76 = v61;
        v77 = v62;
        v78 = v63;
        v72 = v57;
        v73 = v58;
        v74 = v59;
        v75 = v60;
        v68 = v53;
        v69 = v54;
        v70 = v55;
        v71 = v56;
        v64 = v49;
        v65 = v50;
        v66 = v51;
        v67 = v52;
      }

      v38 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v39 = -1 << *(v8 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v15 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v15 + 8 * v41);
          if (v45 != -1)
          {
            v16 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v40) & ~*(v15 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 240 * v16);
      v18[11] = v75;
      v18[12] = v76;
      v18[13] = v77;
      v18[14] = v78;
      v18[7] = v71;
      v18[8] = v72;
      v18[9] = v73;
      v18[10] = v74;
      v18[3] = v67;
      v18[4] = v68;
      v18[5] = v69;
      v18[6] = v70;
      *v18 = v64;
      v18[1] = v65;
      v18[2] = v66;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v47;
      goto LABEL_36;
    }

    v46 = 1 << *(v5 + 32);
    v3 = v47;
    if (v46 >= 64)
    {
      bzero((v5 + 64), ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v46;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97BA08(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_25E9D82B0();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 4 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 4 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_25E97BCA0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A8, &qword_25E9D9168);
  v39 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 232 * v22);
      v52 = v27[12];
      v53 = v27[13];
      v54 = *(v27 + 28);
      v48 = v27[8];
      v49 = v27[9];
      v50 = v27[10];
      v51 = v27[11];
      v44 = v27[4];
      v45 = v27[5];
      v46 = v27[6];
      v47 = v27[7];
      v40 = *v27;
      v41 = v27[1];
      v42 = v27[2];
      v43 = v27[3];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v8 + 56) + 232 * v16;
      *(v18 + 192) = v52;
      *(v18 + 208) = v53;
      *(v18 + 224) = v54;
      *(v18 + 128) = v48;
      *(v18 + 144) = v49;
      *(v18 + 160) = v50;
      *(v18 + 176) = v51;
      *(v18 + 64) = v44;
      *(v18 + 80) = v45;
      *(v18 + 96) = v46;
      *(v18 + 112) = v47;
      *v18 = v40;
      *(v18 + 16) = v41;
      *(v18 + 32) = v42;
      *(v18 + 48) = v43;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97BFCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A0, &qword_25E9D9160);
  v37 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 32 * v22);
      v38 = v26[1];
      v39 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      v27 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v39;
      v18[1] = v38;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25E97C278(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D700, &qword_25E9D91B0);
  v36 = a2;
  result = sub_25E9D82B0();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25E980EA8(v25, v37);
      }

      else
      {
        sub_25E980E4C(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25E9D8390();
      sub_25E9D8010();
      result = sub_25E9D83C0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25E980EA8(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

char *sub_25E97C530(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 304 * v3);
        v19 = (v18 + 304 * v6);
        if (v3 != v6 || result >= v19 + 304)
        {
          result = memmove(result, v19, 0x130uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25E97C6E4(int64_t a1, uint64_t a2)
{
  v4 = sub_25E9D77F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = sub_25E9D8200();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_25E981094(&qword_27FD0D798);
      v24 = sub_25E9D7F60();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for PnRPlanResolutionRecord() - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E97CA14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97CBC4(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 288 * v3);
        v19 = (v18 + 288 * v6);
        if (v3 != v6 || result >= v19 + 288)
        {
          result = memmove(result, v19, 0x120uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97CD78(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 360 * v3);
        v19 = (v18 + 360 * v6);
        if (v3 != v6 || result >= v19 + 360)
        {
          result = memmove(result, v19, 0x168uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97CF2C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 240 * v3);
        v19 = (v18 + 240 * v6);
        if (v3 != v6 || result >= v19 + 240)
        {
          result = memmove(result, v19, 0xF0uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E97D0E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_25E97D290(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v13 = sub_25E9D83C0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        result = (v18 + 232 * v3);
        v19 = (v18 + 232 * v6);
        if (v3 != v6 || result >= v19 + 232)
        {
          result = memmove(result, v19, 0xE8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25E97D444(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25E9D8200() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25E9D8390();

      sub_25E9D8010();
      v14 = sub_25E9D83C0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25E97D5F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D730, &qword_25E9D91D0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97D76C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D760, &qword_25E9D9200);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v23 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_25E97F4EC(__dst, v24))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v21 = 304 * v16;
      memcpy(__dst, (*(v2 + 56) + 304 * v16), 0x130uLL);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      memcpy((*(v4 + 56) + v21), __dst, 0x130uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_25E97D964()
{
  v1 = v0;
  v35 = sub_25E9D77F0();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C0, &qword_25E9D9250);
  v4 = *v0;
  v5 = sub_25E9D82A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v4;
    v16 = v6;
    if (v14)
    {
      do
      {
        v17 = __clz(__rbit64(v14));
        v38 = (v14 - 1) & v14;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v4 + 48) + v22, v35);
        v20 *= 16;
        v25 = *(v4 + 56) + v20;
        v26 = *v25;
        v27 = *(v25 + 8);
        result = (*(v21 + 32))(*(v16 + 48) + v22, v24, v23);
        v28 = *(v16 + 56) + v20;
        *v28 = v26;
        *(v28 + 8) = v27;
        v4 = v33;
        v14 = v38;
      }

      while (v38);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v36;
        goto LABEL_18;
      }

      v19 = *(v30 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_25E97DBF0()
{
  v1 = v0;
  v35 = sub_25E9D77F0();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7A8, &qword_25E9D9238);
  v4 = *v0;
  v5 = sub_25E9D82A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v30 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v36 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v37 + 16;
    v31 = v4 + 64;
    for (i = v37 + 32; v13; v28[1] = v29)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v37;
      v20 = *(v37 + 72) * v18;
      v21 = v34;
      v22 = v35;
      (*(v37 + 16))(v34, *(v4 + 48) + v20, v35);
      v18 *= 32;
      v23 = (*(v4 + 56) + v18);
      v24 = v36;
      v25 = *(v36 + 48);
      v26 = *(v19 + 32);
      v27 = *v23;
      v38 = v23[1];
      v39 = v27;
      result = v26(v25 + v20, v21, v22);
      v28 = (*(v24 + 56) + v18);
      v29 = v38;
      *v28 = v39;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v30;
        v6 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_25E97DEAC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v49 = a4;
  v7 = v4;
  v8 = a1(0);
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v39 - v10;
  v46 = sub_25E9D77F0();
  v51 = *(v46 - 8);
  v11 = *(v51 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v13 = *v4;
  v14 = sub_25E9D82A0();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v40 = v7;
    v41 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v50 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = v50;
    v42 = v51 + 32;
    v43 = v51 + 16;
    v44 = v13;
    v26 = v51;
    v27 = v49;
    if (v23)
    {
      do
      {
        v28 = __clz(__rbit64(v23));
        v52 = (v23 - 1) & v23;
LABEL_14:
        v31 = v28 | (v19 << 6);
        v32 = *(v26 + 72) * v31;
        v34 = v45;
        v33 = v46;
        (*(v26 + 16))(v45, *(v13 + 48) + v32, v46);
        v35 = *(v13 + 56);
        v36 = v47;
        v37 = *(v48 + 72) * v31;
        sub_25E9810D8(v35 + v37, v47, v27);
        (*(v26 + 32))(*(v25 + 48) + v32, v34, v33);
        v38 = v36;
        v13 = v44;
        result = sub_25E981140(v38, *(v25 + 56) + v37, v27);
        v23 = v52;
      }

      while (v52);
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v7 = v40;
        v15 = v50;
        goto LABEL_18;
      }

      v30 = *(v41 + 8 * v19);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v52 = (v30 - 1) & v30;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v15;
  }

  return result;
}

void *sub_25E97E1C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D748, &qword_25E9D91E8);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97E32C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D740, &qword_25E9D91E0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97E4B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D750, &qword_25E9D91F0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 288 * v17;
        memcpy(__dst, (*(v2 + 56) + 288 * v17), 0x120uLL);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        memcpy((*(v4 + 56) + v22), __dst, 0x120uLL);

        result = sub_25E981038(__dst, v25);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_25E97E674()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D8, &qword_25E9D9190);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97E7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D0, &qword_25E9D9188);
  v22 = v0;
  v1 = *v0;
  v2 = sub_25E9D82A0();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v1 + 64);
    for (i = (v8 + 63) >> 6; v10; result = )
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v15 = v12 | (v7 << 6);
      v16 = 16 * v15;
      v17 = (*(v1 + 48) + 16 * v15);
      v19 = *v17;
      v18 = v17[1];
      v20 = 360 * v15;
      memcpy(__dst, (*(v1 + 56) + 360 * v15), sizeof(__dst));
      v21 = (*(v3 + 48) + v16);
      *v21 = v19;
      v21[1] = v18;
      memcpy((*(v3 + 56) + v20), __dst, 0x168uLL);
    }

    v13 = v7;
    while (1)
    {
      v7 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v7 >= i)
      {
        goto LABEL_19;
      }

      v14 = *(v1 + 64 + 8 * v7);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v22 = v3;
  }

  return result;
}

void *sub_25E97E99C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D728, &qword_25E9D91C8);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 240;
        v23 = *(v19 + v17 + 96);
        v25 = *(v19 + v17 + 48);
        v24 = *(v19 + v17 + 64);
        v53 = *(v19 + v17 + 80);
        v54 = v23;
        v51 = v25;
        v52 = v24;
        v26 = *(v19 + v17 + 160);
        v28 = *(v19 + v17 + 112);
        v27 = *(v19 + v17 + 128);
        v57 = *(v19 + v17 + 144);
        v58 = v26;
        v55 = v28;
        v56 = v27;
        v29 = *(v19 + v17 + 224);
        v31 = *(v19 + v17 + 176);
        v30 = *(v19 + v17 + 192);
        v61 = *(v19 + v17 + 208);
        v62 = v29;
        v59 = v31;
        v60 = v30;
        v33 = *(v19 + v17 + 16);
        v32 = *(v19 + v17 + 32);
        v48 = *(v19 + v17);
        v49 = v33;
        v50 = v32;
        v34 = (*(v4 + 48) + v18);
        *v34 = v22;
        v34[1] = v21;
        v35 = (*(v4 + 56) + v17);
        v36 = v48;
        v37 = v50;
        v35[1] = v49;
        v35[2] = v37;
        *v35 = v36;
        v38 = v51;
        v39 = v52;
        v40 = v54;
        v35[5] = v53;
        v35[6] = v40;
        v35[3] = v38;
        v35[4] = v39;
        v41 = v55;
        v42 = v56;
        v43 = v58;
        v35[9] = v57;
        v35[10] = v43;
        v35[7] = v41;
        v35[8] = v42;
        v44 = v59;
        v45 = v60;
        v46 = v62;
        v35[13] = v61;
        v35[14] = v46;
        v35[11] = v44;
        v35[12] = v45;

        result = sub_25E980FDC(&v48, &v47);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97EBB4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25E9D82A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        LODWORD(v20) = *(*(v4 + 56) + 4 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
        *(*(v6 + 56) + 4 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25E97ED0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A8, &qword_25E9D9168);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = )
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 232;
      v21 = *(v2 + 56) + v16;
      v36 = *(v21 + 192);
      v37 = *(v21 + 208);
      v38 = *(v21 + 224);
      v32 = *(v21 + 128);
      v33 = *(v21 + 144);
      v34 = *(v21 + 160);
      v35 = *(v21 + 176);
      v28 = *(v21 + 64);
      v29 = *(v21 + 80);
      v30 = *(v21 + 96);
      v31 = *(v21 + 112);
      v24 = *v21;
      v25 = *(v21 + 16);
      v26 = *(v21 + 32);
      v27 = *(v21 + 48);
      v22 = (*(v4 + 48) + v17);
      *v22 = v20;
      v22[1] = v19;
      v23 = *(v4 + 56) + v16;
      *(v23 + 192) = v36;
      *(v23 + 208) = v37;
      *(v23 + 224) = v38;
      *(v23 + 128) = v32;
      *(v23 + 144) = v33;
      *(v23 + 160) = v34;
      *(v23 + 176) = v35;
      *(v23 + 64) = v28;
      *(v23 + 80) = v29;
      *(v23 + 96) = v30;
      *(v23 + 112) = v31;
      *v23 = v24;
      *(v23 + 16) = v25;
      *(v23 + 32) = v26;
      *(v23 + 48) = v27;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97EF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A0, &qword_25E9D9160);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25E97F080()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D700, &qword_25E9D91B0);
  v2 = *v0;
  v3 = sub_25E9D82A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25E980E4C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25E980EA8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_25E97F224(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7E0, &qword_25E9D9268);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25E978F5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97F328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D730, &qword_25E9D91D0);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_25E97F43C(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_25E9D90B0;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  return result;
}

uint64_t sub_25E97F474(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

unint64_t sub_25E97F624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D0, &qword_25E9D9260);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C0, &qword_25E9D9250);
    v8 = sub_25E9D82C0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v10, v6, &qword_27FD0D7D0, &qword_25E9D9260);
      result = sub_25E978FD4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25E9D77F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = *(v9 + 1);
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97F81C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7C8, &qword_25E9D9258);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7B8, &qword_25E9D9248);
    v8 = sub_25E9D82C0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v10, v6, &qword_27FD0D7C8, &qword_25E9D9258);
      result = sub_25E978FD4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25E9D77F0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PRRequestContextMetadata();
      result = sub_25E981140(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PRRequestContextMetadata);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97FA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7B0, &qword_25E9D9240);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7A8, &qword_25E9D9238);
    v8 = sub_25E9D82C0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v10, v6, &qword_27FD0D7B0, &qword_25E9D9240);
      result = sub_25E978FD4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25E9D77F0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 32 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97FC3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D740, &qword_25E9D91E0);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97FD50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D748, &qword_25E9D91E8);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97FE4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D8, &qword_25E9D9190);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E97FF78(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 6)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_25E978F5C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 4 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25E98006C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6A0, &qword_25E9D9160);
    v3 = sub_25E9D82C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v14 = i[1];
      v15 = *i;

      result = sub_25E978F5C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      *v10 = v15;
      v10[1] = v14;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25E98017C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D760, &qword_25E9D9200);
  v3 = sub_25E9D82C0();

  memcpy(__dst, a1 + 4, 0x140uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_25E9811A8(__dst, v15, &qword_27FD0D768, &qword_25E9D9208);
  v6 = sub_25E978F5C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 44);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 304 * v6), &__dst[2], 0x130uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x140uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_25E9811A8(__dst, v15, &qword_27FD0D768, &qword_25E9D9208);
    v6 = sub_25E978F5C(v4, v5);
    v8 += 320;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E980308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D788, &qword_25E9D9228);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D790, &qword_25E9D9230);
    v8 = sub_25E9D82C0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25E9811A8(v10, v6, &qword_27FD0D788, &qword_25E9D9228);
      result = sub_25E978FD4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25E9D77F0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PnRPlanResolutionRecord();
      result = sub_25E981140(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for PnRPlanResolutionRecord);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_25E980524(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D750, &qword_25E9D91F0);
  v3 = sub_25E9D82C0();

  memcpy(__dst, a1 + 4, 0x130uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_25E9811A8(__dst, v15, &qword_27FD0D780, &qword_25E9D9220);
  v6 = sub_25E978F5C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 42);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 288 * v6), &__dst[2], 0x120uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x130uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_25E9811A8(__dst, v15, &qword_27FD0D780, &qword_25E9D9220);
    v6 = sub_25E978F5C(v4, v5);
    v8 += 304;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_25E9806B0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D6D0, &qword_25E9D9188);
  v3 = sub_25E9D82C0();

  memcpy(__dst, a1 + 4, 0x178uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_25E9811A8(__dst, v15, &qword_27FD0D778, &qword_25E9D9218);
  v6 = sub_25E978F5C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = (a1 + 51);
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 360 * v6), &__dst[2], 0x168uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x178uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_25E9811A8(__dst, v15, &qword_27FD0D778, &qword_25E9D9218);
    v6 = sub_25E978F5C(v4, v5);
    v8 += 376;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25E98083C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D728, &qword_25E9D91C8);
  v3 = sub_25E9D82C0();

  v4 = *(a1 + 240);
  v56 = *(a1 + 224);
  v57 = v4;
  v5 = *(a1 + 272);
  v58 = *(a1 + 256);
  v59 = v5;
  v6 = *(a1 + 176);
  v52 = *(a1 + 160);
  v53 = v6;
  v7 = *(a1 + 208);
  v54 = *(a1 + 192);
  v55 = v7;
  v8 = *(a1 + 112);
  v48 = *(a1 + 96);
  v49 = v8;
  v9 = *(a1 + 144);
  v50 = *(a1 + 128);
  v51 = v9;
  v10 = *(a1 + 48);
  v44 = *(a1 + 32);
  v45 = v10;
  v11 = *(a1 + 80);
  v46 = *(a1 + 64);
  v47 = v11;
  v13 = *(&v44 + 1);
  v12 = v44;
  sub_25E9811A8(&v44, v43, &qword_27FD0D770, &qword_25E9D9210);
  result = sub_25E978F5C(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v16 = (a1 + 288);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v3[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = (v3[7] + 240 * result);
    v19 = v45;
    v20 = v47;
    v18[1] = v46;
    v18[2] = v20;
    *v18 = v19;
    v21 = v48;
    v22 = v49;
    v23 = v51;
    v18[5] = v50;
    v18[6] = v23;
    v18[3] = v21;
    v18[4] = v22;
    v24 = v52;
    v25 = v53;
    v26 = v55;
    v18[9] = v54;
    v18[10] = v26;
    v18[7] = v24;
    v18[8] = v25;
    v27 = v56;
    v28 = v57;
    v29 = v59;
    v18[13] = v58;
    v18[14] = v29;
    v18[11] = v27;
    v18[12] = v28;
    v30 = v3[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      break;
    }

    v3[2] = v32;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v33 = v16 + 16;
    v34 = v16[13];
    v56 = v16[12];
    v57 = v34;
    v35 = v16[15];
    v58 = v16[14];
    v59 = v35;
    v36 = v16[9];
    v52 = v16[8];
    v53 = v36;
    v37 = v16[11];
    v54 = v16[10];
    v55 = v37;
    v38 = v16[5];
    v48 = v16[4];
    v49 = v38;
    v39 = v16[7];
    v50 = v16[6];
    v51 = v39;
    v40 = v16[1];
    v44 = *v16;
    v45 = v40;
    v41 = v16[3];
    v46 = v16[2];
    v47 = v41;
    v13 = *(&v44 + 1);
    v12 = v44;
    sub_25E9811A8(&v44, v43, &qword_27FD0D770, &qword_25E9D9210);
    result = sub_25E978F5C(v12, v13);
    v16 = v33;
    if (v42)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}