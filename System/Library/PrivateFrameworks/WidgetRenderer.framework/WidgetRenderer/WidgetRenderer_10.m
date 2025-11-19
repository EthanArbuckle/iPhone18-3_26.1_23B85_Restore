void sub_1DAE69B6C(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
  if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) & 1) != 0 || a1 == 2)
  {
    sub_1DAE69EEC(a1, &v25 - v9);
    v20 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
    swift_beginAccess();
    sub_1DAD94438(v10, v1 + v20, &unk_1ECC09E40, &qword_1DAED68E0);
    swift_endAccess();
    v21 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce;
    if ((*(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce) & 1) == 0)
    {
      sub_1DAD6495C(v1 + v20, v8, &unk_1ECC09E40, &qword_1DAED68E0);
      v22 = sub_1DAED1B8C();
      v23 = (*(*(v22 - 8) + 48))(v8, 1, v22);
      sub_1DAD64398(v8, &unk_1ECC09E40, &qword_1DAED68E0);
      if (v23 != 1)
      {
        LOBYTE(a1) = 0;
        *(v1 + v21) = 1;
      }
    }

    v24 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher);
    LOBYTE(v26) = a1;

    sub_1DAECEE6C();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1DAECEF3C();

    if (v26)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v26 = 0;

      sub_1DAECEF4C();
    }
  }

  else
  {
    swift_retain_n();
    v12 = sub_1DAECEDCC();
    v13 = sub_1DAED203C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446466;
      v16 = sub_1DAE61F60(a1);
      v18 = sub_1DAD6482C(v16, v17, &v26);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1026;
      v19 = *(v2 + v11);

      *(v14 + 14) = v19;

      _os_log_impl(&dword_1DAD61000, v12, v13, "Ignored view update for reason: %{public}s - (foreground: %{BOOL,public}d)", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1E127F100](v15, -1, -1);
      MEMORY[0x1E127F100](v14, -1, -1);
    }

    else
    {
    }
  }
}

void *sub_1DAE69EEC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v43 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F50, &unk_1DAEDCB50);
  v8 = *(*(v50 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v50);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v46 = &v43 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - v16;
  sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy, v52);
  v19 = v53;
  v18 = v54;
  result = __swift_project_boxed_opaque_existential_1(v52, v53);
  v21 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource);
  if (v21)
  {
    v51[3] = type metadata accessor for ActivityViewModelSecurityDataSource();
    v51[4] = &off_1EECE4D00;
    v51[0] = v21;
    v22 = *(v18 + 8);
    v23 = sub_1DAED1B8C();

    v22(v51, v23, &protocol witness table for ActivityArchivedViewCollection.ViewEntry, v19, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    sub_1DAE62330(v7);
    v24 = sub_1DAED1BEC();
    v25 = (*(*(v24 - 8) + 48))(v7, 1, v24);
    sub_1DAD64398(v7, &qword_1ECC08D70, &unk_1DAED8710);
    sub_1DAD6495C(v17, v15, &qword_1ECC09F50, &unk_1DAEDCB50);

    v26 = sub_1DAECEDCC();
    v27 = sub_1DAED203C();

    if (os_log_type_enabled(v26, v27))
    {
      v44 = v23;
      v45 = v17;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52[0] = v29;
      *v28 = 136446978;
      *(v28 + 4) = sub_1DAD6482C(*(v3 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v3 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), v52);
      *(v28 + 12) = 2082;
      v30 = v46;
      sub_1DAD6495C(v15, v46, &qword_1ECC09F50, &unk_1DAEDCB50);
      swift_getEnumCaseMultiPayload();
      sub_1DAD64398(v30, &qword_1ECC09F50, &unk_1DAEDCB50);
      v31 = sub_1DAED1D6C();
      v33 = v32;

      sub_1DAD64398(v15, &qword_1ECC09F50, &unk_1DAEDCB50);
      v34 = sub_1DAD6482C(v31, v33, v52);

      *(v28 + 14) = v34;
      *(v28 + 22) = 2082;
      v35 = sub_1DAE61F60(v47);
      v37 = sub_1DAD6482C(v35, v36, v52);

      *(v28 + 24) = v37;
      *(v28 + 32) = 1026;
      *(v28 + 34) = v25 != 1;
      _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] Evaluated inner view with result: %{public}s, reason: %{public}s, has view collection: %{BOOL,public}d", v28, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v29, -1, -1);
      MEMORY[0x1E127F100](v28, -1, -1);

      v38 = v48;
      v23 = v44;
      v17 = v45;
    }

    else
    {

      sub_1DAD64398(v15, &qword_1ECC09F50, &unk_1DAEDCB50);
      v38 = v48;
    }

    sub_1DAE6D8D8(v17, v38);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v40 = v49;
    if (EnumCaseMultiPayload > 1)
    {
      sub_1DAD64398(v38, &qword_1ECC09F50, &unk_1DAEDCB50);
      v41 = *(v23 - 8);
      v42 = 1;
    }

    else
    {
      v41 = *(v23 - 8);
      (*(v41 + 32))(v49, v38, v23);
      v42 = 0;
    }

    return (*(v41 + 56))(v40, v42, 1, v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAE6A4A8()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel___pendingInteractionSequenceNumber;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A160, &qword_1DAED6CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseContentTouchedDown;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor;
  v6 = sub_1DAECDE4C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);

  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher);

  v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry, &unk_1ECC09E40, &qword_1DAED68E0);
  v10 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher);

  v11 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme, &qword_1ECC08370, &unk_1DAED6580);
  v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  v13 = sub_1DAECE21C();
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
  v15 = sub_1DAECF8EC();
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition;
  v17 = sub_1DAED1ABC();
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher);

  v19 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher);

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL, &unk_1ECC09EC0, &qword_1DAED7970);
  v20 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler));
  v21 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated + 8);
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated));
  v22 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
  v23 = sub_1DAECEDEC();
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

  v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag;
  v26 = sub_1DAED182C();
  (*(*(v26 - 8) + 8))(v0 + v25, v26);
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session, &qword_1ECC090F8, &unk_1DAED8720);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseEnvironmentProvider));
  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider, &qword_1ECC099D0, &qword_1DAEDB028);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor));
  v27 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy));
  v28 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource);

  v29 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver);

  v30 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily;
  v31 = sub_1DAED17AC();
  (*(*(v31 - 8) + 8))(v0 + v30, v31);
  return v0;
}

uint64_t sub_1DAE6A95C()
{
  sub_1DAE6A4A8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityViewModel()
{
  result = qword_1EE0077F8;
  if (!qword_1EE0077F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6AA08()
{
  sub_1DAE6AE84(319, &qword_1EE005BD0);
  if (v1 <= 0x3F)
  {
    v26 = *(v0 - 8) + 64;
    sub_1DAE6AE84(319, &qword_1EE00ABB8);
    if (v3 <= 0x3F)
    {
      v27 = *(v2 - 8) + 64;
      v4 = sub_1DAECDE4C();
      if (v5 <= 0x3F)
      {
        v28 = *(v4 - 8) + 64;
        sub_1DAE6AED0(319, &unk_1EE0056B8, MEMORY[0x1E6985B00]);
        if (v7 <= 0x3F)
        {
          v29 = *(v6 - 8) + 64;
          sub_1DAE6AED0(319, &qword_1EE00ABA0, MEMORY[0x1E697DBD0]);
          if (v9 <= 0x3F)
          {
            v30 = *(v8 - 8) + 64;
            v10 = sub_1DAECE21C();
            if (v11 <= 0x3F)
            {
              v31 = *(v10 - 8) + 64;
              v12 = sub_1DAECF8EC();
              if (v13 <= 0x3F)
              {
                v32 = *(v12 - 8) + 64;
                v14 = sub_1DAED1ABC();
                if (v15 <= 0x3F)
                {
                  v33 = *(v14 - 8) + 64;
                  sub_1DAE6AED0(319, &qword_1EE00C278, MEMORY[0x1E6969530]);
                  if (v17 <= 0x3F)
                  {
                    v34 = *(v16 - 8) + 64;
                    sub_1DAE6AED0(319, &qword_1EE00BD08, MEMORY[0x1E6968FB0]);
                    if (v19 <= 0x3F)
                    {
                      v35 = *(v18 - 8) + 64;
                      v20 = sub_1DAECEDEC();
                      if (v21 <= 0x3F)
                      {
                        v36 = *(v20 - 8) + 64;
                        v22 = sub_1DAED182C();
                        if (v23 <= 0x3F)
                        {
                          v37 = *(v22 - 8) + 64;
                          v24 = sub_1DAED17AC();
                          if (v25 <= 0x3F)
                          {
                            v38 = *(v24 - 8) + 64;
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
  }
}

void sub_1DAE6AE84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DAECEF5C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1DAE6AED0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAE6AF24@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityViewModel();
  result = sub_1DAECEE4C();
  *a1 = result;
  return result;
}

void (*sub_1DAE6AF64())(void *a1)
{
  v1 = *v0;
  swift_allocObject();
  swift_weakInit();
  return sub_1DAE6D2C0;
}

BOOL sub_1DAE6AFC0()
{
  v1 = *v0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v3 != 0;
}

uint64_t sub_1DAE6B040()
{
  v1 = sub_1DAECE21C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v0 + 16);
  sub_1DAD648F8(v6 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v7 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  swift_beginAccess();
  (*(v2 + 16))(v5, v6 + v7, v1);
  sub_1DAED128C();
  (*(v2 + 8))(v5, v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v10);
}

uint64_t sub_1DAE6B19C()
{
  v1 = sub_1DAECF8EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 16);
  if (*(v6 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay))
  {
    v7 = 1;
  }

  else
  {
    v8 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_rawEnvironmentValues;
    swift_beginAccess();
    (*(v2 + 16))(v5, v6 + v8, v1);
    v7 = sub_1DAECF83C();
    (*(v2 + 8))(v5, v1);
  }

  return v7 & 1;
}

uint64_t sub_1DAE6B2C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1DAECEDEC();
  v50 = *(v3 - 8);
  v51 = v3;
  v4 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DAED182C();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - v11;
  v13 = sub_1DAED1BEC();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DAECF32C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = sub_1DAECF8EC();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v26;
  v54 = v25;
  (*(v26 + 16))(v24, a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09038, &unk_1DAED85C0);
  v27 = *(v18 + 72);
  v28 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1DAED6200;
  sub_1DAECF30C();
  v57 = v29;
  sub_1DAE6D890(&qword_1EE00BE58, MEMORY[0x1E697EA58]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09040, &qword_1DAED91C0);
  sub_1DAD64B94(&qword_1EE00BE18, &qword_1ECC09040, &qword_1DAED91C0);
  v30 = v52;
  sub_1DAED23CC();
  sub_1DAECF47C();
  v31 = *(v30 + 16);

  sub_1DAE62330(v12);
  v32 = v13;
  v33 = v56;

  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_1DAD64398(v12, &qword_1ECC08D70, &unk_1DAED8710);
    v35 = v49;
    v34 = v50;
    v36 = v51;
    (*(v50 + 16))(v49, *(v30 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v51);
    v37 = sub_1DAECEDCC();
    v38 = sub_1DAED200C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1DAD61000, v37, v38, "Archive was nil. LiveActivity will be empty", v39, 2u);
      MEMORY[0x1E127F100](v39, -1, -1);
    }

    (*(v34 + 8))(v35, v36);
    (*(v53 + 8))(v24, v54);
    v40 = sub_1DAED1B8C();
    return (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  }

  else
  {
    (*(v33 + 32))(v16, v12, v32);
    v42 = v46;
    v41 = v47;
    v43 = v48;
    (*(v47 + 16))(v46, *(v30 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag, v48);
    if (sub_1DAE6C5F0() >> 62)
    {
      sub_1DAED239C();
      sub_1DAED274C();
    }

    else
    {

      sub_1DAED28AC();
      sub_1DAED239C();
    }

    sub_1DAED1BCC();

    (*(v41 + 8))(v42, v43);
    (*(v56 + 8))(v16, v32);
    return (*(v53 + 8))(v24, v54);
  }
}

uint64_t sub_1DAE6BA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v78 = a1;
  v89 = a2;
  v4 = sub_1DAECDE4C();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  v90 = v7;
  v91 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v88 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v75 - v12;
  v13 = sub_1DAED182C();
  v76 = *(v13 - 8);
  v86 = v13;
  v87 = v76;
  v14 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v75 - v17;
  v18 = sub_1DAED1BEC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = *(v2 + 16);

  sub_1DAE62330(v28);

  v85 = v19;
  v30 = *(v19 + 48);
  v31 = v30(v28, 1, v18);
  sub_1DAD64398(v28, &qword_1ECC08D70, &unk_1DAED8710);
  if (v31 == 1)
  {
    v33 = v90;
    v32 = v91;
    (*(v91 + 16))(v88, *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger, v90);

    v34 = sub_1DAECEDCC();
    v35 = sub_1DAED201C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v92[0] = v37;
      *v36 = 136446467;
      v38 = v80;
      v39 = v81;
      v40 = v82;
      (*(v81 + 16))(v80, *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v82);
      v41 = sub_1DAECDE3C();
      v43 = v42;
      (*(v39 + 8))(v38, v40);
      v44 = sub_1DAD6482C(v41, v43, v92);

      *(v36 + 4) = v44;
      *(v36 + 12) = 2081;
      v45 = *(v3 + 16);
      v46 = v86;
      v47 = v87;
      v48 = v83;
      (*(v87 + 16))(v83, v45 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag, v86);
      sub_1DAE6D890(&qword_1EE0056D8, MEMORY[0x1E6985920]);
      v49 = sub_1DAED287C();
      v51 = v50;
      (*(v47 + 8))(v48, v46);
      v52 = sub_1DAD6482C(v49, v51, v92);

      *(v36 + 14) = v52;
      _os_log_impl(&dword_1DAD61000, v34, v35, "[%{public}s] Archive was nil. LiveActivity will be empty for view model with tag %{private}s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v37, -1, -1);
      MEMORY[0x1E127F100](v36, -1, -1);

      (*(v91 + 8))(v88, v90);
    }

    else
    {

      (*(v32 + 8))(v88, v33);
    }

    v66 = v89;
    v67 = sub_1DAED1B8C();
    return (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
  }

  else
  {
    v53 = v90;
    v54 = v91;
    v55 = *(v3 + 16);

    sub_1DAE62330(v25);

    if (v30(v25, 1, v18) == 1)
    {
      sub_1DAD64398(v25, &qword_1ECC08D70, &unk_1DAED8710);
      v56 = *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
      v57 = v77;
      v58 = v53;
      (*(v54 + 16))(v77, v56, v53);
      v59 = sub_1DAECEDCC();
      v60 = sub_1DAED201C();
      v61 = os_log_type_enabled(v59, v60);
      v62 = v89;
      if (v61)
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1DAD61000, v59, v60, "Archive was nil. LiveActivity will be empty", v63, 2u);
        MEMORY[0x1E127F100](v63, -1, -1);
      }

      (*(v54 + 8))(v57, v58);
      v64 = sub_1DAED1B8C();
      return (*(*(v64 - 8) + 56))(v62, 1, 1, v64);
    }

    else
    {
      v68 = v18;
      v69 = v79;
      (*(v85 + 32))(v79, v25, v18);
      v70 = *(v3 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag;
      v71 = v3;
      v72 = v86;
      v88 = *(v87 + 16);
      (v88)(v84, v70, v86);
      v91 = v71;
      if (sub_1DAE6C5F0() >> 62)
      {
        sub_1DAED239C();
        sub_1DAED274C();
      }

      else
      {

        sub_1DAED28AC();
        sub_1DAED239C();
      }

      v73 = v84;
      sub_1DAED1BCC();
      v74 = (v76 + 8);

      (*v74)(v73, v72);
      return (*(v85 + 8))(v69, v68);
    }
  }
}

uint64_t sub_1DAE6C5F0()
{
  v1 = sub_1DAED17AC();
  v39 = *(v1 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v37 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08F80, &unk_1DAEDC8D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D70, &unk_1DAED8710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DAEDC600;
  *(v21 + 32) = swift_getKeyPath();
  *(v21 + 40) = swift_getKeyPath();
  *(v21 + 48) = swift_getKeyPath();
  *(v21 + 56) = swift_getKeyPath();
  *(v21 + 64) = swift_getKeyPath();
  *(v21 + 72) = swift_getKeyPath();
  *(v21 + 80) = swift_getKeyPath();
  *(v21 + 88) = swift_getKeyPath();
  *(v21 + 96) = swift_getKeyPath();
  *(v21 + 104) = swift_getKeyPath();
  *(v21 + 112) = swift_getKeyPath();
  *(v21 + 120) = swift_getKeyPath();
  v40 = v21;
  v22 = *(v0 + 16);

  sub_1DAE62330(v11);

  v23 = sub_1DAED1BEC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v11, 1, v23) == 1)
  {
    sub_1DAD64398(v11, &qword_1ECC08D70, &unk_1DAED8710);
    v25 = 1;
  }

  else
  {
    sub_1DAED1BAC();
    (*(v24 + 8))(v11, v23);
    v25 = 0;
  }

  v26 = v39;
  v27 = *(v39 + 56);
  v27(v20, v25, 1, v1);
  (*(v26 + 104))(v17, *MEMORY[0x1E69858D0], v1);
  v27(v17, 0, 1, v1);
  v28 = *(v4 + 48);
  sub_1DAD6495C(v20, v7, &qword_1ECC08698, &qword_1DAED84E0);
  sub_1DAD6495C(v17, &v7[v28], &qword_1ECC08698, &qword_1DAED84E0);
  v29 = *(v26 + 48);
  if (v29(v7, 1, v1) == 1)
  {
    sub_1DAD64398(v17, &qword_1ECC08698, &qword_1DAED84E0);
    sub_1DAD64398(v20, &qword_1ECC08698, &qword_1DAED84E0);
    if (v29(&v7[v28], 1, v1) == 1)
    {
      sub_1DAD64398(v7, &qword_1ECC08698, &qword_1DAED84E0);
      return v21;
    }
  }

  else
  {
    v30 = v38;
    sub_1DAD6495C(v7, v38, &qword_1ECC08698, &qword_1DAED84E0);
    if (v29(&v7[v28], 1, v1) != 1)
    {
      v32 = v39;
      v33 = v37;
      (*(v39 + 32))(v37, &v7[v28], v1);
      sub_1DAE6D890(&qword_1ECC09008, MEMORY[0x1E69858D8]);
      v34 = sub_1DAED1CAC();
      v35 = *(v32 + 8);
      v35(v33, v1);
      sub_1DAD64398(v17, &qword_1ECC08698, &qword_1DAED84E0);
      sub_1DAD64398(v20, &qword_1ECC08698, &qword_1DAED84E0);
      v35(v38, v1);
      sub_1DAD64398(v7, &qword_1ECC08698, &qword_1DAED84E0);
      if (v34)
      {
        return v21;
      }

      goto LABEL_10;
    }

    sub_1DAD64398(v17, &qword_1ECC08698, &qword_1DAED84E0);
    sub_1DAD64398(v20, &qword_1ECC08698, &qword_1DAED84E0);
    (*(v39 + 8))(v30, v1);
  }

  sub_1DAD64398(v7, &qword_1ECC08F80, &unk_1DAEDC8D0);
LABEL_10:
  swift_getKeyPath();
  MEMORY[0x1E127DAD0]();
  if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v36 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  return v40;
}

uint64_t sub_1DAE6CCA8(uint64_t a1)
{
  v2 = sub_1DAED1B2C();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1DAECF7CC();
}

uint64_t getEnumTagSinglePayload for ActivityViewChangeReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityViewChangeReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAE6CEE8()
{
  result = qword_1ECC09F48;
  if (!qword_1ECC09F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09F48);
  }

  return result;
}

uint64_t sub_1DAE6CF48@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger;
  v5 = sub_1DAECEDEC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1DAE6CFC8()
{
  v1 = (*(*v0 + 16) + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_1DAE6D00C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);

  sub_1DAE684B0(a1);
}

uint64_t sub_1DAE6D0B0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6985998];
  v3 = sub_1DAED18CC();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAE6D1CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE6D24C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE6D2C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DAE6D348(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE6D3BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAE03864;

  return sub_1DAE65340(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DAE6D484(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1DAE6D4BC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAE6D5B4;

  return v7(a1);
}

uint64_t sub_1DAE6D5B4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1DAE6D6AC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAE0396C;

  return sub_1DAE6D4BC(a1, v5);
}

uint64_t sub_1DAE6D764(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAE03864;

  return sub_1DAE6D4BC(a1, v5);
}

void sub_1DAE6D81C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1DAE6D890(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAE6D8D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F50, &unk_1DAEDCB50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE6D948(uint64_t a1)
{
  v2 = sub_1DAECDE7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DAE6DA88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityBannerSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityBannerSceneDelegate()
{
  result = qword_1ECC09F80;
  if (!qword_1ECC09F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6DB14(void *a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1DAED17AC();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED182C();
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECEDEC();
  v12 = *(v11 - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC079B8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_1ECC0DD90);
  v17 = v12[2];
  v17(v15, v16, v11);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v19 = v12[5];
  v19(v2 + v18, v15, v11);
  swift_endAccess();
  if (qword_1ECC079C0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v11, qword_1ECC0DDA8);
  v17(v15, v20, v11);
  v21 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v19(v2 + v21, v15, v11);
  swift_endAccess();
  if (qword_1ECC079F0 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v11, qword_1ECC0DE20);
  v17(v15, v22, v11);
  v23 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v19(v2 + v23, v15, v11);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_wantsInheritedColorScheme) = 1;
  v24 = v37;
  sub_1DAE9150C(v37);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DAED64D0;
    v26 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
    v38 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
    v39 = v26;

    MEMORY[0x1E127DA50](0x72656E6E61622DLL, 0xE700000000000000);
    v27 = v38;
    v28 = v39;
    v30 = v33;
    v29 = v34;
    (*(v33 + 104))(v10, *MEMORY[0x1E6985918], v34);
    sub_1DAED178C();
    v31 = sub_1DAE770FC(v27, v28, v10, v24, v6);

    (*(v35 + 8))(v6, v36);
    (*(v30 + 8))(v10, v29);
    *(v25 + 32) = v31;
    v32 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
    *(v2 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v25;

    sub_1DAE8B590(0x7463656E6E6F63, 0xE700000000000000);
  }
}

uint64_t sub_1DAE6E1DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20AmbientSceneDelegate__cancellables);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20AmbientSceneDelegate__viewModel);
}

id sub_1DAE6E22C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AmbientSceneDelegate()
{
  result = qword_1ECC09FA8;
  if (!qword_1ECC09FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6E368(void *a1)
{
  v34 = a1;
  v2 = sub_1DAED17AC();
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1DAED182C();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC07998 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_1ECC0DD30);
  v15 = v10[2];
  v15(v13, v14, v9);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v17 = v10[5];
  v17(v1 + v16, v13, v9);
  swift_endAccess();
  if (qword_1ECC079A0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1ECC0DD48);
  v15(v13, v18, v9);
  v19 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v17(v1 + v19, v13, v9);
  swift_endAccess();
  if (qword_1ECC079E0 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_1ECC0DDF0);
  v15(v13, v20, v9);
  v21 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v17(v1 + v21, v13, v9);
  swift_endAccess();
  v22 = v34;
  v23 = v1;
  sub_1DAE9150C(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DAED64D0;
  v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
  v37 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v38 = v25;

  MEMORY[0x1E127DA50](0x746E6569626D612DLL, 0xE800000000000000);
  v26 = v37;
  v27 = v38;
  v28 = v33;
  (*(v5 + 104))(v8, *MEMORY[0x1E6985918], v33);
  v29 = v32;
  sub_1DAED178C();
  v30 = sub_1DAE770FC(v26, v27, v8, v22, v29);

  (*(v35 + 8))(v29, v36);
  (*(v5 + 8))(v8, v28);
  *(v24 + 32) = v30;
  v31 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  *(v23 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v24;

  sub_1DAE8B590(0x7463656E6E6F63, 0xE700000000000000);
}

uint64_t sub_1DAE6E830()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (v8 >> 62)
  {
    result = sub_1DAED247C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1E127E1F0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = *MEMORY[0x1E697DBA8];
  v12 = sub_1DAECF0AC();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD69C4C(v10 + v14, v4);
  swift_beginAccess();
  sub_1DADE9908(v7, v10 + v14);
  swift_endAccess();
  sub_1DAE62CC4(v4);
  sub_1DAE6EA7C(v4);
  sub_1DAE6EA7C(v7);
  sub_1DAE7BB00();
}

uint64_t sub_1DAE6EA7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ActivityRendererInitializationPayload.systemEnvironment.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityRendererInitializationPayload() + 20);
  v4 = sub_1DAED157C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ActivityRendererInitializationPayload()
{
  result = qword_1EE00B998;
  if (!qword_1EE00B998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityRendererInitializationPayload.init(extensions:systemEnvironment:remoteSubscriptionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for ActivityRendererInitializationPayload();
  v8 = *(v7 + 20);
  v9 = sub_1DAED157C();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t sub_1DAE6EC68(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x80000001DAEE0280;
  if (v3 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000016;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DAEE0280;
  }

  else
  {
    v6 = 0x80000001DAEE02A0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F69736E65747865;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA0000000000736ELL;
  }

  if (*a2 != 1)
  {
    v2 = 0xD000000000000016;
    v4 = 0x80000001DAEE02A0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x6F69736E65747865;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA0000000000736ELL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DAED289C();
  }

  return v11 & 1;
}

uint64_t sub_1DAE6ED48()
{
  v1 = *v0;
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

uint64_t sub_1DAE6EDF4()
{
  *v0;
  *v0;
  sub_1DAED1D9C();
}

uint64_t sub_1DAE6EE8C()
{
  v1 = *v0;
  sub_1DAED294C();
  sub_1DAED1D9C();

  return sub_1DAED297C();
}

uint64_t sub_1DAE6EF34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAE6FD4C();
  *a2 = result;
  return result;
}

void sub_1DAE6EF64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000736ELL;
  v4 = 0xD000000000000011;
  v5 = 0x80000001DAEE0280;
  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000001DAEE02A0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6F69736E65747865;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAE6EFCC()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69736E65747865;
  }
}

uint64_t sub_1DAE6F030@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAE6FD4C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAE6F064(uint64_t a1)
{
  v2 = sub_1DAE6F5A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE6F0A0(uint64_t a1)
{
  v2 = sub_1DAE6F5A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityRendererInitializationPayload.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1DAED157C();
  v37 = *(v3 - 8);
  v4 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FB8, &qword_1DAEDCC70);
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - v9;
  v11 = type metadata accessor for ActivityRendererInitializationPayload();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v16 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1DAE6F5A4();
  v17 = v39;
  sub_1DAED29AC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v40);
  }

  v39 = v6;
  v18 = v38;
  v35 = v11;
  v19 = v14;
  v43 = 0;
  sub_1DADBCF28();
  sub_1DAED280C();
  v21 = v41;
  v20 = v42;
  sub_1DAD674D4(0, &qword_1EE00AA20, 0x1E69943D8);
  v22 = sub_1DAED205C();
  v33 = v21;
  v34 = v20;
  v23 = v22;
  v24 = v7;
  v25 = [v22 extensions];

  sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE6F5F8();
  v26 = sub_1DAED1F6C();

  v27 = v19;
  v32[1] = v26;
  *v19 = v26;
  LOBYTE(v41) = 1;
  sub_1DAE6F660(&qword_1EE00AB20);
  v28 = v39;
  sub_1DAED280C();
  v29 = v35;
  (*(v37 + 32))(v27 + *(v35 + 20), v28, v3);
  v43 = 2;
  sub_1DAE6F6A4();
  v39 = 0;
  sub_1DAED280C();
  v30 = v33;
  (*(v18 + 8))(v10, v24);
  sub_1DAD70BB4(v30, v34);
  *(v27 + *(v29 + 24)) = v41;
  sub_1DAE6F6F8(v27, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return sub_1DAE6F75C(v27);
}

unint64_t sub_1DAE6F5A4()
{
  result = qword_1EE00B9B8;
  if (!qword_1EE00B9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B9B8);
  }

  return result;
}

unint64_t sub_1DAE6F5F8()
{
  result = qword_1EE00BDF0;
  if (!qword_1EE00BDF0)
  {
    sub_1DAD674D4(255, &unk_1EE00BE00, 0x1E69943B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00BDF0);
  }

  return result;
}

uint64_t sub_1DAE6F660(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DAED157C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAE6F6A4()
{
  result = qword_1EE00A6C0;
  if (!qword_1EE00A6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A6C0);
  }

  return result;
}

uint64_t sub_1DAE6F6F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityRendererInitializationPayload();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAE6F75C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRendererInitializationPayload();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ActivityRendererInitializationPayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FC0, &qword_1DAEDCC78);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE6F5A4();
  sub_1DAED29BC();
  v11 = *v3;
  v12 = objc_allocWithZone(MEMORY[0x1E69943D8]);
  sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE6F5F8();
  v13 = sub_1DAED1F5C();
  v14 = [v12 initWithExtensions_];

  sub_1DAD674D4(0, &qword_1EE00AA20, 0x1E69943D8);
  v15 = sub_1DAED204C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v17 = v15;
    v18 = v16;

    v22 = v17;
    v23 = v18;
    v24 = 0;
    sub_1DADA7F5C();
    sub_1DAED284C();
    v21 = type metadata accessor for ActivityRendererInitializationPayload();
    v19 = *(v21 + 20);
    LOBYTE(v22) = 1;
    sub_1DAED157C();
    sub_1DAE6F660(&unk_1EE005728);
    sub_1DAED284C();
    v22 = *(v3 + *(v21 + 24));
    v24 = 2;
    sub_1DAE6FA88();
    sub_1DAED284C();
    (*(v6 + 8))(v9, v5);
    sub_1DAD70BB4(v17, v18);
  }
}

unint64_t sub_1DAE6FA88()
{
  result = qword_1EE00A6C8;
  if (!qword_1EE00A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00A6C8);
  }

  return result;
}

void sub_1DAE6FB34()
{
  sub_1DAE6FBC0();
  if (v0 <= 0x3F)
  {
    sub_1DAED157C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAE6FBC0()
{
  if (!qword_1EE00AA80)
  {
    sub_1DAD674D4(255, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE6F5F8();
    v0 = sub_1DAED1FAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE00AA80);
    }
  }
}

unint64_t sub_1DAE6FC48()
{
  result = qword_1ECC09FC8;
  if (!qword_1ECC09FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC09FC8);
  }

  return result;
}

unint64_t sub_1DAE6FCA0()
{
  result = qword_1EE00B9A8;
  if (!qword_1EE00B9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B9A8);
  }

  return result;
}

unint64_t sub_1DAE6FCF8()
{
  result = qword_1EE00B9B0;
  if (!qword_1EE00B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B9B0);
  }

  return result;
}

uint64_t sub_1DAE6FD4C()
{
  v0 = sub_1DAED27CC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t type metadata accessor for ActivityView()
{
  result = qword_1EE007D88;
  if (!qword_1EE007D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE6FE0C()
{
  sub_1DAE6FEE0();
  if (v0 <= 0x3F)
  {
    sub_1DAE6FF74(319, &qword_1EE005848);
    if (v1 <= 0x3F)
    {
      sub_1DAE6FF74(319, &qword_1EE00AB78);
      if (v2 <= 0x3F)
      {
        sub_1DAECEDEC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DAE6FEE0()
{
  if (!qword_1EE005B58)
  {
    type metadata accessor for ActivityViewModel();
    sub_1DAE737E0(&qword_1EE007808, type metadata accessor for ActivityViewModel);
    v0 = sub_1DAECF24C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE005B58);
    }
  }
}

void sub_1DAE6FF74(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1DAED079C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1DAE6FFDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v276 = a1;
  v275 = sub_1DAED182C();
  v274 = *(v275 - 8);
  v3 = *(v274 + 64);
  MEMORY[0x1EEE9AC00](v275);
  v273 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v272 = &v209 - v6;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FD0, &qword_1DAEDCEE8);
  v7 = *(*(v270 - 8) + 64);
  MEMORY[0x1EEE9AC00](v270);
  v271 = &v209 - v8;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FD8, &qword_1DAEDCEF0);
  v9 = *(*(v269 - 8) + 64);
  MEMORY[0x1EEE9AC00](v269);
  v268 = &v209 - v10;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FE0, &qword_1DAEDCEF8);
  v11 = *(*(v266 - 8) + 64);
  MEMORY[0x1EEE9AC00](v266);
  v267 = &v209 - v12;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FE8, &qword_1DAEDCF00);
  v13 = *(*(v265 - 8) + 64);
  MEMORY[0x1EEE9AC00](v265);
  v264 = &v209 - v14;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FF0, &qword_1DAEDCF08);
  v15 = *(*(v262 - 8) + 64);
  MEMORY[0x1EEE9AC00](v262);
  v263 = &v209 - v16;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09FF8, &qword_1DAEDCF10);
  v17 = *(*(v260 - 8) + 64);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v209 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC091C0, &qword_1DAED8E80);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v258 = &v209 - v21;
  v216 = sub_1DAED187C();
  v215 = *(v216 - 8);
  v22 = *(v215 + 64);
  MEMORY[0x1EEE9AC00](v216);
  v214 = &v209 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1DAED1B8C();
  v242 = *(v243 - 8);
  v24 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v243);
  v213 = &v209 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v240 = &v209 - v28;
  v241 = sub_1DAECF33C();
  v29 = *(*(v241 - 8) + 64);
  MEMORY[0x1EEE9AC00](v241);
  v244 = &v209 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A000, &qword_1DAEDCF18);
  v31 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v223 = &v209 - v32;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A008, &qword_1DAEDCF20);
  v33 = *(*(v226 - 8) + 64);
  MEMORY[0x1EEE9AC00](v226);
  v217 = &v209 - v34;
  v277 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A010, &qword_1DAEDCF28);
  v280 = *(v277 - 8);
  v35 = *(v280 + 64);
  MEMORY[0x1EEE9AC00](v277);
  v279 = &v209 - v36;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A018, &qword_1DAEDCF30);
  v37 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v228 = &v209 - v38;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A020, &qword_1DAEDCF38);
  v231 = *(v278 - 8);
  v39 = *(v231 + 64);
  MEMORY[0x1EEE9AC00](v278);
  v230 = &v209 - v40;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A028, &qword_1DAEDCF40);
  v41 = *(*(v229 - 8) + 64);
  MEMORY[0x1EEE9AC00](v229);
  v235 = &v209 - v42;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A030, &qword_1DAEDCF48);
  v43 = *(*(v234 - 8) + 64);
  MEMORY[0x1EEE9AC00](v234);
  v233 = &v209 - v44;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A038, &qword_1DAEDCF50);
  v45 = *(*(v232 - 8) + 64);
  MEMORY[0x1EEE9AC00](v232);
  v238 = &v209 - v46;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A040, &qword_1DAEDCF58);
  v47 = *(*(v236 - 8) + 64);
  MEMORY[0x1EEE9AC00](v236);
  v237 = &v209 - v48;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A048, &qword_1DAEDCF60);
  v49 = *(*(v281 - 1) + 64);
  MEMORY[0x1EEE9AC00](v281);
  v239 = &v209 - v50;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A050, &qword_1DAEDCF68);
  v51 = *(*(v245 - 8) + 64);
  MEMORY[0x1EEE9AC00](v245);
  v246 = &v209 - v52;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A058, &qword_1DAEDCF70);
  v53 = *(*(v247 - 8) + 64);
  MEMORY[0x1EEE9AC00](v247);
  v249 = &v209 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A060, &qword_1DAEDCF78);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55 - 8);
  v251 = &v209 - v57;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A068, &qword_1DAEDCF80);
  v58 = *(*(v250 - 8) + 64);
  MEMORY[0x1EEE9AC00](v250);
  v253 = &v209 - v59;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A070, &qword_1DAEDCF88);
  v60 = *(*(v252 - 8) + 64);
  MEMORY[0x1EEE9AC00](v252);
  v255 = &v209 - v61;
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A078, &qword_1DAEDCF90);
  v62 = *(*(v254 - 8) + 64);
  MEMORY[0x1EEE9AC00](v254);
  v257 = &v209 - v63;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A080, &qword_1DAEDCF98);
  v64 = *(*(v256 - 8) + 64);
  MEMORY[0x1EEE9AC00](v256);
  v261 = &v209 - v65;
  v66 = sub_1DAECDCEC();
  v67 = *(v66 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v212 = &v209 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v71 = *(*(v70 - 8) + 64);
  MEMORY[0x1EEE9AC00](v70 - 8);
  v221 = &v209 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v73);
  v218 = &v209 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v209 - v76;
  v78 = type metadata accessor for ActivityView();
  v79 = v78 - 8;
  v219 = *(v78 - 8);
  v80 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v283 = &v209 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v209 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v209 - v86;
  v220 = v88;
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v209 - v90;
  v286 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC084C8, &qword_1DAED68A8);
  sub_1DAED077C();
  v92 = v1 + *(v79 + 36);
  sub_1DADE9A98(v2, v91);
  sub_1DADE9A98(v2, v87);
  v282 = v2;
  sub_1DADE9A98(v2, v84);
  v248 = v92;
  v93 = sub_1DAECEDCC();
  v94 = sub_1DAED200C();
  v95 = os_log_type_enabled(v93, v94);
  v224 = v66;
  v222 = v67;
  if (v95)
  {
    v211 = v94;
    v96 = swift_slowAlloc();
    v210 = swift_slowAlloc();
    v285 = v210;
    *v96 = 136446722;
    v97 = *(v91 + 1);

    sub_1DADE9AFC(v91);
    v98 = *(v97 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
    v99 = *(v97 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

    v100 = sub_1DAD6482C(v98, v99, &v285);

    *(v96 + 4) = v100;
    *(v96 + 12) = 2082;
    v101 = *(v87 + 3);
    *&v286 = *(v87 + 2);
    *(&v286 + 1) = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
    sub_1DAED077C();
    v102 = sub_1DAED1D4C();
    v104 = v103;
    sub_1DADE9AFC(v87);
    v105 = sub_1DAD6482C(v102, v104, &v285);

    *(v96 + 14) = v105;
    *(v96 + 22) = 2082;
    v106 = *(v84 + 1);
    v107 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
    swift_beginAccess();
    sub_1DAD6495C(v106 + v107, v77, &qword_1ECC07CE8, &qword_1DAED6F60);
    if ((*(v67 + 48))(v77, 1, v66))
    {
      sub_1DAD64398(v77, &qword_1ECC07CE8, &qword_1DAED6F60);
      v108 = 0xE300000000000000;
      v109 = 7104878;
      v110 = v279;
    }

    else
    {
      (*(v67 + 16))(v212, v77, v66);
      sub_1DAD64398(v77, &qword_1ECC07CE8, &qword_1DAED6F60);
      v110 = v279;
      if (qword_1EE00A700 != -1)
      {
        swift_once();
      }

      v112 = qword_1EE00A708;
      v113 = sub_1DAECDC5C();
      v114 = [v112 stringFromDate_];

      v109 = sub_1DAED1CEC();
      v108 = v115;

      (*(v67 + 8))(v212, v66);
    }

    sub_1DADE9AFC(v84);
    v116 = sub_1DAD6482C(v109, v108, &v285);

    *(v96 + 24) = v116;
    _os_log_impl(&dword_1DAD61000, v93, v211, "[%{public}s] Rendering view: %{public}s - override date: %{public}s", v96, 0x20u);
    v117 = v210;
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v117, -1, -1);
    MEMORY[0x1E127F100](v96, -1, -1);

    v111 = v277;
  }

  else
  {

    sub_1DADE9AFC(v84);
    sub_1DADE9AFC(v91);
    sub_1DADE9AFC(v87);
    v111 = v277;
    v110 = v279;
  }

  v118 = v282;
  v119 = v282[3];
  *&v286 = v282[2];
  *(&v286 + 1) = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
  sub_1DAED077C();
  *&v286 = v285;
  v120 = MEMORY[0x1E6981910];
  v121 = MEMORY[0x1E6981900];
  sub_1DAED054C();

  v122 = v118[1];
  v123 = sub_1DAE65DC4();
  v124 = *(v280 + 16);
  v125 = v228;
  if (v123)
  {
    v126 = v217;
    v124(v217, v110, v111);
    sub_1DAD6495C(v126, v223, &qword_1ECC0A008, &qword_1DAEDCF20);
    swift_storeEnumTagMultiPayload();
    sub_1DAE72BE4();
    *&v286 = v120;
    *(&v286 + 1) = v121;
    swift_getOpaqueTypeConformance2();
    v110 = v279;
    sub_1DAECFB1C();
    sub_1DAD64398(v126, &qword_1ECC0A008, &qword_1DAEDCF20);
  }

  else
  {
    v124(v223, v110, v111);
    swift_storeEnumTagMultiPayload();
    sub_1DAE72BE4();
    *&v286 = v120;
    *(&v286 + 1) = v121;
    swift_getOpaqueTypeConformance2();
    sub_1DAECFB1C();
  }

  (*(v280 + 8))(v110, v111);
  v127 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  v128 = v218;
  sub_1DAD6495C(v122 + v127, v218, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAE72CF4();
  v129 = v230;
  sub_1DAED047C();
  sub_1DAD64398(v128, &qword_1ECC07CE8, &qword_1DAED6F60);
  sub_1DAD64398(v125, &qword_1ECC0A018, &qword_1DAEDCF30);
  KeyPath = swift_getKeyPath();
  v131 = v221;
  sub_1DAD6495C(v122 + v127, v221, &qword_1ECC07CE8, &qword_1DAED6F60);
  LOBYTE(v128) = (*(v222 + 48))(v131, 1, v224) != 1;
  sub_1DAD64398(v131, &qword_1ECC07CE8, &qword_1DAED6F60);
  v132 = v235;
  (*(v231 + 32))(v235, v129, v278);
  v133 = v132 + *(v229 + 36);
  *v133 = KeyPath;
  *(v133 + 8) = v128;
  v134 = v283;
  sub_1DADE9A98(v118, v283);
  v135 = *(v219 + 80);
  v136 = (v135 + 16) & ~v135;
  v278 = v136 + v220;
  v279 = v135;
  v137 = swift_allocObject();
  v280 = v136;
  sub_1DAE72E20(v134, v137 + v136, type metadata accessor for ActivityView);
  v138 = v233;
  sub_1DAD7C48C(v132, v233, &qword_1ECC0A028, &qword_1DAEDCF40);
  v139 = (v138 + *(v234 + 36));
  *v139 = sub_1DAE72DB0;
  v139[1] = v137;
  v140 = v238;
  sub_1DAD7C48C(v138, v238, &qword_1ECC0A030, &qword_1DAEDCF48);
  *(v140 + *(v232 + 36)) = 1;
  v141 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  v142 = v240;
  sub_1DAD6495C(v122 + v141, v240, &unk_1ECC09E40, &qword_1DAED68E0);
  v143 = v242;
  v144 = v243;
  v145 = v122;
  if ((*(v242 + 48))(v142, 1, v243))
  {
    sub_1DAD64398(v142, &unk_1ECC09E40, &qword_1DAED68E0);
    v146 = 0;
  }

  else
  {
    v147 = v213;
    (*(v143 + 16))(v213, v142, v144);
    sub_1DAD64398(v142, &unk_1ECC09E40, &qword_1DAED68E0);
    v148 = v214;
    sub_1DAED1B6C();
    (*(v143 + 8))(v147, v144);
    sub_1DAED185C();
    v146 = v149;
    (*(v215 + 8))(v148, v216);
  }

  v150 = *(v241 + 20);
  v151 = *MEMORY[0x1E697F468];
  v152 = sub_1DAECF99C();
  v153 = v244;
  (*(*(v152 - 8) + 104))(&v244[v150], v151, v152);
  *v153 = v146;
  v153[1] = v146;
  v154 = v237;
  v155 = &v237[*(v236 + 36)];
  sub_1DAE72E20(v153, v155, MEMORY[0x1E697EAF0]);
  *(v155 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08FA8, &qword_1DAED8508) + 36)) = 0;
  sub_1DAD7C48C(v140, v154, &qword_1ECC0A038, &qword_1DAEDCF50);
  v156 = swift_getKeyPath();
  v157 = v239;
  sub_1DAD7C48C(v154, v239, &qword_1ECC0A040, &qword_1DAEDCF58);
  v158 = v157 + *(v281 + 9);
  *v158 = v156;
  *(v158 + 8) = 1;
  v159 = *v118;
  v244 = type metadata accessor for ActivityViewModel();
  sub_1DAE737E0(&qword_1EE007808, type metadata accessor for ActivityViewModel);
  v277 = v145;
  sub_1DAECF22C();
  swift_getKeyPath();
  v160 = v258;
  sub_1DAECF23C();

  v161 = v259;
  sub_1DAD6495C(v160, &v259[*(v260 + 36)], &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD6495C(v157, v161, &qword_1ECC0A048, &qword_1DAEDCF60);
  sub_1DAD6495C(v161, v263, &qword_1ECC09FF8, &qword_1DAEDCF10);
  swift_storeEnumTagMultiPayload();
  sub_1DAE72E88();
  sub_1DAE72F44();
  v162 = v246;
  sub_1DAECFB1C();
  sub_1DAD64398(v161, &qword_1ECC09FF8, &qword_1DAEDCF10);
  sub_1DAD64398(v160, &qword_1ECC091C0, &qword_1DAED8E80);
  sub_1DAD64398(v157, &qword_1ECC0A048, &qword_1DAEDCF60);
  v163 = v283;
  sub_1DADE9A98(v118, v283);
  v164 = swift_allocObject();
  v281 = type metadata accessor for ActivityView;
  sub_1DAE72E20(v163, v164 + v280, type metadata accessor for ActivityView);
  v165 = swift_getKeyPath();
  v166 = v264;
  sub_1DAD6495C(v162, v264, &qword_1ECC0A050, &qword_1DAEDCF68);
  v167 = v166 + *(v265 + 36);
  v168 = v277;
  *v167 = sub_1DAE732C0;
  *(v167 + 8) = v168;
  *(v167 + 16) = sub_1DAE732C4;
  *(v167 + 24) = v164;
  *(v167 + 32) = v165;
  *(v167 + 40) = 0;
  sub_1DAD6495C(v166, v267, &qword_1ECC09FE8, &qword_1DAEDCF00);
  swift_storeEnumTagMultiPayload();
  sub_1DAE73334();
  sub_1DAE733C0();

  v169 = v249;
  sub_1DAECFB1C();
  sub_1DAD64398(v166, &qword_1ECC09FE8, &qword_1DAEDCF00);
  sub_1DAD64398(v162, &qword_1ECC0A050, &qword_1DAEDCF68);
  v170 = swift_allocObject();
  *(v170 + 16) = sub_1DAE7344C;
  *(v170 + 24) = v168;
  v171 = *(v269 + 36);
  swift_retain_n();
  v172 = v268;
  sub_1DAECF1BC();
  sub_1DAD6495C(v169, v172, &qword_1ECC0A058, &qword_1DAEDCF70);
  sub_1DAD6495C(v172, v271, &qword_1ECC09FD8, &qword_1DAEDCEF0);
  swift_storeEnumTagMultiPayload();
  sub_1DAE73454();
  sub_1DAE73510();
  v173 = v251;
  sub_1DAECFB1C();

  sub_1DAD64398(v172, &qword_1ECC09FD8, &qword_1DAEDCEF0);
  sub_1DAD64398(v169, &qword_1ECC0A058, &qword_1DAEDCF70);
  v174 = swift_getKeyPath();
  v175 = v274;
  v176 = v272;
  v177 = v275;
  (*(v274 + 16))(v272, v168 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag, v275);
  v178 = v273;
  (*(v175 + 104))(v273, *MEMORY[0x1E6985918], v177);
  sub_1DAE737E0(&unk_1EE0056E0, MEMORY[0x1E6985920]);
  LOBYTE(v159) = sub_1DAED1CAC();
  v179 = *(v175 + 8);
  v179(v178, v177);
  v179(v176, v177);
  v180 = v253;
  sub_1DAD7C48C(v173, v253, &qword_1ECC0A060, &qword_1DAEDCF78);
  v181 = v180 + *(v250 + 36);
  *v181 = v174;
  *(v181 + 8) = (v159 & 1) == 0;
  v182 = v282;
  v183 = v283;
  sub_1DADE9A98(v282, v283);
  v184 = swift_allocObject();
  v185 = v280;
  v186 = v281;
  sub_1DAE72E20(v183, v184 + v280, v281);
  v187 = v180;
  v188 = v255;
  sub_1DAD7C48C(v187, v255, &qword_1ECC0A068, &qword_1DAEDCF80);
  v189 = (v188 + *(v252 + 36));
  *v189 = sub_1DAE7359C;
  v189[1] = v184;
  v189[2] = 0;
  v189[3] = 0;
  v190 = v277;
  v275 = *(v277 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher);
  v191 = v275;
  sub_1DADE9A98(v182, v183);
  v192 = swift_allocObject();
  sub_1DAE72E20(v183, v192 + v185, v186);
  v193 = v257;
  sub_1DAD7C48C(v188, v257, &qword_1ECC0A070, &qword_1DAEDCF88);
  v194 = v254;
  *(v193 + *(v254 + 52)) = v191;
  v195 = (v193 + *(v194 + 56));
  *v195 = sub_1DAE735FC;
  v195[1] = v192;
  v196 = *(v190 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher);
  sub_1DADE9A98(v282, v183);
  v197 = swift_allocObject();
  sub_1DAE72E20(v183, v197 + v185, v186);
  v198 = v261;
  sub_1DAD7C48C(v193, v261, &qword_1ECC0A078, &qword_1DAEDCF90);
  v199 = v256;
  *(v198 + *(v256 + 52)) = v196;
  v200 = (v198 + *(v199 + 56));
  *v200 = sub_1DAE7366C;
  v200[1] = v197;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A090, &qword_1DAEDD090);
  v202 = v276;
  v203 = v276 + *(v201 + 36);
  v204 = *(type metadata accessor for InteractiveWidgetSetupViewModifier() + 24);
  v205 = sub_1DAECEDEC();
  (*(*(v205 - 8) + 16))(v203 + v204, v248, v205);
  v284 = v190;
  v206 = swift_allocObject();
  swift_weakInit();
  *v203 = sub_1DAE6D2C0;
  *(v203 + 8) = v206;
  v207 = off_1F56B43C0[0];

  *(v203 + 16) = v207();
  return sub_1DAD7C48C(v198, v202, &qword_1ECC0A080, &qword_1DAEDCF98);
}

uint64_t sub_1DAE72060(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + 8);
  v8 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  swift_beginAccess();
  sub_1DAD6495C(v7 + v8, v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  v9 = sub_1DAECDCEC();
  LODWORD(v7) = (*(*(v9 - 8) + 48))(v6, 1, v9);
  result = sub_1DAD64398(v6, &qword_1ECC07CE8, &qword_1DAED6F60);
  if (v7 != 1)
  {
    return sub_1DAECF0EC();
  }

  return result;
}

uint64_t sub_1DAE72188(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  sub_1DAD6495C(a1, &v11 - v6, &unk_1ECC09EC0, &qword_1DAED7970);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  swift_beginAccess();
  sub_1DAD752E0(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_1DAE72264(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAE722D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09EC0, &qword_1DAED7970);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler;
  v9 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  if (v9)
  {
    v10 = *(v8 + 8);
    v15 = 2;
    v11 = sub_1DAECDBFC();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v7, a1, v11);
    (*(v12 + 56))(v7, 0, 1, v11);

    v9(&v15, v7);
    sub_1DAE5DF28(v9);
    sub_1DAD64398(v7, &unk_1ECC09EC0, &qword_1DAED7970);
  }

  return 1;
}

uint64_t sub_1DAE72454(void *a1)
{
  v2 = sub_1DAED1B8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v16 - v9;
  v11 = a1[1];
  v12 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v11 + v12, v10, &unk_1ECC09E40, &qword_1DAED68E0);
  if ((*(v3 + 48))(v10, 1, v2))
  {
    sub_1DAD64398(v10, &unk_1ECC09E40, &qword_1DAED68E0);
    v13 = *(v11 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);
  }

  else
  {
    (*(v3 + 16))(v6, v10, v2);
    sub_1DAD64398(v10, &unk_1ECC09E40, &qword_1DAED68E0);
    v13 = sub_1DAED1B5C();
    (*(v3 + 8))(v6, v2);
  }

  v14 = a1[3];
  v16[1] = a1[2];
  v16[2] = v14;
  v16[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
  return sub_1DAED078C();
}

uint64_t sub_1DAE72680(unsigned __int8 *a1, void *a2)
{
  v4 = type metadata accessor for ActivityView();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED1B8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E40, &qword_1DAED68E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v45 - v15;
  v17 = sub_1DAECF8EC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  if (v23 < 2)
  {
    goto LABEL_2;
  }

  if (v23 != 2)
  {
    goto LABEL_5;
  }

  v25 = a2[1];
  v45[0] = a2;
  v26 = v7;
  v27 = v4;
  v28 = v20;
  sub_1DAE684B0(v22);
  LOBYTE(v25) = sub_1DAECF4BC();
  v29 = v28;
  v4 = v27;
  v7 = v26;
  a2 = v45[0];
  (*(v18 + 8))(v22, v29);
  if (v25)
  {
LABEL_2:
    v24 = 0;
  }

  else
  {
LABEL_5:
    v24 = 1;
  }

  v30 = a2[1];
  v31 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  swift_beginAccess();
  sub_1DAD6495C(v30 + v31, v16, &unk_1ECC09E40, &qword_1DAED68E0);
  if (!(*(v9 + 48))(v16, 1, v8))
  {
    (*(v9 + 16))(v12, v16, v8);
    sub_1DAD64398(v16, &unk_1ECC09E40, &qword_1DAED68E0);
    v32 = sub_1DAED1B5C();
    (*(v9 + 8))(v12, v8);
    if (v24)
    {
      goto LABEL_8;
    }

LABEL_11:
    v42 = a2[3];
    v46[0] = a2[2];
    v46[1] = v42;
    v45[2] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
    return sub_1DAED078C();
  }

  sub_1DAD64398(v16, &unk_1ECC09E40, &qword_1DAED68E0);
  v32 = *(v30 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView);

  if (!v24)
  {
    goto LABEL_11;
  }

LABEL_8:
  v33 = *(v4 + 28);
  sub_1DADE9A98(a2, v7);
  v34 = sub_1DAECEDCC();
  v35 = sub_1DAED200C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v46[0] = v37;
    *v36 = 136446210;
    v38 = *(v7 + 1);

    sub_1DADE9AFC(v7);
    v39 = *(v38 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
    v40 = *(v38 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8);

    v41 = sub_1DAD6482C(v39, v40, v46);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_1DAD61000, v34, v35, "[%{public}s] Animating pending view change...", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x1E127F100](v37, -1, -1);
    MEMORY[0x1E127F100](v36, -1, -1);
  }

  else
  {

    sub_1DADE9AFC(v7);
  }

  v44 = sub_1DAED095C();
  MEMORY[0x1EEE9AC00](v44);
  v45[-2] = a2;
  v45[-1] = v32;
  sub_1DAECF1DC();
}

uint64_t sub_1DAE72B7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A088, &qword_1DAEDCFA0);
  return sub_1DAED078C();
}

unint64_t sub_1DAE72BE4()
{
  result = qword_1EE005A78;
  if (!qword_1EE005A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A008, &qword_1DAEDCF20);
    swift_getOpaqueTypeConformance2();
    sub_1DAE72CA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A78);
  }

  return result;
}

unint64_t sub_1DAE72CA0()
{
  result = qword_1EE006930;
  if (!qword_1EE006930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE006930);
  }

  return result;
}

unint64_t sub_1DAE72CF4()
{
  result = qword_1EE005980;
  if (!qword_1EE005980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A018, &qword_1DAEDCF30);
    sub_1DAE72BE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005980);
  }

  return result;
}

uint64_t sub_1DAE72DB0(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAE72060(a1, v4);
}

uint64_t sub_1DAE72E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAE72E88()
{
  result = qword_1EE005A00;
  if (!qword_1EE005A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09FF8, &qword_1DAEDCF10);
    sub_1DAE72F44();
    sub_1DAE737E0(qword_1EE00C130, type metadata accessor for WidgetURLReaderModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A00);
  }

  return result;
}

unint64_t sub_1DAE72F44()
{
  result = qword_1EE005A08;
  if (!qword_1EE005A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A048, &qword_1DAEDCF60);
    sub_1DAE72FFC();
    sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A08);
  }

  return result;
}

unint64_t sub_1DAE72FFC()
{
  result = qword_1EE005A10;
  if (!qword_1EE005A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A040, &qword_1DAEDCF58);
    sub_1DAE730B4();
    sub_1DAD64B94(&qword_1EE00AB88, &qword_1ECC08FA8, &qword_1DAED8508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A10);
  }

  return result;
}

unint64_t sub_1DAE730B4()
{
  result = qword_1EE005A20;
  if (!qword_1EE005A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A038, &qword_1DAEDCF50);
    sub_1DAE73140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A20);
  }

  return result;
}

unint64_t sub_1DAE73140()
{
  result = qword_1EE005A40;
  if (!qword_1EE005A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A030, &qword_1DAEDCF48);
    sub_1DAE731CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A40);
  }

  return result;
}

unint64_t sub_1DAE731CC()
{
  result = qword_1EE005A88;
  if (!qword_1EE005A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A028, &qword_1DAEDCF40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A018, &qword_1DAEDCF30);
    sub_1DAE72CF4();
    swift_getOpaqueTypeConformance2();
    sub_1DAD64B94(&qword_1EE00AB80, &qword_1ECC090B8, &qword_1DAEDFD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005A88);
  }

  return result;
}

uint64_t sub_1DAE732C4(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAE72264(a1, v4);
}

unint64_t sub_1DAE73334()
{
  result = qword_1EE005B10;
  if (!qword_1EE005B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09FE8, &qword_1DAEDCF00);
    sub_1DAE733C0();
    sub_1DAD71948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005B10);
  }

  return result;
}

unint64_t sub_1DAE733C0()
{
  result = qword_1EE005940;
  if (!qword_1EE005940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A050, &qword_1DAEDCF68);
    sub_1DAE72E88();
    sub_1DAE72F44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005940);
  }

  return result;
}

unint64_t sub_1DAE73454()
{
  result = qword_1EE005AF8;
  if (!qword_1EE005AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC09FD8, &qword_1DAEDCEF0);
    sub_1DAE73510();
    sub_1DAE737E0(&qword_1EE00BF18, type metadata accessor for SystemURLActionViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AF8);
  }

  return result;
}

unint64_t sub_1DAE73510()
{
  result = qword_1EE005960;
  if (!qword_1EE005960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A058, &qword_1DAEDCF70);
    sub_1DAE73334();
    sub_1DAE733C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005960);
  }

  return result;
}

uint64_t sub_1DAE7359C()
{
  v1 = *(type metadata accessor for ActivityView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1DAE72454(v2);
}

uint64_t sub_1DAE735FC(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1DAE37CC8(a1, v4);
}

uint64_t sub_1DAE7366C(unsigned __int8 *a1)
{
  v3 = *(type metadata accessor for ActivityView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1DAE72680(a1, v4);
}

unint64_t sub_1DAE736F8()
{
  result = qword_1EE005AA0;
  if (!qword_1EE005AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0A090, &qword_1DAEDD090);
    sub_1DAD64B94(&qword_1EE0059F0, &qword_1ECC0A080, &qword_1DAEDCF98);
    sub_1DAE737E0(&qword_1EE00BCD0, type metadata accessor for InteractiveWidgetSetupViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005AA0);
  }

  return result;
}

uint64_t sub_1DAE737E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1DAE73828()
{
  sub_1DAE73F00();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[7];

  v2 = v0[10];

  v3 = v0[11];

  v4 = v0[12];

  v5 = OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_logger;
  v6 = sub_1DAECEDEC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_1DAE738E4()
{
  sub_1DAE73828();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteSubscriptionTypeEnvironmentProvider()
{
  result = qword_1ECC0A0C0;
  if (!qword_1ECC0A0C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE73990()
{
  result = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1DAE73A7C()
{
  v1 = v0;
  v2 = *(v0 + 40);
  v3 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, v6);
  v9 = sub_1DAED10FC();
  (*(v4 + 8))(v8, v2);
  v14 = v9;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DAE74758;
  *(v11 + 24) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850);
  sub_1DAECF00C();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A560, &qword_1DAEDD1F0);
  sub_1DAD64B94(&qword_1EE005690, &qword_1ECC0A560, &qword_1DAEDD1F0);
  sub_1DAECEE1C();
  swift_endAccess();

  v14 = *(v1 + 56);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0E0, &qword_1DAEDD1F8);
  sub_1DAD64B94(&qword_1ECC0A0E8, &qword_1ECC0A0E0, &qword_1DAEDD1F8);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE1C();
  swift_endAccess();
}

uint64_t sub_1DAE73DC0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 96);

    sub_1DAECEE6C();
  }

  return result;
}

uint64_t sub_1DAE73E2C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = v1;
    v3 = *(result + 96);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAECEEEC();
  }

  return result;
}

void sub_1DAE73F00()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 80);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *(v0 + 80);
    }

    v3 = sub_1DAED247C();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
LABEL_10:
      v6 = *(v1 + 80);
      *(v1 + 80) = MEMORY[0x1E69E7CC0];

      v7 = OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_biomeSink;
      [*(v1 + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_biomeSink) cancel];
      v8 = *(v1 + v7);
      *(v1 + v7) = 0;

      return;
    }
  }

  if (v3 >= 1)
  {

    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E127E1F0](i, v2);
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      sub_1DAECEE2C();
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1DAE74020@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DAED1B2C();
  v26 = *(v4 - 8);
  v27 = v4;
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECF8EC();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + 72);
  v13 = *(v1 + 40);
  v14 = __swift_project_boxed_opaque_existential_1((v1 + 16), v13);
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v17);
  v20 = (v15 + 8);
  if (v12 == 1)
  {
    sub_1DAED10EC();
    (*v20)(v19, v13);
    v21 = *(v2 + 64);
    v22 = sub_1DAECDEDC();
    if (v22 == sub_1DAECDEDC() || (v23 = *(v2 + 64), v24 = sub_1DAECDEDC(), v24 == sub_1DAECDEDC()))
    {
      (*(v26 + 104))(v7, *MEMORY[0x1E6985AE8], v27);
      sub_1DAECF7CC();
    }

    return (*(v28 + 32))(a1, v11, v29);
  }

  else
  {
    sub_1DAED10EC();
    return (*v20)(v19, v13);
  }
}

uint64_t sub_1DAE742E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0D0, &qword_1DAEDD1D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v8 - v4;
  v8[1] = *(v0 + 96);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAECEF7C();

  sub_1DAD64B94(&qword_1ECC0A0D8, &qword_1ECC0A0D0, &qword_1DAEDD1D8);
  v6 = sub_1DAECEF6C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_1DAE7456C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount);
    v2 = __OFADD__(v1, 1);
    v3 = v1 + 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount) = v3;
      if (v3 < 1)
      {
        sub_1DAE73F00();
      }

      else
      {
        sub_1DAE73A7C();
      }
    }
  }

  return result;
}

uint64_t sub_1DAE745F0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount) = v3;
      if (v3 < 1)
      {
        sub_1DAE73F00();
      }

      else
      {
        sub_1DAE73A7C();
      }
    }
  }

  return result;
}

uint64_t sub_1DAE74674()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount);
    v2 = __OFSUB__(v1, 1);
    v3 = v1 - 1;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC14WidgetRenderer41RemoteSubscriptionTypeEnvironmentProvider_subscriberCount) = v3;
      if (v3 < 1)
      {
        sub_1DAE73F00();
      }

      else
      {
        sub_1DAE73A7C();
      }
    }
  }

  return result;
}

uint64_t sub_1DAE747D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C6961467369 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DAED289C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAE74858(uint64_t a1)
{
  v2 = sub_1DAE74A08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAE74894(uint64_t a1)
{
  v2 = sub_1DAE74A08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityRendererSessionSubscriptionResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0F0, &qword_1DAEDD200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE74A08();
  sub_1DAED29BC();
  sub_1DAED282C();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DAE74A08()
{
  result = qword_1EE00B810;
  if (!qword_1EE00B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B810);
  }

  return result;
}

uint64_t ActivityRendererSessionSubscriptionResponse.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0F8, &qword_1DAEDD208);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE74A08();
  sub_1DAED29AC();
  if (!v2)
  {
    v11 = sub_1DAED27EC();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1DAE74BCC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A0F0, &qword_1DAEDD200);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAE74A08();
  sub_1DAED29BC();
  sub_1DAED282C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for ActivityRendererSessionSubscriptionResponse(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1DAE74DC8()
{
  result = qword_1ECC0A100;
  if (!qword_1ECC0A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A100);
  }

  return result;
}

unint64_t sub_1DAE74E20()
{
  result = qword_1EE00B800;
  if (!qword_1EE00B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B800);
  }

  return result;
}

unint64_t sub_1DAE74E78()
{
  result = qword_1EE00B808;
  if (!qword_1EE00B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00B808);
  }

  return result;
}

uint64_t sub_1DAE750AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer27AmbientCompactSceneDelegate__cancellables);

  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer27AmbientCompactSceneDelegate__viewModel);
}

id sub_1DAE750FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AmbientCompactSceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AmbientCompactSceneDelegate()
{
  result = qword_1ECC0A120;
  if (!qword_1ECC0A120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE75238(void *a1)
{
  v35 = a1;
  v2 = sub_1DAED17AC();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v33 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DAED182C();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECEDEC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC079A8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_1ECC0DD60);
  v15 = v10[2];
  v15(v13, v14, v9);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v17 = v10[5];
  v17(v1 + v16, v13, v9);
  swift_endAccess();
  if (qword_1ECC079B0 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v9, qword_1ECC0DD78);
  v15(v13, v18, v9);
  v19 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v17(v1 + v19, v13, v9);
  swift_endAccess();
  if (qword_1ECC079E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v9, qword_1ECC0DE08);
  v15(v13, v20, v9);
  v21 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v17(v1 + v21, v13, v9);
  swift_endAccess();
  v22 = v35;
  v23 = v1;
  sub_1DAE9150C(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1DAED64D0;
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1DAED256C();
  v25 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v26 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

  v38 = v25;
  v39 = v26;
  MEMORY[0x1E127DA50](0x746E6569626D612DLL, 0xEF746361706D6F43);
  v27 = v38;
  v28 = v39;
  *v8 = 3;
  v29 = v34;
  (*(v5 + 104))(v8, *MEMORY[0x1E6985910], v34);
  v30 = v33;
  sub_1DAED178C();
  v31 = sub_1DAE770FC(v27, v28, v8, v22, v30);

  (*(v36 + 8))(v30, v37);
  (*(v5 + 8))(v8, v29);
  *(v24 + 32) = v31;
  v32 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  *(v23 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels) = v24;

  sub_1DAE8B590(0x7463656E6E6F63, 0xE700000000000000);
}

uint64_t sub_1DAE75738()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-v6];
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer21ActivitySceneDelegate_viewModels);
  if (v8 >> 62)
  {
    result = sub_1DAED247C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1E127E1F0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = *MEMORY[0x1E697DBA8];
  v12 = sub_1DAECF0AC();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v7, v11, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  v14 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD69C4C(v10 + v14, v4);
  swift_beginAccess();
  sub_1DADE9908(v7, v10 + v14);
  swift_endAccess();
  sub_1DAE62CC4(v4);
  sub_1DAE6EA7C(v4);
  sub_1DAE6EA7C(v7);
  sub_1DAE7BB00();
}

uint64_t sub_1DAE75984()
{
  v0 = sub_1DAECEDEC();
  __swift_allocate_value_buffer(v0, qword_1ECC0DEE8);
  __swift_project_value_buffer(v0, qword_1ECC0DEE8);
  return sub_1DAECEDDC();
}

uint64_t BugReportingObjectCounter.__allocating_init(maximum:bugReporter:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = sub_1DAECEDEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECC07A48 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_1ECC0DEE8);
  (*(v7 + 16))(v10, v11, v6);
  sub_1DAD648F8(a2, v17);
  v12 = *(v3 + 48);
  v13 = *(v3 + 52);
  v14 = swift_allocObject();
  sub_1DAE75BC4(a1, v10, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v14;
}

uint64_t sub_1DAE75B6C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_1DAE75BC4(a1, a2, a3);
  return v9;
}

char *sub_1DAE75BC4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = v3;
  v8 = *v4;
  v9 = qword_1EE011828;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A510, qword_1DAEDD4F8);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *&v4[v9] = v10;
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED203C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446466;
    v15 = *(v8 + 80);
    v16 = sub_1DAED29FC();
    v18 = sub_1DAD6482C(v16, v17, &v22);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2050;
    *(v13 + 14) = a1;
    _os_log_impl(&dword_1DAD61000, v11, v12, "counter created for %{public}s with maximum %{public}ld", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E127F100](v14, -1, -1);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  *(v4 + 2) = a1;
  sub_1DAD657D8(a3, (v4 + 24));
  v19 = qword_1EE011830;
  v20 = sub_1DAECEDEC();
  (*(*(v20 - 8) + 32))(&v4[v19], a2, v20);
  return v4;
}

void sub_1DAE75DA4()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v5;
    os_unfair_lock_unlock((v3 + 24));

    v6 = v1[2];
    if (v6 < v5)
    {
      swift_retain_n();
      v15 = sub_1DAECEDCC();
      v16 = sub_1DAED201C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v37 = v18;
        *v17 = 136446722;
        v19 = *(v2 + 80);
        v20 = sub_1DAED29FC();
        v22 = sub_1DAD6482C(v20, v21, &v37);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2050;
        *(v17 + 14) = v5;
        *(v17 + 22) = 2050;

        *(v17 + 24) = v6;

        _os_log_impl(&dword_1DAD61000, v15, v16, "Count of %{public}s increased to %{public}ld. This exceeds the maximum of %{public}ld", v17, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x1E127F100](v18, -1, -1);
        MEMORY[0x1E127F100](v17, -1, -1);
      }

      else
      {
      }

      v23 = v1[6];
      v24 = v1[7];
      __swift_project_boxed_opaque_existential_1(v1 + 3, v23);
      v25 = *(v2 + 80);
      v36 = sub_1DAED29FC();
      v27 = v26;
      v37 = sub_1DAED29FC();
      v38 = v28;
      MEMORY[0x1E127DA50](0x63784574696D694CLL, 0xED00006465646565);
      v29 = v37;
      v30 = v38;
      v37 = sub_1DAED29FC();
      v38 = v31;
      MEMORY[0x1E127DA50](0x63784574696D694CLL, 0xED00006465646565);
      v32 = v37;
      v33 = v38;
      v37 = v5;
      v34 = sub_1DAED287C();
      (*(v24 + 8))(v36, v27, v29, v30, v32, v33, v34, v35, v23, v24);
    }

    else
    {
      v7 = sub_1DAECEDCC();
      v8 = sub_1DAED203C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v37 = v10;
        *v9 = 136446466;
        v11 = *(v2 + 80);
        v12 = sub_1DAED29FC();
        v14 = sub_1DAD6482C(v12, v13, &v37);

        *(v9 + 4) = v14;
        *(v9 + 12) = 2050;
        *(v9 + 14) = v5;
        _os_log_impl(&dword_1DAD61000, v7, v8, "Count of %{public}s increased to %{public}ld", v9, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x1E127F100](v10, -1, -1);
        MEMORY[0x1E127F100](v9, -1, -1);
      }
    }
  }
}

void sub_1DAE76174()
{
  v1 = *v0;
  v2 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v2 + 24));
  sub_1DAE7692C((v2 + 16), &v12);
  os_unfair_lock_unlock((v2 + 24));
  v3 = v12;

  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446466;
    v8 = *(v1 + 80);
    v9 = sub_1DAED29FC();
    v11 = sub_1DAD6482C(v9, v10, &v12);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2050;
    *(v6 + 14) = v3;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Count of %{public}s decreased to %{public}ld", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E127F100](v7, -1, -1);
    MEMORY[0x1E127F100](v6, -1, -1);
  }
}

uint64_t *sub_1DAE76304@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *result;
  v4 = *result - 1;
  if (*result < 1)
  {
    v22 = a3;
    v6 = *a2;
    v7 = sub_1DAECEDCC();
    v8 = sub_1DAED201C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v23 = v10;
      *v9 = 136446210;
      v11 = *(v6 + 80);
      v12 = sub_1DAED29FC();
      v14 = sub_1DAD6482C(v12, v13, &v23);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_1DAD61000, v7, v8, "Attempted decrement of zero %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E127F100](v10, -1, -1);
      MEMORY[0x1E127F100](v9, -1, -1);
    }

    v15 = a2[6];
    v16 = a2[7];
    __swift_project_boxed_opaque_existential_1(a2 + 3, v15);
    v17 = sub_1DAED29FC();
    v19 = v18;
    v23 = v3;
    v20 = sub_1DAED287C();
    (*(v16 + 8))(v17, v19, 0xD000000000000018, 0x80000001DAEE4F70, 0xD000000000000018, 0x80000001DAEE4F70, v20, v21, v15, v16);

    a3 = v22;
  }

  else
  {
    *result = v4;
    v3 = v4;
  }

  *a3 = v3;
  return result;
}

uint64_t sub_1DAE76518()
{
  v1 = *(v0 + qword_1EE011828);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t BugReportingObjectCounter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  v1 = qword_1EE011830;
  v2 = sub_1DAECEDEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1EE011828);

  return v0;
}

uint64_t BugReportingObjectCounter.__deallocating_deinit()
{
  BugReportingObjectCounter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BugReporting.reportBug(type:subType:name:value:)(Swift::String type, Swift::String subType, Swift::String name, Swift::String value)
{
  v9 = value;
  v4 = sub_1DAED1F2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0ABC();
  sub_1DAED0AAC();
  sub_1DAED0A9C();
  (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAE7678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14[0] = a7;
  v14[1] = a8;
  v8 = sub_1DAED1F2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED0ABC();
  sub_1DAED0AAC();
  sub_1DAED0A9C();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DAE768C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DAE768F0(void (*a1)(void))
{
  a1();

  return sub_1DAED29FC();
}

uint64_t sub_1DAE76964()
{
  result = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAE76B2C()
{
  v1 = v0;
  v2 = sub_1DAECEDEC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v47[-v9];
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v47[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v47[-v14];
  v16 = BSDispatchQueueAssertMain();
  v17 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x220))(v16))
  {
    if (v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] == 1)
    {
      v18 = v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground];
      v19 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
      v20 = (v3 + 16);
      if (v18 == 1)
      {
        swift_beginAccess();
        (*v20)(v15, &v1[v19], v2);
        v21 = v1;
        v22 = sub_1DAECEDCC();
        v23 = sub_1DAED203C();

        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v50 = v25;
          *v24 = 136446210;
          v26 = &v21[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v27 = *&v21[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v28 = *(v26 + 1);

          v29 = sub_1DAD6482C(v27, v28, &v50);

          *(v24 + 4) = v29;
          _os_log_impl(&dword_1DAD61000, v22, v23, "[%{public}s] Scene received memory warning - action: none, content is actively foreground.", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v25);
          MEMORY[0x1E127F100](v25, -1, -1);
          MEMORY[0x1E127F100](v24, -1, -1);
        }

        return (*(v3 + 8))(v15, v2);
      }

      else
      {
        swift_beginAccess();
        (*v20)(v13, &v1[v19], v2);
        v39 = v1;
        v40 = sub_1DAECEDCC();
        v41 = sub_1DAED203C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v50 = v49;
          *v42 = 136446210;
          v48 = v41;
          v43 = *&v39[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
          v44 = *&v39[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

          v45 = sub_1DAD6482C(v43, v44, &v50);

          *(v42 + 4) = v45;
          _os_log_impl(&dword_1DAD61000, v40, v48, "[%{public}s] Scene received memory warning - action: invalidating content VC because background.", v42, 0xCu);
          v46 = v49;
          __swift_destroy_boxed_opaque_existential_1Tm(v49);
          MEMORY[0x1E127F100](v46, -1, -1);
          MEMORY[0x1E127F100](v42, -1, -1);
        }

        (*(v3 + 8))(v13, v2);
        return (*((*v17 & *v39) + 0x230))(0x772079726F6D656DLL, 0xEE00676E696E7261);
      }
    }

    else
    {
      v35 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
      swift_beginAccess();
      (*(v3 + 16))(v10, &v1[v35], v2);
      v36 = sub_1DAECEDCC();
      v37 = sub_1DAED1FFC();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1DAD61000, v36, v37, "Scene received memory warning - action: none, because no UI currently exists.", v38, 2u);
        MEMORY[0x1E127F100](v38, -1, -1);
      }

      return (*(v3 + 8))(v10, v2);
    }
  }

  else
  {
    v31 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v3 + 16))(v7, &v1[v31], v2);
    v32 = sub_1DAECEDCC();
    v33 = sub_1DAED1FFC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1DAD61000, v32, v33, "Scene received memory warning - action: none, because delegate doesn't support dynamic invalidations", v34, 2u);
      MEMORY[0x1E127F100](v34, -1, -1);
    }

    return (*(v3 + 8))(v7, v2);
  }
}

uint64_t sub_1DAE770FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v193 = a5;
  v214 = a3;
  v211 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D08, &qword_1DAEDCB80);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v204 = v175 - v11;
  v205 = sub_1DAED22EC();
  v203 = *(v205 - 8);
  v12 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v205);
  v202 = v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D10, &qword_1DAED57C0);
  v207 = *(v14 - 8);
  v208 = v14;
  v15 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v206 = v175 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D18, &qword_1DAED57C8);
  v210 = *(v17 - 8);
  v18 = *(v210 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v209 = v175 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v217 = v175 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08690, &qword_1DAED6CD8);
  v200 = *(v23 - 8);
  v201 = v23;
  v24 = v200[8];
  MEMORY[0x1EEE9AC00](v23);
  v199 = v175 - v25;
  v198 = sub_1DAED17AC();
  v26 = *(v198 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v198);
  v197 = v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A150, &unk_1DAED6CE0);
  v29 = *(*(v195 - 8) + 64);
  MEMORY[0x1EEE9AC00](v195);
  v194 = (v175 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v191 = *(v31 - 8);
  v192 = v31;
  v32 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v190 = v175 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A160, &qword_1DAED6CF0);
  v188 = *(v34 - 8);
  v189 = v34;
  v35 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v187 = v175 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08698, &qword_1DAED84E0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v37 - 8);
  v196 = v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v220 = v175 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A140, &qword_1DAEDD5C8);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v222 = v175 - v44;
  v45 = sub_1DAED182C();
  v218 = *(v45 - 8);
  v46 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v221 = v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = v175 - v50;
  v224 = sub_1DAECEDEC();
  v219 = *(v224 - 8);
  v52 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v223 = v175 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v54 = qword_1EE011BD8;
  sub_1DAD648F8(qword_1EE011BD8 + 144, v242);
  sub_1DAD648F8(v54 + 104, v241);
  swift_beginAccess();
  result = sub_1DAD6495C(v54 + 56, v229, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v230)
  {
    __break(1u);
    goto LABEL_24;
  }

  v185 = v17;
  v186 = a4;
  v56 = *(*__swift_project_boxed_opaque_existential_1(v229, v230) + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v229);
  v57 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v57 + 56, v229, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v230)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v58 = __swift_project_boxed_opaque_existential_1(v229, v230);
  sub_1DAD648F8(*v58 + 32, v240);
  __swift_destroy_boxed_opaque_existential_1Tm(v229);
  v59 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v60 = v219 + 16;
  v184 = *(v219 + 16);
  v184(v223, v6 + v59, v224);
  if (a2)
  {
    v61 = a2;
  }

  else
  {
    v61 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
    v211 = *(v6 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  }

  v62 = qword_1EE011BD8;
  swift_beginAccess();
  result = sub_1DAD6495C(v62 + 56, v238, &unk_1ECC0A170, &qword_1DAED6440);
  if (!v239)
  {
    goto LABEL_25;
  }

  v63 = *(*__swift_project_boxed_opaque_existential_1(v238, v239) + 24);

  sub_1DAECE6BC();

  sub_1DAD648F8(v242, v236);
  sub_1DAD648F8(v241, v235);
  sub_1DAD648F8(v240, v233);
  v64 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
  swift_beginAccess();
  sub_1DAD6495C(v6 + v64, v51, &qword_1ECC0A148, &qword_1DAEDD5D0);
  v65 = sub_1DAECDE4C();
  v215 = *(v65 - 8);
  v216 = v65;
  result = (*(v215 + 48))(v51, 1);
  if (result == 1)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v181 = v61;
  v182 = v60;
  v213 = v51;
  v180 = *(v218 + 16);
  v180(v221, v214, v45);
  v66 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_metricsDefinition;
  swift_beginAccess();
  v183 = v6;
  v67 = v6 + v66;
  v214 = v45;
  v68 = v222;
  sub_1DAD6495C(v67, v222, &qword_1ECC0A140, &qword_1DAEDD5C8);
  v69 = sub_1DAED1ABC();
  v212 = *(v69 - 8);
  result = (*(v212 + 48))(v68, 1, v69);
  if (result == 1)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v70 = v26;
  v71 = v220;
  v72 = v198;
  (*(v26 + 16))(v220, v193, v198);
  (*(v26 + 56))(v71, 0, 1, v72);
  v73 = v234;
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v233, v234);
  v178 = v175;
  v75 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v74);
  v77 = (v175 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = *v77;
  v176 = type metadata accessor for ActivityRendererClient();
  v230 = v176;
  v80 = sub_1DAE7B8AC(&qword_1EE008C88, type metadata accessor for ActivityRendererClient);
  v232 = &off_1F56B4928;
  v175[1] = v80;
  v231 = v80;
  v229[0] = v56;
  v81 = type metadata accessor for _DefaultActivityRendererSessionFactory();
  v228[3] = v81;
  v228[4] = &off_1F56B36D8;
  v228[0] = v79;
  v82 = type metadata accessor for ActivityViewModel();
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  v85 = swift_allocObject();
  v86 = __swift_mutable_project_boxed_opaque_existential_1(v228, v81);
  v177 = v175;
  v87 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v89 = (v175 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v90 + 16))(v89);
  v91 = *v89;
  v227[3] = v81;
  v227[4] = &off_1F56B36D8;
  v227[0] = v91;
  v92 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel___pendingInteractionSequenceNumber;
  v225 = 0;
  v193 = v56;
  v93 = v187;
  sub_1DAECEEFC();
  (*(v188 + 32))(v85 + v92, v93, v189);
  v94 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseContentTouchedDown;
  LOBYTE(v225) = 0;
  v95 = v190;
  sub_1DAECEEFC();
  (*(v191 + 32))(v85 + v94, v95, v192);
  v96 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_defaultView;
  sub_1DAECF10C();
  sub_1DAD64B94(&qword_1EE005B80, &unk_1ECC0A150, &unk_1DAED6CE0);
  *(v85 + v96) = sub_1DAED087C();
  v97 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntry;
  v98 = sub_1DAED1B8C();
  (*(*(v98 - 8) + 56))(v85 + v97, 1, 1, v98);
  v99 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorScheme;
  v100 = sub_1DAECF0AC();
  v101 = *(*(v100 - 8) + 56);
  v101(v85 + v99, 1, 1, v100);
  v101(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_preferredColorScheme, 1, 1, v100);
  v101(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_inheritedColorScheme, 1, 1, v100);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = 0;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = 0;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = 0;
  v102 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_keybagLockPolicy;
  v103 = *MEMORY[0x1E6994040];
  v104 = sub_1DAECE21C();
  (*(*(v104 - 8) + 104))(v85 + v102, v103, v104);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 0;
  sub_1DAECF8DC();
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 0;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = 0;
  v105 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDate;
  v106 = sub_1DAECDCEC();
  (*(*(v106 - 8) + 56))(v85 + v105, 1, 1, v106);
  v107 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_currentActionURL;
  v108 = sub_1DAECDBFC();
  (*(*(v108 - 8) + 56))(v85 + v107, 1, 1, v108);
  v109 = (v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  *v109 = 0;
  v109[1] = 0;
  v110 = (v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
  *v110 = 0;
  v110[1] = 0;
  v111 = v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_session;
  *v111 = 0u;
  *(v111 + 16) = 0u;
  *(v111 + 32) = 0;
  v112 = v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__environmentProvider;
  *(v112 + 32) = 0;
  *v112 = 0u;
  *(v112 + 16) = 0u;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__cancellable) = MEMORY[0x1E69E7CD0];
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__hasLoadedViewOnce) = 0;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = 0;
  v113 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__isSubscribed) = 0;
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = 0;
  v184((v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logger), v223, v224);
  v114 = (v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier);
  v115 = v181;
  *v114 = v211;
  v114[1] = v115;
  sub_1DAD648F8(v237, v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__baseEnvironmentProvider);
  sub_1DAD648F8(v227, v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activitySessionFactory);
  sub_1DADF410C(v229, v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityDescriptorProvider);
  sub_1DAD648F8(v236, v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider);
  sub_1DAD648F8(v235, v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__dataProtectionMonitor);
  (*(v215 + 16))(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_activityDescriptor, v213, v216);
  (*(v212 + 16))(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_metricsDefinition, v222, v69);
  v180((v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewTag), v221, v214);
  *(v85 + v113) = 0;
  v116 = v196;
  sub_1DAD6495C(v220, v196, &qword_1ECC08698, &qword_1DAED84E0);
  v117 = *(v70 + 48);
  v118 = v117(v116, 1, v72);
  v179 = v69;
  if (v118 == 1)
  {
    v119 = v197;
    sub_1DAED178C();
    if (v117(v116, 1, v72) != 1)
    {
      sub_1DAD64398(v116, &qword_1ECC08698, &qword_1DAED84E0);
    }
  }

  else
  {
    v119 = v197;
    (*(v70 + 32))(v197, v116, v72);
  }

  (*(v70 + 32))(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__activityFamily, v119, v72);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A0, &qword_1DAED6CF8);
  v121 = *(v120 + 48);
  v122 = *(v120 + 52);
  swift_allocObject();
  v123 = sub_1DAECEE7C();
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewEntryDidChangePublisher) = v123;
  v225 = v123;
  v211 = v123;
  sub_1DAD64B94(&qword_1EE005C40, &qword_1ECC086A0, &qword_1DAED6CF8);

  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_viewEntryDidChangePublisher) = sub_1DAECEF6C();
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC086A8, &unk_1DAED6D00);
  v125 = *(v124 + 48);
  v126 = *(v124 + 52);
  swift_allocObject();
  v127 = sub_1DAECEE7C();
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__colorSchemeDidChangePublisher) = v127;
  v225 = v127;
  v198 = v127;
  sub_1DAD64B94(&qword_1EE005C30, &qword_1ECC086A8, &unk_1DAED6D00);

  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_colorSchemeDidChangePublisher) = sub_1DAECEF6C();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  swift_allocObject();
  v131 = sub_1DAECEE7C();
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__overrideDateDidChangePublisher) = v131;
  v225 = v131;
  v197 = v131;
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);

  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_overrideDateDidChangePublisher) = sub_1DAECEF6C();
  v132 = type metadata accessor for DefaultWidgetViewSecurityPolicy();
  v133 = swift_allocObject();
  v134 = (v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicy);
  v134[3] = v132;
  v134[4] = &protocol witness table for DefaultWidgetViewSecurityPolicy;
  *v134 = v133;
  type metadata accessor for ActivityViewModelSecurityDataSource();
  v135 = swift_allocObject();
  *(v135 + 16) = v85;
  v136 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__viewSecurityPolicyDataSource) = v135;

  v225 = sub_1DAED12DC();
  v190 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v137 = sub_1DAED20EC();
  v226 = v137;
  v195 = sub_1DAED20AC();
  v138 = *(v195 - 8);
  v194 = *(v138 + 56);
  v196 = v138 + 56;
  v139 = v217;
  v194(v217, 1, 1, v195);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A180, &unk_1DAED6D10);
  v189 = MEMORY[0x1E695BED8];
  sub_1DAD64B94(&unk_1EE005CC0, &unk_1ECC0A180, &unk_1DAED6D10);
  v191 = sub_1DAD8D6A4(&qword_1EE00AA40, &qword_1EE00AA30, 0x1E69E9610);
  v140 = v199;
  sub_1DAECEFBC();
  sub_1DAD64398(v139, &unk_1ECC07D20, &unk_1DAED57D0);

  swift_allocObject();
  swift_weakInit();
  v192 = MEMORY[0x1E695BE98];
  sub_1DAD64B94(&qword_1EE005D30, &qword_1ECC08690, &qword_1DAED6CD8);

  v141 = v201;
  v142 = sub_1DAECF00C();

  (v200[1])(v140, v141);
  v143 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__descriptorObserver) = v142;

  v144 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 32);
  __swift_project_boxed_opaque_existential_1((v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider), *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel__keybagStateProvider + 24));
  v201 = sub_1DAECE2AC();
  v225 = v201;
  v145 = v202;
  sub_1DAED22DC();
  v200 = [objc_opt_self() mainRunLoop];
  v226 = v200;
  v146 = sub_1DAED22CC();
  v147 = v204;
  (*(*(v146 - 8) + 56))(v204, 1, 1, v146);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DD0, &unk_1DAED5860);
  sub_1DAD674D4(0, &qword_1EE00A850, 0x1E695DFD0);
  sub_1DAD64B94(&qword_1EE00AC10, &unk_1ECC07DD0, &unk_1DAED5860);
  sub_1DAD8D6A4(&qword_1EE00A858, &qword_1EE00A850, 0x1E695DFD0);
  v148 = v206;
  sub_1DAECEFCC();
  sub_1DAD64398(v147, &qword_1ECC07D08, &qword_1DAEDCB80);
  (*(v203 + 8))(v145, v205);

  v149 = sub_1DAED20EC();
  v225 = v149;
  v150 = v217;
  v194(v217, 1, 1, v195);
  sub_1DAD64B94(&qword_1EE00AC40, &qword_1ECC07D10, &qword_1DAED57C0);
  v151 = v208;
  v152 = v209;
  sub_1DAECEFBC();
  sub_1DAD64398(v150, &unk_1ECC07D20, &unk_1DAED57D0);
  (*(v207 + 8))(v148, v151);

  swift_allocObject();
  swift_weakInit();

  sub_1DAD64B94(&qword_1EE00AC18, &qword_1ECC07D18, &qword_1DAED57C8);
  v153 = v185;
  sub_1DAECF00C();

  (*(v210 + 8))(v152, v153);
  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  sub_1DAE6608C();
  v154 = v193;

  sub_1DAD64398(v220, &qword_1ECC08698, &qword_1DAED84E0);
  (*(v218 + 8))(v221, v214);
  __swift_destroy_boxed_opaque_existential_1Tm(v235);
  __swift_destroy_boxed_opaque_existential_1Tm(v236);
  __swift_destroy_boxed_opaque_existential_1Tm(v237);
  (*(v219 + 8))(v223, v224);
  (*(v212 + 8))(v222, v179);
  (*(v215 + 8))(v213, v216);
  __swift_destroy_boxed_opaque_existential_1Tm(v227);
  __swift_destroy_boxed_opaque_existential_1Tm(v229);
  __swift_destroy_boxed_opaque_existential_1Tm(v228);
  __swift_destroy_boxed_opaque_existential_1Tm(v233);
  __swift_destroy_boxed_opaque_existential_1Tm(v238);
  v155 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_canAppearInSecureEnvironment) = 1;
  sub_1DAE631A8(v155);
  v156 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_supportsLowLuminance) = 1;
  sub_1DAE64238(v156);
  v157 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment);
  *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_prefersUnredactedContentInLowLuminanceEnvironment) = 1;
  sub_1DAE64024(v157);
  v158 = swift_allocObject();
  v159 = v183;
  swift_unknownObjectWeakInit();
  v160 = swift_allocObject();
  *(v160 + 16) = v158;
  *(v160 + 24) = v85;
  v161 = (v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  v162 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler);
  v163 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_launchRequestHandler + 8);
  *v161 = sub_1DAE7C690;
  v161[1] = v160;

  sub_1DAE5DF28(v162);

  v164 = [v186 _FBSScene];
  v165 = [v164 settings];

  v166 = [v165 displayConfiguration];
  if (v166)
  {
    if ([v166 isCarDisplay])
    {
      v167 = 1;
    }

    else
    {
      v167 = [v166 isCarInstrumentsDisplay];
    }

    v168 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay);
    *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isCarPlayDisplay) = v167;
    sub_1DAE631C0(v168);
    v169 = [v166 identity];
    v170 = [v169 isContinuityDisplay];

    v171 = *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay);
    *(v85 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isContinuityDisplay) = v170;
    sub_1DAE63360(v171);
  }

  v172 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();

  MEMORY[0x1E127DAD0](v173);
  if (*((*(v159 + v172) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v159 + v172) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v174 = *((*(v159 + v172) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1DAED1E9C();
  }

  sub_1DAED1EBC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v240);
  __swift_destroy_boxed_opaque_existential_1Tm(v241);
  __swift_destroy_boxed_opaque_existential_1Tm(v242);
  return v85;
}

uint64_t sub_1DAE78E9C()
{
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v1 = *(qword_1EE011BD8 + 184);
  v7[3] = type metadata accessor for ActivitySceneDelegateBase();
  v7[4] = sub_1DAE7B8AC(&qword_1EE006910, type metadata accessor for ActivitySceneDelegateBase);
  v7[0] = v0;
  swift_getObjectType();
  v2 = v1;
  v3 = v0;
  sub_1DAED29FC();
  MEMORY[0x1E127DA50](46, 0xE100000000000000);
  v4 = *&v3[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
  v5 = *&v3[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

  MEMORY[0x1E127DA50](v4, v5);

  sub_1DAECE2EC();

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

void sub_1DAE79208(uint64_t a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] == 1)
  {
    v8 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v1[v8], v3);
    v9 = v1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v37 = a1;
      v13 = v12;
      v14 = swift_slowAlloc();
      v40 = v14;
      *v13 = 136446210;
      v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v16 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

      v17 = sub_1DAD6482C(v15, v16, &v40);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DAD61000, v10, v11, "[%{public}s] scene did disconnect", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E127F100](v14, -1, -1);
      v18 = v13;
      a1 = v37;
      MEMORY[0x1E127F100](v18, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
    v19 = MEMORY[0x1E69E7D40];
    if (v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground] != 1)
    {
      (*((*MEMORY[0x1E69E7D40] & *v9) + 0x1F0))(a1);
    }

    (*((*v19 & *v9) + 0x230))(0x656E6E6F63736964, 0xEA00000000007463);
    v20 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
    swift_beginAccess();
    v21 = *&v9[v20];
    if (v21 >> 62)
    {
LABEL_26:
      v22 = sub_1DAED247C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v22)
    {
      v23 = 0;
      do
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E127E1F0](v23, v21);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_17:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_26;
          }

          v24 = *(v21 + 8 * v23 + 32);

          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_17;
          }
        }

        sub_1DAE67BAC();

        ++v23;
      }

      while (v25 != v22);
    }

    v26 = *&v9[v20];
    *&v9[v20] = MEMORY[0x1E69E7CC0];

    v27 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window;
    v28 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window];
    if (v28)
    {
      [v28 setRootViewController_];
      v29 = *&v9[v27];
    }

    else
    {
      v29 = 0;
    }

    *&v9[v27] = 0;

    if (qword_1EE00B438 != -1)
    {
      swift_once();
    }

    v30 = *(qword_1EE011BD8 + 184);
    swift_getObjectType();
    v31 = v30;
    v38 = sub_1DAED29FC();
    v39 = v32;
    MEMORY[0x1E127DA50](46, 0xE100000000000000);
    v33 = &v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v34 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v35 = *(v33 + 1);

    MEMORY[0x1E127DA50](v34, v35);

    sub_1DAECE2DC();
  }
}

void sub_1DAE79708(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = v3;
    sub_1DAE7C698(&v6, a2);
  }
}

uint64_t sub_1DAE79778(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DAECEDEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] = 1;
  v10 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v6 + 16))(v9, &v2[v10], v5);
  v11 = v2;

  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED203C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v22 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136446466;
    v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v18 = *&v11[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

    v19 = sub_1DAD6482C(v17, v18, &v23);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1DAD6482C(v22, a2, &v23);
    _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Creating UI - reason: %{public}s.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v16, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_1DAE799C8(uint64_t a1, unint64_t a2)
{
  v5 = sub_1DAECEDEC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v6 + 16))(v9, &v2[v10], v5);
  v11 = v2;

  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED203C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 136446466;
    v22 = v5;
    v23 = v16;
    v17 = *&v11[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
    v18 = *&v11[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];

    v19 = sub_1DAD6482C(v17, v18, &v23);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v15 + 14) = sub_1DAD6482C(v21, a2, &v23);
    _os_log_impl(&dword_1DAD61000, v12, v13, "[%{public}s] Invalidating UI - reason: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v16, -1, -1);
    MEMORY[0x1E127F100](v15, -1, -1);

    (*(v6 + 8))(v9, v22);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  v11[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] = 0;
  result = *&v11[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window];
  if (result)
  {
    return [result setRootViewController_];
  }

  return result;
}

id sub_1DAE79C48()
{
  v0 = sub_1DAECDBFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAECE7BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DAECE7DC();
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x1E6989B88] || v10 == *MEMORY[0x1E6989B78])
  {
    (*(v6 + 96))(v9, v5);
    (*(v1 + 32))(v4, v9, v0);
    v11 = objc_allocWithZone(MEMORY[0x1E6989C50]);
    v12 = sub_1DAECDB8C();
    v13 = [v11 initWithURL_];

    (*(v1 + 8))(v4, v0);
  }

  else if (v10 == *MEMORY[0x1E6989B90])
  {
    (*(v6 + 96))(v9, v5);
    v15 = *v9;
    v13 = [objc_allocWithZone(MEMORY[0x1E6989C50]) initWithNSUserActivity_];
  }

  else
  {
    if (v10 != *MEMORY[0x1E6989B80])
    {
      (*(v6 + 8))(v9, v5);
    }

    return 0;
  }

  return v13;
}

id sub_1DAE79ED8()
{
  *&v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window] = 0;
  v1 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  if (qword_1EE005E28 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  v3 = __swift_project_value_buffer(v2, qword_1EE011718);
  v4 = *(*(v2 - 8) + 16);
  v4(&v0[v1], v3, v2);
  v5 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  if (qword_1EE005DF0 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_1EE0116B8);
  v4(&v0[v5], v6, v2);
  v7 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  if (qword_1EE005E08 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_1EE0116E8);
  v4(&v0[v7], v8, v2);
  v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground] = 0;
  v9 = &v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
  *v9 = 1701736302;
  v9[1] = 0xE400000000000000;
  v10 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_metricsDefinition;
  v11 = sub_1DAED1ABC();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
  v13 = sub_1DAECDE4C();
  (*(*(v13 - 8) + 56))(&v0[v12], 1, 1, v13);
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] = 0;
  *&v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for ActivitySceneDelegateBase();
  return objc_msgSendSuper2(&v15, sel_init);
}

id sub_1DAE7A194()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivitySceneDelegateBase();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivitySceneDelegateBase()
{
  result = qword_1EE0068F8;
  if (!qword_1EE0068F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DAE7A35C()
{
  v0 = sub_1DAECEDEC();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1DAE7A4D8(319, &qword_1EE0056C8, MEMORY[0x1E6985AA8]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1DAE7A4D8(319, &unk_1EE00A6D0, MEMORY[0x1E6959B98]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1DAE7A4D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DAED233C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAE7A52C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_window);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 recursiveDescription];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1DAED1CEC();
      v7 = v6;

      v11 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
      v12 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

      MEMORY[0x1E127DA50](10, 0xE100000000000000);
      MEMORY[0x1E127DA50](v5, v7);
    }

    else
    {
      sub_1DAED256C();
      v9 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
      v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

      v11 = v9;
      MEMORY[0x1E127DA50](0xD000000000000017, 0x80000001DAEE5020);
    }
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
    v13 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

    MEMORY[0x1E127DA50](0x6E6977206F4E203ALL, 0xEB00000000776F64);
  }

  return v11;
}

uint64_t sub_1DAE7A694()
{
  v1 = *v0;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A138, &qword_1DAEDD5C0);
  return sub_1DAED1D4C();
}

void sub_1DAE7A700(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A140, &qword_1DAEDD5C8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v171 = &v156 - v6;
  v7 = sub_1DAECEDEC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v179 = &v156 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v175 = &v156 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v173 = &v156 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v172 = &v156 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v170 = &v156 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v156 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v156 - v27;
  v29 = sub_1DAECDE4C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 8);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v168 = &v156 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v169 = &v156 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v156 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v178 = &v156 - v39;
  sub_1DAECE9FC();
  v40 = swift_dynamicCastClass();
  if (!v40)
  {
    v77 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v8 + 16))(v12, &v2[v77], v7);
    v78 = v8;
    v79 = a1;
    v80 = sub_1DAECEDCC();
    v81 = sub_1DAED201C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v180[0] = v83;
      *v82 = 136446210;
      swift_getObjectType();
      v84 = sub_1DAED29FC();
      v86 = sub_1DAD6482C(v84, v85, v180);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_1DAD61000, v80, v81, "Scene is not a session scene - received: %{public}s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1E127F100](v83, -1, -1);
      MEMORY[0x1E127F100](v82, -1, -1);
    }

    (*(v78 + 8))(v12, v7);
    return;
  }

  v177 = v8;
  v41 = v40;
  swift_getKeyPath();
  v176 = a1;
  v174 = v41;
  sub_1DAECE9BC();

  v42 = v182;
  if (!v182)
  {
    (*(v30 + 7))(v28, 1, 1, v29);
LABEL_14:
    sub_1DAD64398(v28, &qword_1ECC0A148, &qword_1DAEDD5D0);
    v87 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    v88 = v177;
    v89 = &v2[v87];
    v90 = v179;
    v91 = v7;
    (*(v177 + 16))(v179, v89, v7);
    v92 = v176;
    v93 = sub_1DAECEDCC();
    v94 = sub_1DAED201C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v180[0] = v96;
      *v95 = 136446210;
      v97 = [v174 description];
      v98 = sub_1DAED1CEC();
      v100 = v99;

      v101 = sub_1DAD6482C(v98, v100, v180);

      *(v95 + 4) = v101;
      _os_log_impl(&dword_1DAD61000, v93, v94, "No activity descriptor provided [%{public}s]", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x1E127F100](v96, -1, -1);
      MEMORY[0x1E127F100](v95, -1, -1);

      v102 = *(v88 + 8);
      v103 = v179;
    }

    else
    {

      v102 = *(v88 + 8);
      v103 = v90;
    }

    v102(v103, v91);
    return;
  }

  v43 = 1;
  v166 = *(v30 + 7);
  v167 = v30 + 56;
  v166(v26, 1, 1, v29);
  sub_1DAE7B8AC(&qword_1EE00A6E0, MEMORY[0x1E6959B98]);
  sub_1DAED27BC();

  v44 = *(v30 + 6);
  if (v44(v26, 1, v29) != 1)
  {
    (*(v30 + 4))(v28, v26, v29);
    v43 = 0;
  }

  v166(v28, v43, 1, v29);
  if (v44(v28, 1, v29) == 1)
  {
    goto LABEL_14;
  }

  v179 = v30;
  (*(v30 + 4))(v178, v28, v29);
  v45 = v176;
  v46 = [v176 _FBSScene];
  v47 = [v46 identifier];

  v48 = sub_1DAED1CEC();
  v50 = v49;

  v51 = &v2[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
  v52 = *&v2[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8];
  *v51 = v48;
  v51[1] = v50;

  sub_1DAE78E9C();
  swift_getKeyPath();
  sub_1DAECE9BC();

  v53 = v182;
  if (v182)
  {
    v54 = sub_1DAECE7FC();
    v55 = sub_1DAECE8DC();

    v56 = v177;
    if (v55)
    {
      v162 = v53;
      v57 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
      swift_beginAccess();
      v58 = *(v56 + 16);
      v161 = v57;
      v59 = v172;
      v164 = v7;
      v160 = v58;
      v58(v172, &v2[v57], v7);
      v60 = v179;
      v61 = *(v179 + 2);
      v175 = v179 + 16;
      v165 = v61;
      v61(v38, v178, v29);
      v62 = v2;
      v63 = sub_1DAECEDCC();
      LODWORD(v57) = sub_1DAED203C();
      v159 = v62;

      v158 = v57;
      if (os_log_type_enabled(v63, v57))
      {
        v64 = swift_slowAlloc();
        v156 = v29;
        v65 = v64;
        v157 = swift_slowAlloc();
        v180[0] = v157;
        *v65 = 136446466;
        v66 = *v51;
        v67 = v51[1];

        v68 = sub_1DAD6482C(v66, v67, v180);

        *(v65 + 4) = v68;
        *(v65 + 12) = 2082;
        v69 = sub_1DAECDE3C();
        v71 = v70;
        v29 = v156;
        v163 = *(v60 + 1);
        v163(v38, v156);
        v72 = sub_1DAD6482C(v69, v71, v180);

        *(v65 + 14) = v72;
        _os_log_impl(&dword_1DAD61000, v63, v158, "[%{public}s] Created with id: %{public}s", v65, 0x16u);
        v73 = v157;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v73, -1, -1);
        v74 = v65;
        v75 = v178;
        MEMORY[0x1E127F100](v74, -1, -1);

        v76 = v172;
        v172 = *(v177 + 8);
        (v172)(v76, v164);
      }

      else
      {

        v163 = *(v60 + 1);
        v163(v38, v29);
        v172 = *(v177 + 8);
        (v172)(v59, v164);
        v75 = v178;
      }

      v122 = &v2[v161];
      v123 = v173;
      v124 = v164;
      v160(v173, v122, v164);
      v125 = v169;
      v165(v169, v75, v29);
      v126 = v159;
      v127 = sub_1DAECEDCC();
      v128 = sub_1DAED200C();

      if (os_log_type_enabled(v127, v128))
      {
        v129 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v180[0] = v130;
        *v129 = 136446466;
        v131 = v125;
        v132 = *v51;
        v133 = v51[1];

        v134 = sub_1DAD6482C(v132, v133, v180);

        *(v129 + 4) = v134;
        *(v129 + 12) = 2082;
        v165(v168, v131, v29);
        v135 = sub_1DAED1D4C();
        v137 = v136;
        v138 = v131;
        v139 = v163;
        v163(v138, v29);
        v140 = sub_1DAD6482C(v135, v137, v180);

        *(v129 + 14) = v140;
        _os_log_impl(&dword_1DAD61000, v127, v128, "[%{public}s] Descriptor: %{public}s", v129, 0x16u);
        swift_arrayDestroy();
        v141 = v130;
        v75 = v178;
        MEMORY[0x1E127F100](v141, -1, -1);
        MEMORY[0x1E127F100](v129, -1, -1);

        v142 = v173;
        v143 = v164;
      }

      else
      {
        v144 = v124;

        v139 = v163;
        v163(v125, v29);
        v142 = v123;
        v143 = v144;
      }

      (v172)(v142, v143);
      v145 = v176;
      swift_unknownObjectWeakAssign();
      v146 = v170;
      v165(v170, v75, v29);
      v166(v146, 0, 1, v29);
      v147 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
      swift_beginAccess();
      sub_1DAD94438(v146, &v126[v147], &qword_1ECC0A148, &qword_1DAEDD5D0);
      swift_endAccess();
      v148 = v162;
      v149 = v171;
      sub_1DAEBB27C(v148, v171);
      v150 = sub_1DAED1ABC();
      (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
      v151 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_metricsDefinition;
      swift_beginAccess();
      sub_1DAD94438(v149, &v126[v151], &qword_1ECC0A140, &qword_1DAEDD5C8);
      swift_endAccess();
      v152 = [v145 _backlightSceneEnvironment];
      if (v152)
      {
        v153 = v152;
        [v152 setSupportsAlwaysOn_];
        sub_1DAD674D4(0, &unk_1EE00AA00, 0x1E698E528);
        if ([v153 isKindOfClass_])
        {
          objc_opt_self();
          v154 = swift_dynamicCastObjCClass();
          if (v154)
          {
            [v154 setOptsOutOfProcessAssertions_];
          }

          swift_unknownObjectRelease();
          v139(v75, v29);
        }

        else
        {
          v139(v75, v29);

          swift_unknownObjectRelease();
        }
      }

      else
      {
        v139(v75, v29);
      }

      v126[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] = 1;
      return;
    }
  }

  else
  {
    v56 = v177;
  }

  v104 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v105 = v175;
  (*(v56 + 16))(v175, &v2[v104], v7);
  v106 = v45;
  v107 = v2;
  v108 = v56;
  v109 = v107;
  v110 = sub_1DAECEDCC();
  v111 = sub_1DAED201C();

  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v180[0] = v113;
    *v112 = 136446466;
    v114 = *v51;
    v115 = v51[1];

    v116 = sub_1DAD6482C(v114, v115, v180);

    *(v112 + 4) = v116;
    *(v112 + 12) = 2082;
    swift_getKeyPath();
    sub_1DAECE9BC();

    v117 = v181;
    if (v181)
    {
      v118 = [v181 description];

      v119 = sub_1DAED1CEC();
      v121 = v120;
    }

    else
    {
      v121 = 0xE300000000000000;
      v119 = 7104878;
    }

    v155 = sub_1DAD6482C(v119, v121, v180);

    *(v112 + 14) = v155;
    _os_log_impl(&dword_1DAD61000, v110, v111, "[%{public}s] No metrics provided or they were invalid: %{public}s.", v112, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E127F100](v113, -1, -1);
    MEMORY[0x1E127F100](v112, -1, -1);

    (*(v177 + 8))(v175, v7);
  }

  else
  {

    (*(v108 + 8))(v105, v7);
  }

  (*(v179 + 1))(v178, v29);
}

uint64_t sub_1DAE7B8AC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1DAE7B8F4(const char *a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] == 1)
  {
    v8 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v1[v8], v3);
    v9 = v1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      v14 = &v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v15 = *&v9[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier];
      v16 = *(v14 + 1);

      v17 = sub_1DAD6482C(v15, v16, &v18);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1DAD61000, v10, v11, a1, v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1E127F100](v13, -1, -1);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    (*(v4 + 8))(v7, v3);
  }
}

void sub_1DAE7BB00()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] != 1)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v2 + 16))(v5, &v0[v6], v1);
  v7 = v0;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v55 = v11;
    *v10 = 136446210;
    v12 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
    v13 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

    v14 = sub_1DAD6482C(v12, v13, &v55);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Foregrounded", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  v15 = (*(v2 + 8))(v5, v1);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground;
  *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground) = 1;
  v17 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x208))(v15);
  v18 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();
  v19 = *(v7 + v18);
  if (v19 >> 62)
  {
LABEL_40:
    v20 = sub_1DAED247C();
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
LABEL_43:
    v36 = sub_1DAED247C();
    goto LABEL_22;
  }

  v50 = v18;
  v21 = v19 & 0xC000000000000001;

  v22 = 0;
  *&v23 = 136446466;
  v51 = v23;
  v52 = v19 & 0xC000000000000001;
  v53 = v7;
  do
  {
    if (v21)
    {
      v24 = MEMORY[0x1E127E1F0](v22, v19);
    }

    else
    {
      v24 = *(v19 + 8 * v22 + 32);
    }

    v25 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
    v26 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
    *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = *(v7 + v16);
    BSDispatchQueueAssertMain();
    if (v26 != *(v24 + v25))
    {

      v27 = sub_1DAECEDCC();
      v28 = sub_1DAED203C();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = v19;
        v31 = v20;
        v32 = v16;
        v33 = swift_slowAlloc();
        v54 = v33;
        *v29 = v51;
        *(v29 + 4) = sub_1DAD6482C(*(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v24 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v54);
        *(v29 + 12) = 1026;
        *(v29 + 14) = *(v24 + v25);

        _os_log_impl(&dword_1DAD61000, v27, v28, "[%{public}s] isForeground changed (%{BOOL,public}d)", v29, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        v34 = v33;
        v16 = v32;
        v20 = v31;
        v19 = v30;
        v21 = v52;
        MEMORY[0x1E127F100](v34, -1, -1);
        v35 = v29;
        v7 = v53;
        MEMORY[0x1E127F100](v35, -1, -1);
      }

      else
      {
      }

      if (*(v24 + v25) == 1)
      {
        sub_1DAE69B6C(1);
      }
    }

    ++v22;
  }

  while (v20 != v22);

  v18 = v50;
  v17 = MEMORY[0x1E69E7D40];
LABEL_19:
  if (*(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__hasUI))
  {
    return;
  }

  (*((*v17 & *v7) + 0x228))(0x756F726765726F66, 0xEA0000000000646ELL);
  v18 = *(v7 + v18);
  if (v18 >> 62)
  {
    goto LABEL_43;
  }

  v36 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:

  if (v36)
  {
    v38 = 0;
    v16 = v18 & 0xC000000000000001;
    v7 = (v18 & 0xFFFFFFFFFFFFFF8);
    *&v37 = 136446466;
    v51 = v37;
    v52 = v18 & 0xC000000000000001;
    v53 = v18;
    do
    {
      if (v16)
      {
        v39 = MEMORY[0x1E127E1F0](v38, v18);
        v17 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
LABEL_36:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v38 >= v7[2])
        {
          __break(1u);
          goto LABEL_40;
        }

        v39 = *(v18 + 8 * v38 + 32);

        v17 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          goto LABEL_36;
        }
      }

      v19 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
      v40 = *(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
      *(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = 1;
      BSDispatchQueueAssertMain();
      if (v40 != *(v39 + v19))
      {

        v41 = sub_1DAECEDCC();
        v42 = sub_1DAED203C();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = v36;
          v44 = swift_slowAlloc();
          v45 = v7;
          v46 = swift_slowAlloc();
          v54 = v46;
          *v44 = v51;
          *(v44 + 4) = sub_1DAD6482C(*(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v39 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v54);
          *(v44 + 12) = 1026;
          *(v44 + 14) = *(v39 + v19);

          _os_log_impl(&dword_1DAD61000, v41, v42, "[%{public}s] isForeground changed (%{BOOL,public}d)", v44, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          v47 = v46;
          v7 = v45;
          MEMORY[0x1E127F100](v47, -1, -1);
          v48 = v44;
          v36 = v43;
          v16 = v52;
          v18 = v53;
          MEMORY[0x1E127F100](v48, -1, -1);
        }

        else
        {
        }

        if (*(v39 + v19) == 1)
        {
          sub_1DAE69B6C(1);
        }
      }

      ++v38;
    }

    while (v17 != v36);
  }
}

void sub_1DAE7C210()
{
  v1 = sub_1DAECEDEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated] != 1)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  (*(v2 + 16))(v5, &v0[v6], v1);
  v7 = v0;
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED203C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v40 = v11;
    *v10 = 136446210;
    v12 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
    v13 = *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);

    v14 = sub_1DAD6482C(v12, v13, &v40);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v8, v9, "[%{public}s] Backgrounded", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1E127F100](v11, -1, -1);
    MEMORY[0x1E127F100](v10, -1, -1);
  }

  v15 = (*(v2 + 8))(v5, v1);
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground;
  *(v7 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_isForeground) = 0;
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0x208))(v15);
  v17 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();
  v18 = *(v7 + v17);
  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      return;
    }

    goto LABEL_6;
  }

  if (v18 < 0)
  {
    v35 = *(v7 + v17);
  }

  v19 = sub_1DAED247C();
  if (v19)
  {
LABEL_6:
    if (v19 < 1)
    {
      __break(1u);
    }

    else
    {
      v20 = v18 & 0xC000000000000001;

      v21 = 0;
      *&v22 = 136446466;
      v36 = v22;
      v37 = v19;
      v38 = v18;
      do
      {
        if (v20)
        {
          v23 = MEMORY[0x1E127E1F0](v21, v18);
        }

        else
        {
          v23 = *(v18 + 8 * v21 + 32);
        }

        v24 = OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground;
        v25 = *(v23 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground);
        *(v23 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_isForeground) = *(v7 + v16);
        BSDispatchQueueAssertMain();
        if (v25 != *(v23 + v24))
        {

          v26 = sub_1DAECEDCC();
          v27 = sub_1DAED203C();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = v7;
            v29 = swift_slowAlloc();
            v30 = v20;
            v31 = v16;
            v32 = swift_slowAlloc();
            v39 = v32;
            *v29 = v36;
            *(v29 + 4) = sub_1DAD6482C(*(v23 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier), *(v23 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_logIdentifier + 8), &v39);
            *(v29 + 12) = 1026;
            *(v29 + 14) = *(v23 + v24);

            _os_log_impl(&dword_1DAD61000, v26, v27, "[%{public}s] isForeground changed (%{BOOL,public}d)", v29, 0x12u);
            __swift_destroy_boxed_opaque_existential_1Tm(v32);
            v33 = v32;
            v16 = v31;
            v20 = v30;
            MEMORY[0x1E127F100](v33, -1, -1);
            v34 = v29;
            v7 = v28;
            v19 = v37;
            v18 = v38;
            MEMORY[0x1E127F100](v34, -1, -1);
          }

          else
          {
          }

          if (*(v23 + v24) == 1)
          {
            sub_1DAE69B6C(1);
          }
        }

        ++v21;
      }

      while (v19 != v21);
    }
  }
}

void sub_1DAE7C690(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_1DAE79708(a1, a2);
}

uint64_t sub_1DAE7C698(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A190, qword_1DAEDD640);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - v8;
  v10 = sub_1DAECE7EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__viewModels;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (v17 >> 62)
  {
    if (v17 < 0)
    {
      v30 = *(v3 + v16);
    }

    result = sub_1DAED247C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v17 & 0xC000000000000001) != 0)
  {

    v19 = MEMORY[0x1E127E1F0](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  type metadata accessor for ActivityLaunchRequestBuilder();
  v32 = v15;
  sub_1DAE22248(v19, &v32, a2, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    return sub_1DAD64398(v9, &unk_1ECC0A190, qword_1DAEDD640);
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v20 = sub_1DAE79C48();
    if (v20)
    {
      v21 = v20;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v23 = Strong;
        v24 = v21;
        v25 = [v23 _FBSScene];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DAED64D0;
        *(inited + 32) = v24;
        v27 = v24;
        sub_1DAE89C08(inited);
        swift_setDeallocating();
        v28 = *(inited + 16);
        swift_arrayDestroy();
        sub_1DAD674D4(0, &unk_1EE00A880, 0x1E698E5F0);
        sub_1DAD8D6A4(&qword_1EE00A870, &unk_1EE00A880, 0x1E698E5F0);
        v29 = sub_1DAED1F5C();

        [v25 sendActions_];
      }

      else
      {
      }

      return (*(v11 + 8))(v14, v10);
    }

    else
    {
      (*(v11 + 8))(v14, v10);
    }
  }
}

uint64_t sub_1DAE7CAF8(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = a3;
  v26 = sub_1DAED182C();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v7 = sub_1DAED17AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
  v27 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
  v28 = v12;

  MEMORY[0x1E127DA50](45, 0xE100000000000000);
  v13 = sub_1DAED17FC();
  MEMORY[0x1E127DA50](v13);

  v14 = v27;
  v15 = v28;
  sub_1DAED178C();
  v16 = sub_1DAE770FC(v14, v15, a1, v25, v11);

  (*(v8 + 8))(v11, v7);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v26;
  (*(v5 + 16))(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v26);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v5 + 32))(v20 + v19, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
  v22 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated);
  v23 = *(v16 + OBJC_IVAR____TtC14WidgetRenderer17ActivityViewModel_handlePayloadUpdated + 8);
  *v21 = sub_1DAE7DB70;
  v21[1] = v20;

  sub_1DAD660D8(v22);

  return v16;
}

void sub_1DAE7CE4C()
{
  sub_1DAE7C210();
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v1)
  {
    v2 = v1;
    sub_1DAE55278();
  }
}

uint64_t sub_1DAE7CFB4(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECEDEC();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECDE7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v39 - v15;
  v17 = sub_1DAECDEBC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAE79778(a1, a2);
  v22 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_descriptor;
  swift_beginAccess();
  sub_1DAE7DB00(v3 + v22, v16);
  v23 = sub_1DAECDE4C();
  v24 = *(v23 - 8);
  result = (*(v24 + 48))(v16, 1, v23);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DAECDDFC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1DAE6D948(v12);
      return (*(v24 + 8))(v16, v23);
    }

    else
    {
      (*(v18 + 32))(v21, v12, v17);
      (*(v24 + 8))(v16, v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v27 = Strong;
        if (qword_1EE00B438 != -1)
        {
          swift_once();
        }

        sub_1DAD648F8(qword_1EE011BD8 + 144, v45);
        v28 = sub_1DAECDE9C();
        v39 = v29;
        v40 = v28;
        v30 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
        swift_beginAccess();
        v31 = v43;
        (*(v41 + 16))(v43, v3 + v30, v42);
        v32 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
        v33 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
        sub_1DAD648F8(v45, v44);
        v34 = objc_allocWithZone(type metadata accessor for SystemApertureElementViewController());
        v35 = v27;

        v36 = sub_1DAE5B2D8(v40, v39, v31, v32, v33, v35, v44);

        v37 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
        *(v3 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider) = v36;
        v38 = v36;

        [v35 setSystemApertureElementViewControllerProvider_];
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
      }

      return (*(v18 + 8))(v21, v17);
    }
  }

  return result;
}

void sub_1DAE7D414(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DAE799C8(a1, a2);
  v4 = OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider;
  v5 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer26JindoActivitySceneDelegate__systemApertureElementProvider);
  if (v5)
  {
    v6 = v5;
    sub_1DAE55F54();

    v5 = *(v3 + v4);
  }

  *(v3 + v4) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong setSystemApertureElementViewControllerProvider_];
  }
}

void sub_1DAE7D4C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a1;
  v6 = sub_1DAED182C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1DAECEDEC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
    v47 = v6;
    v18 = Strong;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v18[v17], v11);

    v19 = v47;
    (*(v7 + 16))(v10, a4, v47);

    v20 = sub_1DAECEDCC();
    v21 = sub_1DAED203C();

    if (os_log_type_enabled(v20, v21))
    {
      v43 = v21;
      v44 = v20;
      v45 = v11;
      v46 = a2;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v49[0] = v23;
      *v22 = 136446722;
      swift_beginAccess();
      v24 = swift_unknownObjectWeakLoadStrong();
      if (v24)
      {
        v25 = v24;
        v27 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier);
        v26 = *(v24 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logIdentifier + 8);
      }

      else
      {
        v27 = 0;
        v26 = 0;
      }

      v49[1] = v27;
      v49[2] = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09A18, &unk_1DAEDB490);
      v28 = sub_1DAED1D4C();
      v30 = sub_1DAD6482C(v28, v29, v49);

      *(v22 + 4) = v30;
      *(v22 + 12) = 2082;
      v31 = v46;
      *(v22 + 14) = sub_1DAD6482C(v48, v46, v49);
      *(v22 + 22) = 2082;
      v32 = sub_1DAED17FC();
      v34 = v33;
      (*(v7 + 8))(v10, v47);
      v35 = sub_1DAD6482C(v32, v34, v49);

      *(v22 + 24) = v35;
      v36 = v44;
      _os_log_impl(&dword_1DAD61000, v44, v43, "[%{public}s] Handling payload update %{public}s for view %{public}s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v23, -1, -1);
      v37 = v22;
      a2 = v31;
      MEMORY[0x1E127F100](v37, -1, -1);

      (*(v12 + 8))(v15, v45);
    }

    else
    {

      (*(v7 + 8))(v10, v19);
      (*(v12 + 8))(v15, v11);
    }
  }

  swift_beginAccess();
  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = v38;
    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = v40;
      MEMORY[0x1EEE9AC00](v40);
      *&v42[-16] = v48;
      *&v42[-8] = a2;
      sub_1DAECE9CC();
    }
  }
}

uint64_t sub_1DAE7D960()
{
  swift_getObjectType();
  sub_1DAED1CBC();
  return sub_1DAECE92C();
}

id sub_1DAE7DA20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JindoActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for JindoActivitySceneDelegate()
{
  result = qword_1EE0067B0;
  if (!qword_1EE0067B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE7DB00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A148, &qword_1DAEDD5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAE7DB70(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_1DAED182C() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1DAE7D4C8(a1, a2, v6, v7);
}

uint64_t sub_1DAE7DBF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1DAE7D960();
}

void sub_1DAE7DBFC(void *a1)
{
  v3 = sub_1DAECEDEC();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E18 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_1EE011700);
  v9 = v4[2];
  v9(v7, v8, v3);
  v10 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_logger;
  swift_beginAccess();
  v11 = v4[5];
  v11(v1 + v10, v7, v3);
  swift_endAccess();
  if (qword_1EE005DE0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v3, qword_1EE0116A0);
  v9(v7, v12, v3);
  v13 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_clientLogger;
  swift_beginAccess();
  v11(v1 + v13, v7, v3);
  swift_endAccess();
  if (qword_1EE005DF8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_1EE0116D0);
  v9(v7, v14, v3);
  v15 = OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase_viewLogger;
  swift_beginAccess();
  v11(v1 + v15, v7, v3);
  swift_endAccess();
  sub_1DAE7A700(a1);
  if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer25ActivitySceneDelegateBase__validated) == 1)
  {
    sub_1DAE7CFB4(0x6E6E6F436C6C6977, 0xEB00000000746365);
  }
}

void sub_1DAE7DECC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1DAED247C();
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  v5 = sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
  v20[1] = MEMORY[0x1E127DBF0](v3, v4, v5);
  if (v2)
  {
    v6 = sub_1DAED266C();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v1 = v6 | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v1 + 32);
    v7 = v1 + 64;
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

    v9 = v12 & *(v1 + 64);
  }

  v13 = 0;
  v14 = (v8 + 64) >> 6;
  while ((v1 & 0x8000000000000000) != 0)
  {
    if (!sub_1DAED270C() || (swift_unknownObjectRelease(), swift_dynamicCast(), (v19 = v20[0]) == 0))
    {
LABEL_21:
      sub_1DAD70B20();
      return;
    }

LABEL_11:
    sub_1DAD8C3E4(v20, v19, &unk_1EE00BE00, 0x1E69943B8, &qword_1ECC0A2D0, &qword_1DAEDD830);
  }

  v15 = v13;
  v16 = v9;
  v17 = v13;
  if (v9)
  {
LABEL_17:
    v18 = *(*(v1 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v18)
    {
      goto LABEL_21;
    }

    v19 = v18;
    v9 = (v16 - 1) & v16;
    v13 = v17;
    goto LABEL_11;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      goto LABEL_21;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_1DAE7E0FC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1DAED26FC();

    if (v3)
    {
      type metadata accessor for ActivityRendererSessionSubscriptionRequest();
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1DAECB350(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
    }
  }

  return 0;
}

uint64_t sub_1DAE7E1B0()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_extensionsDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
    sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0);
    v3 = v0;
    v2 = sub_1DAECEF6C();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1DAE7E28C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  if ((v1 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
    }

    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_1DAED266C() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(v1 + 32);
    v4 = ~v7;
    v3 = v1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(v1 + 64);
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  }

  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = (v4 + 64) >> 6;
  v12 = MEMORY[0x1E69E7CC0];
  v60 = v6;
  while (2)
  {
    v58 = v12;
    v13 = v10;
    v14 = v5;
    if ((v6 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        if (!sub_1DAED270C())
        {
          goto LABEL_68;
        }

        swift_unknownObjectRelease();
        sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
        swift_dynamicCast();
        v17 = v61;
        v10 = v13;
        v5 = v14;
        if (!v61)
        {
          goto LABEL_68;
        }

LABEL_19:
        v18 = [v17 liveActivityDescriptors];
        if (v18)
        {
          break;
        }

        v13 = v10;
        v14 = v5;
        v6 = v60;
        if ((v60 & 0x8000000000000000) == 0)
        {
          goto LABEL_11;
        }
      }

      v52 = v4;
      v19 = v18;
      sub_1DAD674D4(0, &qword_1EE005530, 0x1E6994358);
      sub_1DAE8A564(&unk_1EE005520, &qword_1EE005530, 0x1E6994358);
      v20 = sub_1DAED1F6C();

      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1DAED247C();
        if (v21)
        {
LABEL_24:
          if (v21 < 1)
          {
            v22 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
            v22 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v22);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 25;
            }

            v22[2] = v21;
            v22[3] = (2 * (v24 >> 3)) | 1;
          }

          v26 = v22;
          v27 = sub_1DAEBA7F4(&v61, v22 + 4, v21, v20);
          sub_1DAD70B20();
          if (v27 != v21)
          {
            goto LABEL_72;
          }

          v12 = v58;
          v25 = v26;
LABEL_33:
          v28 = v25 < 0 || (v25 & 0x4000000000000000) != 0;
          if (v28)
          {
            v29 = sub_1DAED247C();
          }

          else
          {
            v29 = *(v25 + 16);
          }

          v30 = v12 >> 62;
          v51 = v1;
          if (v12 >> 62)
          {
            v47 = v29;
            v31 = sub_1DAED247C();
            v29 = v47;
          }

          else
          {
            v31 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v54 = v29;
          v32 = v31 + v29;
          if (__OFADD__(v31, v29))
          {
            goto LABEL_70;
          }

          if (swift_isUniquelyReferenced_nonNull_bridgeObject())
          {
            if (!v30)
            {
              v33 = v12 & 0xFFFFFFFFFFFFFF8;
              if (v32 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_50:
                v35 = *(v33 + 16);
                v36 = *(v33 + 24);
                v56 = v28;
                v53 = v33;
                if (v28)
                {
                  v37 = sub_1DAED247C();
                }

                else
                {
                  v37 = *(v25 + 16);
                }

                if (!v37)
                {

                  v1 = v51;
                  v4 = v52;
                  v6 = v60;
                  if (v54 <= 0)
                  {
                    continue;
                  }

                  goto LABEL_71;
                }

                v59 = v12;
                if (((v36 >> 1) - v35) < v54)
                {
                  goto LABEL_73;
                }

                v38 = v53 + 8 * v35 + 32;
                if (v56)
                {
                  v50 = v5;
                  if (v37 < 1)
                  {
                    goto LABEL_75;
                  }

                  v55 = v37;
                  sub_1DAD64B94(&unk_1ECC0A328, &qword_1ECC0A320, qword_1DAEDD878);
                  for (i = 0; i != v55; ++i)
                  {
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A320, qword_1DAEDD878);
                    v40 = sub_1DAD8DE4C(&v61, i, v25);
                    v42 = *v41;
                    (v40)(&v61, 0);
                    *(v38 + 8 * i) = v42;
                  }

                  v43 = v54;
                }

                else
                {
                  v43 = v54;
                  swift_arrayInitWithCopy();
                }

                v1 = v51;
                v4 = v52;
                v12 = v59;
                v6 = v60;
                if (v43 > 0)
                {
                  v44 = *(v53 + 16);
                  v45 = __OFADD__(v44, v43);
                  v46 = v44 + v43;
                  if (v45)
                  {
                    goto LABEL_74;
                  }

                  *(v53 + 16) = v46;
                }

                continue;
              }

              goto LABEL_47;
            }
          }

          else if (!v30)
          {
            v33 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_47:
            v34 = *(v33 + 16);
LABEL_49:
            v12 = sub_1DAED258C();
            v33 = v12 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_50;
          }

          sub_1DAED247C();
          goto LABEL_49;
        }
      }

      else
      {
        v21 = *(v20 + 16);
        if (v21)
        {
          goto LABEL_24;
        }
      }

      v25 = MEMORY[0x1E69E7CC0];
      v12 = v58;
      goto LABEL_33;
    }

    break;
  }

LABEL_11:
  v15 = v13;
  v16 = v14;
  v10 = v13;
  if (v14)
  {
LABEL_15:
    v5 = (v16 - 1) & v16;
    v17 = *(*(v6 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v16)))));
    if (v17)
    {
      goto LABEL_19;
    }

LABEL_68:
    sub_1DAD70B20();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A2A0, &qword_1DAEDD818);
    v48 = sub_1DAED0FFC();
    v49 = *(v57 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection);
    *(v57 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection) = v48;
  }

  else
  {
    while (1)
    {
      v10 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_68;
      }

      v16 = *(v3 + 8 * v10);
      ++v15;
      if (v16)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
  }
}

uint64_t sub_1DAE7E874()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_systemEnvironmentDidChangePublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
    sub_1DAD64B94(&unk_1EE00ABE0, &unk_1ECC0A3E0, &qword_1DAEDA740);
    v3 = v0;
    v2 = sub_1DAECEF6C();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1DAE7E950()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_activityReloadedPublisher);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3D0, &qword_1DAEDD8B0);
    sub_1DAD64B94(&qword_1EE005C38, &unk_1ECC0A3D0, &qword_1DAEDD8B0);
    v3 = v0;
    v2 = sub_1DAECEF6C();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

char *sub_1DAE7EA2C()
{
  v1 = v0;
  v44 = sub_1DAED20DC();
  v2 = *(v44 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED208C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = sub_1DAED0A3C();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue;
  v9 = sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  v41[3] = "v16@?0@NSError8";
  v41[4] = v9;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v41[2] = sub_1DAD7CB5C(&qword_1EE00AA50, MEMORY[0x1E69E8030]);
  v41[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAD64B94(&unk_1EE00AA90, &unk_1ECC0A3F0, &qword_1DAED6480);
  sub_1DAED23CC();
  v10 = *MEMORY[0x1E69E8098];
  v11 = v2 + 104;
  v12 = *(v2 + 104);
  v41[0] = v11;
  v12(v43, v10, v44);
  *&v0[v42] = sub_1DAED210C();
  v42 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue;
  sub_1DAED0A0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAED23CC();
  v12(v43, v10, v44);
  *&v0[v42] = sub_1DAED210C();
  *&v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection] = 0;
  v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_hasReceivedInitializationPayload] = 0;
  v13 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v14 + 16) = v15;
  *&v1[v13] = v14;
  v16 = MEMORY[0x1E69E7CC8];
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions] = MEMORY[0x1E69E7CC8];
  v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_hasReceivedInitialEnvironment] = 0;
  v17 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_extensionsDidChangePublisher;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *&v1[v17] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___extensionsDidChangePublisher] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity] = v16;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_activityDescriptorCollection] = 0;
  v21 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_currentRemoteSubscriptionTypeDidChangePublisher;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A400, &qword_1DAEDD8B8);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *&v1[v21] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___currentRemoteSubscriptionTypeDidChangePublisher] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_currentRemoteSubscriptionType] = 0;
  v25 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_systemEnvironmentDidChangePublisher;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3E0, &qword_1DAEDA740);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *&v1[v25] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___systemEnvironmentDidChangePublisher] = 0;
  sub_1DAECF8DC();
  v29 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_activityReloadedPublisher;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3D0, &qword_1DAEDD8B0);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *&v1[v29] = sub_1DAECEE7C();
  *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient____lazy_storage___activityReloadedPublisher] = 0;
  v33 = type metadata accessor for ActivityRendererClient();
  v46.receiver = v1;
  v46.super_class = v33;
  v34 = objc_msgSendSuper2(&v46, sel_init);
  v35 = *&v34[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  aBlock[4] = sub_1DAE8ABA4;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_157;
  v37 = _Block_copy(aBlock);
  v38 = v34;
  v39 = v35;

  WRRegisterForChronodStartup(v39, v37);
  _Block_release(v37);

  return v38;
}

uint64_t sub_1DAE7EFF8(char *a1)
{
  v1 = a1;
  v2 = *&a1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E78 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = sub_1DAECEDEC();
    __swift_project_value_buffer(v3, qword_1EE0117A8);
    v4 = sub_1DAECEDCC();
    v5 = sub_1DAED200C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DAD61000, v4, v5, "Detected chronod relaunch.", v6, 2u);
      MEMORY[0x1E127F100](v6, -1, -1);
    }

    v35 = MEMORY[0x1E69E7CC8];
    v7 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
    os_unfair_lock_lock(*(v7 + 16));
    sub_1DAE7F400(v1, &v35);
    os_unfair_lock_unlock(*(v7 + 16));
    sub_1DAE824B0();
    v8 = v1;
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED200C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134349056;
      v12 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
      swift_beginAccess();
      v13 = *&v8[v12];
      if ((v13 & 0xC000000000000001) != 0)
      {
        if (v13 < 0)
        {
          v14 = *&v8[v12];
        }

        v15 = *&v8[v12];

        v16 = sub_1DAED247C();
      }

      else
      {
        v16 = *(v13 + 16);
      }

      *(v11 + 4) = v16;

      _os_log_impl(&dword_1DAD61000, v9, v10, "Resubscribing to %{public}ld active sessions.", v11, 0xCu);
      MEMORY[0x1E127F100](v11, -1, -1);
    }

    else
    {
    }

    v17 = v8;
    if ((v35 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v19 = 0;
      v1 = 0;
      v20 = sub_1DAED266C() | 0x8000000000000000;
    }

    else
    {
      v21 = -1 << *(v35 + 32);
      v19 = ~v21;
      v18 = v35 + 64;
      v22 = -v21;
      v23 = v22 < 64 ? ~(-1 << v22) : -1;
      v1 = (v23 & *(v35 + 64));
      v20 = v35;
    }

    v24 = 0;
    v25 = (v19 + 64) >> 6;
    if ((v20 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_19:
    v26 = v24;
    v27 = v1;
    v28 = v24;
    if (v1)
    {
LABEL_23:
      v29 = (v27 - 1) & v27;
      v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
      v31 = *(*(v20 + 48) + v30);
      v32 = *(*(v20 + 56) + v30);

      if (v31)
      {
        goto LABEL_27;
      }

      goto LABEL_29;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_29;
      }

      v27 = *(v18 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  while (sub_1DAED270C())
  {
    type metadata accessor for ActivityRendererSessionKey();
    swift_dynamicCast();
    type metadata accessor for ActivityRendererSessionSubscriptionRequest();
    swift_dynamicCast();
    v32 = v34;
    v28 = v24;
    v29 = v1;
    if (!v34)
    {
      break;
    }

LABEL_27:

    sub_1DAE814F4(v32, v17);

    v24 = v28;
    v1 = v29;
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }
  }

LABEL_29:
  sub_1DAD70B20();
}

void sub_1DAE7F400(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(a1 + v4);
    }

    v7 = *(a1 + v4);

    v8 = sub_1DAED247C();

    if (v8)
    {
      goto LABEL_5;
    }
  }

  else if (*(v5 + 16))
  {
LABEL_5:
    v9 = *a2;
    *a2 = *(a1 + v4);

    return;
  }

  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE0117A8);
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DAD61000, v11, v12, "No active sessions - not reconnecting.", v13, 2u);
    MEMORY[0x1E127F100](v13, -1, -1);
  }
}

uint64_t sub_1DAE7F5B8(uint64_t a1, char *a2, uint64_t a3)
{
  v25[0] = a3;
  v5 = sub_1DAED09DC();
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0A3C();
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v25 - v17;
  v25[1] = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  (*(v14 + 16))(v25 - v17, a1, v13, v16);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20 = swift_allocObject();
  v21 = v25[0];
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v14 + 32))(v20 + v19, v18, v13);
  aBlock[4] = sub_1DAE87C14;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_16;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v12, v8, v22);
  _Block_release(v22);
  (*(v28 + 8))(v8, v5);
  (*(v26 + 8))(v12, v27);
}

uint64_t sub_1DAE7F970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v14 - v9;
  (*(v6 + 16))(&v14 - v9, a3, v5, v8);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v5);
  sub_1DAE818FC(a2, sub_1DAE87C84, v12);
}

uint64_t sub_1DAE7FAC0(_BYTE *a1, id a2)
{
  if (*a1 == 2)
  {
    if (a2)
    {
      v2 = a2;
    }

    else
    {
      sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
      sub_1DADD7B94(0xD00000000000001ALL, 0x80000001DAEE5400, 1, 0, 0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
    return sub_1DAED1EDC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A280, &unk_1DAEDD7F8);
    return sub_1DAED1EEC();
  }
}

uint64_t sub_1DAE7FBA4(uint64_t a1)
{
  v3 = sub_1DAED09DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DAED0A3C();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1DAE8AB9C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_151;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v11, v7, v13);
  _Block_release(v13);
  (*(v4 + 8))(v7, v3);
  (*(v8 + 8))(v11, v17);
}

void sub_1DAE7FE80(char *a1, uint64_t a2)
{
  v6 = 0;
  v4 = *&a1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v4 + 16));
  sub_1DAE7FF60(a1, a2, &v6);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v6)
  {
    v5 = a1;
    sub_1DAE8A084();
  }
}

uint64_t sub_1DAE7FF60(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_1DAE7E0FC(a2, v7);

  if (v8)
  {

    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v10 = sub_1DAECEDEC();
    __swift_project_value_buffer(v10, qword_1EE0117A8);

    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v20 = a3;
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v13 = 136446210;
      v14 = sub_1DAE93F40();
      v16 = sub_1DAD6482C(v14, v15, &v19);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_1DAD61000, v11, v12, "Unsubscribing from session: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1E127F100](v18, -1, -1);
      v17 = v13;
      a3 = v20;
      MEMORY[0x1E127F100](v17, -1, -1);
    }

    swift_beginAccess();
    sub_1DAEB9228(a2);
    swift_endAccess();

    *a3 = 1;
  }

  return result;
}

uint64_t sub_1DAE80164(uint64_t a1)
{
  v3 = sub_1DAED09DC();
  v24 = *(v3 - 8);
  v4 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v21[1] = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  (*(v12 + 16))(v21 - v14, a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  (*(v12 + 32))(v17 + v16, v15, v11);
  aBlock[4] = sub_1DAE8AB2C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_145;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v10, v6, v18);
  _Block_release(v18);
  (*(v24 + 8))(v6, v3);
  (*(v22 + 8))(v10, v23);
}

void sub_1DAE80508(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3C0, &qword_1DAED79B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  if (*(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_hasReceivedInitializationPayload) == 1)
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    __swift_project_value_buffer(v12, qword_1EE0117A8);
    (*(v5 + 16))(v11, a2, v4);
    v13 = sub_1DAECEDCC();
    v14 = sub_1DAED203C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = a2;
      v35 = v16;
      v17 = v16;
      *v15 = 136446210;
      sub_1DAD64B94(&qword_1EE00A698, &unk_1ECC0A3C0, &qword_1DAED79B8);
      v18 = sub_1DAED287C();
      v20 = v19;
      (*(v5 + 8))(v11, v4);
      v21 = sub_1DAD6482C(v18, v20, &v35);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1DAD61000, v13, v14, "Reload activity descriptors for container: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1E127F100](v17, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v31 = sub_1DAE82244();
    if (v31)
    {
      v32 = v31;
      sub_1DAECE26C();
      v33 = sub_1DAED1CBC();

      [v32 reloadDescriptors_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117A8);
    (*(v5 + 16))(v9, a2, v4);
    v23 = sub_1DAECEDCC();
    v24 = sub_1DAED203C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = v26;
      *v25 = 136446210;
      sub_1DAD64B94(&qword_1EE00A698, &unk_1ECC0A3C0, &qword_1DAED79B8);
      v27 = sub_1DAED287C();
      v29 = v28;
      (*(v5 + 8))(v9, v4);
      v30 = sub_1DAD6482C(v27, v29, &v35);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1DAD61000, v23, v24, "Ignoring activity descriptor reload for %{public}s because we haven't yet initialized.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1E127F100](v26, -1, -1);
      MEMORY[0x1E127F100](v25, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }
}

uint64_t sub_1DAE809AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DAE809D0, 0, 0);
}

uint64_t sub_1DAE809D0()
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117A8);
  v3 = v1;
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Handle action: %{public}@", v7, 0xCu);
    sub_1DAD64398(v8, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v8, -1, -1);
    MEMORY[0x1E127F100](v7, -1, -1);
  }

  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v16 = *(v0 + 16);

  v12 = swift_task_alloc();
  *(v0 + 48) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v16;
  *(v12 + 40) = v11;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 56) = v14;
  *v14 = v0;
  v14[1] = sub_1DAE80BF4;

  return MEMORY[0x1EEE6DE38]();
}

uint64_t sub_1DAE80BF4()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_1DAE80D28;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1DAE80D10;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAE80D28()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

uint64_t sub_1DAE80D8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a5;
  v35 = a1;
  v36 = a3;
  v34 = a2;
  v42 = sub_1DAED09DC();
  v44 = *(v42 - 8);
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1DAED0A3C();
  v41 = *(v43 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  v33 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - v14;
  v16 = sub_1DAECE3DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  (*(v17 + 16))(v20, a4, v16, v19);
  (*(v12 + 16))(v15, v35, v11);
  v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v22 = (v18 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v12 + 80) + v22 + 8) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = v36;
  (*(v17 + 32))(v24 + v21, v20, v16);
  v25 = v39;
  *(v24 + v22) = v39;
  (*(v12 + 32))(v24 + v23, v15, v33);
  aBlock[4] = sub_1DAE8A900;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_133;
  v26 = _Block_copy(aBlock);
  v27 = v34;

  v28 = v25;
  v29 = v37;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v30 = v40;
  v31 = v42;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v29, v30, v26);
  _Block_release(v26);
  (*(v44 + 8))(v30, v31);
  (*(v41 + 8))(v29, v43);
}

void sub_1DAE81254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  v12 = sub_1DAE82244();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1DAECDC0C();
    v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    (*(v8 + 16))(v11, a6, v7);
    v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v17 = swift_allocObject();
    (*(v8 + 32))(v17 + v16, v11, v7);
    aBlock[4] = sub_1DAE8AAB0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAEB2FEC;
    aBlock[3] = &block_descriptor_139;
    v18 = _Block_copy(aBlock);

    [v13 handleInteraction:v14 authenticationPolicy:v15 action:v20 handler:v18];
    swift_unknownObjectRelease();
    _Block_release(v18);
  }
}

uint64_t sub_1DAE81480(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
    return sub_1DAED1EDC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A3B0, &unk_1DAEDD8A0);
    return sub_1DAED1EEC();
  }
}

void sub_1DAE814F4(uint64_t a1, char *a2)
{
  v4 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  v5 = *(a1 + 16);
  v6 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v6 + 16));
  v7 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v8 = *&a2[v7];
  if ((v8 & 0xC000000000000001) == 0)
  {
    v11 = *&a2[v7];

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *&a2[v7];
    sub_1DADDB08C(a1, v5, isUniquelyReferenced_nonNull_native);
    *&a2[v7] = v31;
    swift_endAccess();
    os_unfair_lock_unlock(*(v6 + 16));
    v30[0] = a1;
    type metadata accessor for ActivityRendererSessionSubscriptionRequest();
    sub_1DAD7CB5C(&qword_1EE008CC0, type metadata accessor for ActivityRendererSessionSubscriptionRequest);
    v6 = sub_1DAED1C4C();
    a1 = v13;
    if (qword_1EE005E78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v8 < 0)
  {
    v9 = *&a2[v7];
  }

  else
  {
    v9 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  v10 = sub_1DAED247C();
  if (!__OFADD__(v10, 1))
  {
    *&a2[v7] = sub_1DAEB94CC(v9, v10 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v14 = sub_1DAECEDEC();
  __swift_project_value_buffer(v14, qword_1EE0117A8);

  v15 = sub_1DAECEDCC();
  v16 = sub_1DAED203C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30[0] = v18;
    *v17 = 136446210;
    v19 = sub_1DAE93F40();
    v21 = sub_1DAD6482C(v19, v20, v30);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1DAD61000, v15, v16, "Subscribing to session: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1E127F100](v18, -1, -1);
    MEMORY[0x1E127F100](v17, -1, -1);
  }

  v22 = sub_1DAE82244();
  if (v22)
  {
    v23 = v22;
    v24 = v6;
    v25 = a1;
    v26 = sub_1DAECDC0C();
    v27 = swift_allocObject();
    v27[2] = a2;
    v27[3] = v5;
    v27[4] = nullsub_1;
    v27[5] = 0;
    v30[4] = sub_1DAE8AC24;
    v30[5] = v27;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 1107296256;
    v30[2] = sub_1DADAF8A8;
    v30[3] = &block_descriptor_164;
    v28 = _Block_copy(v30);

    v29 = a2;

    [v23 subscribe:v26 completion:v28];
    sub_1DAD70BB4(v24, v25);
    swift_unknownObjectRelease();
    _Block_release(v28);
  }

  else
  {
    sub_1DAD70BB4(v6, a1);
  }
}

void sub_1DAE818FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  v9 = *(a1 + 16);
  v10 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  swift_beginAccess();
  v12 = *&v3[v11];
  if ((v12 & 0xC000000000000001) == 0)
  {
    v15 = *&v3[v11];

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *&v4[v11];
    sub_1DADDB08C(a1, v9, isUniquelyReferenced_nonNull_native);
    *&v4[v11] = v35;
    swift_endAccess();
    os_unfair_lock_unlock(*(v10 + 16));
    aBlock[0] = a1;
    type metadata accessor for ActivityRendererSessionSubscriptionRequest();
    sub_1DAD7CB5C(&qword_1EE008CC0, type metadata accessor for ActivityRendererSessionSubscriptionRequest);
    v32 = sub_1DAED1C4C();
    v33 = v17;
    if (qword_1EE005E78 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v12 < 0)
  {
    v13 = *&v3[v11];
  }

  else
  {
    v13 = v12 & 0xFFFFFFFFFFFFFF8;
  }

  v14 = sub_1DAED247C();
  if (!__OFADD__(v14, 1))
  {
    *&v4[v11] = sub_1DAEB94CC(v13, v14 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v18 = sub_1DAECEDEC();
  __swift_project_value_buffer(v18, qword_1EE0117A8);

  v19 = sub_1DAECEDCC();
  v20 = sub_1DAED203C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v23 = sub_1DAE93F40();
    v25 = sub_1DAD6482C(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1DAD61000, v19, v20, "Subscribing to session: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1E127F100](v22, -1, -1);
    MEMORY[0x1E127F100](v21, -1, -1);
  }

  v26 = sub_1DAE82244();
  if (v26)
  {
    v27 = v26;
    v28 = sub_1DAECDC0C();
    v29 = swift_allocObject();
    v29[2] = v4;
    v29[3] = v9;
    v29[4] = a2;
    v29[5] = a3;
    aBlock[4] = sub_1DAE8A894;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DADAF8A8;
    aBlock[3] = &block_descriptor_125;
    v30 = _Block_copy(aBlock);

    v31 = v4;

    [v27 subscribe:v28 completion:v30];
    sub_1DAD70BB4(v32, v33);
    swift_unknownObjectRelease();
    _Block_release(v30);
  }

  else
  {
    sub_1DAD70BB4(v32, v33);
  }
}

void sub_1DAE81D14(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t **, void *))
{
  v10 = *(a4 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      if (qword_1EE005E78 != -1)
      {
        swift_once();
      }

      v11 = sub_1DAECEDEC();
      __swift_project_value_buffer(v11, qword_1EE0117A8);

      v12 = sub_1DAECEDCC();
      v13 = sub_1DAED201C();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v46 = v15;
        *v14 = 136446210;
        v16 = sub_1DAE93F40();
        v18 = sub_1DAD6482C(v16, v17, &v46);

        *(v14 + 4) = v18;
        _os_log_impl(&dword_1DAD61000, v12, v13, "Error subscribing to session %{public}s: unknown response", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1E127F100](v15, -1, -1);
        MEMORY[0x1E127F100](v14, -1, -1);
      }

      LOBYTE(v46) = 2;
      a6(&v46, 0);
      return;
    }

    goto LABEL_9;
  }

  if (a3)
  {
LABEL_9:
    v19 = a3;
    v20 = a3;
    v21 = a3;
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117A8);

    v23 = a3;
    v24 = sub_1DAECEDCC();
    v25 = sub_1DAED201C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v26 = 136446466;
      v29 = sub_1DAE93F40();
      v31 = sub_1DAD6482C(v29, v30, &v46);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      v32 = v19;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1DAD61000, v24, v25, "Error subscribing to session %{public}s: %{public}@", v26, 0x16u);
      sub_1DAD64398(v27, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1E127F100](v28, -1, -1);
      MEMORY[0x1E127F100](v26, -1, -1);
    }

    LOBYTE(v46) = 2;
    v34 = v19;
    a6(&v46, v19);

    return;
  }

  sub_1DADAFE40(a1, a2);
  sub_1DAE8A8A0();
  sub_1DAED1F4C();
  v35 = v46;
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v36 = sub_1DAECEDEC();
  __swift_project_value_buffer(v36, qword_1EE0117A8);

  v37 = sub_1DAECEDCC();
  v38 = sub_1DAED200C();

  if (os_log_type_enabled(v37, v38))
  {
    v45 = v46;
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46 = v40;
    *v39 = 136446210;
    v41 = sub_1DAE93F40();
    v43 = sub_1DAD6482C(v41, v42, &v46);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_1DAD61000, v37, v38, "Successfully subscribed to session: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x1E127F100](v40, -1, -1);
    v44 = v39;
    v35 = v45;
    MEMORY[0x1E127F100](v44, -1, -1);
  }

  LOBYTE(v46) = v35;
  a6(&v46, 0);
  sub_1DADAF698(a1, a2);
}

uint64_t sub_1DAE82244()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  sub_1DAE824B0();
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    v15[0] = v13;
    v15[1] = v14;
    if (*(&v14 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A3A8, &qword_1DAEDD898);
      if (swift_dynamicCast())
      {

        return v12;
      }
    }

    else
    {
      sub_1DAD64398(v15, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE0117A8);
    v9 = sub_1DAECEDCC();
    v10 = sub_1DAED202C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DAD61000, v9, v10, "Failed to cast connection to server interface protocol", v11, 2u);
      MEMORY[0x1E127F100](v11, -1, -1);
    }
  }

  else
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE0117A8);
    v3 = sub_1DAECEDCC();
    v5 = sub_1DAED202C();
    if (os_log_type_enabled(v3, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1DAD61000, v3, v5, "Failed to establish a connection", v6, 2u);
      MEMORY[0x1E127F100](v6, -1, -1);
    }
  }

  return 0;
}

void sub_1DAE824B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  sub_1DAE8263C();
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection);
  if (v2)
  {
    v3 = v2;
    if ([v3 remoteTarget])
    {
      sub_1DAED238C();
      swift_unknownObjectRelease();

      sub_1DAD64398(v8, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      sub_1DAD64398(v8, &qword_1ECC0A3A0, &qword_1DAEDFE30);
      if (qword_1EE005E78 != -1)
      {
        swift_once();
      }

      v4 = sub_1DAECEDEC();
      __swift_project_value_buffer(v4, qword_1EE0117A8);
      v5 = sub_1DAECEDCC();
      v6 = sub_1DAED203C();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1DAD61000, v5, v6, "Activating connection", v7, 2u);
        MEMORY[0x1E127F100](v7, -1, -1);
      }

      [v3 activate];
    }
  }
}

void sub_1DAE8263C()
{
  v1 = *&v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  v2 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection;
  if (*&v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_connection])
  {
    return;
  }

  v3 = "com.apple.chrono.widgetRenderer";
  v4 = sub_1DAED1CBC();
  v5 = sub_1DAED1CBC();
  v17 = [objc_opt_self() endpointForMachName:v4 service:v5 instance:0];

  if (!v17)
  {
    goto LABEL_7;
  }

  v6 = [objc_opt_self() connectionWithEndpoint_];
  if (v6)
  {
    v7 = *&v0[v2];
    *&v0[v2] = v6;
    v8 = v6;

    v9 = swift_allocObject();
    *(v9 + 16) = v0;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1DAE8A87C;
    *(v3 + 24) = v9;
    aBlock[4] = sub_1DAE8A884;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD93F0C;
    aBlock[3] = &block_descriptor_107;
    v10 = _Block_copy(aBlock);
    v11 = v0;

    [v8 configureConnection_];

    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v13 = sub_1DAECEDEC();
    __swift_project_value_buffer(v13, qword_1EE0117A8);
    v17 = sub_1DAECEDCC();
    v14 = sub_1DAED202C();
    if (os_log_type_enabled(v17, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_1DAD6482C(0xD000000000000018, v3 | 0x8000000000000000, aBlock);
      _os_log_impl(&dword_1DAD61000, v17, v14, "Unable to get endpoint for mach-service: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1E127F100](v16, -1, -1);
      MEMORY[0x1E127F100](v15, -1, -1);

      return;
    }
  }
}

void sub_1DAE829AC(void *a1, char *a2)
{
  v4 = sub_1DAED1CBC();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  if (qword_1EE00B9F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE00B9F8;
  v7 = objc_opt_self();
  v8 = [v7 protocolForProtocol_];
  [v5 setClient_];

  if (qword_1EE00B9D8 != -1)
  {
    swift_once();
  }

  v9 = [v7 protocolForProtocol_];
  [v5 setServer_];

  if (qword_1EE00B9C0 != -1)
  {
    swift_once();
  }

  [a1 setServiceQuality_];
  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v19 = sub_1DAE82D40;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_110;
  v10 = _Block_copy(&v15);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v19 = sub_1DAE8A88C;
  v20 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_116;
  v12 = _Block_copy(&v15);
  v13 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v12);
  v19 = sub_1DAE83040;
  v20 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 1107296256;
  v17 = sub_1DAD69AE8;
  v18 = &block_descriptor_119;
  v14 = _Block_copy(&v15);
  [a1 setInvalidationHandler_];
  _Block_release(v14);
}

void sub_1DAE82D4C(uint64_t a1, char *a2)
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117A8);
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Connection Interrupted", v6, 2u);
    MEMORY[0x1E127F100](v6, -1, -1);
  }

  v7 = *&a2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v7 + 16));
  sub_1DAE82E7C(a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1DAE82E7C(char *a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_subscriptions;
  result = swift_beginAccess();
  v4 = *&a1[v2];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (!*(v4 + 16))
    {
      return result;
    }

    goto LABEL_7;
  }

  if (v4 < 0)
  {
    v5 = *&a1[v2];
  }

  v6 = *&a1[v2];

  v7 = sub_1DAED247C();

  if (v7)
  {
LABEL_7:
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v8 = sub_1DAECEDEC();
    __swift_project_value_buffer(v8, qword_1EE0117A8);
    v9 = a1;
    v10 = sub_1DAECEDCC();
    v11 = sub_1DAED203C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134349056;
      v13 = *&a1[v2];
      if ((v13 & 0xC000000000000001) != 0)
      {

        v14 = sub_1DAED247C();
      }

      else
      {
        v14 = *(v13 + 16);
      }

      *(v12 + 4) = v14;

      _os_log_impl(&dword_1DAD61000, v10, v11, "Reconnecting because we had %{public}ld subscriptions active.", v12, 0xCu);
      MEMORY[0x1E127F100](v12, -1, -1);
    }

    else
    {

      v10 = v9;
    }

    return sub_1DAE824B0();
  }

  return result;
}

void sub_1DAE8304C(uint64_t a1, const char *a2)
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117A8);
  oslog = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }
}

id sub_1DAE8313C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityRendererClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityRendererClient()
{
  result = qword_1EE008C50;
  if (!qword_1EE008C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAE83324()
{
  result = sub_1DAECF8EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1DAE8341C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1DAE83444, 0, 0);
}

uint64_t sub_1DAE83444()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x1E69E8920] + 4);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1DAE83540;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v4, 0, 0, 0x6269726373627573, 0xED0000293A5F2865, sub_1DAE87C0C, v1, &type metadata for ActivityRendererSessionSubscriptionResponse);
}

uint64_t sub_1DAE83540()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DAE8367C, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1DAE8367C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_1DAE836E0(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  v6 = sub_1DAECF8EC();
  (*(*(v6 - 8) + 16))(a1, v3 + v5, v6);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t sub_1DAE837AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v56 = a1;
  v57 = a2;
  v4 = sub_1DAED09DC();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v52 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DAED0A3C();
  v51 = *(v53 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v50 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v48[0] = v48 - v11;
  v12 = sub_1DAECF8EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v48[1] = v15;
  v49 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v48 - v17;
  v19 = type metadata accessor for ActivityRendererInitializationPayload();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v24 = sub_1DAECEDEC();
  __swift_project_value_buffer(v24, qword_1EE0117A8);
  v25 = sub_1DAECEDCC();
  v26 = sub_1DAED203C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v55 = v22;
    v28 = v18;
    v29 = v3;
    v30 = v13;
    v31 = v12;
    v32 = v4;
    v33 = v27;
    *v27 = 0;
    _os_log_impl(&dword_1DAD61000, v25, v26, "Received initial connection initialization", v27, 2u);
    v34 = v33;
    v4 = v32;
    v12 = v31;
    v13 = v30;
    v3 = v29;
    v18 = v28;
    v22 = v55;
    MEMORY[0x1E127F100](v34, -1, -1);
  }

  sub_1DAD7CB5C(&qword_1EE008CC8, type metadata accessor for ActivityRendererInitializationPayload);
  sub_1DAED1F4C();
  v35 = v22 + *(v19 + 20);
  v36 = v48[0];
  sub_1DAED154C();
  v37 = *(v13 + 48);
  if (v37(v36, 1, v12) == 1)
  {
    sub_1DAECF8DC();
    if (v37(v36, 1, v12) != 1)
    {
      sub_1DAD64398(v36, &unk_1ECC0A990, &qword_1DAEDE2D0);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v36, v12);
  }

  v38 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
  os_unfair_lock_lock(*(v38 + 16));
  sub_1DAE83FA8(v3, v18, v22);
  v55 = v22;
  os_unfair_lock_unlock(*(v38 + 16));
  v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue_hasReceivedInitializationPayload] = 1;
  v57 = *&v3[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
  v39 = v49;
  (*(v13 + 16))(v49, v18, v12);
  v40 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v3;
  (*(v13 + 32))(v41 + v40, v39, v12);
  aBlock[4] = sub_1DAE8A7B0;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_92;
  v42 = _Block_copy(aBlock);
  v43 = v3;
  v44 = v13;
  v45 = v50;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v58 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v46 = v52;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v45, v46, v42);
  _Block_release(v42);
  (*(v54 + 8))(v46, v4);
  (*(v51 + 8))(v45, v53);
  (*(v44 + 8))(v18, v12);
  sub_1DAE8A814(v55, type metadata accessor for ActivityRendererInitializationPayload);
}

uint64_t sub_1DAE83FA8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v56 = a3;
  v7 = sub_1DAED157C();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1DAECF8EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v48[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v48[-v16];
  v18 = *(v11 + 16);
  v19 = a2;
  (v18)(&v48[-v16], a2, v10, v15);
  v20 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_systemEnvironment;
  swift_beginAccess();
  v21 = *(v11 + 40);
  v55 = a1;
  v21(a1 + v20, v17, v10);
  swift_endAccess();
  if (qword_1EE005E80 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v22 = sub_1DAECEDEC();
    __swift_project_value_buffer(v22, qword_1EE0117C0);
    (v18)(v57, v19, v10);
    v23 = sub_1DAECEDCC();
    v24 = sub_1DAED200C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v50 = v25;
      v51 = swift_slowAlloc();
      v60[0] = v51;
      *v25 = 136446210;
      v19 = v57;
      (v18)(v17, v57, v10);
      v26 = v52;
      sub_1DAED156C();
      sub_1DAD7CB5C(&qword_1ECC0A338, MEMORY[0x1E6985700]);
      v49 = v24;
      v27 = v54;
      v28 = sub_1DAED287C();
      v30 = v29;
      (*(v53 + 8))(v26, v27);
      (*(v11 + 8))(v19, v10);
      v31 = sub_1DAD6482C(v28, v30, v60);

      v32 = v50;
      *(v50 + 1) = v31;
      v33 = v32;
      _os_log_impl(&dword_1DAD61000, v23, v49, "Initial environment received: %{public}s", v32, 0xCu);
      v34 = v51;
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x1E127F100](v34, -1, -1);
      MEMORY[0x1E127F100](v33, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v57, v10);
    }

    v18 = *v56;
    v61 = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
    if ((v18 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
      sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
      sub_1DAED1F9C();
      v18 = v60[0];
      v10 = v60[1];
      v35 = v60[2];
      v36 = v60[3];
      v37 = v60[4];
    }

    else
    {
      v38 = -1 << *(v18 + 32);
      v10 = v18 + 56;
      v35 = ~v38;
      v39 = -v38;
      v40 = v39 < 64 ? ~(-1 << v39) : -1;
      v37 = v40 & *(v18 + 56);

      v36 = 0;
    }

    v57 = v35;
    v17 = ((v35 + 64) >> 6);
    if (v18 < 0)
    {
      break;
    }

LABEL_12:
    v41 = v36;
    v42 = v37;
    v11 = v36;
    if (v37)
    {
LABEL_16:
      v19 = (v42 - 1) & v42;
      v43 = *(*(v18 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v42)))));
      if (v43)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    while (1)
    {
      v11 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v11 >= v17)
      {
        goto LABEL_23;
      }

      v42 = *(v10 + 8 * v11);
      ++v41;
      if (v42)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v44 = sub_1DAED24BC();
    if (!v44)
    {
      break;
    }

    v58 = v44;
    sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    swift_dynamicCast();
    v43 = v59;
    v11 = v36;
    v19 = v37;
    if (!v59)
    {
      break;
    }

LABEL_20:
    v59 = v43;
    sub_1DAE85FE8(&v61, &v59, &qword_1EE005E80, qword_1EE0117C0, "Received initial extension: %{public}s");
    if (v4)
    {

      sub_1DAD70B20();

      __break(1u);
      return result;
    }

    v36 = v11;
    v37 = v19;
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  sub_1DAD70B20();
  v45 = v55;
  v46 = *(v55 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity);
  *(v55 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity) = v61;

  sub_1DAE7E28C();
  result = type metadata accessor for ActivityRendererInitializationPayload();
  *(v45 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_currentRemoteSubscriptionType) = *(v56 + *(result + 24));
  return result;
}

uint64_t sub_1DAE84600(char *a1)
{
  v44 = sub_1DAED09DC();
  v47 = *(v44 - 8);
  v2 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAED0A3C();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1DAED09CC();
  v7 = *(v41 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_1DAED0A6C();
  v48 = *(v40 - 8);
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v37 - v15;
  v16 = sub_1DAED09EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1;
  v37 = a1;
  v22 = *&a1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_systemEnvironmentDidChangePublisher];
  sub_1DAECEE6C();
  v23 = *&v21[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_extensionsDidChangePublisher];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAECEEEC();
  sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610);
  (*(v17 + 104))(v20, *MEMORY[0x1E69E7F88], v16);
  v39 = sub_1DAED211C();
  (*(v17 + 8))(v20, v16);
  sub_1DAED0A4C();
  *v10 = 250;
  v24 = v41;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E7F38], v41);
  v25 = v38;
  sub_1DAED0A5C();
  (*(v7 + 8))(v10, v24);
  v26 = *(v48 + 8);
  v48 += 8;
  v27 = v40;
  v26(v13, v40);
  v28 = swift_allocObject();
  v29 = v37;
  *(v28 + 16) = v37;
  aBlock[4] = sub_1DAE8A874;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_98;
  v30 = _Block_copy(aBlock);
  v31 = v29;
  v32 = v42;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v49 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v34 = v43;
  v33 = v44;
  sub_1DAED23CC();
  v35 = v39;
  MEMORY[0x1E127DD10](v25, v32, v34, v30);
  _Block_release(v30);

  (*(v47 + 8))(v34, v33);
  (*(v45 + 8))(v32, v46);
  v26(v25, v27);
}

void sub_1DAE84BF4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
  os_unfair_lock_lock(*(v2 + 16));
  sub_1DAE84C70(a1);
  v3 = *(v2 + 16);

  os_unfair_lock_unlock(v3);
}

void sub_1DAE84C70(uint64_t a1)
{
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v2 = sub_1DAECEDEC();
  __swift_project_value_buffer(v2, qword_1EE0117A8);
  v3 = sub_1DAECEDCC();
  v4 = sub_1DAED203C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1DAD61000, v3, v4, "Now allowing environment mismatch requests.", v5, 2u);
    MEMORY[0x1E127F100](v5, -1, -1);
  }

  *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_hasReceivedInitialEnvironment) = 1;
}

uint64_t sub_1DAE84D84()
{
  v69 = sub_1DAED09DC();
  v68 = *(v69 - 8);
  v1 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v66 = v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DAED0A3C();
  v65 = *(v67 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v64 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1DAED14BC();
  v75 = *(v71 - 8);
  v5 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v74 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1DAED14CC();
  v72 = *(v76 - 1);
  v7 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v73 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v77 = v60 - v16;
  v81 = sub_1DAECF8EC();
  v78 = *(v81 - 8);
  v17 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = v60 - v19;
  v20 = sub_1DAED157C();
  v80 = *(v20 - 8);
  v21 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v0;
  v24 = *&v0[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  if (qword_1EE005E78 != -1)
  {
    swift_once();
  }

  v25 = sub_1DAECEDEC();
  __swift_project_value_buffer(v25, qword_1EE0117A8);
  v26 = sub_1DAECEDCC();
  v27 = sub_1DAED203C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = v23;
    v29 = v20;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_1DAD61000, v26, v27, "Received system environment did change", v30, 2u);
    v31 = v30;
    v20 = v29;
    v23 = v28;
    MEMORY[0x1E127F100](v31, -1, -1);
  }

  sub_1DAD7CB5C(&qword_1EE00AB20, MEMORY[0x1E6985700]);
  sub_1DAED1F4C();
  v60[1] = v17;
  v62 = v20;
  v32 = v82;
  sub_1DAECF8DC();
  v33 = v70;
  sub_1DAED151C();
  v34 = v78;
  v35 = v72;
  v36 = v81;
  v61 = *(v78 + 8);
  v60[2] = v78 + 8;
  v61(v32, v81);
  v37 = v76;
  (*(v35 + 16))(v9, v33, v76);
  sub_1DAD7CB5C(&qword_1EE005738, MEMORY[0x1E69856E8]);
  v38 = v74;
  sub_1DAED1E3C();
  sub_1DAD7CB5C(&qword_1EE005740, MEMORY[0x1E69856D8]);
  v39 = v73;
  v40 = v71;
  sub_1DAED234C();
  (*(v75 + 8))(v38, v40);
  (*(v35 + 8))(v33, v37);
  v41 = *(v34 + 48);
  v42 = 1;
  v43 = v41(v39, 1, v36);
  v44 = v77;
  if (v43 != 1)
  {
    (*(v34 + 32))(v77, v39, v36);
    v42 = 0;
  }

  (*(v34 + 56))(v44, v42, 1, v36);
  if (v41(v44, 1, v36) == 1)
  {
    (*(v80 + 8))(v23, v62);
    return sub_1DAD64398(v44, &unk_1ECC0A990, &qword_1DAEDE2D0);
  }

  else
  {
    v76 = *(v34 + 32);
    v46 = v79;
    (v76)(v79, v44, v36);
    v47 = v63;
    v48 = *&v63[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
    os_unfair_lock_lock(*(v48 + 16));
    v77 = v23;
    v49 = *(v34 + 16);
    v50 = v82;
    v49(v82, v46, v36);
    v51 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_systemEnvironment;
    swift_beginAccess();
    (*(v34 + 40))(&v47[v51], v50, v36);
    swift_endAccess();
    os_unfair_lock_unlock(*(v48 + 16));
    v52 = *&v47[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
    v49(v50, v46, v36);
    v53 = (*(v34 + 80) + 24) & ~*(v34 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v47;
    (v76)(v54 + v53, v50, v36);
    aBlock[4] = sub_1DAE8A654;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_86_0;
    v55 = _Block_copy(aBlock);
    v56 = v47;
    v57 = v64;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v83 = MEMORY[0x1E69E7CC0];
    sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    v58 = v66;
    v59 = v69;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v57, v58, v55);
    _Block_release(v55);
    (*(v68 + 8))(v58, v59);
    (*(v65 + 8))(v57, v67);
    v61(v79, v36);
    (*(v80 + 8))(v77, v62);
  }
}

uint64_t sub_1DAE85914(void *a1)
{
  v2 = v1;
  v4 = sub_1DAED09DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v50 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v48 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v12 = [a1 extensions];
  v13 = sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
  v54 = v13;
  v14 = sub_1DAED1F6C();

  if (qword_1EE005E78 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v15 = sub_1DAECEDEC();
    __swift_project_value_buffer(v15, qword_1EE0117A8);

    v16 = sub_1DAECEDCC();
    v17 = sub_1DAED203C();
    v18 = v14 & 0xC000000000000001;
    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      *v19 = 134349056;
      v20 = v18 ? sub_1DAED247C() : *(v14 + 16);
      *(v19 + 4) = v20;

      _os_log_impl(&dword_1DAD61000, v16, v17, "Received extensions did change: %{public}ld", v19, 0xCu);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    else
    {
    }

    v47 = v2;
    v46 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock);
    os_unfair_lock_lock(*(v46 + 16));
    aBlock[0] = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
    v52 = v5;
    v53 = v4;
    v51 = v8;
    if (v18)
    {
      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAED1F9C();
      v2 = aBlock[6];
      v5 = aBlock[7];
      v21 = aBlock[8];
      v22 = aBlock[9];
      v4 = aBlock[10];
    }

    else
    {
      v23 = -1 << *(v14 + 32);
      v5 = v14 + 56;
      v21 = ~v23;
      v24 = -v23;
      v25 = v24 < 64 ? ~(-1 << v24) : -1;
      v4 = v25 & *(v14 + 56);

      v22 = 0;
      v2 = v14;
    }

    v45[1] = v21;
    v8 = (v21 + 64) >> 6;
    if (v2 < 0)
    {
      break;
    }

LABEL_15:
    v26 = v22;
    v27 = v4;
    v28 = v22;
    if (v4)
    {
LABEL_19:
      v29 = (v27 - 1) & v27;
      v30 = *(*(v2 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (v30)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v8)
      {
        goto LABEL_25;
      }

      v27 = *(v5 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v31 = sub_1DAED24BC();
    if (!v31)
    {
      break;
    }

    v55 = v31;
    swift_dynamicCast();
    v30 = v56;
    v28 = v22;
    v29 = v4;
    if (!v56)
    {
      break;
    }

LABEL_23:
    v56 = v30;
    sub_1DAE85FE8(aBlock, &v56, &qword_1EE005E78, qword_1EE0117A8, "Received extension: %{public}s");

    v22 = v28;
    v4 = v29;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_1DAD70B20();

  v32 = OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity;
  v33 = v47;
  v34 = *&v47[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity];
  *&v47[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_extensionsByExtensionIdentity] = aBlock[0];

  sub_1DAE7E28C();
  v35 = *&v33[v32];
  v36 = *(v46 + 16);

  os_unfair_lock_unlock(v36);
  v37 = *&v33[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  aBlock[4] = sub_1DAE8A64C;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_80;
  v39 = _Block_copy(aBlock);
  v40 = v33;
  v41 = v48;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v56 = MEMORY[0x1E69E7CC0];
  sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
  v42 = v50;
  v43 = v53;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v41, v42, v39);

  _Block_release(v39);
  (*(v52 + 8))(v42, v43);
  (*(v49 + 8))(v41, v51);
}

void sub_1DAE85FE8(uint64_t *a1, void **a2, void *a3, uint64_t a4, const char *a5)
{
  v8 = *a2;
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_1DAECEDEC();
  __swift_project_value_buffer(v9, a4);
  v10 = v8;
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446210;
    v15 = [v10 description];
    v16 = sub_1DAED1CEC();
    v30 = a1;
    v17 = a5;
    v19 = v18;

    v20 = sub_1DAD6482C(v16, v19, &v31);

    *(v13 + 4) = v20;
    v21 = v17;
    a1 = v30;
    _os_log_impl(&dword_1DAD61000, v11, v12, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x1E127F100](v14, -1, -1);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  v22 = [v10 identity];
  v23 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v27 = *a1;
    v28 = v10;
    goto LABEL_12;
  }

  if (v23 < 0)
  {
    v24 = *a1;
  }

  else
  {
    v24 = v23 & 0xFFFFFFFFFFFFFF8;
  }

  v25 = v10;
  v26 = sub_1DAED247C();
  if (!__OFADD__(v26, 1))
  {
    *a1 = sub_1DAEB9770(v24, v26 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *a1;
    sub_1DADBDEA4(v10, v22, isUniquelyReferenced_nonNull_native);

    *a1 = v31;
    return;
  }

  __break(1u);
}

uint64_t sub_1DAE8620C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue_extensionsDidChangePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0);
  return sub_1DAECEEEC();
}

void sub_1DAE862F8(void *a1)
{
  v3 = sub_1DAED09DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__queue];
  BSDispatchQueueAssert();
  [a1 integerValue];
  v14 = sub_1DAECDECC();
  if (v15)
  {
    if (qword_1EE005E78 != -1)
    {
      swift_once();
    }

    v16 = sub_1DAECEDEC();
    __swift_project_value_buffer(v16, qword_1EE0117A8);
    v17 = a1;
    v30 = sub_1DAECEDCC();
    v18 = sub_1DAED201C();

    if (os_log_type_enabled(v30, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      *(v19 + 4) = v17;
      *v20 = v17;
      v21 = v17;
      _os_log_impl(&dword_1DAD61000, v30, v18, "Provided remote subscription type value was invalid: %{public}@", v19, 0xCu);
      sub_1DAD64398(v20, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v20, -1, -1);
      MEMORY[0x1E127F100](v19, -1, -1);
    }

    v22 = v30;
  }

  else
  {
    v23 = v14;
    v24 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock];
    os_unfair_lock_lock(*(v24 + 16));
    *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__lock_currentRemoteSubscriptionType] = v23;
    os_unfair_lock_unlock(*(v24 + 16));
    v30 = *&v1[OBJC_IVAR____TtC14WidgetRenderer22ActivityRendererClient__calloutQueue];
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    *(v25 + 24) = v23;
    aBlock[4] = sub_1DAE8A60C;
    aBlock[5] = v25;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_74;
    v26 = _Block_copy(aBlock);
    v27 = v1;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DAD7CB5C(&qword_1EE00AB70, MEMORY[0x1E69E7F60]);
    v29 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550);
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v12, v7, v26);
    _Block_release(v26);
    (*(v4 + 8))(v7, v3);
    (*(v9 + 8))(v12, v29);
  }
}