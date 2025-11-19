void type metadata accessor for AIDAServiceType()
{
  if (!qword_2809F8E38)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2809F8E38);
    }
  }
}

uint64_t sub_27556269C()
{
  v1 = *v0;
  v2 = sub_275565B9C();
  v3 = MEMORY[0x277C7BC80](v2);

  return v3;
}

uint64_t sub_2755626D8()
{
  v1 = *v0;
  sub_275565B9C();
  sub_275565BAC();
}

uint64_t sub_27556272C()
{
  v1 = *v0;
  sub_275565B9C();
  sub_275565C9C();
  sub_275565BAC();
  v2 = sub_275565CAC();

  return v2;
}

uint64_t sub_2755627A8(uint64_t a1, id *a2)
{
  result = sub_275565B7C();
  *a2 = 0;
  return result;
}

uint64_t sub_275562820(uint64_t a1, id *a2)
{
  v3 = sub_275565B8C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2755628A0@<X0>(uint64_t *a1@<X8>)
{
  sub_275565B9C();
  v2 = sub_275565B6C();

  *a1 = v2;
  return result;
}

uint64_t sub_2755628E4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_275565B9C();
  v6 = v5;
  if (v4 == sub_275565B9C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_275565C7C();
  }

  return v9 & 1;
}

uint64_t sub_27556296C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_275565B6C();

  *a2 = v5;
  return result;
}

uint64_t sub_2755629B4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_275565B9C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2755629E0(uint64_t a1)
{
  v2 = sub_275562B14(&qword_2809F8F00);
  v3 = sub_275562B14(&unk_2809F8E60);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_275562B14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AIDAServiceType();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_275562B58()
{
  v0 = sub_275565B3C();
  __swift_allocate_value_buffer(v0, qword_2809F9280);
  __swift_project_value_buffer(v0, qword_2809F9280);
  return sub_275565B2C();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_275562C74()
{
  v1 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v2 = *(v0 + OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager);
LABEL_5:
    v8 = v2;
    return v3;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277CED1E8]) initWithAccountStore_];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id iCloudMailUnifiedSettingsProvider.__allocating_init(accountManager:presenter:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = 0;
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager] = a1;
  *&v5[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  sub_2755656D8();

  return v8;
}

id iCloudMailUnifiedSettingsProvider.init(accountManager:presenter:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = 0;
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager] = a1;
  *&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for iCloudMailUnifiedSettingsProvider();
  v5 = a1;
  v6 = a2;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_2755656D8();

  return v7;
}

NSObject *iCloudMailUnifiedSettingsProvider.init(presenter:)(void *a1)
{
  v3 = sub_275565B3C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = 0;
  *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] = 0;
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v9 = result;
    v10 = [objc_allocWithZone(MEMORY[0x277CED1D0]) initWithAccountStore_];

    *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager] = v10;
    *&v1[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter] = a1;
    v11 = type metadata accessor for iCloudMailUnifiedSettingsProvider();
    v30.receiver = v1;
    v30.super_class = v11;
    v12 = a1;
    v13 = objc_msgSendSuper2(&v30, sel_init);
    v14 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager;
    v15 = *&v13[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager];
    v16 = v13;
    [v15 setDelegate_];
    if (qword_2809F8DD0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, qword_2809F9280);
    (*(v4 + 16))(v7, v17, v3);
    v18 = v16;
    v19 = sub_275565B1C();
    v20 = sub_275565C0C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v29 = v12;
      v23 = v22;
      *v21 = 138412546;
      *(v21 + 4) = v18;
      *v22 = v13;
      *(v21 + 12) = 2112;
      v24 = *&v13[v14];
      *(v21 + 14) = v24;
      v22[1] = v24;
      v25 = v18;
      v26 = v24;
      _os_log_impl(&dword_275561000, v19, v20, "Setting delegage %@ to %@", v21, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
      swift_arrayDestroy();
      MEMORY[0x277C7C140](v23, -1, -1);
      MEMORY[0x277C7C140](v21, -1, -1);
      v27 = v29;
      v12 = v25;
    }

    else
    {
      v27 = v19;
      v19 = v18;
    }

    (*(v4 + 8))(v7, v3);
    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2755632AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = a1;
  v59 = a2;
  v4 = sub_275565B3C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v60 = &v56 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v56 - v15;
  if (qword_2809F8DD0 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_2809F9280);
  v18 = v5[2];
  v61 = v17;
  v62 = v18;
  (v18)(v16);
  v19 = sub_275565B1C();
  v20 = sub_275565C0C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_275561000, v19, v20, "Navigate to iCloud Mail Settings", v21, 2u);
    MEMORY[0x277C7C140](v21, -1, -1);
  }

  v24 = v5[1];
  v23 = v5 + 1;
  v22 = v24;
  v24(v16, v4);
  sub_2755656D8();
  v25 = sub_275565B6C();
  v26 = NSClassFromString(v25);

  if (v26)
  {
    swift_getObjCClassMetadata();
    v63 = &unk_28842F918;
    if (swift_dynamicCastTypeToObjCProtocolConditional())
    {
      v57 = v22;
      v62(v14, v61, v4);
      v27 = v3;
      v28 = sub_275565B1C();
      v29 = sub_275565C0C();

      v30 = os_log_type_enabled(v28, v29);
      v31 = 0x2809F8000;
      v32 = 0x2809F8000;
      v56 = v23;
      if (v30)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        *v33 = 138412546;
        v35 = *&v27[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_accountManager];
        *(v33 + 4) = v35;
        *v34 = v35;
        *(v33 + 12) = 2112;
        v36 = *&v27[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_presenter];
        *(v33 + 14) = v36;
        v34[1] = v36;
        v37 = v35;
        v38 = v36;
        _os_log_impl(&dword_275561000, v28, v29, "navigateToiCloudMailSettings, accountManager: %@, presenter: %@", v33, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
        swift_arrayDestroy();
        v39 = v34;
        v32 = 0x2809F8000uLL;
        MEMORY[0x277C7C140](v39, -1, -1);
        v40 = v33;
        v31 = 0x2809F8000uLL;
        MEMORY[0x277C7C140](v40, -1, -1);
      }

      v57(v14, v4);
      v41 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v42 = *&v27[*(v31 + 3808)];
      v43 = [v41 initWithManager:v42 presenter:*&v27[*(v32 + 3816)]];
      v44 = *&v27[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider];
      *&v27[OBJC_IVAR___iCloudMailUnifiedSettingsProvider_mailSettingsProvider] = v43;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      if (v59)
      {
        v45 = sub_275565B6C();
      }

      else
      {
        v45 = 0;
      }

      v49 = v60;
      [v43 onMailTapWithDeeplink_];

      swift_unknownObjectRelease();
      v62(v49, v61, v4);
      v50 = v27;
      v46 = sub_275565B1C();
      v51 = sub_275565C0C();

      if (!os_log_type_enabled(v46, v51))
      {
        v22 = v57;
        goto LABEL_19;
      }

      v48 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v48 = 138412546;
      *(v48 + 4) = v50;
      *(v48 + 12) = 2112;
      *(v48 + 14) = v42;
      *v52 = v50;
      v52[1] = v42;
      v53 = v50;
      v54 = v42;
      _os_log_impl(&dword_275561000, v46, v51, "Delegate %@ to %@", v48, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
      swift_arrayDestroy();
      MEMORY[0x277C7C140](v52, -1, -1);
      v22 = v57;
      goto LABEL_17;
    }
  }

  v62(v9, v61, v4);
  v46 = sub_275565B1C();
  v47 = sub_275565BFC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_275561000, v46, v47, "[iCloudMailSettingsProvider] Unable to find MailSettingsSpecifierProvider", v48, 2u);
    v49 = v9;
LABEL_17:
    MEMORY[0x277C7C140](v48, -1, -1);
    goto LABEL_19;
  }

  v49 = v9;
LABEL_19:

  return (v22)(v49, v4);
}

id iCloudMailUnifiedSettingsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudMailUnifiedSettingsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailUnifiedSettingsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *iCloudMailUnifiedSettingsProvider.accounts(for:)(void *a1)
{
  v2 = v1;
  v4 = sub_275565B3C();
  v5 = *(v4 - 1);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v83 = v79 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v79 - v12;
  if (qword_2809F8DD0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_2809F9280);
  v15 = v5 + 2;
  v85 = v5[2];
  v86 = v14;
  v85(v13);
  v16 = a1;
  v17 = sub_275565B1C();
  v18 = sub_275565C0C();
  v88 = v16;

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    v21 = v88;
    *(v19 + 4) = v88;
    *v20 = v21;
    v22 = v21;
    _os_log_impl(&dword_275561000, v17, v18, "AIDAAccountManagerDelegate.accounts with %@", v19, 0xCu);
    sub_2755659AC(v20);
    v23 = v20;
    v15 = v5 + 2;
    MEMORY[0x277C7C140](v23, -1, -1);
    MEMORY[0x277C7C140](v19, -1, -1);
  }

  v87 = v5[1];
  v87(v13, v4);
  v90 = MEMORY[0x277D84F98];
  v24 = sub_275562C74();
  v25 = *MEMORY[0x277CED1A0];
  v26 = [v24 accountForService_];

  v84 = v5 + 1;
  v82 = v9;
  if (v26)
  {
    v79[1] = v15;
    (v85)(v83, v86, v4);
    v27 = v88;
    v80 = v2;
    v28 = v2;
    v29 = v26;
    v30 = sub_275565B1C();
    v31 = sub_275565C0C();

    v81 = v28;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412802;
      *(v32 + 4) = v27;
      *v33 = v27;
      *(v32 + 12) = 2112;
      v34 = v4;
      v35 = *&v81[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager];
      *(v32 + 14) = v35;
      *(v32 + 22) = 2112;
      *(v32 + 24) = v29;
      v33[1] = v35;
      v33[2] = v26;
      v36 = v27;
      v37 = v29;
      v38 = v35;
      v4 = v34;
      _os_log_impl(&dword_275561000, v30, v31, "AIDAAccountManagerDelegate.accounts: %@ and %@ has appleAccount - %@", v32, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
      swift_arrayDestroy();
      MEMORY[0x277C7C140](v33, -1, -1);
      MEMORY[0x277C7C140](v32, -1, -1);
    }

    v87(v83, v4);
    v39 = v29;
    v40 = v25;
    v41 = v90;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v41;
    sub_27556530C(v39, v40, isUniquelyReferenced_nonNull_native);

    v90 = v89;
    v43 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
    v44 = v81;
    v45 = [*&v81[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] altDSIDForAccount:v39 service:v40];
    v2 = v80;
    if (v45)
    {
      v46 = v45;
      v47 = sub_275565B9C();
      v49 = v48;

      v50 = [*&v44[v43] DSIDForAccount:v39 service:v40];
      if (v50)
      {
        v51 = v50;
        v52 = sub_275565B9C();
        v54 = v53;

        v55 = *MEMORY[0x277CED1B0];
        v56 = sub_2755642D0(*MEMORY[0x277CED1B0], v47, v49, v52, v54);

        if (v56)
        {
          v57 = v56;
          sub_2755641CC(v56, v55);
        }
      }

      else
      {
      }
    }

    v9 = v82;
  }

  v58 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v59 = *MEMORY[0x277CED1C0];
  v60 = [*&v2[OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager] accountForService_];
  if (v60)
  {
    sub_2755641CC(v60, v59);
  }

  (v85)(v9, v86, v4);
  v61 = v88;
  v62 = v2;
  v63 = sub_275565B1C();
  v64 = sub_275565C0C();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v88 = v4;
    v67 = v66;
    v86 = swift_slowAlloc();
    v89 = v86;
    *v65 = 138412802;
    *(v65 + 4) = v61;
    v68 = *&v2[v58];
    *(v65 + 12) = 2112;
    *(v65 + 14) = v68;
    *v67 = v61;
    v67[1] = v68;
    *(v65 + 22) = 2080;
    swift_beginAccess();
    type metadata accessor for AIDAServiceType();
    sub_2755658BC();
    sub_275565908();
    v69 = v61;
    v70 = v68;

    v71 = sub_275565B5C();
    v73 = v72;

    v74 = sub_275564844(v71, v73, &v89);

    *(v65 + 24) = v74;
    _os_log_impl(&dword_275561000, v63, v64, "AIDAAccountManagerDelegate.accounts: %@ and %@ has accounts - %s", v65, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
    swift_arrayDestroy();
    MEMORY[0x277C7C140](v67, -1, -1);
    v75 = v86;
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x277C7C140](v75, -1, -1);
    MEMORY[0x277C7C140](v65, -1, -1);

    v76 = v82;
    v77 = v88;
  }

  else
  {

    v76 = v9;
    v77 = v4;
  }

  v87(v76, v77);
  swift_beginAccess();
  return v90;
}

void sub_2755641CC(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_27556530C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v15;
  }

  else
  {
    v7 = *v2;
    v8 = sub_275564DEC(a2);
    if (v9)
    {
      v10 = v8;
      v11 = *v3;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v16 = *v3;
      if (!v12)
      {
        sub_275565578();
        v13 = v16;
      }

      sub_275565144(v10, v13);
      *v3 = v13;
    }

    else
    {
    }
  }
}

id sub_2755642D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a4;
  v62 = a5;
  v9 = sub_275565B3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v58 - v15;
  v17 = sub_275562C74();
  v18 = [v17 accountForService_];

  if (!v18)
  {
    if (qword_2809F8DD0 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v9, qword_2809F9280);
    (*(v10 + 16))(v14, v47, v9);
    v48 = a1;
    v49 = sub_275565B1C();
    v50 = sub_275565BFC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = v10;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v63 = v53;
      *v52 = 136315138;
      v54 = sub_275565B9C();
      v56 = sub_275564844(v54, v55, &v63);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_275561000, v49, v50, "No account exist for serviceType: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x277C7C140](v53, -1, -1);
      MEMORY[0x277C7C140](v52, -1, -1);

      (*(v51 + 8))(v14, v9);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    return 0;
  }

  v59 = v16;
  v60 = v10;
  v19 = v9;
  v20 = OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager;
  v21 = [*(v5 + OBJC_IVAR___iCloudMailUnifiedSettingsProvider____lazy_storage___serviceOwnersManager) altDSIDForAccount:v18 service:a1];
  if (v21)
  {
    v22 = v21;
    v23 = sub_275565B9C();
    v25 = v24;

    if (v23 == a2 && v25 == a3)
    {
LABEL_23:

      return v18;
    }

    v27 = sub_275565C7C();

    if (v27)
    {
      return v18;
    }
  }

  v28 = [*(v5 + v20) DSIDForAccount:v18 service:a1];
  v29 = v19;
  v31 = v59;
  v30 = v60;
  if (!v28)
  {
LABEL_14:
    if (qword_2809F8DD0 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v29, qword_2809F9280);
    (*(v30 + 16))(v31, v38, v29);
    v39 = a1;
    v40 = sub_275565B1C();
    v41 = sub_275565BFC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v42 = 136315138;
      v44 = sub_275565B9C();
      v46 = sub_275564844(v44, v45, &v63);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_275561000, v40, v41, "No matching account found for serviceType: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x277C7C140](v43, -1, -1);
      MEMORY[0x277C7C140](v42, -1, -1);
    }

    (*(v30 + 8))(v31, v29);
    return 0;
  }

  v32 = v28;
  v33 = sub_275565B9C();
  v35 = v34;

  if (v33 == v61 && v35 == v62)
  {
    goto LABEL_23;
  }

  v37 = sub_275565C7C();

  if ((v37 & 1) == 0)
  {
    goto LABEL_14;
  }

  return v18;
}

uint64_t sub_275564844(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_275564910(v11, 0, 0, 1, a1, a2);
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
    sub_275565ABC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_275564910(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_275564A1C(a5, a6);
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
    result = sub_275565C3C();
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

uint64_t sub_275564A1C(uint64_t a1, unint64_t a2)
{
  v4 = sub_275564A68(a1, a2);
  sub_275564B98(&unk_28842DC50);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_275564A68(uint64_t a1, unint64_t a2)
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

  v6 = sub_275564C84(v5, 0);
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

  result = sub_275565C3C();
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
        v10 = sub_275565BCC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_275564C84(v10, 0);
        result = sub_275565C2C();
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

uint64_t sub_275564B98(uint64_t result)
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

  result = sub_275564CF8(result, v12, 1, v3);
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

void *sub_275564C84(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F78, &qword_275566550);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_275564CF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F78, &qword_275566550);
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

unint64_t sub_275564DEC(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_275565B9C();
  sub_275565C9C();
  sub_275565BAC();
  v4 = sub_275565CAC();

  return sub_275565474(a1, v4);
}

uint64_t sub_275564E80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F70, &qword_275566548);
  v38 = a2;
  result = sub_275565C5C();
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
      v17 = __clz(__rbit64(v13));
      v39 = (v13 - 1) & v13;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v24 = v22;
        v25 = v23;
      }

      v26 = *(v8 + 40);
      sub_275565B9C();
      sub_275565C9C();
      sub_275565BAC();
      v27 = sub_275565CAC();

      v28 = -1 << *(v8 + 32);
      v29 = v27 & ~v28;
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
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
      v5 = v37;
      v13 = v39;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        v39 = (v19 - 1) & v19;
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

void sub_275565144(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275565C1C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_275565B9C();
      sub_275565C9C();
      v11 = v10;
      sub_275565BAC();
      v12 = sub_275565CAC();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
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
}

uint64_t sub_27556530C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_275564DEC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_275564E80(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_275564DEC(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for AIDAServiceType();
        sub_275565C8C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_275565578();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v22 = v19[2];
  v12 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v23;

  return MEMORY[0x2821F9840]();
}

unint64_t sub_275565474(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_275565B9C();
      v9 = v8;
      if (v7 == sub_275565B9C() && v9 == v10)
      {
        break;
      }

      v12 = sub_275565C7C();

      if ((v12 & 1) == 0)
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

id sub_275565578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8F70, &qword_275566548);
  v2 = *v0;
  v3 = sub_275565C4C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void sub_2755656D8()
{
  v0 = NSOpenStepRootDirectory();
  sub_275565B9C();

  sub_275565BEC();
  sub_275565BBC();
  v5 = sub_275565BEC();
  v6 = v1;
  sub_275565BBC();
  v2 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v3 = sub_275565B6C();

  v4 = [v2 initWithPath_];

  if (!v4 || ([v4 isLoaded] & 1) == 0)
  {
    [v4 load];
  }
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

unint64_t sub_2755658BC()
{
  result = qword_2809F8EF8;
  if (!qword_2809F8EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F8EF8);
  }

  return result;
}

unint64_t sub_275565908()
{
  result = qword_2809F8F00;
  if (!qword_2809F8F00)
  {
    type metadata accessor for AIDAServiceType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F8F00);
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

uint64_t sub_2755659AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F8EF0, &unk_2755664D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275565ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}