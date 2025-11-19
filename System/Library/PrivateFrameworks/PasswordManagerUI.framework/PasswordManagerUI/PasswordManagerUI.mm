uint64_t type metadata accessor for PMDebugSettingsManager()
{
  result = qword_27CDEB110;
  if (!qword_27CDEB110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6E7DE0()
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_21C6E7F28();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_21C6E7ED8()
{
  if (!qword_27CDEAEE0)
  {
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAEE0);
    }
  }
}

void sub_21C6E7F28()
{
  if (!qword_27CDEB120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEB128, &qword_21CBC4E20);
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB120);
    }
  }
}

void sub_21C6E7F8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ObservedObject.init(dependency:)(uint64_t *a1)
{
  v1 = *a1;
  PMDependency.init(_:)(a1, &v6);
  v2 = *(v1 + *MEMORY[0x277D84DE8] + 8);
  v3 = v6;

  v7[1] = v3;
  type metadata accessor for PMDependency();
  PMDependency.wrappedValue.getter(v7);
  v4 = sub_21CB82674();

  return v4;
}

uint64_t sub_21C6E8180()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21C6E81C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v5 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v6 = sub_21CB85E54();
  v7 = sub_21CB85E54();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = *(v6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v32 - v20;
  v22 = *(a2 + 16);
  v34 = a1;
  if (v22 && (v23 = sub_21CB10910(a1), (v24 & 1) != 0))
  {
    sub_21C7A3394(*(a2 + 56) + 32 * v23, v36);
    v25 = swift_dynamicCast();
    v26 = *(v5 - 8);
    v27 = *(v26 + 56);
    if (!v25)
    {
      v27(v19, 1, 1, v5);
      (*(v12 + 8))(v19, v6);
      (*(v12 + 56))(v11, 1, 1, v6);
      (*(v33 + 8))(v11, v7);
      goto LABEL_10;
    }

    v28 = *(v5 - 8);
    v29 = *(v26 + 56);
    v27(v19, 0, 1, v5);
    (*(v28 + 32))(v11, v19, v5);
    v29(v11, 0, 1, v5);
  }

  else
  {
    v28 = *(v5 - 8);
    (*(v28 + 56))(v11, 1, 1, v5);
  }

  (*(v12 + 56))(v11, 0, 1, v6);
  v30 = *(v12 + 32);
  v30(v21, v11, v6);
  v30(v16, v21, v6);
  if ((*(v28 + 48))(v16, 1, v5) != 1)
  {
    return (*(v28 + 32))(v35, v16, v5);
  }

  (*(v12 + 8))(v16, v6);
LABEL_10:
  if (qword_27CDEA3C8 != -1)
  {
    swift_once();
  }

  v36[0] = qword_27CE184E8;

  swift_getAtKeyPath();
}

void *sub_21C6E8658()
{
  type metadata accessor for PMDependencyStore();
  v0 = swift_allocObject();
  result = sub_21C6E8694();
  qword_27CE184E8 = v0;
  return result;
}

void *sub_21C6E8694()
{
  v1 = v0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED220, &qword_21CBA6458);
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v49);
  v5 = &v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB560, &unk_21CBB4090);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v48 - v9;
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 1;
  v11 = [objc_opt_self() sharedStore];
  v12 = type metadata accessor for PMGeneratedPasswordStore();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC17PasswordManagerUI24PMGeneratedPasswordStore__generatedPasswords;
  *&aBlock = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB81D74();
  (*(v7 + 32))(v15 + v16, v10, v6);
  *(v15 + 16) = v11;
  *(v15 + 24) = 0;
  v17 = v11;
  sub_21C6E9BB8();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  v20 = *MEMORY[0x277D49C10];
  *&v52 = sub_21C95CDB4;
  *(&v52 + 1) = v15;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_21C7ADA6C;
  *(&v51 + 1) = &block_descriptor_5;
  v21 = _Block_copy(&aBlock);
  v22 = v17;

  v23 = [v19 addObserverForName:v20 object:v22 queue:0 usingBlock:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();

  v1[5] = v15;
  *(&v51 + 1) = &type metadata for PMGroupMemberImageProviderMain;
  *&v52 = &off_282E55730;
  type metadata accessor for PMGroupMemberImageCache();
  v24 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(&aBlock, &type metadata for PMGroupMemberImageProviderMain);
  v57 = &type metadata for PMGroupMemberImageProviderMain;
  v58 = &off_282E55730;
  swift_defaultActor_initialize();
  *(v24 + 112) = MEMORY[0x277D84F98];
  sub_21C6EA568(&v56, v24 + 120);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v1[6] = v24;
  v25 = type metadata accessor for PMGroupsStore();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v1[7] = sub_21C6E98D4(v28);
  v1[8] = 0;
  v29 = type metadata accessor for PMPasswordManager();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  sub_21C6EBF3C(0, 0);
  v1[9] = v32;
  v1[10] = &off_282E59B38;
  v33 = type metadata accessor for PMTipsProviderMain();
  v34 = swift_allocObject();
  *(v34 + 16) = MEMORY[0x277D84FA0];
  v35 = [v18 defaultCenter];
  [v35 addObserver:v34 selector:sel_refreshTips name:*MEMORY[0x277D49C18] object:0];

  v57 = v33;
  v58 = sub_21C6ECC3C();
  *&v56 = v34;
  v36 = type metadata accessor for PMTipsStore();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  v40 = OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore__tip;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  aBlock = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  sub_21CB81D74();
  (*(v2 + 32))(v39 + v40, v5, v49);
  *(v39 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = 0;
  sub_21C6E9A08(&v56, v39 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_provider);
  sub_21C6ED308(v34);
  __swift_destroy_boxed_opaque_existential_0(&v56);
  v1[11] = v39;
  v1[12] = [objc_opt_self() pm_defaults];
  v1[13] = [objc_allocWithZone(type metadata accessor for PMNotificationManager()) init];
  type metadata accessor for PMAppStoreReviewController();
  swift_allocObject();
  v1[14] = sub_21C6ED710();
  v41 = type metadata accessor for PMWiFiNetworksStore();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v1[15] = PMWiFiNetworksStore.init()();
  v44 = type metadata accessor for PMDebugSettingsManager();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v1[16] = sub_21C6EDC14();
  v1[17] = 0;
  v1[18] = 0;
  v1[19] = 0;
  return v1;
}

uint64_t sub_21C6E8C44(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PMDependency.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C6E81C8(v3, v5, a1);
}

uint64_t sub_21C6E8D44()
{
  result = type metadata accessor for PMGeneratedPassword.ID(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMGeneratedPassword.Storage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21C6E8DE8()
{
  sub_21C6E8F4C(319, &qword_27CDEAFA0, 0x277D49A38);
  if (v0 <= 0x3F)
  {
    sub_21C6E8F94();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_21C6E8E6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFABF8, &qword_21CBD0270);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_21CB86534();
  qword_27CE18778 = result;
  return result;
}

uint64_t sub_21C6E8ED0()
{
  result = sub_21CB80DD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21C6E8F4C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_21C6E8F94()
{
  if (!qword_27CDF31F8)
  {
    sub_21C6E8F4C(255, &qword_27CDEAC38, 0x277CCAD08);
    sub_21CB80DD4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CDF31F8);
    }
  }
}

uint64_t sub_21C6E9048(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21CB862E4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for PMGeneratedPassword(0);
        v6 = sub_21CB85844();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21C9A9C38(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21C9A9700(0, v2, 1, a1);
  }

  return result;
}

void sub_21C6E9174(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_21C6E9240()
{
  sub_21C6EA5CC(319, &qword_27CDF52C8, &qword_27CDEDBA8, &qword_21CBA9380);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C6E7ED8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDF52D0, &qword_27CDEFEB8, &unk_21CBADD00);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C6E939C()
{
  sub_21CB85C44();
  if (v0 <= 0x3F)
  {
    sub_21C6E9428();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21C6E9428()
{
  if (!qword_27CDEE458)
  {
    v0 = sub_21CB85864();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEE458);
    }
  }
}

uint64_t sub_21C6E9478(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v46 = a4;
  v47 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA8, &qword_21CBADCD0);
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v39 - v10;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  v11 = *(*(v42 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v42);
  v41 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v40 = &v39 - v14;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v15 = *(v39 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v39);
  v18 = &v39 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v39 - v23;
  v50[3] = a2;
  v50[4] = a3(v22);
  *(a1 + 16) = swift_getKeyPath();
  v25 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__invitations;
  v26 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB81D74();
  v27 = *(v20 + 32);
  v27(a1 + v25, v24, v19);
  v28 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__groups;
  v48 = v26;
  sub_21CB81D74();
  v27(a1 + v28, v24, v19);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__hasLoadedGroups;
  LOBYTE(v48) = 0;
  sub_21CB81D74();
  (*(v15 + 32))(a1 + v29, v18, v39);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_invitationsAndGroupsPublisher;
  v48 = v26;
  v49 = v26;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3FB8, &qword_21CBBD7C0);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  *(a1 + v30) = sub_21CB81D34();
  v34 = OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore__newlyCreatedGroup;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v36 = v40;
  (*(*(v35 - 8) + 56))(v40, 1, 1, v35);
  sub_21C6EA724(v36, v41);
  v37 = v43;
  sub_21CB81D74();
  sub_21C6EA794(v36, &qword_27CDEFEB8, &unk_21CBADD00);
  (*(v44 + 32))(a1 + v34, v37, v45);
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle) = 0;
  sub_21C6E9A08(v50, a1 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_provider);
  sub_21C6EA7F4(v46, v47);
  __swift_destroy_boxed_opaque_existential_0(v50);
  return a1;
}

uint64_t type metadata accessor for PMTipsStore()
{
  result = qword_27CDFA0F8;
  if (!qword_27CDFA0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6E9964()
{
  sub_21C6EA6C0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21C6E9A08(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PMGeneratedPasswordStore()
{
  result = qword_27CDF38A8;
  if (!qword_27CDF38A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6E9AB8()
{
  if (!qword_27CDF38B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBEA8, &unk_21CBA38A0);
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF38B8);
    }
  }
}

void sub_21C6E9B1C()
{
  sub_21C6E9AB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C6E9BB8()
{
  v1 = type metadata accessor for PMGeneratedPassword(0);
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = v37 - v6;
  if ((*(v0 + 24) & 1) == 0)
  {
    v8 = *(v0 + 16);
    v9 = [v8 allUnexpiredGeneratedPasswords];
    sub_21C6E8F4C(0, &qword_27CDEAFA0, 0x277D49A38);
    v10 = sub_21CB85824();

    v11 = v10;
    if (v10 >> 62)
    {
      v35 = v10;
      v12 = sub_21CB85FA4();
      v11 = v35;
      if (v12)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_4:
        v13 = v11;
        v37[1] = v0;
        v44 = MEMORY[0x277D84F90];
        sub_21C7B0B84(0, v12 & ~(v12 >> 63), 0);
        if (v12 < 0)
        {
          __break(1u);

          __break(1u);
          return;
        }

        v37[0] = v8;
        v14 = 0;
        v15 = v44;
        v16 = v13;
        v38 = v13 & 0xC000000000000001;
        v39 = v12;
        v40 = v13;
        v41 = v7;
        do
        {
          if (v38)
          {
            v17 = MEMORY[0x21CF15BD0](v14, v16);
          }

          else
          {
            v17 = *(v16 + 8 * v14 + 32);
          }

          v18 = v17;
          *(v5 + *(v43 + 20)) = v17;
          type metadata accessor for PMGeneratedPassword.Storage(0);
          swift_storeEnumTagMultiPayload();
          v19 = v18;
          v20 = [v19 protectionSpace];
          if (v20)
          {
            v21 = v20;
            v22 = [v20 host];
          }

          else
          {
            v22 = [objc_opt_self() privateBrowsingSentinel];
          }

          v23 = sub_21CB855C4();
          v25 = v24;

          v26 = [v19 password];
          v27 = sub_21CB855C4();
          v29 = v28;

          v30 = [v19 generationDate];
          v31 = v5 + *(type metadata accessor for PMGeneratedPassword.ID(0) + 24);
          sub_21CB80D94();

          *v5 = v23;
          v5[1] = v25;
          v5[2] = v27;
          v5[3] = v29;
          v32 = v41;
          sub_21C7D5F48(v5, v41);
          v44 = v15;
          v34 = v15[2];
          v33 = v15[3];
          if (v34 >= v33 >> 1)
          {
            sub_21C7B0B84(v33 > 1, v34 + 1, 1);
            v15 = v44;
          }

          ++v14;
          v15[2] = v34 + 1;
          sub_21C7D5F48(v32, v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v34);
          v16 = v40;
        }

        while (v39 != v14);

        v8 = v37[0];
        goto LABEL_18;
      }
    }

    v15 = MEMORY[0x277D84F90];
LABEL_18:
    v44 = v15;

    sub_21C6E9FD0(&v44);

    v36 = v44;
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v36;

    sub_21CB81DC4();
    sub_21C6E9174(v8, 0);
  }
}

uint64_t sub_21C6E9FD0(void **a1)
{
  v2 = *(type metadata accessor for PMGeneratedPassword(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_21C6EA078(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_21C6E9048(v6);
  *a1 = v3;
  return result;
}

size_t sub_21C6EA08C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21C7A3394(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_21C7A3394(a2 + 32, a1 + 32);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21C6EA568(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t type metadata accessor for PMGroupsStore()
{
  result = qword_27CDF52B8;
  if (!qword_27CDF52B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6EA5CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CB81DD4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for PMSharingGroup()
{
  result = qword_27CDF8FE0;
  if (!qword_27CDF8FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C6EA66C()
{
  result = qword_27CDF5300;
  if (!qword_27CDF5300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF5300);
  }

  return result;
}

void sub_21C6EA6C0()
{
  if (!qword_27CDFA108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDED230, &unk_21CBA6460);
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDFA108);
    }
  }
}

uint64_t sub_21C6EA724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6EA794(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21C6EA7F4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v11 = sub_21CB858A4();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;

  v14 = sub_21C98B308(0, 0, v8, a2, v12);
  v15 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle);
  *(v4 + OBJC_IVAR____TtC17PasswordManagerUI13PMGroupsStore_observeGroupsHandle) = v14;
}

uint64_t sub_21C6EA958()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t type metadata accessor for PMPasswordManager()
{
  result = qword_27CDF7638;
  if (!qword_27CDF7638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6EA9FC()
{
  type metadata accessor for PMAccount.UniqueID(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PMAccount.Storage(319);
    if (v1 <= 0x3F)
    {
      sub_21C6EE344(319, &qword_27CDEB2F0, &type metadata for PMSecurityRecommendation, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6EAACC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6EAB20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6EAB74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21C6EABC8()
{
  result = sub_21C6E8F4C(319, &qword_27CDF76E0, 0x277D49B20);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMAccount.MockData(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C6EAC80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PMAccount.UniqueID(0);
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
      v13 = type metadata accessor for PMAccount.Storage(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_21C6EADA4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6EADEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C6EAE34(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_21C6EAE88(uint64_t a1, uint64_t *a2, void *a3, id *a4)
{
  v7 = sub_21CB81C84();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v8 = *a4;
  return sub_21CB81C94();
}

uint64_t sub_21C6EAF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_21C6EE6C0();
  result = sub_21CB85E44();
  *a4 = result;
  return result;
}

void sub_21C6EAFA0()
{
  sub_21C6E7ED8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDED800, &qword_27CDED808, &qword_21CBA7578);
      if (v7 <= 0x3F)
      {
        v8 = *(v6 - 8) + 64;
        sub_21C6EA5CC(319, &qword_27CDED810, &qword_27CDED818, &unk_21CBA7580);
        if (v10 <= 0x3F)
        {
          v13 = *(v9 - 8) + 64;
          sub_21C6EA5CC(319, &qword_27CDED820, &qword_27CDED828, &qword_21CBAF0E0);
          if (v12 <= 0x3F)
          {
            v14 = *(v11 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_21C6EB1B4()
{
  v0 = sub_21CB80E34();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C6E7ED8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21C6EB2D8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21C6EB2D8()
{
  if (!qword_27CDEAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEAED8, &unk_21CBA0730);
    v0 = sub_21CB81DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEAED0);
    }
  }
}

char *sub_21C6EB34C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED7D0, &qword_21CBA74D0);
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  MEMORY[0x28223BE20](v2);
  v75 = &v67 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED780, &qword_21CBA74C8);
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - v7;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  v9 = *(v83 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v83);
  v78 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v80 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  *(v0 + 3) = 0;
  swift_unknownObjectWeakInit();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF80, &unk_21CBA0A30);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v0 + 4) = sub_21CB81D14();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF90, &qword_21CBA77E0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v0 + 5) = sub_21CB81D14();
  v28 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedAccounts;
  LOBYTE(v84) = 0;
  v79 = v21;
  sub_21CB81D74();
  v29 = *(v18 + 32);
  v81 = v18 + 32;
  v82 = v29;
  v29(&v1[v28], v21, v17);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accounts;
  v84 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  v32 = *(v13 + 32);
  v32(&v1[v30], v16, v12);
  v33 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsInPersonalKeychain;
  v84 = v31;
  sub_21CB81D74();
  v32(&v1[v33], v16, v12);
  v34 = v13 + 32;
  v35 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsByGroupID;
  v84 = MEMORY[0x277D84F98];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED808, &qword_21CBA7578);
  v36 = v78;
  sub_21CB81D74();
  v37 = *(v9 + 32);
  v70 = v9 + 32;
  v71 = v37;
  v37(&v1[v35], v36, v83);
  v38 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__inProgressBulkOperation;
  v84 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED818, &unk_21CBA7580);
  sub_21CB81D74();
  (*(v73 + 32))(&v1[v38], v8, v74);
  v39 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithNeverSaveMarker;
  v40 = MEMORY[0x277D84F90];
  v84 = MEMORY[0x277D84F90];
  sub_21CB81D74();
  v32(&v1[v39], v16, v12);
  v41 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithPasskeys;
  v84 = v40;
  sub_21CB81D74();
  v68 = v12;
  v32(&v1[v41], v16, v12);
  v69 = v32;
  v67 = v34;
  v42 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__accountsWithTOTPGenerators;
  v84 = v40;
  v43 = v40;
  sub_21CB81D74();
  v32(&v1[v42], v16, v12);
  v44 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__showHiddenSecurityRecommendations;
  v45 = [objc_opt_self() pm_defaults];
  v46 = sub_21CB85584();
  LOBYTE(v42) = [v45 BOOLForKey:v46 withDefault:0];

  LOBYTE(v84) = v42;
  v47 = v79;
  sub_21CB81D74();
  v48 = v82;
  v82(&v1[v44], v47, v80);
  v49 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccounts;
  v50 = v43;
  v84 = v43;
  sub_21CB81D74();
  v51 = v68;
  v52 = v69;
  v69(&v1[v49], v16, v68);
  v53 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsInPersonalKeychain;
  v84 = v43;
  sub_21CB81D74();
  v52(&v1[v53], v16, v51);
  v54 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__recentlyDeletedAccountsByGroupID;
  v84 = MEMORY[0x277D84F98];
  v55 = v78;
  sub_21CB81D74();
  v71(&v1[v54], v55, v83);
  v56 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hasUnacknowledgedHighPriorityWarnings;
  LOBYTE(v84) = 1;
  v57 = v79;
  sub_21CB81D74();
  v58 = v80;
  v48(&v1[v56], v57, v80);
  v59 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__highPrioritySecurityRecommendations;
  v84 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED828, &qword_21CBAF0E0);
  v60 = v75;
  sub_21CB81D74();
  v61 = v77;
  v62 = *(v76 + 32);
  v62(&v1[v59], v60, v77);
  v63 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__standardPrioritySecurityRecommendations;
  v84 = v50;
  sub_21CB81D74();
  v62(&v1[v63], v60, v61);
  v64 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__hiddenSecurityRecommendations;
  v84 = v50;
  sub_21CB81D74();
  v62(&v1[v64], v60, v61);
  v65 = OBJC_IVAR____TtC17PasswordManagerUI15PMAccountsState__loadedSecurityRecommendations;
  LOBYTE(v84) = 0;
  sub_21CB81D74();
  v82(&v1[v65], v57, v58);
  return v1;
}

void sub_21C6EBB68()
{
  if (!qword_27CDF7648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDF7650, &qword_21CBADD58);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF7648);
    }
  }
}

uint64_t sub_21C6EBBEC()
{
  result = type metadata accessor for PMAccount.CombinedUniqueID(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PMAccount.SIWAUniqueID(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21C6EBC60()
{
  sub_21C6EE344(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21C6EE344(319, &qword_27CDEB318, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21C6EAACC(319, &qword_27CDEB330, MEMORY[0x277D49960]);
      if (v2 <= 0x3F)
      {
        sub_21C6EAACC(319, &qword_27CDEB328, MEMORY[0x277D49948]);
        if (v3 <= 0x3F)
        {
          sub_21C6EAACC(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21C6EBDC8()
{
  sub_21C6EE344(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21CB85B74();
    if (v1 <= 0x3F)
    {
      sub_21C6EAACC(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21C6EBED4()
{
  if (!qword_27CDEB320)
  {
    sub_21C6E8F4C(255, &qword_27CDEB030, 0x277D49B78);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB320);
    }
  }
}

void sub_21C6EBF3C(void *a1, void *a2)
{
  v3 = v2;
  v77 = a2;
  v78 = a1;
  v69 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = &v66 - v6;
  v71 = sub_21CB80BE4();
  v68 = *(v71 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21CB85CE4();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85CC4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v15 = sub_21CB85404();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v2[3] = 0;
  v2[4] = 0;
  v17 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_lastModifiedAccounts;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7650, &qword_21CBADD58);
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  v74 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_queueForLoadingAccounts;
  v19 = sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v72 = "pmui.accounts.fetch";
  v73 = v19;
  sub_21CB853E4();
  v20 = MEMORY[0x277D84F90];
  v79 = MEMORY[0x277D84F90];
  sub_21C6EADA4(&unk_27CDF8670, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7700, &unk_21CBC5B60);
  sub_21C6EAE34(&qword_27CDF8680, &unk_27CDF7700, &unk_21CBC5B60);
  sub_21CB85F14();
  (*(v75 + 104))(v12, *MEMORY[0x277D85260], v76);
  *(v2 + v74) = sub_21CB85D14();
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_isIgnoringAccountStoreChangeNotifications) = 0;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedWarnings) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts) = v20;
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators) = v20;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v21 = sub_21CB81C84();
  __swift_project_value_buffer(v21, qword_27CE186E0);
  v22 = sub_21CB81C64();
  v23 = sub_21CB85AE4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v79 = v25;
    *v24 = 136446210;
    v26 = sub_21CB86554();
    v28 = sub_21C98E004(v26, v27, &v79);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_21C6E5000, v22, v23, "[%{public}s] initialized", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x21CF16D90](v25, -1, -1);
    MEMORY[0x21CF16D90](v24, -1, -1);
  }

  v30 = v77;
  v29 = v78;
  if (v77)
  {
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager) = v77;
    if (v29)
    {
LABEL_7:
      v31 = v30;
      v32 = v29;
LABEL_14:
      *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) = v32;
      v52 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager;
      swift_beginAccess();
      v53 = *(v3 + v52);
      v54 = objc_opt_self();
      v55 = v29;
      v56 = v32;
      v57 = v53;
      v58 = [v54 safari_browserDefaults];
      sub_21C6E8F4C(0, &unk_27CDF7710, 0x277D49AA0);
      v59 = [objc_allocWithZone(MEMORY[0x277D49AA8]) initWithMetadataEntryClass_];
      v60 = [objc_allocWithZone(MEMORY[0x277D49AC8]) initWithSavedAccountStore:v56 autoFillQuirksManager:v57 userDefaults:v58 highLevelDomainsProvider:0 websiteMetadataStore:v59];

      *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_passwordWarningManager) = v60;
      v61 = type metadata accessor for PMAccountsState();
      v62 = *(v61 + 48);
      v63 = *(v61 + 52);
      swift_allocObject();
      v64 = sub_21C6EB34C();
      v3[2] = v64;
      *(v64 + 3) = &off_282E59B38;
      swift_unknownObjectWeakAssign();
      sub_21C6EC92C();
      v65 = [objc_opt_self() defaultCenter];
      [v65 addObserver:v3 selector:sel_accountStoreDidChange name:*MEMORY[0x277D49D78] object:0];

      return;
    }

LABEL_13:
    v50 = objc_opt_self();
    v51 = v30;
    v32 = [v50 sharedStore];
    goto LABEL_14;
  }

  v33 = [objc_opt_self() safari_safariCoreBundle];
  v34 = sub_21CB85584();
  v35 = sub_21CB85584();
  v36 = [v33 URLForResource:v34 withExtension:v35];

  if (v36)
  {
    sub_21CB80B94();

    v37 = [objc_opt_self() defaultManager];
    v38 = [v37 safari_autoFillQuirksDownloadDirectoryURL];

    v39 = v67;
    sub_21CB80B94();

    v40 = v68;
    v41 = v71;
    (*(v68 + 56))(v39, 0, 1, v71);
    v42 = *MEMORY[0x277D49D10];
    v43 = sub_21CB80B74();
    if ((*(v40 + 48))(v39, 1, v41) == 1)
    {
      v44 = 0;
    }

    else
    {
      v44 = sub_21CB80B74();
      (*(v40 + 8))(v39, v41);
    }

    v45 = v40;
    v46 = objc_allocWithZone(MEMORY[0x277D499D8]);
    v47 = sub_21CB85584();
    v48 = sub_21CB85584();
    v49 = [v46 initWithBuiltInQuirksURL:v43 downloadsDirectoryURL:v44 resourceName:v47 resourceVersion:v48 updateDateDefaultsKey:v42 updateInterval:86400.0];

    (*(v45 + 8))(v70, v71);
    *(v3 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_autoFillQuirksManager) = v49;
    [v49 beginLoadingQuirksFromDisk];
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  __break(1u);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t type metadata accessor for PMBulkOperationProgress()
{
  result = qword_27CDF2050;
  if (!qword_27CDF2050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6EC92C()
{
  v1 = sub_21CB853D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85404();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_queueForLoadingAccounts);
  aBlock[4] = sub_21C6ECC94;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_225;
  v10 = _Block_copy(aBlock);

  sub_21CB853E4();
  v14 = MEMORY[0x277D84F90];
  sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_21C6ECBD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

unint64_t sub_21C6ECC3C()
{
  result = qword_27CDF2510;
  if (!qword_27CDF2510)
  {
    type metadata accessor for PMTipsProviderMain();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2510);
  }

  return result;
}

uint64_t sub_21C6ECC9C(uint64_t a1)
{
  v2 = sub_21CB853D4();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21CB85404();
  v42 = *(v44 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81C54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85D34();
  if (qword_27CDEA458 != -1)
  {
    swift_once();
  }

  v12 = qword_27CE186B8;
  sub_21CB81C44();
  v40 = v12;
  sub_21CB81C34();
  v39 = *(v8 + 8);
  v39(v11, v7);
  v13 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore;
  v14 = [*(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_accountStore) savedAccounts];
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v38 = sub_21CB85824();

  v15 = [*(a1 + v13) allRecentlyDeletedSavedAccounts];
  if (v15)
  {
    v16 = v15;
    v37 = sub_21CB85824();
  }

  else
  {
    v37 = 0;
  }

  v17 = [*(a1 + v13) savedAccountsWithNeverSaveMarker];
  if (v17)
  {
    v18 = v17;
    v36 = sub_21CB85824();
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
  }

  v19 = [*(a1 + v13) savedAccountsWithTOTPGenerators];
  v20 = sub_21CB85824();

  v21 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedSavedAccounts;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedRecentlyDeletedSavedAccounts;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithNeverSaveMarker);
  v26 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI17PMPasswordManager_cachedAccountsWithTOTPGenerators);

  sub_21CB85D24();
  sub_21CB81C44();
  sub_21CB81C34();
  v39(v11, v7);
  sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v27 = sub_21CB85CF4();
  v28 = swift_allocObject();
  v29 = v38;
  v28[2] = a1;
  v28[3] = v29;
  v30 = v36;
  v28[4] = v37;
  v28[5] = v30;
  v28[6] = v20;
  v28[7] = v22;
  v28[8] = v24;
  v28[9] = v25;
  v28[10] = v26;
  aBlock[4] = sub_21CACA5BC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_231;
  v31 = _Block_copy(aBlock);

  v32 = v41;
  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C6EADA4(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EAE34(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  v33 = v43;
  v34 = v46;
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v32, v33, v31);
  _Block_release(v31);

  (*(v45 + 8))(v33, v34);
  return (*(v42 + 8))(v32, v44);
}

uint64_t sub_21C6ED290()
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

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_21C6ED308(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - v6;
  v8 = sub_21CB858E4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_21CB858B4();

  v10 = sub_21CB858A4();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = v9;

  v13 = sub_21C98B308(0, 0, v7, &unk_21CBA6790, v11);
  v14 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI11PMTipsStore_observeTipsHandle) = v13;
}

uint64_t sub_21C6ED484()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C6ED4BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_21C6ED504()
{
  sub_21C6EE7A4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_21CB81114();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

char *PMNotificationManager.init()()
{
  v1 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D49AE0]) initIfAvailable];
  v2 = OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager__notifiedAccount;
  v3 = type metadata accessor for PMAccount(0);
  v4 = *(*(v3 - 8) + 56);
  v4(&v0[v2], 1, 1, v3);
  v4(&v0[v2], 1, 1, v3);
  sub_21CB81104();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PMNotificationManager();
  v5 = objc_msgSendSuper2(&v8, sel_init);
  v6 = *&v5[OBJC_IVAR____TtC17PasswordManagerUI21PMNotificationManager_notificationManager];
  if (v6)
  {
    [v6 setDelegate_];
  }

  return v5;
}

void *sub_21C6ED710()
{
  v1 = v0;
  v0[3] = 0xD000000000000027;
  v0[4] = 0x800000021CB932B0;
  v0[5] = swift_getKeyPath();
  v2 = objc_opt_self();
  v3 = [v2 bagSubProfile];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 bagSubProfileVersion];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];

      v8 = [objc_allocWithZone(MEMORY[0x277CEE690]) initWithBag_];
      v1[2] = v8;
      return v1;
    }
  }

  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v9 = sub_21CB81C84();
  __swift_project_value_buffer(v9, qword_27CE186E0);
  v10 = sub_21CB81C64();
  v11 = sub_21CB85AF4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21C6E5000, v10, v11, "AMS failed to return bagSubProfile data.", v12, 2u);
    MEMORY[0x21CF16D90](v12, -1, -1);
  }

  v13 = v1[4];

  v14 = v1[5];

  type metadata accessor for PMAppStoreReviewController();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t type metadata accessor for PMWiFiNetworksStore()
{
  result = qword_27CDFA6B0;
  if (!qword_27CDFA6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6ED94C()
{
  sub_21C6EDA64();
  if (v0 <= 0x3F)
  {
    sub_21C6EAB74(319, &qword_27CDEB310, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CWFSecurityType(319);
      if (v2 <= 0x3F)
      {
        sub_21C6EAB74(319, &qword_27CDFA728, sub_21C6EE9BC);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C6EDA64()
{
  if (!qword_27CDEB308)
  {
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB308);
    }
  }
}

uint64_t sub_21C6EDAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_21C6EDBAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

char *sub_21C6EDC14()
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB108, &qword_21CBA0FE8);
  v1 = *(v33 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v33 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  *(v0 + 2) = swift_getKeyPath();
  v10 = *MEMORY[0x277D49BF0];
  sub_21CB855C4();
  v11 = objc_opt_self();
  v12 = [v11 pm_defaults];
  *(v0 + 3) = sub_21CB81E74();
  v41 = [objc_opt_self() isPasswordsAppInstalled];
  v13 = [v11 safari_browserDefaults];
  sub_21C6EE1F8();
  *(v0 + 4) = sub_21CB81E84();
  v14 = *MEMORY[0x277D49C50];
  sub_21CB855C4();
  v15 = [v11 &selRef_requestAccessForMediaType_completionHandler_ + 5];
  *(v0 + 5) = sub_21CB81E74();
  v16 = [v11 &selRef_requestAccessForMediaType_completionHandler_ + 5];
  *(v0 + 6) = sub_21CB81E74();
  v17 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingPasswordOptionsSheet;
  v40 = 0;
  sub_21CB81D74();
  v18 = *(v6 + 32);
  v18(&v0[v17], v9, v5);
  v19 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingFetchWebsiteNameDebuggerSheet;
  v39 = 0;
  sub_21CB81D74();
  v18(&v0[v19], v9, v5);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isShowingAcceptICloudTermsAndConditionsAlert;
  v38 = 0;
  sub_21CB81D74();
  v18(&v0[v20], v9, v5);
  v21 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__hideDebugMenuUntilRelaunch;
  v37 = 0;
  sub_21CB81D74();
  v18(&v0[v21], v9, v5);
  v22 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__tipOverride;
  v35 = 0;
  v36 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB128, &qword_21CBC4E20);
  sub_21CB81D74();
  (*(v1 + 32))(&v0[v22], v4, v33);
  v23 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__alwaysShowSharedGroupOnboarding;
  v34 = 0;
  sub_21CB81D74();
  v18(&v0[v23], v9, v5);
  v24 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isFuzzySearchEnabled;
  v25 = *MEMORY[0x277D49CC8];
  sub_21CB855C4();
  v26 = [v11 pm_defaults];
  *&v0[v24] = sub_21CB81E74();
  v27 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPromotePasskeyUpgradesEnabled;
  v28 = *MEMORY[0x277D49D08];
  sub_21CB855C4();
  v29 = [v11 pm_defaults];
  *&v0[v27] = sub_21CB81E74();
  v30 = OBJC_IVAR____TtC17PasswordManagerUI22PMDebugSettingsManager__isPasswordsAppiPadNavigationViewEnabled;
  v31 = [v11 pm_defaults];
  *&v0[v30] = sub_21CB81E74();
  return v0;
}

uint64_t sub_21C6EE100(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C7033D8;

  return v7(a1);
}

unint64_t sub_21C6EE1F8()
{
  result = qword_27CDEB130;
  if (!qword_27CDEB130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB130);
  }

  return result;
}

void sub_21C6EE24C()
{
  sub_21C6EBB68();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21C6EE344(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21C6EE394(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21CB85E54();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21C6EE3E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21C6EE450()
{
  sub_21C6EE344(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21C6EAACC(319, &qword_27CDEB310, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_21C6EE344(319, &qword_27CDEB318, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        sub_21C6EBED4();
        if (v3 <= 0x3F)
        {
          sub_21C6EAACC(319, &qword_27CDEB328, MEMORY[0x277D49948]);
          if (v4 <= 0x3F)
          {
            sub_21C6EAACC(319, &qword_27CDEB330, MEMORY[0x277D49960]);
            if (v5 <= 0x3F)
            {
              sub_21C6EAACC(319, &qword_27CDEABC0, MEMORY[0x277D49978]);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
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

unint64_t sub_21C6EE6C0()
{
  result = qword_27CDF7A60;
  if (!qword_27CDF7A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDF7A60);
  }

  return result;
}

uint64_t type metadata accessor for PMAccountsState()
{
  result = qword_27CDED7F0;
  if (!qword_27CDED7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for PMNotificationManager()
{
  result = qword_27CDF62C0;
  if (!qword_27CDF62C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C6EE7A4()
{
  if (!qword_27CDF62D0)
  {
    type metadata accessor for PMAccount(255);
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF62D0);
    }
  }
}

void sub_21C6EE820()
{
  sub_21C6EA5CC(319, &qword_27CDFA6C0, &qword_27CDEE680, &qword_21CBAA1C0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_21C6EA5CC(319, &qword_27CDFA6C8, &qword_27CDEE678, &unk_21CBBA210);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_21C6E7ED8();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t type metadata accessor for PMWiFiNetwork()
{
  result = qword_27CDFA718;
  if (!qword_27CDFA718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21C6EE9BC()
{
  result = qword_27CDFA6D0;
  if (!qword_27CDFA6D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDFA6D0);
  }

  return result;
}

uint64_t PMWiFiNetworksStore.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v44 = *(v5 - 8);
  v45 = v5;
  v6 = *(v44 + 64);
  MEMORY[0x28223BE20](v5);
  v43 = &v40 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA690, &qword_21CBCEF38);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v40 - v22;
  v24 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__savedNetworks;
  v48 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE680, &qword_21CBAA1C0);
  sub_21CB81D74();
  (*(v20 + 32))(v1 + v24, v23, v19);
  v25 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__activeWiFiNetwork;
  v26 = type metadata accessor for PMWiFiNetwork();
  (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
  sub_21C6EF0A0(v18, v16);
  sub_21CB81D74();
  sub_21C6EA794(v18, &qword_27CDEE678, &unk_21CBBA210);
  (*(v8 + 32))(v1 + v25, v11, v42);
  v27 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__loadedNetworks;
  v47 = 0;
  v28 = v43;
  sub_21CB81D74();
  (*(v44 + 32))(v1 + v27, v28, v45);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks;
  v30 = [objc_opt_self() pm_defaults];
  *(v1 + v29) = sub_21CB81E74();
  v31 = [objc_allocWithZone(MEMORY[0x277D02B18]) init];
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface) = v31;
  v32 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore__showDemoWiFiNetworks);

  sub_21CB81E94();

  if ((v46 & 1) != 0 || ([objc_opt_self() isRunningInStoreDemoMode] & 1) != 0 || (v33 = objc_msgSend(objc_opt_self(), sel_processInfo), v34 = objc_msgSend(v33, sel_safari_isPasswordManagerTestMode), v33, v34))
  {
    sub_21CB64580();
  }

  else
  {
    v36 = sub_21CB858E4();
    v37 = v41;
    (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v38;
    sub_21C9E6C0C(0, 0, v37, &unk_21CBCEF90, v39);

    sub_21C6EA794(v37, &qword_27CDF1D50, &qword_21CBA0C00);
  }

  return v1;
}

uint64_t sub_21C6EEFA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C6EEFF0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21C6EF0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6EF110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C6F35D0;

  return sub_21C6EF280(a1, v4, v5, v6);
}

uint64_t storeEnumTagSinglePayload for PMSortOption(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21C6EF2A0()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C704F58();
  }

  v2 = *(v0 + 64);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21C6EF374();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21C6EF374()
{
  v67[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v57 = v53 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  v53[0] = *(v4 - 8);
  v5 = *(v53[0] + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v54 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v53 - v9;
  v53[1] = v11;
  MEMORY[0x28223BE20](v8);
  v13 = v53 - v12;
  v65 = type metadata accessor for PMWiFiNetwork();
  v59 = *(v65 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v65);
  v63 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface);
  v16 = [v64 knownNetworkProfilesWithProperties_];
  if (v16)
  {
    v17 = v16;
    sub_21C6EE9BC();
    v18 = sub_21CB85824();

    if (!(v18 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v55 = v0;
      v56 = v10;
      if (v19)
      {
        goto LABEL_4;
      }

LABEL_23:
      v66 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }
  }

  v19 = sub_21CB85FA4();
  v55 = v0;
  v56 = v10;
  if (!v19)
  {
    goto LABEL_23;
  }

LABEL_4:
  v20 = 0;
  v58 = 0;
  v61 = v18 & 0xFFFFFFFFFFFFFF8;
  v62 = v18 & 0xC000000000000001;
  v66 = MEMORY[0x277D84F90];
  v60 = (v59 + 48);
  do
  {
    if (v62)
    {
      v21 = MEMORY[0x21CF15BD0](v20, v18);
    }

    else
    {
      if (v20 >= *(v61 + 16))
      {
        goto LABEL_28;
      }

      v21 = *(v18 + 8 * v20 + 32);
    }

    v22 = v21;
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
    }

    v24 = v18;
    v67[0] = 0;
    v25 = [v64 passwordForKnownNetworkProfile:v21 error:v67];
    v26 = v67[0];
    if (v25)
    {
      v27 = v25;
      v28 = sub_21CB855C4();
      v30 = v29;
      v31 = v26;
    }

    else
    {
      v32 = v67[0];
      v33 = sub_21CB80B14();

      swift_willThrow();
      v28 = 0;
      v30 = 0;
      v58 = 0;
    }

    sub_21C6F0958(v22, v28, v30, v13);
    if ((*v60)(v13, 1, v65) == 1)
    {
      sub_21C6EA794(v13, &qword_27CDEE678, &unk_21CBBA210);
      v18 = v24;
    }

    else
    {
      sub_21C6F0E30(v13, v63);
      v18 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_21C6F0E94(0, v66[2] + 1, 1, v66);
      }

      v35 = v66[2];
      v34 = v66[3];
      if (v35 >= v34 >> 1)
      {
        v66 = sub_21C6F0E94(v34 > 1, v35 + 1, 1, v66);
      }

      v36 = v66;
      v66[2] = v35 + 1;
      sub_21C6F0E30(v63, v36 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v35);
    }

    ++v20;
  }

  while (v23 != v19);
LABEL_24:

  v37 = v56;
  (*(v59 + 56))(v56, 1, 1, v65);
  v38 = [v64 currentKnownNetworkProfile];
  v39 = v54;
  if (v38)
  {
    v40 = v38;
    v41 = sub_21C6F3480(v38);
    sub_21C6F0958(v40, v41, v42, v39);
    sub_21C6EA794(v37, &qword_27CDEE678, &unk_21CBBA210);
    sub_21C6F3560(v39, v37);
  }

  v43 = sub_21CB858E4();
  v44 = v57;
  (*(*(v43 - 8) + 56))(v57, 1, 1, v43);
  v45 = swift_allocObject();
  swift_weakInit();
  sub_21C6EF0A0(v37, v39);
  sub_21CB858B4();

  v46 = sub_21CB858A4();
  v47 = (*(v53[0] + 80) + 48) & ~*(v53[0] + 80);
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D85700];
  v48[2] = v46;
  v48[3] = v49;
  v50 = v66;
  v48[4] = v45;
  v48[5] = v50;
  sub_21C6F3560(v39, v48 + v47);

  sub_21C98B308(0, 0, v44, &unk_21CBCF020, v48);

  result = sub_21C6EA794(v37, &qword_27CDEE678, &unk_21CBBA210);
  v52 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_21C6EF9CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = &v0[v3];
  v9 = type metadata accessor for PMWiFiNetwork();
  if (!(*(*(v9 - 1) + 48))(&v0[v3], 1, v9))
  {
    v19 = v4;
    v10 = *(v8 + 1);

    v11 = *(v8 + 3);

    v12 = *(v8 + 5);

    v13 = v9[7];
    v14 = sub_21CB80DD4();
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (!v16(&v8[v13], 1, v14))
    {
      (*(v15 + 8))(&v8[v13], v14);
    }

    v17 = v9[8];
    if (!v16(&v8[v17], 1, v14))
    {
      (*(v15 + 8))(&v8[v17], v14);
    }

    v4 = v19;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_21C6EFBC8()
{
  sub_21C6EFE5C();
  if (v0 <= 0x3F)
  {
    sub_21C705370(319, &qword_27CDEB8A8, type metadata accessor for PMWiFiDetailsModel, MEMORY[0x277CDD7D0]);
    if (v1 <= 0x3F)
    {
      sub_21C705370(319, &qword_27CDEF190, type metadata accessor for PMAppRootNavigationModel, MEMORY[0x277CDD7D0]);
      if (v2 <= 0x3F)
      {
        sub_21C705370(319, &qword_27CDEF198, type metadata accessor for PMAppAccountsListModel, MEMORY[0x277CDD7D0]);
        if (v3 <= 0x3F)
        {
          sub_21C705370(319, &qword_27CDEF1A0, type metadata accessor for PMAppSecurityRecommendationsModel, MEMORY[0x277CDD7D0]);
          if (v4 <= 0x3F)
          {
            sub_21C705370(319, &qword_27CDEBD50, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_21C705370(319, &qword_27CDEC860, MEMORY[0x277CDDAF0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_21C705B34();
                if (v7 <= 0x3F)
                {
                  sub_21C705CFC();
                  if (v8 <= 0x3F)
                  {
                    sub_21C706378();
                    if (v9 <= 0x3F)
                    {
                      sub_21C70640C();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C6EFE5C()
{
  if (!qword_27CDEB8A0)
  {
    type metadata accessor for PMCombinedAccountDetailsModel(255);
    sub_21C6F06B8(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel);
    v0 = sub_21CB823D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEB8A0);
    }
  }
}

void sub_21C6EFEF0()
{
  sub_21C6F0320(319, &qword_27CDF63E8, type metadata accessor for PMAccount);
  if (v1 <= 0x3F)
  {
    v23 = *(v0 - 8) + 64;
    sub_21C6F0320(319, &qword_27CDF63F0, type metadata accessor for _ASDeleteKind);
    if (v3 <= 0x3F)
    {
      v24 = *(v2 - 8) + 64;
      sub_21C6EA5CC(319, &qword_27CDF63F8, &qword_27CDF6400, &qword_21CBC0820);
      if (v5 <= 0x3F)
      {
        v25 = *(v4 - 8) + 64;
        sub_21C6F039C(319, &qword_27CDEAEE0);
        if (v7 <= 0x3F)
        {
          v8 = *(v6 - 8) + 64;
          sub_21C6F039C(319, &qword_27CDEAEC8);
          if (v10 <= 0x3F)
          {
            v26 = *(v9 - 8) + 64;
            sub_21C6EA5CC(319, &qword_27CDF6408, &qword_27CDF6410, &unk_21CBC0828);
            if (v12 <= 0x3F)
            {
              v27 = *(v11 - 8) + 64;
              sub_21C6EA5CC(319, &qword_27CDF6418, &qword_27CDEE100, &unk_21CBA95B0);
              if (v14 <= 0x3F)
              {
                v28 = *(v13 - 8) + 64;
                sub_21C6EA5CC(319, &qword_27CDF6420, &qword_27CDF6428, &qword_21CBC0838);
                if (v16 <= 0x3F)
                {
                  v29 = *(v15 - 8) + 64;
                  sub_21C6EA5CC(319, &qword_27CDF6430, &qword_27CDF0138, &qword_21CBC0840);
                  if (v18 <= 0x3F)
                  {
                    v30 = *(v17 - 8) + 64;
                    sub_21C6EA5CC(319, &qword_27CDF6438, &qword_27CDF6440, &qword_21CBC0848);
                    if (v20 <= 0x3F)
                    {
                      v31 = *(v19 - 8) + 64;
                      sub_21C6F0320(319, &qword_27CDF6448, type metadata accessor for PMAccountHistoryModel);
                      if (v22 <= 0x3F)
                      {
                        v32 = *(v21 - 8) + 64;
                        swift_updateClassMetadata2();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_21C6F0320(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB81DD4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6F039C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21CB81DD4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21C6F03E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21C6F0438()
{
  sub_21C704B10();
  if (v0 <= 0x3F)
  {
    sub_21C6F04AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21C6F04AC()
{
  if (!qword_27CDF6468)
  {
    v0 = sub_21CB80E34();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF6468);
    }
  }
}

uint64_t type metadata accessor for PMAccountHistoryModel()
{
  result = qword_27CDF20A0;
  if (!qword_27CDF20A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21C6F0588()
{
  result = type metadata accessor for PMAccount(319);
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_21CB81114();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21C6F0670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6F06B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6F0700(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6F0748(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21C6F0790(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21CB85E54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_21C6F07E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21C6F0848()
{
  if (!qword_27CDEABC0)
  {
    sub_21CB85C44();
    v0 = sub_21CB85E54();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDEABC0);
    }
  }
}

uint64_t sub_21C6F08A0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C6EE100(a1, v5);
}

uint64_t sub_21C6F0958@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v45 - v13;
  v15 = type metadata accessor for PMWiFiNetwork();
  v48 = *(v15 - 1);
  v16 = *(v48 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = [a1 identifier];
  if (v19)
  {
    v47 = a4;
    v20 = v19;
    v45 = sub_21CB855C4();
    v46 = v21;

    v22 = [a1 networkName];
    if (v22)
    {
      v23 = v22;
      v24 = sub_21CB855C4();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    if ([a1 isPasspoint])
    {
      v27 = [a1 displayedOperatorName];
      if (v27)
      {
        v28 = v27;

        v24 = sub_21CB855C4();
        v26 = v29;

LABEL_10:
        v30 = [a1 addReason] == 9 || objc_msgSend(a1, sel_addReason) == 10;
        v31 = [a1 isProfileBased] | v30;
        v32 = v46;
        *v18 = v45;
        v18[1] = v32;
        v18[2] = v24;
        v18[3] = v26;
        if (a3)
        {
          v33 = HIBYTE(a3) & 0xF;
          if ((a3 & 0x2000000000000000) == 0)
          {
            v33 = a2 & 0xFFFFFFFFFFFFLL;
          }

          if (!v33)
          {
            goto LABEL_18;
          }
        }

        if (v31)
        {
LABEL_18:

          a2 = 0;
          a3 = 0;
        }

        v18[4] = a2;
        v18[5] = a3;
        v34 = [a1 addedAt];
        if (v34)
        {
          v35 = v34;
          sub_21CB80D94();

          v36 = sub_21CB80DD4();
          (*(*(v36 - 8) + 56))(v14, 0, 1, v36);
        }

        else
        {
          v37 = sub_21CB80DD4();
          (*(*(v37 - 8) + 56))(v14, 1, 1, v37);
        }

        sub_21C6F1098(v14, v18 + v15[7]);
        v38 = [a1 lastJoinedOnAnyDeviceAt];
        if (v38)
        {
          v39 = v38;
          sub_21CB80D94();

          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        v41 = sub_21CB80DD4();
        (*(*(v41 - 8) + 56))(v12, v40, 1, v41);
        sub_21C6F1098(v12, v18 + v15[8]);
        *(v18 + v15[9]) = v31 & 1;
        *(v18 + v15[10]) = [a1 hiddenState] == 1;
        *(v18 + v15[11]) = [a1 supportedSecurityTypes];
        *(v18 + v15[12]) = [a1 strongestSupportedSecurityType];
        *(v18 + v15[13]) = [a1 isPersonalHotspot];
        *(v18 + v15[14]) = a1;
        v42 = v47;
        sub_21C6F0E30(v18, v47);
        return (*(v48 + 56))(v42, 0, 1, v15);
      }
    }

    if (v26)
    {
      goto LABEL_10;
    }

    a4 = v47;
  }

  else
  {
  }

  v44 = *(v48 + 56);

  return v44(a4, 1, 1, v15);
}

uint64_t sub_21C6F0E30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiNetwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_21C6F0EBC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
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

uint64_t sub_21C6F1098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6F116C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C6F1234(a1, v4, v5, sub_21C6F1234, v6);
}

uint64_t sub_21C6F1234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_21C702EFC;

  return sub_21C7025D0(a1, a2, a3, a5);
}

uint64_t sub_21C6F12EC()
{
  v1 = v0[33];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];
  v5 = v0[28];
  v6 = v0[26];
  v7 = v0[18];
  *v5 = 1;
  (*(v4 + 104))(v5, *MEMORY[0x277D85768], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF52F0, &unk_21CBBD7F8);
  sub_21CB85924();
  sub_21C6EADEC(&qword_27CDED3E0, &qword_27CDF90C0, &qword_21CBCADE0);
  sub_21CB85964();
  swift_beginAccess();
  v8 = v0[34];
  v9 = sub_21CB858A4();
  v0[38] = v9;
  sub_21C6EADEC(&qword_27CDF52F8, &qword_27CDF52E8, &qword_21CBBD7F0);
  v10 = *(MEMORY[0x277D856D8] + 4);
  v11 = swift_task_alloc();
  v0[39] = v11;
  *v11 = v0;
  v11[1] = sub_21C6F330C;
  v12 = v0[33];
  v13 = v0[31];
  v14 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 5, v9, v14);
}

id sub_21C6F14E4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v20 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_21CB85CE4();
  v3 = *(v17 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v17);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85CC4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v9 = sub_21CB85404();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v16 = OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_queue;
  v11 = sub_21C6E8F4C(0, &qword_27CDEBE70, 0x277D85C78);
  v15[0] = "I.GroupUpdateHandler";
  v15[1] = v11;
  sub_21CB853F4();
  v22 = MEMORY[0x277D84F90];
  sub_21C6F17EC(&unk_27CDF8670, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF7700, &unk_21CBC5B60);
  sub_21C6EADEC(&qword_27CDF8680, &unk_27CDF7700, &unk_21CBC5B60);
  sub_21CB85F14();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v17);
  *&v2[v16] = sub_21CB85D14();
  v12 = &v2[OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_callback];
  v13 = v20;
  *v12 = v19;
  *(v12 + 1) = v13;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, sel_init);
}

uint64_t sub_21C6F17A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6F17EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21C6F1834(void *a1)
{
  v3 = sub_21CB853D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21CB85404();
  v8 = *(v18 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v18);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *&v1[OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_21C6F2278;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_42;
  v13 = _Block_copy(aBlock);
  v14 = v1;
  v15 = a1;
  sub_21CB853E4();
  v19 = MEMORY[0x277D84F90];
  sub_21C6F17EC(&qword_27CDEAF48, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0);
  sub_21CB85F14();
  MEMORY[0x21CF15800](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v18);
}

uint64_t sub_21C6F1B0C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C6F1B88()
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0A0, &unk_21CBCD948);
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - v3;
  swift_beginAccess();
  v24 = *(v0 + 16);
  if ((v24 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_21CB85F64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
    sub_21C6EADEC(&qword_27CDFA0A8, &qword_27CDF7258, &qword_21CBC4710);
    result = sub_21CB85A14();
    v6 = v29;
    v5 = v30;
    v8 = v31;
    v7 = v32;
    v9 = v33;
  }

  else
  {
    v10 = -1 << *(v24 + 32);
    v5 = v24 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v24 + 56);
    v6 = v24;
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
  }

  v23 = v8;
  v13 = (v8 + 64) >> 6;
  v14 = (v1 + 8);
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v7;
    v16 = v9;
    v17 = v7;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      sub_21C6F1E7C();
    }

    while (1)
    {
      v21 = v19 + *(*v19 + 88);
      v22 = v25;
      sub_21CB85904();

      result = (*v14)(v22, v26);
      v7 = v17;
      v9 = v18;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = sub_21CB85FE4();
      if (v20)
      {
        v27 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
        swift_dynamicCast();
        v19 = v28;
        v17 = v7;
        v18 = v9;
        if (v28)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_18;
    }

    v16 = *(v5 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

size_t sub_21C6F1E84(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PMSharingGroup();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - v9;
  v11 = *(a1 + OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_callback);
  v12 = *(a1 + OBJC_IVAR____TtCV17PasswordManagerUI27PMSharingGroupsProviderMain18GroupUpdateHandler_callback + 8);
  v13 = [a2 cachedInvitations];
  v14 = sub_21C6E8F4C(0, &qword_27CDF90A0, 0x277CDBD08);
  v15 = sub_21CB85824();

  if (v15 >> 62)
  {
    v16 = sub_21CB85FA4();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v12;
  v41 = v11;
  if (v16)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_21C7B1188(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      goto LABEL_30;
    }

    v38 = v14;
    v39 = a2;
    v18 = 0;
    v19 = v43;
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x21CF15BD0](v18, v15);
      }

      else
      {
        v20 = *(v15 + 8 * v18 + 32);
      }

      v21 = v20;
      sub_21C7B9304(v10);

      v43 = v19;
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21C7B1188(v22 > 1, v23 + 1, 1);
        v19 = v43;
      }

      ++v18;
      *(v19 + 16) = v23 + 1;
      sub_21C9C9820(v10, v19 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23);
    }

    while (v16 != v18);

    v24 = v42;
    a2 = v39;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
    v24 = v42;
  }

  v25 = [a2 cachedGroups];
  v26 = sub_21CB85824();

  if (!(v26 >> 62))
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27)
    {
      goto LABEL_16;
    }

LABEL_27:

    v30 = MEMORY[0x277D84F90];
LABEL_28:
    v41(v19, v30);
  }

  v27 = sub_21CB85FA4();
  if (!v27)
  {
    goto LABEL_27;
  }

LABEL_16:
  v28 = v26;
  v43 = MEMORY[0x277D84F90];
  result = sub_21C7B1188(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = v43;
    v31 = v28;
    v42 = (v28 & 0xC000000000000001);
    v32 = v28;
    do
    {
      if (v42)
      {
        v33 = MEMORY[0x21CF15BD0](v29, v31);
      }

      else
      {
        v33 = *(v31 + 8 * v29 + 32);
      }

      v34 = v33;
      sub_21C7B9304(v24);

      v43 = v30;
      v35 = v24;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21C7B1188(v36 > 1, v37 + 1, 1);
        v30 = v43;
      }

      ++v29;
      *(v30 + 16) = v37 + 1;
      sub_21C9C9820(v35, v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v37);
      v24 = v35;
      v31 = v32;
    }

    while (v27 != v29);

    goto LABEL_28;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_21C6F2280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21C702EFC;

  return sub_21C6F234C(a1, v4, v5, v1 + 4, v6);
}

uint64_t sub_21C6F234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = *a4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21C702EFC;

  return sub_21C6F2414(a1, a2, a3, v10, a5);
}

uint64_t sub_21C6F2414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[49] = a4;
  v5[50] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3C0, &qword_21CBA67A0);
  v5[51] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[52] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED3C8, &qword_21CBA67A8);
  v5[53] = v8;
  v9 = *(v8 - 8);
  v5[54] = v9;
  v10 = *(v9 + 64) + 15;
  v5[55] = swift_task_alloc();
  v5[56] = sub_21CB858B4();
  v5[57] = sub_21CB858A4();
  v12 = sub_21CB85874();
  v5[58] = v12;
  v5[59] = v11;

  return MEMORY[0x2822009F8](sub_21C6F2BB4, v12, v11);
}

uint64_t sub_21C6F2554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF90B0, &qword_21CBCADD8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  v10[0] = a1;
  v10[1] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8);
  sub_21CB85914();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21C6F2664(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF90A8, &unk_21CBCADC8) - 8) + 80);

  return sub_21C6F2554(a1, a2);
}

uint64_t sub_21C6F26F0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0A0, &unk_21CBCD948);
  v30 = *(v1 - 8);
  v31 = v1;
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v1);
  v29 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B0, &qword_21CBCD958);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B8, &qword_21CBCD960);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_21C6F2D24(&v29 - v18, v11);
  (*(v5 + 16))(v9, v11, v4);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  v23 = swift_allocObject();
  (*(v5 + 32))(v23 + *(*v23 + 88), v9, v4);
  swift_beginAccess();

  sub_21C7028AC(&v33, v23);
  swift_endAccess();

  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  *(v25 + 24) = v23;

  sub_21CB858F4();
  v26 = v23 + *(*v23 + 88);
  v27 = v29;
  sub_21CB85904();
  (*(v30 + 8))(v27, v31);
  (*(v13 + 16))(v17, v19, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED230, &unk_21CBA6460);
  sub_21C6EADEC(&qword_27CDFA0C0, &qword_27CDFA0B8, &qword_21CBCD960);
  sub_21CB861B4();

  (*(v5 + 8))(v11, v4);
  return (*(v13 + 8))(v19, v12);
}

uint64_t sub_21C6F2B3C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21C6F2B74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21C6F2BB4()
{
  v1 = v0[55];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[50];
  sub_21C6F26F0(v0[52]);
  sub_21C6EADEC(&qword_27CDED3D0, &qword_27CDED3C0, &qword_21CBA67A0);
  sub_21CB85964();
  swift_beginAccess();
  v5 = v0[56];
  v6 = sub_21CB858A4();
  v0[60] = v6;
  sub_21C6EADEC(&qword_27CDED3D8, &qword_27CDED3C8, &qword_21CBA67A8);
  v7 = *(MEMORY[0x277D856D8] + 4);
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_21C70427C;
  v9 = v0[55];
  v10 = v0[53];
  v11 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v0 + 2, v6, v11);
}

uint64_t sub_21C6F2D24(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D0, &qword_21CBCD980);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B8, &qword_21CBCD960);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0D8, &qword_21CBCD988);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B0, &qword_21CBCD958);
  v20 = *(v19 - 8);
  (*(v20 + 56))(v18, 1, 1, v19);
  v24 = v18;
  (*(v3 + 104))(v6, *MEMORY[0x277D85778], v2);
  sub_21CB85924();
  (*(v8 + 16))(v23, v11, v7);
  sub_21C703874(v18, v16);
  result = (*(v20 + 48))(v16, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
    (*(v20 + 32))(v22, v16, v19);
    return sub_21C702844(v18);
  }

  return result;
}

uint64_t sub_21C6F3030(uint64_t a1, uint64_t a2)
{
  sub_21C702844(a2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDFA0B0, &qword_21CBCD958);
  v7 = *(v4 - 8);
  (*(v7 + 16))(a2, a1, v4);
  v5 = *(v7 + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_21C6F3120(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21C6F31B4(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21CA99764(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_21CA9E9B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_21C702ABC(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_21CB86484();
  MEMORY[0x21CF15F90](v4);
  result = sub_21CB864D4();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7258, &qword_21CBC4710);
  result = sub_21CB863A4();
  __break(1u);
  return result;
}

uint64_t sub_21C6F330C()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;

  v5 = v2[38];

  v6 = v2[37];
  v7 = v2[36];
  if (v0)
  {
    v8 = sub_21CA1DB18;
  }

  else
  {
    v8 = sub_21C7038E4;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_21C6F3480(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI19PMWiFiNetworksStore_interface);
  v13[0] = 0;
  v4 = [v3 passwordForKnownNetworkProfile:a1 error:v13];
  v5 = v13[0];
  if (v4)
  {
    v6 = v4;
    v7 = sub_21CB855C4();
    v8 = v5;
  }

  else
  {
    v9 = v13[0];
    v10 = sub_21CB80B14();

    swift_willThrow();
    v7 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t sub_21C6F3560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C6F35D4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask);
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI35PMCredentialExchangeDataImportModel__importTask) = *(v0 + 24);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = (type metadata accessor for PMAppTOTPMigrationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB158, &unk_21CBA12F0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for PMSafariSettingsBreadcrumbs();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82484();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_2()
{
  v1 = v0;
  v2 = type metadata accessor for PMShareAccountButton();
  v3 = *(*(v2 - 1) + 80);
  v184 = *(*(v2 - 1) + 64);
  v185 = (v3 + 16) & ~v3;
  v4 = v0 + v185;
  v5 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v185, 1, v5))
  {
    v6 = *(v4 + 8);

    v7 = type metadata accessor for PMAccount(0);
    v8 = (v4 + v7[5]);
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v8 + 1);

    v11 = *(v8 + 3);

    v176 = v7;
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *(v8 + 5);

      v13 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v14 = v13[7];
      v15 = sub_21CB85B74();
      (*(*(v15 - 8) + 8))(&v8[v14], v15);
      v16 = *&v8[v13[8] + 8];

      v17 = v13[9];
      v18 = sub_21CB85C44();
      v19 = *(v18 - 8);
      if (!(*(v19 + 48))(&v8[v17], 1, v18))
      {
        (*(v19 + 8))(&v8[v17], v18);
      }
    }

    else
    {
      v20 = v0;
      v21 = *(v8 + 4);

      v22 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v23 = v22[7];
      v24 = sub_21CB85C04();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v8[v23], 1, v24))
      {
        (*(v25 + 8))(&v8[v23], v24);
      }

      v26 = v22[8];
      v27 = sub_21CB85BB4();
      v28 = *(v27 - 8);
      if (!(*(v28 + 48))(&v8[v26], 1, v27))
      {
        (*(v28 + 8))(&v8[v26], v27);
      }

      v29 = v22[9];
      v30 = sub_21CB85C44();
      v31 = *(v30 - 8);
      v1 = v20;
      v7 = v176;
      if (!(*(v31 + 48))(&v8[v29], 1, v30))
      {
        (*(v31 + 8))(&v8[v29], v30);
      }
    }

    v32 = v4 + v7[6];
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v179 = v2;
      v181 = v3;
      v177 = v1;
      v33 = *(v32 + 8);

      v34 = *(v32 + 24);

      v35 = *(v32 + 40);

      v36 = *(v32 + 56);

      v37 = type metadata accessor for PMAccount.MockData(0);
      v38 = v37[8];
      v39 = sub_21CB80DD4();
      v40 = *(v39 - 8);
      v41 = *(v40 + 48);
      if (!v41(v32 + v38, 1, v39))
      {
        (*(v40 + 8))(v32 + v38, v39);
      }

      v42 = *(v32 + v37[9]);

      v43 = *(v32 + v37[10] + 8);

      v44 = *(v32 + v37[11] + 8);

      v45 = v37[12];
      if (!v41(v32 + v45, 1, v39))
      {
        (*(v40 + 8))(v32 + v45, v39);
      }

      v46 = v37[15];
      v47 = sub_21CB85BB4();
      v48 = *(v47 - 8);
      v3 = v181;
      if (!(*(v48 + 48))(v32 + v46, 1, v47))
      {
        (*(v48 + 8))(v32 + v46, v47);
      }

      v49 = v37[16];
      v50 = sub_21CB85C04();
      v51 = *(v50 - 8);
      v2 = v179;
      if (!(*(v51 + 48))(v32 + v49, 1, v50))
      {
        (*(v51 + 8))(v32 + v49, v50);
      }

      v52 = *(v32 + v37[17] + 8);

      v53 = v37[18];
      v54 = sub_21CB85C44();
      v55 = *(v54 - 8);
      v1 = v177;
      v7 = v176;
      if (!(*(v55 + 48))(v32 + v53, 1, v54))
      {
        (*(v55 + 8))(v32 + v53, v54);
      }
    }

    else
    {
    }

    v56 = v4 + v7[7];
    if (*(v56 + 8))
    {
    }

    v57 = v4 + *(v5 + 20);
    v58 = type metadata accessor for PMSharingGroup();
    v59 = *(*(v58 - 1) + 48);
    if (!v59(v57, 1, v58))
    {
      v60 = sub_21CB85C44();
      (*(*(v60 - 8) + 8))(v57, v60);
      v61 = *(v57 + v58[5] + 8);

      v62 = *(v57 + v58[6]);

      v63 = *(v57 + v58[7] + 8);
    }

    v64 = v4 + *(v5 + 24);
    if (!v59(v64, 1, v58))
    {
      v65 = sub_21CB85C44();
      (*(*(v65 - 8) + 8))(v64, v65);
      v66 = *(v64 + v58[5] + 8);

      v67 = *(v64 + v58[6]);

      v68 = *(v64 + v58[7] + 8);
    }
  }

  v69 = v4 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
  v70 = type metadata accessor for PMAccount(0);
  if (!(*(*(v70 - 1) + 48))(v69, 1, v70))
  {
    v71 = *(v69 + 8);

    v72 = (v69 + v70[5]);
    type metadata accessor for PMAccount.UniqueID(0);
    v73 = swift_getEnumCaseMultiPayload();
    v74 = *(v72 + 1);

    v75 = *(v72 + 3);

    v180 = v2;
    if (v73 == 1)
    {
      v76 = *(v72 + 5);

      v77 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v78 = v77[7];
      v79 = sub_21CB85B74();
      (*(*(v79 - 8) + 8))(&v72[v78], v79);
      v80 = *&v72[v77[8] + 8];

      v81 = v77[9];
      v82 = sub_21CB85C44();
      v83 = *(v82 - 8);
      if (!(*(v83 + 48))(&v72[v81], 1, v82))
      {
        (*(v83 + 8))(&v72[v81], v82);
      }
    }

    else
    {
      v84 = v1;
      v85 = *(v72 + 4);

      v86 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v87 = v86[7];
      v88 = sub_21CB85C04();
      v89 = *(v88 - 8);
      if (!(*(v89 + 48))(&v72[v87], 1, v88))
      {
        (*(v89 + 8))(&v72[v87], v88);
      }

      v90 = v86[8];
      v91 = sub_21CB85BB4();
      v92 = *(v91 - 8);
      if (!(*(v92 + 48))(&v72[v90], 1, v91))
      {
        (*(v92 + 8))(&v72[v90], v91);
      }

      v93 = v86[9];
      v94 = sub_21CB85C44();
      v95 = *(v94 - 8);
      v1 = v84;
      v2 = v180;
      if (!(*(v95 + 48))(&v72[v93], 1, v94))
      {
        (*(v95 + 8))(&v72[v93], v94);
      }
    }

    v96 = v69 + v70[6];
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v182 = v3;
      v178 = v1;
      v97 = *(v96 + 8);

      v98 = *(v96 + 24);

      v99 = *(v96 + 40);

      v100 = *(v96 + 56);

      v101 = type metadata accessor for PMAccount.MockData(0);
      v102 = v101[8];
      v103 = sub_21CB80DD4();
      v104 = *(v103 - 8);
      v105 = *(v104 + 48);
      if (!v105(v96 + v102, 1, v103))
      {
        (*(v104 + 8))(v96 + v102, v103);
      }

      v106 = *(v96 + v101[9]);

      v107 = *(v96 + v101[10] + 8);

      v108 = *(v96 + v101[11] + 8);

      v109 = v101[12];
      if (!v105(v96 + v109, 1, v103))
      {
        (*(v104 + 8))(v96 + v109, v103);
      }

      v110 = v101[15];
      v111 = sub_21CB85BB4();
      v112 = *(v111 - 8);
      v3 = v182;
      if (!(*(v112 + 48))(v96 + v110, 1, v111))
      {
        (*(v112 + 8))(v96 + v110, v111);
      }

      v113 = v101[16];
      v114 = sub_21CB85C04();
      v115 = *(v114 - 8);
      if (!(*(v115 + 48))(v96 + v113, 1, v114))
      {
        (*(v115 + 8))(v96 + v113, v114);
      }

      v116 = *(v96 + v101[17] + 8);

      v117 = v101[18];
      v118 = sub_21CB85C44();
      v119 = *(v118 - 8);
      v1 = v178;
      v2 = v180;
      if (!(*(v119 + 48))(v96 + v117, 1, v118))
      {
        (*(v119 + 8))(v96 + v117, v118);
      }
    }

    else
    {
    }

    v120 = v69 + v70[7];
    if (*(v120 + 8))
    {
    }
  }

  v121 = *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB688, &unk_21CBA2410) + 28));

  v122 = v4 + v2[5];
  v123 = sub_21CB80E34();
  (*(*(v123 - 8) + 8))(v122, v123);
  v124 = *(v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30) + 28));

  v125 = *(v4 + v2[6] + 8);

  v126 = v4 + v2[8];
  v127 = *(v126 + 8);

  v128 = (v126 + v70[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v129 = swift_getEnumCaseMultiPayload();
  v130 = *(v128 + 1);

  v131 = *(v128 + 3);

  if (v129 == 1)
  {
    v132 = *(v128 + 5);

    v133 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v134 = v133[7];
    v135 = sub_21CB85B74();
    (*(*(v135 - 8) + 8))(&v128[v134], v135);
    v136 = *&v128[v133[8] + 8];

    v137 = v133[9];
    v138 = sub_21CB85C44();
    v139 = *(v138 - 8);
    if ((*(v139 + 48))(&v128[v137], 1, v138))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  v166 = *(v128 + 4);

  v167 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v168 = v167[7];
  v169 = sub_21CB85C04();
  v170 = *(v169 - 8);
  if (!(*(v170 + 48))(&v128[v168], 1, v169))
  {
    (*(v170 + 8))(&v128[v168], v169);
  }

  v171 = v167[8];
  v172 = sub_21CB85BB4();
  v173 = *(v172 - 8);
  if (!(*(v173 + 48))(&v128[v171], 1, v172))
  {
    (*(v173 + 8))(&v128[v171], v172);
  }

  v137 = v167[9];
  v138 = sub_21CB85C44();
  v139 = *(v138 - 8);
  if (!(*(v139 + 48))(&v128[v137], 1, v138))
  {
LABEL_55:
    (*(v139 + 8))(&v128[v137], v138);
  }

LABEL_56:
  v140 = v126 + v70[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v141 = v1;
    v183 = v3;
    v142 = *(v140 + 8);

    v143 = *(v140 + 24);

    v144 = *(v140 + 40);

    v145 = *(v140 + 56);

    v146 = type metadata accessor for PMAccount.MockData(0);
    v147 = v146[8];
    v148 = sub_21CB80DD4();
    v149 = *(v148 - 8);
    v150 = *(v149 + 48);
    if (!v150(v140 + v147, 1, v148))
    {
      (*(v149 + 8))(v140 + v147, v148);
    }

    v151 = *(v140 + v146[9]);

    v152 = *(v140 + v146[10] + 8);

    v153 = *(v140 + v146[11] + 8);

    v154 = v146[12];
    if (!v150(v140 + v154, 1, v148))
    {
      (*(v149 + 8))(v140 + v154, v148);
    }

    v155 = v146[15];
    v156 = sub_21CB85BB4();
    v157 = *(v156 - 8);
    v1 = v141;
    if (!(*(v157 + 48))(v140 + v155, 1, v156))
    {
      (*(v157 + 8))(v140 + v155, v156);
    }

    v158 = v146[16];
    v159 = sub_21CB85C04();
    v160 = *(v159 - 8);
    v3 = v183;
    if (!(*(v160 + 48))(v140 + v158, 1, v159))
    {
      (*(v160 + 8))(v140 + v158, v159);
    }

    v161 = *(v140 + v146[17] + 8);

    v162 = v146[18];
    v163 = sub_21CB85C44();
    v164 = *(v163 - 8);
    v165 = v185;
    if (!(*(v164 + 48))(v140 + v162, 1, v163))
    {
      (*(v164 + 8))(v140 + v162, v163);
    }
  }

  else
  {

    v165 = v185;
  }

  v174 = v126 + v70[7];
  if (*(v174 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v165 + v184, v3 | 7);
}

uint64_t objectdestroyTm_3()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for PMAccountFieldRow();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 40);

  v11 = *(v0 + v5 + 48);

  v12 = v3[12];
  v13 = *(v2 - 8);
  if (!(*(v13 + 48))(v0 + v5 + v12, 1, v2))
  {
    (*(v13 + 8))(v7 + v12, v2);
  }

  v14 = *(v7 + v3[15] + 8);

  v15 = *(v7 + v3[23] + 8);

  v16 = *(v7 + v3[24] + 8);

  v17 = *(v7 + v3[25] + 8);

  v18 = *(v7 + v3[26] + 8);

  sub_21C7E3CFC(*(v7 + v3[27]), *(v7 + v3[27] + 8), *(v7 + v3[27] + 16));
  sub_21C7025C4(*(v7 + v3[28]), *(v7 + v3[28] + 8));
  v19 = v3[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_21CB82834();
    (*(*(v20 - 8) + 8))(v7 + v19, v20);
  }

  else
  {
    v21 = *(v7 + v19);
  }

  v22 = *(v7 + v3[30]);

  v23 = v3[31];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CDEB7F0, &unk_21CBA2600);
  (*(*(v24 - 8) + 8))(v7 + v23, v24);
  v25 = *(v7 + v3[33] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for PMAccountIcon();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 64);

  v12 = *(v0 + v3 + 80);

  v13 = v1[11];
  v14 = sub_21CB85B74();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v3 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  if (*(v5 + v1[15] + 8) != 1)
  {
  }

  if (*(v5 + v1[16] + 48) != 1)
  {
  }

  v16 = (v5 + v1[17]);
  v17 = *v16;
  v18 = v16[1];
  v19 = *(v16 + 16);
  sub_21C70AC30();
  v20 = v5 + v1[18];
  v21 = sub_21CB80E34();
  (*(*(v21 - 8) + 8))(v20, v21);
  v22 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB690, &unk_21CBA2A30) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_5()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountPickerRow();
  v3 = *(*(v2 - 1) + 80);
  v57 = *(*(v2 - 1) + 64);
  v58 = (v3 + 16) & ~v3;
  v4 = v0 + v58;
  v5 = *(v0 + v58 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v58 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v56 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v1 = v56;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v4 + v6[7];
  if (*(v51 + 8))
  {
  }

  v52 = *(v4 + v2[5] + 8);

  v53 = v4 + v2[6];
  if (*(v53 + 16) >= 5uLL)
  {
  }

  if (*(v53 + 32) >= 2uLL)
  {
  }

  v54 = *(v4 + v2[7] + 8);

  return MEMORY[0x2821FE8E8](v1, v58 + v57, v3 | 7);
}

uint64_t objectdestroyTm_6()
{
  v1 = type metadata accessor for PMAccountPickerViewContent();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 32);

  v9 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82484();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v5 + *(v1 + 32) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_7()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[6];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for PMAccountsListOverflowButton() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 40);

  v7 = (v0 + v3 + v1[9]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000) + 32);
  v11 = sub_21CB85114();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_10()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_21C70AC30();

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_12()
{
  v1 = type metadata accessor for PMAccountsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 48);

  v9 = *(v0 + v3 + 72);

  v10 = *(v0 + v3 + 88);

  v11 = v0 + v3 + v1[10];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8) + 28));

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v15 = (v5 + v1[12]);
  v16 = *v15;

  v17 = v15[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_13()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccountsViewAccountCell();
  v3 = *(*(v2 - 8) + 80);
  v61 = *(*(v2 - 8) + 64);
  v62 = (v3 + 16) & ~v3;
  v4 = v0 + v62;
  v5 = *(v0 + v62);

  v63 = v2;
  v6 = v0 + v62 + *(v2 + 20);
  v7 = *(v6 + 8);

  v8 = type metadata accessor for PMAccount(0);
  v9 = (v6 + v8[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v9 + 1);

  v12 = *(v9 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v13 = *(v9 + 5);

    v14 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v15 = v14[7];
    v16 = sub_21CB85B74();
    (*(*(v16 - 8) + 8))(&v9[v15], v16);
    v17 = *&v9[v14[8] + 8];

    v18 = v14[9];
    v19 = sub_21CB85C44();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(&v9[v18], 1, v19))
    {
      (*(v20 + 8))(&v9[v18], v19);
    }
  }

  else
  {
    v21 = *(v9 + 4);

    v22 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v23 = v22[7];
    v24 = sub_21CB85C04();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(&v9[v23], 1, v24))
    {
      (*(v25 + 8))(&v9[v23], v24);
    }

    v26 = v22[8];
    v27 = sub_21CB85BB4();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v9[v26], 1, v27))
    {
      (*(v28 + 8))(&v9[v26], v27);
    }

    v29 = v22[9];
    v30 = sub_21CB85C44();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(&v9[v29], 1, v30))
    {
      (*(v31 + 8))(&v9[v29], v30);
    }
  }

  v32 = v6 + v8[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v59 = v3;
    v60 = v1;
    v33 = *(v32 + 8);

    v34 = *(v32 + 24);

    v35 = *(v32 + 40);

    v36 = *(v32 + 56);

    v37 = type metadata accessor for PMAccount.MockData(0);
    v38 = v37[8];
    v39 = sub_21CB80DD4();
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    if (!v41(v32 + v38, 1, v39))
    {
      (*(v40 + 8))(v32 + v38, v39);
    }

    v42 = *(v32 + v37[9]);

    v43 = *(v32 + v37[10] + 8);

    v44 = *(v32 + v37[11] + 8);

    v45 = v37[12];
    if (!v41(v32 + v45, 1, v39))
    {
      (*(v40 + 8))(v32 + v45, v39);
    }

    v46 = v37[15];
    v47 = sub_21CB85BB4();
    v48 = *(v47 - 8);
    v1 = v60;
    if (!(*(v48 + 48))(v32 + v46, 1, v47))
    {
      (*(v48 + 8))(v32 + v46, v47);
    }

    v49 = v37[16];
    v50 = sub_21CB85C04();
    v51 = *(v50 - 8);
    v3 = v59;
    if (!(*(v51 + 48))(v32 + v49, 1, v50))
    {
      (*(v51 + 8))(v32 + v49, v50);
    }

    v52 = *(v32 + v37[17] + 8);

    v53 = v37[18];
    v54 = sub_21CB85C44();
    v55 = *(v54 - 8);
    if (!(*(v55 + 48))(v32 + v53, 1, v54))
    {
      (*(v55 + 8))(v32 + v53, v54);
    }
  }

  else
  {
  }

  v56 = v6 + v8[7];
  if (*(v56 + 8))
  {
  }

  v57 = *(v4 + *(v63 + 24) + 8);

  return MEMORY[0x2821FE8E8](v1, v62 + v61, v3 | 7);
}

uint64_t objectdestroyTm_14()
{
  v1 = v0[6];

  v2 = v0[8];

  v3 = v0[10];

  v4 = v0[12];

  v5 = v0[14];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t objectdestroyTm_15()
{
  v1 = type metadata accessor for PMAddAccountView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_16()
{
  v1 = v0;
  v2 = type metadata accessor for PMEditAccountWebsitesView();
  v3 = *(*(v2 - 1) + 80);
  v78 = *(*(v2 - 1) + 64);
  v79 = (v3 + 16) & ~v3;
  v4 = v0 + v79;
  v5 = *(v0 + v79 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v79 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v77 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v1 = v77;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v4 + v6[7];
  if (*(v51 + 8))
  {
  }

  v52 = (v4 + v2[5]);
  v53 = *v52;

  v54 = v52[1];

  v55 = v52[2];

  v56 = (v4 + v2[6]);
  v57 = *v56;

  v58 = v56[1];

  v59 = v56[2];

  v60 = (v4 + v2[7]);
  v61 = *v60;

  v62 = v60[1];

  v63 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v64 = sub_21CB823B4();
    (*(*(v64 - 8) + 8))(v4 + v63, v64);
  }

  else
  {
    v65 = *(v4 + v63);
  }

  v66 = v2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = sub_21CB82484();
    (*(*(v67 - 8) + 8))(v4 + v66, v67);
  }

  else
  {
    v68 = *(v4 + v66);
  }

  v69 = v4 + v2[10];
  v70 = sub_21CB80E34();
  v71 = *(v70 - 8);
  v72 = *(v71 + 48);
  if (!v72(v69, 1, v70))
  {
    (*(v71 + 8))(v69, v70);
  }

  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE0E0, &unk_21CBA9580);
  v74 = *(v69 + *(v73 + 36));

  v75 = *(v73 + 40);
  if (!v72(v69 + v75, 1, v70))
  {
    (*(v71 + 8))(v69 + v75, v70);
  }

  return MEMORY[0x2821FE8E8](v1, v79 + v78, v3 | 7);
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for PMOnboardingRootView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82484();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v5 + v1[7]);

  v14 = *(v5 + v1[8]);

  v15 = *(v5 + v1[9]);

  v16 = (v5 + v1[10]);
  v17 = *v16;

  v18 = v16[1];

  v19 = (v5 + v1[11]);
  v20 = *v19;

  v21 = v19[1];

  v22 = *(v5 + v1[12] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for PMAppAccountsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82834();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB82A34();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  v13 = *(v5 + v1[7] + 8);

  v14 = *(v5 + v1[8] + 8);

  v15 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  v19 = *(v5 + v1[10]);

  v20 = *(v5 + v1[11]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_19(uint64_t a1)
{
  v3 = v1[3];

  v4 = v1[4];

  v5 = v1[7];

  v6 = v1[9];

  v7 = v1[10];

  v8 = v1[12];

  v9 = v1[13];

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroyTm_20()
{
  v1 = type metadata accessor for PMAppRecentlyDeletedAccountsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB82A34();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB83834();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v5 + v14, 1, v15))
    {
      (*(v16 + 8))(v5 + v14, v15);
    }
  }

  else
  {
    v17 = *(v5 + v14);
  }

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_21()
{
  v1 = type metadata accessor for PMAppRootNavigationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA0, &qword_21CBAE130);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v0 + v3 + v1[5];
  v8 = *(v7 + 8);

  v9 = *(v7 + 24);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFFA8, &qword_21CBAE138);
  v11 = v10[8];
  v12 = sub_21CB83AD4();
  (*(*(v12 - 8) + 8))(v7 + v11, v12);
  v13 = *(v7 + v10[9]);

  v14 = *(v7 + v10[10]);

  v15 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  v19 = *(v5 + v1[7]);

  v20 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEADD0, &qword_21CBA6F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = sub_21CB81FE4();
    (*(*(v21 - 8) + 8))(v5 + v20, v21);
  }

  else
  {
    v22 = *(v5 + v20);
  }

  v23 = *(v5 + v1[9] + 24);

  v24 = *(v5 + v1[10]);

  v25 = *(v5 + v1[11]);

  v26 = *(v5 + v1[12]);

  v27 = *(v5 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_22()
{
  v1 = (type metadata accessor for PMAppSecurityRecommendationsList() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0358, &unk_21CBAEB00);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_23()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for PMImageBadgeModifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v4 + 64);
  (*(*(v2 - 8) + 8))(v0 + *(v3 + 52) + v6, v2);

  return MEMORY[0x2821FE8E8](v0, v6 + v7, v5 | 7);
}

uint64_t objectdestroyTm_24()
{
  v1 = type metadata accessor for PMAppSourceList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(v0 + v3 + v1[5] + 8);

  v8 = *(v0 + v3 + v1[6] + 8);

  v9 = *(v0 + v3 + v1[7] + 8);

  v10 = *(v0 + v3 + v1[8] + 8);

  sub_21C7025C4(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v11 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB83834();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
    v14 = *(v5 + v11);
  }

  v15 = *(v5 + v1[11]);

  v16 = *(v5 + v1[12]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_25()
{
  v1 = v0;
  v2 = type metadata accessor for PMChangePasswordOnWebsiteLink();
  v3 = *(*(v2 - 1) + 80);
  v64 = *(*(v2 - 1) + 64);
  v63 = (v3 + 16) & ~v3;
  v4 = v0 + v63;
  v5 = *(v0 + v63);
  v6 = *(v0 + v63 + 8);
  v7 = *(v0 + v63 + 16);
  sub_21C79C1F4();
  v8 = v0 + v63 + v2[5];
  v9 = *(v8 + 8);

  v10 = type metadata accessor for PMAccount(0);
  v11 = (v8 + v10[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *(v11 + 1);

  v14 = *(v11 + 3);

  v62 = v10;
  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(v11 + 5);

    v16 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v17 = v16[7];
    v18 = sub_21CB85B74();
    (*(*(v18 - 8) + 8))(&v11[v17], v18);
    v19 = *&v11[v16[8] + 8];

    v20 = v16[9];
    v21 = sub_21CB85C44();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(&v11[v20], 1, v21))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v47 = *(v11 + 4);

  v48 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v49 = v48[7];
  v50 = sub_21CB85C04();
  v51 = *(v50 - 8);
  if (!(*(v51 + 48))(&v11[v49], 1, v50))
  {
    (*(v51 + 8))(&v11[v49], v50);
  }

  v52 = v48[8];
  v53 = sub_21CB85BB4();
  v54 = *(v53 - 8);
  if (!(*(v54 + 48))(&v11[v52], 1, v53))
  {
    (*(v54 + 8))(&v11[v52], v53);
  }

  v20 = v48[9];
  v21 = sub_21CB85C44();
  v22 = *(v21 - 8);
  v10 = v62;
  if (!(*(v22 + 48))(&v11[v20], 1, v21))
  {
LABEL_3:
    (*(v22 + 8))(&v11[v20], v21);
  }

LABEL_4:
  v23 = v8 + v10[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v60 = v3;
    v61 = v1;
    v24 = *(v23 + 8);

    v25 = *(v23 + 24);

    v26 = *(v23 + 40);

    v27 = *(v23 + 56);

    v28 = type metadata accessor for PMAccount.MockData(0);
    v29 = v28[8];
    v30 = sub_21CB80DD4();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (!v32(v23 + v29, 1, v30))
    {
      (*(v31 + 8))(v23 + v29, v30);
    }

    v33 = *(v23 + v28[9]);

    v34 = *(v23 + v28[10] + 8);

    v35 = *(v23 + v28[11] + 8);

    v36 = v28[12];
    if (!v32(v23 + v36, 1, v30))
    {
      (*(v31 + 8))(v23 + v36, v30);
    }

    v37 = v28[15];
    v38 = sub_21CB85BB4();
    v39 = *(v38 - 8);
    v1 = v61;
    if (!(*(v39 + 48))(v23 + v37, 1, v38))
    {
      (*(v39 + 8))(v23 + v37, v38);
    }

    v40 = v28[16];
    v41 = sub_21CB85C04();
    v42 = *(v41 - 8);
    v3 = v60;
    if (!(*(v42 + 48))(v23 + v40, 1, v41))
    {
      (*(v42 + 8))(v23 + v40, v41);
    }

    v43 = *(v23 + v28[17] + 8);

    v44 = v28[18];
    v45 = sub_21CB85C44();
    v46 = *(v45 - 8);
    v10 = v62;
    if (!(*(v46 + 48))(v23 + v44, 1, v45))
    {
      (*(v46 + 8))(v23 + v44, v45);
    }
  }

  else
  {
  }

  v55 = v8 + v10[7];
  if (*(v55 + 8))
  {
  }

  v56 = *(v4 + v2[7] + 8);

  v57 = (v4 + v2[9]);
  if (*v57)
  {
    v58 = v57[1];
  }

  return MEMORY[0x2821FE8E8](v1, v63 + v64, v3 | 7);
}

uint64_t objectdestroyTm_26()
{
  v1 = type metadata accessor for PMCombinedAccountDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 48);
  v10 = *(v0 + v3 + 56);
  v11 = *(v0 + v3 + 64);
  sub_21C79C1F4();
  sub_21C940E04(*(v5 + 72), *(v5 + 80));
  sub_21C7025C4(*(v5 + 88), *(v5 + 96));
  v12 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB82834();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  sub_21C7025C4(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  v15 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB83834();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  sub_21C7025C4(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  v19 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_27()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t objectdestroyTm_29()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroyTm_30()
{
  v1 = (type metadata accessor for PMEditGroupFlow() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for PMSharingGroup();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7] + 8);

  v11 = *(v0 + v3 + v1[7] + 8);

  __swift_destroy_boxed_opaque_existential_0((v0 + v3 + v1[8]));
  v12 = v0 + v3 + v1[9];
  v13 = sub_21CB82644();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0) + 28));

  v15 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB823B4();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_31()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_21C79C1F4();

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t objectdestroyTm_32()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm_33()
{
  v1 = type metadata accessor for PMICloudTermsAndConditionsAlert();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82484();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = *(v6 + *(v1 + 20) + 8);

  v10 = (v6 + *(v1 + 24));
  v11 = *v10;

  v12 = v10[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_34()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for PMProgressView();
  v4 = *(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = (v4 + 32) & ~v4;
  v7 = v0 + v6;
  (*(*(v2 - 8) + 8))(v0 + v6, v2);
  v8 = *(v0 + v6 + v3[9] + 8);

  v9 = v0 + v6 + v3[10];
  v10 = *v9;
  v11 = *(v9 + 8);
  j__swift_release();
  v12 = v3[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B18, &unk_21CBB3F50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB83E64();
    (*(*(v13 - 8) + 8))(v7 + v12, v13);
  }

  else
  {
    v14 = *(v7 + v12);
  }

  v15 = v3[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_21CB82834();
    (*(*(v16 - 8) + 8))(v7 + v15, v16);
  }

  else
  {
    v17 = *(v7 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v4 | 7);
}

uint64_t objectdestroyTm_35()
{
  v1 = type metadata accessor for PMGeneratedPasswordsLogView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  MEMORY[0x21CF16E70](v0 + v3);
  v6 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + v1[6] + 8);

  v10 = v5 + v1[8];
  v11 = *(v10 + 8);

  v12 = *(v10 + 16);

  v13 = (v5 + v1[9]);
  v14 = *v13;

  v15 = v13[1];

  v16 = (v5 + v1[10]);
  v17 = *v16;

  v18 = v16[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_36()
{
  v1 = type metadata accessor for PMWebsiteNameFetchingDebuggerView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB823B4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5]);

  v9 = *(v5 + v1[6] + 8);

  v10 = v5 + v1[7];
  v11 = *(v10 + 1);

  v12 = *(v10 + 2);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_37()
{
  v1 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  sub_21C7025C4(*(v5 + 16), *(v5 + 24));
  v7 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82834();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = *(v5 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_38()
{
  v1 = type metadata accessor for PMGroupInvitationAcceptanceFlow();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for PMSharingGroup();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7] + 8);

  v11 = v0 + v3 + v1[5];
  v12 = sub_21CB82644();
  (*(*(v12 - 8) + 8))(v11, v12);
  v13 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0) + 28));

  v14 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB823B4();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  v17 = *(v5 + v1[7] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_39()
{
  v1 = (type metadata accessor for PMGroupInvitationDetails() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_21CB85C44();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = type metadata accessor for PMSharingGroup();
  v8 = *(v0 + v3 + v7[5] + 8);

  v9 = *(v0 + v3 + v7[6]);

  v10 = *(v0 + v3 + v7[7] + 8);

  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_21CB823B4();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_40()
{
  v1 = (type metadata accessor for PMGroupInvitationOnboardingView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v0 + v3 + v6[5] + 8);

  v8 = *(v0 + v3 + v6[6]);

  v9 = *(v0 + v3 + v6[7] + 8);

  v10 = *(v0 + v3 + v1[7] + 8);

  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = *(v0 + v3 + v1[9] + 8);

  v13 = v0 + v3 + v1[10];

  v14 = *(v13 + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_41()
{
  v1 = type metadata accessor for PMGroupInvitationsList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = (v0 + v3 + v1[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = (v7 + *(type metadata accessor for PMDismissAction() + 20));
    if (!*v9)
    {
      goto LABEL_5;
    }

    v7 = v9 + 1;
  }

  v10 = *v7;

LABEL_5:
  v11 = v5 + v1[7];
  v12 = sub_21CB85C44();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v11, 1, v12))
  {
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED978, &qword_21CBA7DE8) + 28));

  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_42()
{
  v1 = type metadata accessor for PMAccountHistoryView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + *(v1 + 28) + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_43()
{
  v1 = (type metadata accessor for PMGroupInvitationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v0 + v3 + v6[5] + 8);

  v8 = *(v0 + v3 + v6[6]);

  v9 = *(v0 + v3 + v6[7] + 8);

  v10 = (v0 + v3 + v1[7]);
  v11 = *v10;

  v12 = v10[1];

  v13 = *(v0 + v3 + v1[8]);

  v14 = *(v0 + v3 + v1[10] + 8);

  v15 = *(v0 + v3 + v1[11] + 8);

  sub_21C7025C4(*(v0 + v3 + v1[12]), *(v0 + v3 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_44()
{
  v1 = type metadata accessor for PMEmptyStateDetailView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  v8 = sub_21CB85C44();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 6, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v1[6] + 8);

  v11 = *(v5 + v1[7] + 8);

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = v5 + v1[10];
  v15 = type metadata accessor for PMSharingGroup();
  if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
  {
    (*(v9 + 8))(v14, v8);
    v16 = *(v14 + v15[5] + 8);

    v17 = *(v14 + v15[6]);

    v18 = *(v14 + v15[7] + 8);
  }

  v19 = *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4658, &unk_21CBBAEF0) + 28));

  v20 = *(v5 + v1[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_45()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  if (v0[5])
  {

    v4 = v0[7];
  }

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_46()
{
  v1 = type metadata accessor for PMCredentialExchangeOnboardingView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB83834();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB823B4();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  v14 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_21CB82054();
    (*(*(v15 - 8) + 8))(v5 + v14, v15);
  }

  else
  {
    v16 = *(v5 + v14);
  }

  v17 = v5 + v1[10];
  v18 = sub_21CB818C4();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v17, 1, v18))
  {
    (*(v19 + 8))(v17, v18);
  }

  v20 = *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4A48, &qword_21CBBC058) + 28));

  v21 = *(v5 + v1[11] + 8);

  v22 = v5 + v1[12];
  v23 = *(v22 + 8);

  v24 = *(v22 + 16);

  v25 = (v5 + v1[13]);
  if (*v25)
  {

    v26 = v25[1];
  }

  v27 = v25[2];

  v28 = *(v5 + v1[14] + 8);

  v29 = *(v5 + v1[15] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_47()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroyTm_48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for PMGroupMembersList();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  v9 = *(v0 + v5 + 24);

  v10 = *(v0 + v5 + 40);

  v11 = *(v0 + v5 + 56);

  v12 = *(v0 + v5 + 80);

  v13 = (v0 + v5 + v3[19]);
  v14 = type metadata accessor for PMRemoveGroupMemberConfirmationAlert.Parameters(0);
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v15 = *v13;

    v16 = v13[1];

    v17 = v13[3];

    v18 = v13[4];

    v19 = v13 + v14[6];
    v20 = sub_21CB85C44();
    (*(*(v20 - 8) + 8))(v19, v20);
    v21 = type metadata accessor for PMSharingGroup();
    v22 = *&v19[v21[5] + 8];

    v23 = *&v19[v21[6]];

    v24 = *&v19[v21[7] + 8];

    v25 = v13 + v14[7];
    if (*(v25 + 5))
    {
      v26 = *(v25 + 1);

      v27 = *(v25 + 3);

      v28 = *(v25 + 5);

      v29 = *(v25 + 7);

      v30 = *(v25 + 9);

      v31 = *(v25 + 12);
    }

    v32 = *(v13 + v14[8] + 8);
  }

  v33 = *(v7 + v3[20] + 8);

  v34 = *(v7 + v3[21] + 8);

  sub_21C7025C4(*(v7 + v3[22]), *(v7 + v3[22] + 8));
  v35 = *(v7 + v3[24] + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + v6, v4 | 7);
}

uint64_t objectdestroyTm_49()
{
  v1 = (type metadata accessor for PMAppAccountsCollectionView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 40);

  v10 = *(v0 + v3 + 56);

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB83834();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
    v14 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_50()
{
  v1 = type metadata accessor for PMWiFiList();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4F98, &unk_21CBBCE20);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB82A34();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  sub_21C7025C4(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    v13 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_51()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  if (v0[8])
  {

    v4 = v0[10];
  }

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t objectdestroyTm_52()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  v4 = *(v0 + 64);

  v5 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroyTm_53()
{
  v1 = type metadata accessor for PMWiFiDetailsView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_21CB82834();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(&v5[v8], v9);
  }

  else
  {
    v10 = *&v5[v8];
  }

  v11 = v1[6];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5490, &unk_21CBBE090);
  (*(*(v12 - 8) + 8))(&v5[v11], v12);
  v13 = *&v5[v1[8] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_54()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  if (*(v0 + 48))
  {
  }

  v3 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroyTm_55()
{
  v1 = v0[5];

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  v5 = v0[13];

  v6 = v0[15];

  v7 = v0[17];

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t objectdestroyTm_56()
{
  v1 = v0;
  v2 = type metadata accessor for PMLargeTypeView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = (v0 + v4 + v2[5]);
  v9 = type metadata accessor for PMLargeTypeView.Icon(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    goto LABEL_32;
  }

  v81 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v8 + 1);

  if (EnumCaseMultiPayload == 1)
  {
    v79 = v0;
    v12 = *(v8 + 3);

    v13 = *(v8 + 5);

    v14 = type metadata accessor for PMWiFiNetwork();
    v15 = v14[7];
    v16 = sub_21CB80DD4();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    if (!v18(&v8[v15], 1, v16))
    {
      (*(v17 + 8))(&v8[v15], v16);
    }

    v19 = v14[8];
    if (!v18(&v8[v19], 1, v16))
    {
      (*(v17 + 8))(&v8[v19], v16);
    }

    v20 = &v8[v14[14]];
    v1 = v79;
    v5 = v81;
    v4 = (v3 + 16) & ~v3;
    goto LABEL_31;
  }

  v21 = type metadata accessor for PMAccount(0);
  v22 = &v8[v21[5]];
  type metadata accessor for PMAccount.UniqueID(0);
  v23 = swift_getEnumCaseMultiPayload();
  v24 = *(v22 + 1);

  v25 = *(v22 + 3);

  v78 = v21;
  if (v23 == 1)
  {
    v26 = *(v22 + 5);

    v27 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v28 = v27[7];
    v29 = sub_21CB85B74();
    (*(*(v29 - 8) + 8))(&v22[v28], v29);
    v30 = *&v22[v27[8] + 8];

    v31 = v27[9];
    v32 = sub_21CB85C44();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(&v22[v31], 1, v32))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v57 = *(v22 + 4);

  v58 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v59 = v58[7];
  v60 = sub_21CB85C04();
  v61 = *(v60 - 8);
  if (!(*(v61 + 48))(&v22[v59], 1, v60))
  {
    (*(v61 + 8))(&v22[v59], v60);
  }

  v62 = v58[8];
  v63 = sub_21CB85BB4();
  v64 = *(v63 - 8);
  if (!(*(v64 + 48))(&v22[v62], 1, v63))
  {
    (*(v64 + 8))(&v22[v62], v63);
  }

  v31 = v58[9];
  v32 = sub_21CB85C44();
  v33 = *(v32 - 8);
  v21 = v78;
  if (!(*(v33 + 48))(&v22[v31], 1, v32))
  {
LABEL_10:
    (*(v33 + 8))(&v22[v31], v32);
  }

LABEL_11:
  v34 = &v8[v21[6]];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v1;
    v35 = *(v34 + 1);

    v36 = *(v34 + 3);

    v37 = *(v34 + 5);

    v38 = *(v34 + 7);

    v39 = type metadata accessor for PMAccount.MockData(0);
    v40 = v39[8];
    v41 = sub_21CB80DD4();
    v77 = *(v41 - 8);
    v42 = *(v77 + 48);
    if (!v42(&v34[v40], 1, v41))
    {
      (*(v77 + 8))(&v34[v40], v41);
    }

    v43 = *&v34[v39[9]];

    v44 = *&v34[v39[10] + 8];

    v45 = *&v34[v39[11] + 8];

    v46 = v39[12];
    if (!v42(&v34[v46], 1, v41))
    {
      (*(v77 + 8))(&v34[v46], v41);
    }

    v47 = v39[15];
    v48 = sub_21CB85BB4();
    v49 = *(v48 - 8);
    v1 = v80;
    if (!(*(v49 + 48))(&v34[v47], 1, v48))
    {
      (*(v49 + 8))(&v34[v47], v48);
    }

    v50 = v39[16];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(&v34[v50], 1, v51))
    {
      (*(v52 + 8))(&v34[v50], v51);
    }

    v53 = *&v34[v39[17] + 8];

    v54 = v39[18];
    v55 = sub_21CB85C44();
    v56 = *(v55 - 8);
    v21 = v78;
    if (!(*(v56 + 48))(&v34[v54], 1, v55))
    {
      (*(v56 + 8))(&v34[v54], v55);
    }
  }

  else
  {
  }

  v65 = &v8[v21[7]];
  v5 = v81;
  v4 = (v3 + 16) & ~v3;
  if (*(v65 + 1))
  {

    v20 = (v65 + 24);
LABEL_31:
  }

LABEL_32:
  v66 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v67 = sub_21CB823B4();
    (*(*(v67 - 8) + 8))(v6 + v66, v67);
  }

  else
  {
    v68 = *(v6 + v66);
  }

  v69 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = sub_21CB83834();
    v71 = *(v70 - 8);
    if (!(*(v71 + 48))(v6 + v69, 1, v70))
    {
      (*(v71 + 8))(v6 + v69, v70);
    }
  }

  else
  {
    v72 = *(v6 + v69);
  }

  v73 = v2[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB5E0, &qword_21CBA21D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74 = sub_21CB82054();
    (*(*(v74 - 8) + 8))(v6 + v73, v74);
  }

  else
  {
    v75 = *(v6 + v73);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_57()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t objectdestroyTm_58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroyTm_59()
{
  v1 = (type metadata accessor for PMImportView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF60C8, &unk_21CBC02A0);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_60()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_61()
{
  v1 = v0;
  v2 = type metadata accessor for PMMoveAccountToGroupAlert(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = (v1 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB82484();
    (*(*(v7 - 8) + 8))(v1 + v4, v7);
  }

  else
  {
    v8 = *v6;
  }

  v9 = (v6 + v2[5]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF68C0, &qword_21CBC1F78) + 32);
  v13 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    v138 = v13;
    v142 = v5;
    v144 = (v3 + 16) & ~v3;
    v146 = v3;
    v14 = *(v12 + 1);

    v15 = type metadata accessor for PMAccount(0);
    v16 = &v12[v15[5]];
    type metadata accessor for PMAccount.UniqueID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *(v16 + 1);

    v19 = *(v16 + 3);

    if (EnumCaseMultiPayload == 1)
    {
      v20 = *(v16 + 5);

      v21 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v22 = v21[7];
      v23 = sub_21CB85B74();
      (*(*(v23 - 8) + 8))(&v16[v22], v23);
      v24 = *&v16[v21[8] + 8];

      v25 = v21[9];
      v26 = sub_21CB85C44();
      v27 = *(v26 - 8);
      if (!(*(v27 + 48))(&v16[v25], 1, v26))
      {
        (*(v27 + 8))(&v16[v25], v26);
      }
    }

    else
    {
      v28 = v2;
      v29 = *(v16 + 4);

      v30 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v31 = v30[7];
      v32 = sub_21CB85C04();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(&v16[v31], 1, v32))
      {
        (*(v33 + 8))(&v16[v31], v32);
      }

      v34 = v30[8];
      v35 = sub_21CB85BB4();
      v36 = *(v35 - 8);
      if (!(*(v36 + 48))(&v16[v34], 1, v35))
      {
        (*(v36 + 8))(&v16[v34], v35);
      }

      v37 = v30[9];
      v38 = sub_21CB85C44();
      v39 = *(v38 - 8);
      v2 = v28;
      if (!(*(v39 + 48))(&v16[v37], 1, v38))
      {
        (*(v39 + 8))(&v16[v37], v38);
      }
    }

    v40 = &v12[v15[6]];
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v137 = v15;
      v139 = v2;
      v140 = v1;
      v41 = *(v40 + 1);

      v42 = *(v40 + 3);

      v43 = *(v40 + 5);

      v44 = *(v40 + 7);

      v45 = type metadata accessor for PMAccount.MockData(0);
      v46 = v45[8];
      v47 = sub_21CB80DD4();
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);
      if (!v49(&v40[v46], 1, v47))
      {
        (*(v48 + 8))(&v40[v46], v47);
      }

      v50 = *&v40[v45[9]];

      v51 = *&v40[v45[10] + 8];

      v52 = *&v40[v45[11] + 8];

      v53 = v45[12];
      if (!v49(&v40[v53], 1, v47))
      {
        (*(v48 + 8))(&v40[v53], v47);
      }

      v54 = v45[15];
      v55 = sub_21CB85BB4();
      v56 = *(v55 - 8);
      v1 = v140;
      if (!(*(v56 + 48))(&v40[v54], 1, v55))
      {
        (*(v56 + 8))(&v40[v54], v55);
      }

      v57 = v45[16];
      v58 = sub_21CB85C04();
      v59 = *(v58 - 8);
      v15 = v137;
      if (!(*(v59 + 48))(&v40[v57], 1, v58))
      {
        (*(v59 + 8))(&v40[v57], v58);
      }

      v60 = *&v40[v45[17] + 8];

      v61 = v45[18];
      v62 = sub_21CB85C44();
      v63 = *(v62 - 8);
      v2 = v139;
      if (!(*(v63 + 48))(&v40[v61], 1, v62))
      {
        (*(v63 + 8))(&v40[v61], v62);
      }
    }

    else
    {
    }

    v64 = &v12[v15[7]];
    if (*(v64 + 1))
    {
    }

    v65 = &v12[*(v138 + 20)];
    v66 = type metadata accessor for PMSharingGroup();
    v67 = *(*(v66 - 1) + 48);
    if (!v67(v65, 1, v66))
    {
      v68 = sub_21CB85C44();
      (*(*(v68 - 8) + 8))(v65, v68);
      v69 = *&v65[v66[5] + 8];

      v70 = *&v65[v66[6]];

      v71 = *&v65[v66[7] + 8];
    }

    v72 = &v12[*(v138 + 24)];
    v73 = v67(v72, 1, v66);
    v4 = v144;
    v3 = v146;
    v5 = v142;
    if (!v73)
    {
      v74 = sub_21CB85C44();
      (*(*(v74 - 8) + 8))(v72, v74);
      v75 = *&v72[v66[5] + 8];

      v76 = *&v72[v66[6]];

      v77 = *&v72[v66[7] + 8];
    }
  }

  v78 = *(v6 + v2[6] + 8);

  v79 = *(v6 + v2[7] + 8);

  v80 = v6 + v2[8];
  v81 = type metadata accessor for PMAccount(0);
  if (!(*(*(v81 - 1) + 48))(v80, 1, v81))
  {
    v145 = v4;
    v147 = v3;
    v82 = *(v80 + 1);

    v83 = &v80[v81[5]];
    type metadata accessor for PMAccount.UniqueID(0);
    v84 = swift_getEnumCaseMultiPayload();
    v85 = *(v83 + 1);

    v86 = *(v83 + 3);

    v143 = v5;
    if (v84 == 1)
    {
      v87 = *(v83 + 5);

      v88 = type metadata accessor for PMAccount.SIWAUniqueID(0);
      v89 = v88[7];
      v90 = sub_21CB85B74();
      (*(*(v90 - 8) + 8))(&v83[v89], v90);
      v91 = *&v83[v88[8] + 8];

      v92 = v88[9];
      v93 = sub_21CB85C44();
      v94 = *(v93 - 8);
      if (!(*(v94 + 48))(&v83[v92], 1, v93))
      {
        (*(v94 + 8))(&v83[v92], v93);
      }
    }

    else
    {
      v95 = *(v83 + 4);

      v96 = type metadata accessor for PMAccount.CombinedUniqueID(0);
      v97 = v96[7];
      v98 = sub_21CB85C04();
      v99 = *(v98 - 8);
      if (!(*(v99 + 48))(&v83[v97], 1, v98))
      {
        (*(v99 + 8))(&v83[v97], v98);
      }

      v100 = v96[8];
      v101 = sub_21CB85BB4();
      v102 = *(v101 - 8);
      if (!(*(v102 + 48))(&v83[v100], 1, v101))
      {
        (*(v102 + 8))(&v83[v100], v101);
      }

      v103 = v96[9];
      v104 = sub_21CB85C44();
      v105 = *(v104 - 8);
      v5 = v143;
      if (!(*(v105 + 48))(&v83[v103], 1, v104))
      {
        (*(v105 + 8))(&v83[v103], v104);
      }
    }

    v106 = &v80[v81[6]];
    type metadata accessor for PMAccount.Storage(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v141 = v1;
      v107 = *(v106 + 1);

      v108 = *(v106 + 3);

      v109 = *(v106 + 5);

      v110 = *(v106 + 7);

      v111 = type metadata accessor for PMAccount.MockData(0);
      v112 = v111[8];
      v113 = sub_21CB80DD4();
      v114 = *(v113 - 8);
      v115 = *(v114 + 48);
      if (!v115(&v106[v112], 1, v113))
      {
        (*(v114 + 8))(&v106[v112], v113);
      }

      v116 = *&v106[v111[9]];

      v117 = *&v106[v111[10] + 8];

      v118 = *&v106[v111[11] + 8];

      v119 = v111[12];
      if (!v115(&v106[v119], 1, v113))
      {
        (*(v114 + 8))(&v106[v119], v113);
      }

      v120 = v111[15];
      v121 = sub_21CB85BB4();
      v122 = *(v121 - 8);
      v1 = v141;
      if (!(*(v122 + 48))(&v106[v120], 1, v121))
      {
        (*(v122 + 8))(&v106[v120], v121);
      }

      v123 = v111[16];
      v124 = sub_21CB85C04();
      v125 = *(v124 - 8);
      if (!(*(v125 + 48))(&v106[v123], 1, v124))
      {
        (*(v125 + 8))(&v106[v123], v124);
      }

      v126 = *&v106[v111[17] + 8];

      v127 = v111[18];
      v128 = sub_21CB85C44();
      v129 = *(v128 - 8);
      v5 = v143;
      if (!(*(v129 + 48))(&v106[v127], 1, v128))
      {
        (*(v129 + 8))(&v106[v127], v128);
      }
    }

    else
    {
    }

    v130 = &v80[v81[7]];
    v4 = v145;
    v3 = v147;
    if (*(v130 + 1))
    {
    }
  }

  v131 = *&v80[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC7B0, &unk_21CBC1F80) + 28)];

  v132 = *(v6 + v2[9] + 8);

  v133 = *(v6 + v2[10]);

  v134 = *(v6 + v2[11]);

  v135 = *(v6 + v2[12]);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_62()
{
  v1 = type metadata accessor for PMMoveAccountToGroupPicker(0);
  v300 = *(*(v1 - 1) + 80);
  v2 = (v300 + 16) & ~v300;
  v3 = *(*(v1 - 1) + 64);
  v301 = v0;
  v4 = v0 + v2;
  v5 = *(v0 + v2 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v2 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  v303 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(&v7[v16], 1, v17))
    {
      (*(v18 + 8))(&v7[v16], v17);
    }
  }

  else
  {
    v19 = *(v7 + 4);

    v20 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v21 = v20[7];
    v22 = sub_21CB85C04();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(&v7[v21], 1, v22))
    {
      (*(v23 + 8))(&v7[v21], v22);
    }

    v24 = v20[8];
    v25 = sub_21CB85BB4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(&v7[v24], 1, v25))
    {
      (*(v26 + 8))(&v7[v24], v25);
    }

    v27 = v20[9];
    v28 = sub_21CB85C44();
    v29 = *(v28 - 8);
    v6 = v303;
    if (!(*(v29 + 48))(&v7[v27], 1, v28))
    {
      (*(v29 + 8))(&v7[v27], v28);
    }
  }

  v30 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  v302 = v4;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v1;
    v32 = *(v30 + 8);

    v33 = *(v30 + 24);

    v34 = *(v30 + 40);

    v35 = *(v30 + 56);

    v36 = type metadata accessor for PMAccount.MockData(0);
    v37 = v36[8];
    v38 = sub_21CB80DD4();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (!v40(v30 + v37, 1, v38))
    {
      (*(v39 + 8))(v30 + v37, v38);
    }

    v41 = *(v30 + v36[9]);

    v42 = *(v30 + v36[10] + 8);

    v43 = *(v30 + v36[11] + 8);

    v44 = v36[12];
    if (!v40(v30 + v44, 1, v38))
    {
      (*(v39 + 8))(v30 + v44, v38);
    }

    v45 = v36[15];
    v46 = sub_21CB85BB4();
    v47 = *(v46 - 8);
    v1 = v31;
    v6 = v303;
    if (!(*(v47 + 48))(v30 + v45, 1, v46))
    {
      (*(v47 + 8))(v30 + v45, v46);
    }

    v48 = v36[16];
    v49 = sub_21CB85C04();
    v50 = *(v49 - 8);
    v2 = (v300 + 16) & ~v300;
    if (!(*(v50 + 48))(v30 + v48, 1, v49))
    {
      (*(v50 + 8))(v30 + v48, v49);
    }

    v51 = *(v30 + v36[17] + 8);

    v52 = v36[18];
    v53 = sub_21CB85C44();
    v54 = *(v53 - 8);
    v4 = v302;
    if (!(*(v54 + 48))(v30 + v52, 1, v53))
    {
      (*(v54 + 8))(v30 + v52, v53);
    }
  }

  else
  {
  }

  v55 = v4 + v6[7];
  if (*(v55 + 8))
  {
  }

  v56 = *(v4 + v1[5] + 8);

  v57 = *(v4 + v1[8] + 8);

  v58 = *(v4 + v1[9] + 8);

  v59 = v4 + v1[10];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  if (!(*(*(v60 - 8) + 48))(v59, 2, v60))
  {
    v61 = sub_21CB85C44();
    v62 = *(v61 - 8);
    if (!(*(v62 + 48))(v59, 1, v61))
    {
      (*(v62 + 8))(v59, v61);
    }
  }

  v63 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7D8, &qword_21CBB1F30) + 28));

  v64 = (v4 + v1[11]);
  type metadata accessor for PMMoveAccountToGroupPicker.PresentationStateStorage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v295 = v1;
    v65 = *v64;

    v66 = v64[1];

    v67 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB6B8, &qword_21CBA2488) + 32);
    v68 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v68 - 8) + 48))(v67, 1, v68))
    {
      v297 = v64;
      v69 = *(v67 + 1);

      v70 = &v67[v6[5]];
      v71 = swift_getEnumCaseMultiPayload();
      v72 = *(v70 + 1);

      v73 = *(v70 + 3);

      if (v71 == 1)
      {
        v74 = *(v70 + 5);

        v75 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v76 = v75[7];
        v77 = sub_21CB85B74();
        (*(*(v77 - 8) + 8))(&v70[v76], v77);
        v78 = *&v70[v75[8] + 8];

        v79 = v75[9];
        v80 = sub_21CB85C44();
        v81 = *(v80 - 8);
        if (!(*(v81 + 48))(&v70[v79], 1, v80))
        {
          (*(v81 + 8))(&v70[v79], v80);
        }
      }

      else
      {
        v96 = v3;
        v97 = v2;
        v98 = *(v70 + 4);

        v99 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v100 = v99[7];
        v101 = sub_21CB85C04();
        v102 = *(v101 - 8);
        if (!(*(v102 + 48))(&v70[v100], 1, v101))
        {
          (*(v102 + 8))(&v70[v100], v101);
        }

        v103 = v99[8];
        v104 = sub_21CB85BB4();
        v105 = *(v104 - 8);
        if (!(*(v105 + 48))(&v70[v103], 1, v104))
        {
          (*(v105 + 8))(&v70[v103], v104);
        }

        v106 = v99[9];
        v107 = sub_21CB85C44();
        v108 = *(v107 - 8);
        v2 = v97;
        v3 = v96;
        v6 = v303;
        if (!(*(v108 + 48))(&v70[v106], 1, v107))
        {
          (*(v108 + 8))(&v70[v106], v107);
        }
      }

      v109 = &v67[v6[6]];
      v292 = v2;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v110 = *(v109 + 1);

        v111 = *(v109 + 3);

        v112 = *(v109 + 5);

        v113 = *(v109 + 7);

        v114 = type metadata accessor for PMAccount.MockData(0);
        v115 = v114[8];
        v116 = sub_21CB80DD4();
        v117 = *(v116 - 8);
        v118 = *(v117 + 48);
        if (!v118(&v109[v115], 1, v116))
        {
          (*(v117 + 8))(&v109[v115], v116);
        }

        v119 = *&v109[v114[9]];

        v120 = *&v109[v114[10] + 8];

        v121 = *&v109[v114[11] + 8];

        v122 = v114[12];
        if (!v118(&v109[v122], 1, v116))
        {
          (*(v117 + 8))(&v109[v122], v116);
        }

        v123 = v114[15];
        v124 = sub_21CB85BB4();
        v125 = *(v124 - 8);
        if (!(*(v125 + 48))(&v109[v123], 1, v124))
        {
          (*(v125 + 8))(&v109[v123], v124);
        }

        v126 = v114[16];
        v127 = sub_21CB85C04();
        v128 = *(v127 - 8);
        v6 = v303;
        if (!(*(v128 + 48))(&v109[v126], 1, v127))
        {
          (*(v128 + 8))(&v109[v126], v127);
        }

        v129 = *&v109[v114[17] + 8];

        v130 = v114[18];
        v131 = sub_21CB85C44();
        v132 = *(v131 - 8);
        if (!(*(v132 + 48))(&v109[v130], 1, v131))
        {
          (*(v132 + 8))(&v109[v130], v131);
        }
      }

      else
      {
      }

      v170 = &v67[v6[7]];
      if (*(v170 + 1))
      {
      }

      v171 = &v67[*(v68 + 20)];
      v172 = type metadata accessor for PMSharingGroup();
      v173 = *(*(v172 - 1) + 48);
      v64 = v297;
      if (!v173(v171, 1, v172))
      {
        v174 = sub_21CB85C44();
        (*(*(v174 - 8) + 8))(v171, v174);
        v175 = *&v171[v172[5] + 8];

        v176 = *&v171[v172[6]];

        v177 = *&v171[v172[7] + 8];
      }

      v178 = &v67[*(v68 + 24)];
      v2 = v292;
      if (!v173(v178, 1, v172))
      {
        v179 = sub_21CB85C44();
        (*(*(v179 - 8) + 8))(v178, v179);
        v180 = *&v178[v172[5] + 8];

        v181 = *&v178[v172[6]];

        v182 = *&v178[v172[7] + 8];
      }
    }

    v183 = &v67[*(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20)];
    v1 = v295;
    if (!(*(*(v6 - 1) + 48))(v183, 1, v6))
    {
      v299 = v64;
      v184 = *(v183 + 1);

      v185 = &v183[v6[5]];
      v186 = swift_getEnumCaseMultiPayload();
      v187 = *(v185 + 1);

      v188 = *(v185 + 3);

      if (v186 == 1)
      {
        v189 = *(v185 + 5);

        v190 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v191 = v190[7];
        v192 = sub_21CB85B74();
        (*(*(v192 - 8) + 8))(&v185[v191], v192);
        v193 = *&v185[v190[8] + 8];

        v194 = v190[9];
        v195 = sub_21CB85C44();
        v196 = *(v195 - 8);
        if (!(*(v196 + 48))(&v185[v194], 1, v195))
        {
          (*(v196 + 8))(&v185[v194], v195);
        }
      }

      else
      {
        v223 = *(v185 + 4);

        v224 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v225 = v224[7];
        v226 = sub_21CB85C04();
        v227 = *(v226 - 8);
        if (!(*(v227 + 48))(&v185[v225], 1, v226))
        {
          (*(v227 + 8))(&v185[v225], v226);
        }

        v228 = v224[8];
        v229 = sub_21CB85BB4();
        v230 = *(v229 - 8);
        if (!(*(v230 + 48))(&v185[v228], 1, v229))
        {
          (*(v230 + 8))(&v185[v228], v229);
        }

        v231 = v224[9];
        v232 = sub_21CB85C44();
        v233 = *(v232 - 8);
        v6 = v303;
        if (!(*(v233 + 48))(&v185[v231], 1, v232))
        {
          (*(v233 + 8))(&v185[v231], v232);
        }
      }

      v234 = &v183[v6[6]];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v235 = *(v234 + 1);

        v236 = *(v234 + 3);

        v237 = *(v234 + 5);

        v238 = *(v234 + 7);

        v239 = type metadata accessor for PMAccount.MockData(0);
        v240 = v239[8];
        v241 = sub_21CB80DD4();
        v242 = *(v241 - 8);
        v243 = *(v242 + 48);
        if (!v243(&v234[v240], 1, v241))
        {
          (*(v242 + 8))(&v234[v240], v241);
        }

        v244 = *&v234[v239[9]];

        v245 = *&v234[v239[10] + 8];

        v246 = *&v234[v239[11] + 8];

        v247 = v239[12];
        if (!v243(&v234[v247], 1, v241))
        {
          (*(v242 + 8))(&v234[v247], v241);
        }

        v248 = v239[15];
        v249 = sub_21CB85BB4();
        v250 = *(v249 - 8);
        v1 = v295;
        if (!(*(v250 + 48))(&v234[v248], 1, v249))
        {
          (*(v250 + 8))(&v234[v248], v249);
        }

        v251 = v239[16];
        v252 = sub_21CB85C04();
        v253 = *(v252 - 8);
        if ((*(v253 + 48))(&v234[v251], 1, v252))
        {
          goto LABEL_107;
        }

        goto LABEL_106;
      }

      goto LABEL_124;
    }
  }

  else
  {
    v82 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
    if (!(*(*(v82 - 8) + 48))(v64, 1, v82))
    {
      v83 = v64[1];

      v298 = v64;
      v84 = v64 + v6[5];
      v85 = swift_getEnumCaseMultiPayload();
      v86 = *(v84 + 1);

      v87 = *(v84 + 3);

      if (v85 == 1)
      {
        v88 = *(v84 + 5);

        v89 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v90 = v89[7];
        v91 = sub_21CB85B74();
        (*(*(v91 - 8) + 8))(&v84[v90], v91);
        v92 = *&v84[v89[8] + 8];

        v93 = v89[9];
        v94 = sub_21CB85C44();
        v95 = *(v94 - 8);
        if (!(*(v95 + 48))(&v84[v93], 1, v94))
        {
          (*(v95 + 8))(&v84[v93], v94);
        }
      }

      else
      {
        v133 = v1;
        v134 = *(v84 + 4);

        v135 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v136 = v135[7];
        v137 = sub_21CB85C04();
        v138 = *(v137 - 8);
        if (!(*(v138 + 48))(&v84[v136], 1, v137))
        {
          (*(v138 + 8))(&v84[v136], v137);
        }

        v139 = v135[8];
        v140 = sub_21CB85BB4();
        v141 = *(v140 - 8);
        if (!(*(v141 + 48))(&v84[v139], 1, v140))
        {
          (*(v141 + 8))(&v84[v139], v140);
        }

        v142 = v135[9];
        v143 = sub_21CB85C44();
        v144 = *(v143 - 8);
        v1 = v133;
        if (!(*(v144 + 48))(&v84[v142], 1, v143))
        {
          (*(v144 + 8))(&v84[v142], v143);
        }
      }

      v145 = v298 + v6[6];
      v296 = v1;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v293 = v3;
        v146 = v2;
        v147 = *(v145 + 1);

        v148 = *(v145 + 3);

        v149 = *(v145 + 5);

        v150 = *(v145 + 7);

        v151 = type metadata accessor for PMAccount.MockData(0);
        v152 = v151[8];
        v153 = sub_21CB80DD4();
        v154 = *(v153 - 8);
        v155 = *(v154 + 48);
        if (!v155(&v145[v152], 1, v153))
        {
          (*(v154 + 8))(&v145[v152], v153);
        }

        v156 = *&v145[v151[9]];

        v157 = *&v145[v151[10] + 8];

        v158 = *&v145[v151[11] + 8];

        v159 = v151[12];
        if (!v155(&v145[v159], 1, v153))
        {
          (*(v154 + 8))(&v145[v159], v153);
        }

        v160 = v151[15];
        v161 = sub_21CB85BB4();
        v162 = *(v161 - 8);
        v6 = v303;
        if (!(*(v162 + 48))(&v145[v160], 1, v161))
        {
          (*(v162 + 8))(&v145[v160], v161);
        }

        v163 = v151[16];
        v164 = sub_21CB85C04();
        v165 = *(v164 - 8);
        v2 = v146;
        if (!(*(v165 + 48))(&v145[v163], 1, v164))
        {
          (*(v165 + 8))(&v145[v163], v164);
        }

        v166 = *&v145[v151[17] + 8];

        v167 = v151[18];
        v168 = sub_21CB85C44();
        v169 = *(v168 - 8);
        v3 = v293;
        if (!(*(v169 + 48))(&v145[v167], 1, v168))
        {
          (*(v169 + 8))(&v145[v167], v168);
        }
      }

      else
      {
      }

      v64 = v298;
      v197 = (v298 + v6[7]);
      if (v197[1])
      {
      }

      v198 = v298 + *(v82 + 20);
      v199 = type metadata accessor for PMSharingGroup();
      v200 = *(*(v199 - 1) + 48);
      if (!v200(v198, 1, v199))
      {
        v201 = sub_21CB85C44();
        (*(*(v201 - 8) + 8))(v198, v201);
        v202 = *&v198[v199[5] + 8];

        v203 = *&v198[v199[6]];

        v204 = *&v198[v199[7] + 8];
      }

      v205 = v298 + *(v82 + 24);
      v1 = v296;
      if (!v200(v205, 1, v199))
      {
        v206 = sub_21CB85C44();
        (*(*(v206 - 8) + 8))(v205, v206);
        v207 = *&v205[v199[5] + 8];

        v208 = *&v205[v199[6]];

        v209 = *&v205[v199[7] + 8];
      }
    }

    v183 = v64 + *(type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0) + 20);
    if (!(*(*(v6 - 1) + 48))(v183, 1, v6))
    {
      v299 = v64;
      v210 = *(v183 + 1);

      v211 = &v183[v6[5]];
      v212 = swift_getEnumCaseMultiPayload();
      v213 = *(v211 + 1);

      v214 = *(v211 + 3);

      if (v212 == 1)
      {
        v215 = *(v211 + 5);

        v216 = type metadata accessor for PMAccount.SIWAUniqueID(0);
        v217 = v216[7];
        v218 = sub_21CB85B74();
        (*(*(v218 - 8) + 8))(&v211[v217], v218);
        v219 = *&v211[v216[8] + 8];

        v220 = v216[9];
        v221 = sub_21CB85C44();
        v222 = *(v221 - 8);
        if (!(*(v222 + 48))(&v211[v220], 1, v221))
        {
          (*(v222 + 8))(&v211[v220], v221);
        }
      }

      else
      {
        v258 = *(v211 + 4);

        v259 = type metadata accessor for PMAccount.CombinedUniqueID(0);
        v260 = v259[7];
        v261 = sub_21CB85C04();
        v262 = *(v261 - 8);
        if (!(*(v262 + 48))(&v211[v260], 1, v261))
        {
          (*(v262 + 8))(&v211[v260], v261);
        }

        v263 = v259[8];
        v264 = sub_21CB85BB4();
        v265 = *(v264 - 8);
        if (!(*(v265 + 48))(&v211[v263], 1, v264))
        {
          (*(v265 + 8))(&v211[v263], v264);
        }

        v266 = v259[9];
        v267 = sub_21CB85C44();
        v268 = *(v267 - 8);
        v6 = v303;
        if (!(*(v268 + 48))(&v211[v266], 1, v267))
        {
          (*(v268 + 8))(&v211[v266], v267);
        }
      }

      v234 = &v183[v6[6]];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v294 = v3;
        v269 = v2;
        v270 = *(v234 + 1);

        v271 = *(v234 + 3);

        v272 = *(v234 + 5);

        v273 = *(v234 + 7);

        v239 = type metadata accessor for PMAccount.MockData(0);
        v274 = v239[8];
        v275 = sub_21CB80DD4();
        v276 = *(v275 - 8);
        v277 = *(v276 + 48);
        if (!v277(&v234[v274], 1, v275))
        {
          (*(v276 + 8))(&v234[v274], v275);
        }

        v278 = *&v234[v239[9]];

        v279 = *&v234[v239[10] + 8];

        v280 = *&v234[v239[11] + 8];

        v281 = v239[12];
        if (!v277(&v234[v281], 1, v275))
        {
          (*(v276 + 8))(&v234[v281], v275);
        }

        v282 = v239[15];
        v283 = sub_21CB85BB4();
        v284 = *(v283 - 8);
        v2 = v269;
        if (!(*(v284 + 48))(&v234[v282], 1, v283))
        {
          (*(v284 + 8))(&v234[v282], v283);
        }

        v251 = v239[16];
        v252 = sub_21CB85C04();
        v253 = *(v252 - 8);
        v3 = v294;
        if ((*(v253 + 48))(&v234[v251], 1, v252))
        {
          goto LABEL_107;
        }

LABEL_106:
        (*(v253 + 8))(&v234[v251], v252);
LABEL_107:
        v254 = *&v234[v239[17] + 8];

        v255 = v239[18];
        v256 = sub_21CB85C44();
        v257 = *(v256 - 8);
        if (!(*(v257 + 48))(&v234[v255], 1, v256))
        {
          (*(v257 + 8))(&v234[v255], v256);
        }

        goto LABEL_125;
      }

LABEL_124:

LABEL_125:
      v285 = &v183[v303[7]];
      v64 = v299;
      if (*(v285 + 1))
      {
      }
    }
  }

  v286 = *(v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB7E0, &qword_21CBA25C0) + 28));

  v287 = (v302 + v1[12]);
  v288 = *v287;

  v289 = v287[1];

  v290 = *(v302 + v1[13] + 8);

  return MEMORY[0x2821FE8E8](v301, v2 + v3, v300 | 7);
}

uint64_t objectdestroyTm_63()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = type metadata accessor for PMAccount(0);
  if ((*(*(v7 - 1) + 48))(v0 + v4, 1, v7))
  {
    goto LABEL_25;
  }

  v129 = v5;
  v8 = *(v6 + 8);

  v131 = v7;
  v9 = (v6 + v7[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *(v9 + 1);

  v12 = *(v9 + 3);

  if (EnumCaseMultiPayload != 1)
  {
    v45 = *(v9 + 4);

    v46 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v47 = v46[7];
    v48 = sub_21CB85C04();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(&v9[v47], 1, v48))
    {
      (*(v49 + 8))(&v9[v47], v48);
    }

    v50 = v46[8];
    v51 = sub_21CB85BB4();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(&v9[v50], 1, v51))
    {
      (*(v52 + 8))(&v9[v50], v51);
    }

    v18 = v46[9];
    v19 = sub_21CB85C44();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(&v9[v18], 1, v19))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v13 = *(v9 + 5);

  v14 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v15 = v14[7];
  v16 = sub_21CB85B74();
  (*(*(v16 - 8) + 8))(&v9[v15], v16);
  v17 = *&v9[v14[8] + 8];

  v18 = v14[9];
  v19 = sub_21CB85C44();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(&v9[v18], 1, v19))
  {
LABEL_4:
    (*(v20 + 8))(&v9[v18], v19);
  }

LABEL_5:
  v21 = v6 + v131[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v125 = (v3 + 16) & ~v3;
    v127 = v3;
    v22 = *(v21 + 8);

    v23 = *(v21 + 24);

    v24 = *(v21 + 40);

    v25 = *(v21 + 56);

    v26 = type metadata accessor for PMAccount.MockData(0);
    v27 = v26[8];
    v28 = sub_21CB80DD4();
    v29 = *(v28 - 8);
    v30 = *(v29 + 48);
    if (!v30(v21 + v27, 1, v28))
    {
      (*(v29 + 8))(v21 + v27, v28);
    }

    v31 = *(v21 + v26[9]);

    v32 = *(v21 + v26[10] + 8);

    v33 = *(v21 + v26[11] + 8);

    v34 = v26[12];
    if (!v30(v21 + v34, 1, v28))
    {
      (*(v29 + 8))(v21 + v34, v28);
    }

    v35 = v26[15];
    v36 = sub_21CB85BB4();
    v37 = *(v36 - 8);
    v4 = v125;
    if (!(*(v37 + 48))(v21 + v35, 1, v36))
    {
      (*(v37 + 8))(v21 + v35, v36);
    }

    v38 = v26[16];
    v39 = sub_21CB85C04();
    v40 = *(v39 - 8);
    v3 = v127;
    if (!(*(v40 + 48))(v21 + v38, 1, v39))
    {
      (*(v40 + 8))(v21 + v38, v39);
    }

    v41 = *(v21 + v26[17] + 8);

    v42 = v26[18];
    v43 = sub_21CB85C44();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v21 + v42, 1, v43))
    {
      (*(v44 + 8))(v21 + v42, v43);
    }
  }

  else
  {
  }

  v5 = v129;
  v7 = v131;
  v53 = v6 + v131[7];
  if (*(v53 + 8))
  {
  }

LABEL_25:
  v54 = *(v6 + v2[5]);

  __swift_destroy_boxed_opaque_existential_0((v6 + v2[6]));
  v55 = v6 + v2[7];
  v56 = sub_21CB82644();
  (*(*(v56 - 8) + 8))(v55, v56);
  v57 = *(v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0) + 28));

  v58 = *(v6 + v2[8] + 8);

  v59 = v6 + v2[9];
  v60 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60))
  {
    goto LABEL_50;
  }

  v124 = v60;
  v128 = v3;
  v130 = v5;
  v61 = *(v59 + 8);

  v62 = (v59 + v7[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v62 + 1);

  v65 = *(v62 + 3);

  v132 = v7;
  if (v63 != 1)
  {
    v98 = v4;
    v99 = *(v62 + 4);

    v100 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v101 = v100[7];
    v102 = sub_21CB85C04();
    v103 = *(v102 - 8);
    if (!(*(v103 + 48))(&v62[v101], 1, v102))
    {
      (*(v103 + 8))(&v62[v101], v102);
    }

    v104 = v100[8];
    v105 = sub_21CB85BB4();
    v106 = *(v105 - 8);
    if (!(*(v106 + 48))(&v62[v104], 1, v105))
    {
      (*(v106 + 8))(&v62[v104], v105);
    }

    v71 = v100[9];
    v72 = sub_21CB85C44();
    v73 = *(v72 - 8);
    v4 = v98;
    v7 = v132;
    if ((*(v73 + 48))(&v62[v71], 1, v72))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v66 = *(v62 + 5);

  v67 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v68 = v67[7];
  v69 = sub_21CB85B74();
  (*(*(v69 - 8) + 8))(&v62[v68], v69);
  v70 = *&v62[v67[8] + 8];

  v71 = v67[9];
  v72 = sub_21CB85C44();
  v73 = *(v72 - 8);
  if (!(*(v73 + 48))(&v62[v71], 1, v72))
  {
LABEL_28:
    (*(v73 + 8))(&v62[v71], v72);
  }

LABEL_29:
  v74 = v59 + v7[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v126 = v4;
    v123 = v1;
    v75 = *(v74 + 8);

    v76 = *(v74 + 24);

    v77 = *(v74 + 40);

    v78 = *(v74 + 56);

    v79 = type metadata accessor for PMAccount.MockData(0);
    v80 = v79[8];
    v81 = sub_21CB80DD4();
    v82 = *(v81 - 8);
    v83 = *(v82 + 48);
    if (!v83(v74 + v80, 1, v81))
    {
      (*(v82 + 8))(v74 + v80, v81);
    }

    v84 = *(v74 + v79[9]);

    v85 = *(v74 + v79[10] + 8);

    v86 = *(v74 + v79[11] + 8);

    v87 = v79[12];
    if (!v83(v74 + v87, 1, v81))
    {
      (*(v82 + 8))(v74 + v87, v81);
    }

    v88 = v79[15];
    v89 = sub_21CB85BB4();
    v90 = *(v89 - 8);
    if (!(*(v90 + 48))(v74 + v88, 1, v89))
    {
      (*(v90 + 8))(v74 + v88, v89);
    }

    v91 = v79[16];
    v92 = sub_21CB85C04();
    v93 = *(v92 - 8);
    v1 = v123;
    v7 = v132;
    if (!(*(v93 + 48))(v74 + v91, 1, v92))
    {
      (*(v93 + 8))(v74 + v91, v92);
    }

    v94 = *(v74 + v79[17] + 8);

    v95 = v79[18];
    v96 = sub_21CB85C44();
    v97 = *(v96 - 8);
    v4 = v126;
    if (!(*(v97 + 48))(v74 + v95, 1, v96))
    {
      (*(v97 + 8))(v74 + v95, v96);
    }
  }

  else
  {
  }

  v107 = v59 + v7[7];
  if (*(v107 + 8))
  {
  }

  v108 = v59 + *(v124 + 20);
  v109 = sub_21CB85C44();
  (*(*(v109 - 8) + 8))(v108, v109);
  v110 = type metadata accessor for PMSharingGroup();
  v111 = *(v108 + v110[5] + 8);

  v112 = *(v108 + v110[6]);

  v113 = *(v108 + v110[7] + 8);

  v3 = v128;
  v5 = v130;
LABEL_50:
  v114 = *(v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8) + 28));

  v115 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v116 = sub_21CB823B4();
    (*(*(v116 - 8) + 8))(v6 + v115, v116);
  }

  else
  {
    v117 = *(v6 + v115);
  }

  v118 = *(v6 + v2[11] + 8);

  v119 = *(v6 + v2[13] + 8);

  sub_21C7025C4(*(v6 + v2[14]), *(v6 + v2[14] + 8));
  v120 = *(v6 + v2[15]);

  v121 = *(v6 + v2[16]);

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_64()
{
  v1 = (type metadata accessor for PMNotifyGroupMembersView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_21CB85C44();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for PMSharingGroup();
  v7 = *(v0 + v3 + v6[5] + 8);

  v8 = *(v0 + v3 + v6[6]);

  v9 = *(v0 + v3 + v6[7] + 8);

  v10 = *(v0 + v3 + v1[7]);

  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = *(v0 + v3 + v1[9] + 8);

  v13 = *(v0 + v3 + v1[10]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_65()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroyTm_66()
{
  v1 = type metadata accessor for PMExportAccountSelectionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE7C8, &unk_21CBC5000);
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21CB823B4();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  sub_21CAB0D98(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  v10 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21CB83834();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    v13 = *(v5 + v10);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_67()
{
  v1 = type metadata accessor for PMPasswordsSecurityView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 16);

  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = *(v6 + v1[7] + 8);

  v12 = *(v6 + v1[8] + 8);

  v13 = *(v6 + v1[9] + 8);

  v14 = *(v6 + v1[10] + 8);

  v15 = v6 + v1[11];
  if (*(v15 + 8))
  {
  }

  v16 = *(v15 + 32);

  sub_21C7025C4(*(v6 + v1[12]), *(v6 + v1[12] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_68()
{
  v1 = v0;
  v2 = type metadata accessor for PMRecentlyDeletedAccountRow();
  v3 = *(*(v2 - 1) + 80);
  v59 = *(*(v2 - 1) + 64);
  v60 = (v3 + 16) & ~v3;
  v4 = v0 + v60;
  v5 = *(v0 + v60 + 8);

  v6 = type metadata accessor for PMAccount(0);
  v7 = (v0 + v60 + v6[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v7 + 1);

  v10 = *(v7 + 3);

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(v7 + 5);

    v12 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v13 = v12[7];
    v14 = sub_21CB85B74();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v15 = *&v7[v12[8] + 8];

    v16 = v12[9];
    v17 = sub_21CB85C44();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(&v7[v16], 1, v17))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v43 = *(v7 + 4);

  v44 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v45 = v44[7];
  v46 = sub_21CB85C04();
  v47 = *(v46 - 8);
  if (!(*(v47 + 48))(&v7[v45], 1, v46))
  {
    (*(v47 + 8))(&v7[v45], v46);
  }

  v48 = v44[8];
  v49 = sub_21CB85BB4();
  v50 = *(v49 - 8);
  if (!(*(v50 + 48))(&v7[v48], 1, v49))
  {
    (*(v50 + 8))(&v7[v48], v49);
  }

  v16 = v44[9];
  v17 = sub_21CB85C44();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(&v7[v16], 1, v17))
  {
LABEL_3:
    (*(v18 + 8))(&v7[v16], v17);
  }

LABEL_4:
  v19 = v4 + v6[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v1;
    v20 = *(v19 + 8);

    v21 = *(v19 + 24);

    v22 = *(v19 + 40);

    v23 = *(v19 + 56);

    v24 = type metadata accessor for PMAccount.MockData(0);
    v25 = v24[8];
    v26 = sub_21CB80DD4();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (!v28(v19 + v25, 1, v26))
    {
      (*(v27 + 8))(v19 + v25, v26);
    }

    v29 = *(v19 + v24[9]);

    v30 = *(v19 + v24[10] + 8);

    v31 = *(v19 + v24[11] + 8);

    v32 = v24[12];
    if (!v28(v19 + v32, 1, v26))
    {
      (*(v27 + 8))(v19 + v32, v26);
    }

    v33 = v24[15];
    v34 = sub_21CB85BB4();
    v35 = *(v34 - 8);
    v1 = v58;
    if (!(*(v35 + 48))(v19 + v33, 1, v34))
    {
      (*(v35 + 8))(v19 + v33, v34);
    }

    v36 = v24[16];
    v37 = sub_21CB85C04();
    v38 = *(v37 - 8);
    if (!(*(v38 + 48))(v19 + v36, 1, v37))
    {
      (*(v38 + 8))(v19 + v36, v37);
    }

    v39 = *(v19 + v24[17] + 8);

    v40 = v24[18];
    v41 = sub_21CB85C44();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v19 + v40, 1, v41))
    {
      (*(v42 + 8))(v19 + v40, v41);
    }
  }

  else
  {
  }

  v51 = v4 + v6[7];
  if (*(v51 + 8))
  {
  }

  v52 = *(v4 + v2[5] + 8);

  v53 = (v4 + v2[7]);
  v54 = *v53;

  v55 = v53[1];

  v56 = *(v4 + v2[8] + 8);

  return MEMORY[0x2821FE8E8](v1, v60 + v59, v3 | 7);
}

uint64_t objectdestroyTm_69()
{
  v1 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 32);

  v8 = v1[6];
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3 + v8, 2, v9))
  {
    (*(v10 + 8))(v5 + v8, v9);
  }

  v11 = (v5 + v1[7]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB823B4();
    (*(*(v12 - 8) + 8))(v11, v12);
    v13 = (v11 + *(type metadata accessor for PMDismissAction() + 20));
    if (!*v13)
    {
      goto LABEL_7;
    }

    v11 = v13 + 1;
  }

  v14 = *v11;

LABEL_7:
  sub_21C7025C4(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v15 = *(v5 + v1[9] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_70()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroyTm_71()
{
  v1 = (type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_21CB823B4();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_72()
{
  v1 = (type metadata accessor for PMNeverSavedPasswordsView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 40);

  v11 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_21CB823B4();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  else
  {
    v13 = *(v5 + v11);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t objectdestroyTm_73()
{
  v1 = v0;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4);

  v8 = *(v0 + v4 + 8);

  v9 = v0 + v4 + v2[5];
  v10 = type metadata accessor for PMAccount(0);
  if ((*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    goto LABEL_25;
  }

  v74 = v5;
  v75 = (v3 + 16) & ~v3;
  v11 = *(v9 + 8);

  v12 = (v9 + v10[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *(v12 + 1);

  v15 = *(v12 + 3);

  v73 = v9;
  if (EnumCaseMultiPayload != 1)
  {
    v48 = *(v12 + 4);

    v49 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v50 = v49[7];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    if (!(*(v52 + 48))(&v12[v50], 1, v51))
    {
      (*(v52 + 8))(&v12[v50], v51);
    }

    v53 = v49[8];
    v54 = sub_21CB85BB4();
    v55 = *(v54 - 8);
    if (!(*(v55 + 48))(&v12[v53], 1, v54))
    {
      (*(v55 + 8))(&v12[v53], v54);
    }

    v21 = v49[9];
    v22 = sub_21CB85C44();
    v23 = *(v22 - 8);
    v9 = v73;
    if ((*(v23 + 48))(&v12[v21], 1, v22))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = *(v12 + 5);

  v17 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v18 = v17[7];
  v19 = sub_21CB85B74();
  (*(*(v19 - 8) + 8))(&v12[v18], v19);
  v20 = *&v12[v17[8] + 8];

  v21 = v17[9];
  v22 = sub_21CB85C44();
  v23 = *(v22 - 8);
  if (!(*(v23 + 48))(&v12[v21], 1, v22))
  {
LABEL_4:
    (*(v23 + 8))(&v12[v21], v22);
  }

LABEL_5:
  v24 = v9 + v10[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v71 = v3;
    v72 = v1;
    v25 = *(v24 + 8);

    v26 = *(v24 + 24);

    v27 = *(v24 + 40);

    v28 = *(v24 + 56);

    v29 = type metadata accessor for PMAccount.MockData(0);
    v30 = v29[8];
    v31 = sub_21CB80DD4();
    v32 = *(v31 - 8);
    v33 = *(v32 + 48);
    if (!v33(v24 + v30, 1, v31))
    {
      (*(v32 + 8))(v24 + v30, v31);
    }

    v34 = *(v24 + v29[9]);

    v35 = *(v24 + v29[10] + 8);

    v36 = *(v24 + v29[11] + 8);

    v37 = v29[12];
    if (!v33(v24 + v37, 1, v31))
    {
      (*(v32 + 8))(v24 + v37, v31);
    }

    v38 = v29[15];
    v39 = sub_21CB85BB4();
    v40 = *(v39 - 8);
    v1 = v72;
    if (!(*(v40 + 48))(v24 + v38, 1, v39))
    {
      (*(v40 + 8))(v24 + v38, v39);
    }

    v41 = v29[16];
    v42 = sub_21CB85C04();
    v43 = *(v42 - 8);
    v3 = v71;
    if (!(*(v43 + 48))(v24 + v41, 1, v42))
    {
      (*(v43 + 8))(v24 + v41, v42);
    }

    v44 = *(v24 + v29[17] + 8);

    v45 = v29[18];
    v46 = sub_21CB85C44();
    v47 = *(v46 - 8);
    v9 = v73;
    if (!(*(v47 + 48))(v24 + v45, 1, v46))
    {
      (*(v47 + 8))(v24 + v45, v46);
    }
  }

  else
  {
  }

  v56 = v9 + v10[7];
  v5 = v74;
  v4 = v75;
  if (*(v56 + 8))
  {
  }

LABEL_25:
  v57 = *(v6 + v2[6] + 8);

  v58 = v6 + v2[7];
  v59 = *(v58 + 8);

  v60 = *(v58 + 16);

  v61 = *(v6 + v2[8] + 8);

  v62 = v6 + v2[9];
  if (*v62 >= 3uLL)
  {
  }

  v63 = *(v62 + 8);

  v64 = *(v6 + v2[10] + 8);

  v65 = *(v6 + v2[11] + 8);

  v66 = *(v6 + v2[12] + 8);

  v67 = v2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v68 = sub_21CB82484();
    (*(*(v68 - 8) + 8))(v6 + v67, v68);
  }

  else
  {
    v69 = *(v6 + v67);
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

uint64_t objectdestroyTm_74()
{
  v1 = v0;
  v2 = type metadata accessor for PMSignInWithAppleAccountDetailsView();
  v3 = *(*(v2 - 1) + 80);
  v71 = *(*(v2 - 1) + 64);
  v72 = (v3 + 16) & ~v3;
  v4 = v0 + v72;
  v5 = *(v0 + v72 + 8);

  v6 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_21CB823B4();
    (*(*(v7 - 8) + 8))(v4 + v6, v7);
  }

  else
  {
    v8 = *(v4 + v6);
  }

  v9 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_21CB82834();
    (*(*(v10 - 8) + 8))(v4 + v9, v10);
  }

  else
  {
    v11 = *(v4 + v9);
  }

  v12 = *(v4 + v2[7] + 8);

  v13 = v4 + v2[8];
  if (*v13)
  {

    v14 = *(v13 + 8);
  }

  v15 = *(v13 + 24);

  sub_21C7025C4(*(v4 + v2[9]), *(v4 + v2[9] + 8));
  v16 = *(v4 + v2[10] + 8);

  v17 = *(v4 + v2[11] + 8);

  sub_21C940E04(*(v4 + v2[12]), *(v4 + v2[12] + 8));
  v18 = v4 + v2[13];
  v19 = *(v18 + 8);

  v20 = type metadata accessor for PMAccount(0);
  v21 = (v18 + v20[5]);
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = *(v21 + 1);

  v24 = *(v21 + 3);

  v73 = v1;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(v21 + 5);

    v26 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v27 = v26[7];
    v28 = sub_21CB85B74();
    (*(*(v28 - 8) + 8))(&v21[v27], v28);
    v29 = *&v21[v26[8] + 8];

    v30 = v26[9];
    v31 = sub_21CB85C44();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(&v21[v30], 1, v31))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v57 = v20;
  v58 = *(v21 + 4);

  v59 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v60 = v59[7];
  v61 = sub_21CB85C04();
  v62 = *(v61 - 8);
  if (!(*(v62 + 48))(&v21[v60], 1, v61))
  {
    (*(v62 + 8))(&v21[v60], v61);
  }

  v63 = v59[8];
  v64 = sub_21CB85BB4();
  v65 = *(v64 - 8);
  if (!(*(v65 + 48))(&v21[v63], 1, v64))
  {
    (*(v65 + 8))(&v21[v63], v64);
  }

  v30 = v59[9];
  v31 = sub_21CB85C44();
  v32 = *(v31 - 8);
  v20 = v57;
  v1 = v73;
  if (!(*(v32 + 48))(&v21[v30], 1, v31))
  {
LABEL_11:
    (*(v32 + 8))(&v21[v30], v31);
  }

LABEL_12:
  v33 = v18 + v20[6];
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v69 = v20;
    v70 = v3;
    v34 = *(v33 + 8);

    v35 = *(v33 + 24);

    v36 = *(v33 + 40);

    v37 = *(v33 + 56);

    v38 = type metadata accessor for PMAccount.MockData(0);
    v39 = v38[8];
    v40 = sub_21CB80DD4();
    v41 = *(v40 - 8);
    v42 = *(v41 + 48);
    if (!v42(v33 + v39, 1, v40))
    {
      (*(v41 + 8))(v33 + v39, v40);
    }

    v43 = *(v33 + v38[9]);

    v44 = *(v33 + v38[10] + 8);

    v45 = *(v33 + v38[11] + 8);

    v46 = v38[12];
    if (!v42(v33 + v46, 1, v40))
    {
      (*(v41 + 8))(v33 + v46, v40);
    }

    v47 = v38[15];
    v48 = sub_21CB85BB4();
    v49 = *(v48 - 8);
    v1 = v73;
    if (!(*(v49 + 48))(v33 + v47, 1, v48))
    {
      (*(v49 + 8))(v33 + v47, v48);
    }

    v50 = v38[16];
    v51 = sub_21CB85C04();
    v52 = *(v51 - 8);
    v3 = v70;
    if (!(*(v52 + 48))(v33 + v50, 1, v51))
    {
      (*(v52 + 8))(v33 + v50, v51);
    }

    v53 = *(v33 + v38[17] + 8);

    v54 = v38[18];
    v55 = sub_21CB85C44();
    v56 = *(v55 - 8);
    v20 = v69;
    if (!(*(v56 + 48))(v33 + v54, 1, v55))
    {
      (*(v56 + 8))(v33 + v54, v55);
    }
  }

  else
  {
  }

  v66 = v18 + v20[7];
  if (*(v66 + 8))
  {
  }

  v67 = *(v4 + v2[14] + 8);

  return MEMORY[0x2821FE8E8](v1, v72 + v71, v3 | 7);
}