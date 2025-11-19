void sub_275912524(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = sub_2759B8508();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v13 = sub_2759B89A8();
  __swift_project_value_buffer(v13, qword_2815ADE70);
  v14 = sub_2759B8988();
  v15 = sub_2759BA668();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_275819000, v14, v15, "Launching family usage with RemoteUI", v16, 2u);
    MEMORY[0x277C85860](v16, -1, -1);
  }

  if (!*&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8])
  {
    goto LABEL_8;
  }

  v17 = *&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  sub_2759B84F8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27586BF04(v7, &unk_280A0EB10, &qword_2759C0740);
LABEL_8:
    v18 = a1;
    v19 = sub_2759B8988();
    v20 = sub_2759BA648();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      *(v21 + 4) = v18;
      *v22 = v18;
      v23 = v18;
      _os_log_impl(&dword_275819000, v19, v20, "Invalid URL string for family usage: %@", v21, 0xCu);
      sub_27586BF04(v22, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v22, -1, -1);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    return;
  }

  (*(v9 + 32))(v12, v7, v8);
  swift_getKeyPath();
  v31 = v1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = sub_27587C10C();
  v26 = [objc_allocWithZone(MEMORY[0x277D7F4B8]) initWithNavigationController:Strong initialAction:0 account:v25];

  sub_275878F94(v26);
  swift_getKeyPath();
  v31 = v2;
  sub_2759B8638();

  v27 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyRUIController);
  if (v27)
  {
    v28 = v27;
    v29 = sub_2759B84B8();
    [v28 loadURL:v29 postBody:0 additionalHeaders:0];
  }

  (*(v9 + 8))(v12, v8);
}

void sub_275912990()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - v4;
  swift_getKeyPath();
  v22 = v0;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = sub_2759B8988();
    v10 = sub_2759BA668();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275819000, v9, v10, "Launching legacy purchase flow.", v11, 2u);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v12 = sub_2759BA518();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    sub_2759BA4C8();
    v13 = v1;
    v14 = v7;
    v15 = sub_2759BA4B8();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;
    v16[5] = v14;
    sub_27587D460(0, 0, v5, &unk_2759C8F20, v16);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_2815ADE70);
    v14 = sub_2759B8988();
    v19 = sub_2759BA648();
    if (os_log_type_enabled(v14, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_275819000, v14, v19, "Presenter unavailable, unable to launch legacy manage plan flow.", v20, 2u);
      MEMORY[0x277C85860](v20, -1, -1);
    }
  }
}

void sub_275912CB0(NSObject *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v71 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v68 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v59 - v10;
  v70 = sub_2759B8508();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v70);
  v15 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v69 = &v59 - v16;
  v67 = *a2;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v17 = sub_2759B89A8();
  __swift_project_value_buffer(v17, qword_2815ADE70);
  v18 = sub_2759B8988();
  v19 = sub_2759BA668();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_275819000, v18, v19, "Launching family usage flow with LiftUI.", v20, 2u);
    MEMORY[0x277C85860](v20, -1, -1);
  }

  [v3 didStartLoadingWithView_];
  v21 = sub_27587C10C();
  if (v21)
  {
    v22 = v21;
    v23 = *(&v71->isa + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
    v24 = *(&v71[1].isa + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
    if (!v24)
    {
LABEL_9:
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v17, qword_280A238A0);
      v30 = v71;
      v31 = sub_2759B8988();
      v32 = sub_2759BA648();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v72 = v34;
        *v33 = 136315138;
        if (v24)
        {
          v35 = v24;
        }

        else
        {
          v23 = 7104878;
          v35 = 0xE300000000000000;
        }

        v36 = sub_2758937B8(v23, v35, &v72);

        *(v33 + 4) = v36;
        _os_log_impl(&dword_275819000, v31, v32, "unable to launch family usage liftui, unable to generate url: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x277C85860](v34, -1, -1);
        MEMORY[0x277C85860](v33, -1, -1);
      }

      return;
    }

    v25 = *(&v71->isa + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
    v26 = *(&v71[1].isa + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
    sub_2759B84F8();
    v27 = v12;
    v28 = *(v12 + 48);
    v29 = v70;
    if (v28(v11, 1, v70) == 1)
    {
      sub_27586BF04(v11, &unk_280A0EB10, &qword_2759C0740);
      goto LABEL_9;
    }

    v64 = *(v27 + 32);
    v65 = v27 + 32;
    v64(v69, v11, v29);
    v66 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask;
    if (*&v3[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask])
    {
      v40 = *&v3[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
      sub_2759BA538();
    }

    v41 = v68;
    sub_2759BA4E8();
    v61 = sub_2759BA518();
    v42 = *(v61 - 8);
    v60 = *(v42 + 56);
    v62 = v42 + 56;
    v60(v41, 0, 1, v61);
    (*(v27 + 16))(v15, v69, v29);
    sub_2759BA4C8();
    v63 = v27;
    v43 = v22;
    v44 = v3;
    v71 = v71;
    v45 = sub_2759BA4B8();
    v46 = (*(v27 + 80) + 48) & ~*(v27 + 80);
    v47 = (v13 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = swift_allocObject();
    v49 = MEMORY[0x277D85700];
    v48[2] = v45;
    v48[3] = v49;
    v50 = v49;
    v48[4] = v43;
    v48[5] = v44;
    v51 = v48 + v46;
    v52 = v70;
    v64(v51, v15, v70);
    v53 = v48 + v47;
    *v53 = v71;
    v53[8] = v67;
    v54 = sub_27590A1B4(0, 0, v41, &unk_2759C90C0, v48);
    v55 = *&v3[v66];
    *&v3[v66] = v54;

    v60(v41, 1, 1, v61);
    v56 = v44;
    v57 = sub_2759BA4B8();
    v58 = swift_allocObject();
    v58[2] = v57;
    v58[3] = v50;
    v58[4] = v56;
    sub_27587D460(0, 0, v41, &unk_2759C90D0, v58);

    (*(v63 + 8))(v69, v52);
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v17, qword_280A238A0);
    v71 = sub_2759B8988();
    v37 = sub_2759BA648();
    if (os_log_type_enabled(v71, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_275819000, v71, v37, "Unable to launch family usage liftui, missing account", v38, 2u);
      MEMORY[0x277C85860](v38, -1, -1);
    }

    v39 = v71;
  }
}

void sub_27591343C(char *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  v11 = sub_2759B8508();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8])
  {
    goto LABEL_4;
  }

  v16 = *&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  sub_2759B84F8();
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    sub_27586BF04(v10, &unk_280A0EB10, &qword_2759C0740);
LABEL_4:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v18 = sub_2759B89A8();
    __swift_project_value_buffer(v18, qword_2815ADE70);
    v19 = a1;
    v20 = sub_2759B8988();
    v21 = sub_2759BA648();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v19;
      *v23 = v19;
      v24 = v19;
      _os_log_impl(&dword_275819000, v20, v21, "No valid url found to perform action: %@", v22, 0xCu);
      sub_27586BF04(v23, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v23, -1, -1);
      MEMORY[0x277C85860](v22, -1, -1);
    }

    return;
  }

  (*(v12 + 32))(v15, v10, v11);
  v25 = &a1[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  v26 = *&a1[OBJC_IVAR____TtC14iCloudSettings6Action_type];
  v27 = *(v25 + 1);
  (*(v12 + 16))(v8, v15, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  v28 = sub_2759BA258();
  if (v17(v8, 1, v11) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_2759B84B8();
    (*(v12 + 8))(v8, v11);
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D7F370]) initWithActionString:v28 url:v29];

  v30 = [objc_allocWithZone(MEMORY[0x277D7F388]) init];
  v31 = sub_2759B84B8();
  [v30 _updateRequestedServerUIURLWithURL_];

  sub_275878C38([objc_allocWithZone(MEMORY[0x277D7F4E0]) initWithOffer_]);
  swift_getKeyPath();
  v39 = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v32 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager;
  v33 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  if (v33)
  {
    [v33 setDelegate_];
  }

  swift_getKeyPath();
  v39 = v2;
  sub_2759B8638();

  v34 = *(v2 + v32);
  if (v34)
  {
    swift_getKeyPath();
    v39 = v2;
    v35 = v34;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    v37 = v38;
    [v35 beginRemoteUpgradeFlowWithICQLink:v38 presenter:Strong];

    v30 = Strong;
  }

  else
  {
    v35 = v38;
  }

  (*(v12 + 8))(v15, v11);
}

void sub_2759139B4(void *a1)
{
  v2 = v1;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_2815ADE70);
  v5 = a1;
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&dword_275819000, v6, v7, "Launching direct/upgrade to Oslo w/ buyParam: %@", v8, 0xCu);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  v11 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_title];
  v12 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_title + 8];
  v13 = *&v5[OBJC_IVAR____TtC14iCloudSettings6Action_actionParameters];
  if (v13)
  {
    v14 = sub_2758C14DC(v13);
    if (v12)
    {
      goto LABEL_7;
    }

LABEL_10:
    v15 = 0;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v14 = 0;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_7:
  v15 = sub_2759BA258();
  if (v14)
  {
LABEL_8:
    v16 = sub_2759BA1C8();

    goto LABEL_12;
  }

LABEL_11:
  v16 = 0;
LABEL_12:
  v17 = [objc_allocWithZone(MEMORY[0x277D7F370]) initWithText:v15 action:127 parameters:v16];

  sub_275878C38([objc_allocWithZone(MEMORY[0x277D7F4E0]) init]);
  swift_getKeyPath();
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v18 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager;
  v19 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__upgradeFlowManager);
  if (v19)
  {
    [v19 setDelegate_];
  }

  swift_getKeyPath();
  sub_2759B8638();

  v20 = *(v2 + v18);
  if (v20)
  {
    swift_getKeyPath();
    v21 = v20;
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    [v21 beginRemoteUpgradeFlowWithICQLink:v17 presenter:Strong];
  }
}

void sub_275913D20()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager];
  v3 = [v2 accounts];
  if (!v3)
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = v3;
  type metadata accessor for AIDAServiceType(0);
  sub_275861AF8(0, &unk_280A103F0, 0x277CB8F30);
  sub_27591EFC0(&qword_280A0E500, type metadata accessor for AIDAServiceType);
  v5 = sub_2759BA1D8();

  if (*(v5 + 16))
  {
    v6 = sub_2758A342C(*MEMORY[0x277CED1A0]);
    if (v7)
    {
      v8 = *(*(v5 + 56) + 8 * v6);

      goto LABEL_7;
    }
  }

  v9 = [objc_opt_self() defaultStore];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = v9;

  v8 = [v10 aa_primaryAppleAccount];

  if (!v8)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v21 = sub_2759B89A8();
    __swift_project_value_buffer(v21, qword_2815ADE70);
    v25 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v25, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_2758937B8(0xD000000000000019, 0x80000002759E1580, &v26);
      _os_log_impl(&dword_275819000, v25, v22, "Unable to find account, bailing %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x277C85860](v24, -1, -1);
      MEMORY[0x277C85860](v23, -1, -1);
    }

    goto LABEL_12;
  }

LABEL_7:
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v11 = sub_2759B89A8();
  __swift_project_value_buffer(v11, qword_2815ADE70);
  v12 = sub_2759B8988();
  v13 = sub_2759BA668();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_275819000, v12, v13, "Pushing Show All view.", v14, 2u);
    MEMORY[0x277C85860](v14, -1, -1);
  }

  v15 = objc_opt_self();
  v16 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
  v17 = v8;
  v18 = v1;
  v19 = sub_2758A5B3C(v17, v18, 0);
  v20 = [v15 makeAppListViewControllerWithAccountManager:v2 homeViewModel:v18 manageStorageAppsListViewModel:v19];

  v25 = v20;
  sub_27590C4A0(v25, 1, 0, 0xD000000000000019, 0x80000002759E1580);

LABEL_12:
}

void sub_275914114(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_27587C10C();
  if (v8)
  {
    v9 = v8;
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_2815ADE70);
    v11 = sub_2759B8988();
    v12 = sub_2759BA668();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_275819000, v11, v12, "Showing iCloud backup view.", v13, 2u);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    v14 = [objc_opt_self() buildBackupViewControllerWithAccount_];
    sub_27590C4A0(v14, 1, a1, 0xD000000000000023, 0x80000002759E15A0);
    v15 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController);
    sub_2759BA4D8();
    v16 = sub_2759BA518();
    (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    *(v18 + 32) = v17;
    *(v18 + 40) = xmmword_2759C7B30;
    *(v18 + 56) = 6666;
    *(v18 + 58) = 1;
    *(v18 + 64) = 0;
    *(v18 + 72) = 1;
    *(v18 + 80) = 0;
    *(v18 + 88) = 0;
    *(v18 + 96) = -1;
    sub_275931D20(0, 0, v7, &unk_2759C4530, v18);

    sub_27586BF04(v7, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v19 = sub_2759B89A8();
    __swift_project_value_buffer(v19, qword_2815ADE70);
    v24 = sub_2759B8988();
    v20 = sub_2759BA648();
    if (os_log_type_enabled(v24, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_275819000, v24, v20, "No iCloud account found. Failed to iCloud backup view.", v21, 2u);
      MEMORY[0x277C85860](v21, -1, -1);
    }

    v22 = v24;
  }
}

uint64_t sub_275914538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[53] = a8;
  v8[54] = v14;
  v8[51] = a6;
  v8[52] = a7;
  v8[49] = a4;
  v8[50] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v8[55] = swift_task_alloc();
  v8[56] = sub_2759BA4C8();
  v8[57] = sub_2759BA4B8();
  v11 = sub_2759BA468();
  v8[58] = v11;
  v8[59] = v10;

  return MEMORY[0x2822009F8](sub_27591461C, v11, v10);
}

uint64_t sub_27591461C()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 400);
  v3 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = [objc_allocWithZone(MEMORY[0x277D083B0]) initWithEventType_];
  *(v0 + 480) = v6;
  v7 = sub_2759BA258();
  [v6 setClientName_];

  v8 = sub_2759BA258();
  [v6 setClientBundleID_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DB0, &qword_2759C8EC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C8C80;
  *(inited + 32) = 0x6F74736575716572;
  *(inited + 40) = 0xE900000000000072;
  sub_275864C94(v5, inited + 48);
  *(inited + 80) = 0x707369447473756DLL;
  *(inited + 88) = 0xEB0000000079616CLL;
  sub_275864C94(v4, inited + 96);
  strcpy((inited + 128), "mercuryEntry");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_275864C94(v3, inited + 144);
  *(inited + 176) = 1701869940;
  *(inited + 184) = 0xE400000000000000;
  sub_275864C94(v1, inited + 192);
  sub_2758A2A88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F408, qword_2759CC3C0);
  swift_arrayDestroy();
  v10 = sub_2759BA1C8();

  [v6 setAdditionalParameters_];

  swift_getKeyPath();
  *(v0 + 368) = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = [objc_allocWithZone(MEMORY[0x277D083B8]) initWithPresenter_];

  sub_275879374(v12);
  swift_getKeyPath();
  *(v0 + 384) = v2;
  sub_2759B8638();

  v13 = *(v2 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__familyCircleStateController);
  *(v0 + 488) = v13;
  if (v13)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 376;
    *(v0 + 24) = sub_275914C9C;
    v14 = swift_continuation_init();
    *(v0 + 360) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DC0, &qword_2759C8EF8);
    *(v0 + 304) = MEMORY[0x277D85DD0];
    *(v0 + 312) = 1107296256;
    *(v0 + 320) = sub_27587045C;
    *(v0 + 328) = &block_descriptor_87;
    *(v0 + 336) = v14;
    [v13 performWithContext:v6 completion:v0 + 304];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v15 = *(v0 + 456);

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_2815ADE70);
    v17 = sub_2759B8988();
    v18 = sub_2759BA668();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275819000, v17, v18, "Family sharing flow completed successfully. Reloading iCloudHome view.", v19, 2u);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v23 = *(v0 + 424);
    v22 = *(v0 + 432);

    sub_2759BA4E8();
    v24 = sub_2759BA518();
    v25 = *(*(v24 - 8) + 56);
    v25(v21, 0, 1, v24);
    v26 = v23;
    v27 = sub_2759BA4B8();
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v27;
    *(v28 + 24) = v29;
    *(v28 + 32) = v26;
    *(v28 + 40) = 0;
    sub_27587D460(0, 0, v21, &unk_2759C8F00, v28);

    if (v22)
    {
      v31 = *(v0 + 432);
      v30 = *(v0 + 440);
      sub_2759BA4E8();
      v25(v30, 0, 1, v24);
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      *(v32 + 24) = 0;
      *(v32 + 32) = v31;
      *(v32 + 40) = 256;
      v33 = v31;
      sub_27587D460(0, 0, v30, &unk_2759C3A58, v32);
    }

    v34 = *(v0 + 480);
    v35 = *(v0 + 440);
    [*(v0 + 424) didStopLoadingWithView_];

    v36 = *(v0 + 8);

    return v36();
  }
}

uint64_t sub_275914C9C()
{
  v1 = *(*v0 + 472);
  v2 = *(*v0 + 464);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_275914DA4, v2, v1);
}

uint64_t sub_275914DA4()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 456);

  v3 = *(v0 + 376);

  v4 = [v3 error];
  if (v4)
  {

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = v3;
    v7 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = [v6 error];
      if (v11)
      {
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *(v9 + 4) = v11;
      *v10 = v12;
      _os_log_impl(&dword_275819000, v7, v8, "Family sharing flow failed w/ error: %@", v9, 0xCu);
      sub_27586BF04(v10, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v10, -1, -1);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    v29 = *(v0 + 440);
    v28 = *(v0 + 448);
    v30 = *(v0 + 424);
    v31 = *(v0 + 432);

    sub_2759BA4E8();
    v21 = sub_2759BA518();
    v22 = *(*(v21 - 8) + 56);
    v22(v29, 0, 1, v21);
    v32 = v30;
    v33 = sub_2759BA4B8();
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D85700];
    *(v34 + 16) = v33;
    *(v34 + 24) = v35;
    *(v34 + 32) = v32;
    *(v34 + 40) = 0;
    sub_27587D460(0, 0, v29, &unk_2759C8F08, v34);

    if (v31)
    {
      v27 = &unk_2759C8F10;
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v13 = sub_2759B89A8();
    __swift_project_value_buffer(v13, qword_2815ADE70);
    v14 = sub_2759B8988();
    v15 = sub_2759BA668();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_275819000, v14, v15, "Family sharing flow completed successfully. Reloading iCloudHome view.", v16, 2u);
      MEMORY[0x277C85860](v16, -1, -1);
    }

    v18 = *(v0 + 440);
    v17 = *(v0 + 448);
    v20 = *(v0 + 424);
    v19 = *(v0 + 432);

    sub_2759BA4E8();
    v21 = sub_2759BA518();
    v22 = *(*(v21 - 8) + 56);
    v22(v18, 0, 1, v21);
    v23 = v20;
    v24 = sub_2759BA4B8();
    v25 = swift_allocObject();
    v26 = MEMORY[0x277D85700];
    *(v25 + 16) = v24;
    *(v25 + 24) = v26;
    *(v25 + 32) = v23;
    *(v25 + 40) = 0;
    sub_27587D460(0, 0, v18, &unk_2759C8F00, v25);

    if (v19)
    {
      v27 = &unk_2759C3A58;
LABEL_17:
      v37 = *(v0 + 432);
      v36 = *(v0 + 440);
      sub_2759BA4E8();
      v22(v36, 0, 1, v21);
      v38 = swift_allocObject();
      *(v38 + 16) = 0;
      *(v38 + 24) = 0;
      *(v38 + 32) = v37;
      *(v38 + 40) = 256;
      v39 = v37;
      sub_27587D460(0, 0, v36, v27, v38);
    }
  }

  v40 = *(v0 + 480);
  v41 = *(v0 + 440);
  [*(v0 + 424) didStopLoadingWithView_];

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_275915280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  sub_2759BA4C8();
  v5[10] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275915318, v7, v6);
}

uint64_t sub_275915318()
{
  v1 = v0[10];
  v2 = v0[8];

  [v2 didStartLoadingWithView_];
  swift_getKeyPath();
  v0[2] = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController;
  if (!*&v2[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__legacyManagePlanController])
  {
    v4 = v0[8];
    sub_275879184([objc_allocWithZone(MEMORY[0x277D7F4D8]) init]);
  }

  v5 = v0[8];
  swift_getKeyPath();
  v0[2] = v5;
  sub_2759B8638();

  v6 = *&v2[v3];
  if (v6)
  {
    v7 = v0[9];
    v8 = *MEMORY[0x277D3FD40];
    v0[6] = sub_275915538;
    v0[7] = 0;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_275956A0C;
    v0[5] = &block_descriptor_118;
    v9 = _Block_copy(v0 + 2);
    v10 = v6;
    [v10 beginFlowWithPresenter:v7 action:v8 completion:v9];
    _Block_release(v9);
  }

  [v0[8] didStopLoadingWithView_];
  v11 = v0[1];

  return v11();
}

void sub_275915538(char a1, void *a2)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_2815ADE70);
  v5 = a2;
  oslog = sub_2759B8988();
  v6 = sub_2759BA668();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 67109378;
    *(v7 + 4) = a1 & 1;
    *(v7 + 8) = 2112;
    if (a2)
    {
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 10) = v10;
    *v8 = v11;
    _os_log_impl(&dword_275819000, oslog, v6, "Legacy purchase completed with success %{BOOL}d error %@", v7, 0x12u);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }
}

uint64_t sub_2759156C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 480) = a8;
  *(v8 + 248) = a6;
  *(v8 + 256) = a7;
  *(v8 + 232) = a4;
  *(v8 + 240) = a5;
  v9 = sub_2759B8A28();
  *(v8 + 264) = v9;
  v10 = *(v9 - 8);
  *(v8 + 272) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 280) = swift_task_alloc();
  v12 = sub_2759B8248();
  *(v8 + 288) = v12;
  v13 = *(v12 - 8);
  *(v8 + 296) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = sub_2759BA4C8();
  *(v8 + 336) = sub_2759BA4B8();
  v18 = sub_2759BA468();
  *(v8 + 344) = v18;
  *(v8 + 352) = v17;

  return MEMORY[0x2822009F8](sub_275915890, v18, v17);
}

uint64_t sub_275915890()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[29];
  v3 = v0[30];
  v5 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
  v6 = v4;
  v7 = v3;
  v8 = sub_2758A5B3C(v6, v7, 0);
  v0[45] = v8;
  swift_getKeyPath();
  v0[27] = v7;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v10 = sub_2759BA518();
  v0[46] = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v0[47] = v12;
  v0[48] = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v12(v1, 1, 1, v10);
  v13 = v8;
  v14 = sub_2759BA4B8();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;
  sub_27587D460(0, 0, v1, &unk_2759C90D8, v15);

  swift_getKeyPath();
  v0[28] = v7;
  sub_2759B8638();

  v17 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v18 = swift_task_alloc();
  v0[49] = v18;
  *v18 = v0;
  v18[1] = sub_275915B4C;

  return ManageStorageAppsListViewModel.fetchAppsList(fetchHomeViewModel:loadImages:)(0, 0);
}

uint64_t sub_275915B4C()
{
  v1 = *v0;
  v2 = *(*v0 + 392);
  v6 = *v0;

  v3 = *(v1 + 352);
  v4 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_275915C6C, v4, v3);
}

uint64_t sub_275915C6C()
{
  v69 = v0;
  sub_2759BA558();
  *(v0 + 400) = 0;
  v15 = *(v0 + 360);
  v16 = OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel_appModels;
  swift_beginAccess();
  v17 = *(v15 + v16);
  v66 = v0;
  if (v17 >> 62)
  {
    v18 = sub_2759BA9E8();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v18)
  {
    v19 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x277C846A0](v19, v17);
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
LABEL_22:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          swift_once();
          v1 = qword_280A10F08;
          v2 = sub_2759B89A8();
          __swift_project_value_buffer(v2, qword_280A238A0);
          v3 = v19;
          v4 = v1;
          v5 = sub_2759B8988();
          v6 = sub_2759BA668();

          if (os_log_type_enabled(v5, v6))
          {
            v7 = qword_280A10F08;
            v8 = swift_slowAlloc();
            v9 = swift_slowAlloc();
            v10 = swift_slowAlloc();
            v68 = v10;
            *v8 = 138412546;
            v11 = v19;
            v12 = _swift_stdlib_bridgeErrorToNSError();
            *(v8 + 4) = v12;
            *v9 = v12;
            *(v8 + 12) = 2080;
            if (*(v7 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8))
            {
              v13 = *(v7 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
              v14 = *(v7 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
            }

            else
            {
              v14 = 0xE300000000000000;
              v13 = 7104878;
            }

            v51 = sub_2758937B8(v13, v14, &v68);

            *(v8 + 14) = v51;
            _os_log_impl(&dword_275819000, v5, v6, "showFamilyUsageLiftUI: error while loading liftui: %@ url: %s", v8, 0x16u);
            sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
            MEMORY[0x277C85860](v9, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v10);
            MEMORY[0x277C85860](v10, -1, -1);
            MEMORY[0x277C85860](v8, -1, -1);
          }

          v52 = OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI;
          v53 = unk_280A10F78;
          v54 = qword_280A10F48;
          v55 = unk_280A10FE8;
          v56 = unk_280A10EF8;
          sub_2759BA4E8();
          v52(v54, 0, 1, v53);
          v57 = v56;
          v58 = sub_2759BA4B8();
          v59 = swift_allocObject();
          v60 = MEMORY[0x277D85700];
          v59[2] = v58;
          v59[3] = v60;
          v59[4] = v57;
          sub_27587D460(0, 0, v54, &unk_2759C90E8, v59);

          v61 = *&v57[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];
          sub_2759BA4D8();
          v52(v54, 0, 1, v53);
          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v63 = swift_allocObject();
          *(v63 + 16) = 0;
          *(v63 + 24) = 0;
          *(v63 + 32) = v62;
          *(v63 + 40) = xmmword_2759C43F0;
          *(v63 + 56) = 10;
          *(v63 + 57) = v55;
          *(v63 + 58) = 0;
          *(v63 + 64) = 2;
          *(v63 + 72) = 0;
          *(v63 + 80) = xmmword_2759C8C90;
          *(v63 + 96) = 10;
          sub_275931D20(0, 0, v54, &unk_2759C90F0, v63);

          sub_27586BF04(v54, &unk_280A0E510, &qword_2759C33C0);

          v64 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading;

          return v64();
        }

        v20 = *(v17 + 8 * v19 + 32);
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_22;
        }
      }

      v22 = (*&v20[OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel] + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category);
      v23 = *v22;
      v24 = v22[1];
      if (v24 - 2 >= 3 && v24 != 0)
      {
        v67 = v20;
        if (v24 == 1)
        {

          sub_27585A8EC(v23, 1uLL);
          sub_27585A8EC(0, 1uLL);
          v65 = v0;
          goto LABEL_24;
        }

        v20 = v67;
      }

      sub_27585A8EC(v23, v24);
      sub_27585A8EC(0, 1uLL);
      ++v19;
    }

    while (v21 != v18);
  }

  v26 = sub_2758A2A88(MEMORY[0x277D84F90]);
  v27 = objc_allocWithZone(type metadata accessor for ManageStorageApp());
  v28 = ManageStorageApp.init(_:)(v26);
  v29 = *&v28[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category];
  v30 = *&v28[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8];
  *&v28[OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category] = xmmword_2759C8CA0;
  v31 = v28;
  sub_27585A8EC(v29, v30);
  v65 = v0;
  *(v0 + 80) = &type metadata for DefaultApplicationRecordProvider;
  *(v0 + 88) = &off_28847F8A0;
  v32 = type metadata accessor for DefaultIconLoader();
  v33 = objc_allocWithZone(v32);
  __swift_mutable_project_boxed_opaque_existential_1((v65 + 7), v65[10]);
  *(v0 + 120) = &type metadata for DefaultApplicationRecordProvider;
  *(v0 + 128) = &off_28847F8A0;
  sub_27586E058(v0 + 96, v33 + OBJC_IVAR___ICSDefaultIconLoader_applicationRecordProvider);
  *(v0 + 200) = v33;
  *(v0 + 208) = v32;
  v34 = objc_msgSendSuper2((v0 + 200), sel_init);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  *(v0 + 40) = v32;
  *(v0 + 48) = &off_28847F800;
  *(v0 + 16) = v34;
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v32);
  v36 = *(v32 - 1);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v32);
  v39 = *v38;
  *(v0 + 160) = v32;
  *(v0 + 168) = &off_28847F800;
  *(v0 + 136) = v39;
  v40 = objc_allocWithZone(type metadata accessor for ManageStorageAppViewModel());
  v41 = *(v0 + 160);
  v42 = __swift_mutable_project_boxed_opaque_existential_1((v65 + 17), v65[20]);
  v43 = *(v41 - 8);
  v44 = *(v43 + 64) + 15;
  v45 = swift_task_alloc();
  (*(v43 + 16))(v45, v42, v41);
  v67 = sub_2758ACAE4(v31, -1, *v45, v40);

  __swift_destroy_boxed_opaque_existential_1((v66 + 136));

  __swift_destroy_boxed_opaque_existential_1((v66 + 16));

LABEL_24:
  v65[51] = v67;
  v46 = v65[39];
  v47 = sub_2759B8508();
  (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
  v67;
  v48 = swift_task_alloc();
  v65[52] = v48;
  *v48 = v65;
  v48[1] = sub_2759164CC;
  v49 = v65[39];

  return sub_275921A1C(v49);
}

uint64_t sub_2759164CC()
{
  v1 = *v0;
  v2 = *(*v0 + 416);
  v3 = *(*v0 + 408);
  v4 = *(*v0 + 312);
  v8 = *v0;

  sub_27586BF04(v4, &unk_280A0EB10, &qword_2759C0740);
  v5 = *(v1 + 352);
  v6 = *(v1 + 344);

  return MEMORY[0x2822009F8](sub_275916638, v6, v5);
}

uint64_t sub_275916638()
{
  v1 = v0[29];
  v2 = sub_2759B8698();
  v0[53] = v2;
  objc_allocWithZone(v2);
  v3 = v1;
  v0[54] = sub_2759B8688();

  return MEMORY[0x2822009F8](sub_2759166BC, 0, 0);
}

uint64_t sub_2759166BC()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[50];
  v4 = v0[38];
  v5 = v0[31];
  v6 = sub_27591EFC0(&qword_280A0FED0, MEMORY[0x277D7F240]);
  sub_2759B8A08();
  if (v3)
  {
    v0[59] = v3;
    v7 = v0[43];
    v8 = v0[44];

    return MEMORY[0x2822009F8](sub_275916F70, v7, v8);
  }

  else
  {
    v9 = v0[38];
    v11 = v0[34];
    v10 = v0[35];
    v12 = v0[33];
    (*(v11 + 104))(v10, *MEMORY[0x277D23198], v12);
    sub_27596AD54();
    (*(v11 + 8))(v10, v12);
    v13 = *(MEMORY[0x277D23190] + 4);
    v14 = swift_task_alloc();
    v0[55] = v14;
    *v14 = v0;
    v14[1] = sub_27591686C;
    v15 = v0[53];
    v16 = v0[54];
    v17 = v0[38];

    return MEMORY[0x282182070](v17, v15, v6);
  }
}

uint64_t sub_27591686C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 440);
  v8 = *v3;
  v4[56] = a1;
  v4[57] = a2;
  v4[58] = v2;

  if (v2)
  {
    v6 = sub_275916EF4;
  }

  else
  {
    v6 = sub_275916984;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_275916984()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_2759169F8, v1, v2);
}

uint64_t sub_2759169F8()
{
  v58 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 336);

  sub_2759BA558();
  v4 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v6 = *(v0 + 408);
  if (v1)
  {
    v7 = *(v0 + 360);

    sub_27585A900(v4, v3);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 256);
    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A238A0);
    v10 = v1;
    v11 = v8;
    v12 = sub_2759B8988();
    v13 = sub_2759BA668();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 256);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v57 = v17;
      *v15 = 138412546;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v19;
      *v16 = v19;
      *(v15 + 12) = 2080;
      if (*(v14 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8))
      {
        v20 = *(v14 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
        v21 = *(v14 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
      }

      else
      {
        v21 = 0xE300000000000000;
        v20 = 7104878;
      }

      v34 = sub_2758937B8(v20, v21, &v57);

      *(v15 + 14) = v34;
      _os_log_impl(&dword_275819000, v12, v13, "showFamilyUsageLiftUI: error while loading liftui: %@ url: %s", v15, 0x16u);
      sub_27586BF04(v16, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v16, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x277C85860](v17, -1, -1);
      MEMORY[0x277C85860](v15, -1, -1);
    }

    v36 = *(v0 + 376);
    v35 = *(v0 + 384);
    v37 = *(v0 + 368);
    v38 = *(v0 + 320);
    v39 = *(v0 + 328);
    v40 = *(v0 + 480);
    v41 = *(v0 + 240);
    sub_2759BA4E8();
    v36(v38, 0, 1, v37);
    v42 = v41;
    v43 = sub_2759BA4B8();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = v42;
    sub_27587D460(0, 0, v38, &unk_2759C90E8, v44);

    v46 = *&v42[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];
    sub_2759BA4D8();
    v36(v38, 0, 1, v37);
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = v47;
    *(v48 + 40) = xmmword_2759C43F0;
    *(v48 + 56) = 10;
    *(v48 + 57) = v40;
    *(v48 + 58) = 0;
    *(v48 + 64) = 2;
    *(v48 + 72) = 0;
    *(v48 + 80) = xmmword_2759C8C90;
    *(v48 + 96) = 10;
    sub_275931D20(0, 0, v38, &unk_2759C90F0, v48);

    sub_27586BF04(v38, &unk_280A0E510, &qword_2759C33C0);
  }

  else
  {
    v23 = *(v0 + 376);
    v22 = *(v0 + 384);
    v24 = *(v0 + 360);
    v25 = *(v0 + 368);
    v55 = *(v0 + 328);
    v56 = *(v0 + 432);
    v26 = *(v0 + 320);
    v27 = *(v0 + 240);
    sub_2759BA4E8();
    v23(v26, 0, 1, v25);
    v28 = v27;
    v29 = v24;
    v30 = v6;
    sub_2758755BC(v4, v3);
    v31 = sub_2759BA4B8();
    v32 = swift_allocObject();
    v33 = MEMORY[0x277D85700];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v28;
    v32[5] = v4;
    v32[6] = v3;
    v32[7] = v30;
    v32[8] = v29;
    sub_27587D460(0, 0, v26, &unk_2759C9100, v32);

    sub_27585A900(v4, v3);
  }

  v50 = *(v0 + 312);
  v49 = *(v0 + 320);
  v51 = *(v0 + 304);
  v52 = *(v0 + 280);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_275916EF4()
{
  (*(v0[37] + 8))(v0[38], v0[36]);
  v0[59] = v0[58];
  v1 = v0[43];
  v2 = v0[44];

  return MEMORY[0x2822009F8](sub_275916F70, v1, v2);
}

uint64_t sub_275916F70()
{
  v42 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 408);
  v3 = *(v0 + 360);
  v4 = *(v0 + 336);

  v5 = *(v0 + 472);
  if (qword_280A0E338 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 256);
  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_280A238A0);
  v8 = v5;
  v9 = v6;
  v10 = sub_2759B8988();
  v11 = sub_2759BA668();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v41 = v15;
    *v13 = 138412546;
    v16 = v5;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v17;
    *v14 = v17;
    *(v13 + 12) = 2080;
    if (*(v12 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8))
    {
      v18 = *(v12 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString);
      v19 = *(v12 + OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8);
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_2758937B8(v18, v19, &v41);

    *(v13 + 14) = v20;
    _os_log_impl(&dword_275819000, v10, v11, "showFamilyUsageLiftUI: error while loading liftui: %@ url: %s", v13, 0x16u);
    sub_27586BF04(v14, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x277C85860](v15, -1, -1);
    MEMORY[0x277C85860](v13, -1, -1);
  }

  v22 = *(v0 + 376);
  v21 = *(v0 + 384);
  v23 = *(v0 + 368);
  v25 = *(v0 + 320);
  v24 = *(v0 + 328);
  v26 = *(v0 + 480);
  v27 = *(v0 + 240);
  sub_2759BA4E8();
  v22(v25, 0, 1, v23);
  v28 = v27;
  v29 = sub_2759BA4B8();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v28;
  sub_27587D460(0, 0, v25, &unk_2759C90E8, v30);

  v32 = *&v28[OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_analyticsController];
  sub_2759BA4D8();
  v22(v25, 0, 1, v23);
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = v33;
  *(v34 + 40) = xmmword_2759C43F0;
  *(v34 + 56) = 10;
  *(v34 + 57) = v26;
  *(v34 + 58) = 0;
  *(v34 + 64) = 2;
  *(v34 + 72) = 0;
  *(v34 + 80) = xmmword_2759C8C90;
  *(v34 + 96) = 10;
  sub_275931D20(0, 0, v25, &unk_2759C90F0, v34);

  sub_27586BF04(v25, &unk_280A0E510, &qword_2759C33C0);
  v36 = *(v0 + 312);
  v35 = *(v0 + 320);
  v37 = *(v0 + 304);
  v38 = *(v0 + 280);

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_275917370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[38] = a4;
  v8[43] = swift_getObjectType();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DE0, &unk_2759CF4C0) - 8) + 64) + 15;
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v10 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  v8[46] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  sub_2759BA4C8();
  v8[49] = sub_2759BA4B8();
  v13 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27591749C, v13, v12);
}

uint64_t sub_27591749C()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v36 = *(v0 + 336);
  v37 = *(v0 + 344);
  v4 = *(v0 + 320);
  v5 = *(v0 + 312);
  v33 = *(v0 + 328);
  v34 = *(v0 + 304);

  v6 = sub_2759B8C08();
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2759B8BF8();
  *(v0 + 248) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E7F0, &unk_2759C1230);
  sub_2759B9D58();
  v10 = *(v0 + 120);
  v32 = *(v0 + 128);
  v11 = *(v2 + 36);
  *(v3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE90, qword_2759C4940);
  swift_storeEnumTagMultiPayload();
  *(v0 + 136) = v5;
  *(v0 + 144) = v4;
  sub_2758755BC(v5, v4);
  sub_2759B9D58();
  v12 = *(v0 + 112);
  *v3 = *(v0 + 96);
  *(v3 + 16) = v12;
  *(v0 + 256) = v33;
  type metadata accessor for ManageStorageAppViewModel();
  v13 = v33;
  sub_2759B9D58();
  v14 = *(v0 + 160);
  *(v3 + 24) = *(v0 + 152);
  *(v3 + 32) = v14;
  *(v0 + 264) = v34;
  v15 = v34;
  sub_2759B9D58();

  *(v3 + 40) = *(v0 + 168);
  *(v0 + 272) = v36;
  v16 = v36;
  sub_2759B9D58();
  v17 = *(v0 + 192);
  *(v3 + 56) = *(v0 + 184);
  *(v3 + 64) = v17;
  *(v0 + 280) = v9;

  sub_2759B9D58();
  v19 = *(v0 + 200);
  v18 = *(v0 + 208);
  *(v3 + 72) = v19;
  *(v3 + 80) = v18;
  *(v0 + 216) = v19;
  *(v0 + 224) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0FE98, &unk_2759C59F0);
  sub_2759B9D68();
  v35 = *(v0 + 288);
  sub_27586FBC8(v0 + 16, v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
  v20 = *(v0 + 80);
  v21 = *(v0 + 360);
  if (v20)
  {
    v22 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v20);

    sub_2759B8B08();
    v23 = sub_2759B8AF8();
    (*(*(v23 - 8) + 56))(v21, 0, 1, v23);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  else
  {

    sub_27586BF04(v0 + 56, &qword_280A0FEA0, &qword_2759CF500);
    v23 = sub_2759B8AF8();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  }

  v24 = *(v0 + 384);
  v25 = *(v0 + 352);
  v30 = *(v0 + 376);
  v31 = *(v0 + 360);
  v26 = *(v0 + 304);
  sub_2759B8C28();

  *(v0 + 232) = v19;
  *(v0 + 240) = v18;
  sub_2759B9D68();
  v27 = *(v0 + 296);

  sub_2758F649C();
  sub_2759BA208();

  sub_2759B8AF8();
  (*(*(v23 - 8) + 56))(v25, 0, 1, v23);
  sub_2759B8C28();

  sub_27586BF04(v0 + 16, &qword_280A0FEA0, &qword_2759CF500);
  sub_2758D5EC4(v30, v24);
  sub_27591C050(v24, sub_27591EF34);
  sub_27591EED8(v24);
  [v26 didStopLoadingWithView_];

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_27591797C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_2759BA4C8();
  *(v4 + 24) = sub_2759BA4B8();
  v6 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275917A14, v6, v5);
}

uint64_t sub_275917A14()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 didStopLoadingWithView_];
  v3 = v0[1];

  return v3();
}

uint64_t sub_275917A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2759BA4C8();
  v4[3] = sub_2759BA4B8();
  v6 = sub_2759BA468();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_275917B20, v6, v5);
}

uint64_t sub_275917B20()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask;
  v0[6] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_pushingLoadingTask;
  v3 = *(v1 + v2);
  v0[7] = v3;
  if (v3)
  {
    v4 = *(MEMORY[0x277D857C8] + 4);

    v5 = swift_task_alloc();
    v0[8] = v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EEF0, &qword_2759CF390);
    *v5 = v0;
    v5[1] = sub_275917C5C;
    v7 = MEMORY[0x277D84950];
    v8 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v6, v3, v8, v6, v7);
  }

  else
  {
    v9 = v0[3];

    v10 = v0[6];
    v11 = v0[2];
    v12 = *(v11 + v10);
    *(v11 + v10) = 0;

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_275917C5C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[7];

    v6 = v2[4];
    v7 = v2[5];
    v8 = sub_275917E0C;
  }

  else
  {
    v6 = v2[4];
    v7 = v2[5];
    v8 = sub_275917D8C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_275917D8C()
{
  v1 = v0[7];
  v2 = v0[3];

  v3 = v0[6];
  v4 = v0[2];
  v5 = *(v4 + v3);
  *(v4 + v3) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_275917E0C()
{
  v1 = v0[3];

  v2 = v0[6];
  v3 = v0[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_275917E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2759BA4C8();
  v5[4] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275917F18, v7, v6);
}

uint64_t sub_275917F18()
{
  v8 = v0;
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v6 = 7;
  v7 = 7;
  sub_27590A460(v2, 1, &v6, &v7, 0);
  v4 = v0[1];

  return v4();
}

uint64_t sub_275917FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  sub_2759BA4C8();
  v5[13] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275918040, v7, v6);
}

uint64_t sub_275918040()
{
  v1 = v0[13];
  v2 = v0[11];

  swift_getKeyPath();
  v0[7] = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewModel;
  swift_beginAccess();
  sub_27586E058(v2 + v3, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DD0, &qword_2759C8FE0);
  sub_275861AF8(0, qword_280A0F010, 0x277D7F4A8);
  if (swift_dynamicCast())
  {
    v4 = v0[10];
    v5 = v0[11];
    sub_275879D38([objc_allocWithZone(MEMORY[0x277D7F4A0]) initWithViewModel:v4 accountManager:*(v5 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel_accountManager)]);
    swift_getKeyPath();
    v0[2] = v5;
    sub_2759B8638();

    v6 = *(v5 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__privateRelayViewController);
    if (v6)
    {
      v7 = v0[11];
      v8 = v0[12];
      v9 = v6;
      sub_27590C4A0(v9, 1, v8, 0xD000000000000018, 0x80000002759E1680);
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v10 = sub_2759B89A8();
    __swift_project_value_buffer(v10, qword_280A238A0);
    v4 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_275819000, v4, v11, "Unable to show ICQ private relay view without ICQ version of the view model.", v12, 2u);
      MEMORY[0x277C85860](v12, -1, -1);
    }
  }

  v13 = v0[1];

  return v13();
}

void sub_275918310(char a1, void *a2)
{
  if (a1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_2815ADE70);
    oslog = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_275819000, oslog, v3, "Successfully launched premiumApp.", v4, 2u);
LABEL_13:
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v7 = a2;
    oslog = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(oslog, v8))
    {
      v4 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v4 = 138412290;
      if (a2)
      {
        v10 = a2;
        v11 = _swift_stdlib_bridgeErrorToNSError();
        v12 = v11;
      }

      else
      {
        v11 = 0;
        v12 = 0;
      }

      *(v4 + 4) = v11;
      *v9 = v12;
      _os_log_impl(&dword_275819000, oslog, v8, "Failed to launch premiumApp with error: %@", v4, 0xCu);
      sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v9, -1, -1);
      goto LABEL_13;
    }
  }
}

uint64_t sub_275918520(void *a1, uint64_t a2, uint64_t a3)
{
  v29[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v29 - v7;
  v9 = sub_2759B8508();
  v29[0] = *(v9 - 8);
  v10 = *(v29[0] + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2759B8768();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v29 - v19;
  v21 = a1;
  sub_2759B8738();
  if (a2)
  {
    *&v30[0] = 1752457584;
    *(&v30[0] + 1) = 0xE400000000000000;

    sub_2759BA878();
    if (*(a2 + 16) && (v22 = sub_2758A24F8(v31), (v23 & 1) != 0))
    {
      sub_275864C94(*(a2 + 56) + 32 * v22, &v32);
      sub_275864C40(v31);
      if (swift_dynamicCast())
      {
        sub_2759B84F8();

        v24 = v29[0];
        if ((*(v29[0] + 48))(v8, 1, v9) == 1)
        {
          sub_27586BF04(v8, &unk_280A0EB10, &qword_2759C0740);
        }

        else
        {
          (*(v24 + 32))(v12, v8, v9);
          *&v32 = 1752457584;
          *(&v32 + 1) = 0xE400000000000000;
          sub_2759BA878();
          v26 = sub_2759B84A8();
          v33 = MEMORY[0x277D837D0];
          *&v32 = v26;
          *(&v32 + 1) = v27;
          sub_2758A2ECC(&v32, v30);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v34 = a2;
          sub_275906E88(v30, v31, isUniquelyReferenced_nonNull_native);
          sub_275864C40(v31);
          (*(v24 + 8))(v12, v9);
        }
      }
    }

    else
    {
      sub_275864C40(v31);
    }

    sub_2759B8728();
    (*(v14 + 8))(v20, v13);
    (*(v14 + 32))(v20, v18, v13);
  }

  sub_27591EFC0(&unk_280A10030, MEMORY[0x277D40250]);
  sub_2759B87A8();
  return (*(v14 + 8))(v20, v13);
}

uint64_t sub_275918944(uint64_t a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1;
  type metadata accessor for ManageStorageLiftUIDrilldownView();
  sub_27591EFC0(&qword_280A10D98, type metadata accessor for ManageStorageLiftUIDrilldownView);
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_275918AC8(uint64_t a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A12840, &qword_2759C8E78);
  sub_27591E3D8();
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_275918C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = sub_2759BA4C8();
  v4[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_275918D08, v7, v6);
}

uint64_t sub_275918D08()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];

  sub_2759BA4E8();
  v5 = sub_2759BA518();
  (*(*(v5 - 8) + 56))(v3, 0, 1, v5);
  v6 = v4;
  v7 = sub_2759BA4B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v6;
  *(v8 + 40) = 0;
  sub_27587D460(0, 0, v3, &unk_2759C8E38, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_275918F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 208) = a6;
  *(v6 + 144) = a4;
  *(v6 + 152) = sub_2759BA4C8();
  *(v6 + 160) = sub_2759BA4B8();
  v8 = swift_task_alloc();
  *(v6 + 168) = v8;
  *v8 = v6;
  v8[1] = sub_275918FC4;

  return sub_27586AE94(a5);
}

uint64_t sub_275918FC4()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v8 = *v0;

  v6 = sub_2759BA468();
  *(v1 + 176) = v6;
  *(v1 + 184) = v5;

  return MEMORY[0x2822009F8](sub_275919108, v6, v5);
}

uint64_t sub_275919108()
{
  v1 = *(v0 + 144);
  swift_getKeyPath();
  *(v0 + 136) = v1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__manageSubsPresenter);
  *(v0 + 192) = v2;
  if (!v2)
  {
    v10 = *(v0 + 160);

    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v11 = sub_2759B89A8();
    __swift_project_value_buffer(v11, qword_2815ADE70);
    v12 = sub_2759B8988();
    v13 = sub_2759BA648();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275819000, v12, v13, "Manage subs presenter is unavailable. Bailing!", v14, 2u);
      MEMORY[0x277C85860](v14, -1, -1);
    }

    v15 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v3 = *(v0 + 208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10DA0, &qword_2759C8EB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C17A0;
  *(v0 + 120) = 0x656372756F73;
  *(v0 + 128) = 0xE600000000000000;
  v5 = v2;
  v6 = MEMORY[0x277D837D0];
  sub_2759BA878();
  v7 = 0x74536567616E616DLL;
  if (v3)
  {
    v7 = 0x6F4864756F6C4369;
  }

  v8 = 0xED0000656761726FLL;
  *(inited + 96) = v6;
  if (v3)
  {
    v8 = 0xEA0000000000656DLL;
  }

  *(inited + 72) = v7;
  *(inited + 80) = v8;
  sub_2758A31E8(inited);
  swift_setDeallocating();
  sub_27586BF04(inited + 32, &qword_280A0F3E0, &qword_2759C39A0);
  v9 = sub_2759BA1C8();

  [v5 setClientOptions_];

  return MEMORY[0x2822009F8](sub_275919428, 0, 0);
}

uint64_t sub_275919428()
{
  v1 = *(v0 + 152);
  *(v0 + 200) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_2759194B4, v3, v2);
}

uint64_t sub_2759194B4()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[18];

  sub_27590C4A0(v2, 1, 0, 0xD000000000000027, 0x80000002759E15F0);
  v4 = v0[22];
  v5 = v0[23];

  return MEMORY[0x2822009F8](sub_275919544, v4, v5);
}

uint64_t sub_275919544()
{
  v1 = v0[24];
  v2 = v0[20];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2759195AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_2759BA4C8();
  v7[3] = sub_2759BA4B8();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_2758CA09C;

  return sub_27590E9A4(a5, a6, a7);
}

Swift::Void __swiftcall iCloudHomeViewModel.showManageStorageView(deeplinkPath:)(Swift::String_optional deeplinkPath)
{
  object = deeplinkPath.value._object;
  countAndFlagsBits = deeplinkPath.value._countAndFlagsBits;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v47 - v6;
  v8 = sub_27587C10C();
  if (v8)
  {
    v9 = v8;
    v10 = objc_allocWithZone(type metadata accessor for ManageStorageAppsListViewModel(0));
    v11 = v1;
    v12 = v9;
    v13 = sub_2758A5B3C(v12, v11, 0);
    swift_getKeyPath();
    v49[0] = v11;
    sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
    sub_2759B8638();

    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();
    v15 = sub_2759BA518();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    sub_2759BA4C8();
    v16 = v13;
    v17 = sub_2759BA4B8();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v16;
    sub_27587D460(0, 0, v7, &unk_2759C58F0, v18);

    swift_getKeyPath();
    v49[0] = v11;
    sub_2759B8638();

    v20 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakAssign();

    v21 = v16;
    v22 = sub_275981D38(v21);
    v24 = v23;
    LOBYTE(v20) = v25;
    v27 = v26;

    sub_27591B960(v22, v24, v20 & 1, v27);

    if (!object)
    {
LABEL_20:

      return;
    }

    v49[0] = countAndFlagsBits;
    v49[1] = object;
    v28 = sub_27589F2D4();
    v29 = MEMORY[0x277C845A0](47, 0xE100000000000000, 0x7FFFFFFFFFFFFFFFLL, 1, MEMORY[0x277D837D0], v28);
    v30 = *(v29 + 16);
    if (!v30)
    {
LABEL_19:

      goto LABEL_20;
    }

    v31 = (v29 + 32 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = v31[2];
    v35 = v31[3];

    v36 = MEMORY[0x277C840B0](v32, v33, v34, v35);
    v38 = v37;

    v39 = sub_2759BAA48();

    if (v39)
    {
      if (v39 == 2)
      {
        v40 = "AccountSettingsController";
        v36 = 0xD00000000000001ALL;
      }

      else
      {
        if (v39 != 1)
        {
LABEL_18:
          v46._countAndFlagsBits = v36;
          v46._object = v38;
          ManageStorageAppsListViewModel.showApp(bundleId:)(v46);
          goto LABEL_19;
        }

        v40 = "ings25ManageStorageConfirmation";
        v36 = 0xD000000000000016;
      }
    }

    else
    {
      v40 = "signpostController";
      v36 = 0xD000000000000019;
    }

    v38 = (v40 | 0x8000000000000000);
    goto LABEL_18;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v41 = sub_2759B89A8();
  __swift_project_value_buffer(v41, qword_2815ADE70);
  v48 = sub_2759B8988();
  v42 = sub_2759BA648();
  if (os_log_type_enabled(v48, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49[0] = v44;
    *v43 = 136315138;
    *(v43 + 4) = sub_2758937B8(0xD000000000000024, 0x80000002759E14A0, v49);
    _os_log_impl(&dword_275819000, v48, v42, "Unable to find account, bailing %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x277C85860](v44, -1, -1);
    MEMORY[0x277C85860](v43, -1, -1);
  }

  else
  {
    v45 = v48;
  }
}

void sub_275919BC4(uint64_t a1)
{
  v2 = sub_2759B8508();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v7 = sub_2759B89A8();
  __swift_project_value_buffer(v7, qword_2815ADE70);
  (*(v3 + 16))(v6, a1, v2);
  v8 = sub_2759B8988();
  v9 = sub_2759BA668();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    v12 = sub_2759B8488();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = sub_2758937B8(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_275819000, v8, v9, "Presented Safari Web View Controller with url: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x277C85860](v11, -1, -1);
    MEMORY[0x277C85860](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_275919E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = sub_2759BA4C8();
  v5[7] = sub_2759BA4B8();
  v7 = sub_2759BA468();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_275919F14, v7, v6);
}

uint64_t sub_275919F14()
{
  v1 = v0[4];
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel___observationRegistrar;
  v0[2] = v1;
  v0[10] = v2;
  v0[11] = sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v3 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager;
  v0[12] = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager;
  v4 = *(v1 + v3);
  v0[13] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_27591A144;
    v6 = v0[5];

    return sub_2758F11A4(v6);
  }

  else
  {
    v8 = v0[7];

    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_280A238E8);
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_275819000, v10, v11, "Unable to get presenter type for AMS. Bailing.", v12, 2u);
      MEMORY[0x277C85860](v12, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_27591A144(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *(*v2 + 104);
  v10 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 152) = a2;

  v7 = *(v3 + 72);
  v8 = *(v3 + 64);

  return MEMORY[0x2822009F8](sub_27591A290, v8, v7);
}

uint64_t sub_27591A290()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 56);

    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v2 = sub_2759B89A8();
    __swift_project_value_buffer(v2, qword_280A238E8);
    v3 = sub_2759B8988();
    v4 = sub_2759BA648();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_275819000, v3, v4, "Unable to get presenter type for AMS. Bailing.", v5, 2u);
      MEMORY[0x277C85860](v5, -1, -1);
    }

    v6 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  v10 = *(v0 + 32);
  swift_getKeyPath();
  *(v0 + 24) = v10;
  sub_2759B8638();

  v11 = *(v10 + v8);
  *(v0 + 128) = v11;
  if (v11)
  {
    v11;
    v12 = swift_task_alloc();
    *(v0 + 136) = v12;
    *v12 = v0;
    v12[1] = sub_27591A4CC;
    v13 = *(v0 + 40);

    return sub_2758F0DF8(v13);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_27591A5E0, 0, 0);
  }
}

uint64_t sub_27591A4CC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_27591A5E0, 0, 0);
}

uint64_t sub_27591A5E0()
{
  v1 = *(v0 + 48);
  *(v0 + 144) = sub_2759BA4B8();
  v3 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27591A66C, v3, v2);
}

uint64_t sub_27591A66C()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[4];
  v3 = v0[5];

  sub_27591A780(v4, v3, v2);
  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x2822009F8](sub_27591A720, v5, v6);
}

uint64_t sub_27591A720()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

void sub_27591A780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v15[0] = a1;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v6 = *(a1 + OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__commerceFlowManager);
  if (v6 && (v7 = v6, v8 = sub_2758F1618(a2, a3), v7, v8))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v15[4] = sub_27591A9CC;
      v15[5] = 0;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 1107296256;
      v15[2] = sub_27586249C;
      v15[3] = &block_descriptor_70;
      v11 = _Block_copy(v15);
      [v10 presentViewController:v8 animated:1 completion:v11];

      _Block_release(v11);
      v8 = v10;
    }
  }

  else
  {
    if (qword_280A0E358 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_280A238E8);
    v8 = sub_2759B8988();
    v13 = sub_2759BA648();
    if (os_log_type_enabled(v8, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_275819000, v8, v13, "Unable to create a flow controller for AMS. Bailing.", v14, 2u);
      MEMORY[0x277C85860](v14, -1, -1);
    }
  }
}

void sub_27591A9F8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v22 - v6;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v8 = sub_2759B89A8();
  __swift_project_value_buffer(v8, qword_280A238E8);
  v9 = a1;
  v10 = sub_2759B8988();
  v11 = sub_2759BA648();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a1)
    {
      v14 = a1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_275819000, v10, v11, "Flow completed with error %@", v12, 0xCu);
    sub_27586BF04(v13, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v13, -1, -1);
    MEMORY[0x277C85860](v12, -1, -1);
  }

  if (!a1)
  {
    sub_2759BA4E8();
    v17 = sub_2759BA518();
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
    sub_2759BA4C8();
    v18 = v2;
    v19 = sub_2759BA4B8();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    *(v20 + 32) = v18;
    *(v20 + 40) = 0;
    sub_27587D460(0, 0, v7, &unk_2759C1E80, v20);
  }
}

uint64_t sub_27591AC74(uint64_t *a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  v10 = &v11;
  v11 = v7;
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_27591ADC8(uint64_t a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v13[0] = *a1;
  v13[1] = v7;
  v14 = v8;
  v15 = v9;
  v12 = v13;
  sub_27591E140();
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_27591AF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v3;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;

  v6 = v3;
}

uint64_t sub_27591AF80(void *a1)
{
  v2 = sub_2759B8788();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = a1[1];
  v11[0] = *a1;
  v11[1] = v7;
  v10 = v11;
  sub_27591E0C8();
  sub_2759B8778();
  sub_27591EFC0(&unk_280A10D60, MEMORY[0x277D40260]);
  sub_2759B87A8();
  return (*(v3 + 8))(v6, v2);
}

void sub_27591B0D8(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v36 - v4;
  v6 = sub_2759B8508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - v12;
  if (!*&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString + 8])
  {
    goto LABEL_4;
  }

  v14 = *&a1[OBJC_IVAR____TtC14iCloudSettings6Action_urlString];
  sub_2759B84F8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_27586BF04(v5, &unk_280A0EB10, &qword_2759C0740);
LABEL_4:
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v16 = a1;
    v17 = sub_2759B8988();
    v18 = sub_2759BA648();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_275819000, v17, v18, "No action url found. Unable to handle action: %@", v19, 0xCu);
      sub_27586BF04(v20, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v20, -1, -1);
      MEMORY[0x277C85860](v19, -1, -1);
    }

    return;
  }

  (*(v7 + 32))(v13, v5, v6);
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v22 = sub_2759B89A8();
  __swift_project_value_buffer(v22, qword_2815ADE70);
  (*(v7 + 16))(v11, v13, v6);
  v23 = sub_2759B8988();
  v24 = sub_2759BA668();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v25 = 136315138;
    sub_27591EFC0(&qword_280A10300, MEMORY[0x277CC9260]);
    v26 = sub_2759BAA98();
    v28 = v27;
    v29 = *(v7 + 8);
    v29(v11, v6);
    v30 = sub_2758937B8(v26, v28, &v37);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_275819000, v23, v24, "Launching web url: %s", v25, 0xCu);
    v31 = v36;
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x277C85860](v31, -1, -1);
    MEMORY[0x277C85860](v25, -1, -1);
  }

  else
  {

    v29 = *(v7 + 8);
    v29(v11, v6);
  }

  v32 = [objc_opt_self() defaultWorkspace];
  if (v32)
  {
    v33 = v32;
    v34 = sub_2759B84B8();
    sub_2758A2A88(MEMORY[0x277D84F90]);
    v35 = sub_2759BA1C8();

    [v33 openSensitiveURL:v34 withOptions:v35];

    v29(v13, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_27591B600(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  v8 = sub_2759B87B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  swift_getKeyPath();
  v19[2] = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v13 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v2 + v13, v7, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_27586BF04(v7, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = sub_2759B8988();
    v16 = sub_2759BA648();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_275819000, v15, v16, "pushSwiftUIView, no Append Action Set.", v17, 2u);
      MEMORY[0x277C85860](v17, -1, -1);
    }
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v19[1] = 0;
    v18 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v18);
    v19[-2] = &v20;
    v19[-1] = v12;
    sub_2759B90C8();

    (*(v9 + 8))(v12, v8);
  }
}

void sub_27591B960(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v25 - v12;
  v14 = sub_2759B87B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = a1;
  v26[1] = a2;
  v27 = a3;
  v28 = a4;
  swift_getKeyPath();
  v25[3] = v5;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v19 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v5 + v19, v13, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_27586BF04(v13, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v20 = sub_2759B89A8();
    __swift_project_value_buffer(v20, qword_2815ADE70);
    v21 = sub_2759B8988();
    v22 = sub_2759BA648();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_275819000, v21, v22, "pushSwiftUIView, no Append Action Set.", v23, 2u);
      MEMORY[0x277C85860](v23, -1, -1);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v13, v14);
    v25[2] = 0;
    v24 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v24);
    v25[-2] = v26;
    v25[-1] = v18;
    sub_2759B90C8();

    (*(v15 + 8))(v18, v14);
  }
}

void sub_27591BCD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v21 - v8;
  v10 = sub_2759B87B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a1;
  v22[1] = a2;
  swift_getKeyPath();
  v21[3] = v3;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v15 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v3 + v15, v9, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_27586BF04(v9, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_2815ADE70);
    v17 = sub_2759B8988();
    v18 = sub_2759BA648();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_275819000, v17, v18, "pushSwiftUIView, no Append Action Set.", v19, 2u);
      MEMORY[0x277C85860](v19, -1, -1);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v21[2] = 0;
    v20 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v20);
    v21[-2] = v22;
    v21[-1] = v14;
    sub_2759B90C8();

    (*(v11 + 8))(v14, v10);
  }
}

void sub_27591C050(uint64_t a1, uint64_t a2)
{
  v20[0] = a2;
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0EFB0, &qword_2759C3128);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v20 - v7;
  v9 = sub_2759B87B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v2;
  sub_27591EFC0(&qword_280A0F490, type metadata accessor for iCloudHomeViewModel);
  sub_2759B8638();

  v14 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__appendSettingsNavigationPath;
  swift_beginAccess();
  sub_27586FBC8(v3 + v14, v8, &qword_280A0EFB0, &qword_2759C3128);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_27586BF04(v8, &qword_280A0EFB0, &qword_2759C3128);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v15 = sub_2759B89A8();
    __swift_project_value_buffer(v15, qword_2815ADE70);
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_275819000, v16, v17, "pushSwiftUIView, no Append Action Set.", v18, 2u);
      MEMORY[0x277C85860](v18, -1, -1);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v20[2] = 0;
    v19 = sub_2759B8DF8();
    MEMORY[0x28223BE20](v19);
    v20[-2] = a1;
    v20[-1] = v13;
    sub_2759B90C8();

    (*(v10 + 8))(v13, v9);
  }
}

char *sub_27591C39C(uint64_t a1)
{
  v2 = sub_2759B8328();
  v3 = *(v2 - 8);
  v108 = v2;
  v109 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v104 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v90 - v11;
  v13 = sub_2759B8508();
  v106 = *(v13 - 8);
  v14 = *(v106 + 64);
  MEMORY[0x28223BE20](v13);
  v105 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2759B82B8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v107 = &v90 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A10D80, &qword_2759C4618);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v30 = &v90 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v90 - v31;
  v110 = 0x4C5255736D61;
  v111 = 0xE600000000000000;
  sub_2759BA878();
  if (!*(a1 + 16) || (v33 = sub_2758A24F8(v112), (v34 & 1) == 0))
  {
    sub_275864C40(v112);
    goto LABEL_9;
  }

  sub_275864C94(*(a1 + 56) + 32 * v33, v113);
  sub_275864C40(v112);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v110 = 1752457584;
    v111 = 0xE400000000000000;
    sub_2759BA878();
    if (!*(a1 + 16) || (v40 = sub_2758A24F8(v112), (v41 & 1) == 0))
    {
      sub_275864C40(v112);
      return 0;
    }

    sub_275864C94(*(a1 + 56) + 32 * v40, v113);
    sub_275864C40(v112);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return 0;
    }

    v96 = v6;
    sub_2759B8318();

    v42 = v108;
    v43 = v109 + 48;
    v95 = *(v109 + 48);
    if (v95(v32, 1, v108) == 1)
    {
      sub_27586BF04(v32, &unk_280A10D80, &qword_2759C4618);
      return 0;
    }

    v94 = v43;
    v44 = sub_2759B82C8();
    v45 = *(v109 + 8);
    v93 = v109 + 8;
    v92 = v45;
    v45(v32, v42);
    if (!v44)
    {
      return 0;
    }

    v91 = v13;
    v46 = *(v44 + 16);
    if (!v46)
    {
LABEL_24:

      return 0;
    }

    v47 = v16;
    v48 = 0;
    v101 = (v17 + 8);
    v102 = v17 + 16;
    v103 = v44;
    v98 = v46;
    while (1)
    {
      if (v48 >= *(v44 + 16))
      {
        __break(1u);
        goto LABEL_60;
      }

      v49 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v50 = *(v17 + 72);
      v97 = v44 + v49;
      v99 = v50;
      v100 = *(v17 + 16);
      v100(v24, v44 + v49 + v50 * v48, v47);
      if (sub_2759B8298() == 0x416465646F636E65 && v51 == 0xED00004C5255534DLL)
      {
        break;
      }

      v52 = sub_2759BAAC8();

      if (v52)
      {
        goto LABEL_26;
      }

      ++v48;
      (*v101)(v24, v47);
      v44 = v103;
      if (v98 == v48)
      {
        goto LABEL_24;
      }
    }

LABEL_26:
    v53 = v47;
    (*(v17 + 32))(v107, v24, v47);
    v54 = sub_2759B82A8();
    if (!v55 || (v112[0] = v54, v112[1] = v55, sub_27589F2D4(), sub_2759BA7E8(), v57 = v56, , !v57))
    {
      (*v101)(v107, v47);

      return 0;
    }

    sub_2759B84F8();

    v58 = v106;
    v59 = v91;
    v90 = *(v106 + 48);
    if (v90(v12, 1, v91) == 1)
    {
      (*v101)(v107, v53);

      sub_27586BF04(v12, &unk_280A0EB10, &qword_2759C0740);
      return 0;
    }

    (*(v58 + 32))(v105, v12, v59);
    sub_2759B82F8();
    v60 = v108;
    if (v95(v30, 1, v108) == 1)
    {

      sub_27586BF04(v30, &unk_280A10D80, &qword_2759C4618);
      if (qword_280A0E358 != -1)
      {
LABEL_62:
        swift_once();
      }

      v61 = sub_2759B89A8();
      __swift_project_value_buffer(v61, qword_280A238E8);
      v62 = sub_2759B8988();
      v63 = sub_2759BA648();
      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        *v64 = 0;
        _os_log_impl(&dword_275819000, v62, v63, "Found an encoded AMS deep link, but was not able to form a valid URL", v64, 2u);
        MEMORY[0x277C85860](v64, -1, -1);
      }

      (*(v106 + 8))(v105, v59);
      (*v101)(v107, v53);
      return 0;
    }

    (*(v109 + 32))(v96, v30, v60);
    v65 = 0;
    v66 = v103;
    v67 = v103 + v49;
    v68 = v98;
    while (1)
    {
      if (v65 >= *(v66 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v100(v21, v67, v53);
      if (sub_2759B8298() == 0x416465646F636E65 && v69 == 0xED00004C5255534DLL)
      {
        break;
      }

      v70 = sub_2759BAAC8();

      v71 = *v101;
      (*v101)(v21, v53);
      if (v70)
      {
        goto LABEL_44;
      }

      ++v65;
      v67 += v99;
      v66 = v103;
      if (v68 == v65)
      {
        __break(1u);
        break;
      }
    }

    v71 = *v101;
    (*v101)(v21, v53);
LABEL_44:
    v72 = v103;
    v73 = *(v103 + 16);
    if (v73 < v68)
    {
      __break(1u);
    }

    else if (~v73 + v68 == v65)
    {
LABEL_46:
      v74 = v108;
      v75 = v104;
      v76 = v90;
      if (v73)
      {
        v77 = v96;
        v78 = sub_2759B82C8();
        v79 = MEMORY[0x277D84F90];
        if (v78)
        {
          v79 = v78;
        }

        v112[0] = v79;
        sub_2759B1AE4(v72);
        sub_2759B82D8();
      }

      else
      {

        v77 = v96;
      }

      sub_2759B8308();
      if (v76(v75, 1, v59) == 1)
      {
        v92(v77, v74);
        (*(v106 + 8))(v105, v59);
        v71(v107, v53);
        sub_27586BF04(v75, &unk_280A0EB10, &qword_2759C0740);
        return 0;
      }

      v80 = sub_2759B8488();
      v82 = v81;
      v83 = *(v106 + 8);
      v83(v75, v59);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v84 = sub_2759B89A8();
      __swift_project_value_buffer(v84, qword_2815ADE70);

      v85 = sub_2759B8988();
      v86 = sub_2759BA668();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v112[0] = v88;
        *v87 = 136315138;
        *(v87 + 4) = sub_2758937B8(v80, v82, v112);
        _os_log_impl(&dword_275819000, v85, v86, "Found an encoded deep link URL. %s", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v88);
        MEMORY[0x277C85860](v88, -1, -1);
        MEMORY[0x277C85860](v87, -1, -1);
      }

      v92(v96, v108);
      v83(v105, v91);
      v71(v107, v53);
      return v80;
    }

    sub_2758AC864(v72, v97, v65 + 1, (2 * v68) | 1);
    v72 = v89;

    v73 = *(v72 + 16);
    goto LABEL_46;
  }

  v24 = v110;
  if (qword_2815ADD30 != -1)
  {
LABEL_60:
    swift_once();
  }

  v35 = sub_2759B89A8();
  __swift_project_value_buffer(v35, qword_2815ADE70);
  v36 = sub_2759B8988();
  v37 = sub_2759BA668();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_275819000, v36, v37, "Found an AMS deep link URL in resource dictionary", v38, 2u);
    MEMORY[0x277C85860](v38, -1, -1);
  }

  return v24;
}

uint64_t sub_27591D1A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585A7E4;

  return sub_275884C0C(a1, v4, v5, v6);
}

uint64_t sub_27591D254(uint64_t a1)
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
  v10[1] = sub_27585F7A0;

  return sub_2759195AC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_27591D328()
{
  v0 = *MEMORY[0x277CB8960];
  v1 = sub_2759BA298();
  v3 = v2;
  if (v1 == sub_2759BA298() && v3 == v4)
  {
    goto LABEL_14;
  }

  v6 = sub_2759BAAC8();

  if (v6)
  {
    return 0xD000000000000019;
  }

  v7 = *MEMORY[0x277CB8A08];
  v8 = sub_2759BA298();
  v10 = v9;
  if (v8 == sub_2759BA298() && v10 == v11)
  {
LABEL_14:

    return 0xD000000000000019;
  }

  v13 = sub_2759BAAC8();

  if (v13)
  {
    return 0xD000000000000019;
  }

  v14 = *MEMORY[0x277CB8A58];
  v15 = sub_2759BA298();
  v17 = v16;
  if (v15 == sub_2759BA298() && v17 == v18)
  {

    return 0xD000000000000016;
  }

  v20 = sub_2759BAAC8();

  if (v20)
  {
    return 0xD000000000000016;
  }

  v21 = *MEMORY[0x277CB89C0];
  v22 = sub_2759BA298();
  v24 = v23;
  if (v22 == sub_2759BA298() && v24 == v25)
  {

    return 0xD000000000000013;
  }

  v26 = sub_2759BAAC8();

  if (v26)
  {
    return 0xD000000000000013;
  }

  v27 = *MEMORY[0x277CB89F8];
  v28 = sub_2759BA298();
  v30 = v29;
  if (v28 == sub_2759BA298() && v30 == v31)
  {

    return 0xD000000000000015;
  }

  v32 = sub_2759BAAC8();

  if (v32)
  {
    return 0xD000000000000015;
  }

  v33 = *MEMORY[0x277CB89D8];
  v34 = sub_2759BA298();
  v36 = v35;
  if (v34 == sub_2759BA298() && v36 == v37)
  {

    return 0xD000000000000013;
  }

  v38 = sub_2759BAAC8();

  if (v38)
  {
    return 0xD000000000000013;
  }

  v39 = *MEMORY[0x277CB89C8];
  v40 = sub_2759BA298();
  v42 = v41;
  if (v40 == sub_2759BA298() && v42 == v43)
  {

    return 0xD000000000000014;
  }

  v44 = sub_2759BAAC8();

  if (v44)
  {
    return 0xD000000000000014;
  }

  return 0;
}

uint64_t sub_27591D730(void *a1)
{
  v2 = sub_27591D328();
  if (!v3)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v14 = sub_2759B89A8();
    __swift_project_value_buffer(v14, qword_2815ADE70);
    v15 = a1;
    v16 = sub_2759B8988();
    v17 = sub_2759BA648();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      v20 = sub_2759BA298();
      v22 = sub_2758937B8(v20, v21, &v30);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_275819000, v16, v17, "No bundle identifier found for six pack app: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x277C85860](v19, -1, -1);
      MEMORY[0x277C85860](v18, -1, -1);
    }

    return 0;
  }

  v4 = v2;
  v5 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v7 = sub_2758707E8(v4, v5, 0);
  if (!v7)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);

    v9 = sub_2759B8988();
    v10 = sub_2759BA648();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315138;
      v13 = sub_2758937B8(v4, v5, &v30);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_275819000, v9, v10, "Unable to determine if app with bundle id: %s is installed or not.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v24 = sub_2759B89A8();
  __swift_project_value_buffer(v24, qword_2815ADE70);

  v25 = sub_2759B8988();
  v26 = sub_2759BA668();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = v28;
    *v27 = 136315138;
    v29 = sub_2758937B8(v4, v5, &v30);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_275819000, v25, v26, "App w/ bundleID %s is installed.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x277C85860](v28, -1, -1);
    MEMORY[0x277C85860](v27, -1, -1);
  }

  else
  {
  }

  return 1;
}

void _s14iCloudSettings01iA13HomeViewModelC27upgradeFlowManagerDidCancelyySo010ICQUpgradegH0CSgF_0()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_2815ADE70);
  oslog = sub_2759B8988();
  v1 = sub_2759BA648();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_275819000, oslog, v1, "Upgrade flow was cancelled.", v2, 2u);
    MEMORY[0x277C85860](v2, -1, -1);
  }
}

uint64_t _s14iCloudSettings01iA13HomeViewModelC29upgradeFlowManagerDidCompleteyySo010ICQUpgradegH0CSgF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - v4;
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v6 = sub_2759B89A8();
  __swift_project_value_buffer(v6, qword_2815ADE70);
  v7 = sub_2759B8988();
  v8 = sub_2759BA668();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_275819000, v7, v8, "Upgrade flow completed successfully!", v9, 2u);
    MEMORY[0x277C85860](v9, -1, -1);
  }

  v10 = sub_2759BA518();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_2759BA4C8();
  v11 = v1;
  v12 = sub_2759BA4B8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_27587D460(0, 0, v5, &unk_2759C8E30, v13);
}

void sub_27591DDF4(void *a1)
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = a1;
  oslog = sub_2759B8988();
  v4 = sub_2759BA648();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    if (a1)
    {
      v7 = a1;
      v8 = _swift_stdlib_bridgeErrorToNSError();
      v9 = v8;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    *(v5 + 4) = v8;
    *v6 = v9;
    _os_log_impl(&dword_275819000, oslog, v4, "Upgrade flow failed with error: %@", v5, 0xCu);
    sub_27586BF04(v6, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v6, -1, -1);
    MEMORY[0x277C85860](v5, -1, -1);
  }
}

void sub_27591DF64(void *a1, uint64_t a2, const char *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_2759B89A8();
  __swift_project_value_buffer(v5, a2);
  oslog = sub_2759B8988();
  v6 = sub_2759BA668();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_275819000, oslog, v6, a3, v7, 2u);
    MEMORY[0x277C85860](v7, -1, -1);
  }
}

id sub_27591E084@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 8);
  v5 = *v2;
  *a1 = *v2;
  a1[1] = v3;

  return v5;
}

unint64_t sub_27591E0C8()
{
  result = qword_280A10D58;
  if (!qword_280A10D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10D58);
  }

  return result;
}

unint64_t sub_27591E140()
{
  result = qword_280A10D70;
  if (!qword_280A10D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10D70);
  }

  return result;
}

uint64_t sub_27591E194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275918C34(a1, v4, v5, v6);
}

uint64_t sub_27591E248(uint64_t a1)
{
  v4 = *(sub_2759B8508() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585F7A0;

  return sub_275919E78(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_27591E3D8()
{
  result = qword_280A10D90;
  if (!qword_280A10D90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280A12840, &qword_2759C8E78);
    sub_27591EFC0(&qword_280A10D98, type metadata accessor for ManageStorageLiftUIDrilldownView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10D90);
  }

  return result;
}

uint64_t sub_27591E494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[20];
  v7 = v1[21];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275914538(a1, v4, v5, (v1 + 4), (v1 + 8), (v1 + 12), (v1 + 16), v6);
}

uint64_t sub_27591E568(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275915280(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_116(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27591E640(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 9u && ((1 << a3) & 0x3CD) != 0)
  {
  }

  return result;
}

uint64_t sub_27591E66C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_2759333E0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_27591E744(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275911788(a1, v4, v5, v7, v6);
}

uint64_t sub_27591E804(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27585A7E4;

  return sub_275918F00(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_131Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t objectdestroy_109Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_27591E968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275917E80(a1, v4, v5, v7, v6);
}

uint64_t sub_27591EA28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585F7A0;

  return sub_275917FA8(a1, v4, v5, v7, v6);
}

void sub_27591EAE8()
{
  v1 = *(sub_2759B8508() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_275919BC4(v2);
}

uint64_t sub_27591EB48(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2759B8508() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = v11[8];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_27585F7A0;

  return sub_2759156C4(a1, v7, v8, v9, v10, v1 + v6, v12, v13);
}

uint64_t sub_27591EC94(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_275917A88(a1, v4, v5, v6);
}

uint64_t sub_27591ED48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_27585F7A0;

  return sub_27591797C(a1, v4, v5, v6);
}

uint64_t sub_27591EDFC(uint64_t a1)
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
  v11[1] = sub_27585F7A0;

  return sub_275917370(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_27591EED8(uint64_t a1)
{
  v2 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27591EF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManageStorageLiftUIDrilldownView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27591EFC0(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27591F054(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27591F074(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

double sub_27591F0B4(uint64_t a1, int a2, uint64_t a3, int a4, char *a5)
{
  v117 = a5;
  v104 = a4;
  v112 = a3;
  v105 = a2;
  v93 = sub_2759B8E58();
  v106 = *(v93 - 8);
  v6 = *(v106 + 64);
  v7 = MEMORY[0x28223BE20](v93);
  v92 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v91 = &v87 - v9;
  v98 = type metadata accessor for TrimmingHStackLayout.RowItem();
  v110 = *(v98 - 8);
  v10 = *(v110 + 64);
  v11 = MEMORY[0x28223BE20](v98);
  v99 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v97 = &v87 - v14;
  MEMORY[0x28223BE20](v13);
  v114 = &v87 - v15;
  v16 = sub_2759B8F98();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v96 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v95 = &v87 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v87 - v24;
  MEMORY[0x28223BE20](v23);
  v109 = &v87 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DF0, &qword_2759C9250);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v87 - v30;
  v32 = sub_2759B9028();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v87 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v33;
  v37 = *(v33 + 16);
  v37(v36, v117, v32);
  v111 = a1;
  v38 = *&a1;
  v39 = v105;
  if (v105)
  {
    v40 = INFINITY;
  }

  else
  {
    v40 = v38;
  }

  v37(v31, v36, v32);
  v41 = *(v28 + 44);
  v42 = sub_27586D968();
  v88 = v36;
  sub_2759BA5B8();
  v113 = v42;
  sub_2759BA5D8();
  if (*&v31[v41] == v119)
  {
    v43 = 0.0;
    v117 = MEMORY[0x277D84F90];
  }

  else
  {
    v45 = v41;
    v116 = v25;
    v102 = 0;
    v46 = (v17 + 16);
    v115 = (v17 + 32);
    v90 = (v106 + 8);
    v94 = v17;
    v106 = v17 + 8;
    v43 = 0.0;
    v47 = MEMORY[0x277D84F90];
    v105 = v39 & 1;
    v104 &= 1u;
    v117 = MEMORY[0x277D84F90];
    v48 = 0.0;
    v108 = v32;
    v107 = v45;
    do
    {
      v49 = sub_2759BA5F8();
      v50 = *v46;
      v51 = v109;
      (*v46)(v109);
      v49(&v119, 0);
      sub_2759BA5E8();
      v52 = v116;
      v53 = *v115;
      (*v115)(v116, v51, v16);
      LOBYTE(v119) = v105;
      v118 = v104;
      sub_2759B8F68();
      v55 = v54;
      v57 = v56;
      v58 = v47[2];
      if (v58)
      {
        v101 = (*(v110 + 80) + 32) & ~*(v110 + 80);
        v100 = *(v110 + 72);
        sub_275920224(v47 + v101 + v100 * (v58 - 1), v114);
        if (v102)
        {
          (v50)(v95, v52, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_275870F2C(0, *(v117 + 2) + 1, 1, v117);
          }

          v60 = *(v117 + 2);
          v59 = *(v117 + 3);
          if (v60 >= v59 >> 1)
          {
            v117 = sub_275870F2C(v59 > 1, v60 + 1, 1, v117);
          }

          v61 = v117;
          *(v117 + 2) = v60 + 1;
          v53(&v61[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v60], v95, v16);
        }

        if (*(v103 + 32))
        {
          v62 = v91;
          sub_2759B8F88();
          v63 = v92;
          sub_2759B8F88();
          sub_2759B8E38();
          v65 = v64;
          v66 = *v90;
          v67 = v63;
          v68 = v93;
          (*v90)(v67, v93);
          v66(v62, v68);
        }

        else
        {
          v65 = *(v103 + 24);
        }

        v74 = v43 + v65;
        v75 = v55 + v43 + v65;
        if (v40 >= v75)
        {
          if (v48 <= v57)
          {
            v48 = v57;
          }

          v81 = v97;
          v82 = v116;
          (v50)(v97, v116, v16);
          v83 = v98;
          *(v81 + *(v98 + 20)) = v74;
          v84 = (v81 + *(v83 + 24));
          *v84 = v55;
          v84[1] = v57;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_275870F04(0, v47[2] + 1, 1, v47);
          }

          v32 = v108;
          v86 = v47[2];
          v85 = v47[3];
          if (v86 >= v85 >> 1)
          {
            v47 = sub_275870F04(v85 > 1, v86 + 1, 1, v47);
          }

          sub_275920288(v114);
          (*v106)(v82, v16);
          v47[2] = v86 + 1;
          sub_2759202E4(v97, v47 + v101 + v86 * v100);
          v43 = v75;
        }

        else
        {
          v76 = v116;
          (v50)(v96, v116, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v117 = sub_275870F2C(0, *(v117 + 2) + 1, 1, v117);
          }

          v77 = v94;
          v79 = *(v117 + 2);
          v78 = *(v117 + 3);
          if (v79 >= v78 >> 1)
          {
            v117 = sub_275870F2C(v78 > 1, v79 + 1, 1, v117);
          }

          sub_275920288(v114);
          (*(v77 + 8))(v76, v16);
          v80 = v117;
          *(v117 + 2) = v79 + 1;
          v53(&v80[((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v79], v96, v16);
          v102 = 1;
          v32 = v108;
        }
      }

      else
      {
        v69 = v99;
        (v50)(v99, v52, v16);
        v70 = v98;
        *(v69 + *(v98 + 20)) = 0;
        v71 = (v69 + *(v70 + 24));
        *v71 = v55;
        v71[1] = v57;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_275870F04(0, 1, 1, v47);
        }

        v32 = v108;
        v73 = v47[2];
        v72 = v47[3];
        if (v73 >= v72 >> 1)
        {
          v47 = sub_275870F04(v72 > 1, v73 + 1, 1, v47);
        }

        (*v106)(v52, v16);
        v47[2] = v73 + 1;
        sub_2759202E4(v99, v47 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v73);
        v48 = v57;
        v43 = v55;
      }

      sub_2759BA5D8();
    }

    while (*&v31[v107] != v119);
  }

  sub_275920348(v31);
  (*(v89 + 8))(v88, v32);
  return v43;
}

uint64_t sub_27591FBB0(uint64_t a1, int a2, uint64_t a3, int a4, char *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v77 = a5;
  v72 = a1;
  v18 = sub_2759B8F98();
  v70 = *(v18 - 8);
  v19 = *(v70 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for TrimmingHStackLayout.RowItem();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a2;
  v85 = a2 & 1;
  v79 = a4;
  v84 = a4 & 1;
  v74 = a3;
  v27 = sub_27591F0B4(a1, a2 & 1, a3, a4 & 1, v77);
  v29 = v28;
  v30 = v27;
  v32 = v31;
  v34 = v33;
  v35 = *(v9 + 16) == 1;
  v69 = v21;
  v68 = v18;
  v36 = v23;
  if (v35)
  {
    sub_2759BA028();
  }

  else
  {
    v37 = *v9;
    v38 = v9[1];
  }

  sub_27592E0F0();
  v41 = v40;
  v42 = *(*&v29 + 16);
  v71 = v34;
  if (v42)
  {
    v43 = *(v22 + 20);
    v76 = v26 + *(v22 + 24);
    v77 = v43;
    v44 = *&v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v45 = *(v36 + 72);
    v46 = v29;
    v75 = v39;

    v47 = v79;
    v48 = v73;
    v78 = a6;
    do
    {
      sub_275920224(v44, v26);
      v49 = *&v77[v26];
      v86.origin.x = a6;
      v86.origin.y = a7;
      v86.size.width = a8;
      v86.size.height = a9;
      v50 = v49 + CGRectGetMinX(v86);
      v87.origin.x = a6;
      v87.origin.y = a7;
      v87.size.width = a8;
      v87.size.height = a9;
      v51 = v50 + v75 * (CGRectGetWidth(v87) - v30);
      v88.origin.x = a6;
      v88.origin.y = a7;
      v88.size.width = a8;
      v88.size.height = a9;
      MinY = CGRectGetMinY(v88);
      CGPointMake(v53, v51, MinY + v41 * (v32 - *(v76 + 8)), v54);
      sub_2759BA0B8();
      v83 = v48 & 1;
      v82 = v47 & 1;
      a6 = v78;
      sub_2759B8F78();
      sub_275920288(v26);
      v44 += v45;
      --v42;
    }

    while (v42);
    v29 = v46;

    v34 = v71;
  }

  v55 = *(v34 + 16);
  if (v55)
  {
    v75 = v29;
    v56 = v32 * v41;
    v57 = *(v70 + 16);
    v58 = v34 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v76 = *(v70 + 72);
    v77 = v57;
    v59 = (v70 + 8);

    v60 = v73;
    v61 = v68;
    v62 = v69;
    do
    {
      (v77)(v62, v58, v61);
      v89.origin.x = a6;
      v89.origin.y = a7;
      v89.size.width = a8;
      v89.size.height = a9;
      v63 = CGRectGetMinY(v89);
      CGPointMake(v64, -1000.0, v56 + v63, v65);
      sub_2759BA0B8();
      v81 = v60 & 1;
      v80 = v79 & 1;
      sub_2759B8F78();
      (*v59)(v62, v61);
      v58 += v76;
      --v55;
    }

    while (v55);
  }
}

double sub_275920054(uint64_t a1, char a2, uint64_t a3, char a4, char *a5)
{
  v7 = sub_27591F0B4(a1, a2 & 1, a3, a4 & 1, a5);
  v9 = v8;
  if (a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = *&a1;
  }

  return CGPointMake(v11, v10, v9, v12);
}

void (*sub_2759200F8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2759B8D18();
  return sub_27586D848;
}

unint64_t sub_275920184()
{
  result = qword_280A10DE8;
  if (!qword_280A10DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10DE8);
  }

  return result;
}

uint64_t type metadata accessor for TrimmingHStackLayout.RowItem()
{
  result = qword_280A10DF8;
  if (!qword_280A10DF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275920224(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrimmingHStackLayout.RowItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275920288(uint64_t a1)
{
  v2 = type metadata accessor for TrimmingHStackLayout.RowItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2759202E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrimmingHStackLayout.RowItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275920348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10DF0, &qword_2759C9250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2759203D8()
{
  sub_2759B8F98();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_275920464()
{
  swift_getKeyPath();
  sub_275924074();
  sub_2759B8638();

  return *(v0 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading);
}

uint64_t sub_2759204DC(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__isLoading) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_275924074();
    sub_2759B8628();
  }

  return result;
}

uint64_t sub_2759205D4()
{
  swift_getKeyPath();
  sub_275924074();
  sub_2759B8638();

  v1 = *(v0 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages);
}

uint64_t sub_275920650(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages);
  *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel__overlayImages) = a2;
}

uint64_t sub_275920694@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v3 = *(v2 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  if (v3 >= 5)
  {
    v7 = *(v2 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);
    if (v7[2])
    {
      v4 = v7[4];
      v8 = v7[5];
      v9 = a1;

      a1 = v9;
      LOBYTE(v6) = 9;
    }

    else
    {
      result = 0;
      LOBYTE(v6) = 10;
      v4 = 9;
    }
  }

  else
  {
    v4 = *&aBackup_3[8 * v3];
    result = qword_2759C9410[v3];
    v6 = 0x909090A09uLL >> (8 * v3);
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = v6;
  return result;
}

uint64_t static ManageStorageAppViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_275861AF8(0, &qword_280A0F7B8, 0x277D82BB8);
  v4 = *(a1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v5 = *(a2 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v6 = v4;
  v7 = v5;
  LOBYTE(v5) = sub_2759BA788();

  return v5 & 1;
}

uint64_t sub_2759207D8()
{
  *(v1 + 16) = v0;
  sub_275861AF8(0, &qword_280A10E68, 0x277D1B1C8);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275920888;

  return sub_27586A7A8(0);
}

uint64_t sub_275920888(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_275920988, 0, 0);
}

uint64_t sub_275920988()
{
  v46 = v0;
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v3 = *(v2 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  if (!v3)
  {
    goto LABEL_4;
  }

  if (v3 == 1)
  {
    v3 = 4;
LABEL_4:
    v44 = 0x2D6C61636F6CLL;
    v45 = 0xE600000000000000;
    v4 = ICSIconUTTypeKey.utType.getter(v3);
    MEMORY[0x277C840E0](v4);

    v5 = (v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
    v6 = *(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8);
    *v5 = 0x2D6C61636F6CLL;
    v5[1] = 0xE600000000000000;

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_280A238A0);
    v8 = sub_2759B8988();
    v9 = sub_2759BA668();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v44 = v11;
      *v10 = 136315138;
      v12 = ICSIconUTTypeKey.utType.getter(v3);
      v14 = sub_2758937B8(v12, v13, &v44);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_275819000, v8, v9, "ManageStorageApp.fetchLocalTableImage graphicIcon: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x277C85860](v11, -1, -1);
      MEMORY[0x277C85860](v10, -1, -1);
    }

    v15 = v0[4];
    v16 = ICSIconUTTypeKey.utType.getter(v3);
    v18 = sub_275873EFC(v16, v17, v15);

    goto LABEL_9;
  }

  v21 = v0[4];
  v22 = *(v2 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);

  v18 = sub_275871298(v23, v21);
  v25 = v24;
  v27 = v26;

  if (v18)
  {
    v28 = v0[2];
    v44 = 0x2D6C61636F6CLL;
    v45 = 0xE600000000000000;
    MEMORY[0x277C840E0](v25, v27);
    v29 = (v28 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
    v30 = *(v28 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8);
    *v29 = 0x2D6C61636F6CLL;
    v29[1] = 0xE600000000000000;

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v31 = sub_2759B89A8();
    __swift_project_value_buffer(v31, qword_280A238A0);

    v15 = sub_2759B8988();
    v32 = sub_2759BA668();

    v33 = os_log_type_enabled(v15, v32);
    v34 = v0[4];
    if (v33)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315138;
      v37 = sub_2758937B8(v25, v27, &v44);

      *(v35 + 4) = v37;
      _os_log_impl(&dword_275819000, v15, v32, "ManageStorageApp.fetchLocalTableImage: local image, bundleId: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x277C85860](v36, -1, -1);
      MEMORY[0x277C85860](v35, -1, -1);

LABEL_9:
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v38 = sub_2759B89A8();
    __swift_project_value_buffer(v38, qword_280A238A0);
    v39 = sub_2759B8988();
    v40 = sub_2759BA638();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v0[4];
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_275819000, v39, v40, "ManageStorageApp.fetchLocalTableImage: no local image found", v43, 2u);
      MEMORY[0x277C85860](v43, -1, -1);
    }

    v18 = 0;
  }

LABEL_10:
  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_275920E30()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_2759B8508();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_275920F34, 0, 0);
}

uint64_t sub_275920F34()
{
  v1 = v0[2];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v0[8] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_iconUrls);
  v0[9] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_275921000;
  v5 = v0[3];

  return sub_2758F6610(v5);
}

uint64_t sub_275921000()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_275921114, 0, 0);
}

uint64_t sub_275921114()
{
  v49 = v0;
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_27585A458(v3);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v4 = v0[2];
    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = v4;
    v7 = sub_2759B8988();
    v8 = sub_2759BA648();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[8];
      v10 = v0[2];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v48[0] = v12;
      *v11 = 136315138;
      v13 = (*(v10 + v9) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v14 = *v13;
      v15 = v13[1];

      v16 = sub_2758937B8(v14, v15, v48);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_275819000, v7, v8, "%s: Unable to find url for icon", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x277C85860](v12, -1, -1);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    v18 = v0[6];
    v17 = v0[7];
    v19 = v0[3];

    v20 = v0[1];

    return v20(0);
  }

  else
  {
    v22 = v0[2];
    (*(v2 + 32))(v0[7], v3, v1);
    v48[0] = 0x2D65746F6D6572;
    v48[1] = 0xE700000000000000;
    v23 = sub_2759B8488();
    MEMORY[0x277C840E0](v23);

    v24 = (v22 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID);
    v25 = *(v22 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_imageAXID + 8);
    *v24 = 0x2D65746F6D6572;
    v24[1] = 0xE700000000000000;

    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v26 = v0[6];
    v27 = v0[7];
    v28 = v0[4];
    v29 = v0[5];
    v30 = sub_2759B89A8();
    __swift_project_value_buffer(v30, qword_280A238A0);
    (*(v29 + 16))(v26, v27, v28);
    v31 = sub_2759B8988();
    v32 = sub_2759BA668();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[5];
    v34 = v0[6];
    v36 = v0[4];
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v48[0] = v38;
      *v37 = 136315138;
      v46 = sub_2759B8488();
      v40 = v39;
      v41 = *(v35 + 8);
      v41(v34, v36);
      v42 = sub_2758937B8(v46, v40, v48);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_275819000, v31, v32, "ManageStorageApp.fetchRemoteTableImage: remote image, url: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x277C85860](v38, -1, -1);
      MEMORY[0x277C85860](v37, -1, -1);
    }

    else
    {

      v41 = *(v35 + 8);
      v41(v34, v36);
    }

    v0[11] = v41;
    if (*(*(v0[2] + v0[8]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle) == 1)
    {
      v47 = sub_27587348C;
      v43 = swift_task_alloc();
      v0[12] = v43;
      *v43 = v0;
      v44 = sub_27592161C;
    }

    else
    {
      v47 = sub_275873948;
      v43 = swift_task_alloc();
      v0[14] = v43;
      *v43 = v0;
      v44 = sub_2759217BC;
    }

    v43[1] = v44;
    v45 = v0[7];

    return v47(v45);
  }
}

uint64_t sub_27592161C(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_27592171C, 0, 0);
}

uint64_t sub_27592171C()
{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 88))(*(v0 + 56), *(v0 + 32));
  v2 = *(v0 + 104);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_2759217BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_275921988;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_2759218E8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2759218E8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 40) + 8;
  (*(v0 + 88))(*(v0 + 56), *(v0 + 32));
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 24);

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_275921988()
{
  v1 = *(v0 + 40) + 8;
  (*(v0 + 88))(*(v0 + 56), *(v0 + 32));
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 24);

  v5 = *(v0 + 8);

  return v5(0);
}

uint64_t sub_275921A1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_275921A3C, 0, 0);
}

uint64_t sub_275921A3C()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  v0[4] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_animationImage;
  if (*(v1 + v2))
  {
    v3 = v0[1];

    return v3();
  }

  else if (*(*(v1 + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_fetchLocally) == 1)
  {
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_275921BA4;
    v6 = v0[3];

    return sub_275921EEC();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_275921D80;
    v8 = v0[2];
    v9 = v0[3];

    return sub_2759224B0(v8);
  }
}

uint64_t sub_275921BA4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_275921CA4, 0, 0);
}

uint64_t sub_275921CA4()
{
  v1 = v0[6];
  if (v1)
  {
    v3 = v0[3];
    v2 = v0[4];
    v4 = *(v3 + v2);
    *(v3 + v2) = v1;

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_275921D80;
    v8 = v0[2];
    v9 = v0[3];

    return sub_2759224B0(v8);
  }
}

uint64_t sub_275921D80(uint64_t a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_275921E80, 0, 0);
}

uint64_t sub_275921E80()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_275921EEC()
{
  *(v1 + 16) = v0;
  sub_275861AF8(0, &qword_280A10E68, 0x277D1B1C8);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_275921F9C;

  return sub_27586A7A8(1);
}

uint64_t sub_275921F9C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_27592209C, 0, 0);
}

uint64_t sub_27592209C()
{
  v38 = v0;
  v1 = *(v0[2] + OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel);
  v2 = *(v1 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_category + 8);
  if (!v2)
  {
    goto LABEL_4;
  }

  if (v2 == 1)
  {
    v2 = 4;
LABEL_4:
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v3 = sub_2759B89A8();
    __swift_project_value_buffer(v3, qword_280A238A0);
    v4 = sub_2759B8988();
    v5 = sub_2759BA668();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v37 = v7;
      *v6 = 136315138;
      v8 = ICSIconUTTypeKey.utType.getter(v2);
      v10 = sub_2758937B8(v8, v9, &v37);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_275819000, v4, v5, "ManageStorageApp.fetchLocalAnimationImage graphicIcon: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x277C85860](v7, -1, -1);
      MEMORY[0x277C85860](v6, -1, -1);
    }

    v11 = v0[4];
    v12 = ICSIconUTTypeKey.utType.getter(v2);
    v14 = sub_275873EFC(v12, v13, v11);

    goto LABEL_9;
  }

  v17 = v0[4];
  v18 = *(v1 + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_bundleIds);

  v14 = sub_275871298(v19, v17);
  v21 = v20;
  v23 = v22;

  if (v14)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v24 = sub_2759B89A8();
    __swift_project_value_buffer(v24, qword_280A238A0);

    v11 = sub_2759B8988();
    v25 = sub_2759BA668();

    v26 = os_log_type_enabled(v11, v25);
    v27 = v0[4];
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v37 = v29;
      *v28 = 136315138;
      v30 = sub_2758937B8(v21, v23, &v37);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_275819000, v11, v25, "ManageStorageApp.fetchLocalAnimationImage bundleId: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x277C85860](v29, -1, -1);
      MEMORY[0x277C85860](v28, -1, -1);

LABEL_9:
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v31 = sub_2759B89A8();
    __swift_project_value_buffer(v31, qword_280A238A0);
    v32 = sub_2759B8988();
    v33 = sub_2759BA638();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v0[4];
    if (v34)
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_275819000, v32, v33, "ManageStorageApp.fetchLocalAnimationImage: no local image found", v36, 2u);
      MEMORY[0x277C85860](v36, -1, -1);
    }

    v14 = 0;
  }

LABEL_10:
  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_2759224B0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_2759B8508();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2759225FC, 0, 0);
}

uint64_t sub_2759225FC()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v0[15] = OBJC_IVAR____TtC14iCloudSettings25ManageStorageAppViewModel_dataModel;
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_detailViewIconUrls);
  v0[16] = v3;
  v3;
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = sub_2759226C8;
  v5 = v0[14];

  return sub_2758F6610(v5);
}

uint64_t sub_2759226C8()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2759227DC, 0, 0);
}

uint64_t sub_2759227DC()
{
  v96 = v0;
  v1 = v0[13];
  v2 = v0[4];
  v3 = v0[5];
  sub_2758BB4AC(v0[14], v1);
  v4 = *(v3 + 48);
  v0[18] = v4;
  v0[19] = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v2) = v4(v1, 1, v2);
  sub_27585A458(v1);
  if (v2 == 1)
  {
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v5 = v0[12];
    v6 = v0[2];
    v7 = sub_2759B89A8();
    __swift_project_value_buffer(v7, qword_280A238A0);
    sub_2758BB4AC(v6, v5);
    v8 = sub_2759B8988();
    v9 = sub_2759BA668();
    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[11];
      v10 = v0[12];
      v12 = v0[4];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v95 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_2758937B8(0xD000000000000027, 0x80000002759E1780, &v95);
      *(v13 + 12) = 2080;
      sub_2758BB4AC(v10, v11);
      v15 = v4(v11, 1, v12);
      v16 = v0[11];
      if (v15 == 1)
      {
        sub_27585A458(v0[11]);
        v17 = 0xE300000000000000;
        v18 = 7104878;
      }

      else
      {
        v93 = v14;
        v21 = v0[5];
        v92 = v0[4];
        v18 = sub_2759B8488();
        v17 = v22;
        (*(v21 + 8))(v16, v92);
        v14 = v93;
      }

      v19 = v0[14];
      sub_27585A458(v0[12]);
      v23 = sub_2758937B8(v18, v17, &v95);

      *(v13 + 14) = v23;
      _os_log_impl(&dword_275819000, v8, v9, "%s Could not find detail icon url, attempting to use fallback %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x277C85860](v14, -1, -1);
      MEMORY[0x277C85860](v13, -1, -1);
    }

    else
    {
      v19 = v0[14];
      v20 = v0[12];

      sub_27585A458(v20);
    }

    sub_27585A458(v19);
    sub_2758BB4AC(v0[2], v0[14]);
  }

  v24 = v0[10];
  v25 = v0[4];
  sub_2758BB4AC(v0[14], v24);
  LODWORD(v25) = v4(v24, 1, v25);
  sub_27585A458(v24);
  if (v25 == 1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v26 = v0[3];
    v27 = sub_2759B89A8();
    __swift_project_value_buffer(v27, qword_2815ADE70);
    v28 = v26;
    v29 = sub_2759B8988();
    v30 = sub_2759BA668();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[15];
      v32 = v0[3];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v95 = v34;
      *v33 = 136315138;
      v35 = (*(v32 + v31) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v36 = *v35;
      v37 = v35[1];

      v38 = sub_2758937B8(v36, v37, &v95);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_275819000, v29, v30, "%s: Unable to find detail view url or fallback url, attempting to user table icon", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x277C85860](v34, -1, -1);
      MEMORY[0x277C85860](v33, -1, -1);
    }

    v39 = *(*(v0[3] + v0[15]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_iconUrls);
    v0[20] = v39;
    v39;
    v40 = swift_task_alloc();
    v0[21] = v40;
    *v40 = v0;
    v40[1] = sub_2759231B4;
    v41 = v0[9];

    return sub_2758F6610(v41);
  }

  else
  {
    v44 = v0[18];
    v43 = v0[19];
    v45 = v0[8];
    v46 = v0[4];
    sub_2758BB4AC(v0[14], v45);
    if (v44(v45, 1, v46) == 1)
    {
      sub_27585A458(v0[8]);
      if (qword_2815ADD30 != -1)
      {
        swift_once();
      }

      v47 = v0[3];
      v48 = sub_2759B89A8();
      __swift_project_value_buffer(v48, qword_2815ADE70);
      v49 = v47;
      v50 = sub_2759B8988();
      v51 = sub_2759BA648();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = v0[14];
        v53 = v0[15];
        v54 = v0[3];
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v95 = v56;
        *v55 = 136315138;
        v57 = (*(v54 + v53) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
        v58 = *v57;
        v59 = v57[1];

        v60 = sub_2758937B8(v58, v59, &v95);

        *(v55 + 4) = v60;
        _os_log_impl(&dword_275819000, v50, v51, "%s: Unable to find any url for icon", v55, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x277C85860](v56, -1, -1);
        MEMORY[0x277C85860](v55, -1, -1);
      }

      else
      {
        v52 = v0[14];
      }

      sub_27585A458(v52);
      v79 = v0[13];
      v78 = v0[14];
      v81 = v0[11];
      v80 = v0[12];
      v83 = v0[9];
      v82 = v0[10];
      v85 = v0[7];
      v84 = v0[8];
      v86 = v0[6];

      v87 = v0[1];

      return v87(0);
    }

    else
    {
      (*(v0[5] + 32))(v0[7], v0[8], v0[4]);
      if (qword_280A0E338 != -1)
      {
        swift_once();
      }

      v61 = v0[6];
      v62 = v0[7];
      v63 = v0[4];
      v64 = v0[5];
      v65 = sub_2759B89A8();
      __swift_project_value_buffer(v65, qword_280A238A0);
      (*(v64 + 16))(v61, v62, v63);
      v66 = sub_2759B8988();
      v67 = sub_2759BA668();
      v68 = os_log_type_enabled(v66, v67);
      v70 = v0[5];
      v69 = v0[6];
      v71 = v0[4];
      if (v68)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v95 = v73;
        *v72 = 136315138;
        v94 = sub_2759B8488();
        v75 = v74;
        v76 = *(v70 + 8);
        v76(v69, v71);
        v77 = sub_2758937B8(v94, v75, &v95);

        *(v72 + 4) = v77;
        _os_log_impl(&dword_275819000, v66, v67, "ManageStorageApp.fetchRemoteAnimationImage using url: %s", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        MEMORY[0x277C85860](v73, -1, -1);
        MEMORY[0x277C85860](v72, -1, -1);
      }

      else
      {

        v76 = *(v70 + 8);
        v76(v69, v71);
      }

      v0[22] = v76;
      if (*(*(v0[3] + v0[15]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle) == 1)
      {
        v88 = swift_task_alloc();
        v0[23] = v88;
        *v88 = v0;
        v88[1] = sub_27592382C;
        v89 = v0[7];

        return sub_275872FC8(v89, 100.0, 100.0);
      }

      else
      {
        v90 = swift_task_alloc();
        v0[25] = v90;
        *v90 = v0;
        v90[1] = sub_275923A2C;
        v91 = v0[7];

        return sub_275873948(v91);
      }
    }
  }
}

uint64_t sub_2759231B4()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2759232C8, 0, 0);
}

uint64_t sub_2759232C8()
{
  v55 = v0;
  v1 = v0[14];
  v2 = v0[9];
  sub_27585A458(v1);
  sub_2758B4BD0(v2, v1);
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[8];
  v6 = v0[4];
  sub_2758BB4AC(v0[14], v5);
  if (v4(v5, 1, v6) == 1)
  {
    sub_27585A458(v0[8]);
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v7 = v0[3];
    v8 = sub_2759B89A8();
    __swift_project_value_buffer(v8, qword_2815ADE70);
    v9 = v7;
    v10 = sub_2759B8988();
    v11 = sub_2759BA648();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[14];
      v13 = v0[15];
      v14 = v0[3];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v54 = v16;
      *v15 = 136315138;
      v17 = (*(v14 + v13) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_label);
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_2758937B8(v18, v19, &v54);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_275819000, v10, v11, "%s: Unable to find any url for icon", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x277C85860](v16, -1, -1);
      MEMORY[0x277C85860](v15, -1, -1);
    }

    else
    {
      v12 = v0[14];
    }

    sub_27585A458(v12);
    v39 = v0[13];
    v38 = v0[14];
    v41 = v0[11];
    v40 = v0[12];
    v43 = v0[9];
    v42 = v0[10];
    v45 = v0[7];
    v44 = v0[8];
    v46 = v0[6];

    v47 = v0[1];

    return v47(0);
  }

  else
  {
    (*(v0[5] + 32))(v0[7], v0[8], v0[4]);
    if (qword_280A0E338 != -1)
    {
      swift_once();
    }

    v21 = v0[6];
    v22 = v0[7];
    v23 = v0[4];
    v24 = v0[5];
    v25 = sub_2759B89A8();
    __swift_project_value_buffer(v25, qword_280A238A0);
    (*(v24 + 16))(v21, v22, v23);
    v26 = sub_2759B8988();
    v27 = sub_2759BA668();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[5];
    v29 = v0[6];
    v31 = v0[4];
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v54 = v33;
      *v32 = 136315138;
      v53 = sub_2759B8488();
      v35 = v34;
      v36 = *(v30 + 8);
      v36(v29, v31);
      v37 = sub_2758937B8(v53, v35, &v54);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_275819000, v26, v27, "ManageStorageApp.fetchRemoteAnimationImage using url: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x277C85860](v33, -1, -1);
      MEMORY[0x277C85860](v32, -1, -1);
    }

    else
    {

      v36 = *(v30 + 8);
      v36(v29, v31);
    }

    v0[22] = v36;
    if (*(*(v0[3] + v0[15]) + OBJC_IVAR____TtC14iCloudSettings16ManageStorageApp_applySystemStyle) == 1)
    {
      v49 = swift_task_alloc();
      v0[23] = v49;
      *v49 = v0;
      v49[1] = sub_27592382C;
      v50 = v0[7];

      return sub_275872FC8(v50, 100.0, 100.0);
    }

    else
    {
      v51 = swift_task_alloc();
      v0[25] = v51;
      *v51 = v0;
      v51[1] = sub_275923A2C;
      v52 = v0[7];

      return sub_275873948(v52);
    }
  }
}

uint64_t sub_27592382C(uint64_t a1)
{
  v2 = *(*v1 + 184);
  v4 = *v1;
  *(*v1 + 192) = a1;

  return MEMORY[0x2822009F8](sub_27592392C, 0, 0);
}

uint64_t sub_27592392C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40) + 8;
  (*(v0 + 176))(*(v0 + 56), *(v0 + 32));
  sub_27585A458(v1);
  v3 = *(v0 + 192);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13(v3);
}

uint64_t sub_275923A2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;

  if (v1)
  {

    v7 = sub_275923C58;
  }

  else
  {
    *(v4 + 208) = a1;
    v7 = sub_275923B58;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_275923B58()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  v3 = *(v0 + 40) + 8;
  (*(v0 + 176))(*(v0 + 56), *(v0 + 32));
  sub_27585A458(v2);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  v9 = *(v0 + 72);
  v8 = *(v0 + 80);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);

  v13 = *(v0 + 8);

  return v13(v1);
}

uint64_t sub_275923C58()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 40) + 8;
  (*(v0 + 176))(*(v0 + 56), *(v0 + 32));
  sub_27585A458(v1);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12(0);
}

id ManageStorageAppViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManageStorageAppViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManageStorageAppViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ManageStorageAppViewModel()
{
  result = qword_280A10E58;
  if (!qword_280A10E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275923F34@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ManageStorageAppViewModel();
  result = sub_2759BA8D8();
  *a1 = result;
  return result;
}

uint64_t sub_275923F80()
{
  result = sub_2759B8678();
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

unint64_t sub_275924074()
{
  result = qword_280A12800;
  if (!qword_280A12800)
  {
    type metadata accessor for ManageStorageAppViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A12800);
  }

  return result;
}

uint64_t type metadata accessor for IfHealthEnabledView()
{
  result = qword_280A10E70;
  if (!qword_280A10E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_275924158()
{
  sub_27585AF10(319, &qword_280A0E6C8, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_27585AF10(319, &qword_280A0E6D0, MEMORY[0x277D231A8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_27585AF74();
      if (v2 <= 0x3F)
      {
        sub_275901A74();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void *sub_27592427C()
{
  v1 = sub_2759B93D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for IfHealthEnabledView() + 36);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = v7;
  }

  else
  {

    sub_2759BA658();
    v9 = sub_2759B97C8();
    sub_2759B88C8();

    sub_2759B93C8();
    swift_getAtKeyPath();
    sub_275827D68(v7, 0);
    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_2759243DC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E710, &qword_2759C0E60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - v4;
  v6 = sub_27592427C();
  if (v6)
  {
    v7 = v6;
    swift_getKeyPath();
    v12[1] = v7;
    sub_275924F1C(&qword_280A12810, type metadata accessor for ManageStorageAppsListViewModel);
    sub_2759B8638();

    v8 = v7[OBJC_IVAR____TtC14iCloudSettings30ManageStorageAppsListViewModel__healthEnabled];

    if (v8)
    {
      v9 = 24;
    }

    else
    {
      v9 = 28;
    }
  }

  else
  {
    v9 = 24;
  }

  v10 = type metadata accessor for IfHealthEnabledView();
  sub_27585BD94(v1 + *(v10 + v9), v5);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  sub_27585BE04();
  return sub_2759B95E8();
}

uint64_t sub_27592457C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_27592513C();
  *a2 = result;
  return result;
}

uint64_t sub_2759245AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27592513C();
  *a1 = result;
  return result;
}

uint64_t sub_2759245D4(uint64_t a1)
{
  v2 = sub_275924EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275924610(uint64_t a1)
{
  v2 = sub_275924EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27592464C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0E6B0, &qword_2759C0D00);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v40 = &v35 - v7;
  v8 = sub_2759B85A8();
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x28223BE20](v8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EA8, &qword_2759C95C0);
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  v15 = type metadata accessor for IfHealthEnabledView();
  v16 = *(*(v15 - 1) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19[2] = MEMORY[0x277D84F90];
  v20 = (v19 + *(v17 + 32));
  sub_2759B8C08();
  sub_275924F1C(&qword_280A0E6E0, MEMORY[0x277D23330]);
  v43 = sub_2759B9168();
  *v20 = v43;
  v20[1] = v21;
  v22 = v19 + v15[9];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275924EC8();
  v24 = v44;
  sub_2759BAC18();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v41;
    v44 = a1;
    v47 = 0;
    v26 = sub_2759BAA58();
    v29 = v27;
    v35 = v14;
    if (!v27)
    {
      sub_2759B8598();
      v30 = sub_2759B8588();
      v29 = v31;
      (*(v37 + 8))(v25, v38);
      v26 = v30;
    }

    *v19 = v26;
    v19[1] = v29;
    v41 = v29;
    sub_2759B8A38();
    v46 = 1;
    sub_275924F1C(&qword_280A0E738, MEMORY[0x277D231A8]);
    v32 = v40;
    v33 = v35;
    sub_2759BAA68();
    sub_27585C094(v32, v19 + v15[6]);
    v45 = 2;
    v34 = v39;
    sub_2759BAA68();
    (*(v42 + 8))(v33, v11);
    sub_27585C094(v34, v19 + v15[7]);
    sub_275924F64(v19, v36);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_275924FC8(v19);
  }
}

uint64_t sub_275924B48(uint64_t a1, uint64_t a2)
{
  v4 = sub_275924F1C(&qword_280A10E80, type metadata accessor for IfHealthEnabledView);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_275924BCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_275924F1C(&qword_280A10E88, type metadata accessor for IfHealthEnabledView);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_275924C48(uint64_t a1)
{
  v2 = sub_275924F1C(&qword_280A10E88, type metadata accessor for IfHealthEnabledView);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_275924CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_275924F1C(&qword_280A10EA0, type metadata accessor for IfHealthEnabledView);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_275924D80()
{
  sub_275924F1C(&qword_280A10E80, type metadata accessor for IfHealthEnabledView);
  sub_275924F1C(&qword_280A10E88, type metadata accessor for IfHealthEnabledView);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_275924EC8()
{
  result = qword_280A10EB0;
  if (!qword_280A10EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EB0);
  }

  return result;
}

uint64_t sub_275924F1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_275924F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IfHealthEnabledView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_275924FC8(uint64_t a1)
{
  v2 = type metadata accessor for IfHealthEnabledView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_275925038()
{
  result = qword_280A10EB8;
  if (!qword_280A10EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EB8);
  }

  return result;
}

unint64_t sub_275925090()
{
  result = qword_280A10EC0;
  if (!qword_280A10EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EC0);
  }

  return result;
}

unint64_t sub_2759250E8()
{
  result = qword_280A10EC8;
  if (!qword_280A10EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EC8);
  }

  return result;
}

uint64_t sub_27592513C()
{
  v0 = sub_2759BAA48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2759251A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10BE8, &qword_2759C8168);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2759C80F0;
  *(inited + 32) = sub_2759BA258();
  *(inited + 40) = sub_2759BA258();
  v1 = sub_2759BA258();
  v2 = *MEMORY[0x277CB8920];
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = *MEMORY[0x277CB89B8];
  v4 = *MEMORY[0x277CB8978];
  *(inited + 64) = *MEMORY[0x277CB89B8];
  *(inited + 72) = v4;
  v5 = qword_280A0E370;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v9 = qword_280A10ED0;
  *(inited + 80) = qword_280A10ED0;
  v10 = v9;
  v11 = sub_2759B5D0C(inited);
  swift_setDeallocating();
  type metadata accessor for Dataclass(0);
  result = swift_arrayDestroy();
  qword_280A10ED8 = v11;
  return result;
}

void sub_27592530C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v9 << 9) | (8 * v10)));
        v12 = sub_275925424();

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_275925424()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 40);
  sub_2759BA298();
  sub_2759BABD8();
  sub_2759BA328();
  v4 = sub_2759BAC08();

  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (1)
  {
    v8 = *(*(v2 + 48) + 8 * v6);
    v9 = sub_2759BA298();
    v11 = v10;
    if (v9 == sub_2759BA298() && v11 == v12)
    {
      break;
    }

    v14 = sub_2759BAAC8();

    if (v14)
    {
      goto LABEL_11;
    }

    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_11:
  v16 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v1;
  v20 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2758616D8();
    v18 = v20;
  }

  v15 = *(*(v18 + 48) + 8 * v6);
  sub_2759255B4(v6);
  *v1 = v20;
  return v15;
}

unint64_t sub_2759255B4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_2759BA848();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        sub_2759BA298();
        sub_2759BABD8();
        v13 = v12;
        sub_2759BA328();
        v14 = sub_2759BAC08();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_275925794(void *a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    if (qword_2815ADD30 != -1)
    {
LABEL_56:
      swift_once();
    }

    v9 = sub_2759B89A8();
    __swift_project_value_buffer(v9, qword_2815ADE70);
    v4 = sub_2759B8988();
    v10 = sub_2759BA648();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_275819000, v4, v10, "No iCloud account found, assuming true for allServicesDisabled.", v11, 2u);
      MEMORY[0x277C85860](v11, -1, -1);
    }

    goto LABEL_11;
  }

  if (a3)
  {
    v3 = qword_2815ADD30;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = sub_2759B89A8();
    __swift_project_value_buffer(v5, qword_2815ADE70);
    v6 = sub_2759B8988();
    v7 = sub_2759BA638();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "Keychain sync is enabled. Will return false for allServicesDisabled", v8, 2u);
      MEMORY[0x277C85860](v8, -1, -1);
    }

LABEL_11:
    return 0;
  }

  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = (a2 + 32);
    v67 = a1;
    while (1)
    {
      v15 = *v14;
      v16 = sub_2759BA298();
      v18 = v17;
      v19 = qword_280A0E370;
      v20 = v15;
      if (v19 != -1)
      {
        swift_once();
      }

      if (v16 == sub_2759BA298() && v18 == v21)
      {
      }

      else
      {
        v23 = sub_2759BAAC8();

        if ((v23 & 1) == 0 && [v67 isEnabledForDataclass_])
        {
          if (qword_2815ADD30 != -1)
          {
            swift_once();
          }

          v56 = sub_2759B89A8();
          __swift_project_value_buffer(v56, qword_2815ADE70);
          v57 = v20;
          v58 = sub_2759B8988();
          v59 = sub_2759BA638();

          if (os_log_type_enabled(v58, v59))
          {
            v60 = swift_slowAlloc();
            v61 = swift_slowAlloc();
            v70 = v61;
            *v60 = 136315138;
            v62 = sub_2759BA298();
            v64 = sub_2758937B8(v62, v63, &v70);

            *(v60 + 4) = v64;
            _os_log_impl(&dword_275819000, v58, v59, "Dataclass %s is enabled. Will return false for allServicesDisabled", v60, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v61);
            MEMORY[0x277C85860](v61, -1, -1);
            MEMORY[0x277C85860](v60, -1, -1);
          }

          else
          {
          }

          return 0;
        }
      }

      ++v14;
      if (!--v13)
      {
        goto LABEL_27;
      }
    }
  }

  v24 = a1;
LABEL_27:
  v25 = [a1 enabledDataclasses];
  if (v25)
  {
    v26 = v25;
    v69 = 0;
    type metadata accessor for Dataclass(0);
    sub_275926144();
    sub_2759BA578();
  }

  v27 = [objc_opt_self() sharedInstance];
  v28 = [v27 allBundleIDs];
  v29 = sub_2759BA3E8();

  v30 = *(v29 + 16);
  if (v30)
  {
    v31 = objc_opt_self();
    v32 = 0;
    v33 = (v29 + 40);
    v68 = v31;
    v65 = v30;
    do
    {
      if (v32 >= *(v29 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v42 = *(v33 - 1);
      v41 = *v33;

      v43 = sub_2759BA258();
      v44 = [v31 isSpecifierHiddenForBundleID:v43 ubiquityAccessManager:v27];

      if (v44)
      {
        if (qword_2815ADD30 != -1)
        {
          swift_once();
        }

        v45 = sub_2759B89A8();
        __swift_project_value_buffer(v45, qword_2815ADE70);

        v46 = sub_2759B8988();
        v47 = sub_2759BA638();

        if (os_log_type_enabled(v46, v47))
        {
          v34 = v29;
          v35 = v27;
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v70 = v37;
          *v36 = 136315138;
          v38 = sub_2758937B8(v42, v41, &v70);

          *(v36 + 4) = v38;
          _os_log_impl(&dword_275819000, v46, v47, "Bundle ID %s is hidden. Skipping...", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v37);
          v39 = v37;
          v31 = v68;
          MEMORY[0x277C85860](v39, -1, -1);
          v40 = v36;
          v27 = v35;
          v29 = v34;
          v30 = v65;
          MEMORY[0x277C85860](v40, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        v48 = sub_2759BA258();
        v49 = [v31 appAccessGrantedForBundleID:v48 ubiquityAccessManager:v27];

        LODWORD(v48) = [v49 BOOLValue];
        if (v48)
        {

          if (qword_2815ADD30 != -1)
          {
            swift_once();
          }

          v50 = sub_2759B89A8();
          __swift_project_value_buffer(v50, qword_2815ADE70);

          v51 = sub_2759B8988();
          v52 = sub_2759BA638();

          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            v54 = swift_slowAlloc();
            v70 = v54;
            *v53 = 136315138;
            v55 = sub_2758937B8(v42, v41, &v70);

            *(v53 + 4) = v55;
            _os_log_impl(&dword_275819000, v51, v52, "Bundle ID %s is enabled. Will return false for allServicesDisabled", v53, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v54);
            MEMORY[0x277C85860](v54, -1, -1);
            MEMORY[0x277C85860](v53, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        v31 = v68;
      }

      ++v32;
      v33 += 2;
    }

    while (v30 != v32);
  }

  return 1;
}

unint64_t sub_275926144()
{
  result = qword_280A0E4F0;
  if (!qword_280A0E4F0)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0E4F0);
  }

  return result;
}

uint64_t InformationSection.init(viewModel:)@<X0>(void *a1@<X8>)
{
  type metadata accessor for iCloudHomeViewModel();
  result = sub_2759B9D58();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t InformationSection.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EE0, &unk_2759C97C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102C0, &qword_2759C63B8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v48 - v10;
  v12 = sub_2759B83B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  v20 = *v1;
  v57 = v1[1];
  v58 = v20;
  v60 = v20;
  v61 = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  v21 = v59;
  iCloudHomeViewModel.informationCardMessage()(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2759266A4(v11);
    v22 = 1;
  }

  else
  {
    (*(v13 + 32))(v19, v11, v12);
    (*(v13 + 16))(v17, v19, v12);
    v23 = sub_2759B99A8();
    v25 = v24;
    v27 = v26;
    v53 = v19;
    sub_2759B9848();
    v56 = a1;
    v28 = sub_2759B9988();
    v54 = v4;
    v55 = v3;
    v29 = v28;
    v31 = v30;
    v51 = v13;
    v52 = v12;
    v33 = v32;

    sub_27589F328(v23, v25, v27 & 1);

    v60 = sub_2759B9C18();
    v49 = sub_2759B9958();
    v50 = v34;
    v36 = v35;
    v38 = v37;
    v39 = v31;
    v3 = v55;
    sub_27589F328(v29, v39, v33 & 1);

    KeyPath = swift_getKeyPath();
    v41 = swift_allocObject();
    v43 = v57;
    v42 = v58;
    *(v41 + 16) = v58;
    *(v41 + 24) = v43;
    v44 = &v7[*(v3 + 36)];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EE8, &qword_2759C9808) + 28);

    v46 = v42;
    v4 = v54;
    sub_2759B8FB8();
    (*(v51 + 8))(v53, v52);
    *v44 = KeyPath;
    a1 = v56;
    *v7 = v49;
    *(v7 + 1) = v36;
    v7[16] = v38 & 1;
    *(v7 + 3) = v50;
    sub_27592684C(v7, a1);
    v22 = 0;
  }

  return (*(v4 + 56))(a1, v22, 1, v3);
}

uint64_t sub_2759266A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A102C0, &qword_2759C63B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27592670C(uint64_t a1)
{
  v2 = sub_2759B8FC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2759B9328();
}

uint64_t sub_2759267D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6A0, &qword_2759C97D0);
  sub_2759B9D68();
  _s14iCloudSettings01iA13HomeViewModelC17handleInfoCardURL3urly10Foundation0I0V_tF_0(a1);

  return sub_2759B8FA8();
}

uint64_t sub_275926844(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_2759267D4(a1);
}

uint64_t sub_27592684C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10EE0, &unk_2759C97C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2759268EC()
{
  result = qword_280A10EF0;
  if (!qword_280A10EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10EF8, &qword_2759C98B8);
    sub_275926970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10EF0);
  }

  return result;
}

unint64_t sub_275926970()
{
  result = qword_280A10F00;
  if (!qword_280A10F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10EE0, &unk_2759C97C0);
    sub_2759269FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F00);
  }

  return result;
}

unint64_t sub_2759269FC()
{
  result = qword_280A10F08;
  if (!qword_280A10F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10EE8, &qword_2759C9808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F08);
  }

  return result;
}

id iCloudHomeDataController.__allocating_init(account:launchedFromRootLevel:)(void *a1, char a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___ICSHomeDataController_account] = a1;
  v6 = type metadata accessor for iCloudNetworkRequest();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = a1;
  sub_2759B8718();
  v11 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v5[OBJC_IVAR___ICSHomeDataController_networkRequest] = v9;
  v14.receiver = v5;
  v14.super_class = v2;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

uint64_t sub_275926B58()
{
  sub_2759BABD8();
  MEMORY[0x277C84980](0);
  return sub_2759BAC08();
}

uint64_t sub_275926BC4()
{
  sub_2759BABD8();
  MEMORY[0x277C84980](0);
  return sub_2759BAC08();
}

uint64_t sub_275926C04()
{
  sub_2759B86C8();
  result = sub_2759B86B8();
  qword_2815ADD58 = result;
  return result;
}

id iCloudHomeDataController.__allocating_init(account:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAccount:a1 launchedFromRootLevel:1];

  return v3;
}

id iCloudHomeDataController.init(account:)(void *a1)
{
  v3 = [v1 initWithAccount:a1 launchedFromRootLevel:1];

  return v3;
}

id iCloudHomeDataController.init(account:launchedFromRootLevel:)(void *a1, char a2)
{
  v3 = sub_275929A14(a1, a2);

  return v3;
}

uint64_t sub_275926D50(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 64) = a1;
  return MEMORY[0x2822009F8](sub_275926D74, 0, 0);
}

uint64_t sub_275926D74()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___ICSHomeDataController_account);
  v2 = [v1 aa_altDSID];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2759BA298();
    v6 = v5;

    if (qword_2815ADD50 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 24);
    v8 = *(v0 + 64);
    sub_2759BA8C8();

    MEMORY[0x277C840E0](v4, v6);
    *(v0 + 32) = 0x80000002759E1840;
    v9 = swift_allocObject();
    *(v0 + 40) = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v4;
    *(v9 + 32) = v6;
    *(v9 + 40) = v7;
    v10 = *(MEMORY[0x277CE47E0] + 4);
    v24 = (*MEMORY[0x277CE47E0] + MEMORY[0x277CE47E0]);
    v11 = v7;
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    v13 = type metadata accessor for iCloudHomeDataModel();
    *v12 = v0;
    v12[1] = sub_27589B7FC;

    return v24(v0 + 16, 0xD000000000000019, 0x80000002759E1840, &unk_2759C98D8, v9, v13);
  }

  else
  {
    if (qword_2815ADD20 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 24);
    v16 = sub_2759B89A8();
    __swift_project_value_buffer(v16, qword_2815ADE58);
    v17 = v15;
    v18 = sub_2759B8988();
    v19 = sub_2759BA668();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v1;
      *v21 = v1;
      v22 = v1;
      _os_log_impl(&dword_275819000, v18, v19, "Found no altDSID for account: %@", v20, 0xCu);
      sub_27586BF04(v21, &unk_280A0FDE0, &unk_2759C2650);
      MEMORY[0x277C85860](v21, -1, -1);
      MEMORY[0x277C85860](v20, -1, -1);
    }

    sub_27589C1B0();
    swift_allocError();
    swift_willThrow();
    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_2759270E4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 88) = a2;
  *(v5 + 40) = a1;
  *(v5 + 48) = a3;
  return MEMORY[0x2822009F8](sub_27592710C, 0, 0);
}

uint64_t sub_27592710C()
{
  if (*(v0 + 88) != 1)
  {
    if (qword_2815ADD20 != -1)
    {
      swift_once();
    }

    v12 = sub_2759B89A8();
    __swift_project_value_buffer(v12, qword_2815ADE58);
    v6 = sub_2759B8988();
    v7 = sub_2759BA668();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_21;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "iCloudHome Cache is ignored!!";
    goto LABEL_20;
  }

  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = sub_2759B89A8();
  __swift_project_value_buffer(v1, qword_2815ADE58);
  v2 = sub_2759B8988();
  v3 = sub_2759BA668();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_275819000, v2, v3, "Cache is NOT ignored. Fetching iCloudHome data from cache.", v4, 2u);
    MEMORY[0x277C85860](v4, -1, -1);
  }

  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v5 = sub_2758B26E4(*(v0 + 48), *(v0 + 56));
  v6 = sub_2759B8988();
  v7 = sub_2759BA668();
  v8 = os_log_type_enabled(v6, v7);
  if (v5)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_275819000, v6, v7, "Cache hit. Returning iCloudHome cached data.", v9, 2u);
      MEMORY[0x277C85860](v9, -1, -1);
    }

    **(v0 + 40) = v5;
    v10 = *(v0 + 8);

    return v10();
  }

  if (v8)
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "No iCloudHome cache exist.";
LABEL_20:
    _os_log_impl(&dword_275819000, v6, v7, v14, v13, 2u);
    MEMORY[0x277C85860](v13, -1, -1);
  }

LABEL_21:

  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v15 = sub_2759B89A8();
  __swift_project_value_buffer(v15, qword_2815ADE58);
  v16 = sub_2759B8988();
  v17 = sub_2759BA668();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_275819000, v16, v17, "Initiating network request to fetch iCloudHome data.", v18, 2u);
    MEMORY[0x277C85860](v18, -1, -1);
  }

  v19 = *(v0 + 64);

  v20 = *(v19 + OBJC_IVAR___ICSHomeDataController_networkRequest);
  v21 = swift_task_alloc();
  *(v0 + 72) = v21;
  *v21 = v0;
  v21[1] = sub_275927500;

  return sub_2758B6BBC();
}

uint64_t sub_275927500(uint64_t a1)
{
  v3 = *(*v2 + 72);
  v4 = *v2;
  *(v4 + 80) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_275927634, 0, 0);
}

uint64_t sub_275927634()
{
  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = qword_2815ADE88;
  v4 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock;
  v5 = *(qword_2815ADE88 + OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_unfairLock);
  v6 = *(v0 + 80);
  os_unfair_lock_lock(v5);
  v7 = OBJC_IVAR____TtC14iCloudSettings24iCloudHomeDataModelCache_dataModelCache;
  swift_beginAccess();
  v8 = v6;

  v9 = *(v3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + v7);
  *(v3 + v7) = 0x8000000000000000;
  sub_27590673C(v8, v2, v1, isUniquelyReferenced_nonNull_native);

  *(v3 + v7) = v13;
  swift_endAccess();
  os_unfair_lock_unlock(*(v3 + v4));

  **(v0 + 40) = *(v0 + 80);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_275927914(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_27589BDF0;

  return sub_275926D50(a1);
}

uint64_t sub_2759279D0(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_275927A64;

  return sub_275926D50(a1);
}

uint64_t sub_275927A64(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 16);
  v7 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v1;

  if (v1)
  {
    v5 = sub_275927C60;
  }

  else
  {
    v5 = sub_275927B78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_275927B78()
{
  v1 = *(v0 + 24);
  if (*(*(*&v1[OBJC_IVAR___ICSHomeDataModel_headerCard] + OBJC_IVAR____TtC14iCloudSettings10HeaderCard_storageSummary) + OBJC_IVAR____TtC14iCloudSettings14StorageSummary_totalStorageInBytes))
  {
    result = NSLocalizedFileSizeDescription();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = *(v0 + 24);
    v5 = sub_2759BA298();
    v7 = v6;
  }

  else
  {

    v5 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = *(v0 + 8);

  return v8(v5, v7);
}

uint64_t sub_275927C60()
{
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Failed to fetch iCloudHome data w/ error: %@. Returning empty string.", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = *(v0 + 32);

  v12 = *(v0 + 8);

  return v12(0, 0xE000000000000000);
}

uint64_t sub_275927F84(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_275928040;

  return sub_2759279D0(a1);
}

uint64_t sub_275928040()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v4 = sub_2759BA258();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

id sub_2759281A8()
{
  if (qword_2815ADD40 != -1)
  {
    swift_once();
  }

  result = [*(v0 + OBJC_IVAR___ICSHomeDataController_account) aa_altDSID];
  if (result)
  {
    v2 = result;
    v3 = sub_2759BA298();
    v5 = v4;

    v6 = sub_2758B26E4(v3, v5);

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_275928338(char a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_2759BA518();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = v3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 56) = a3;
  v13 = v3;
  sub_275929C8C(a2);
  sub_27587D460(0, 0, v10, &unk_2759C98F8, v12);
}

uint64_t sub_275928464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  *v9 = v7;
  v9[1] = sub_275928504;

  return sub_275926D50(a5);
}

uint64_t sub_275928504(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v7 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v5 = sub_27592875C;
  }

  else
  {
    v5 = sub_275928618;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_275928618()
{
  v1 = v0[5];
  v2 = OBJC_IVAR___ICSHomeDataModel_headerCard;
  v3 = v0[2];
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
  v6 = v5;
  v7 = v0[5];
  if (v3)
  {
    v9 = v0[2];
    v8 = v0[3];
    v10 = v4;
    v9(v4, v6);

    v4 = v10;
    v11 = v7;
  }

  else
  {
    v11 = v5;
    v6 = v0[5];
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_27592875C()
{
  if (qword_2815ADD20 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE58);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA648();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_275819000, v4, v5, "Failed to fetch iCloudHome data w/ error: %@.", v7, 0xCu);
    sub_27586BF04(v8, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v8, -1, -1);
    MEMORY[0x277C85860](v7, -1, -1);
  }

  v11 = v0[2];

  v12 = v0[6];
  if (v11)
  {
    v13 = v0[3];
    (v0[2])(0, 0);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_275928A78(uint64_t a1, uint64_t a2)
{
  v5 = sub_2759B8508();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  sub_2759BA4D8();
  v12 = sub_2759BA518();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v2;
  (*(v6 + 32))(&v14[v13], &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *&v14[(v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  v15 = v2;

  sub_27587D460(0, 0, v11, &unk_2759C2948, v14);
}

uint64_t sub_275928C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_275928CA0, 0, 0);
}

uint64_t sub_275928CA0()
{
  v1 = *(v0[2] + OBJC_IVAR___ICSHomeDataController_networkRequest);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_275928D44;
  v4 = v0[3];
  v3 = v0[4];

  return sub_2758B7EE8(v4, v3);
}

uint64_t sub_275928D44(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_275929018;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v7 = sub_275928E70;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_275928E70()
{
  if (*(v0 + 56) == 1)
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v1 = sub_2759B89A8();
    __swift_project_value_buffer(v1, qword_2815ADE70);
    v2 = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Stateful header impression reported successfully.";
LABEL_10:
      _os_log_impl(&dword_275819000, v2, v3, v5, v4, 2u);
      MEMORY[0x277C85860](v4, -1, -1);
    }
  }

  else
  {
    if (qword_2815ADD30 != -1)
    {
      swift_once();
    }

    v6 = sub_2759B89A8();
    __swift_project_value_buffer(v6, qword_2815ADE70);
    v2 = sub_2759B8988();
    v3 = sub_2759BA668();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Failed to report stateful header impression.";
      goto LABEL_10;
    }
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_275929018()
{
  if (qword_2815ADD30 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_2759B89A8();
  __swift_project_value_buffer(v2, qword_2815ADE70);
  v3 = v1;
  v4 = sub_2759B8988();
  v5 = sub_2759BA668();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 48);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_275819000, v4, v5, "Failed to report stateful header impression with error: %@", v8, 0xCu);
    sub_27586BF04(v9, &unk_280A0FDE0, &unk_2759C2650);
    MEMORY[0x277C85860](v9, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

id iCloudHomeDataController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id iCloudHomeDataController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudHomeDataController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_275929558(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_27585F7A0;

  return v7();
}

uint64_t sub_275929640(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_27585A7E4;

  return v8();
}

uint64_t sub_275929728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_2758AD388(a3, v25 - v11);
  v13 = sub_2759BA518();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_27586BF04(v12, &unk_280A0E510, &qword_2759C33C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2759BA508();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_2759BA468();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_2759BA308() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);

    return v23;
  }

LABEL_8:
  sub_27586BF04(a3, &unk_280A0E510, &qword_2759C33C0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_275929A14(void *a1, char a2)
{
  *&v2[OBJC_IVAR___ICSHomeDataController_account] = a1;
  v5 = type metadata accessor for iCloudNetworkRequest();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a1;
  sub_2759B8718();
  v10 = [objc_opt_self() sharedSession];
  sub_2759B86D8();
  *&v2[OBJC_IVAR___ICSHomeDataController_networkRequest] = v8;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for iCloudHomeDataController();
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t sub_275929AF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_2759270E4(a1, v4, v5, v6, v7);
}

uint64_t sub_275929BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585F7A0;

  return sub_275928464(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_275929C8C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of iCloudHomeDataController.fetchiCloudHomeDataModel(allowCache:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275875130;

  return v8(a1);
}

uint64_t dispatch thunk of iCloudHomeDataController.fetchCloudStorage(allowCache:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_275929F4C;

  return v8(a1);
}

uint64_t sub_275929F4C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

unint64_t sub_27592A100()
{
  result = qword_280A10F20;
  if (!qword_280A10F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F20);
  }

  return result;
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = sub_2759B8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
    v2 = *(v0 + 56);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_27592A284(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v9 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_27585A7E4;

  return sub_275928464(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_27592A374()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_275927F84(v2, v4, v3);
}

uint64_t sub_27592A428(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_27585F7A0;

  return sub_275893544(a1, v5);
}

uint64_t objectdestroy_35Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_27592A520()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_27585F7A0;

  return sub_275927914(v2, v4, v3);
}

uint64_t sub_27592A5D4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_27592A688;
  v6[3] = &block_descriptor_8;
  v4 = _Block_copy(v6);

  [v3 fetchBannerModels_];
  _Block_release(v4);
}

uint64_t sub_27592A688(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_27592A798();
    v2 = sub_2759BA3E8();
  }

  v4(v2);
}

uint64_t sub_27592A700()
{
  v1 = [*v0 privateRelayStatusText];
  v2 = sub_2759BA298();

  return v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27592A798()
{
  result = qword_280A10F28;
  if (!qword_280A10F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280A10F28);
  }

  return result;
}

uint64_t sub_27592A7FC()
{
  v0 = objc_opt_self();
  v1 = sub_2759BA258();
  v2 = [v0 br:v1 getDomainIdentifierForACAccountID:?];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2759BA298();

  return v3;
}

id sub_27592A898()
{
  v0 = sub_2759BA258();
  v1 = [objc_opt_self() accountDescriptorForAccountID_];

  return v1;
}

id sub_27592A8EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_opt_self();
  v5 = sub_2759BA258();
  v6 = [v4 br:v5 getProviderDomainIDForDomainIdentifier:a3 & 1 dataSeparated:?];

  return v6;
}

uint64_t type metadata accessor for iCloudPlusSection()
{
  result = qword_280A10F30;
  if (!qword_280A10F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27592AAEC()
{
  type metadata accessor for iCloudHomeViewModel();
  if (v0 <= 0x3F)
  {
    sub_27592AB70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27592AB70()
{
  if (!qword_280A10F40)
  {
    sub_2759B8F58();
    v0 = sub_2759BA7D8();
    if (!v1)
    {
      atomic_store(v0, &qword_280A10F40);
    }
  }
}

uint64_t sub_27592ABE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F70, &unk_2759C9C00);
  v3 = *(*(v75 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v75);
  v77 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v76 = (&v69 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F600, &qword_2759C4210);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = &v69 - v9;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10500, &qword_2759C9C10);
  v10 = *(*(v70 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v70);
  v74 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v69 = &v69 - v14;
  MEMORY[0x28223BE20](v13);
  v72 = &v69 - v15;
  v73 = a1;
  v16 = *a1;
  swift_getKeyPath();
  v79 = v16;
  sub_27586BDE8();
  sub_2759B8638();

  v17 = OBJC_IVAR____TtC14iCloudSettings19iCloudHomeViewModel__dataModel;
  swift_beginAccess();
  v18 = *(v16 + v17);
  if (v18 && (v19 = *(v18 + OBJC_IVAR___ICSHomeDataModel_icloudPlusCard)) != 0)
  {
    v20 = (v19 + OBJC_IVAR____TtC14iCloudSettings14iCloudPlusCard_title);
    v21 = *v20;
    v22 = v20[1];
  }

  else
  {
    type metadata accessor for iCloudHomeViewModel();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    v21 = sub_2759B83C8();
    v22 = v25;
  }

  v79 = v21;
  v80 = v22;
  sub_27589F2D4();
  v26 = sub_2759B99C8();
  v28 = v27;
  v30 = v29;
  sub_2759B9858();
  v31 = sub_2759B9988();
  v33 = v32;
  v35 = v34;

  sub_27589F328(v26, v28, v30 & 1);

  v79 = sub_2759B9C68();
  v36 = sub_2759B9958();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_27589F328(v31, v33, v35 & 1);

  v79 = v36;
  v80 = v38;
  v43 = v40 & 1;
  v81 = v40 & 1;
  v82 = v42;
  v44 = v71;
  sub_2759B9B38();
  sub_27589F328(v36, v38, v43);

  LOBYTE(v26) = sub_2759B97F8();
  sub_2759B8D78();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v69;
  sub_27589F26C(v44, v69, &qword_280A0F600, &qword_2759C4210);
  v54 = v53 + *(v70 + 36);
  *v54 = v26;
  *(v54 + 8) = v46;
  *(v54 + 16) = v48;
  *(v54 + 24) = v50;
  *(v54 + 32) = v52;
  *(v54 + 40) = 0;
  v55 = v72;
  sub_27589F26C(v53, v72, &qword_280A10500, &qword_2759C9C10);
  v56 = *(type metadata accessor for iCloudPlusSection() + 20);
  v57 = v73;
  sub_275884F1C(v73 + v56);
  v59 = v58;
  v60 = sub_2758965BC(v57 + v56);
  KeyPath = swift_getKeyPath();
  v62 = v76;
  *v76 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A0F6E8, &qword_2759C9C70);
  swift_storeEnumTagMultiPayload();
  v64 = v74;
  v63 = v75;
  *(v62 + *(v75 + 44)) = v59;
  *(v62 + *(v63 + 48)) = v60;
  sub_27586FBC8(v55, v64, &qword_280A10500, &qword_2759C9C10);
  v65 = v77;
  sub_27586FBC8(v62, v77, &qword_280A10F70, &unk_2759C9C00);
  v66 = v78;
  sub_27586FBC8(v64, v78, &qword_280A10500, &qword_2759C9C10);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F78, qword_2759C9C78);
  sub_27586FBC8(v65, v66 + *(v67 + 48), &qword_280A10F70, &unk_2759C9C00);
  sub_27586BF04(v62, &qword_280A10F70, &unk_2759C9C00);
  sub_27586BF04(v55, &qword_280A10500, &qword_2759C9C10);
  sub_27586BF04(v65, &qword_280A10F70, &unk_2759C9C00);
  return sub_27586BF04(v64, &qword_280A10500, &qword_2759C9C10);
}

uint64_t sub_27592B22C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2();
  sub_2759B8D78();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_27586FBC8(a1, a3, &qword_280A10F48, &qword_2759C9BE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F58, &qword_2759C9BF8);
  v15 = a3 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_27592B2D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F48, &qword_2759C9BE8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  *v4 = sub_2759B94F8();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F50, &qword_2759C9BF0);
  sub_27592ABE4(v0, &v4[*(v5 + 44)]);
  sub_2759B9FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A10F58, &qword_2759C9BF8);
  sub_27592B448();
  sub_27592B4AC();
  sub_2759B9B98();
  return sub_27586BF04(v4, &qword_280A10F48, &qword_2759C9BE8);
}

unint64_t sub_27592B448()
{
  result = qword_280A10F60;
  if (!qword_280A10F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F48, &qword_2759C9BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F60);
  }

  return result;
}

unint64_t sub_27592B4AC()
{
  result = qword_280A10F68;
  if (!qword_280A10F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A10F58, &qword_2759C9BF8);
    sub_27592B448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A10F68);
  }

  return result;
}

uint64_t sub_27592B550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_2759BA4C8();
  v5[5] = sub_2759BA4B8();
  v7 = sub_2759BA468();

  return MEMORY[0x2822009F8](sub_27592B5EC, v7, v6);
}

uint64_t sub_27592B5EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  v3 = v2 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_flowCompletionDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 32);
    v6 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v5, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  **(v0 + 16) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

void sub_27592B764(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(a4, a5);
}

id sub_27592B878()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicUIFlowController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27592B91C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_flowCompletionDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_27592B968(uint64_t a1, uint64_t a2)
{
  v2 = sub_27592B994(a1, a2);
  v3 = v2;
  return v2;
}

uint64_t sub_27592B994(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_2759BA258();
  v6 = sub_2759BA258();
  v7 = [objc_opt_self() bagForProfile:v5 profileVersion:v6];

  v8 = objc_allocWithZone(MEMORY[0x277CEE8C8]);
  v9 = v7;
  v10 = sub_2759B84B8();
  v11 = [v8 initWithBag:v9 URL:v10];

  v12 = OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI;
  v13 = *(v3 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI);
  *(v3 + OBJC_IVAR____TtC14iCloudSettings23DynamicUIFlowController_dynamicUI) = v11;
  v14 = v11;

  [v14 setAccount_];
  v15 = *(v3 + v12);
  if (v15)
  {
    v16 = v15;
    [v16 setDelegate_];
  }

  return *(v3 + v12);
}

void sub_27592BAE0(void *a1, void *a2)
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = a1;
  v6 = a2;
  oslog = sub_2759B8988();
  v7 = sub_2759BA638();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_2758937B8(0xD000000000000035, 0x80000002759E1AE0, &v16);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    *(v8 + 22) = 2112;
    v11 = v5;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v8 + 24) = v13;
    v9[1] = v14;
    _os_log_impl(&dword_275819000, oslog, v7, "%s result: %@ error: %@", v8, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }
}

uint64_t sub_27592BCE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0E510, &qword_2759C33C0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v29 - v8;
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v10 = sub_2759B89A8();
  __swift_project_value_buffer(v10, qword_280A238E8);
  v11 = a1;
  v12 = a2;
  v13 = sub_2759B8988();
  v14 = sub_2759BA638();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v15 = 136315650;
    *(v15 + 4) = sub_2758937B8(0xD00000000000002DLL, 0x80000002759E1AB0, &v30);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v11;
    *v16 = a1;
    *(v15 + 22) = 2112;
    v18 = v11;
    if (a2)
    {
      v19 = a2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      v21 = v20;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    *(v15 + 24) = v20;
    v16[1] = v21;
    _os_log_impl(&dword_275819000, v13, v14, "%s result: %@ error: %@", v15, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x277C85860](v17, -1, -1);
    MEMORY[0x277C85860](v15, -1, -1);
  }

  v22 = sub_2759BA518();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_2759BA4C8();
  v23 = a2;
  v24 = v3;
  v25 = sub_2759BA4B8();
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  v26[2] = v25;
  v26[3] = v27;
  v26[4] = v24;
  v26[5] = a2;
  sub_27587DA58(0, 0, v9, &unk_2759C9CC0, v26);
}

void sub_27592BFE4(void *a1, void *a2)
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v4 = sub_2759B89A8();
  __swift_project_value_buffer(v4, qword_280A238E8);
  v5 = a1;
  v6 = a2;
  oslog = sub_2759B8988();
  v7 = sub_2759BA638();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v8 = 136315650;
    *(v8 + 4) = sub_2758937B8(0xD00000000000003BLL, 0x80000002759E1A70, &v16);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    *(v8 + 22) = 2112;
    v11 = v5;
    if (a2)
    {
      v12 = a2;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      v14 = v13;
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }

    *(v8 + 24) = v13;
    v9[1] = v14;
    _os_log_impl(&dword_275819000, oslog, v7, "%s result: %@ error: %@", v8, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0FDE0, &unk_2759C2650);
    swift_arrayDestroy();
    MEMORY[0x277C85860](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x277C85860](v10, -1, -1);
    MEMORY[0x277C85860](v8, -1, -1);
  }
}

uint64_t sub_27592C1E8()
{
  if (qword_280A0E358 != -1)
  {
    swift_once();
  }

  v0 = sub_2759B89A8();
  __swift_project_value_buffer(v0, qword_280A238E8);
  v1 = sub_2759B8988();
  v2 = sub_2759BA638();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_2758937B8(0xD000000000000026, 0x80000002759E1A40, &v6);
    _os_log_impl(&dword_275819000, v1, v2, "%s Being dismissed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x277C85860](v4, -1, -1);
    MEMORY[0x277C85860](v3, -1, -1);
  }

  return 1;
}

uint64_t sub_27592C324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_27585A7E4;

  return sub_27592B550(a1, v4, v5, v7, v6);
}

uint64_t sub_27592C3E4()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_27592C440()
{
  sub_2759BABD8();
  sub_2759BA328();
  return sub_2759BAC08();
}

uint64_t sub_27592C488@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2759BAA48();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_27592C500@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2759BAA48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27592C558(uint64_t a1)
{
  v2 = sub_27592CF90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27592C594(uint64_t a1)
{
  v2 = sub_27592CF90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t *sub_27592C5D0(uint64_t *a1)
{
  v20 = *v1;
  v3 = sub_2759B8C48();
  v18 = *(v3 - 8);
  v4 = *(v18 + 64);
  MEMORY[0x28223BE20](v3);
  v19 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11020, &qword_2759C9DD8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27592CF90();
  v12 = v21;
  sub_2759BAC18();
  if (v12)
  {
    v14 = *(*v1 + 48);
    v15 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v18;
    sub_27592CFE4(&qword_280A0E8C0, MEMORY[0x277D23340]);
    sub_2759BAA78();
    (*(v7 + 8))(v10, v6);
    (*(v13 + 32))(v1 + OBJC_IVAR____TtC14iCloudSettings22OpenSensitiveURLAction_urlString, v19, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_27592C870()
{
  v1 = OBJC_IVAR____TtC14iCloudSettings22OpenSensitiveURLAction_urlString;
  v2 = sub_2759B8C48();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenSensitiveURLAction()
{
  result = qword_280A10FF8;
  if (!qword_280A10FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27592C960()
{
  result = sub_2759B8C48();
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

uint64_t sub_27592C9F0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27585A7E4;

  return (sub_27592CCB0)(a1);
}

uint64_t *sub_27592CBC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  v8 = swift_allocObject();
  result = sub_27592C5D0(a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_27592CCB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280A0EB10, &qword_2759C0740) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2759B8508();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27592CDA8, 0, 0);
}

id sub_27592CDA8()
{
  v1 = v0[2];
  v2 = v0[3] + OBJC_IVAR____TtC14iCloudSettings22OpenSensitiveURLAction_urlString;
  sub_2759B8C38();
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  sub_2759B84F8();

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_27585A458(v0[4]);
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    result = [objc_opt_self() defaultWorkspace];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    v14 = sub_2759B84B8();
    sub_2758A2A88(MEMORY[0x277D84F90]);
    v15 = sub_2759BA1C8();

    [v10 openSensitiveURL:v14 withOptions:v15];

    (*(v12 + 8))(v11, v13);
  }

  v6 = v0[7];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

unint64_t sub_27592CF90()
{
  result = qword_280A11028;
  if (!qword_280A11028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11028);
  }

  return result;
}

uint64_t sub_27592CFE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27592D040()
{
  result = qword_280A11030;
  if (!qword_280A11030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11030);
  }

  return result;
}

unint64_t sub_27592D098()
{
  result = qword_280A11038;
  if (!qword_280A11038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11038);
  }

  return result;
}

unint64_t sub_27592D0F0()
{
  result = qword_280A11040;
  if (!qword_280A11040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11040);
  }

  return result;
}

id sub_27592D168()
{
  v0 = [objc_allocWithZone(sub_2759B8B98()) init];
  type metadata accessor for IfDataclassEnabledView();
  sub_27592DFD4(&qword_280A10B40, type metadata accessor for IfDataclassEnabledView);
  sub_2759B8B68();
  type metadata accessor for IfLSRecordView();
  sub_27592DFD4(&qword_280A11048, type metadata accessor for IfLSRecordView);
  sub_2759B8B68();
  type metadata accessor for InternalSymbolView();
  sub_27592DFD4(&qword_280A11050, type metadata accessor for InternalSymbolView);
  sub_2759B8B68();
  type metadata accessor for ManageStorageDrilldownAnalyticsAction();
  sub_27592DFD4(&qword_280A0E8A0, type metadata accessor for ManageStorageDrilldownAnalyticsAction);
  sub_2759B8B78();
  type metadata accessor for NotesDeeplinkAction();
  sub_27592DFD4(&qword_280A10330, type metadata accessor for NotesDeeplinkAction);
  sub_2759B8B78();
  sub_2759B87C8();
  sub_27592DFD4(&qword_280A11058, MEMORY[0x277CFB218]);
  sub_2759B8B68();
  sub_2759B8818();
  sub_27592DFD4(&qword_280A11060, MEMORY[0x277CFB238]);
  sub_2759B8B78();
  type metadata accessor for DrilldownThermometerView();
  sub_27592DFD4(&qword_280A11068, type metadata accessor for DrilldownThermometerView);
  sub_2759B8B68();
  type metadata accessor for HeaderAnimationView();
  sub_27592DFD4(&qword_280A11070, type metadata accessor for HeaderAnimationView);
  sub_2759B8B68();
  type metadata accessor for IfHealthEnabledView();
  sub_27592DFD4(&qword_280A10E80, type metadata accessor for IfHealthEnabledView);
  sub_2759B8B68();
  type metadata accessor for IfMessagesEligibleView();
  sub_27592DFD4(&qword_280A0E828, type metadata accessor for IfMessagesEligibleView);
  sub_2759B8B68();
  type metadata accessor for IfMessagesIsInExitStateView();
  sub_27592DFD4(&qword_280A0E6E8, type metadata accessor for IfMessagesIsInExitStateView);
  sub_2759B8B68();
  sub_27592DF2C();
  sub_2759B8B68();
  sub_2758ADF38();
  sub_2759B8B68();
  type metadata accessor for StaticHeaderImageView();
  sub_27592DFD4(&qword_280A0FC90, type metadata accessor for StaticHeaderImageView);
  sub_2759B8B68();
  type metadata accessor for RemoteUIWebView(0);
  sub_27592DFD4(&qword_280A0FAD0, type metadata accessor for RemoteUIWebView);
  sub_2759B8B68();
  type metadata accessor for UIScreenBoundsReaderView();
  sub_27592DFD4(&qword_280A0EBD8, type metadata accessor for UIScreenBoundsReaderView);
  sub_2759B8B68();
  type metadata accessor for SendAnalyticsEventAction();
  sub_27592DFD4(&qword_280A11080, type metadata accessor for SendAnalyticsEventAction);
  sub_2759B8B78();
  type metadata accessor for ClearAppsListAction();
  sub_27592DFD4(&qword_280A11088, type metadata accessor for ClearAppsListAction);
  sub_2759B8B78();
  type metadata accessor for ClearOverlayImagesAction();
  sub_27592DFD4(&qword_280A0FC20, type metadata accessor for ClearOverlayImagesAction);
  sub_2759B8B78();
  type metadata accessor for DriveDeleteAction();
  sub_27592DFD4(&qword_280A11090, type metadata accessor for DriveDeleteAction);
  sub_2759B8B78();
  type metadata accessor for HealthDisableAndDeleteAction();
  sub_27592DFD4(&qword_280A11098, type metadata accessor for HealthDisableAndDeleteAction);
  sub_2759B8B78();
  sub_27592DF80();
  sub_2759B8B78();
  type metadata accessor for MessagesDisableAndDeleteAction();
  sub_27592DFD4(&qword_280A110A8, type metadata accessor for MessagesDisableAndDeleteAction);
  sub_2759B8B78();
  type metadata accessor for MessagesEnableAction();
  sub_27592DFD4(&qword_280A110B0, type metadata accessor for MessagesEnableAction);
  sub_2759B8B78();
  type metadata accessor for NotesDeleteAction();
  sub_27592DFD4(&qword_280A110B8, type metadata accessor for NotesDeleteAction);
  sub_2759B8B78();
  type metadata accessor for OpenSensitiveURLAction();
  sub_27592DFD4(&qword_280A11018, type metadata accessor for OpenSensitiveURLAction);
  sub_2759B8B78();
  type metadata accessor for PopViewAction();
  sub_27592DFD4(&qword_280A10390, type metadata accessor for PopViewAction);
  sub_2759B8B78();
  type metadata accessor for PostQuotaDidChangeAction();
  sub_27592DFD4(&qword_280A0EB90, type metadata accessor for PostQuotaDidChangeAction);
  sub_2759B8B78();
  type metadata accessor for PushBackupControllerAction();
  sub_27592DFD4(&unk_280A10060, type metadata accessor for PushBackupControllerAction);
  sub_2759B8B78();
  type metadata accessor for PushLocalStorageControllerAction();
  sub_27592DFD4(&qword_280A110C0, type metadata accessor for PushLocalStorageControllerAction);
  sub_2759B8B78();
  type metadata accessor for ReloadAppsListAction();
  sub_27592DFD4(&qword_280A109E0, type metadata accessor for ReloadAppsListAction);
  sub_2759B8B78();
  type metadata accessor for ReloadBackupsClientDataAction();
  sub_27592DFD4(&qword_280A110C8, type metadata accessor for ReloadBackupsClientDataAction);
  sub_2759B8B78();
  type metadata accessor for ReloadHomeAction();
  sub_27592DFD4(&qword_280A110D0, type metadata accessor for ReloadHomeAction);
  sub_2759B8B78();
  type metadata accessor for SiriDisableAndDeleteAction();
  sub_27592DFD4(&qword_280A110D8, type metadata accessor for SiriDisableAndDeleteAction);
  sub_2759B8B78();
  type metadata accessor for ObserveNotificationModifier();
  sub_27592DFD4(&qword_280A110E0, type metadata accessor for ObserveNotificationModifier);
  sub_2759B8B88();
  return v0;
}

unint64_t sub_27592DF2C()
{
  result = qword_280A11078;
  if (!qword_280A11078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11078);
  }

  return result;
}

unint64_t sub_27592DF80()
{
  result = qword_280A110A0;
  if (!qword_280A110A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A110A0);
  }

  return result;
}

uint64_t sub_27592DFD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27592E0F0()
{
  sub_2759BA038();
  if (sub_2759B9FF8())
  {

    return MEMORY[0x282133F68]();
  }

  else
  {
    sub_2759B9FB8();
    if (sub_2759B9FF8())
    {

      return sub_2759BA0B8();
    }

    else
    {
      sub_2759BA008();
      if (sub_2759B9FF8())
      {

        return MEMORY[0x282133F38]();
      }

      else
      {
        sub_2759B9FC8();
        if (sub_2759B9FF8())
        {

          return MEMORY[0x282133F10]();
        }

        else
        {
          sub_2759BA048();
          if (sub_2759B9FF8())
          {

            return MEMORY[0x282133F70]();
          }

          else
          {
            sub_2759B9FE8();
            if (sub_2759B9FF8())
            {

              return MEMORY[0x282133F20]();
            }

            else
            {
              sub_2759BA018();
              if (sub_2759B9FF8())
              {

                return MEMORY[0x282133F50]();
              }

              else
              {
                sub_2759B9FD8();
                if (sub_2759B9FF8())
                {

                  return MEMORY[0x282133F18]();
                }

                else
                {

                  return sub_2759BA118();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_27592E2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v19 = a4;
  v20 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v6, a4);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = (a1 + 32);
    do
    {
      v12 = v11[4];
      __swift_project_boxed_opaque_existential_1(v11, v11[3]);
      sub_2759B8B28();
      sub_2758FEA38(&v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v18);
      sub_2758FEA38(v17, v18);
      v11 += 5;
      --v10;
    }

    while (v10);
  }

  v13 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v14 = sub_27592E400(v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v14;
}

uint64_t sub_27592E400(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  return sub_2759B9E68();
}

uint64_t type metadata accessor for SimpleStorageMeter()
{
  result = qword_280A110E8;
  if (!qword_280A110E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27592E53C()
{
  sub_2758BEB54();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_27592E5E8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = sub_2759BA038();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11118, &qword_2759CA070);
  return sub_27592E648(a1, a2 + *(v5 + 44));
}

uint64_t sub_27592E648@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a1;
  v59 = a2;
  v2 = sub_2759B9EC8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v51 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11120, &qword_2759CA078);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v55 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11128, &qword_2759CA080);
  v10 = *(v9 - 8);
  v56 = v9 - 8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9 - 8);
  v58 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v53 = &v51 - v15;
  MEMORY[0x28223BE20](v14);
  v54 = &v51 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11130, &qword_2759CA088);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v52 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - v22;
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_2759B94B8();
  v26 = *(*(v25 - 8) + 104);
  v26(v23, v24, v25);
  sub_2759B8F48();
  sub_2759B8F48();
  sub_2759BA028();
  sub_2759B8F18();
  v27 = &v23[*(v6 + 44)];
  v28 = v61;
  *v27 = v60;
  *(v27 + 1) = v28;
  *(v27 + 2) = v62;
  sub_2759B9C18();
  v29 = sub_2759B9C58();

  KeyPath = swift_getKeyPath();
  v31 = &v23[*(v18 + 44)];
  *v31 = KeyPath;
  v31[1] = v29;
  v32 = v51;
  v26(v51, v24, v25);
  sub_2759B8F48();
  v34 = v33;
  v35 = type metadata accessor for SimpleStorageMeter();
  v36 = v35[8];
  v37 = v57;
  if (v34 * *(v57 + v35[5]) <= *(v57 + v36))
  {
    v38 = *(v57 + v36);
  }

  sub_2759BA028();
  sub_2759B8F18();
  v39 = v55;
  sub_27592EEB0(v32, v55, MEMORY[0x277CE1260]);
  v40 = (v39 + *(v6 + 44));
  v41 = v64;
  *v40 = v63;
  v40[1] = v41;
  v40[2] = v65;
  v42 = *(v37 + v35[6]);
  v43 = v39;
  v44 = v53;
  sub_27589F26C(v43, v53, &qword_280A11120, &qword_2759CA078);
  *(v44 + *(v56 + 44)) = v42;
  v45 = v54;
  sub_27589F26C(v44, v54, &qword_280A11128, &qword_2759CA080);
  v46 = v52;
  sub_27586FBC8(v23, v52, &qword_280A11130, &qword_2759CA088);
  v47 = v58;
  sub_27586FBC8(v45, v58, &qword_280A11128, &qword_2759CA080);
  v48 = v59;
  sub_27586FBC8(v46, v59, &qword_280A11130, &qword_2759CA088);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A11138, &qword_2759CA0C0);
  sub_27586FBC8(v47, v48 + *(v49 + 48), &qword_280A11128, &qword_2759CA080);

  sub_27586BF04(v45, &qword_280A11128, &qword_2759CA080);
  sub_27586BF04(v23, &qword_280A11130, &qword_2759CA088);
  sub_27586BF04(v47, &qword_280A11128, &qword_2759CA080);
  return sub_27586BF04(v46, &qword_280A11130, &qword_2759CA088);
}

uint64_t sub_27592EB20(uint64_t a1)
{
  v2 = a1 - 8;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1);
  sub_27592ECDC(v1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_27592EEB0(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for SimpleStorageMeter);
  v7 = *(v1 + *(v2 + 36));
  sub_2759BA028();
  sub_2759B8F18();
  v20 = v15;
  v19 = v17;
  v9[0] = sub_27592ED40;
  v9[1] = v6;
  v9[2] = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;
  v13 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A110F8, &qword_2759CA060);
  sub_27592EDC0();
  sub_2759B9B38();
}

uint64_t sub_27592ECDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleStorageMeter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27592ED40@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SimpleStorageMeter() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_27592E5E8(v4, a1);
}

unint64_t sub_27592EDC0()
{
  result = qword_280A11100;
  if (!qword_280A11100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A110F8, &qword_2759CA060);
    sub_27592EE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11100);
  }

  return result;
}

unint64_t sub_27592EE4C()
{
  result = qword_280A11108;
  if (!qword_280A11108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11110, &qword_2759CA068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11108);
  }

  return result;
}

uint64_t sub_27592EEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_27592EF18()
{
  result = qword_280A11140;
  if (!qword_280A11140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280A11148, &qword_2759CA0C8);
    sub_27592EDC0();
    sub_27592EFA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A11140);
  }

  return result;
}

unint64_t sub_27592EFA4()
{
  result = qword_280A0F688;
  if (!qword_280A0F688)
  {
    sub_2759B97B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A0F688);
  }

  return result;
}

uint64_t sub_27592F024@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275930854();
  *a2 = result;
  return result;
}

void sub_27592F054(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000656761726FLL;
  v4 = 0x74536567616E616DLL;
  v5 = 0xE700000000000000;
  v6 = 0x366C6961746564;
  if (v2 != 6)
  {
    v6 = 0x764F70756B636162;
    v5 = 0xED000079616C7265;
  }

  v7 = 0x346C6961746564;
  if (v2 != 4)
  {
    v7 = 0x356C6961746564;
  }

  if (*v1 <= 5u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0x326C6961746564;
  if (v2 != 2)
  {
    v8 = 0x336C6961746564;
  }

  if (*v1)
  {
    v4 = 0x316C6961746564;
    v3 = 0xE700000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v8;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 3u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}