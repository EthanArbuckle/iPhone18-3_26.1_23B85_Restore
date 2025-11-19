void *AccountProvider.__allocating_init(eventHub:accountStore:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[21] = 0;
  sub_265B3FF48(a3, (v6 + 14));
  v6[19] = a1;
  v6[20] = a2;
  return v6;
}

uint64_t sub_265B3FF48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_265B3FF84()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = [objc_opt_self() SMUACDAccountStoreDidChangeNotification];
  [v1 addObserver:v0 selector:sel_onAccountChanged name:v2 object:0];
}

uint64_t AccountProviding.fetchCurrentAccount()(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  return (*(a2 + 32))(&v3, a1);
}

{
  *(v2 + 32) = 0;
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B6FFA8;

  return v9(v2 + 32, a1, a2);
}

uint64_t sub_265B40088(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourClientServices/AccountProvider.swift";
  *(v5 + 24) = 43;
  *(v5 + 32) = 2;
  *(v5 + 40) = 39;
  *(v5 + 48) = &unk_265B79BF8;
  *(v5 + 56) = v4;
  sub_265B401DC();

  return sub_265B76BB0();
}

uint64_t sub_265B40168()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265B401A0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

unint64_t sub_265B401DC()
{
  result = qword_280CEB920[0];
  if (!qword_280CEB920[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_280CEB920);
  }

  return result;
}

unint64_t sub_265B40228(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26676C0E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26676C0E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265B402B4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_265B40798(v11, 0, 0, 1, a1, a2);
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
    sub_265B4073C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_265B40380(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265B4221C;

  return sub_265B40438(a1, v5);
}

uint64_t sub_265B40438(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B42350;

  return v7(a1);
}

uint64_t sub_265B40574()
{
  v1 = [*(v0 + 152) ams_mediaType];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = [*(v0 + 152) ams:v1 activeiTunesAccountForMediaType:?];
    *(v0 + 168) = v2;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_265B413A8;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AE8, &qword_265B79398);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265B41010;
    *(v0 + 104) = &block_descriptor_4;
    *(v0 + 112) = v3;
    [v2 resultWithCompletion_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    sub_265B4ACC0();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_265B4073C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_265B40798(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_265B4D6FC(a5, a6);
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
    result = sub_265B77460();
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_265B408F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B4096C()
{
  v1 = *(v0 + 144);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 selectedUserProfile];
  *(v0 + 72) = v3;

  if ((v1 & 1) == 0)
  {
    if (v3)
    {
      v21 = [swift_unknownObjectRetain() iTunesAltDSID];
      if (v21)
      {
        v22 = *(v0 + 64);
        v23 = v21;
        v24 = sub_265B77030();
        v26 = v25;

        *(v0 + 80) = v26;
        v27 = v22[17];
        v28 = v22[18];
        __swift_project_boxed_opaque_existential_1(v22 + 14, v27);
        v29 = *(v28 + 8);
        v50 = (v29 + *v29);
        v30 = v29[1];
        v31 = swift_task_alloc();
        *(v0 + 88) = v31;
        *v31 = v0;
        v31[1] = sub_265B71AA0;
        v15 = v24;
        v16 = v26;
        v17 = v27;
        v18 = v28;
        v19 = v50;

        return v19(v15, v16, v17, v18);
      }

      goto LABEL_12;
    }

    v43 = *(v0 + 64);
    v44 = v43[17];
    v45 = v43[18];
    __swift_project_boxed_opaque_existential_1(v43 + 14, v44);
    v46 = *(v45 + 16);
    v52 = (v46 + *v46);
    v47 = v46[1];
    v48 = swift_task_alloc();
    *(v0 + 104) = v48;
    *v48 = v0;
    v48[1] = sub_265B41790;
    v40 = v44;
    v41 = v45;
    v42 = v52;

    return v42(v40, v41);
  }

  if (!v3)
  {
    v34 = *(v0 + 64);
    v35 = v34[17];
    v36 = v34[18];
    __swift_project_boxed_opaque_existential_1(v34 + 14, v35);
    v37 = *(v36 + 24);
    v51 = (v37 + *v37);
    v38 = v37[1];
    v39 = swift_task_alloc();
    *(v0 + 136) = v39;
    *v39 = v0;
    v39[1] = sub_265B71DFC;
    v40 = v35;
    v41 = v36;
    v42 = v51;

    return v42(v40, v41);
  }

  v4 = [swift_unknownObjectRetain() iCloudAltDSID];
  if (v4)
  {
    v5 = *(v0 + 64);
    v6 = v4;
    v7 = sub_265B77030();
    v9 = v8;

    *(v0 + 112) = v9;
    v10 = v5[17];
    v11 = v5[18];
    __swift_project_boxed_opaque_existential_1(v5 + 14, v10);
    v12 = *(v11 + 32);
    v49 = (v12 + *v12);
    v13 = v12[1];
    v14 = swift_task_alloc();
    *(v0 + 120) = v14;
    *v14 = v0;
    v14[1] = sub_265B71C4C;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v49;

    return v19(v15, v16, v17, v18);
  }

LABEL_12:
  sub_265B4ACC0();
  swift_allocError();
  *v32 = 1;
  swift_willThrow();
  swift_unknownObjectRelease_n();
  v33 = *(v0 + 8);

  return v33();
}

uint64_t AccountProvider.fetchCurrentAccount(accountType:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 144) = *a1;
  return MEMORY[0x2822009F8](sub_265B4096C, v1, 0);
}

uint64_t sub_265B40F80()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B41608;

  return ACAccountStore.activeiTunesAccount()();
}

uint64_t sub_265B41010(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035950, &unk_265B78860);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_265B41194()
{
  sub_265B76520();
  if (v0 <= 0x3F)
  {
    sub_265B41218();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265B41218()
{
  if (!qword_280CEBA50)
  {
    sub_265B76EF0();
    v0 = sub_265B77300();
    if (!v1)
    {
      atomic_store(v0, &qword_280CEBA50);
    }
  }
}

uint64_t type metadata accessor for MultiUserGroupActivity()
{
  result = qword_280CEB9A8;
  if (!qword_280CEB9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265B412BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265B41370(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265B413A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_265B5CFF8;
  }

  else
  {
    v3 = sub_265B414B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265B414B8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_265B41548()
{
  result = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(319);
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

uint64_t sub_265B41608(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_265B41708()
{
  sub_265B418B0();
  if (v0 <= 0x3F)
  {
    sub_265B41A64();
    if (v1 <= 0x3F)
    {
      sub_265B41AC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_265B41790(uint64_t a1)
{
  v4 = *(*v2 + 104);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

void sub_265B418B0()
{
  if (!qword_280CEB650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035AC0, "2$");
    sub_265B76390();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280CEB650);
    }
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_265B41970()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_265B41A64()
{
  if (!qword_280CEB658)
  {
    sub_265B766C0();
    v0 = sub_265B771B0();
    if (!v1)
    {
      atomic_store(v0, &qword_280CEB658);
    }
  }
}

unint64_t sub_265B41AC0()
{
  result = qword_280CEB640;
  if (!qword_280CEB640)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280CEB640);
  }

  return result;
}

uint64_t SummaryShelfLockupDescriptorsCache.__allocating_init(catalogClient:contentAvailabilityClient:eventHub:networkEvaluator:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v12 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v25 - v13;
  v15 = *(v6 + 48);
  v16 = *(v6 + 52);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  swift_storeEnumTagMultiPayload();
  sub_265B41D44(a1, v17 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient);
  sub_265B41D44(a2, v17 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient);
  v18 = (v17 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  *v18 = a3;
  v18[1] = a4;
  sub_265B41D44(a5, v17 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator);
  v19 = sub_265B76CC0();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  *(v17 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken) = sub_265B76CB0();
  v22 = sub_265B77230();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v17;

  sub_265B566AC(0, 0, v14, &unk_265B78FE0, v23);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v17;
}

uint64_t sub_265B41D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_265B41DA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_265B4221C;

  return sub_265B40438(a1, v5);
}

uint64_t sub_265B41E60(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_265B4221C;

  return sub_265B41F14(a1, v4, v5, v6);
}

uint64_t sub_265B41F34()
{
  v1 = *(v0 + 16);
  sub_265B41F94();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_265B41F94()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub + 8);
  v2 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  swift_getObjectType();
  sub_265B76E00();
  v3 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken);
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_265B76E10();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_265B76C60();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  __swift_destroy_boxed_opaque_existential_1(v5);
  sub_265B76DD0();
  swift_allocObject();
  swift_weakInit();
  sub_265B76C80();

  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_265B421E4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t SummaryShelfLockupDescriptorsCache.__deallocating_deinit()
{
  sub_265B422F4(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_contentAvailabilityClient));
  v1 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_networkEvaluator));
  v2 = *(v0 + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_subscriptionToken);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_265B422F4(uint64_t a1)
{
  v2 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B42350()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AchievementProgressEvaluator.makeProgressUpdates(forTemplates:)(unint64_t a1)
{
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v1[4]);
  sub_265B76DF0();
  v8 = v1;
  v4 = sub_265B4DF9C(sub_265B4DF5C, v7, a1);
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v1[4]);
  sub_265B76DE0();
  return v4;
}

id sub_265B42574(void *a1)
{
  v3 = sub_265B76F60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = (MEMORY[0x28223BE20])();
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  v11 = [a1 progressExpression];
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  sub_265B77030();
  v14 = v13;

  v15 = [a1 goalExpression];
  if (!v15)
  {
LABEL_7:

LABEL_8:
    sub_265B76E20();
    v21 = a1;
    v22 = sub_265B76F50();
    v23 = sub_265B77270();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v57 = v25;
      *v24 = 136315138;
      v26 = [v21 uniqueName];
      if (v26)
      {
        v27 = v26;
        v28 = sub_265B77030();
        v30 = v29;
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      *&v59[0] = v28;
      *(&v59[0] + 1) = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
      v31 = sub_265B772E0();
      v33 = v32;

      v34 = sub_265B402B4(v31, v33, &v57);

      *(v24 + 4) = v34;
      _os_log_impl(&dword_265B3E000, v22, v23, "Progress: %s no progressExpression/goalExpression/canonicalUnit", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26676C0C0](v25, -1, -1);
      MEMORY[0x26676C0C0](v24, -1, -1);
    }

    (*(v4 + 8))(v8, v3);
    return 0;
  }

  v52 = v3;
  v53 = v14;
  v16 = v15;
  sub_265B77030();

  v17 = [a1 canonicalUnit];
  if (!v17)
  {

    v3 = v52;
    goto LABEL_7;
  }

  v51 = v17;
  sub_265B42B70();
  v18 = sub_265B77260();
  v19 = sub_265B77260();
  v20 = *v1;
  v50 = v18;
  if ([v18 expressionValueWithObject:v20 context:0])
  {
    sub_265B77360();
    swift_unknownObjectRelease();
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  v59[0] = v57;
  v59[1] = v58;
  v35 = v19;
  if ([v19 expressionValueWithObject:v20 context:0])
  {
    sub_265B77360();
    swift_unknownObjectRelease();
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
  }

  v36 = v51;
  v37 = v52;
  v57 = v55;
  v58 = v56;
  sub_265B42BBC(v59, &v55);
  if (!*(&v56 + 1))
  {
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:

    goto LABEL_26;
  }

  v38 = v54;
  sub_265B42BBC(&v57, &v55);
  if (!*(&v56 + 1))
  {
LABEL_24:

    sub_265B42C2C(&v55);
LABEL_26:
    sub_265B76E20();
    v46 = sub_265B76F50();
    v47 = sub_265B77270();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_265B3E000, v46, v47, "No progressValue or goalValue, returning nil", v48, 2u);
      MEMORY[0x26676C0C0](v48, -1, -1);
    }

    (*(v4 + 8))(v10, v37);
    sub_265B42C2C(&v57);
    sub_265B42C2C(v59);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_25;
  }

  v39 = v54;
  v40 = objc_opt_self();
  v41 = [v40 quantityWithUnit:v36 doubleValue:v38];
  v42 = [v40 quantityWithUnit:v36 doubleValue:v39];
  result = [a1 uniqueName];
  if (result)
  {
    v44 = result;

    v45 = [objc_allocWithZone(MEMORY[0x277CE8CC0]) initWithTemplateUniqueName:v44 progressQuantity:v41 goalQuantity:v42];

    sub_265B42C2C(&v57);
    sub_265B42C2C(v59);
    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_265B42B70()
{
  result = qword_280CEB648;
  if (!qword_280CEB648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CEB648);
  }

  return result;
}

uint64_t sub_265B42BBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B42C2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A18, &qword_265B78DD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B42C94(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_265B42D6C(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_265B42D24(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(result + 8);
  v5 = *result;
  v6 = v4;
  if (v2)
  {
    return v2(&v5);
  }

  return result;
}

uint64_t sub_265B42D6C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v31 = a6;
  v30 = a5;
  LODWORD(v10) = a2;
  v12 = sub_265B76F60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265B76E40();
  v17 = sub_265B76F50();
  v18 = sub_265B77280();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v29 = a8;
    v20 = v19;
    v21 = swift_slowAlloc();
    HIDWORD(v28) = v10;
    v10 = v21;
    v33 = v21;
    *v20 = 134218498;
    *(v20 + 4) = a3;
    *(v20 + 12) = 2080;
    v22 = sub_265B77440();
    v24 = sub_265B402B4(v22, v23, &v33);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v32;
    _os_log_impl(&dword_265B3E000, v17, v18, "Finished P->A conversion: %ld:%s:%lu", v20, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v25 = v10;
    LOBYTE(v10) = BYTE4(v28);
    MEMORY[0x26676C0C0](v25, -1, -1);
    MEMORY[0x26676C0C0](v20, -1, -1);
  }

  (*(v13 + 8))(v16, v12);
  v33 = a1;
  if (v10)
  {
    v26 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
    return sub_265B771D0();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
    return sub_265B771E0();
  }
}

uint64_t sub_265B42FC8()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  v2[39] = v0;

  v5 = v2[37];
  if (v0)
  {

    v6 = sub_265B57FD4;
    v7 = 0;
  }

  else
  {
    v9 = v2[35];
    v8 = v2[36];
    v10 = v2[34];
    v11 = v2[17];
    v2[40] = v2[14];

    (*(v9 + 8))(v8, v10);
    v6 = sub_265B4384C;
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t static ACHAchievementProgressUpdate.filterForNextEarnableProgressUpdates(from:templates:)(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v80 = 0;
  v81 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    v4 = a2;
    v40 = *(a1 + 32);
    v41 = v40 & 0x3F;
    v3 = ((1 << v40) + 63) >> 6;
    v12 = (8 * v3);

    if (v41 > 0xD)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v73[1] = v73;
      v74 = v3;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v75 = v73 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v75, v12);
      v76 = 0;
      v43 = 0;
      v44 = v2 + 56;
      v45 = 1 << *(v2 + 32);
      v46 = -1;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      v47 = v46 & *(v2 + 56);
      v48 = (v45 + 63) >> 6;
      v4 = 0x279BB9000uLL;
      while (v47)
      {
        v49 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
LABEL_47:
        v52 = v49 | (v43 << 6);
        v53 = *(v2 + 48);
        v77 = v52;
        v54 = *(v53 + 8 * v52);
        v55 = [v54 *(v4 + 3808)];
        v56 = sub_265B77030();
        v3 = v57;

        v84 = v56;
        v85 = v3;
        v82 = 45;
        v83 = 0xE100000000000000;
        sub_265B43C20();
        v12 = sub_265B77320();

        if (v12[2])
        {
          v78 = v54;
          v79 = v47;
          v3 = v12[4];
          v58 = v12[5];

          sub_265B76D80();
          v59 = sub_265B76D00();
          v12 = v60;
          if (v3 == v59 && v58 == v60)
          {

LABEL_61:

            v47 = v79;
LABEL_62:
            *&v75[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
            if (__OFADD__(v76++, 1))
            {
              __break(1u);
LABEL_65:
              v3 = sub_265B43EC4(v75, v74, v76, v2);
              goto LABEL_66;
            }
          }

          else
          {
            v62 = v4;
            v63 = v2;
            v64 = sub_265B77580();

            if (v64)
            {

LABEL_60:
              v12 = v58;
              v2 = v63;
              v4 = v62;
              goto LABEL_61;
            }

            v65 = sub_265B76CF0();
            v12 = v66;
            if (v3 == v65 && v58 == v66)
            {

              goto LABEL_60;
            }

            v67 = sub_265B77580();

            v2 = v63;
            v4 = v62;
            v47 = v79;
            if (v67)
            {
              goto LABEL_62;
            }
          }
        }

        else
        {
        }
      }

      v50 = v43;
      while (1)
      {
        v43 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        if (v43 >= v48)
        {
          goto LABEL_65;
        }

        v51 = *(v44 + 8 * v43);
        ++v50;
        if (v51)
        {
          v49 = __clz(__rbit64(v51));
          v47 = (v51 - 1) & v51;
          goto LABEL_47;
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v72 = swift_slowAlloc();
        v3 = sub_265B66B08(v72, v3, v2, sub_265B66740, 0);
        MEMORY[0x26676C0C0](v72, -1, -1);
        goto LABEL_67;
      }
    }
  }

  v3 = MEMORY[0x277D84FA0];
  v87 = MEMORY[0x277D84FA0];

  v4 = sub_265B773A0();
  v5 = sub_265B773F0();
  if (v5)
  {
    v6 = v5;
    v7 = sub_265B66CFC();
    v8 = v6;
    v9 = MEMORY[0x277D84F68];
    v10 = 0x279BB9000uLL;
    v2 = 45;
    do
    {
      v84 = v8;
      swift_dynamicCast();
      v19 = [v86 *(v10 + 3808)];
      v20 = sub_265B77030();
      v22 = v21;

      v84 = v20;
      v85 = v22;
      v82 = 45;
      v83 = 0xE100000000000000;
      sub_265B43C20();
      v23 = sub_265B77320();

      if (v23[2])
      {
        v24 = v23[4];
        v25 = v23[5];

        sub_265B76D80();
        if (v24 == sub_265B76D00() && v25 == v26)
        {
          goto LABEL_17;
        }

        v28 = v7;
        v29 = v10;
        v30 = v9;
        v31 = sub_265B77580();

        if (v31)
        {
          v9 = v30;
          v10 = v29;
          v7 = v28;
          v2 = 45;
          goto LABEL_18;
        }

        if (v24 == sub_265B76CF0() && v25 == v38)
        {
          v9 = v30;
          v10 = v29;
          v7 = v28;
          v2 = 45;
LABEL_17:

LABEL_18:

LABEL_19:
          v32 = v86;
          v33 = *(v3 + 16);
          if (*(v3 + 24) <= v33)
          {
            sub_265B4FB34(v33 + 1);
          }

          v3 = v87;
          v11 = *(v87 + 40);
          v12 = v86;
          v13 = sub_265B772C0();
          v14 = v87 + 56;
          v15 = -1 << *(v87 + 32);
          v16 = v13 & ~v15;
          v17 = v16 >> 6;
          if (((-1 << v16) & ~*(v87 + 56 + 8 * (v16 >> 6))) != 0)
          {
            v18 = __clz(__rbit64((-1 << v16) & ~*(v87 + 56 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = 0;
            v35 = (63 - v15) >> 6;
            do
            {
              if (++v17 == v35 && (v34 & 1) != 0)
              {
                __break(1u);
                goto LABEL_68;
              }

              v36 = v17 == v35;
              if (v17 == v35)
              {
                v17 = 0;
              }

              v34 |= v36;
              v37 = *(v14 + 8 * v17);
            }

            while (v37 == -1);
            v18 = __clz(__rbit64(~v37)) + (v17 << 6);
          }

          *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
          *(*(v3 + 48) + 8 * v18) = v32;
          ++*(v3 + 16);
          goto LABEL_7;
        }

        v39 = sub_265B77580();

        v9 = v30;
        v10 = v29;
        v7 = v28;
        v2 = 45;
        if (v39)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

LABEL_7:
      v8 = sub_265B773F0();
    }

    while (v8);
  }

LABEL_66:
  v4 = v81;
LABEL_67:

  v69 = sub_265B43F30(v3, v4);

  v70 = *MEMORY[0x277D85DE8];
  return v69;
}

uint64_t sub_265B4384C()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[17];
  v4 = OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_state;
  swift_beginAccess();
  sub_265B43BBC(v3 + v4, v1);
  if (swift_getEnumCaseMultiPayload())
  {
    v5 = v0[40];
    v6 = v0[29];

    sub_265B422F4(v6);
  }

  else
  {
    v7 = v0[33];
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    v11 = v0[18];
    v12 = *v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035AA8, &qword_265B78FF8);
    (*(v8 + 32))(v7, &v10[*(v13 + 48)], v9);
    v14 = sub_265B76360();
    v15 = v0[40];
    if (v14)
    {
      v17 = v0[26];
      v16 = v0[27];
      v18 = v0[24];
      v19 = v0[25];
      v20 = v0[23];
      sub_265B76E50();
      sub_265B76F40();
      (*(v18 + 8))(v19, v20);
      *v16 = v15;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();

      sub_265B43E60(v16, v3 + v4);
      swift_endAccess();
      v21 = *(v12 + 16);
      if (v21)
      {
        v22 = v0[20];
        v25 = *(v22 + 16);
        v23 = v22 + 16;
        v24 = v25;
        v26 = v12 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
        v27 = *(v23 + 56);
        do
        {
          v28 = v0[40];
          v29 = v0[22];
          v30 = v0[19];
          v24(v29, v26, v30);
          v0[16] = v28;

          sub_265B771E0();
          (*(v23 - 8))(v29, v30);
          v26 += v27;
          --v21;
        }

        while (v21);
      }

      v34 = v0[40];
      v35 = v0[33];
      v36 = v0[30];
      v37 = v0[31];
      v38 = (v0[17] + OBJC_IVAR____TtC21SeymourClientServices34SummaryShelfLockupDescriptorsCache_eventHub);
      v39 = *v38;
      v40 = v38[1];
      swift_getObjectType();
      sub_265B43ED8();
      sub_265B76C70();

      (*(v37 + 8))(v35, v36);
    }

    else
    {
      v31 = v0[33];
      v33 = v0[30];
      v32 = v0[31];

      (*(v32 + 8))(v31, v33);
    }
  }

  v41 = v0[36];
  v42 = v0[32];
  v43 = v0[33];
  v45 = v0[28];
  v44 = v0[29];
  v46 = v0[27];
  v47 = v0[25];
  v49 = v0[21];
  v48 = v0[22];

  v50 = v0[1];

  return v50();
}

uint64_t sub_265B43BBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_265B43C20()
{
  result = qword_280CEB660;
  if (!qword_280CEB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB660);
  }

  return result;
}

uint64_t sub_265B43C74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_265B77420();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(v11 + 40);
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_265B772C0();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v11 + 48) + 8 * v23) = v19;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_265B43E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryShelfLockupDescriptorsCache.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_265B43ED8()
{
  result = qword_280CEB668[0];
  if (!qword_280CEB668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CEB668);
  }

  return result;
}

uint64_t sub_265B43F30(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_265B44130(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];

  sub_265B773A0();
  if (sub_265B773F0())
  {
    sub_265B66CFC();
    do
    {
      swift_dynamicCast();
      if (ACHAchievementProgressUpdate.isNextEarnable(for:)(a2))
      {
        v4 = *(v3 + 16);
        if (*(v3 + 24) <= v4)
        {
          sub_265B4FB34(v4 + 1);
        }

        v3 = v17;
        v5 = *(v17 + 40);
        result = sub_265B772C0();
        v7 = v17 + 56;
        v8 = -1 << *(v17 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v17 + 56 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v10 == v13;
            if (v10 == v13)
            {
              v10 = 0;
            }

            v12 |= v14;
            v15 = *(v7 + 8 * v10);
          }

          while (v15 == -1);
          v11 = __clz(__rbit64(~v15)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v17 + 48) + 8 * v11) = v16;
        ++*(v17 + 16);
      }

      else
      {
      }
    }

    while (sub_265B773F0());
  }

  return v3;
}

uint64_t sub_265B44130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = (8 * v8);

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v26 = v8;
    v27 = v3;
    v25 = &v25;
    MEMORY[0x28223BE20](v10);
    v28 = &v25 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v9);
    v29 = 0;
    v11 = 0;
    v3 = a1 + 56;
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v8 = (v12 + 63) >> 6;
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_12:
      v18 = v15 | (v11 << 6);
      v9 = *(*(a1 + 48) + 8 * v18);
      v19 = ACHAchievementProgressUpdate.isNextEarnable(for:)(a2);

      if (v19)
      {
        *&v28[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_265B43EC4(v28, v26, v29, a1);

          goto LABEL_17;
        }
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_16;
      }

      v17 = *(v3 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();

  v21 = sub_265B66A6C(v24, v8, a1, a2);

  MEMORY[0x26676C0C0](v24, -1, -1);

LABEL_17:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

uint64_t sub_265B443A8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t ACHAchievementProgressUpdate.isNextEarnable(for:)(uint64_t a1)
{
  v3 = v1;
  v5 = sub_265B76F60();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v84 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v83 = &v81 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v82 = &v81 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v81 = &v81 - v14;
  v85 = v13;
  v86 = v15;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_265B773A0();
    sub_265B4E9FC();
    sub_265B4EA48();
    sub_265B77250();
    a1 = v93[1];
    v16 = v93[2];
    v17 = v93[3];
    v18 = v93[4];
    v19 = v93[5];
  }

  else
  {
    v20 = -1 << *(a1 + 32);
    v16 = a1 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(a1 + 56);

    v18 = 0;
  }

  v87 = v17;
  v23 = (v17 + 64) >> 6;
  for (i = a1; ; a1 = i)
  {
    if (a1 < 0)
    {
      v29 = sub_265B773F0();
      if (!v29 || (v92 = v29, sub_265B4E9FC(), swift_dynamicCast(), v28 = v93[0], v26 = v18, v27 = v19, !v93[0]))
      {
LABEL_27:
        sub_265B45764();
        v39 = v84;
        sub_265B76E20();
        v40 = v3;
        v41 = sub_265B76F50();
        v42 = sub_265B77280();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v93[0] = v44;
          *v43 = 136315138;
          v45 = [v40 templateUniqueName];
          v46 = sub_265B77030();
          v48 = v47;

          v49 = sub_265B402B4(v46, v48, v93);

          *(v43 + 4) = v49;
          _os_log_impl(&dword_265B3E000, v41, v42, "No matching template for %s, marking progress update as not earnable", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x26676C0C0](v44, -1, -1);
          MEMORY[0x26676C0C0](v43, -1, -1);
        }

LABEL_30:
        (*(v86 + 8))(v39, v85);
        return 0;
      }
    }

    else
    {
      v24 = v18;
      v25 = v19;
      v26 = v18;
      if (!v19)
      {
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v26 >= v23)
          {
            goto LABEL_27;
          }

          v25 = *(v16 + 8 * v26);
          ++v24;
          if (v25)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_44;
      }

LABEL_15:
      v27 = (v25 - 1) & v25;
      v28 = *(*(a1 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
      if (!v28)
      {
        goto LABEL_27;
      }
    }

    v91 = v28;
    v30 = [v28 uniqueName];
    v88 = v18;
    v89 = v19;
    if (v30)
    {
      v31 = v30;
      v32 = sub_265B77030();
      v17 = v33;
    }

    else
    {
      v32 = 0;
      v17 = 0;
    }

    v2 = v3;
    v34 = [v3 templateUniqueName];
    v35 = sub_265B77030();
    v37 = v36;

    if (!v17)
    {

      v3 = v2;
      goto LABEL_9;
    }

    if (v32 == v35 && v17 == v37)
    {
      break;
    }

    v38 = sub_265B77580();

    v3 = v2;
    if (v38)
    {
      goto LABEL_33;
    }

LABEL_9:

    v18 = v26;
    v19 = v27;
  }

  v3 = v2;
LABEL_33:
  sub_265B45764();
  v51 = v91;
  v52 = sub_265B44DA0();
  v53 = [v3 progressQuantity];
  if (!v53 || (v54 = v53, sub_265B45A6C(), v56 = v55, v54, (v57 = [v3 goalQuantity]) == 0))
  {
    v39 = v82;
    sub_265B76E20();
    v70 = v3;
    v71 = sub_265B76F50();
    v72 = sub_265B77280();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = v51;
      v75 = swift_slowAlloc();
      v93[0] = v75;
      *v73 = 136315138;
      v76 = [v70 templateUniqueName];
      v77 = sub_265B77030();
      v79 = v78;

      v80 = sub_265B402B4(v77, v79, v93);

      *(v73 + 4) = v80;
      _os_log_impl(&dword_265B3E000, v71, v72, "Required values not found for earnable evaluation of %s", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x26676C0C0](v75, -1, -1);
      MEMORY[0x26676C0C0](v73, -1, -1);
    }

    else
    {
    }

    goto LABEL_30;
  }

  v58 = v57;
  sub_265B45A6C();
  v60 = v59;

  if (v56 < v52 || v56 >= v60)
  {

    return 0;
  }

  v2 = v81;
  sub_265B76E20();
  v61 = v3;
  v17 = sub_265B76F50();
  v62 = sub_265B77280();

  if (os_log_type_enabled(v17, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v93[0] = v64;
    *v63 = 136315906;
    v65 = [v61 templateUniqueName];
    v66 = sub_265B77030();
    v68 = v67;

    v69 = sub_265B402B4(v66, v68, v93);

    *(v63 + 4) = v69;
    *(v63 + 12) = 2048;
    *(v63 + 14) = v52;
    *(v63 + 22) = 2048;
    *(v63 + 24) = v56;
    *(v63 + 32) = 2048;
    *(v63 + 34) = v60;
    _os_log_impl(&dword_265B3E000, v17, v62, "Found next earnable progress update (%s) with prerequisiteGoalValue: %ld progressValue: %ld goalValue: %ld", v63, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x26676C0C0](v64, -1, -1);
    MEMORY[0x26676C0C0](v63, -1, -1);

    (*(v86 + 8))(v81, v85);
    return 1;
  }

LABEL_44:

  (*(v86 + 8))(v2, v85);
  return 1;
}

uint64_t sub_265B44DA0()
{
  v2 = v0;
  v3 = sub_265B76F60();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v100 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v100 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v100 - v15;
  v17 = [v0 prerequisiteTemplateName];
  v107 = v3;
  if (!v17)
  {
LABEL_7:
    v103 = v1;
    sub_265B76E20();
    v26 = v2;
    v27 = sub_265B76F50();
    v28 = sub_265B77280();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v104[0] = v30;
      *v29 = 136315138;
      v31 = [v26 uniqueName];
      if (v31)
      {
        v32 = v31;
        v33 = sub_265B77030();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v105 = v33;
      v106 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
      v52 = sub_265B772E0();
      v54 = v53;

      v55 = sub_265B402B4(v52, v54, v104);

      *(v29 + 4) = v55;
      _os_log_impl(&dword_265B3E000, v27, v28, "No prerequisiteNameComponents for %s, returning 0", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26676C0C0](v30, -1, -1);
      MEMORY[0x26676C0C0](v29, -1, -1);

      (*(v4 + 8))(v8, v107);
    }

    else
    {

      (*(v4 + 8))(v8, v3);
    }

    return 0;
  }

  v101 = v11;
  v102 = v4;
  v18 = v17;
  v19 = sub_265B77030();
  v21 = v20;

  v105 = v19;
  v106 = v21;
  v104[0] = 45;
  v104[1] = 0xE100000000000000;
  sub_265B43C20();
  v22 = sub_265B77320();

  if (!v22[2])
  {

    v4 = v102;
    v3 = v107;
    goto LABEL_7;
  }

  v23 = v22[4];
  v24 = v22[5];
  sub_265B76D80();

  if (v23 == sub_265B76D00() && v24 == v25)
  {

LABEL_12:

    if (v22[2] < 3uLL)
    {
    }

    else
    {
      v37 = v22[8];
      v38 = v22[9];

      result = sub_265B4576C(v37, v38);
      if ((v40 & 1) == 0)
      {
        return result;
      }
    }

    sub_265B76E20();
    v41 = v2;
    v42 = sub_265B76F50();
    v43 = sub_265B77280();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v104[0] = v45;
      *v44 = 136315138;
      v46 = [v41 uniqueName];
      v47 = v102;
      if (v46)
      {
        v48 = v46;
        v49 = sub_265B77030();
        v51 = v50;
      }

      else
      {
        v49 = 0;
        v51 = 0;
      }

      v105 = v49;
      v106 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
      v61 = sub_265B772E0();
      v63 = v62;

      v64 = sub_265B402B4(v61, v63, v104);

      *(v44 + 4) = v64;
      _os_log_impl(&dword_265B3E000, v42, v43, "Could not fetch previous goal value for modality award %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x26676C0C0](v45, -1, -1);
      MEMORY[0x26676C0C0](v44, -1, -1);

      (*(v47 + 8))(v16, v107);
    }

    else
    {

      (*(v102 + 8))(v16, v107);
    }

    goto LABEL_32;
  }

  v103 = v1;
  v36 = sub_265B77580();

  if (v36)
  {
    goto LABEL_12;
  }

  if (v23 != sub_265B76CF0() || v24 != v56)
  {
    v57 = sub_265B77580();

    if (v57)
    {
      goto LABEL_27;
    }

    if (v23 != sub_265B76D40() || v24 != v78)
    {
      v79 = sub_265B77580();

      if (v79)
      {
        return 0;
      }

      v84 = v101;
      sub_265B76E20();
      v85 = v2;
      v86 = sub_265B76F50();
      v87 = sub_265B77280();

      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        v104[0] = v89;
        *v88 = 136315138;
        v90 = [v85 uniqueName];
        v91 = v102;
        if (v90)
        {
          v92 = v90;
          v93 = sub_265B77030();
          v95 = v94;
        }

        else
        {
          v93 = 0;
          v95 = 0;
        }

        v105 = v93;
        v106 = v95;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
        v96 = sub_265B772E0();
        v98 = v97;

        v99 = sub_265B402B4(v96, v98, v104);

        *(v88 + 4) = v99;
        _os_log_impl(&dword_265B3E000, v86, v87, "Not a lifetime or modality lifetime award: %s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v89);
        MEMORY[0x26676C0C0](v89, -1, -1);
        MEMORY[0x26676C0C0](v88, -1, -1);

        (*(v91 + 8))(v101, v107);
      }

      else
      {

        (*(v102 + 8))(v84, v107);
      }

      goto LABEL_32;
    }

    return 0;
  }

LABEL_27:

  if (v22[2] < 2uLL)
  {
  }

  else
  {
    v58 = v22[6];
    v59 = v22[7];

    result = sub_265B4576C(v58, v59);
    if ((v60 & 1) == 0)
    {
      return result;
    }
  }

  sub_265B76E20();
  v67 = v2;
  v68 = sub_265B76F50();
  v69 = sub_265B77280();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v104[0] = v71;
    *v70 = 136315138;
    v72 = [v67 uniqueName];
    v73 = v102;
    if (v72)
    {
      v74 = v72;
      v75 = sub_265B77030();
      v77 = v76;
    }

    else
    {
      v75 = 0;
      v77 = 0;
    }

    v105 = v75;
    v106 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
    v80 = sub_265B772E0();
    v82 = v81;

    v83 = sub_265B402B4(v80, v82, v104);

    *(v70 + 4) = v83;
    _os_log_impl(&dword_265B3E000, v68, v69, "Could not fetch previous goal value for modality award %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x26676C0C0](v71, -1, -1);
    MEMORY[0x26676C0C0](v70, -1, -1);

    (*(v73 + 8))(v14, v107);
  }

  else
  {

    (*(v102 + 8))(v14, v107);
  }

LABEL_32:
  v65 = sub_265B764D0();
  sub_265B5046C();
  swift_allocError();
  (*(*(v65 - 8) + 104))(v66, *MEMORY[0x277D50D10], v65);
  return swift_willThrow();
}

uint64_t sub_265B4576C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_265B77460();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_265B64F1C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_265B45A6C()
{
  v1 = v0;
  v2 = sub_265B76F60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() countUnit];
  [v1 doubleValueForUnit_];
  v9 = v8;

  if (fabs(v9) >= 9.22337204e18)
  {
    sub_265B76E20();
    v10 = v1;
    v11 = sub_265B76F50();
    v12 = sub_265B77280();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v13 = 136315394;
      v14 = v10;
      v15 = [v14 description];
      v16 = sub_265B77030();
      v18 = v17;

      v19 = sub_265B402B4(v16, v18, &v22);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v9;
      _os_log_impl(&dword_265B3E000, v11, v12, "HKQuantity %s had out of bounds doubleValue: %f, returning 0", v13, 0x16u);
      v20 = v21;
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x26676C0C0](v20, -1, -1);
      MEMORY[0x26676C0C0](v13, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
  }

  else if (v9 <= -9.22337204e18)
  {
    __break(1u);
  }
}

uint64_t sub_265B45CD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B45D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265B76520();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_265B45E10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_265B76520();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_265B45F18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_265B45F60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B45FF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_265B4609C()
{
  v1 = sub_265B76390();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B46168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B461FC()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B4623C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B46280()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B462B8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B462F8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B46338()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B46378()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B463B8()
{
  MEMORY[0x26676C1B0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B463F0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B46430()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B46474()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B464B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B464F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B46580()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B465B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B465F0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_265B46630()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B46678()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_265B466B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64) + v3;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_265B46734()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_265B766B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_265B46878()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265B468B8()
{
  v1 = sub_265B766B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_265B46980()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_265B469D8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t static AccountChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t getEnumTagSinglePayload for AccountChanged(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AccountChanged(_WORD *result, int a2, int a3)
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

void type metadata accessor for HTTPCookiePropertyKey()
{
  if (!qword_280035740)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_280035740);
    }
  }
}

uint64_t sub_265B46B7C()
{
  v1 = *v0;
  v2 = sub_265B77030();
  v3 = MEMORY[0x26676B4C0](v2);

  return v3;
}

uint64_t sub_265B46BB8()
{
  v1 = *v0;
  sub_265B77030();
  sub_265B77070();
}

uint64_t sub_265B46C0C()
{
  v1 = *v0;
  sub_265B77030();
  sub_265B77600();
  sub_265B77070();
  v2 = sub_265B77620();

  return v2;
}

uint64_t sub_265B46C88(uint64_t a1, id *a2)
{
  result = sub_265B77010();
  *a2 = 0;
  return result;
}

uint64_t sub_265B46D00(uint64_t a1, id *a2)
{
  v3 = sub_265B77020();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_265B46D80@<X0>(uint64_t *a1@<X8>)
{
  sub_265B77030();
  v2 = sub_265B77000();

  *a1 = v2;
  return result;
}

uint64_t sub_265B46DC4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_265B77030();
  v6 = v5;
  if (v4 == sub_265B77030() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_265B77580();
  }

  return v9 & 1;
}

uint64_t sub_265B46E4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_265B77000();

  *a2 = v5;
  return result;
}

uint64_t sub_265B46E94@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_265B77030();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_265B46EC0(uint64_t a1)
{
  v2 = sub_265B46FF4(&qword_280035760);
  v3 = sub_265B46FF4(&qword_280035768);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_265B46FF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTTPCookiePropertyKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WristState.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

uint64_t sub_265B470DC()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

uint64_t sub_265B47150()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B47198()
{
  result = qword_280035830;
  if (!qword_280035830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WristState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WristState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t WristStateObserver.__allocating_init(eventHub:)()
{
  swift_unknownObjectRelease();

  return swift_allocObject();
}

uint64_t WristStateObserver.queryState()()
{
  sub_265B47454();
  v0 = swift_allocError();
  *(swift_allocObject() + 16) = v0;

  return sub_265B76BC0();
}

unint64_t sub_265B47454()
{
  result = qword_280035838;
  if (!qword_280035838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035838);
  }

  return result;
}

uint64_t sub_265B474A8()
{
  sub_265B47454();
  v0 = swift_allocError();
  *(swift_allocObject() + 16) = v0;

  return sub_265B76BC0();
}

id sub_265B4759C()
{
  v1 = *(v0 + 16);
  swift_willThrow();
  return v1;
}

uint64_t MultiUserGroupActivity.activity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265B76520();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MultiUserGroupActivity.activityMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MultiUserGroupActivity() + 20);

  return sub_265B476E4(v3, a1);
}

uint64_t sub_265B476E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t MultiUserGroupActivity.activityMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MultiUserGroupActivity() + 20);

  return sub_265B477E0(a1, v3);
}

uint64_t sub_265B477E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MultiUserGroupActivity.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MultiUserGroupActivity() + 20);
  v5 = sub_265B76EF0();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = sub_265B76520();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2, a1, v6);
}

uint64_t MultiUserGroupActivity.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for MultiUserGroupActivity();
  sub_265B476E4(v1 + *(v7 + 20), v6);
  v8 = sub_265B76EF0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_265B47A7C(v6);
  return sub_265B47AE4();
}

uint64_t sub_265B47A7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B47AE4()
{
  v0 = sub_265B76F30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A0, &qword_265B78680);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - v5;
  v7 = sub_265B76E90();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_265B76EE0();
  v9 = sub_265B76510();
  MEMORY[0x26676B2B0](v9);
  sub_265B76E80();
  sub_265B76EC0();
  sub_265B764E0();
  v10 = sub_265B762E0();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  sub_265B76EA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A8, &qword_265B78688);
  v11 = *(v1 + 72);
  v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_265B78400;
  sub_265B76F20();
  v15[1] = v13;
  sub_265B412BC(&qword_2800358B0, MEMORY[0x277CCB270]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358B8, &unk_265B78690);
  sub_265B48A60();
  sub_265B77370();
  return sub_265B76EB0();
}

unint64_t sub_265B47D90()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x7974697669746361;
  }

  *v0;
  return result;
}

uint64_t sub_265B47DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xE800000000000000;
  if (v6 || (sub_265B77580() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265B79D40 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_265B77580();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_265B47ECC(uint64_t a1)
{
  v2 = sub_265B48144();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265B47F08(uint64_t a1)
{
  v2 = sub_265B48144();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MultiUserGroupActivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035848, &qword_265B78418);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265B48144();
  sub_265B77660();
  v11[15] = 0;
  sub_265B76520();
  sub_265B412BC(&qword_280035858, MEMORY[0x277D51510]);
  sub_265B77540();
  if (!v1)
  {
    v9 = *(type metadata accessor for MultiUserGroupActivity() + 20);
    v11[14] = 1;
    sub_265B76EF0();
    sub_265B412BC(&qword_280035860, MEMORY[0x277CCB160]);
    sub_265B77530();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_265B48144()
{
  result = qword_280035850;
  if (!qword_280035850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035850);
  }

  return result;
}

uint64_t MultiUserGroupActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v25 - v5;
  v29 = sub_265B76520();
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035868, &unk_265B78420);
  v28 = *(v30 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v30);
  v12 = &v25 - v11;
  v13 = type metadata accessor for MultiUserGroupActivity();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 28);
  v19 = sub_265B76EF0();
  v20 = *(*(v19 - 8) + 56);
  v32 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265B48144();
  v22 = v31;
  sub_265B77650();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_265B47A7C(&v17[v32]);
  }

  else
  {
    v23 = v27;
    v34 = 0;
    sub_265B412BC(&qword_280035870, MEMORY[0x277D51510]);
    sub_265B77520();
    (*(v23 + 32))(v17, v9, v29);
    v33 = 1;
    sub_265B412BC(&qword_280035878, MEMORY[0x277CCB160]);
    sub_265B77510();
    (*(v28 + 8))(v12, v30);
    sub_265B477E0(v6, &v17[v32]);
    sub_265B485AC(v17, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_265B48610(v17);
  }
}

uint64_t sub_265B485AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultiUserGroupActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B48610(uint64_t a1)
{
  v2 = type metadata accessor for MultiUserGroupActivity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265B48688(uint64_t a1, uint64_t a2)
{
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035840, &qword_265B78410) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  sub_265B476E4(v2 + *(a2 + 20), v7);
  v8 = sub_265B76EF0();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_265B47A7C(v7);
    sub_265B47AE4();
  }

  else
  {
    (*(v9 + 32))(a1, v7, v8);
  }

  v10 = *(v3 + 8);

  return v10();
}

uint64_t MultiUserGroupActivity.hashValue.getter()
{
  sub_265B77600();
  _s21SeymourClientServices22MultiUserGroupActivityV4hash4intoys6HasherVz_tF_0();
  return sub_265B77620();
}

uint64_t sub_265B48858()
{
  sub_265B77600();
  _s21SeymourClientServices22MultiUserGroupActivityV4hash4intoys6HasherVz_tF_0();
  return sub_265B77620();
}

uint64_t sub_265B4889C()
{
  sub_265B77600();
  _s21SeymourClientServices22MultiUserGroupActivityV4hash4intoys6HasherVz_tF_0();
  return sub_265B77620();
}

unint64_t sub_265B4895C()
{
  result = qword_280035888;
  if (!qword_280035888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035888);
  }

  return result;
}

unint64_t sub_265B489B4()
{
  result = qword_280035890;
  if (!qword_280035890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035890);
  }

  return result;
}

unint64_t sub_265B48A0C()
{
  result = qword_280035898;
  if (!qword_280035898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035898);
  }

  return result;
}

unint64_t sub_265B48A60()
{
  result = qword_2800358C0;
  if (!qword_2800358C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800358B8, &unk_265B78690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800358C0);
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

SeymourClientServices::AccountState_optional __swiftcall AccountState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_265B48B40()
{
  result = qword_2800358C8[0];
  if (!qword_2800358C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2800358C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AccountState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_265B48D00(uint64_t a1)
{
  v2 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t RequestCoalescer.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t RequestCoalescer.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

uint64_t RequestCoalescer.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RequestCoalescer.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t RequestCoalescer.run(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_265B48E44, v3, 0);
}

uint64_t sub_265B48E44()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 48) + 80);
  type metadata accessor for RequestCoalescer();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 24);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_265B48F6C;
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, v1, WitnessTable, 0x293A5F286E7572, 0xE700000000000000, sub_265B4940C, v4, v2);
}

uint64_t sub_265B48F6C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x2822009F8](sub_265B490A8, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_265B490A8()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_265B49124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v9 = sub_265B771F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035958, &qword_265B78FD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v28 - v16;
  if (a2[14])
  {
    v29 = a2[14];
    (*(v10 + 16))(v13, a1, v9);
    sub_265B771B0();

    sub_265B771A0();
    v18 = a2[14];
    a2[14] = v29;
  }

  else
  {
    sub_265B77560();
    v20 = *(v10 + 72);
    v21 = *(v10 + 80);
    swift_allocObject();
    v22 = sub_265B77160();
    (*(v10 + 16))(v23, a1, v9);
    sub_265B771B0();
    v24 = a2[14];
    a2[14] = v22;

    v25 = sub_265B77230();
    (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
    type metadata accessor for RequestCoalescer();
    WitnessTable = swift_getWitnessTable();
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = WitnessTable;
    v27[4] = a3;
    v27[5] = a4;
    v27[6] = a2;
    swift_retain_n();

    sub_265B566AC(0, 0, v17, &unk_265B78878, v27);
  }
}

uint64_t sub_265B49418(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v8 = *(*a6 + 80);
  v6[3] = v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v9 = sub_265B77640();
  v6[4] = v9;
  v10 = *(v9 - 8);
  v6[5] = v10;
  v11 = *(v10 + 64) + 15;
  v6[6] = swift_task_alloc();
  v12 = *(v8 - 8);
  v6[7] = v12;
  v13 = *(v12 + 64) + 15;
  v14 = swift_task_alloc();
  v6[8] = v14;
  v18 = (a4 + *a4);
  v15 = a4[1];
  v16 = swift_task_alloc();
  v6[9] = v16;
  *v16 = v6;
  v16[1] = sub_265B49604;

  return v18(v14);
}

uint64_t sub_265B49604()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_265B4982C;
  }

  else
  {
    v6 = sub_265B49730;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_265B49730()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];
  (*(v2 + 16))(v3, v1, v6);
  swift_storeEnumTagMultiPayload();
  sub_265B498FC(v3);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);
  v8 = v0[8];
  v9 = v0[6];

  v10 = v0[1];

  return v10();
}

uint64_t sub_265B4982C()
{
  v1 = v0[10];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v6 = v1;
  sub_265B498FC(v2);

  (*(v3 + 8))(v2, v4);
  v7 = v0[8];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_265B498FC(uint64_t result)
{
  v2 = *v1;
  if (v1[14])
  {
    v1[14] = 0;
    MEMORY[0x28223BE20](result);
    v4 = *(v3 + 80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
    sub_265B771F0();
    sub_265B771B0();
    swift_getWitnessTable();
    sub_265B77110();
  }

  return result;
}

uint64_t RequestCoalescer.waitForActiveRequest()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_265B49A6C, v1, 0);
}

uint64_t sub_265B49A6C()
{
  v1 = v0[3];
  v2 = *(v0[4] + 80);
  type metadata accessor for RequestCoalescer();
  WitnessTable = swift_getWitnessTable();
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_265B49B78;
  v6 = v0[2];
  v7 = v0[3];

  return MEMORY[0x2822008A0](v6, v1, WitnessTable, 0xD000000000000016, 0x8000000265B79D60, sub_265B49E3C, v7, v2);
}

uint64_t sub_265B49B78()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_265B49CAC, v4, 0);
  }

  else
  {
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_265B49CC4(uint64_t a1, void *a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v5 = sub_265B771F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  if (a2[14])
  {
    v12 = a2[14];
    (*(v8 + 16))(&v11 - v7, a1, v5);
    sub_265B771B0();

    sub_265B771A0();
    v9 = a2[14];
    a2[14] = v12;
  }

  else
  {
    sub_265B4A2B8();
    v12 = swift_allocError();
    return sub_265B771D0();
  }
}

uint64_t sub_265B49EC0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_265B49F14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_265B49F64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_265B49FB8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_265B49FD0(void *result, int a2)
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

uint64_t sub_265B4A008(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280035950, &unk_265B78860);
  v3 = sub_265B771F0();
  return sub_265B4A07C(a2, v3);
}

uint64_t sub_265B4A07C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v6);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_265B77640();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v23 - v19;
  (*(v21 + 16))(&v23 - v19, a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v20, v10);
    return sub_265B771D0();
  }

  else
  {
    (*(v4 + 32))(v8, v20, v3);
    return sub_265B771E0();
  }
}

unint64_t sub_265B4A2B8()
{
  result = qword_280CEB860;
  if (!qword_280CEB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB860);
  }

  return result;
}

uint64_t sub_265B4A30C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_265B41970;

  return sub_265B49418(a1, v4, v5, v6, v7, v8);
}

uint64_t WristMonitorError.hashValue.getter()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

uint64_t sub_265B4A49C()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

uint64_t sub_265B4A508()
{
  sub_265B77600();
  MEMORY[0x26676B9F0](0);
  return sub_265B77620();
}

unint64_t sub_265B4A54C()
{
  result = qword_280035960;
  if (!qword_280035960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035960);
  }

  return result;
}

unint64_t sub_265B4A5B4()
{
  result = qword_280035968;
  if (!qword_280035968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035968);
  }

  return result;
}

uint64_t sub_265B4A638(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_265B4A6B4();
  v5 = sub_265B47454();

  return a3(a1, v4, v5);
}

unint64_t sub_265B4A6B4()
{
  result = qword_280035970;
  if (!qword_280035970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035970);
  }

  return result;
}

id AchievementWeeklyStreak.earnedThisWeek.getter()
{
  v0 = sub_265B76350();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v22 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  sub_265B76340();
  v11 = objc_opt_self();
  result = [v11 hk_gregorianCalendar];
  if (result)
  {
    v13 = result;
    v14 = *MEMORY[0x277CCE2F8];
    v15 = sub_265B76320();
    v16 = [v13 hk:v14 startOfWeekWithFirstWeekday:v15 beforeDate:0 addingWeeks:?];

    sub_265B76330();
    v17 = *(v1 + 8);
    v17(v8, v0);
    sub_265B766D0();
    result = [v11 hk_gregorianCalendar];
    if (result)
    {
      v18 = result;
      v19 = sub_265B76320();
      v20 = sub_265B76320();
      v21 = [v18 hk:v19 isDate:0 withinNumberOfCalendarDays:v20 ofDate:?];

      v17(v5, v0);
      v17(v10, v0);
      return v21;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static WristStateChanged.deliveryStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D4F150];
  v3 = sub_265B76CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t AccountType.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B4AA8C()
{
  result = qword_280035978;
  if (!qword_280035978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035978);
  }

  return result;
}

uint64_t AccountError.hashValue.getter()
{
  v1 = *v0;
  sub_265B77600();
  MEMORY[0x26676B9F0](v1);
  return sub_265B77620();
}

unint64_t sub_265B4AB7C()
{
  result = qword_280035980;
  if (!qword_280035980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035980);
  }

  return result;
}

unint64_t sub_265B4ABD4()
{
  result = qword_280035988;
  if (!qword_280035988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035988);
  }

  return result;
}

uint64_t sub_265B4AC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, unint64_t, unint64_t))
{
  v4 = sub_265B4AE68();
  v5 = sub_265B4ACC0();

  return a3(a1, v4, v5);
}

unint64_t sub_265B4ACC0()
{
  result = qword_280035990;
  if (!qword_280035990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265B4AE68()
{
  result = qword_280035998;
  if (!qword_280035998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035998);
  }

  return result;
}

uint64_t sub_265B4AEC4(void *a1)
{
  v55 = sub_265B769F0();
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_265B76750();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v53);
  v52 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_265B76580();
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v51);
  v49 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 itemsMap];
  sub_265B4C97C();
  v12 = sub_265B76FC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C8, &qword_265B78D28);
  result = sub_265B774D0();
  v14 = result;
  v15 = 0;
  v17 = v12 + 64;
  v16 = *(v12 + 64);
  v56 = v12;
  v18 = 1 << *(v12 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v47 = *MEMORY[0x277D52C48];
  v46 = (v5 + 104);
  v45 = *MEMORY[0x277D52C40];
  v44 = *MEMORY[0x277D53698];
  v43 = (v2 + 104);
  v42 = result + 64;
  v41 = *MEMORY[0x277D53690];
  v50 = v8;
  v40[1] = v8 + 32;
  v48 = result;
  v22 = v49;
  if (v20)
  {
    while (1)
    {
      v23 = __clz(__rbit64(v20));
      v57 = (v20 - 1) & v20;
LABEL_10:
      v26 = v23 | (v15 << 6);
      v59 = 16 * v26;
      v27 = *(v56 + 56);
      v28 = (*(v56 + 48) + 16 * v26);
      v29 = v28[1];
      v60 = *v28;
      v58 = v29;
      v30 = *(v27 + 8 * v26);

      v31 = v30;
      v32 = [v31 identifier];
      sub_265B77030();

      v33 = [v31 isEnabled] ? v45 : v47;
      (*v46)(v52, v33, v53);
      v34 = [v31 userChanged] ? v41 : v44;
      (*v43)(v54, v34, v55);
      sub_265B76550();

      *(v42 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v14 = v48;
      v35 = (*(v48 + 48) + v59);
      v36 = v58;
      *v35 = v60;
      v35[1] = v36;
      result = (*(v50 + 32))(*(v14 + 56) + *(v50 + 72) * v26, v22, v51);
      v37 = *(v14 + 16);
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        break;
      }

      *(v14 + 16) = v39;
      v20 = v57;
      if (!v57)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v21)
      {

        return v14;
      }

      v25 = *(v17 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v57 = (v25 - 1) & v25;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t NotificationSettingsProvider.fetchNotificationSettings(account:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_265B4B384, 0, 0);
}

uint64_t sub_265B4B384()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_allocWithZone(MEMORY[0x277CEE738]);
  v4 = sub_265B77000();
  v5 = sub_265B77000();
  v6 = [v3 initWithIdentifier:v4 clientIdentifier:v5 account:v1 bag:v2];
  v0[5] = v6;

  v7 = swift_task_alloc();
  v0[6] = v7;
  *(v7 + 16) = v6;
  *(v7 + 24) = v2;
  v8 = *(MEMORY[0x277D85A40] + 4);
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A0, &qword_265B78C68);
  *v9 = v0;
  v9[1] = sub_265B4B518;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000023, 0x8000000265B79F60, sub_265B4B8F8, v7, v10);
}

uint64_t sub_265B4B518()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_265B4B69C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_265B4B634;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265B4B634()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_265B4B69C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);
  v3 = *(v0 + 64);

  return v2();
}

void sub_265B4B708(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  v11 = [a2 fetchAllSettings];
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_265B4CAA8;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265B4B9C0;
  aBlock[3] = &block_descriptor_16;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v11 addFinishBlock_];
  _Block_release(v14);
}

void sub_265B4B900(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
    sub_265B771D0();
    return;
  }

  if (!a1)
  {
    sub_265B4C9C8();
    swift_allocError();
    *v4 = 1;
    goto LABEL_3;
  }

  v3 = a1;
  sub_265B4AEC4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20);
  sub_265B771E0();
}

void sub_265B4B9C0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t NotificationSettingsProvider.updateNotificationSettings(settings:account:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_265B76750();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v7 = sub_265B76580();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *v2;
  v3[10] = v10;
  v3[11] = v11;

  return MEMORY[0x2822009F8](sub_265B4BB78, 0, 0);
}

uint64_t sub_265B4BB78()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v1[9];
    v6 = v1[5];
    v36 = MEMORY[0x277D84F90];
    sub_265B77490();
    v7 = *(v5 + 16);
    v5 += 16;
    v8 = v2 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v32 = *(v5 + 56);
    v33 = v7;
    v31 = (v6 + 104);
    v30 = *MEMORY[0x277D52C40];
    v28 = (v5 - 8);
    v29 = (v6 + 8);
    do
    {
      v9 = v1[10];
      v10 = v1[7];
      v35 = v1[8];
      v11 = v1[6];
      v12 = v1[4];
      v33(v9, v8);
      sub_265B76560();
      sub_265B76570();
      (*v31)(v11, v30, v12);
      v34 = sub_265B76740();
      v13 = *v29;
      (*v29)(v11, v12);
      v13(v10, v12);
      v14 = objc_allocWithZone(MEMORY[0x277CEE730]);
      v15 = sub_265B77000();

      [v14 initWithIdentifier:v15 enabled:v34 & 1];

      (*v28)(v9, v35);
      sub_265B77470();
      v16 = *(v36 + 16);
      sub_265B774A0();
      sub_265B774B0();
      sub_265B77480();
      v8 += v32;
      --v3;
    }

    while (v3);
    v4 = v36;
  }

  v1[12] = v4;
  v17 = v1[11];
  v18 = v1[3];
  v19 = objc_allocWithZone(MEMORY[0x277CEE738]);
  v20 = sub_265B77000();
  v21 = sub_265B77000();
  v22 = [v19 initWithIdentifier:v20 clientIdentifier:v21 account:v18 bag:v17];
  v1[13] = v22;

  v23 = swift_task_alloc();
  v1[14] = v23;
  *(v23 + 16) = v22;
  *(v23 + 24) = v4;
  v24 = *(MEMORY[0x277D85A40] + 4);
  v25 = swift_task_alloc();
  v1[15] = v25;
  *v25 = v1;
  v25[1] = sub_265B4BEDC;
  v26 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v25, 0, 0, 0xD00000000000002DLL, 0x8000000265B79F90, sub_265B4C364, v23, v26);
}

uint64_t sub_265B4BEDC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v8 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_265B4C090;
  }

  else
  {
    v5 = *(v2 + 112);
    v6 = *(v2 + 96);

    v4 = sub_265B4C004;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_265B4C004()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_265B4C090()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v6 = *(v0 + 8);
  v7 = *(v0 + 128);

  return v6();
}

void sub_265B4C138(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  sub_265B4C97C();
  v9 = sub_265B77130();
  v10 = [a2 updateSettings_];

  if (v10)
  {
    (*(v5 + 16))(v8, a1, v4);
    v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v12 = swift_allocObject();
    (*(v5 + 32))(v12 + v11, v8, v4);
    aBlock[4] = sub_265B4CA1C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265B4C3E4;
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);

    [v10 addFinishBlock_];
    _Block_release(v13);
  }

  else
  {
    sub_265B4C9C8();
    v14 = swift_allocError();
    *v15 = 0;
    aBlock[0] = v14;
    sub_265B771D0();
  }
}

uint64_t sub_265B4C36C(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
    return sub_265B771D0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18);
    return sub_265B771E0();
  }
}

void sub_265B4C3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_265B4C45C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_265B41608;

  return NotificationSettingsProvider.fetchNotificationSettings(account:)(a1);
}

uint64_t sub_265B4C4F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_265B41970;

  return NotificationSettingsProvider.updateNotificationSettings(settings:account:)(a1, a2);
}

uint64_t dispatch thunk of NotificationSettingsProviding.fetchNotificationSettings(account:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_265B4C6BC;

  return v11(a1, a2, a3);
}

uint64_t sub_265B4C6BC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of NotificationSettingsProviding.updateNotificationSettings(settings:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_265B41970;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_265B4C8E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_265B4C930(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265B4C97C()
{
  result = qword_2800359B0;
  if (!qword_2800359B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800359B0);
  }

  return result;
}

unint64_t sub_265B4C9C8()
{
  result = qword_2800359B8;
  if (!qword_2800359B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800359B8);
  }

  return result;
}

uint64_t sub_265B4CA1C(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359A8, &qword_265B78D18) - 8) + 80);

  return sub_265B4C36C(a1, a2);
}

void sub_265B4CAA8(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359C0, &qword_265B78D20) - 8);
  v6 = *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_265B4B900(a1, a2);
}

void Date.startOfWeek()()
{
  v0 = [objc_opt_self() hk_gregorianCalendar];
  if (v0)
  {
    v1 = v0;
    v2 = *MEMORY[0x277CCE2F8];
    v3 = sub_265B76320();
    v4 = [v1 hk:v2 startOfWeekWithFirstWeekday:v3 beforeDate:0 addingWeeks:?];

    sub_265B76330();
  }

  else
  {
    __break(1u);
  }
}

id Date.isSameDay(as:)()
{
  result = [objc_opt_self() hk_gregorianCalendar];
  if (result)
  {
    v1 = result;
    v2 = sub_265B76320();
    v3 = sub_265B76320();
    v4 = [v1 hk:v2 isDate:0 withinNumberOfCalendarDays:v3 ofDate:?];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Date.isSameWeek(as:)(uint64_t a1)
{
  v23[1] = a1;
  v1 = sub_265B76350();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = objc_opt_self();
  result = [v9 hk_gregorianCalendar];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v11 = result;
  v12 = *MEMORY[0x277CCE2F8];
  v13 = sub_265B76320();
  v14 = [v11 hk:v12 startOfWeekWithFirstWeekday:v13 beforeDate:0 addingWeeks:?];

  sub_265B76330();
  result = [v9 hk_gregorianCalendar];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v15 = result;
  v16 = sub_265B76320();
  v17 = [v15 hk:v12 startOfWeekWithFirstWeekday:v16 beforeDate:0 addingWeeks:?];

  sub_265B76330();
  result = [v9 hk_gregorianCalendar];
  if (result)
  {
    v18 = result;
    v19 = sub_265B76320();
    v20 = sub_265B76320();
    v21 = [v18 hk:v19 isDate:0 withinNumberOfCalendarDays:v20 ofDate:?];

    v22 = *(v2 + 8);
    v22(v6, v1);
    v22(v8, v1);
    return v21;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t static RemoteBrowsingEnvironment.makeFakeEnvironment()@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_265B76F60();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33[1] = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265B76290();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800358A0, &qword_265B78680);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - v10;
  v38 = sub_265B762E0();
  v12 = *(v38 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v38);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265B76C90();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D0, &qword_265B78D68);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v33 - v24;
  (*(v17 + 104))(v20, *MEMORY[0x277D4EFD8], v16);
  v40 = 0;
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359D8, "r%");
  sub_265B4D690(&qword_2800359E0);
  sub_265B4D690(&qword_2800359E8);
  sub_265B76C50();
  sub_265B76C40();
  (*(v22 + 8))(v25, v21);
  if (v41)
  {
    v27 = v38;
    v26 = v39;
    (*(v12 + 56))(v11, 1, 1, v38);
    (*(v36 + 104))(v7, *MEMORY[0x277CC91D8], v37);

    sub_265B762D0();
    sub_265B762F0();
    v29 = sub_265B76780();
    v30 = v27;
    v31 = v29;
    (*(v12 + 8))(v15, v30);
    sub_265B4DA58();
    sub_265B769E0();
    (*(*(v31 - 8) + 56))(v26, 0, 1, v31);
  }

  else
  {
    v28 = sub_265B76780();
    return (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
  }
}

uint64_t sub_265B4D690(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800359D8, "r%");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_265B4D6FC(uint64_t a1, unint64_t a2)
{
  v4 = sub_265B4D748(a1, a2);
  sub_265B4D878(&unk_28776F4E0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_265B4D748(uint64_t a1, unint64_t a2)
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

  v6 = sub_265B64094(v5, 0);
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

  result = sub_265B77460();
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
        v10 = sub_265B77090();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_265B64094(v10, 0);
        result = sub_265B77430();
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

uint64_t sub_265B4D878(uint64_t result)
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

  result = sub_265B4D964(result, v12, 1, v3);
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

char *sub_265B4D964(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800359F8, &qword_265B78D70);
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

unint64_t sub_265B4DA58()
{
  result = qword_2800359F0;
  if (!qword_2800359F0)
  {
    sub_265B76780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800359F0);
  }

  return result;
}

uint64_t static Data.makeRandomValue(byteCount:)(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      v2 = sub_265B77180();
      *(v2 + 16) = v1;
      bzero((v2 + 32), v1);
      v3 = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      v3 = *(MEMORY[0x277D84F90] + 16);
    }

    v4 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v3, (v2 + 32));
    if (v4)
    {
      v5 = v4;

      sub_265B4DBA0();
      swift_allocError();
      *v6 = v5;
      return swift_willThrow();
    }

    else
    {
      v7 = sub_265B4DE9C((v2 + 32), v1);

      return v7;
    }
  }

  return result;
}

unint64_t sub_265B4DBA0()
{
  result = qword_280035A00;
  if (!qword_280035A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035A00);
  }

  return result;
}

size_t sub_265B4DBF4(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A08, &qword_265B79150);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A10, &qword_265B79100) - 8);
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

uint64_t sub_265B4DDE4(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_265B4DE9C(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_265B4DDE4(a1, &a1[a2]);
  }

  v3 = sub_265B76250();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_265B76240();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_265B76300();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

id sub_265B4DF5C@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  result = sub_265B42574(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_265B4DF9C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_265B774C0())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26676B830](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x26676B500]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_265B77170();
        }

        sub_265B77190();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_265B4E15C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_265B4E1A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void ArchivedSession.startOfWeek()()
{
  v0 = sub_265B76350();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() hk_gregorianCalendar];
  if (v5)
  {
    v6 = v5;
    v7 = *MEMORY[0x277CCE2F8];
    sub_265B764B0();
    v8 = sub_265B76320();
    (*(v1 + 8))(v4, v0);
    v9 = [v6 hk:v7 startOfWeekWithFirstWeekday:v8 beforeDate:0 addingWeeks:?];

    sub_265B76330();
  }

  else
  {
    __break(1u);
  }
}

uint64_t ACHAchievementProgressUpdate.modalityIdentifier(from:)(uint64_t a1)
{
  v3 = [v1 templateUniqueName];
  sub_265B77030();

  sub_265B43C20();
  v4 = sub_265B77320();

  v5 = v4[2];
  if (v5 && (v4[4] == 0xD000000000000027 ? (v6 = 0x8000000265B7A0D0 == v4[5]) : (v6 = 0), (v6 || (sub_265B77580() & 1) != 0) && v5 != 1))
  {
    v9 = v4[6];
    v8 = v4[7];

    sub_265B76D80();
    sub_265B76CE0();
    v10 = sub_265B77330();
    v12 = v11;

    v13 = sub_265B4E62C(v10, v12, a1);

    return v13;
  }

  else
  {

    return 0;
  }
}

uint64_t ACHAchievementProgressUpdate.isRequired.getter()
{
  v1 = [v0 templateUniqueName];
  sub_265B77030();

  sub_265B43C20();
  v2 = sub_265B77320();

  if (v2[2])
  {
    v4 = v2[4];
    v3 = v2[5];

    if (v4 == 0xD00000000000001CLL && 0x8000000265B7A100 == v3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_265B77580();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_265B4E62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v40 = a1;
  v4 = sub_265B76730();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A30, &qword_265B78DF8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = &v35 - v15;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a3 + 56);
  v19 = (v16 + 63) >> 6;
  v41 = v5 + 16;
  v43 = v5 + 32;
  v44 = (v5 + 8);

  v21 = 0;
  v39 = v9;
  while (v18)
  {
LABEL_11:
    v23 = v42;
    (*(v5 + 16))(v42, *(a3 + 48) + *(v5 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v4);
    v24 = *(v5 + 32);
    v24(v9, v23, v4);
    v25 = sub_265B76720();
    if (v27)
    {
      v28 = MEMORY[0x26676A920](v25);
      if (v28 == v40 && v29 == v38)
      {

LABEL_22:
        v33 = v36;
        v24(v36, v9, v4);
        v31 = 0;
        v32 = v37;
LABEL_17:
        (*(v5 + 56))(v33, v31, 1, v4);
        sub_265B4EAB0(v33, v32);
        if ((*(v5 + 48))(v32, 1, v4) == 1)
        {
          sub_265B4EB20(v33);
          sub_265B4EB20(v32);
          return 0;
        }

        else
        {
          v34 = sub_265B76710();
          sub_265B4EB20(v33);
          (*v44)(v32, v4);
          return v34;
        }
      }

      v30 = sub_265B77580();

      if (v30)
      {

        v9 = v39;
        goto LABEL_22;
      }
    }

    else
    {
      sub_265B4EAA0(v25, v26, 0);
    }

    v18 &= v18 - 1;
    v9 = v39;
    result = (*v44)(v39, v4);
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      v31 = 1;
      v33 = v36;
      v32 = v37;
      goto LABEL_17;
    }

    v18 = *(a3 + 56 + 8 * v22);
    ++v21;
    if (v18)
    {
      v21 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_265B4E9FC()
{
  result = qword_280035A20;
  if (!qword_280035A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280035A20);
  }

  return result;
}

unint64_t sub_265B4EA48()
{
  result = qword_280035A28;
  if (!qword_280035A28)
  {
    sub_265B4E9FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280035A28);
  }

  return result;
}

uint64_t sub_265B4EAA0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_265B4EAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A30, &qword_265B78DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B4EB20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A30, &qword_265B78DF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Set<>.removingUnrelatedTemplates(for:)(int a1, uint64_t a2)
{
  v2 = a2;
  v117 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D84FA0];
  LODWORD(v109) = a1;
  if ((a2 & 0xC000000000000001) == 0)
  {
    v30 = *(a2 + 32);
    v31 = v30 & 0x3F;
    v6 = ((1 << v30) + 63) >> 6;
    v19 = 8 * v6;

    if (v31 > 0xD)
    {
      goto LABEL_84;
    }

    goto LABEL_23;
  }

  v111 = MEMORY[0x277D84FA0];

  v2 = sub_265B773A0();
  v4 = sub_265B773F0();
  if (!v4)
  {
LABEL_21:

    goto LABEL_39;
  }

  v5 = v4;
  v6 = sub_265B4E9FC();
  v7 = v5;
  v3 = MEMORY[0x277D84FA0];
LABEL_6:
  v113 = v7;
  swift_dynamicCast();
  v8 = v116;
  sub_265B76D80();
  v9 = sub_265B76D60();
  v10 = [v8 uniqueName];
  if (!v10)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  v11 = v10;
  v12 = sub_265B77030();
  v14 = v13;

  v113 = v12;
  v114 = v14;
  MEMORY[0x28223BE20](v15);
  v102 = &v113;
  LOBYTE(v12) = sub_265B4FE0C(sub_265B4FEB8, v101, v9);

  v16 = v116;
  if (v12)
  {

    goto LABEL_5;
  }

  v17 = *(v3 + 16);
  if (*(v3 + 24) <= v17)
  {
    sub_265B4FB48(v17 + 1, &qword_280035A40, &qword_265B78E08);
  }

  v3 = v111;
  v18 = *(v111 + 40);
  v19 = v16;
  v20 = sub_265B772C0();
  v21 = v3 + 56;
  v22 = -1 << *(v3 + 32);
  v23 = v20 & ~v22;
  v24 = v23 >> 6;
  if (((-1 << v23) & ~*(v3 + 56 + 8 * (v23 >> 6))) != 0)
  {
    v25 = __clz(__rbit64((-1 << v23) & ~*(v3 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    goto LABEL_20;
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v21 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
LABEL_20:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v3 + 48) + 8 * v25) = v16;
      ++*(v3 + 16);
LABEL_5:
      v7 = sub_265B773F0();
      if (!v7)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if ((isStackAllocationSafe & 1) == 0)
  {
    v97 = swift_slowAlloc();
    v3 = sub_265B4FD68(v97, v6, v2, sub_265B4F5E0, 0);
    MEMORY[0x26676C0C0](v97, -1, -1);
    goto LABEL_39;
  }

LABEL_23:
  v103 = &v103;
  v104 = v6;
  MEMORY[0x28223BE20](isStackAllocationSafe);
  v105 = &v103 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v105, v19);
  v106 = 0;
  v33 = 0;
  v34 = v2 + 56;
  v35 = 1 << *(v2 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v2 + 56);
  v6 = (v35 + 63) >> 6;
  v108 = v2;
  while (1)
  {
    if (v37)
    {
      v38 = __clz(__rbit64(v37));
      v110 = (v37 - 1) & v37;
    }

    else
    {
      v39 = v33;
      do
      {
        v33 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_82;
        }

        if (v33 >= v6)
        {
          goto LABEL_38;
        }

        v40 = *(v34 + 8 * v33);
        ++v39;
      }

      while (!v40);
      v38 = __clz(__rbit64(v40));
      v110 = (v40 - 1) & v40;
    }

    v41 = v38 | (v33 << 6);
    v42 = *(v2 + 48);
    v107 = v41;
    v43 = *(v42 + 8 * v41);
    sub_265B76D80();
    v44 = v43;
    v19 = sub_265B76D60();
    v45 = [v44 uniqueName];
    if (!v45)
    {
      goto LABEL_91;
    }

    v46 = v45;
    v47 = sub_265B77030();
    v49 = v48;

    v113 = v47;
    v114 = v49;
    MEMORY[0x28223BE20](v50);
    v102 = &v113;
    LOBYTE(v46) = sub_265B4FE0C(sub_265B4FF2C, v101, v19);

    v2 = v108;
    v37 = v110;
    if ((v46 & 1) == 0)
    {
      *&v105[(v107 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v107;
      v51 = __OFADD__(v106++, 1);
      if (v51)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_38:
  v3 = sub_265B43C74(v105, v104, v106, v2, &qword_280035A40, &qword_265B78E08);
LABEL_39:
  v19 = sub_265B76BF0();
  v52 = sub_265B76BF0();
  if (v19 == v52 || (v19 = sub_265B76BF0(), v52 = sub_265B76BF0(), v19 == v52))
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v53 = MEMORY[0x277D84FA0];
      v116 = MEMORY[0x277D84FA0];
      sub_265B773A0();
      v54 = sub_265B773F0();
      if (v54)
      {
        v55 = v54;
        v2 = sub_265B4E9FC();
        v56 = v55;
        v3 = MEMORY[0x277D84FA0];
        v6 = MEMORY[0x277D837D0];
        while (1)
        {
          v113 = v56;
          swift_dynamicCast();
          v57 = [v115 uniqueName];
          if (!v57)
          {
            goto LABEL_90;
          }

          v58 = v57;
          v59 = sub_265B77030();
          v61 = v60;

          v113 = v59;
          v114 = v61;
          sub_265B76D80();
          v111 = sub_265B76CE0();
          v112 = v62;
          sub_265B43C20();
          LOBYTE(v58) = sub_265B77340();

          v63 = v115;
          if (v58)
          {
          }

          else
          {
            v64 = *(v3 + 16);
            if (*(v3 + 24) <= v64)
            {
              sub_265B4FB48(v64 + 1, &qword_280035A40, &qword_265B78E08);
            }

            v3 = v116;
            v65 = *(v116 + 5);
            v19 = v63;
            v66 = sub_265B772C0();
            v67 = v3 + 56;
            v68 = -1 << *(v3 + 32);
            v69 = v66 & ~v68;
            v70 = v69 >> 6;
            if (((-1 << v69) & ~*(v3 + 56 + 8 * (v69 >> 6))) != 0)
            {
              v71 = __clz(__rbit64((-1 << v69) & ~*(v3 + 56 + 8 * (v69 >> 6)))) | v69 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v72 = 0;
              v73 = (63 - v68) >> 6;
              do
              {
                if (++v70 == v73 && (v72 & 1) != 0)
                {
                  goto LABEL_81;
                }

                v74 = v70 == v73;
                if (v70 == v73)
                {
                  v70 = 0;
                }

                v72 |= v74;
                v75 = *(v67 + 8 * v70);
              }

              while (v75 == -1);
              v71 = __clz(__rbit64(~v75)) + (v70 << 6);
            }

            *(v67 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
            *(*(v3 + 48) + 8 * v71) = v63;
            ++*(v3 + 16);
          }

          v56 = sub_265B773F0();
          if (!v56)
          {
            goto LABEL_79;
          }
        }
      }

      v3 = v53;
LABEL_79:
    }

    else
    {
      v76 = *(v3 + 32);
      v77 = v76 & 0x3F;
      v78 = (1 << v76) + 63;
      v79 = v78 >> 6;
      if (v77 > 0xD)
      {
        v98 = 8 * (v78 >> 6);

        v19 = v98;
        if (!swift_stdlib_isStackAllocationSafe())
        {
          v99 = swift_slowAlloc();
          v100 = sub_265B4FD68(v99, v79, v3, sub_265B4F6DC, 0);

          MEMORY[0x26676C0C0](v99, -1, -1);
          v3 = v100;
          goto LABEL_80;
        }
      }

      v108 = v79;
      v106 = 0;
      v107 = &v103;
      MEMORY[0x28223BE20](v52);
      v109 = &v103 - ((v80 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v109, v80);
      v110 = 0;
      v6 = 0;
      v81 = 1 << *(v3 + 32);
      v82 = -1;
      if (v81 < 64)
      {
        v82 = ~(-1 << v81);
      }

      v83 = v82 & *(v3 + 56);
      v2 = (v81 + 63) >> 6;
      while (1)
      {
        if (v83)
        {
          v84 = __clz(__rbit64(v83));
          v83 &= v83 - 1;
        }

        else
        {
          v85 = v6;
          do
          {
            v6 = v85 + 1;
            if (__OFADD__(v85, 1))
            {
              goto LABEL_83;
            }

            if (v6 >= v2)
            {
              goto LABEL_77;
            }

            v86 = *(v3 + 56 + 8 * v6);
            ++v85;
          }

          while (!v86);
          v84 = __clz(__rbit64(v86));
          v83 = (v86 - 1) & v86;
        }

        v87 = v84 | (v6 << 6);
        v88 = *(*(v3 + 48) + 8 * v87);
        v89 = [v88 uniqueName];
        if (!v89)
        {
          goto LABEL_92;
        }

        v90 = v89;
        v91 = sub_265B77030();
        v93 = v92;

        v113 = v91;
        v114 = v93;
        sub_265B76D80();
        v111 = sub_265B76CE0();
        v112 = v94;
        sub_265B43C20();
        v19 = sub_265B77340();

        if ((v19 & 1) == 0)
        {
          *&v109[(v87 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v87;
          v51 = __OFADD__(v110++, 1);
          if (v51)
          {
            break;
          }
        }
      }

      __break(1u);
LABEL_77:
      v3 = sub_265B43C74(v109, v108, v110, v3, &qword_280035A40, &qword_265B78E08);
    }
  }

LABEL_80:
  v95 = *MEMORY[0x277D85DE8];
  return v3;
}

id sub_265B4F5E0(void **a1)
{
  v1 = *a1;
  sub_265B76D80();
  v2 = sub_265B76D60();
  result = [v1 uniqueName];
  if (result)
  {
    v4 = result;
    v5 = sub_265B77030();
    v7 = v6;

    v11[0] = v5;
    v11[1] = v7;
    MEMORY[0x28223BE20](v8);
    v10[2] = v11;
    v9 = sub_265B4FE0C(sub_265B4FF2C, v10, v2);

    return ((v9 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_265B4F6DC(id *a1)
{
  result = [*a1 uniqueName];
  if (result)
  {
    v2 = result;
    sub_265B77030();

    sub_265B76D80();
    sub_265B76CE0();
    sub_265B43C20();
    LOBYTE(v2) = sub_265B77340();

    return ((v2 & 1) == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id Array<A>.removingUnrelatedTemplates(for:)(int a1, unint64_t a2)
{
  v2 = a2;
  LODWORD(v3) = a1;
  v37 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_265B774C0())
  {
    v5 = MEMORY[0x277D84F90];
    if (i)
    {
      break;
    }

    v18 = MEMORY[0x277D84F90];
LABEL_17:
    v19 = sub_265B76BF0();
    if (v19 != sub_265B76BF0())
    {
      v20 = sub_265B76BF0();
      if (v20 != sub_265B76BF0())
      {
        return v18;
      }
    }

    v39 = v5;
    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v3 = sub_265B774C0();
      if (!v3)
      {
LABEL_40:
        v31 = MEMORY[0x277D84F90];
LABEL_41:

        return v31;
      }
    }

    else
    {
      v3 = *(v18 + 16);
      if (!v3)
      {
        goto LABEL_40;
      }
    }

    v21 = 0;
    v2 = MEMORY[0x277D837D0];
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x26676B830](v21, v18);
      }

      else
      {
        if (v21 >= *(v18 + 16))
        {
          goto LABEL_37;
        }

        v23 = *(v18 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      result = [v23 uniqueName];
      if (!result)
      {
        goto LABEL_44;
      }

      v26 = result;
      v27 = sub_265B77030();
      v29 = v28;

      v40 = v27;
      v41 = v29;
      sub_265B76D80();
      v37 = sub_265B76CE0();
      v38 = v30;
      sub_265B43C20();
      LOBYTE(v26) = sub_265B77340();

      if (v26)
      {
      }

      else
      {
        sub_265B77470();
        v22 = *(v39 + 16);
        sub_265B774A0();
        sub_265B774B0();
        sub_265B77480();
      }

      ++v21;
      if (v25 == v3)
      {
        v31 = v39;
        goto LABEL_41;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v33 = v3;
  v6 = 0;
  LODWORD(v3) = 0;
  v34 = v2 & 0xFFFFFFFFFFFFFF8;
  v35 = v2 & 0xC000000000000001;
  while (1)
  {
    if (v35)
    {
      v8 = MEMORY[0x26676B830](v6, v2);
    }

    else
    {
      if (v6 >= *(v34 + 16))
      {
        goto LABEL_35;
      }

      v8 = *(v2 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v36 = v6 + 1;
    sub_265B76D80();
    v10 = sub_265B76D60();
    v11 = v9;
    result = [v9 uniqueName];
    if (!result)
    {
      break;
    }

    v13 = result;
    v14 = sub_265B77030();
    v16 = v15;

    v40 = v14;
    v41 = v16;
    MEMORY[0x28223BE20](v17);
    v32[2] = &v40;
    LOBYTE(v13) = sub_265B4FE0C(sub_265B4FF2C, v32, v10);

    if (v13)
    {
    }

    else
    {
      sub_265B77470();
      v7 = *(v37 + 16);
      sub_265B774A0();
      sub_265B774B0();
      sub_265B77480();
    }

    ++v6;
    if (v36 == i)
    {
      v18 = v37;
      v5 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_265B4FB48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_265B77410();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_265B772C0();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

void *sub_265B4FD68(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_265B668CC(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_265B4FE0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_265B4FED4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_265B77580() & 1;
  }
}

id ACHAchievementProgressUpdate.init(progressUpdate:)(uint64_t a1)
{
  v2 = sub_265B76460();
  if (v3 & 1) != 0 || (v4 = *&v2, v5 = sub_265B76450(), (v6))
  {
    v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_265B76440();
    v8 = sub_265B77000();

    v9 = [v7 initWithTemplateUniqueName:v8 progressQuantity:0 goalQuantity:0];
  }

  else
  {
    v10 = *&v5;
    v11 = objc_opt_self();
    v12 = [v11 countUnit];
    v13 = objc_opt_self();
    v14 = [v13 quantityWithUnit:v12 doubleValue:v4];

    v15 = [v11 countUnit];
    v16 = [v13 quantityWithUnit:v15 doubleValue:v10];

    v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_265B76440();
    v8 = sub_265B77000();

    v9 = [v17 initWithTemplateUniqueName:v8 progressQuantity:v14 goalQuantity:v16];
  }

  v18 = sub_265B76470();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v9;
}

void ACHAchievementProgressUpdate.transformed()(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_265B76F60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v2 goalQuantity];
  v10 = 0uLL;
  if (v9)
  {
    v11 = v9;
    v12 = objc_opt_self();
    v13 = [v12 countUnit];
    [v11 doubleValueForUnit_];
    v42 = v14;

    v15 = [v2 progressQuantity];
    if (v15)
    {
      v16 = v15;
      v17 = [v12 countUnit];
      [v16 doubleValueForUnit_];
      v41 = v18;

      sub_265B76E20();
      v19 = v2;
      v20 = sub_265B76F50();
      v21 = sub_265B77280();

      v22 = 0x279BB9000uLL;
      if (os_log_type_enabled(v20, v21))
      {
        v23 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43 = v39;
        *v23 = 136315650;
        v24 = [v19 templateUniqueName];
        v25 = sub_265B77030();
        v40 = v4;
        v26 = v5;
        v27 = v25;
        v28 = v19;
        v30 = v29;

        v31 = sub_265B402B4(v27, v30, &v43);
        v19 = v28;
        v22 = 0x279BB9000;

        *(v23 + 4) = v31;
        *(v23 + 12) = 2048;
        v32 = v42;
        *(v23 + 14) = v41;
        *(v23 + 22) = 2048;
        *(v23 + 24) = v32;
        _os_log_impl(&dword_265B3E000, v20, v21, "Creating SeymourAchievementProgress for %s, progress: %f, goal: %f", v23, 0x20u);
        v33 = v39;
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x26676C0C0](v33, -1, -1);
        MEMORY[0x26676C0C0](v23, -1, -1);

        (*(v26 + 8))(v8, v40);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      v37 = [v19 *(v22 + 3808)];
      v34 = sub_265B77030();
      v35 = v38;

      v36 = 0;
      *&v10 = v41;
      *(&v10 + 1) = v42;
    }

    else
    {
      v34 = 0;
      v35 = 0;
      v36 = -1;
      v10 = 0uLL;
    }
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v36 = -1;
  }

  *a1 = v34;
  *(a1 + 8) = v35;
  *(a1 + 16) = v10;
  *(a1 + 32) = v36;
}

unint64_t sub_265B5046C()
{
  result = qword_280CEB910;
  if (!qword_280CEB910)
  {
    sub_265B764D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CEB910);
  }

  return result;
}

void SeymourAchievementProgressUpdate.init(achProgressUpdate:)(void *a1)
{
  v1 = [a1 goalQuantity];
  if (v1)
  {
    v2 = [objc_opt_self() countUnit];
    [v1 doubleValueForUnit_];
  }

  v3 = [a1 progressQuantity];
  if (v3)
  {
    v4 = [objc_opt_self() countUnit];
    [v3 doubleValueForUnit_];
  }

  v5 = [a1 templateUniqueName];
  sub_265B77030();

  sub_265B76430();
}

id AchievementEnvironmentCache.makeCache(from:sessionEnergyBurned:isGuided:modalityIdentifier:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v111 = a4;
  v97 = a3;
  v104 = a2;
  v98 = a5;
  v8 = sub_265B769A0();
  v102 = *(v8 - 8);
  v103 = v8;
  v9 = *(v102 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v90[0] = v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v101 = v90 - v12;
  v105 = sub_265B764C0();
  v100 = *(v105 - 8);
  v13 = *(v100 + 64);
  MEMORY[0x28223BE20](v105);
  v99 = v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v96 = v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v107 = v90 - v20;
  MEMORY[0x28223BE20](v19);
  v110 = v90 - v21;
  v22 = sub_265B76F60();
  v108 = *(v22 - 8);
  v109 = v22;
  v23 = *(v108 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v106 = v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v90 - v26;
  v28 = sub_265B76350();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = v90 - v34;
  result = [objc_opt_self() hk_gregorianCalendar];
  if (result)
  {
    v37 = result;
    v38 = *MEMORY[0x277CCE2F8];
    sub_265B764B0();
    v39 = sub_265B76320();
    v93 = *(v29 + 8);
    v93(v33, v28);
    v40 = [v37 hk:v38 startOfWeekWithFirstWeekday:v39 beforeDate:0 addingWeeks:?];

    sub_265B76330();
    sub_265B764A0();
    v42 = v41;
    sub_265B76D80();
    sub_265B76D30();
    v44 = v43;
    v92 = a1;
    sub_265B76490();
    v46 = v45;
    sub_265B76D20();
    v48 = v47;
    sub_265B76E20();
    v49 = v111;

    v50 = sub_265B76F50();
    v51 = sub_265B77280();

    v52 = os_log_type_enabled(v50, v51);
    v95 = v28;
    v94 = v29 + 8;
    if (v52)
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v112[0] = v54;
      *v53 = 67110146;
      *(v53 + 4) = v44 < v42;
      *(v53 + 8) = 1024;
      *(v53 + 10) = v48 < v46;
      *(v53 + 14) = 2048;
      *(v53 + 16) = a6;
      *(v53 + 24) = 1024;
      *(v53 + 26) = v104 & 1;
      *(v53 + 30) = 2080;
      v55 = v97;
      *(v53 + 32) = sub_265B402B4(v97, v111, v112);
      _os_log_impl(&dword_265B3E000, v50, v51, "Creating a new AchievementEnvironmentCache with meetsDurationThreshold: %{BOOL}d, meetsCompletionThreshold: %{BOOL}d, sessionEnergyBurned: %f, isGuided: %{BOOL}d, modalityIdentifier: %s", v53, 0x28u);
      __swift_destroy_boxed_opaque_existential_1(v54);
      v56 = v54;
      v49 = v111;
      MEMORY[0x26676C0C0](v56, -1, -1);
      MEMORY[0x26676C0C0](v53, -1, -1);

      v91 = *(v108 + 8);
      v91(v27, v109);
    }

    else
    {

      v91 = *(v108 + 8);
      v91(v27, v109);
      v55 = v97;
    }

    v57 = v96;
    v58 = v110;
    v97 = v35;
    sub_265B51098(v35, v48 < v46, v44 < v42, v110);
    v96 = sub_265B76970();
    v90[4] = v59;
    v90[3] = sub_265B76990();
    v90[2] = v60;
    v90[1] = sub_265B51FD4(v55, v49, a6);
    sub_265B54094(v58, v107);
    sub_265B54094(v58, v57);
    v61 = sub_265B76700();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v57, 1, v61) == 1)
    {
      sub_265B54CA8(v57, &qword_280035A48, &qword_265B78E38);
    }

    else
    {
      sub_265B766F0();
      (*(v62 + 8))(v57, v61);
    }

    sub_265B76920();
    v63 = v104;
    v64 = v111;
    sub_265B523E4(v55, v111, v104 & 1, v48 < v46, v44 < v42);
    sub_265B546C8(v48 < v46, v44 < v42);
    sub_265B527F0(v55, v64, v63 & 1, v48 < v46, v44 < v42);
    v65 = v98;
    sub_265B76960();
    v66 = v106;
    sub_265B76E20();
    v68 = v99;
    v67 = v100;
    v69 = v105;
    (*(v100 + 16))(v99, v92, v105);
    v70 = v101;
    v71 = v102;
    v72 = *(v102 + 16);
    v73 = v65;
    v74 = v103;
    v72(v101, v73, v103);
    v75 = sub_265B76F50();
    LODWORD(v111) = sub_265B77280();
    if (os_log_type_enabled(v75, v111))
    {
      v76 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v112[0] = v107;
      *v76 = 136315394;
      v77 = sub_265B76480();
      v78 = v68;
      v79 = v70;
      v80 = v77;
      v82 = v81;
      (*(v67 + 8))(v78, v105);
      v83 = sub_265B402B4(v80, v82, v112);

      *(v76 + 4) = v83;
      *(v76 + 12) = 2080;
      v72(v90[0], v79, v74);
      v84 = sub_265B77040();
      v86 = v85;
      (*(v71 + 8))(v79, v74);
      v87 = sub_265B402B4(v84, v86, v112);

      *(v76 + 14) = v87;
      _os_log_impl(&dword_265B3E000, v75, v111, "[AchievementEnvironmentCache] New cache after updating with data from session %s: %s", v76, 0x16u);
      v88 = v107;
      swift_arrayDestroy();
      MEMORY[0x26676C0C0](v88, -1, -1);
      MEMORY[0x26676C0C0](v76, -1, -1);

      v89 = v106;
    }

    else
    {

      (*(v71 + 8))(v70, v74);
      (*(v67 + 8))(v68, v69);
      v89 = v66;
    }

    v91(v89, v109);
    sub_265B54CA8(v110, &qword_280035A48, &qword_265B78E38);
    return (v93)(v97, v95);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_265B51098@<X0>(uint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v143 = a4;
  LODWORD(v137) = a3;
  v134 = a1;
  v138 = sub_265B769A0();
  v5 = *(v138 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v138);
  v8 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265B76F60();
  v141 = *(v9 - 8);
  v142 = v9;
  v10 = *(v141 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v127 = &v117 - v15;
  MEMORY[0x28223BE20](v14);
  v124 = &v117 - v16;
  v123 = sub_265B76280();
  v122 = *(v123 - 8);
  v17 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v121 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265B76400();
  v20 = *(v19 - 8);
  v128 = v19;
  v129 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A90, &qword_265B78E70);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v117 - v26;
  v28 = sub_265B76350();
  v135 = *(v28 - 8);
  v136 = v28;
  v29 = *(v135 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v130 = &v117 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v131 = &v117 - v36;
  MEMORY[0x28223BE20](v35);
  v133 = &v117 - v37;
  v38 = sub_265B76410();
  v125 = *(v38 - 8);
  v126 = v38;
  v39 = *(v125 + 64);
  MEMORY[0x28223BE20](v38);
  v132 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v117 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v47 = &v117 - v46;
  v48 = sub_265B76700();
  v139 = *(v48 - 8);
  v140 = v48;
  v49 = *(v139 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v117 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0 || (v137 & 1) == 0)
  {
    sub_265B76E20();
    v68 = v138;
    (*(v5 + 16))(v8, v144, v138);
    v69 = sub_265B76F50();
    v70 = sub_265B77280();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v145[0] = v72;
      *v71 = 136315138;
      sub_265B76910();
      v73 = sub_265B772E0();
      v75 = v74;
      sub_265B54CA8(v45, &qword_280035A48, &qword_265B78E38);
      (*(v5 + 8))(v8, v138);
      v76 = sub_265B402B4(v73, v75, v145);

      *(v71 + 4) = v76;
      _os_log_impl(&dword_265B3E000, v69, v70, "Session does not meet completion and duration threshold, returning current streak %s", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v72);
      MEMORY[0x26676C0C0](v72, -1, -1);
      MEMORY[0x26676C0C0](v71, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v68);
    }

    (*(v141 + 8))(v13, v142);
    return sub_265B76910();
  }

  v138 = v51;
  sub_265B76910();
  v53 = v139;
  v52 = v140;
  if ((*(v139 + 48))(v47, 1, v140) == 1)
  {
    sub_265B54CA8(v47, &qword_280035A48, &qword_265B78E38);
    v54 = v127;
    sub_265B76E20();
    v55 = v135;
    v56 = v136;
    v144 = *(v135 + 16);
    v144(v32, v134, v136);
    v57 = sub_265B76F50();
    v58 = sub_265B77280();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v145[0] = v60;
      *v59 = 136315138;
      sub_265B549EC(&qword_280035A58, MEMORY[0x277CC9578]);
      v61 = sub_265B77550();
      v62 = v55;
      v64 = v63;
      (*(v62 + 8))(v32, v56);
      v65 = sub_265B402B4(v61, v64, v145);

      *(v59 + 4) = v65;
      _os_log_impl(&dword_265B3E000, v57, v58, "Current streak was nil, starting a new 1 week streak with start of week %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v66 = v60;
      v53 = v139;
      MEMORY[0x26676C0C0](v66, -1, -1);
      v67 = v59;
      v52 = v140;
      MEMORY[0x26676C0C0](v67, -1, -1);
    }

    else
    {

      (*(v55 + 8))(v32, v56);
    }

    (*(v141 + 8))(v54, v142);
    v144(v130, v134, v56);
    v93 = v143;
    sub_265B766E0();
    return (*(v53 + 56))(v93, 0, 1, v52);
  }

  v78 = *(v53 + 32);
  v120 = v53 + 32;
  v119 = v78;
  v78(v138, v47, v52);
  v79 = [objc_opt_self() currentCalendar];
  v80 = v132;
  sub_265B763C0();

  v118 = sub_265B766F0();
  v81 = v133;
  sub_265B766D0();
  v82 = v128;
  v83 = v129;
  v84 = *(v129 + 104);
  LODWORD(v144) = *MEMORY[0x277CC9968];
  v137 = v84;
  v84(v23);
  sub_265B763D0();
  v127 = *(v83 + 8);
  (v127)(v23, v82);
  v86 = v135;
  v85 = v136;
  if ((*(v135 + 48))(v27, 1, v136) != 1)
  {
    (*(v86 + 32))(v131, v27, v85);
    v137(v23, v144, v82);
    v94 = v134;
    v95 = sub_265B763E0();
    (v127)(v23, v82);
    if (v95)
    {
      v96 = *(v86 + 8);
      v96(v131, v85);
      v96(v81, v85);
LABEL_18:
      (*(v125 + 8))(v80, v126);
      v97 = v143;
      v98 = v140;
      v119(v143, v138, v140);
      return (*(v139 + 56))(v97, 0, 1, v98);
    }

    v137(v23, v144, v82);
    v99 = sub_265B763E0();
    result = (v127)(v23, v82);
    if (v99)
    {
      v100 = v136;
      if (__OFADD__(v118, 1))
      {
        __break(1u);
        return result;
      }

      v101 = v135;
      (*(v135 + 16))(v130, v94, v136);
      v102 = v143;
      sub_265B766E0();
      v103 = *(v101 + 8);
      v103(v131, v100);
      v103(v133, v100);
      (*(v125 + 8))(v132, v126);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
      v104 = *(v129 + 72);
      v105 = (*(v129 + 80) + 32) & ~*(v129 + 80);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_265B78400;
      v137((v106 + v105), v144, v82);
      sub_265B54134(v106);
      swift_setDeallocating();
      (v127)(v106 + v105, v82);
      swift_deallocClassInstance();
      v107 = v121;
      v108 = v133;
      sub_265B763A0();

      v109 = sub_265B76270();
      v110 = v136;
      if ((v111 & 1) != 0 || v109 < 14)
      {
        (*(v122 + 8))(v107, v123);
        v116 = *(v135 + 8);
        v116(v131, v110);
        v116(v108, v110);
        goto LABEL_18;
      }

      v112 = v135;
      (*(v135 + 16))(v130, v94, v136);
      v102 = v143;
      sub_265B766E0();
      (*(v122 + 8))(v107, v123);
      v113 = *(v112 + 8);
      v113(v131, v110);
      v113(v108, v110);
      (*(v125 + 8))(v80, v126);
    }

    v114 = v139;
    v115 = v140;
    (*(v139 + 8))(v138, v140);
    return (*(v114 + 56))(v102, 0, 1, v115);
  }

  sub_265B54CA8(v27, &qword_280035A90, &qword_265B78E70);
  v87 = v124;
  sub_265B76E20();
  v88 = sub_265B76F50();
  v89 = sub_265B77280();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_265B3E000, v88, v89, "Unable to determine the first weekday of the extended streak", v90, 2u);
    MEMORY[0x26676C0C0](v90, -1, -1);
  }

  (*(v141 + 8))(v87, v142);
  (*(v135 + 8))(v133, v136);
  (*(v125 + 8))(v132, v126);
  v91 = v139;
  v92 = v140;
  (*(v139 + 8))(v138, v140);
  return (*(v91 + 56))(v143, 1, 1, v92);
}

uint64_t sub_265B51FD4(uint64_t a1, unint64_t a2, double a3)
{
  v6 = sub_265B76F60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v31[-v12];
  v14 = sub_265B76940();
  v15 = sub_265B76940();
  if (!*(v15 + 16) || (v16 = sub_265B65E98(a1, a2), (v17 & 1) == 0))
  {

    sub_265B76E20();

    v23 = sub_265B76F50();
    v24 = sub_265B77280();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v32 = v26;
      *v25 = 136315394;
      *(v25 + 4) = sub_265B402B4(a1, a2, &v32);
      *(v25 + 12) = 2048;
      *(v25 + 14) = a3;
      _os_log_impl(&dword_265B3E000, v23, v24, "[AchievementEnvironmentCache] No current best energy burned value for modality %s, using %f", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26676C0C0](v26, -1, -1);
      MEMORY[0x26676C0C0](v25, -1, -1);
    }

    (*(v7 + 8))(v11, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A80, &qword_265B78E60);
    goto LABEL_10;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  if (v18 < a3)
  {
    sub_265B76E20();

    v19 = sub_265B76F50();
    v20 = sub_265B77280();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 134218498;
      *(v21 + 4) = a3;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v18;
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_265B402B4(a1, a2, &v32);
      _os_log_impl(&dword_265B3E000, v19, v20, "[AchievementEnvironmentCache] Session energy burned (%f) is greater than the current best (%f) for %s", v21, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26676C0C0](v22, -1, -1);
      MEMORY[0x26676C0C0](v21, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A80, &qword_265B78E60);
LABEL_10:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265B78400;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = a3;

    v28 = sub_265B65F10(inited);
    swift_setDeallocating();
    sub_265B54CA8(inited + 32, &qword_280035A88, &qword_265B78E68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v14;
    sub_265B54454(v28, sub_265B54104, 0, isUniquelyReferenced_nonNull_native, &v32);

    return v32;
  }

  return v14;
}

uint64_t sub_265B523E4(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v39[0] = sub_265B76F60();
  v10 = *(v39[0] - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v39[0]);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  v17 = sub_265B76980();
  v18 = v17;
  if ((a4 & 1) == 0 || (a5 & 1) == 0 || (a3 & 1) == 0)
  {
    sub_265B76E20();

    v22 = sub_265B76F50();
    v23 = sub_265B77280();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      v26 = sub_265B76FD0();
      v28 = sub_265B402B4(v26, v27, &v40);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_265B3E000, v22, v23, "[AchievementEnvironmentCache] Session not counted towards guided workout count, returning %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26676C0C0](v25, -1, -1);
      MEMORY[0x26676C0C0](v24, -1, -1);
    }

    (*(v10 + 8))(v14, v39[0]);
    return v18;
  }

  if (*(v17 + 16) && (v19 = sub_265B65E98(a1, a2), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v21 = 0;
  }

  sub_265B76E20();

  v29 = sub_265B76F50();
  v30 = sub_265B77280();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 134218242;
    *(v31 + 4) = v21;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_265B402B4(a1, a2, &v40);
    _os_log_impl(&dword_265B3E000, v29, v30, "[AchievementEnvironmentCache] Adding to current guided workout count %ld for modality %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x26676C0C0](v32, -1, -1);
    MEMORY[0x26676C0C0](v31, -1, -1);
  }

  (*(v10 + 8))(v16, v39[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A70, &qword_265B78E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265B78400;
  *(inited + 32) = a1;
  v34 = inited + 32;
  *(inited + 40) = a2;
  if (!__OFADD__(v21, 1))
  {
    *(inited + 48) = v21 + 1;
    v35 = inited;

    v36 = sub_265B66014(v35);
    swift_setDeallocating();
    sub_265B54CA8(v34, &qword_280035A78, &qword_265B78E58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v18;
    sub_265B54A34(v36, sub_265B5411C, 0, isUniquelyReferenced_nonNull_native, &v40);

    return v40;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_265B527F0(uint64_t a1, unint64_t a2, char a3, char a4, char a5)
{
  v39[0] = sub_265B76F60();
  v10 = *(v39[0] - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v39[0]);
  v14 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v39 - v15;
  v17 = sub_265B76950();
  v18 = v17;
  if (a4 & 1) == 0 || (a5 & 1) == 0 || (a3)
  {
    sub_265B76E20();

    v22 = sub_265B76F50();
    v23 = sub_265B77280();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v40 = v25;
      *v24 = 136315138;
      v26 = sub_265B76FD0();
      v28 = sub_265B402B4(v26, v27, &v40);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_265B3E000, v22, v23, "[AchievementEnvironmentCache] Session not counted towards modality workout count, returning %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26676C0C0](v25, -1, -1);
      MEMORY[0x26676C0C0](v24, -1, -1);
    }

    (*(v10 + 8))(v14, v39[0]);
    return v18;
  }

  if (*(v17 + 16) && (v19 = sub_265B65E98(a1, a2), (v20 & 1) != 0))
  {
    v21 = *(*(v18 + 56) + 8 * v19);
  }

  else
  {
    v21 = 0;
  }

  sub_265B76E20();

  v29 = sub_265B76F50();
  v30 = sub_265B77280();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 134218242;
    *(v31 + 4) = v21;
    *(v31 + 12) = 2080;
    *(v31 + 14) = sub_265B402B4(a1, a2, &v40);
    _os_log_impl(&dword_265B3E000, v29, v30, "[AchievementEnvironmentCache] Adding to current workout count %ld for modality %s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x26676C0C0](v32, -1, -1);
    MEMORY[0x26676C0C0](v31, -1, -1);
  }

  (*(v10 + 8))(v16, v39[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A70, &qword_265B78E50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265B78400;
  *(inited + 32) = a1;
  v34 = inited + 32;
  *(inited + 40) = a2;
  if (!__OFADD__(v21, 1))
  {
    *(inited + 48) = v21 + 1;
    v35 = inited;

    v36 = sub_265B66014(v35);
    swift_setDeallocating();
    sub_265B54CA8(v34, &qword_280035A78, &qword_265B78E58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v18;
    sub_265B54A34(v36, sub_265B5411C, 0, isUniquelyReferenced_nonNull_native, &v40);

    return v40;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t AchievementEnvironmentCache.makeCache(firstCompletedPlanSessionIdentifier:mostRecentCompletedPlanSessionIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v51 = a3;
  v53 = sub_265B769A0();
  v48 = *(v53 - 8);
  v8 = *(v48 + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_265B76F60();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v47 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - v19;
  sub_265B76E20();

  v21 = sub_265B76F50();
  v22 = sub_265B77280();

  v23 = os_log_type_enabled(v21, v22);
  v49 = v14;
  v52 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = a5;
    v26 = v14;
    v27 = v25;
    v54 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_265B402B4(v50, a2, &v54);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_265B402B4(v51, a4, &v54);
    _os_log_impl(&dword_265B3E000, v21, v22, "Updating existing cache with firstCompletedPlanSessionIdentifier: %s and mostRecentCompletedPlanSessionIdentifier: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26676C0C0](v27, -1, -1);
    MEMORY[0x26676C0C0](v24, -1, -1);

    v28 = v26;
    a5 = v43;
    v45 = *(v52 + 8);
    v45(v20, v28);
  }

  else
  {

    v45 = *(v15 + 8);
    v45(v20, v14);
  }

  sub_265B76940();
  sub_265B76910();
  sub_265B76920();
  sub_265B76980();
  sub_265B76930();
  sub_265B76950();
  sub_265B76960();
  v29 = v47;
  sub_265B76E20();
  v30 = v48;
  v31 = *(v48 + 16);
  v32 = v46;
  v31(v46, a5, v53);
  v33 = sub_265B76F50();
  v34 = sub_265B77280();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v54 = v51;
    *v35 = 136315138;
    v36 = v53;
    v31(v44, v32, v53);
    v37 = sub_265B77040();
    v39 = v38;
    (*(v30 + 8))(v32, v36);
    v40 = sub_265B402B4(v37, v39, &v54);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_265B3E000, v33, v34, "New cache after updating plan session identifiers: %s", v35, 0xCu);
    v41 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x26676C0C0](v41, -1, -1);
    MEMORY[0x26676C0C0](v35, -1, -1);
  }

  else
  {

    (*(v30 + 8))(v32, v53);
  }

  return (v45)(v29, v49);
}

id AchievementEnvironmentCache.updatingWeeklyStreak(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v115 = a1;
  v125 = a2;
  v4 = sub_265B76F60();
  v126 = *(v4 - 8);
  v127 = v4;
  v5 = *(v126 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v120 = &v108 - v10;
  MEMORY[0x28223BE20](v9);
  v122 = &v108 - v11;
  v12 = sub_265B76410();
  v116 = *(v12 - 8);
  v117 = v12;
  v13 = *(v116 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v108 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_265B76280();
  v118 = *(v16 - 8);
  v119 = v16;
  v17 = *(v118 + 64);
  MEMORY[0x28223BE20](v16);
  v123 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v114 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v108 - v23;
  v25 = sub_265B76350();
  v128 = *(v25 - 8);
  v26 = *(v128 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v121 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v108 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v124 = &v108 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v108 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v108 - v37;
  sub_265B76910();
  v39 = sub_265B76700();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v24, 1, v39) == 1)
  {
    sub_265B54CA8(v24, &qword_280035A48, &qword_265B78E38);
    sub_265B76E20();
    v41 = sub_265B76F50();
    v42 = sub_265B77280();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v125;
    if (v43)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_265B3E000, v41, v42, "Checking if the current streak is broken but the current streak is nil, returning existing environment cache", v45, 2u);
      MEMORY[0x26676C0C0](v45, -1, -1);
    }

    (*(v126 + 8))(v8, v127);
    v46 = sub_265B769A0();
    return (*(*(v46 - 8) + 16))(v44, v3, v46);
  }

  else
  {
    v112 = v31;
    v113 = v3;
    sub_265B766D0();
    v109 = v40;
    v48 = *(v40 + 8);
    v110 = v39;
    v48(v24, v39);
    (*(v128 + 32))(v38, v36, v25);
    v49 = objc_opt_self();
    result = [v49 hk_gregorianCalendar];
    v111 = v25;
    if (result)
    {
      v50 = result;
      v51 = v38;
      v52 = *MEMORY[0x277CCE2F8];
      v53 = sub_265B76320();
      v54 = [v50 hk:v52 startOfWeekWithFirstWeekday:v53 beforeDate:0 addingWeeks:?];

      v55 = v124;
      sub_265B76330();

      v56 = [v49 currentCalendar];
      sub_265B763C0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
      v57 = sub_265B76400();
      v58 = *(v57 - 8);
      v59 = *(v58 + 72);
      v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_265B78400;
      (*(v58 + 104))(v61 + v60, *MEMORY[0x277CC9968], v57);
      sub_265B54134(v61);
      swift_setDeallocating();
      (*(v58 + 8))(v61 + v60, v57);
      swift_deallocClassInstance();
      v62 = v123;
      sub_265B763A0();

      (*(v116 + 8))(v15, v117);
      v63 = v122;
      sub_265B76E20();
      v64 = v128;
      v65 = *(v128 + 16);
      v66 = v112;
      v117 = v51;
      v67 = v51;
      v68 = v111;
      v65(v112, v67, v111);
      v69 = v121;
      v70 = v55;
      v71 = v63;
      v65(v121, v70, v68);
      v72 = sub_265B76F50();
      v73 = sub_265B77280();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v130[0] = v116;
        *v74 = 136315394;
        sub_265B549EC(&qword_280035A58, MEMORY[0x277CC9578]);
        v75 = sub_265B77550();
        v77 = v76;
        v78 = *(v64 + 8);
        v78(v66, v68);
        v79 = sub_265B402B4(v75, v77, v130);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2080;
        v80 = v121;
        v81 = sub_265B77550();
        v83 = v82;
        v121 = v78;
        v78(v80, v68);
        v84 = v125;
        v62 = v123;
        v85 = sub_265B402B4(v81, v83, v130);

        *(v74 + 14) = v85;
        _os_log_impl(&dword_265B3E000, v72, v73, "Determining the difference between firstWeekdayOfStreakEnd (%s), and currentStartOfWeek (%s)", v74, 0x16u);
        v86 = v116;
        swift_arrayDestroy();
        MEMORY[0x26676C0C0](v86, -1, -1);
        MEMORY[0x26676C0C0](v74, -1, -1);

        v87 = *(v126 + 8);
        v87(v122, v127);
        v88 = v113;
      }

      else
      {

        v89 = *(v64 + 8);
        v89(v69, v68);
        v121 = v89;
        v89(v66, v68);
        v87 = *(v126 + 8);
        v87(v71, v127);
        v88 = v113;
        v84 = v125;
      }

      v90 = sub_265B76270();
      v91 = v120;
      if ((v92 & 1) != 0 || v90 < 14)
      {
        (*(v118 + 8))(v62, v119);
        v104 = v121;
        (v121)(v124, v68);
        v104(v117, v68);
        v105 = sub_265B769A0();
        return (*(*(v105 - 8) + 16))(v84, v88, v105);
      }

      else
      {
        v93 = v84;
        v94 = v90;
        sub_265B76E20();
        v95 = sub_265B76F50();
        v96 = sub_265B77280();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          v129 = v94;
          v130[0] = v98;
          *v97 = 136315138;
          v99 = sub_265B77550();
          v101 = sub_265B402B4(v99, v100, v130);

          *(v97 + 4) = v101;
          _os_log_impl(&dword_265B3E000, v95, v96, "Number of days since the first weekday of the streak end is %s, updating weeklyStreak to nil", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v98);
          MEMORY[0x26676C0C0](v98, -1, -1);
          v102 = v97;
          v62 = v123;
          MEMORY[0x26676C0C0](v102, -1, -1);

          v103 = v120;
        }

        else
        {

          v103 = v91;
        }

        v87(v103, v127);
        v106 = v114;
        (*(v109 + 56))(v114, 1, 1, v110);
        sub_265B53CFC(v106, v93);
        sub_265B54CA8(v106, &qword_280035A48, &qword_265B78E38);
        (*(v118 + 8))(v62, v119);
        v107 = v121;
        (v121)(v124, v68);
        return v107(v117, v68);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_265B53CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265B769A0();
  v35 = *(v4 - 8);
  v5 = *(v35 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v31 - v8;
  v9 = sub_265B76F60();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v31 - v14;
  v16 = sub_265B76970();
  v33 = v17;
  v34 = v16;
  sub_265B76990();
  sub_265B76940();
  sub_265B54094(a1, v15);
  sub_265B76920();
  sub_265B76980();
  sub_265B76930();
  sub_265B76950();
  v18 = v4;
  v19 = v35;
  sub_265B76960();
  sub_265B76E20();
  v20 = *(v19 + 16);
  v20(v38, a2, v4);
  v21 = sub_265B76F50();
  v22 = sub_265B77280();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v24;
    *v23 = 136315138;
    v25 = v38;
    v20(v32, v38, v18);
    v26 = sub_265B77040();
    v28 = v27;
    (*(v19 + 8))(v25, v18);
    v29 = sub_265B402B4(v26, v28, &v40);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_265B3E000, v21, v22, "[AchievementEnvironmentCache] New cache after updating weekly streak: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x26676C0C0](v24, -1, -1);
    MEMORY[0x26676C0C0](v23, -1, -1);
  }

  else
  {

    (*(v19 + 8))(v38, v4);
  }

  return (*(v36 + 8))(v39, v37);
}

uint64_t sub_265B54094(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265B54104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_265B5411C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_265B54134(uint64_t a1)
{
  v2 = sub_265B76400();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A60, &qword_265B78E48);
    v10 = sub_265B77420();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_265B549EC(&qword_280CEB918, MEMORY[0x277CC99D0]);
      v18 = sub_265B76FE0();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_265B549EC(&qword_280035A68, MEMORY[0x277CC99D0]);
          v25 = sub_265B76FF0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_265B54454(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v37 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v40 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v45[0] = *v15;
    v45[1] = v16;
    v45[2] = v17;

    a2(&v42, v45);

    v18 = v42;
    v19 = v43;
    v20 = v44;
    v21 = *a5;
    v23 = sub_265B65E98(v42, v43);
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (v21[3] >= v26)
    {
      if ((v40 & 1) == 0)
      {
        sub_265B6DBE8();
      }
    }

    else
    {
      sub_265B64108(v26, v40 & 1);
      v28 = *a5;
      v29 = sub_265B65E98(v18, v19);
      if ((v27 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v23 = v29;
    }

    v9 &= v9 - 1;
    v31 = *a5;
    if (v27)
    {

      *(v31[7] + 8 * v23) = v20;
    }

    else
    {
      v31[(v23 >> 6) + 8] |= 1 << v23;
      v32 = (v31[6] + 16 * v23);
      *v32 = v18;
      v32[1] = v19;
      *(v31[7] + 8 * v23) = v20;
      v33 = v31[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_26;
      }

      v31[2] = v35;
    }

    a4 = 1;
    v11 = v12;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_265B45764();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v40 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265B775A0();
  __break(1u);
  return result;
}

uint64_t sub_265B546C8(int a1, int a2)
{
  v30 = a2;
  v31 = a1;
  v3 = sub_265B769A0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_265B76F60();
  v8 = *(v32 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v32);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v29 - v13;
  sub_265B76E20();
  (*(v4 + 16))(v7, v2, v3);
  v15 = sub_265B76F50();
  v16 = sub_265B77280();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29[1] = v2;
    v18 = v17;
    *v17 = 134217984;
    v19 = sub_265B76930();
    (*(v4 + 8))(v7, v3);
    *(v18 + 1) = v19;
    _os_log_impl(&dword_265B3E000, v15, v16, "[AchievementEnvironmentCache] Total number of workouts %ld", v18, 0xCu);
    MEMORY[0x26676C0C0](v18, -1, -1);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }

  v20 = *(v8 + 8);
  v21 = v14;
  v22 = v32;
  v20(v21, v32);
  if (v31 & 1) != 0 && (v30)
  {
    v23 = sub_265B76930();
    v24 = __OFADD__(v23, 1);
    result = v23 + 1;
    if (!v24)
    {
      return result;
    }

    __break(1u);
  }

  sub_265B76E20();
  v26 = sub_265B76F50();
  v27 = sub_265B77280();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_265B3E000, v26, v27, "[AchievementEnvironmentCache] Session does not meet completion/duration thresholds, returning current count", v28, 2u);
    MEMORY[0x26676C0C0](v28, -1, -1);
  }

  v20(v12, v22);
  return sub_265B76930();
}

uint64_t sub_265B549EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265B54A34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v46[0] = *v15;
    v46[1] = v16;
    v46[2] = v17;

    a2(&v43, v46);

    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = *v47;
    v23 = sub_265B65E98(v43, v44);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((v42 & 1) == 0)
      {
        sub_265B6DD50();
      }
    }

    else
    {
      v28 = v47;
      sub_265B643AC(v26, v42 & 1);
      v29 = *v28;
      v30 = sub_265B65E98(v18, v19);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v23 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v47;
    if (v27)
    {

      *(v32[7] + 8 * v23) = v20;
    }

    else
    {
      v32[(v23 >> 6) + 8] |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v18;
      v33[1] = v19;
      *(v32[7] + 8 * v23) = v20;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v12;
    v6 = v39;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_265B45764();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_265B775A0();
  __break(1u);
  return result;
}

uint64_t sub_265B54CA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t static AchievementWeeklyStreakNotification.makeNotification(with:notificationRecord:)(uint64_t a1, uint64_t a2)
{
  v186 = a2;
  v173 = sub_265B76410();
  v172 = *(v173 - 8);
  v3 = *(v172 + 64);
  MEMORY[0x28223BE20](v173);
  v171 = &v164[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v176 = sub_265B76280();
  v175 = *(v176 - 8);
  v5 = *(v175 + 64);
  MEMORY[0x28223BE20](v176);
  v174 = &v164[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v199 = sub_265B76350();
  v7 = *(v199 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v199);
  v184 = &v164[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v9);
  v178 = &v164[-v12];
  MEMORY[0x28223BE20](v11);
  v177 = &v164[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A48, &qword_265B78E38);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v188 = &v164[-v16];
  v17 = sub_265B76700();
  v18 = *(v17 - 8);
  v191 = v17;
  v192 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v190 = &v164[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A98, &unk_265B78E80);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v180 = &v164[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x28223BE20](v23);
  v195 = &v164[-v26];
  MEMORY[0x28223BE20](v25);
  v185 = &v164[-v27];
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A90, &qword_265B78E70);
  v28 = *(*(v181 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v181);
  v182 = &v164[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = MEMORY[0x28223BE20](v29);
  v183 = &v164[-v32];
  v33 = MEMORY[0x28223BE20](v31);
  v194 = &v164[-v34];
  MEMORY[0x28223BE20](v33);
  v201 = &v164[-v35];
  v36 = sub_265B769A0();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v41 = &v164[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v39);
  v43 = &v164[-v42];
  v197 = sub_265B76F60();
  v200 = *(v197 - 8);
  v44 = *(v200 + 64);
  v45 = MEMORY[0x28223BE20](v197);
  v170 = &v164[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = MEMORY[0x28223BE20](v45);
  v169 = &v164[-v48];
  v49 = MEMORY[0x28223BE20](v47);
  v167 = &v164[-v50];
  v51 = MEMORY[0x28223BE20](v49);
  v168 = &v164[-v52];
  v53 = MEMORY[0x28223BE20](v51);
  v166 = &v164[-v54];
  v55 = MEMORY[0x28223BE20](v53);
  v187 = &v164[-v56];
  v57 = MEMORY[0x28223BE20](v55);
  v193 = &v164[-v58];
  MEMORY[0x28223BE20](v57);
  v60 = &v164[-v59];
  sub_265B76E20();
  v61 = *(v37 + 16);
  v189 = a1;
  v198 = v36;
  v61(v43, a1, v36);
  v62 = sub_265B76F50();
  v63 = sub_265B77280();
  v64 = os_log_type_enabled(v62, v63);
  v196 = v7;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v202 = v179;
    *v65 = 136315138;
    v66 = v43;
    v165 = v63;
    v67 = v43;
    v68 = v37;
    v69 = v198;
    v61(v41, v66, v198);
    v70 = sub_265B77040();
    v72 = v71;
    (*(v68 + 8))(v67, v69);
    v73 = sub_265B402B4(v70, v72, &v202);

    *(v65 + 4) = v73;
    _os_log_impl(&dword_265B3E000, v62, v165, "Evaluating weekly streak notification with environment cache: %s", v65, 0xCu);
    v74 = v179;
    __swift_destroy_boxed_opaque_existential_1(v179);
    MEMORY[0x26676C0C0](v74, -1, -1);
    MEMORY[0x26676C0C0](v65, -1, -1);
  }

  else
  {

    (*(v37 + 8))(v43, v198);
  }

  v75 = v197;
  v198 = *(v200 + 8);
  v198(v60, v197);
  v77 = v185;
  v76 = v186;
  sub_265B56330(v186, v185, &qword_280035A98, &unk_265B78E80);
  v78 = sub_265B769D0();
  v79 = *(v78 - 8);
  v179 = *(v79 + 48);
  v80 = (v179)(v77, 1, v78);
  v81 = v201;
  if (v80 == 1)
  {
    sub_265B54CA8(v77, &qword_280035A98, &unk_265B78E80);
    (*(v196 + 56))(v81, 1, 1, v199);
  }

  else
  {
    sub_265B769B0();
    (*(v79 + 8))(v77, v78);
  }

  v82 = v194;
  v83 = v195;
  v84 = v193;
  sub_265B76E20();
  sub_265B56330(v76, v83, &qword_280035A98, &unk_265B78E80);
  sub_265B56330(v81, v82, &qword_280035A90, &qword_265B78E70);
  v85 = v82;
  v86 = sub_265B76F50();
  v87 = sub_265B77280();
  if (os_log_type_enabled(v86, v87))
  {
    LODWORD(v186) = v87;
    v88 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v202 = v185;
    *v88 = 136315394;
    v89 = v180;
    sub_265B56330(v83, v180, &qword_280035A98, &unk_265B78E80);
    if ((v179)(v89, 1, v78) == 1)
    {
      sub_265B54CA8(v89, &qword_280035A98, &unk_265B78E80);
      v90 = 0;
      v91 = 0xE000000000000000;
    }

    else
    {
      v90 = sub_265B769C0();
      v91 = v95;
      (*(v79 + 8))(v89, v78);
    }

    v93 = v196;
    v94 = v191;
    v96 = v193;
    sub_265B54CA8(v195, &qword_280035A98, &unk_265B78E80);
    v97 = sub_265B402B4(v90, v91, &v202);

    *(v88 + 4) = v97;
    *(v88 + 12) = 2080;
    v98 = v194;
    v99 = sub_265B772E0();
    v101 = v100;
    sub_265B54CA8(v98, &qword_280035A90, &qword_265B78E70);
    v102 = sub_265B402B4(v99, v101, &v202);

    *(v88 + 14) = v102;
    _os_log_impl(&dword_265B3E000, v86, v186, "Creating achievement notification for %s with previousPresentationDate: %s", v88, 0x16u);
    v103 = v185;
    swift_arrayDestroy();
    MEMORY[0x26676C0C0](v103, -1, -1);
    MEMORY[0x26676C0C0](v88, -1, -1);

    v104 = v96;
    v92 = v197;
    v198(v104, v197);
  }

  else
  {

    sub_265B54CA8(v85, &qword_280035A90, &qword_265B78E70);
    sub_265B54CA8(v83, &qword_280035A98, &unk_265B78E80);
    v92 = v75;
    v198(v84, v75);
    v93 = v196;
    v94 = v191;
  }

  v105 = v188;
  sub_265B76910();
  v106 = v192;
  v107 = (*(v192 + 48))(v105, 1, v94);
  v108 = v107;
  if (v107 == 1)
  {
    sub_265B54CA8(v105, &qword_280035A48, &qword_265B78E38);
    v109 = v182;
    sub_265B56330(v201, v182, &qword_280035A90, &qword_265B78E70);
    v110 = v199;
    if ((*(v93 + 48))(v109, 1, v199) == 1)
    {
      sub_265B54CA8(v109, &qword_280035A90, &qword_265B78E70);
      v111 = v170;
      sub_265B76E20();
      v112 = sub_265B76F50();
      v113 = sub_265B77280();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_265B3E000, v112, v113, "No streak and no previous presentation date, returning goForIt notification", v114, 2u);
        MEMORY[0x26676C0C0](v114, -1, -1);
      }

      v198(v111, v92);
      v115 = 0;
      goto LABEL_41;
    }

    LODWORD(v195) = v108;
    (*(v93 + 32))(v184, v109, v110);
    v123 = [objc_opt_self() currentCalendar];
    v124 = v171;
    sub_265B763C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280035A50, &qword_265B78E40);
    v125 = sub_265B76400();
    v126 = *(v125 - 8);
    v127 = *(v126 + 72);
    v128 = (*(v126 + 80) + 32) & ~*(v126 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_265B78400;
    (*(v126 + 104))(v129 + v128, *MEMORY[0x277CC9968], v125);
    sub_265B54134(v129);
    swift_setDeallocating();
    (*(v126 + 8))(v129 + v128, v125);
    swift_deallocClassInstance();
    v130 = v178;
    sub_265B76340();
    v131 = v174;
    sub_265B763A0();

    v132 = *(v93 + 8);
    v132(v130, v199);
    (*(v172 + 8))(v124, v173);
    v133 = sub_265B76270();
    if (v134)
    {
      v135 = v169;
      sub_265B76E20();
      v136 = sub_265B76F50();
      v137 = sub_265B77280();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&dword_265B3E000, v136, v137, "Failed to determine the date interval since the most recent achievement notification", v138, 2u);
        MEMORY[0x26676C0C0](v138, -1, -1);
      }

      v198(v135, v92);
      goto LABEL_34;
    }

    v151 = v133;
    sub_265B76D80();
    if (v151 < sub_265B76D70())
    {
LABEL_34:
      v115 = sub_265B764D0();
      sub_265B5046C();
      swift_allocError();
      (*(*(v115 - 8) + 104))(v152, *MEMORY[0x277D50D18], v115);
      swift_willThrow();
      (*(v175 + 8))(v131, v176);
      v132(v184, v199);
      goto LABEL_41;
    }

    v159 = v167;
    sub_265B76E20();
    v160 = sub_265B76F50();
    v161 = sub_265B77280();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_265B3E000, v160, v161, "Last presentation date was >=90 days ago, returning goForIt notification", v162, 2u);
      MEMORY[0x26676C0C0](v162, -1, -1);
    }

    v198(v159, v92);
    (*(v175 + 8))(v131, v176);
    v132(v184, v199);
    v115 = 0;
  }

  else
  {
    LODWORD(v195) = v107;
    (*(v106 + 32))(v190, v105, v94);
    v116 = AchievementWeeklyStreak.earnedThisWeek.getter();
    sub_265B76E20();
    v117 = sub_265B76F50();
    v118 = sub_265B77280();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = 67109120;
      *(v119 + 4) = (v116 & 1) == 0;
      _os_log_impl(&dword_265B3E000, v117, v118, "Current streak extendable: %{BOOL}d", v119, 8u);
      MEMORY[0x26676C0C0](v119, -1, -1);
    }

    v198(v187, v92);
    v120 = v183;
    sub_265B56330(v201, v183, &qword_280035A90, &qword_265B78E70);
    v121 = v199;
    if ((*(v93 + 48))(v120, 1, v199) == 1)
    {
      sub_265B54CA8(v120, &qword_280035A90, &qword_265B78E70);
      if (v116)
      {
        v115 = sub_265B764D0();
        sub_265B5046C();
        swift_allocError();
        (*(*(v115 - 8) + 104))(v122, *MEMORY[0x277D50D18], v115);
        swift_willThrow();
        (*(v106 + 8))(v190, v94);
      }

      else
      {
        v146 = v168;
        sub_265B76E20();
        v147 = sub_265B76F50();
        v148 = sub_265B77280();
        if (os_log_type_enabled(v147, v148))
        {
          v149 = swift_slowAlloc();
          *v149 = 0;
          _os_log_impl(&dword_265B3E000, v147, v148, "Streak was extendable with no previous presentation date, returning maintain streak notification", v149, 2u);
          MEMORY[0x26676C0C0](v149, -1, -1);
        }

        v198(v146, v92);
        v150 = v190;
        v115 = sub_265B766F0();
        (*(v106 + 8))(v150, v94);
      }
    }

    else
    {
      v139 = v120;
      v140 = v177;
      (*(v93 + 32))(v177, v139, v121);
      if (v116 & 1) != 0 || (v141 = v178, sub_265B76340(), v142 = Date.isSameWeek(as:)(v140), v143 = *(v93 + 8), v144 = v141, v121 = v199, v143(v144, v199), (v142))
      {
        v115 = sub_265B764D0();
        sub_265B5046C();
        swift_allocError();
        (*(*(v115 - 8) + 104))(v145, *MEMORY[0x277D50D18], v115);
        swift_willThrow();
        (*(v93 + 8))(v140, v121);
        (*(v192 + 8))(v190, v94);
      }

      else
      {
        v153 = v166;
        sub_265B76E20();
        v154 = sub_265B76F50();
        v155 = sub_265B77280();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_265B3E000, v154, v155, "Streak was extendable with no previous presentation date this week, returning maintain streak notification", v156, 2u);
          v157 = v156;
          v140 = v177;
          MEMORY[0x26676C0C0](v157, -1, -1);
        }

        v198(v153, v197);
        v158 = v190;
        v115 = sub_265B766F0();
        v143(v140, v199);
        (*(v192 + 8))(v158, v94);
      }
    }
  }

LABEL_41:
  sub_265B54CA8(v201, &qword_280035A90, &qword_265B78E70);
  return v115;
}