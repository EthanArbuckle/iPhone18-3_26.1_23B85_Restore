uint64_t static AppResolutionEventSending.onEventSent(_:)(uint64_t a1, uint64_t a2)
{
  if (qword_280FDA7B8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = off_280FDA7C0;
  v4 = *(off_280FDA7C0 + 2);
  v5 = *(off_280FDA7C0 + 3);
  *(off_280FDA7C0 + 2) = a1;
  v3[3] = a2;

  sub_2661D07E4(v4);
}

uint64_t sub_2661D07E4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double App.__allocating_init(appIdentifier:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for App();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  result = 0.0;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0u;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return result;
}

uint64_t App.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

double App.__allocating_init(appIdentifier:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for App();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  result = 0.0;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  return result;
}

uint64_t App.appIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t App.systemExtensionBundleId.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2661D0988()
{
  v1 = 4999502;
  sub_2661E66EC();
  MEMORY[0x26677DA30](0x203A444928707041, 0xE800000000000000);
  if (v0[3])
  {
    v2 = v0[2];
    v3 = v0[3];
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 4999502;
  }

  MEMORY[0x26677DA30](v2, v3);

  MEMORY[0x26677DA30](0xD00000000000001BLL, 0x80000002661E7C90);
  if (v0[7])
  {
    v4 = v0[6];
    v5 = v0[7];
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 4999502;
  }

  MEMORY[0x26677DA30](v4, v5);

  MEMORY[0x26677DA30](0x6E6967756C70202CLL, 0xEA0000000000203ALL);
  if (v0[5])
  {
    v1 = v0[4];
    v6 = v0[5];
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  MEMORY[0x26677DA30](v1, v6);

  MEMORY[0x26677DA30](41, 0xE100000000000000);
  return 0;
}

uint64_t App.pluginIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t App.systemUIExtensionBundleId.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void *App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[6] = a3;
  v8[7] = a4;
  v8[8] = a5;
  v8[9] = a6;
  v8[4] = a7;
  v8[5] = a8;
  return v8;
}

void *sub_2661D0B78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2661D0B98()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2661D0BD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2661D0C10()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2661D0C60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2661D0C9C()
{
  v1 = sub_2661E62BC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2661D0D38()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2661D0D70()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2661D0DB8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2661D0DF8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2661D0E44()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s17SiriAppResolution19AppResolutionResultOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_2661D8464(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

void *_s17SiriAppResolution19AppResolutionResultO24AppResolutionResultErrorOwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_2661D0F00()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2661D0F48()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2661D0F90()
{
  v1 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  v2 = *(v0 + 72);

  v3 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2661D0FE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2661D1028()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 64);

  v2 = *(v0 + 72);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

void *_s17SiriAppResolution15AppSupportQueryV32AllowedSiriAuthorizationStatusesOwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *_s17SiriAppResolution15AppSupportQueryV32AllowedSiriAuthorizationStatusesOwca_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *_s17SiriAppResolution15AppSupportQueryV32AllowedSiriAuthorizationStatusesOwta_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_2661D1128(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2661D1140(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_2661D1164()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2661D119C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *_s17SiriAppResolution17AppSupportServiceC19SystemAppRecordDataVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t sub_2661D1204()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2661D1248()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2661D1290()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2661D12C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for AppResolutionStateProvider(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t static App.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(a1 + 16) == *(a2 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2661E67EC();
    }
  }

  return result;
}

uint64_t sub_2661D1364()
{
  if (!*(v0 + 24))
  {
    return sub_2661E688C();
  }

  v1 = *(v0 + 16);
  sub_2661E688C();

  return sub_2661E643C();
}

void *App.__allocating_init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  result[9] = a6;
  result[4] = a7;
  result[5] = a8;
  return result;
}

void *App.deinit()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return v0;
}

uint64_t sub_2661D1490()
{
  sub_2661E686C();
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  return sub_2661E689C();
}

uint64_t sub_2661D1508(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 24);
  v5 = *(v3 + 24);
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*(v2 + 16) == *(v3 + 16) && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2661E67EC();
    }
  }

  return result;
}

uint64_t sub_2661D1554()
{
  v1 = *v0;
  sub_2661E686C();
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  return sub_2661E689C();
}

uint64_t sub_2661D15D0()
{
  if (!*(*v0 + 24))
  {
    return sub_2661E688C();
  }

  v1 = *(*v0 + 16);
  sub_2661E688C();

  return sub_2661E643C();
}

uint64_t sub_2661D164C()
{
  sub_2661E686C();
  if (*(*v0 + 24))
  {
    v1 = *(*v0 + 16);
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  return sub_2661E689C();
}

uint64_t sub_2661D16C4()
{
  v1 = *v0;
  sub_2661E686C();
  MEMORY[0x26677DE60](v1);
  return sub_2661E689C();
}

uint64_t sub_2661D1738()
{
  v1 = *v0;
  sub_2661E686C();
  MEMORY[0x26677DE60](v1);
  return sub_2661E689C();
}

void sub_2661D18BC(uint64_t a1, unint64_t *a2)
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

uint64_t sub_2661D1954(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t AppDisplayInfo.displayName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriAppResolution::AppDisplayInfo __swiftcall AppDisplayInfo.init(displayName:isFirstParty:)(Swift::String displayName, Swift::Bool isFirstParty)
{
  *v2 = displayName;
  *(v2 + 16) = isFirstParty;
  result.displayName = displayName;
  result.isFirstParty = isFirstParty;
  return result;
}

uint64_t sub_2661D19F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for AppDisplayInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for AppDisplayInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppDisplayInfo(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppDisplayInfo(uint64_t result, int a2, int a3)
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

uint64_t sub_2661D1B70()
{
  v8 = sub_2661E65BC();
  v0 = *(v8 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20]();
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_2661E65AC() - 8) + 64);
  MEMORY[0x28223BE20]();
  v5 = *(*(sub_2661E635C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7[1] = sub_2661D51F0();
  sub_2661E633C();
  v9 = MEMORY[0x277D84F90];
  sub_2661D523C(&qword_280066BD8, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BE0, &qword_2661E70D8);
  sub_2661D5284(&qword_280066BE8, &qword_280066BE0, &qword_2661E70D8);
  sub_2661E662C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v8);
  result = sub_2661E65EC();
  qword_280066B88 = result;
  return result;
}

void *static AppFinder.listApps(intentID:siriAuthorizationRestriction:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v74 = sub_2661E62FC();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  (MEMORY[0x28223BE20])();
  v70 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_2661E637C();
  v71 = *(v72 - 8);
  v8 = *(v71 + 64);
  v9 = (MEMORY[0x28223BE20])();
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v66 - v11;
  v12 = sub_2661E632C();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_2661E62BC();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = *(v80 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v18 = qword_280FDAE48;
  sub_2661E62AC();
  sub_2661E660C();
  v77 = v18;
  v79 = v17;
  sub_2661E629C();
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v19 = sub_2661E62DC();
  v20 = __swift_project_value_buffer(v19, qword_280FDAE30);

  v21 = sub_2661E62CC();
  v22 = sub_2661E655C();

  v23 = os_log_type_enabled(v21, v22);
  v75 = v20;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    aBlock[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_2661D3710(a1, a2, aBlock);
    _os_log_impl(&dword_2661CF000, v21, v22, "[AppFinder] Searching for Apps Plugins supporting Intent '%s'", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26677E2B0](v25, -1, -1);
    MEMORY[0x26677E2B0](v24, -1, -1);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  v27 = v26 + 16;
  v28 = swift_allocObject();
  v28[2] = v26;
  v28[3] = a1;
  v78 = a1;
  v28[4] = a2;
  v87 = sub_2661D3CF0;
  v88 = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2661D2918;
  v86 = &block_descriptor;
  _Block_copy(aBlock);
  v83 = MEMORY[0x277D84F90];
  sub_2661D523C(&qword_280066B90, MEMORY[0x277D85198]);

  v76 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066B98, &unk_2661E7050);
  sub_2661D5284(&qword_280066BA0, &qword_280066B98, &unk_2661E7050);
  sub_2661E662C();
  v29 = sub_2661E63AC();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_2661E639C();

  if (qword_280066B70 != -1)
  {
    swift_once();
  }

  v82 = v32;
  sub_2661E65DC();
  v33 = *(a3 + 16);
  v67 = v27;
  if (v33)
  {
    v34 = sub_2661D3608(v33, 0);
    v35 = sub_2661D4080(aBlock, v34 + 4, v33, a3);

    sub_2661D4180();
    if (v35 == v33)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v34 = 0;
LABEL_13:
  type metadata accessor for AppSupportService();
  inited = swift_initStaticObject();
  v38 = *(inited + 32);
  v37 = *(inited + 40);

  v39 = v78;
  v38(aBlock, v78, a2);
  v40 = __swift_project_boxed_opaque_existential_1(aBlock, v86);
  MEMORY[0x28223BE20](v40);
  *(&v66 - 4) = v39;
  *(&v66 - 3) = a2;
  *(&v66 - 2) = v34;
  *(&v66 - 1) = 0;
  type metadata accessor for App();
  v41 = sub_2661E646C();

  __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
  v42 = sub_2661D449C(v41);

  v84 = v42;
  v43 = v68;
  sub_2661E636C();
  v44 = v70;
  *v70 = 250;
  v45 = v73;
  v46 = v74;
  (*(v73 + 104))(v44, *MEMORY[0x277D85178], v74);
  v47 = v69;
  MEMORY[0x26677D9A0](v43, v44);
  (*(v45 + 8))(v44, v46);
  v48 = *(v71 + 8);
  v49 = v43;
  v50 = v72;
  v48(v49, v72);
  sub_2661E638C();
  v48(v47, v50);
  if (sub_2661E630C())
  {
    v51 = sub_2661E62CC();
    v52 = sub_2661E657C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "[AppFinder] Unexpected timeout waiting for prefetching of [App]";
LABEL_20:
      _os_log_impl(&dword_2661CF000, v51, v52, v54, v53, 2u);
      MEMORY[0x26677E2B0](v53, -1, -1);
    }
  }

  else
  {
    v55 = v67;
    swift_beginAccess();
    v56 = *v55;
    if (v56)
    {

      goto LABEL_22;
    }

    v51 = sub_2661E62CC();
    v52 = sub_2661E657C();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = "[AppFinder] Unexpected nil for prefetched [App]";
      goto LABEL_20;
    }
  }

  v56 = sub_2661E0A9C(v39, a2);
LABEL_22:

  sub_2661D4608(v56, &v84, v39, a2);

  v57 = sub_2661E62CC();
  v58 = sub_2661E655C();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v83 = v60;
    *v59 = 134218242;
    swift_beginAccess();
    if ((v84 & 0xC000000000000001) != 0)
    {

      v61 = sub_2661E665C();
    }

    else
    {
      v61 = *(v84 + 16);
    }

    *(v59 + 4) = v61;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_2661D3710(v39, a2, &v83);
    _os_log_impl(&dword_2661CF000, v57, v58, "Found %ld Apps supporting Intent '%s'", v59, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x26677E2B0](v60, -1, -1);
    MEMORY[0x26677E2B0](v59, -1, -1);
  }

  swift_beginAccess();

  v63 = sub_2661D3DA4(v62);

  swift_bridgeObjectRelease_n();

  sub_2661E65FC();
  v64 = v79;
  sub_2661E629C();
  (*(v80 + 8))(v64, v81);
  return v63;
}

uint64_t sub_2661D2894(uint64_t a1, uint64_t a2, unint64_t a3)
{
  type metadata accessor for AppSupportService();
  swift_initStaticObject();
  v6 = sub_2661E0A9C(a2, a3);
  swift_beginAccess();
  v7 = *(a1 + 16);
  *(a1 + 16) = v6;
}

uint64_t sub_2661D2918(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2661D295C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_2661E668C();

    return v2 & 1;
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 40);
    sub_2661E686C();
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    sub_2661E688C();
    if (v8)
    {
      sub_2661E643C();
    }

    v9 = sub_2661E689C();
    v10 = a2;
    v11 = a2 + 56;
    v12 = -1 << *(a2 + 32);
    v13 = v9 & ~v12;
    if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      v15 = *(v10 + 48);
      do
      {
        v16 = *(v15 + 8 * v13);
        v17 = *(v16 + 24);
        if (v17)
        {
          if (v8)
          {
            v18 = *(v16 + 16) == v7 && v17 == v8;
            if (v18 || (sub_2661E67EC() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v8)
        {
          return 1;
        }

        v13 = (v13 + 1) & v14;
      }

      while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }
  }

  return 0;
}

uint64_t static AppFinder.listApps(intentID:siriAuthorizationRestriction:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - v12;
  v14 = sub_2661E652C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a4;
  v15[5] = a5;
  v15[6] = a1;
  v15[7] = a2;
  v15[8] = a3;

  sub_2661D2F08(0, 0, v13, &unk_2661E7068, v15);
}

uint64_t sub_2661D2C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a4;
  v8[3] = a5;
  v12 = swift_task_alloc();
  v8[4] = v12;
  *v12 = v8;
  v12[1] = sub_2661D2CCC;
  v13 = MEMORY[0x277D84FA0];

  return sub_2661D4B08(a6, a7, a8, v13);
}

uint64_t sub_2661D2CCC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2661D2DCC, 0, 0);
}

uint64_t sub_2661D2DCC()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(*(v0 + 40));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t static AppFinder.listApps(intentID:siriAuthorizationRestriction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2661D52D8;
  v8 = MEMORY[0x277D84FA0];

  return sub_2661D4B08(a1, a2, a3, v8);
}

uint64_t sub_2661D2F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_2661D4F4C(a3, v27 - v11);
  v13 = sub_2661E652C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2661D4FBC(v12);
  }

  else
  {
    sub_2661E651C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2661E64EC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2661E642C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_2661D4FBC(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2661D4FBC(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static AppFinder.listApps(intentID:siriAuthorizationRestriction:extensionPointIdentifierRestriction:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2661D3294;

  return sub_2661D4B08(a1, a2, a3, a4);
}

uint64_t sub_2661D3294(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2661D3390(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2661D3488;

  return v7(a1);
}

uint64_t sub_2661D3488()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_2661D3580(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BC0, &qword_2661E70C8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_2661D3608(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BC8, &qword_2661E70D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_2661D368C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BB0, &qword_2661E70A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2661D3710(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2661D37DC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2661D5194(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2661D37DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2661D38E8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2661E670C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2661D38E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_2661D3934(a1, a2);
  sub_2661D3A64(&unk_2877D4098);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_2661D3934(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2661D3B50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2661E670C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2661E645C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2661D3B50(v10, 0);
        result = sub_2661E66DC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2661D3A64(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_2661D3BC4(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2661D3B50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BB8, &qword_2661E70C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2661D3BC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BB8, &qword_2661E70C0);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_2661D3DA4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_2661E665C();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_2661D3580(v2, 0);

    v1 = sub_2661D3E54(&v5, v3 + 4, v2, v1);
    sub_2661D4180();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_2661D3E54(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v19 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  sub_2661E664C();
  type metadata accessor for App();
  sub_2661D523C(&qword_280FDA8A8, type metadata accessor for App);
  result = sub_2661E654C();
  v4 = v26;
  v8 = v27;
  v9 = v28;
  v10 = v29;
  v11 = v30;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = v9;
  v24 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_2661E667C())
      {
        goto LABEL_30;
      }

      type metadata accessor for App();
      swift_dynamicCast();
      result = v25;
      if (!v25)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));

    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v22 = v10 + 1;
  }

  else
  {
    v22 = v13;
  }

  v10 = v22 - 1;
LABEL_30:
  v9 = v23;
  v7 = v24;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

void *sub_2661D4080(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2661D41CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_2661E00E0(a1, v2[4], v2[5], a2);
}

void *sub_2661D41EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2661D4344(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2661D449C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_2661E665C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for App();
  v5 = sub_2661D523C(&qword_280FDA8A8, type metadata accessor for App);
  result = MEMORY[0x26677DB20](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26677DCE0](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_2661E299C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_2661E665C();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2661D4608(unint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2661E665C())
  {
    v8 = 0;
    v27 = v6 & 0xFFFFFFFFFFFFFF8;
    v28 = v6 & 0xC000000000000001;
    v23 = v6;
    v24 = a2;
    while (v28)
    {
      v9 = MEMORY[0x26677DCE0](v8, v6);
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v11 = *a2;

      v12 = sub_2661D295C(v9, v11);

      if (v12)
      {
        if (qword_280FDA6F0 != -1)
        {
          swift_once();
        }

        v13 = sub_2661E62DC();
        __swift_project_value_buffer(v13, qword_280FDAE30);

        v14 = sub_2661E62CC();
        v15 = sub_2661E655C();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v29 = v26;
          *v16 = 136315394;
          *(v16 + 4) = sub_2661D3710(a3, a4, &v29);
          *(v16 + 12) = 2080;
          v17 = sub_2661D0988();
          v19 = i;
          v20 = a4;
          v21 = sub_2661D3710(v17, v18, &v29);

          *(v16 + 14) = v21;
          a4 = v20;
          i = v19;
          _os_log_impl(&dword_2661CF000, v14, v15, "[AppFinder] Duplicate App supporting Intent '%s' : %s", v16, 0x16u);
          swift_arrayDestroy();
          a2 = v24;
          MEMORY[0x26677E2B0](v26, -1, -1);
          v22 = v16;
          v6 = v23;
          MEMORY[0x26677E2B0](v22, -1, -1);
        }
      }

      else
      {

        sub_2661E299C(&v29, v9);
      }

      ++v8;
      if (v10 == i)
      {
        return;
      }
    }

    if (v8 >= *(v27 + 16))
    {
      goto LABEL_18;
    }

    v9 = *(v6 + 8 * v8 + 32);

    v10 = v8 + 1;
    if (!__OFADD__(v8, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2661D4938(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2661D4A14;

  return sub_2661D2C00(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2661D4A14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2661D4B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_2661D4B2C, 0, 0);
}

uint64_t sub_2661D4B2C()
{
  v15 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2661D3608(*(v1 + 16), 0);
    v4 = sub_2661D4080(&v14, v3 + 4, v2, v1);

    sub_2661D4180();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = 0;
LABEL_5:
  v13 = v3;
  v5 = v0[9];
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_2661D368C(*(v5 + 16), 0);
    v8 = sub_2661D41EC(&v14, v7 + 4, v6, v5);

    sub_2661D4180();
    if (v8 == v6)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v7 = 0;
LABEL_9:
  v10 = v0[6];
  v9 = v0[7];
  type metadata accessor for AppSupportService();
  swift_initStaticObject();
  v0[2] = v10;
  v0[3] = v9;
  v0[4] = v13;
  v0[5] = v7;

  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_2661D4D00;

  return sub_2661DEA40(v0 + 2);
}

uint64_t sub_2661D4D00(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v10 = *v1;

  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];

  v8 = *(v10 + 8);

  return v8(a1);
}

uint64_t getEnumTagSinglePayload for AppFinder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppFinder(_WORD *result, int a2, int a3)
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

uint64_t sub_2661D4F4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2661D4FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661D5024(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2661D52DC;

  return sub_2661D3390(a1, v5);
}

uint64_t sub_2661D50DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2661D4A14;

  return sub_2661D3390(a1, v5);
}

uint64_t sub_2661D5194(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2661D51F0()
{
  result = qword_280066BD0;
  if (!qword_280066BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280066BD0);
  }

  return result;
}

uint64_t sub_2661D523C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2661D5284(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2661D53D8()
{
  v0 = sub_2661E62DC();
  __swift_allocate_value_buffer(v0, qword_280FDAE30);
  __swift_project_value_buffer(v0, qword_280FDAE30);
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v1 = qword_280FDAE48;
  return sub_2661E62EC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_2661D54C8()
{
  sub_2661D5530();
  result = sub_2661E661C();
  qword_280FDAE48 = result;
  return result;
}

unint64_t sub_2661D5530()
{
  result = qword_280FDA6C0;
  if (!qword_280FDA6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280FDA6C0);
  }

  return result;
}

void *sub_2661D557C()
{
  type metadata accessor for AppPolicyHandler();
  swift_allocObject();
  result = sub_2661D55B8();
  qword_280067920 = result;
  return result;
}

void *sub_2661D55B8()
{
  v1 = v0;
  v2 = sub_2661E65BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2661E65AC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2661E635C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v1[2] = 0;
  sub_2661D7F34(0, &qword_280066BD0, 0x277D85C78);
  sub_2661E634C();
  sub_2661E659C();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v2);
  v11 = sub_2661E65EC();
  v12 = MEMORY[0x277D84F98];
  v1[3] = v11;
  v1[4] = v12;
  v13 = objc_allocWithZone(MEMORY[0x277D04BD8]);
  aBlock[4] = sub_2661D7F7C;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2661D2918;
  aBlock[3] = &block_descriptor_32;
  v14 = _Block_copy(aBlock);

  v15 = [v13 initWithPolicyChangeHandler_];
  _Block_release(v14);
  v16 = v1[2];
  v1[2] = v15;

  return v1;
}

uint64_t sub_2661D5840(uint64_t a1)
{
  v2 = sub_2661E632C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  v8 = *(a1 + 24);
  sub_2661E631C();
  v9 = swift_allocObject();
  swift_weakInit();
  v13 = v9;
  v14 = sub_2661D7F84;
  v15 = v7;
  sub_2661E65CC();
  v10 = *(v3 + 8);

  v10(v6, v2);

  swift_beginAccess();
  sub_2661D6AD4(*(v7 + 16));
}

BOOL sub_2661D59F8(uint64_t a1, unint64_t a2)
{
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v4 = sub_2661E62DC();
  __swift_project_value_buffer(v4, qword_280FDAE30);

  v5 = sub_2661E62CC();
  v6 = sub_2661E656C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2661D3710(a1, a2, &v24);
    _os_log_impl(&dword_2661CF000, v5, v6, "AppPolicyHandler isAllowedByScreenTime called for : %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26677E2B0](v8, -1, -1);
    MEMORY[0x26677E2B0](v7, -1, -1);
  }

  v9 = sub_2661D645C(a1, a2);
  v11 = v10;

  v12 = sub_2661E62CC();
  v13 = sub_2661E656C();

  v14 = os_log_type_enabled(v12, v13);
  if ((v11 & 1) == 0)
  {
    if (!v14)
    {
LABEL_24:

      return v9 == 0;
    }

    v18 = 0x63696C6F50464D44;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_2661D3710(a1, a2, &v24);
    *(v19 + 12) = 2080;
    if (v9 <= 1)
    {
      if (v9)
      {
        if (v9 != 1)
        {
          goto LABEL_21;
        }

        v22 = 0xEE006E7261772E79;
      }

      else
      {
        v22 = 0xEC0000004B4F2E79;
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          v22 = 0xED00006B73612E79;
          break;
        case 3:
          v22 = 0x80000002661E7EC0;
          v18 = 0xD000000000000014;
          break;
        case 4:
          v18 = 0xD000000000000011;
          v21 = "DMFPolicy.blocked";
LABEL_22:
          v22 = (v21 - 32) | 0x8000000000000000;
          break;
        default:
LABEL_21:
          v18 = 0xD000000000000011;
          v21 = "DMFPolicy.UNKNOWN";
          goto LABEL_22;
      }
    }

    v23 = sub_2661D3710(v18, v22, &v24);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_2661CF000, v12, v13, "AppPolicyHandler DMFPolicy : %s == %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26677E2B0](v20, -1, -1);
    MEMORY[0x26677E2B0](v19, -1, -1);
    goto LABEL_24;
  }

  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2661D3710(a1, a2, &v24);
    _os_log_impl(&dword_2661CF000, v12, v13, "AppPolicyHandler isAllowedByScreenTime, policy undefined for app. Default to enabled. %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26677E2B0](v16, -1, -1);
    MEMORY[0x26677E2B0](v15, -1, -1);
  }

  return 1;
}

unint64_t DMFPolicy.debugDescription.getter(uint64_t a1)
{
  result = 0x63696C6F50464D44;
  if (a1 <= 1)
  {
    if (a1 > 1)
    {
      return 0xD000000000000011;
    }
  }

  else if (a1 != 2)
  {
    if (a1 == 3)
    {
      return 0xD000000000000014;
    }

    if (a1 == 4)
    {
      return 0xD000000000000011;
    }

    return 0xD000000000000011;
  }

  return result;
}

uint64_t sub_2661D5E9C(uint64_t a1, void (*a2)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    a2(v4 + 32);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_2661D5F30(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v22 = sub_2661E632C();
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v10 = sub_2661E62DC();
  __swift_project_value_buffer(v10, qword_280FDAE30);

  v11 = sub_2661E62CC();
  v12 = sub_2661E656C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_2661D3710(a1, a2, &v23);
    _os_log_impl(&dword_2661CF000, v11, v12, "AppPolicyHandler register, %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26677E2B0](v14, -1, -1);
    MEMORY[0x26677E2B0](v13, -1, -1);
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *(v3 + 24);

  sub_2661E631C();
  v17 = swift_allocObject();
  v18 = swift_weakInit();
  MEMORY[0x28223BE20](v18);
  *(&v21 - 4) = v17;
  *(&v21 - 3) = sub_2661D7F2C;
  *(&v21 - 2) = v15;
  sub_2661E65CC();
  (*(v6 + 8))(v9, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BB0, &qword_2661E70A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2661E7100;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;

  sub_2661D6AD4(v19);
}

void sub_2661D623C(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (*(*a1 + 16))
  {
    v6 = *a1;

    sub_2661DCFFC(a2, a3);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v9 = sub_2661E62DC();
  __swift_project_value_buffer(v9, qword_280FDAE30);

  v10 = sub_2661E62CC();
  v11 = sub_2661E656C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136315394;
    if (v8)
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (v8)
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    v16 = sub_2661D3710(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_2661D3710(a2, a3, &v19);
    _os_log_impl(&dword_2661CF000, v10, v11, "AppPolicyHandler isRegistered, %s %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26677E2B0](v13, -1, -1);
    MEMORY[0x26677E2B0](v12, -1, -1);
  }

  if ((v8 & 1) == 0)
  {
    v17 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *a1;
    sub_2661D7C10(0, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v19;
  }
}

uint64_t sub_2661D645C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2661E632C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2661D5F30(a1, a2);
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v11 = sub_2661E62DC();
  __swift_project_value_buffer(v11, qword_280FDAE30);

  v12 = sub_2661E62CC();
  v13 = sub_2661E656C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_2661D3710(a1, a2, v25);
    _os_log_impl(&dword_2661CF000, v12, v13, "AppPolicyHandler getDMFPolicy, %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x26677E2B0](v15, -1, -1);
    MEMORY[0x26677E2B0](v14, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 1;
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a1;
  v17[4] = a2;
  v18 = *(v3 + 24);

  sub_2661E631C();
  v19 = swift_allocObject();
  v20 = swift_weakInit();
  MEMORY[0x28223BE20](v20);
  v25[-4] = v19;
  v25[-3] = sub_2661D7F20;
  v25[-2] = v17;
  sub_2661E65CC();
  v21 = *(v7 + 8);

  v21(v10, v6);

  swift_beginAccess();
  v22 = *(v16 + 16);
  v23 = *(v16 + 24);

  return v22;
}

void sub_2661D6784(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (*(*a1 + 16) && (v6 = sub_2661DCFFC(a3, a4), (v7 & 1) != 0))
  {
    v8 = 0;
    v9 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  swift_beginAccess();
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v10 = sub_2661E62DC();
  __swift_project_value_buffer(v10, qword_280FDAE30);

  v11 = sub_2661E62CC();
  v12 = sub_2661E656C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22[0] = v14;
    *v13 = 136315138;
    swift_beginAccess();
    v15 = *(a2 + 24);
    v22[1] = *(a2 + 16);
    v23 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280066C00, &unk_2661E7190);
    v16 = sub_2661E641C();
    v18 = sub_2661D3710(v16, v17, v22);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2661CF000, v11, v12, "AppPolicyHandler getDMFPolicy, %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x26677E2B0](v14, -1, -1);
    MEMORY[0x26677E2B0](v13, -1, -1);
  }

  swift_beginAccess();
  if (*(a2 + 24) == 1)
  {
    v19 = sub_2661E62CC();
    v20 = sub_2661E656C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2661CF000, v19, v20, "AppPolicyHandler checkPolicy, app policy undefined", v21, 2u);
      MEMORY[0x26677E2B0](v21, -1, -1);
    }
  }
}

uint64_t sub_2661D69F8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = sub_2661D368C(*(*a1 + 16), 0);
  v6 = sub_2661D4344(&v9, v5 + 4, v4, v3);

  sub_2661D4180();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:
    v5 = MEMORY[0x277D84F90];
  }

  swift_beginAccess();
  v7 = *(a2 + 16);
  *(a2 + 16) = v5;
}

uint64_t sub_2661D6AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2661E62BC();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  if (qword_280FDA6F8 != -1)
  {
    v32 = v8;
    swift_once();
    v8 = v32;
    v2 = v1;
  }

  v33 = v8;
  v11 = qword_280FDAE48;
  sub_2661E62AC();
  sub_2661E660C();
  sub_2661E629C();
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v12 = sub_2661E62DC();
  __swift_project_value_buffer(v12, qword_280FDAE30);

  v13 = sub_2661E62CC();
  v14 = sub_2661E656C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v2;
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = *(a1 + 16);

    _os_log_impl(&dword_2661CF000, v13, v14, "AppPolicyHandler refreshApps : %ld", v16, 0xCu);
    v17 = v16;
    v2 = v15;
    v7 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x26677E2B0](v17, -1, -1);
  }

  else
  {
  }

  v18 = v33;
  if (!*(a1 + 16))
  {
    v27 = sub_2661E62CC();
    v28 = sub_2661E656C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "AppPolicyHandler refreshApps, no apps registered";
LABEL_15:
      _os_log_impl(&dword_2661CF000, v27, v28, v30, v29, 2u);
      MEMORY[0x26677E2B0](v29, -1, -1);
    }

LABEL_16:

    sub_2661E65FC();
    sub_2661E629C();
    v22 = v34;
    return (*(v22 + 8))(v10, v18);
  }

  v19 = *(v2 + 16);
  if (!v19)
  {
    v27 = sub_2661E62CC();
    v28 = sub_2661E657C();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = "AppPolicyHandler appPolicyMonitor not initialized";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v20 = v19;
  v21 = sub_2661E649C();
  v22 = v34;
  (*(v34 + 16))(v7, v10, v18);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v24 = v2;
  v25 = swift_allocObject();
  (*(v22 + 32))(v25 + v23, v7, v18);
  *(v25 + ((v5 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_2661D7B24;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2661D79FC;
  aBlock[3] = &block_descriptor_0;
  v26 = _Block_copy(aBlock);

  [v20 requestPoliciesForBundleIdentifiers:v21 completionHandler:v26];
  _Block_release(v26);

  return (*(v22 + 8))(v10, v18);
}

void sub_2661D6F74(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2661E632C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v12 = sub_2661E62DC();
  v13 = __swift_project_value_buffer(v12, qword_280FDAE30);
  v14 = sub_2661E62CC();
  v15 = sub_2661E656C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35[1] = v13;
    v17 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2661CF000, v14, v15, "AppPolicyHandler requestPolicies completion returned", v16, 2u);
    MEMORY[0x26677E2B0](v17, -1, -1);
  }

  if (a2)
  {
    MEMORY[0x26677E170](a2);
    v18 = sub_2661E62CC();
    v19 = sub_2661E657C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_2661E681C();
      v24 = sub_2661D3710(v22, v23, &v36);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_2661CF000, v18, v19, "AppPolicyHandler refreshApps appPolicyMonitor requestPolicies has an error : %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26677E2B0](v21, -1, -1);
      MEMORY[0x26677E2B0](v20, -1, -1);
    }

    sub_2661E65FC();
    if (qword_280FDA6F8 != -1)
    {
      swift_once();
    }

    sub_2661E629C();
  }

  else
  {
    if (a1)
    {
      v25 = swift_allocObject();
      *(v25 + 16) = a1;
      v26 = *(a4 + 24);

      sub_2661E631C();
      v27 = swift_allocObject();
      v28 = swift_weakInit();
      MEMORY[0x28223BE20](v28);
      v35[-4] = v27;
      v35[-3] = sub_2661D7BE8;
      v35[-2] = v25;
      sub_2661E65CC();
      (*(v8 + 8))(v11, v7);

      v29 = sub_2661E62CC();
      v30 = sub_2661E656C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_2661CF000, v29, v30, "AppPolicyHandler refreshApps complete", v31, 2u);
        MEMORY[0x26677E2B0](v31, -1, -1);
      }

      sub_2661E65FC();
      if (qword_280FDA6F8 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v32 = sub_2661E62CC();
      v33 = sub_2661E657C();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2661CF000, v32, v33, "AppPolicyHandler refreshApps policies not set", v34, 2u);
        MEMORY[0x26677E2B0](v34, -1, -1);
      }

      sub_2661E65FC();
      if (qword_280FDA6F8 != -1)
      {
        swift_once();
      }
    }

    sub_2661E629C();
  }
}

uint64_t sub_2661D755C(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v42 = v2;
  v43 = v8;
  v44 = a1;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = __clz(__rbit64(v7)) | (v12 << 6);
    v14 = (*(v2 + 48) + 16 * v13);
    v15 = v14[1];
    v47 = *v14;
    v16 = *(*(v2 + 56) + 8 * v13);
    swift_bridgeObjectRetain_n();
    v45 = v16;
    v46 = sub_2661D7D74(v45);
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v17 = sub_2661E62DC();
    __swift_project_value_buffer(v17, qword_280FDAE30);

    v18 = sub_2661E62CC();
    v19 = sub_2661E656C();

    if (!os_log_type_enabled(v18, v19))
    {

      goto LABEL_27;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v48 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2661D3710(v47, v15, &v48);
    *(v20 + 12) = 2080;
    if (v46 <= 1)
    {
      v22 = 0x63696C6F50464D44;
      v23 = 0xEC0000004B4F2E79;
      if (v46)
      {
        if (v46 != 1)
        {
LABEL_25:
          v22 = 0xD000000000000011;
          v23 = 0x80000002661E7E80;
          goto LABEL_26;
        }

        v23 = 0xEE006E7261772E79;
      }
    }

    else
    {
      switch(v46)
      {
        case 2:
          v22 = 0x63696C6F50464D44;
          v23 = 0xED00006B73612E79;
          break;
        case 3:
          v22 = 0xD000000000000014;
          v23 = 0x80000002661E7EC0;
          break;
        case 4:
          v22 = 0xD000000000000011;
          v23 = 0x80000002661E7EA0;
          break;
        default:
          goto LABEL_25;
      }
    }

LABEL_26:
    v24 = sub_2661D3710(v22, v23, &v48);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_2661CF000, v18, v19, "AppPolicyHandler refreshApps, %s to %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26677E2B0](v21, -1, -1);
    MEMORY[0x26677E2B0](v20, -1, -1);

    v2 = v42;
LABEL_27:
    v25 = *v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *v44;
    v27 = v48;
    v28 = sub_2661DCFFC(v47, v15);
    v30 = *(v27 + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_2661E680C();
      __break(1u);
      return result;
    }

    v34 = v29;
    if (*(v27 + 24) >= v33)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v28;
        sub_2661DD92C();
        v28 = v40;
      }
    }

    else
    {
      sub_2661DD074(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_2661DCFFC(v47, v15);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_42;
      }
    }

    v7 &= v7 - 1;
    if (v34)
    {
      v10 = v28;

      v11 = v48;
      *(v48[7] + 8 * v10) = v46;

      *v44 = v11;
    }

    else
    {
      v36 = v48;
      v48[(v28 >> 6) + 8] |= 1 << v28;
      v37 = (v36[6] + 16 * v28);
      *v37 = v47;
      v37[1] = v15;
      *(v36[7] + 8 * v28) = v46;

      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_41;
      }

      v36[2] = v39;
      *v44 = v36;
    }

    v9 = v12;
    v8 = v43;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v12 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_2661D79FC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_2661D7F34(0, &qword_280066BF0, 0x277CCABB0);
    v4 = sub_2661E63DC();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2661D7AB0()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void sub_2661D7B24(uint64_t a1, void *a2)
{
  v5 = *(sub_2661E62BC() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2661D6F74(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2661D7C10(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_2661DCFFC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2661DD074(v16, a4 & 1);
      v20 = *v5;
      result = sub_2661DCFFC(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_2661E680C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2661DD92C();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

id sub_2661D7D74(void *a1)
{
  result = [a1 integerValue];
  if (result >= 5)
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v3 = sub_2661E62DC();
    __swift_project_value_buffer(v3, qword_280FDAE30);
    v4 = a1;
    v5 = sub_2661E62CC();
    v6 = sub_2661E657C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_2661CF000, v5, v6, "DMFPolicy parse unknown number %@, default to OK", v7, 0xCu);
      sub_2661D7EB8(v8);
      MEMORY[0x26677E2B0](v8, -1, -1);
      MEMORY[0x26677E2B0](v7, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2661D7EB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BF8, &qword_2661E7188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661D7F34(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2661D7FAC()
{
  type metadata accessor for AppResolutionEventSending();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  off_280FDA7C0 = result;
  return result;
}

uint64_t AppResolutionEventSending.deinit()
{
  v1 = *(v0 + 24);
  sub_2661D07E4(*(v0 + 16));
  return v0;
}

uint64_t AppResolutionEventSending.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  sub_2661D07E4(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_2661D8070(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *(a3 + 9);
  if (qword_280FDA7B8 != -1)
  {
    swift_once();
  }

  v10 = *(off_280FDA7C0 + 2);
  if (v10)
  {
    v11 = *(off_280FDA7C0 + 3);
    v12 = qword_280FDA6F0;

    if (v9)
    {
      if (v12 != -1)
      {
        swift_once();
      }

      v13 = sub_2661E62DC();
      __swift_project_value_buffer(v13, qword_280FDAE30);
      v14 = sub_2661E62CC();
      v15 = sub_2661E656C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = a2;
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2661CF000, v14, v15, "AppSelectionService: failed to resolved app", v17, 2u);
        v18 = v17;
        a2 = v16;
        MEMORY[0x26677E2B0](v18, -1, -1);
      }

      v38 = 0x8000000000000000;
      v39 = 3;
      v19 = a1;
    }

    else
    {
      osloga = a1;
      if (v12 != -1)
      {
        swift_once();
      }

      v23 = sub_2661E62DC();
      __swift_project_value_buffer(v23, qword_280FDAE30);
      sub_2661D8464(v7, v8);
      v24 = sub_2661E62CC();
      v25 = sub_2661E656C();
      sub_2661D849C(v7, v8, 0);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v33 = a2;
        v27 = swift_slowAlloc();
        v37 = v27;
        v38 = v7;
        *v26 = 136315138;
        v39 = v8;
        sub_2661D8464(v7, v8);
        v28 = AppResolutionResult.description.getter();
        v34 = a4;
        v30 = v29;
        sub_2661D84A8(v38, v8);
        v31 = sub_2661D3710(v28, v30, &v37);
        a4 = v34;

        *(v26 + 4) = v31;
        _os_log_impl(&dword_2661CF000, v24, v25, "AppSelectionService: resolved app with result=%s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        v32 = v27;
        a2 = v33;
        MEMORY[0x26677E2B0](v32, -1, -1);
        MEMORY[0x26677E2B0](v26, -1, -1);
      }

      v38 = v7;
      v39 = v8;
      v19 = osloga;
    }

    v10(v19, a2, &v38, a4);
    sub_2661D07E4(v10);
  }

  else
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v20 = sub_2661E62DC();
    __swift_project_value_buffer(v20, qword_280FDAE30);
    oslog = sub_2661E62CC();
    v21 = sub_2661E656C();
    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2661CF000, oslog, v21, "The event handler for app resolution didn't get initialized or dropping the event.", v22, 2u);
      MEMORY[0x26677E2B0](v22, -1, -1);
    }
  }
}

uint64_t sub_2661D8464(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

void sub_2661D849C(id a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_2661D84A8(a1, a2);
  }
}

uint64_t sub_2661D84A8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

uint64_t AppResolutionService.__allocating_init()()
{
  v0 = swift_allocObject();
  AppResolutionService.init()();
  return v0;
}

void *AppResolutionService.init()()
{
  if (qword_280066B78 != -1)
  {
    swift_once();
  }

  v1 = qword_280067920;
  v0[5] = type metadata accessor for AppPolicyHandler();
  v0[6] = &off_2877D4398;
  v0[2] = v1;

  return v0;
}

uint64_t sub_2661D85A0(uint64_t a1)
{
  sub_2661D8B0C(v1 + 16, v8);
  v3 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    v5 = 0xEA00000000007070;
    v4 = 0x416E776F6E6B6E75;
  }

  v6 = *v3;

  LOBYTE(v6) = sub_2661D59F8(v4, v5);

  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6 & 1;
}

uint64_t AppResolutionService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void sub_2661D86E0(void *a1, void (*a2)(id *))
{
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  sub_2661E655C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066C88, &qword_2661E7270);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2661E7100;
  v19 = 0;
  v20 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066C90, &qword_2661E7278);
  sub_2661E677C();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2661D8B70();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_2661E628C();

  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  if (v8 || (v9 = a1[3], v10 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v9), (v8 = (*(v10 + 16))(v9, v10)) != 0))
  {
    v11 = v8;
    sub_2661E655C();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_2661E7100;
    v13 = sub_2661D0988();
    *(v12 + 56) = v4;
    *(v12 + 64) = v5;
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    sub_2661E628C();

    if (sub_2661D85A0(v11))
    {
      v19 = v11;
      LOWORD(v20) = 2;
    }

    else
    {
      sub_2661E656C();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_2661E7100;
      v16 = sub_2661D0988();
      *(v15 + 56) = v4;
      *(v15 + 64) = v5;
      *(v15 + 32) = v16;
      *(v15 + 40) = v17;
      sub_2661E628C();

      v19 = (v11 | 0x4000000000000000);
      LOWORD(v20) = 3;
    }

    a2(&v19);

    sub_2661D849C(v19, v20, SBYTE1(v20));
  }

  else
  {
    sub_2661E655C();
    sub_2661E628C();
    v19 = 0x8000000000000000;
    LOWORD(v20) = 3;
    a2(&v19);
  }
}

uint64_t sub_2661D8B0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2661D8B70()
{
  result = qword_280066C98;
  if (!qword_280066C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066C98);
  }

  return result;
}

uint64_t static AppResolutionConfirmation.from(appConfirmationState:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (!a2)
  {
    v10 = 3;
    goto LABEL_16;
  }

  v5 = result;
  v6 = *MEMORY[0x277D48500];
  if (sub_2661E640C() == v5 && v7 == a2)
  {
    v10 = 0;
    goto LABEL_15;
  }

  v9 = sub_2661E67EC();

  v10 = 0;
  if (v9)
  {
    goto LABEL_16;
  }

  v11 = *MEMORY[0x277D48508];
  if (sub_2661E640C() == v5 && v12 == a2)
  {
    v10 = 1;
    goto LABEL_15;
  }

  v14 = sub_2661E67EC();

  if (v14)
  {
    v10 = 1;
    goto LABEL_16;
  }

  v15 = *MEMORY[0x277D48510];
  v10 = 2;
  if (sub_2661E640C() == v5 && v16 == a2)
  {
LABEL_15:

    goto LABEL_16;
  }

  v18 = sub_2661E67EC();

  if (v18)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

LABEL_16:
  *a3 = v10;
  return result;
}

SiriAppResolution::AppResolutionConfirmation_optional __swiftcall AppResolutionConfirmation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2661E67DC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AppResolutionConfirmation.rawValue.getter()
{
  v1 = 0x656D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x64657463656A6572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C65636E6163;
  }
}

uint64_t sub_2661D8E14(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D7269666E6F63;
  v4 = 0xE800000000000000;
  if (v2 == 1)
  {
    v4 = 0xE900000000000064;
  }

  else
  {
    v3 = 0x64657463656A6572;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x656D7269666E6F63;
  v8 = 0xE800000000000000;
  if (*a2 == 1)
  {
    v8 = 0xE900000000000064;
  }

  else
  {
    v7 = 0x64657463656A6572;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2661E67EC();
  }

  return v11 & 1;
}

uint64_t sub_2661D8F10()
{
  v1 = *v0;
  sub_2661E686C();
  sub_2661E643C();

  return sub_2661E689C();
}

uint64_t sub_2661D8FB4()
{
  *v0;
  *v0;
  sub_2661E643C();
}

uint64_t sub_2661D9044()
{
  v1 = *v0;
  sub_2661E686C();
  sub_2661E643C();

  return sub_2661E689C();
}

void sub_2661D90F0(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = *v1;
  v4 = 0x656D7269666E6F63;
  v5 = 0xE800000000000000;
  if (v3 == 1)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v4 = 0x64657463656A6572;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t AppResolutionStateProvider.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  sub_2661E66EC();
  MEMORY[0x26677DA30](0xD000000000000021, 0x80000002661E8130);
  if (v2)
  {
    v5 = sub_2661D0988();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
    v5 = 4999502;
  }

  MEMORY[0x26677DA30](v5, v7);

  MEMORY[0x26677DA30](0xD000000000000010, 0x80000002661E8160);
  if (v1)
  {
    v8 = sub_2661D0988();
    v10 = v9;
  }

  else
  {
    v10 = 0xE300000000000000;
    v8 = 4999502;
  }

  v11 = 0xE900000000000064;
  v12 = 0x656C6C65636E6163;
  MEMORY[0x26677DA30](v8, v10);

  MEMORY[0x26677DA30](0xD000000000000018, 0x80000002661E8180);
  v13 = 0xE800000000000000;
  v14 = 0x64657463656A6572;
  if (v3 != 2)
  {
    v14 = 4999502;
    v13 = 0xE300000000000000;
  }

  v15 = 0x656D7269666E6F63;
  if (!v3)
  {
    v15 = 0x656C6C65636E6163;
  }

  if (v3 <= 1)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  if (v3 <= 1)
  {
    v17 = 0xE900000000000064;
  }

  else
  {
    v17 = v13;
  }

  MEMORY[0x26677DA30](v16, v17);

  MEMORY[0x26677DA30](0xD000000000000017, 0x80000002661E81A0);
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v11 = 0xE800000000000000;
      v12 = 0x64657463656A6572;
    }

    else
    {
      v11 = 0xE300000000000000;
      v12 = 4999502;
    }
  }

  else if (v4)
  {
    v12 = 0x656D7269666E6F63;
  }

  MEMORY[0x26677DA30](v12, v11);

  MEMORY[0x26677DA30](41, 0xE100000000000000);
  return 0;
}

void *AppResolutionStateProvider.aceAppSelectionState.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t AppResolutionStateProvider.init(appSelectionState:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    v6 = 0;
    v10 = 0;
    goto LABEL_20;
  }

  v4 = [a1 requestedApp];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 bundleId];

    if (v6)
    {
      v7 = sub_2661E640C();
      v9 = v8;

      type metadata accessor for App();
      v6 = swift_allocObject();
      *(v6 + 2) = v7;
      *(v6 + 3) = v9;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *(v6 + 4) = 0u;
    }
  }

  else
  {
    v6 = 0;
  }

  v11 = [v2 eligibleApps];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  sub_2661D9ACC();
  v13 = sub_2661E64AC();

  if (!(v13 >> 62))
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  result = sub_2661E665C();
  if (!result)
  {
LABEL_16:

LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

LABEL_10:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x26677DCE0](0, v13);
LABEL_13:
    v16 = v15;

    v10 = [v16 bundleId];

    if (v10)
    {
      v17 = sub_2661E640C();
      v19 = v18;

      type metadata accessor for App();
      v10 = swift_allocObject();
      *(v10 + 2) = v17;
      *(v10 + 3) = v19;
      *(v10 + 2) = 0u;
      *(v10 + 3) = 0u;
      *(v10 + 4) = 0u;
    }

LABEL_18:
    a1 = [v2 appConfirmationState];
    if (a1)
    {
      v20 = a1;
      v21 = sub_2661E640C();
      v23 = v22;

      a1 = v21;
      goto LABEL_21;
    }

LABEL_20:
    v23 = 0;
LABEL_21:
    static AppResolutionConfirmation.from(appConfirmationState:)(a1, v23, &v32);

    v24 = v32;
    if (v2)
    {
      v25 = [v2 appCorrectionState];
      if (v25)
      {
        v26 = v25;
        v27 = sub_2661E640C();
        v29 = v28;

        v25 = v27;
LABEL_26:
        static AppResolutionConfirmation.from(appConfirmationState:)(v25, v29, &v31);

        v30 = v31;
        *a2 = v6;
        *(a2 + 8) = v10;
        *(a2 + 16) = v24;
        *(a2 + 17) = v30;
        *(a2 + 24) = v2;
        return result;
      }
    }

    else
    {
      v25 = 0;
    }

    v29 = 0;
    goto LABEL_26;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_2661D96AC()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

unint64_t AppSelectionResponse.description.getter()
{
  v1 = 0xD00000000000001CLL;
  v2 = 0xD00000000000001FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000025;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t AppSelectionResponse.hashValue.getter()
{
  v1 = *v0;
  sub_2661E686C();
  MEMORY[0x26677DE60](v1);
  return sub_2661E689C();
}

uint64_t sub_2661D97E8()
{
  v1 = *v0;
  sub_2661E686C();
  MEMORY[0x26677DE60](v1);
  return sub_2661E689C();
}

uint64_t sub_2661D985C()
{
  v1 = *v0;
  sub_2661E686C();
  MEMORY[0x26677DE60](v1);
  return sub_2661E689C();
}

unint64_t sub_2661D98A0()
{
  v1 = 0xD00000000000001CLL;
  v2 = 0xD00000000000001FLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000025;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (*v0 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

void *AppResolutionStateProviding.previousSelectionResponse.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = (*(a2 + 24))(&v7 + 1);
  if (BYTE1(v7) > 1u)
  {
    if (BYTE1(v7) == 2)
    {
      *a3 = 1;
      return result;
    }
  }

  else if (BYTE1(v7))
  {
    *a3 = 2;
    return result;
  }

  result = (*(a2 + 32))(&v7, a1, a2);
  if (v7 == 1)
  {
    *a3 = 3;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t AppResolutionStateProviding.needsRunAppResolution(preResolvedApp:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AppResolutionStateProviding.previousSelectionResponse.getter(a2, a3, &v16);
  if (v16 == 3 || a1 == 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = (*(a3 + 8))(a2, a3);
    if (v8)
    {
      v9 = *(v8 + 24);
      v10 = *(a1 + 24);
      if (v9)
      {
        if (v10)
        {
          if (*(v8 + 16) == *(a1 + 16) && v9 == v10)
          {

            v14 = 1;
          }

          else
          {
            v12 = *(v8 + 16);
            v13 = *(a1 + 24);
            v14 = sub_2661E67EC();
          }
        }

        else
        {

          v14 = 0;
        }
      }

      else
      {

        v14 = v10 == 0;
      }

      v7 = v14 ^ 1;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7 & 1;
}

unint64_t sub_2661D9ACC()
{
  result = qword_280066CA0;
  if (!qword_280066CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280066CA0);
  }

  return result;
}

unint64_t sub_2661D9B1C()
{
  result = qword_280066CA8;
  if (!qword_280066CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066CA8);
  }

  return result;
}

unint64_t sub_2661D9B74()
{
  result = qword_280066CB0;
  if (!qword_280066CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066CB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppResolutionConfirmation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppResolutionConfirmation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void destroy for AppResolutionStateProvider(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[3];
}

uint64_t initializeWithCopy for AppResolutionStateProvider(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;

  v5 = v4;
  return a1;
}

uint64_t *assignWithCopy for AppResolutionStateProvider(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a1[1];
  a1[1] = a2[1];

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v6 = a1[3];
  v7 = a2[3];
  a1[3] = v7;
  v8 = v7;

  return a1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t *assignWithTake for AppResolutionStateProvider(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 16);
  v6 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppResolutionStateProvider(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppResolutionStateProvider(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppSelectionResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppSelectionResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t DefaultAppSelector.selectAppWithMetadata(intent:fromEligibleApps:_:)(uint64_t a1, unint64_t a2, void (*a3)(unint64_t *, unint64_t))
{

  sub_2661E4B08(a2, v3, a3);
}

uint64_t sub_2661DA180(uint64_t a1, unint64_t a2, void (*a3)(unint64_t *, unint64_t))
{
  v6 = *v3;

  sub_2661E4B08(a2, v6, a3);
}

uint64_t sub_2661DA1E4()
{
  DynamicType = swift_getDynamicType();

  return MEMORY[0x2821FE788](DynamicType, 0);
}

uint64_t sub_2661DA21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v15 + 16))(v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066CB8, &qword_2661E7508);
  if (swift_dynamicCast())
  {
    sub_2661D12C8(v24, v26);
    v17 = v27;
    v18 = v28;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v20 = *(v18 + 8);

    v20(a1, a2, sub_2661DA600, v19, v17, v18);

    return __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else
  {
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_2661DA548(v24);
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    *(v22 + 24) = a4;
    v23 = *(a6 + 8);

    v23(a1, a2, sub_2661DA5B0, v22, a5, a6);
  }
}

unint64_t AppResolutionResult.AppResolutionResultError.debugDescription.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    sub_2661E66EC();

    v4 = 0xD00000000000001CLL;
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    sub_2661E66EC();

    v4 = 0xD000000000000023;
LABEL_5:
    v2 = sub_2661D0988();
    MEMORY[0x26677DA30](v2);

    return v4;
  }

  return 0xD000000000000010;
}

uint64_t sub_2661DA548(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066CC0, &unk_2661E7510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661DA5B0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return v2(&v7, 0);
}

uint64_t sub_2661DA600(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return v2(&v7);
}

uint64_t AppResolutionResult.AppResolutionResultError.hash(into:)()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    if (v2 != 1)
    {
      return MEMORY[0x26677DE60](0);
    }

    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26677DE60](v3);
  if (!*(v1 + 24))
  {
    return sub_2661E688C();
  }

  v4 = *(v1 + 16);
  sub_2661E688C();

  return sub_2661E643C();
}

uint64_t AppResolutionResult.AppResolutionResultError.hashValue.getter()
{
  v1 = *v0;
  sub_2661E686C();
  if (v1 >> 62)
  {
    if (v1 >> 62 != 1)
    {
      MEMORY[0x26677DE60](0);
      return sub_2661E689C();
    }

    v1 &= 0x3FFFFFFFFFFFFFFFuLL;
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26677DE60](v2);
  if (*(v1 + 24))
  {
    v3 = *(v1 + 16);
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  return sub_2661E689C();
}

uint64_t sub_2661DA7B0()
{
  v2 = *v0;
  sub_2661E686C();
  AppResolutionResult.AppResolutionResultError.hash(into:)();
  return sub_2661E689C();
}

uint64_t sub_2661DA800()
{
  v2 = *v0;
  sub_2661E686C();
  AppResolutionResult.AppResolutionResultError.hash(into:)();
  return sub_2661E689C();
}

uint64_t sub_2661DA850(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2661E665C())
  {
    if (a2 >> 62)
    {
      result = sub_2661E665C();
      if (i != result)
      {
        return 0;
      }
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i != result)
      {
        return 0;
      }
    }

    if (!i)
    {
      return 1;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v24 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (i < 0)
    {
      goto LABEL_61;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      break;
    }

    v3 += 32;
    a2 += 32;
    v4 = *(v25 + 16);
    v20 = *(v24 + 16);
    while (v4)
    {
      if (!v20)
      {
        goto LABEL_55;
      }

      v21 = *(*v3 + 24);
      v22 = *(*a2 + 24);
      if (v21)
      {
        if (!v22)
        {
          return 0;
        }

        v23 = *(*v3 + 16) == *(*a2 + 16) && v21 == v22;
        if (!v23 && (sub_2661E67EC() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v22)
      {
        return 0;
      }

      --v20;
      --v4;
      v3 += 8;
      a2 += 8;
      if (!--i)
      {
        return 1;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    ;
  }

  v11 = a2 & 0xC000000000000001;
  for (j = 4; ; ++j)
  {
    v13 = j - 4;
    v14 = j - 3;
    if (__OFADD__(j - 4, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26677DCE0](j - 4, v3);
      v4 = result;
      if (v11)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v4 = *(v3 + 8 * j);

    if (v11)
    {
LABEL_24:
      v15 = MEMORY[0x26677DCE0](j - 4, a2);
      goto LABEL_29;
    }

LABEL_27:
    if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

    v15 = *(a2 + 8 * j);

LABEL_29:
    v16 = *(v4 + 24);
    v17 = *(v15 + 24);
    if (!v16)
    {

      if (v17)
      {
        goto LABEL_51;
      }

      goto LABEL_19;
    }

    if (!v17)
    {

LABEL_51:

      return 0;
    }

    if (*(v4 + 16) == *(v15 + 16) && v16 == v17)
    {

LABEL_19:

      goto LABEL_20;
    }

    v18 = *(v15 + 24);
    v19 = sub_2661E67EC();

    if ((v19 & 1) == 0)
    {
      return 0;
    }

LABEL_20:
    if (v14 == i)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

uint64_t AppResolutionResult.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v6 = 2;
    }

    else
    {
      MEMORY[0x26677DE60](3);
      if (v4 >> 62)
      {
        if (v4 >> 62 != 1)
        {
          return MEMORY[0x26677DE60](0);
        }

        MEMORY[0x26677DE60](2);
        if (*((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18))
        {
          v8 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          sub_2661E688C();
LABEL_16:

          return sub_2661E643C();
        }

        return sub_2661E688C();
      }

      v6 = 1;
    }

LABEL_14:
    MEMORY[0x26677DE60](v6);
    if (*(v4 + 24))
    {
      v9 = *(v4 + 16);
      sub_2661E688C();
      goto LABEL_16;
    }

    return sub_2661E688C();
  }

  if (!v5)
  {
    v6 = 0;
    goto LABEL_14;
  }

  MEMORY[0x26677DE60](1);

  return sub_2661DAD1C(a1, v4);
}

uint64_t AppResolutionResult.hashValue.getter()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_2661E686C();
  AppResolutionResult.hash(into:)(v3);
  return sub_2661E689C();
}

uint64_t sub_2661DAC70()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_2661E686C();
  AppResolutionResult.hash(into:)(v3);
  return sub_2661E689C();
}

uint64_t sub_2661DACC8()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_2661E686C();
  AppResolutionResult.hash(into:)(v3);
  return sub_2661E689C();
}

uint64_t sub_2661DAD1C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v10 = sub_2661E665C();
    MEMORY[0x26677DE60](v10);
    result = sub_2661E665C();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = MEMORY[0x26677DE60](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v4; ++i)
    {
      v7 = MEMORY[0x26677DCE0](i, a2);
      if (*(v7 + 24))
      {
        v6 = *(v7 + 16);
        sub_2661E688C();
        sub_2661E643C();
      }

      else
      {
        sub_2661E688C();
      }

      result = swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = a2 + 32;
    do
    {
      if (*(*v8 + 24))
      {
        v9 = *(*v8 + 16);
        sub_2661E688C();

        sub_2661E643C();
      }

      else
      {
        result = sub_2661E688C();
      }

      v8 += 8;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t _s17SiriAppResolution0bC6ResultO0bcD5ErrorO2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 != 1)
    {
      if (v3 == 0x8000000000000000)
      {

        return 1;
      }

      return 0;
    }

    if (v3 >> 62 != 1)
    {
      return 0;
    }

    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  else if (v3 >> 62)
  {
    return 0;
  }

  v5 = *(v2 + 24);
  v6 = *(v3 + 24);
  if (!v5)
  {
    return !v6;
  }

  if (!v6)
  {
    return 0;
  }

  v7 = *(v2 + 16) == *(v3 + 16) && v5 == v6;
  return v7 || (sub_2661E67EC() & 1) != 0;
}

uint64_t _s17SiriAppResolution0bC6ResultO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 == 2)
      {
        v11 = *(v2 + 24);
        v12 = *(v4 + 24);
        if (!v11)
        {
          sub_2661D8464(v4, 2u);
          sub_2661D8464(v2, 2u);
          sub_2661D84A8(v2, 2u);
          sub_2661D84A8(v4, 2u);
          if (!v12)
          {
            goto LABEL_33;
          }

          goto LABEL_28;
        }

        if (v12)
        {
          if (*(v2 + 16) == *(v4 + 16) && v11 == v12)
          {
            sub_2661D8464(v4, 2u);
            sub_2661D8464(v2, 2u);
            sub_2661D84A8(v2, 2u);
            v20 = v4;
            v21 = 2;
            goto LABEL_38;
          }

          v14 = *(v4 + 24);
          v15 = sub_2661E67EC();
          sub_2661D8464(v4, 2u);
          sub_2661D8464(v2, 2u);
          sub_2661D84A8(v2, 2u);
          sub_2661D84A8(v4, 2u);
          if (v15)
          {
            goto LABEL_33;
          }

LABEL_28:
          v16 = 0;
          return v16 & 1;
        }

        sub_2661D8464(v4, 2u);
        sub_2661D8464(v2, 2u);
        sub_2661D84A8(v2, 2u);
        v17 = v4;
        v18 = 2;
LABEL_27:
        sub_2661D84A8(v17, v18);
        goto LABEL_28;
      }
    }

    else if (v5 == 3)
    {
      v22 = *a2;
      v23 = v2;
      sub_2661D8464(v4, 3u);
      sub_2661D8464(v2, 3u);
      sub_2661D8464(v4, 3u);
      sub_2661D8464(v2, 3u);
      v16 = _s17SiriAppResolution0bC6ResultO0bcD5ErrorO2eeoiySbAE_AEtFZ_0(&v23, &v22);
      sub_2661D84A8(v2, 3u);
      sub_2661D84A8(v4, 3u);
      sub_2661D84A8(v4, 3u);
      sub_2661D84A8(v2, 3u);
      return v16 & 1;
    }

LABEL_26:
    sub_2661D8464(*a2, *(a2 + 8));
    sub_2661D8464(v2, v3);
    sub_2661D84A8(v2, v3);
    v17 = v4;
    v18 = v5;
    goto LABEL_27;
  }

  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      v6 = *(v2 + 24);
      v7 = *(v4 + 24);
      if (!v6)
      {
        sub_2661D8464(v4, 0);
        sub_2661D8464(v2, 0);
        sub_2661D84A8(v2, 0);
        sub_2661D84A8(v4, 0);
        if (!v7)
        {
LABEL_33:
          v16 = 1;
          return v16 & 1;
        }

        goto LABEL_28;
      }

      if (v7)
      {
        if (*(v2 + 16) != *(v4 + 16) || v6 != v7)
        {
          v9 = *(v4 + 24);
          v10 = sub_2661E67EC();
          sub_2661D8464(v4, 0);
          sub_2661D8464(v2, 0);
          sub_2661D84A8(v2, 0);
          sub_2661D84A8(v4, 0);
          if (v10)
          {
            goto LABEL_33;
          }

          goto LABEL_28;
        }

        sub_2661D8464(v4, 0);
        sub_2661D8464(v2, 0);
        sub_2661D84A8(v2, 0);
        v20 = v4;
        v21 = 0;
LABEL_38:
        sub_2661D84A8(v20, v21);
        v16 = 1;
        return v16 & 1;
      }

      sub_2661D8464(v4, 0);
      sub_2661D8464(v2, 0);
      sub_2661D84A8(v2, 0);
      v17 = v4;
      v18 = 0;
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v5 != 1)
  {
    goto LABEL_26;
  }

  sub_2661D8464(*a2, 1u);
  sub_2661D8464(v2, 1u);
  v16 = sub_2661DA850(v2, v4);
  sub_2661D84A8(v2, 1u);
  sub_2661D84A8(v4, 1u);
  return v16 & 1;
}

unint64_t sub_2661DB284()
{
  result = qword_280066CC8;
  if (!qword_280066CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066CC8);
  }

  return result;
}

unint64_t sub_2661DB2DC()
{
  result = qword_280066CD0;
  if (!qword_280066CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066CD0);
  }

  return result;
}

uint64_t assignWithCopy for AppResolutionResult(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_2661D8464(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_2661D84A8(v5, v6);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t assignWithTake for AppResolutionResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_2661D84A8(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for AppResolutionResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppResolutionResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t *assignWithCopy for AppResolutionResult.AppResolutionResultError(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for AppResolutionResult.AppResolutionResultError(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppResolutionResult.AppResolutionResultError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AppResolutionResult.AppResolutionResultError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_2661DB5D0(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void *sub_2661DB5FC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t AppSelectionFailure.hashValue.getter()
{
  sub_2661E686C();
  MEMORY[0x26677DE60](0);
  return sub_2661E689C();
}

uint64_t sub_2661DB6D0()
{
  sub_2661E686C();
  MEMORY[0x26677DE60](0);
  return sub_2661E689C();
}

uint64_t sub_2661DB73C()
{
  sub_2661E686C();
  MEMORY[0x26677DE60](0);
  return sub_2661E689C();
}

unint64_t sub_2661DB780()
{
  result = qword_280066CD8[0];
  if (!qword_280066CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280066CD8);
  }

  return result;
}

void *sub_2661DB8DC(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v2[12] = a1;
  v5 = *(v4 + 128);
  v6 = type metadata accessor for AppSelectionService.EligibleAppFinder();
  v7 = swift_allocObject();
  v2[10] = v6;
  v2[11] = &off_2877D4B50;
  v2[7] = v7;
  v2[13] = a2;
  v2[14] = 0;

  return AppResolutionService.init()();
}

void *AppSelectionService.init(resolvers:eligibleAppFinder:)(uint64_t a1, uint64_t *a2)
{
  v2[12] = a1;
  sub_2661D8B0C(a2, (v2 + 7));
  v2[13] = sub_2661DE8F4;
  v2[14] = 0;
  v4 = AppResolutionService.init()();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v4;
}

void sub_2661DB9FC(NSObject *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 9);
  v6 = *a3;
  v7 = v4;
  v8 = v5;
  sub_2661D8070(a1, a2, &v6, a4);
}

uint64_t sub_2661DBA38(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;

  v10 = a1;

  sub_2661DBF4C(v10, a2, sub_2661DBC2C, v9);
}

void sub_2661DBAE4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t *))
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 9);
  if (v10)
  {
    MEMORY[0x26677E170](*a1);
  }

  else
  {
    v20 = *a1;
    v21 = v9;
    sub_2661DE8E8(v8, v9, 0);
    sub_2661DBC38(&v20, &v18);
    v8 = v18;
    v9 = v19;
    sub_2661D84A8(v20, v21);
  }

  v11 = *(a3 + 104);
  v12 = *(a3 + 112);
  v13 = [a4 typeName];
  v14 = sub_2661E640C();
  v16 = v15;

  v20 = v8;
  v21 = v9;
  v22 = v10;
  v11(v14, v16, &v20, a2);

  v20 = v8;
  v21 = v9;
  v22 = v10;
  a5(&v20);

  sub_2661D849C(v8, v9, v10);
}

void sub_2661DBC38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    v17 = *a1;

    if ((sub_2661D85A0(v18) & 1) == 0)
    {
      if (qword_280FDA6F0 != -1)
      {
        swift_once();
      }

      v19 = sub_2661E62DC();
      __swift_project_value_buffer(v19, qword_280FDAE30);

      v8 = sub_2661E62CC();
      v9 = sub_2661E658C();
      sub_2661D84A8(v3, 0);
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_18;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;

      v20 = sub_2661D0988();
      v22 = v21;
      sub_2661D84A8(v3, 0);
      v23 = sub_2661D3710(v20, v22, &v24);

      *(v10 + 4) = v23;
      v16 = "App(to be confirmed) restricted by screentime: %s";
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (v4 == 2)
  {
    v5 = *a1;

    if ((sub_2661D85A0(v6) & 1) == 0)
    {
      if (qword_280FDA6F0 != -1)
      {
        swift_once();
      }

      v7 = sub_2661E62DC();
      __swift_project_value_buffer(v7, qword_280FDAE30);

      v8 = sub_2661E62CC();
      v9 = sub_2661E658C();
      sub_2661D84A8(v3, 2u);
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_18;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315138;

      v12 = sub_2661D0988();
      v14 = v13;
      sub_2661D84A8(v3, 2u);
      v15 = sub_2661D3710(v12, v14, &v24);

      *(v10 + 4) = v15;
      v16 = "App(selected) restricted by screentime: %s";
LABEL_17:
      _os_log_impl(&dword_2661CF000, v8, v9, v16, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26677E2B0](v11, -1, -1);
      MEMORY[0x26677E2B0](v10, -1, -1);
LABEL_18:

      *a2 = v3 | 0x4000000000000000;
      *(a2 + 8) = 3;
      return;
    }

LABEL_9:
    sub_2661D84A8(v3, v4);
  }

  *a2 = v3;
  *(a2 + 8) = v4;

  sub_2661D8464(v3, v4);
}

void sub_2661DBF4C(void *a1, void *a2, void (*a3)(id *, unint64_t), uint64_t a4)
{
  sub_2661DC2D0(a2, &v28);
  v9 = *(&v28 + 1);
  if (*(&v28 + 1) >> 2 == 0xFFFFFFFFLL)
  {
    v10 = v4[10];
    v11 = v4[11];
    __swift_project_boxed_opaque_existential_1(v4 + 7, v10);
    v12 = [a1 _className];
    v13 = sub_2661E640C();
    v15 = v14;

    sub_2661D8B0C(a2, &v28);
    v16 = swift_allocObject();
    sub_2661D12C8(&v28, (v16 + 2));
    v16[7] = a3;
    v16[8] = a4;
    v16[9] = v4;
    v16[10] = a1;
    v17 = *(v11 + 16);

    v18 = a1;
    v17(v13, v15, sub_2661DE7D0, v16, v10, v11);
  }

  else
  {
    v19 = v28;
    v20 = v29;
    v21 = v30;
    if ((*(&v28 + 1) & 0x8000000000000000) != 0)
    {
      sub_2661DE7E0();
      v22 = swift_allocError();
      v23 = 0;
    }

    else
    {
      sub_2661D8464(v28, BYTE8(v28));
      v22 = v19;
      v23 = v9;
    }

    v25 = v22;
    v26 = v23;
    v27 = v9 < 0;
    *&v28 = v19;
    *(&v28 + 1) = v9;
    v29 = v20;
    v30 = v21;
    v24 = sub_2661E5B4C();
    a3(&v25, v24);

    sub_2661DE834(v19, v9);
    sub_2661D849C(v25, v26, v27);
  }
}

void sub_2661DC148(unint64_t a1, void *a2, void (*a3)(__int128 *, unint64_t), uint64_t a4, uint64_t a5, void *a6)
{
  v11 = 0x2000000000000002;
  v12 = sub_2661E4634(a1);
  if (!v13)
  {
    goto LABEL_7;
  }

  if (v13 != 1)
  {
    v11 = 0x2000000000000003;
    v12 = 0x8000000000000000;
LABEL_7:
    v16 = v11;
    goto LABEL_8;
  }

  sub_2661DE8CC(v12, 1);
  v14 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v14);
  AppResolutionStateProviding.previousSelectionResponse.getter(v14, v15, v22);
  if (LOBYTE(v22[0]) != 3 && LOBYTE(v22[0]) != 1)
  {
    sub_2661DC66C(a6, a1, 0, a3, a4);
    return;
  }

  v16 = 0x6000000000000001;

  LOBYTE(v11) = 1;
LABEL_8:
  v22[3] = 0;
  v23 = v12;
  v24 = v11;
  v25 = 0;
  v22[0] = v12;
  v22[1] = v16;
  v22[2] = 0;
  v17 = v12;
  sub_2661D8464(v12, v11);
  v18 = sub_2661E5B4C();
  a3(&v23, v18);

  sub_2661DE848(v17, v16);
  v19 = v23;
  v20 = v25;
  v21 = v24;

  sub_2661D849C(v19, v21, v20);
}

double sub_2661DC2D0@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  AppResolutionStateProviding.previousSelectionResponse.getter(v4, v5, &v33);
  if (v33 == 3)
  {
    goto LABEL_2;
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 8))(v7, v8);
  if (v9)
  {
    v10 = v9;
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v11 = sub_2661E62DC();
    __swift_project_value_buffer(v11, qword_280FDAE30);

    v12 = sub_2661E62CC();
    v13 = sub_2661E658C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v33 = v15;
      *v14 = 136315138;

      v16 = sub_2661D0988();
      v18 = v17;

      v19 = sub_2661D3710(v16, v18, &v33);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_2661CF000, v12, v13, "Selected requested app from appResolutionState: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x26677E2B0](v15, -1, -1);
      MEMORY[0x26677E2B0](v14, -1, -1);
    }

    *a2 = v10;
    a2[1] = 0x4000000000000002;
    goto LABEL_9;
  }

  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 16))(v20, v21);
  if (!v22)
  {
LABEL_2:
    result = 0.0;
    *a2 = xmmword_2661E7780;
LABEL_9:
    a2[2] = 0;
    a2[3] = 0;
    return result;
  }

  v23 = v22;
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v24 = sub_2661E62DC();
  __swift_project_value_buffer(v24, qword_280FDAE30);

  v25 = sub_2661E62CC();
  v26 = sub_2661E658C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33 = v28;
    *v27 = 136315138;

    v29 = sub_2661D0988();
    v31 = v30;

    v32 = sub_2661D3710(v29, v31, &v33);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_2661CF000, v25, v26, "Selected suggested app from appResolutionState: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x26677E2B0](v28, -1, -1);
    MEMORY[0x26677E2B0](v27, -1, -1);
  }

  *a2 = v23;
  *&result = 2;
  *(a2 + 1) = xmmword_2661E7770;
  a2[3] = 0x80000002661E82F0;
  return result;
}

void sub_2661DC66C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *, unint64_t), uint64_t a5)
{
  v8 = *(v5 + 96);
  if (*(v8 + 16) <= a3)
  {
    *&v17[0] = a2;
    WORD4(v17[0]) = 1;
    v18[0] = a2;
    v18[1] = 0x2000000000000001;
    v18[2] = 0;
    v19 = 0;

    v16 = sub_2661E5B4C();
    a4(v17, v16);

    sub_2661D849C(*&v17[0], BYTE8(v17[0]), SBYTE9(v17[0]));
  }

  else if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2661D8B0C(v8 + 40 * a3 + 32, v18);
    v12 = v19;
    v13 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_2661D8B0C(v18, v17);
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = a5;
    sub_2661D12C8(v17, (v14 + 4));
    v14[9] = v5;
    v14[10] = a1;
    v14[11] = a2;
    v14[12] = a3;

    v15 = a1;

    sub_2661DA21C(v15, a2, sub_2661DE6A8, v14, v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }
}

void sub_2661DC800(uint64_t a1, uint64_t a2, void (*a3)(void **, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (*(a1 + 9))
  {
    if (__OFADD__(a9, 1))
    {
      __break(1u);
    }

    else
    {
      v14 = swift_allocObject();
      v14[2] = a2;
      v14[3] = a3;
      v14[4] = a4;

      sub_2661DC66C(a7, a8, a9 + 1, sub_2661DE6DC, v14);
    }
  }

  else
  {
    v15 = *a1;
    v16 = *(a1 + 8);
    if (a2)
    {
      v24 = *a1;
      LOWORD(v25) = v16;
      sub_2661D8464(v15, v16);
      a3(&v24, a2);
      v17 = v24;
      v18 = BYTE1(v25);
      v19 = v25;
    }

    else
    {
      v20 = a5[4];
      __swift_project_boxed_opaque_existential_1(a5, a5[3]);
      sub_2661D8464(v15, v16);
      v21 = sub_2661DA1E4();
      v27 = v22;
      v28 = v15;
      v29 = v16;
      v30 = 0;
      v24 = v15;
      v25 = v16;
      v26 = v21;
      sub_2661D8464(v15, v16);
      v23 = sub_2661E5B4C();
      a3(&v28, v23);

      sub_2661D84A8(v15, v16);

      v17 = v28;
      v18 = v30;
      v19 = v29;
    }

    sub_2661D849C(v17, v19, v18);
  }
}

uint64_t sub_2661DC9E0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(unint64_t *, unint64_t))
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 9);
  v10 = sub_2661DDF44(MEMORY[0x277D84F90]);
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = sub_2661DDF44(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v10;
  sub_2661DE054(v11, sub_2661DDDA8, 0, isUniquelyReferenced_nonNull_native, &v17);

  v13 = v17;

  v14 = swift_isUniquelyReferenced_nonNull_native();
  v17 = v13;
  sub_2661DE054(a2, sub_2661DDDA8, 0, v14, &v17);

  v15 = v17;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  a4(&v17, v15);
}

uint64_t sub_2661DCB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2661DCB74, 0, 0);
}

uint64_t sub_2661DCB74()
{
  v1 = sub_2661DE364(&unk_2877D4128);
  v0[6] = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2661DCC3C;
  v4 = v0[2];
  v3 = v0[3];
  v5 = MEMORY[0x277D84FA0];

  return sub_2661D4B08(v4, v3, v1, v5);
}

uint64_t sub_2661DCC3C(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_2661DCD5C, 0, 0);
}

uint64_t sub_2661DCD5C()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2661DCDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_2661E652C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a3;
  v13[7] = a4;

  sub_2661D2F08(0, 0, v11, &unk_2661E7850, v13);
}

uint64_t sub_2661DCF54()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[14];
}

uint64_t *AppSelectionService.deinit()
{
  v0 = AppResolutionService.deinit();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[12];

  v2 = v0[14];

  return v0;
}

uint64_t AppSelectionService.__deallocating_deinit()
{
  v0 = AppSelectionService.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

unint64_t sub_2661DCFFC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2661E686C();
  sub_2661E643C();
  v6 = sub_2661E689C();

  return sub_2661DD874(a1, a2, v6);
}

uint64_t sub_2661DD074(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E00, &qword_2661E7878);
  v38 = a2;
  result = sub_2661E67BC();
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
      sub_2661E686C();
      sub_2661E643C();
      result = sub_2661E689C();
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

uint64_t sub_2661DD314(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E08, &qword_2661E7880);
  v38 = a2;
  result = sub_2661E67BC();
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
      sub_2661E686C();
      sub_2661E643C();
      result = sub_2661E689C();
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

uint64_t sub_2661DD5BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DE8, &qword_2661E7860);
  v36 = a2;
  result = sub_2661E67BC();
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
        sub_2661DE6E8(v25, v37);
      }

      else
      {
        sub_2661D5194(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2661E686C();
      sub_2661E643C();
      result = sub_2661E689C();
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
      result = sub_2661DE6E8(v37, (*(v8 + 56) + 32 * v16));
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

unint64_t sub_2661DD874(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2661E67EC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_2661DD92C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E00, &qword_2661E7878);
  v2 = *v0;
  v3 = sub_2661E67AC();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_2661DDA94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E08, &qword_2661E7880);
  v2 = *v0;
  v3 = sub_2661E67AC();
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

void *sub_2661DDC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DE8, &qword_2661E7860);
  v2 = *v0;
  v3 = sub_2661E67AC();
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
        sub_2661D5194(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2661DE6E8(v25, (*(v4 + 56) + v22));
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

uint64_t sub_2661DDDA8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2661D5194((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_2661DDDF4@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_2661D5194(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_2661DE6E8(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_2661DE6F8(v22);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2661DDF44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DE8, &qword_2661E7860);
    v3 = sub_2661E67CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2661DE760(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2661DCFFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2661DE6E8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_2661DE054(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_2661DDDF4(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_2661DE6E8(v46, v44);
  v14 = *a5;
  result = sub_2661DCFFC(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_2661DD5BC(v20, a4 & 1);
    v22 = *a5;
    result = sub_2661DCFFC(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_2661E680C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_2661DDC04();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    sub_2661DE6E8(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_2661DE6E8(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_2661DDDF4(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_2661DE6E8(v46, v44);
        v33 = *a5;
        result = sub_2661DCFFC(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_2661DD5BC(v37, 1);
          v38 = *a5;
          result = sub_2661DCFFC(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
          sub_2661DE6E8(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_2661DE6E8(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_2661DDDF4(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_2661D4180();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2661DE364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DE0, &qword_2661E7858);
    v3 = sub_2661E66CC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_2661E686C();
      MEMORY[0x26677DE60](v10);
      result = sub_2661E689C();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2661DE5D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2661D4A14;

  return sub_2661DCB50(a1, v4, v5, v6, v7, v9, v8);
}

_OWORD *sub_2661DE6E8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2661DE6F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DF0, &qword_2661E7868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2661DE760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DF8, &qword_2661E7870);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2661DE7E0()
{
  result = qword_280066E10;
  if (!qword_280066E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280066E10);
  }

  return result;
}

uint64_t sub_2661DE834(uint64_t result, unint64_t a2)
{
  if (a2 >> 2 != 0xFFFFFFFF)
  {
    return sub_2661DE848(result, a2);
  }

  return result;
}

uint64_t sub_2661DE848(uint64_t result, unint64_t a2)
{
  v3 = a2 >> 61;
  if ((a2 >> 61) > 1)
  {
    if (v3 == 2 || v3 == 3)
    {

      return sub_2661D84A8(result, a2);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {

      return sub_2661D84A8(result, a2);
    }
  }

  else
  {
    sub_2661D84A8(result, a2);
  }

  return result;
}

uint64_t sub_2661DE8CC(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  if (!a2)
  {
  }

  return result;
}

uint64_t sub_2661DE8E8(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    JUMPOUT(0x26677E170);
  }

  return sub_2661D8464(a1, a2);
}

uint64_t AppSupportQuery.init(intentID:allowedSiriAuthorizationStatus:allowedExtensionPointIdentifiers:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  v6 = *a4;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = v6;
  return result;
}

uint64_t sub_2661DE910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = &type metadata for AppSupportService.SystemAppRecordData;
  a3[4] = sub_2661E43A0();
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_2661DE96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_2661E3F60(a1, a2);
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E58, &qword_2661E7AB8);
  result = sub_2661E42D8(&qword_280FDA6E8, &qword_280066E58, &qword_2661E7AB8);
  a3[4] = result;
  *a3 = v4;
  return result;
}

uint64_t static AppSupportService.sharedInstance.getter()
{
  type metadata accessor for AppSupportService();

  return swift_initStaticObject();
}

uint64_t sub_2661DEA40(uint64_t *a1)
{
  *(v2 + 24) = v1;
  v4 = sub_2661E62BC();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *a1;
  v9 = a1[1];
  *(v2 + 48) = v7;
  *(v2 + 56) = v8;
  *(v2 + 64) = v9;
  *(v2 + 72) = *(a1 + 1);

  return MEMORY[0x2822009F8](sub_2661DEB14, 0, 0);
}

uint64_t sub_2661DEB14()
{
  v25 = v0;
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = qword_280FDAE48;
  v0[11] = qword_280FDAE48;
  v3 = v2;
  sub_2661E62AC();
  sub_2661E660C();
  sub_2661E629C();
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];
  v7 = sub_2661E62DC();
  v0[12] = __swift_project_value_buffer(v7, qword_280FDAE30);

  v8 = sub_2661E62CC();
  v9 = sub_2661E655C();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[7];
    v10 = v0[8];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2661D3710(v11, v10, &v24);
    _os_log_impl(&dword_2661CF000, v8, v9, "Searching for Apps Plugins supporting Intent '%s'", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26677E2B0](v13, -1, -1);
    MEMORY[0x26677E2B0](v12, -1, -1);
  }

  v14 = v0[10];
  v23 = *(v0 + 4);
  v15 = v0[7];
  v16 = v0[3];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E18, &qword_2661E7898);
  v18 = swift_task_alloc();
  v0[13] = v18;
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;
  *(v18 + 32) = v23;
  *(v18 + 48) = v14;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E20, &qword_2661E78B0);
  v20 = *(MEMORY[0x277D858E8] + 4);
  v21 = swift_task_alloc();
  v0[14] = v21;
  *v21 = v0;
  v21[1] = sub_2661DEE10;
  v27 = v19;

  return MEMORY[0x282200600](v0 + 2, v17, v19, 0, 0, &unk_2661E78A8, v18, v17);
}

uint64_t sub_2661DEE10()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2661DEF28, 0, 0);
}

uint64_t sub_2661DEF28()
{
  v24 = v0;
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[2];

  v6 = sub_2661E62CC();
  v7 = sub_2661E655C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 134218498;
    if (v5 >> 62)
    {
      v10 = sub_2661E665C();
    }

    else
    {
      v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v0[7];
    v11 = v0[8];
    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_2661D3710(v12, v11, &v23);
    *(v8 + 22) = 2080;
    v13 = type metadata accessor for App();
    v14 = MEMORY[0x26677DAA0](v5, v13);
    v16 = sub_2661D3710(v14, v15, &v23);

    *(v8 + 24) = v16;
    _os_log_impl(&dword_2661CF000, v6, v7, "Found %ld apps supporting %s: %s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26677E2B0](v9, -1, -1);
    MEMORY[0x26677E2B0](v8, -1, -1);
  }

  else
  {
  }

  v17 = v0[11];
  v19 = v0[5];
  v18 = v0[6];
  v20 = v0[4];
  sub_2661E65FC();
  sub_2661E629C();
  (*(v19 + 8))(v18, v20);

  v21 = v0[1];

  return v21(v5);
}

uint64_t sub_2661DF180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E28, &unk_2661E7A50);
  v7[10] = v8;
  v9 = *(v8 - 8);
  v7[11] = v9;
  v10 = *(v9 + 64) + 15;
  v7[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2661DF290, 0, 0);
}

uint64_t sub_2661DF290()
{
  v1 = v0[13];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v18 = v0[4];
  v19 = v0[12];
  v7 = sub_2661E652C();
  v17 = *(*(v7 - 8) + 56);
  v17(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = v4;
  v8[6] = v5;
  v8[7] = v3;
  v8[8] = v2;

  sub_2661DFA40(v1, &unk_2661E7A68, v8);
  sub_2661E4320(v1, &qword_280066BA8, &qword_2661E7840);
  v17(v1, 1, 1, v7);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v6;
  v9[5] = v4;
  v9[6] = v5;
  v9[7] = v3;
  v9[8] = v2;

  sub_2661DFA40(v1, &unk_2661E7A78, v9);
  sub_2661E4320(v1, &qword_280066BA8, &qword_2661E7840);
  v10 = *v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E18, &qword_2661E7898);
  sub_2661E64FC();
  v0[14] = MEMORY[0x277D84FA0];
  v11 = sub_2661E42D8(&qword_280FDA6E0, &qword_280066E28, &unk_2661E7A50);
  v12 = *(MEMORY[0x277D856D0] + 4);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_2661DF53C;
  v14 = v0[12];
  v15 = v0[10];

  return MEMORY[0x282200308](v0 + 2, v15, v11);
}

uint64_t sub_2661DF53C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v10 = *v1;

  if (v0)
  {
    v4 = v2[14];
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[10];

    (*(v6 + 8))(v5, v7);
    v8 = nullsub_1;
  }

  else
  {
    v8 = sub_2661DF690;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2661DF690()
{
  v1 = v0[2];
  v2 = v0[14];
  if (v1)
  {
    v0[14] = sub_2661DFF18(v1, v0[14]);
    v3 = sub_2661E42D8(&qword_280FDA6E0, &qword_280066E28, &unk_2661E7A50);
    v4 = *(MEMORY[0x277D856D0] + 4);
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_2661DF53C;
    v6 = v0[12];
    v7 = v0[10];

    return MEMORY[0x282200308](v0 + 2, v7, v3);
  }

  else
  {
    v8 = v0[13];
    v9 = v0[3];
    (*(v0[11] + 8))(v0[12], v0[10]);
    v10 = sub_2661D3DA4(v2);

    *v9 = v10;

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2661DF814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  v7 = sub_2661E62BC();
  v6[6] = v7;
  v8 = *(v7 - 8);
  v6[7] = v8;
  v9 = *(v8 + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2661DF8D8, 0, 0);
}

uint64_t sub_2661DF8D8()
{
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v12 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];
  v7 = qword_280FDAE48;
  sub_2661E62AC();
  sub_2661E660C();
  sub_2661E629C();
  v8 = sub_2661E0A9C(v5, v3);
  v9 = sub_2661D449C(v8);

  sub_2661E65FC();
  sub_2661E629C();
  (*(v2 + 8))(v1, v12);
  *v6 = v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_2661DFA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066BA8, &qword_2661E7840);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v22 - v10;
  sub_2661D4F4C(a1, v22 - v10);
  v12 = sub_2661E652C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2661E4320(v11, &qword_280066BA8, &qword_2661E7840);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2661E64EC();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2661E651C();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E18, &qword_2661E7898);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_2661DFC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = sub_2661E62BC();
  v8[13] = v9;
  v10 = *(v9 - 8);
  v8[14] = v10;
  v11 = *(v10 + 64) + 15;
  v8[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2661DFD20, 0, 0);
}

uint64_t sub_2661DFD20()
{
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v15 = v0[11];
  v16 = v0[12];
  v4 = v0[8];
  v5 = v0[9];
  v17 = v0[7];
  v18 = v0[13];
  v6 = qword_280FDAE48;
  sub_2661E62AC();
  sub_2661E660C();
  sub_2661E629C();
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  v7(v5, v3);
  v9 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = swift_task_alloc();
  v10[2] = v5;
  v10[3] = v3;
  v10[4] = v15;
  v10[5] = v16;
  type metadata accessor for App();
  v11 = sub_2661E646C();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v12 = sub_2661D449C(v11);

  sub_2661E65FC();
  sub_2661E629C();
  (*(v2 + 8))(v1, v18);
  *v17 = v12;

  v13 = v0[1];

  return v13();
}

uint64_t sub_2661DFF18(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2661E664C();
    type metadata accessor for App();
    sub_2661E37E8();
    result = sub_2661E654C();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_2661D4180();
      return v16;
    }

    while (1)
    {
      sub_2661E299C(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2661E667C())
      {
        type metadata accessor for App();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2661E00E0@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 8))(v9, v10);
  if (!v12)
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v33 = sub_2661E62DC();
    __swift_project_value_buffer(v33, qword_280FDAE30);
    sub_2661D8B0C(a1, v90);
    v34 = sub_2661E62CC();
    v35 = sub_2661E657C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v93 = v37;
      *v36 = 136315138;
      sub_2661D8B0C(v90, &v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E40, &qword_2661E7AA0);
      v38 = a4;
      v39 = sub_2661E641C();
      v41 = v40;
      __swift_destroy_boxed_opaque_existential_1Tm(v90);
      v42 = sub_2661D3710(v39, v41, &v93);

      *(v36 + 4) = v42;
      a4 = v38;
      _os_log_impl(&dword_2661CF000, v34, v35, "Error enumerating plugins, no pluginIdentifier on proxy object: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x26677E2B0](v37, -1, -1);
      MEMORY[0x26677E2B0](v36, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v90);
    }

    goto LABEL_47;
  }

  v13 = v12;
  v85 = v11;
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v86 = (*(v15 + 16))(v14, v15);
  v87 = a4;
  v17 = v16;
  if (!v16)
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v18 = sub_2661E62DC();
    __swift_project_value_buffer(v18, qword_280FDAE30);

    v19 = sub_2661E62CC();
    v20 = sub_2661E655C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v84[4] = v4;
      v22 = swift_slowAlloc();
      v90[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_2661D3710(v85, v13, v90);
      _os_log_impl(&dword_2661CF000, v19, v20, "Plugin %s has no containing bundle or bundleId.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26677E2B0](v22, -1, -1);
      MEMORY[0x26677E2B0](v21, -1, -1);
    }
  }

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  if (((*(v24 + 40))(v23, v24) & 1) == 0)
  {
    v43 = a1[3];
    v44 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v43);
    v45 = (*(v44 + 32))(v43, v44);
    if ((v46 & 1) == 0 && a2)
    {
      v47 = *(a2 + 16);
      v48 = (a2 + 32);
      while (v47)
      {
        v49 = *v48++;
        --v47;
        if (v49 == v45)
        {
          goto LABEL_28;
        }
      }

      if (qword_280FDA6F0 != -1)
      {
        swift_once();
      }

      v73 = sub_2661E62DC();
      __swift_project_value_buffer(v73, qword_280FDAE30);
      sub_2661D8B0C(a1, v90);

      v56 = sub_2661E62CC();
      v57 = sub_2661E656C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v93 = v59;
        *v58 = 136315394;
        v88 = v86;
        v89 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E48, &qword_2661E7AA8);
        v74 = sub_2661E641C();
        v76 = sub_2661D3710(v74, v75, &v93);

        *(v58 + 4) = v76;
        *(v58 + 12) = 2080;
        v77 = v91;
        v78 = v92;
        __swift_project_boxed_opaque_existential_1(v90, v91);
        v88 = (*(v78 + 32))(v77, v78);
        LOBYTE(v89) = v79 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E50, &qword_2661E7AB0);
        v80 = sub_2661E641C();
        v82 = v81;
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        v83 = sub_2661D3710(v80, v82, &v93);

        *(v58 + 14) = v83;
        v70 = "Siri authorization status restriction is set and %s does not qualify due to status: %s";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

LABEL_28:
    v50 = a1[3];
    v51 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v50);
    v52 = (*(v51 + 24))(v50, v51);
    if (a3)
    {
      if (!v53 || (v90[0] = v52, v90[1] = v53, MEMORY[0x28223BE20](), v84[2] = v90, v54 = sub_2661E373C(sub_2661E3F44, v84, a3), , (v54 & 1) == 0))
      {

        if (qword_280FDA6F0 != -1)
        {
          swift_once();
        }

        v55 = sub_2661E62DC();
        __swift_project_value_buffer(v55, qword_280FDAE30);
        sub_2661D8B0C(a1, v90);

        v56 = sub_2661E62CC();
        v57 = sub_2661E655C();

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          v93 = v59;
          *v58 = 136315394;
          v88 = v86;
          v89 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E48, &qword_2661E7AA8);
          v60 = sub_2661E641C();
          v62 = sub_2661D3710(v60, v61, &v93);

          *(v58 + 4) = v62;
          *(v58 + 12) = 2080;
          v63 = v91;
          v64 = v92;
          __swift_project_boxed_opaque_existential_1(v90, v91);
          v88 = (*(v64 + 24))(v63, v64);
          v89 = v65;
          v66 = sub_2661E641C();
          v68 = v67;
          __swift_destroy_boxed_opaque_existential_1Tm(v90);
          v69 = sub_2661D3710(v66, v68, &v93);

          *(v58 + 14) = v69;
          v70 = "Extension point identifier restriction is set and %s does not qualify due to identifier %s";
LABEL_44:
          _os_log_impl(&dword_2661CF000, v56, v57, v70, v58, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26677E2B0](v59, -1, -1);
          MEMORY[0x26677E2B0](v58, -1, -1);

LABEL_46:
          a4 = v87;
LABEL_47:
          result = 0;
          goto LABEL_48;
        }

LABEL_45:

        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        goto LABEL_46;
      }
    }

    else
    {
    }

    a4 = v87;
    type metadata accessor for App();
    result = swift_allocObject();
    v72 = v85;
    *(result + 16) = v86;
    *(result + 24) = v17;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 32) = v72;
    *(result + 40) = v13;
    goto LABEL_48;
  }

  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v25 = sub_2661E62DC();
  __swift_project_value_buffer(v25, qword_280FDAE30);

  v26 = sub_2661E62CC();
  v27 = sub_2661E655C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v90[0] = v29;
    *v28 = 136315138;
    if (v17)
    {
      v30 = v86;
    }

    else
    {
      v30 = 7104878;
    }

    if (v17)
    {
      v31 = v17;
    }

    else
    {
      v31 = 0xE300000000000000;
    }

    v32 = sub_2661D3710(v30, v31, v90);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_2661CF000, v26, v27, "Omitting hidden app %s from results", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    MEMORY[0x26677E2B0](v29, -1, -1);
    MEMORY[0x26677E2B0](v28, -1, -1);
  }

  else
  {
  }

  result = 0;
  a4 = v87;
LABEL_48:
  *a4 = result;
  return result;
}

uint64_t sub_2661E0A9C(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5(v18);
  __swift_project_boxed_opaque_existential_1(v18, v18[3]);
  v7 = type metadata accessor for App();
  v8 = sub_2661E646C();
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v9 = sub_2661E62DC();
  __swift_project_value_buffer(v9, qword_280FDAE30);

  v10 = sub_2661E62CC();
  v11 = sub_2661E655C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_2661D3710(a1, a2, v18);
    *(v12 + 12) = 2080;
    v14 = MEMORY[0x26677DAA0](v8, v7);
    v16 = sub_2661D3710(v14, v15, v18);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_2661CF000, v10, v11, "searchApps(intentID: %s) returning %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26677E2B0](v13, -1, -1);
    MEMORY[0x26677E2B0](v12, -1, -1);
  }

  return v8;
}

uint64_t sub_2661E0CAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  if ((*(v5 + 24))(v4, v5))
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v6 = sub_2661E62DC();
    __swift_project_value_buffer(v6, qword_280FDAE30);
    sub_2661D8B0C(a1, v30);
    v7 = sub_2661E62CC();
    v8 = sub_2661E655C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136315138;
      v11 = v31;
      v12 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v13 = (*(v12 + 8))(v11, v12);
      if (!v14)
      {
        sub_2661D8B0C(v30, &v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E38, &qword_2661E7A98);
        v13 = sub_2661E641C();
      }

      v15 = v13;
      v16 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      v17 = sub_2661D3710(v15, v16, &v33);

      *(v9 + 4) = v17;
      _os_log_impl(&dword_2661CF000, v7, v8, "Omitting hidden app  %s from results", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26677E2B0](v10, -1, -1);
      MEMORY[0x26677E2B0](v9, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v30);
    }

LABEL_16:
    result = 0;
    goto LABEL_17;
  }

  v18 = a1[3];
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = (*(v19 + 8))(v18, v19);
  if (!v21)
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v25 = sub_2661E62DC();
    __swift_project_value_buffer(v25, qword_280FDAE30);
    v26 = sub_2661E62CC();
    v27 = sub_2661E655C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2661CF000, v26, v27, "AppRecord does not contain bundleIdentifier", v28, 2u);
      MEMORY[0x26677E2B0](v28, -1, -1);
    }

    goto LABEL_16;
  }

  v22 = v20;
  v23 = v21;
  type metadata accessor for App();
  result = swift_allocObject();
  *(result + 16) = v22;
  *(result + 24) = v23;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
LABEL_17:
  *a2 = result;
  return result;
}

uint64_t sub_2661E0FE8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 supportedIntents];
  v6 = sub_2661E64AC();

  v9[0] = a2;
  v9[1] = a3;
  v8[2] = v9;
  LOBYTE(a3) = sub_2661E373C(sub_2661E460C, v8, v6);

  return a3 & 1;
}

uint64_t sub_2661E1088(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

id sub_2661E10E0@<X0>(void *a1@<X8>)
{
  result = [*v1 nextObject];
  v4 = result;
  if (result)
  {
    result = sub_2661D7F34(0, &qword_280066E70, 0x277CC1E70);
    v5 = &off_2877D4C08;
  }

  else
  {
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  a1[4] = v5;
  return result;
}

void sub_2661E1154(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = [objc_opt_self() enumeratorWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  v8[4] = sub_2661E4630;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2661E1088;
  v8[3] = &block_descriptor_44;
  v7 = _Block_copy(v8);

  [v5 setFilter_];
  _Block_release(v7);
  *a1 = v5;
}

uint64_t sub_2661E125C()
{
  sub_2661E39A8(*v0, v0[1]);
  v2 = v1;

  return v2;
}

void sub_2661E129C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() enumeratorWithOptions_];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v24 = sub_2661E4564;
  v25 = v11;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v22 = sub_2661E1088;
  v23 = &block_descriptor_29;
  v12 = _Block_copy(&aBlock);

  [v10 setFilter_];
  _Block_release(v12);
  if (!a2 || !a3)
  {
LABEL_8:
    *a1 = v10;
    return;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v13 = [v10 nextObject];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2661D7F34(0, &qword_280066E70, 0x277CC1E70);
      v16 = v14;
      v17 = 0;
      do
      {
        v19 = v15;
        v20 = &off_2877D4C08;
        *&v18 = v16;
        sub_2661D12C8(&v18, &aBlock);
        sub_2661D12C8(&aBlock, a2);
        if (a3 - 1 == v17)
        {
          break;
        }

        a2 += 40;
        v16 = [v10 nextObject];
        ++v17;
      }

      while (v16);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_2661E14A4(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    v5 = a1;
    MEMORY[0x26677DA70]();
    if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v15 = *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2661E64CC();
    }

    sub_2661E64DC();
    swift_endAccess();
  }

  else
  {
    if (qword_280FDA6F0 != -1)
    {
      swift_once();
    }

    v7 = sub_2661E62DC();
    __swift_project_value_buffer(v7, qword_280FDAE30);
    MEMORY[0x26677E170](a2);
    oslog = sub_2661E62CC();
    v8 = sub_2661E657C();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v11 = sub_2661E681C();
        v13 = v12;
      }

      else
      {
        v13 = 0xEA00000000003E72;
        v11 = 0x6F727265206F6E3CLL;
      }

      v14 = sub_2661D3710(v11, v13, &v17);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_2661CF000, oslog, v8, "Error enumerating plugins: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x26677E2B0](v10, -1, -1);
      MEMORY[0x26677E2B0](v9, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2661E16E4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void *sub_2661E1770(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2661E665C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_2661E3840(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x26677DCE0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2661E3840((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_2661D7F34(0, &qword_280FDA6D8, 0x277CC1ED8);
        v16 = &off_2877D4C28;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_2661D12C8(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_2661E3840((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_2661D7F34(0, &qword_280FDA6D8, 0x277CC1ED8);
        v16 = &off_2877D4C28;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_2661D12C8(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t AppSupportService.deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return v0;
}

uint64_t AppSupportService.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t AppSupportQuery.intentID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}