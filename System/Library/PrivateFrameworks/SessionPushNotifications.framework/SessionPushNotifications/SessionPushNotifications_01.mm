uint64_t WatchActivityMonitor.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t WatchActivityMonitor.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

uint64_t sub_22CE53208()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_22CE85D44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v0[4];
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = v8;
  LOBYTE(v8) = sub_22CE85D54();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  result = sub_22CE5260C();
  if ((result & 1) == *(v0 + 48))
  {
    return result;
  }

  LOBYTE(v3) = result;
  if (qword_281445360 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = sub_22CE85C84();
  __swift_project_value_buffer(v11, qword_281445368);
  v12 = sub_22CE85C74();
  v13 = sub_22CE85FA4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67240192;
    *(v14 + 4) = v3 & 1;
    _os_log_impl(&dword_22CE3F000, v12, v13, "Watch charging state has changed to %{BOOL,public}d", v14, 8u);
    MEMORY[0x2318C20D0](v14, -1, -1);
  }

  *(v1 + 48) = v3 & 1;
  v15 = v1[3];
  v16[15] = (v3 & 1) == 0;
  return sub_22CE85CB4();
}

uint64_t sub_22CE5343C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_22CE53490()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22CE53208();
  }

  return result;
}

uint64_t WatchActivityMonitor.isActive.getter()
{
  v1 = *(v0 + 32);
  sub_22CE85FE4();
  return v3;
}

uint64_t sub_22CE53580()
{
  v1 = *(*v0 + 32);
  sub_22CE85FE4();
  return v3;
}

uint64_t sub_22CE536B8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_22CE498B0(0x726F70736E617254, 0xEE00657079542074);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_22CE44458(*(a1 + 56) + 32 * v2, v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (v6 == 0x6C616E7265746E49 && v7 == 0xE800000000000000 || (sub_22CE86194() & 1) != 0)
  {

    return 1;
  }

  else if (v6 == 0x6C6169726553 && v7 == 0xE600000000000000 || (sub_22CE86194() & 1) != 0 || v6 == 4346709 && v7 == 0xE300000000000000 || (sub_22CE86194() & 1) != 0 || v6 == 4475201 && v7 == 0xE300000000000000 || (sub_22CE86194() & 1) != 0)
  {

    return 2;
  }

  else if (v6 == 0x746F6F7465756C42 && v7 == 0xE900000000000068 || (sub_22CE86194() & 1) != 0 || v6 == 0x746F6F7465756C42 && v7 == 0xEC000000454C2068 || (sub_22CE86194() & 1) != 0)
  {

    return 3;
  }

  else if (v6 == 0xD000000000000011 && 0x800000022CE8A090 == v7)
  {

    return 4;
  }

  else
  {
    v5 = sub_22CE86194();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_22CE5395C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t DeviceActivityBudgetLevelProvider.__allocating_init(deviceActivityMonitors:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DeviceActivityBudgetLevelProvider.init(deviceActivityMonitors:)(a1);
  return v2;
}

void *DeviceActivityBudgetLevelProvider.init(deviceActivityMonitors:)(uint64_t a1)
{
  v24 = a1;
  v25 = sub_22CE85FD4();
  v2 = *(v25 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CE85FB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22CE85D34();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  *(v1 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v1 + 24) = sub_22CE85CC4();
  sub_22CE4FC1C();
  v22 = "Inductive In-Band";
  sub_22CE85D24();
  v26 = MEMORY[0x277D84F90];
  v21[2] = sub_22CE425CC(&qword_281445320, MEMORY[0x277D85230]);
  v21[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  v13 = *MEMORY[0x277D85260];
  v14 = v2 + 104;
  v15 = *(v2 + 104);
  v21[0] = v14;
  v15(v5, v13, v25);
  v16 = sub_22CE86004();
  v17 = v23;
  v23[4] = v16;
  v22 = "yBudgetLevelProvider.internal";
  sub_22CE85D24();
  v26 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v15(v5, v13, v25);
  v18 = sub_22CE86004();
  v19 = MEMORY[0x277D84FA0];
  v17[5] = v18;
  v17[6] = v19;
  v17[7] = v24;
  sub_22CE53D74();
  return v17;
}

uint64_t sub_22CE53D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE08, &qword_22CE878C0);
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v22 = v0;
  v11 = *(v0 + 56);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v11 + 32;
    v20 = *(v22 + 40);
    v21 = (v8 + 8);
    do
    {
      sub_22CE40D28(v13, v26);
      v14 = v27;
      v15 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v16 = (*(v15 + 8))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v26);
      v24 = v16;
      v17 = v20;
      v25 = v20;
      v18 = sub_22CE85FC4();
      (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
      v23 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE10, &qword_22CE878C8);
      sub_22CE4FC1C();
      sub_22CE40A60(&qword_281444838, &qword_27D9EEE10, &qword_22CE878C8);
      sub_22CE425CC(&qword_281445318, sub_22CE4FC1C);
      sub_22CE85CF4();
      sub_22CE505E4(v4);

      swift_allocObject();
      swift_weakInit();
      sub_22CE40A60(&qword_281444850, &qword_27D9EEE08, &qword_22CE878C0);
      sub_22CE85D04();

      (*v21)(v10, v5);
      swift_beginAccess();
      sub_22CE85CA4();
      swift_endAccess();

      v13 += 40;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t DeviceActivityBudgetLevelProvider.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return v0;
}

uint64_t DeviceActivityBudgetLevelProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

SessionPushNotifications::Budget::Level_optional __swiftcall DeviceActivityBudgetLevelProvider.budgetLevel(topic:)(SessionPushNotifications::Topic topic)
{
  v2 = *(v1 + 32);
  v4 = *topic.unsuffixed._countAndFlagsBits;
  v5 = *(topic.unsuffixed._countAndFlagsBits + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE00, &qword_22CE87800);
  return sub_22CE85FE4();
}

void sub_22CE5421C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v31 = a3;
  v4 = a4;
  v5 = *(a1 + 56);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = v5 + 32;
LABEL_3:
    v10 = v9 + 40 * v7;
    v4 = v7;
    do
    {
      if (v4 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_22CE40D28(v10, v28);
      v7 = v4 + 1;
      v11 = v29;
      v12 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v13 = (*(v12 + 16))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(v28);
      if (v13)
      {
        v8 = 1;
        v9 = v5 + 32;
        if ((v6 - 1) != v4)
        {
          goto LABEL_3;
        }

        v4 = a4;
        goto LABEL_11;
      }

      v10 += 40;
      ++v4;
    }

    while (v6 != v7);
    v4 = a4;
    if ((v8 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_11:
    v14 = v31;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v15 = sub_22CE85C84();
    __swift_project_value_buffer(v15, qword_281445368);

    v16 = sub_22CE85C74();
    v17 = sub_22CE85FA4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v28[0] = v19;
      *v18 = 136380675;
      *(v18 + 4) = sub_22CE44280(a2, v14, v28);
      _os_log_impl(&dword_22CE3F000, v16, v17, "DeviceActivityBudgetLevelProvider has no opinion on budget level for %{private}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x2318C20D0](v19, -1, -1);
      MEMORY[0x2318C20D0](v18, -1, -1);
    }

    v20 = 3;
  }

  else
  {
LABEL_16:
    v6 = v31;
    if (qword_281445360 != -1)
    {
LABEL_22:
      swift_once();
    }

    v21 = sub_22CE85C84();
    __swift_project_value_buffer(v21, qword_281445368);

    v22 = sub_22CE85C74();
    v23 = sub_22CE85FA4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v28[0] = v25;
      *v24 = 136380931;
      *(v24 + 4) = sub_22CE44280(a2, v6, v28);
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_22CE44280(0x6576697463616E69, 0xE800000000000000, v28);
      _os_log_impl(&dword_22CE3F000, v22, v23, "DeviceActivityBudgetLevelProvider thinks %{private}s should have level %{public}s, privacy: .public)", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C20D0](v25, -1, -1);
      MEMORY[0x2318C20D0](v24, -1, -1);
    }

    v20 = 0;
  }

  *v4 = v20;
}

uint64_t sub_22CE545C4(uint64_t *a1)
{
  v2 = *(*v1 + 32);
  v4 = *a1;
  v5 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE00, &qword_22CE87800);
  return sub_22CE85FE4();
}

uint64_t DeviceActivityLevel.hashValue.getter()
{
  v1 = *v0;
  sub_22CE86204();
  MEMORY[0x2318C1AB0](v1);
  return sub_22CE86244();
}

uint64_t sub_22CE547A4()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v3;
}

uint64_t sub_22CE54830()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v5 = *(v0 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE20, &qword_22CE87910);
    sub_22CE40A60(&qword_281444820, &qword_27D9EEE20, &qword_22CE87910);
    v2 = v0;
    v1 = sub_22CE85CE4();
    v3 = *(v0 + 32);
    *(v2 + 32) = v1;
  }

  return v1;
}

uint64_t sub_22CE548F4(uint64_t a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t (*sub_22CE54904(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22CE54830();
  return sub_22CE5494C;
}

uint64_t sub_22CE5494C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

void sub_22CE5495C(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 184);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v4 = sub_22CE4DE0C(*a1);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);
        return;
      }
    }
  }

  if (qword_281444EA0 != -1)
  {
    swift_once();
  }

  v7 = off_281444EA8;
  v8 = *(*(off_281444EA8 + 5) + 16);
  os_unfair_lock_lock(v8);
  v9 = v7[3];
  if (*(v9 + 16))
  {
    v10 = sub_22CE4DE0C(v2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      os_unfair_lock_unlock(v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_22CE54A30(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = *(v1 + 192);
  if (v3)
  {
    if (*(v3 + 16))
    {
      v4 = sub_22CE4DE0C(*a1);
      if (v5)
      {
        v6 = *(*(v3 + 56) + 8 * v4);
        return;
      }
    }
  }

  if (qword_281444EA0 != -1)
  {
    swift_once();
  }

  v7 = off_281444EA8;
  v8 = *(*(off_281444EA8 + 5) + 16);
  os_unfair_lock_lock(v8);
  v9 = v7[4];
  if (*(v9 + 16))
  {
    v10 = sub_22CE4DE0C(v2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      os_unfair_lock_unlock(v8);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t BudgetServer.__allocating_init(store:budgetLevelResolver:budgetEnforcementPolicyProvider:taskScheduler:windowDuration:maximumUpdateBudgetPerWindow:maximumPushToStartBudgetPerWindow:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t), int a8)
{
  LODWORD(v63) = a8;
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v71 = a4;
  v72 = a3;
  v73 = a2;
  v74 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE28, &qword_22CE87918);
  v69 = *(v8 - 8);
  v70 = v8;
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8);
  v68 = v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v65 = *(v14 - 8);
  v66 = v14;
  v15 = *(v65 + 64);
  MEMORY[0x28223BE20](v14);
  v64 = v56 - v16;
  v58 = sub_22CE85FD4();
  v17 = *(v58 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v58);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22CE85FB4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v23 = sub_22CE85D34();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v25 + 24) = sub_22CE85CC4();
  *(v25 + 32) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE20, &qword_22CE87910);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v25 + 40) = sub_22CE85CC4();
  v59 = sub_22CE4FC1C();
  v57 = "deviceActivityMonitors";
  sub_22CE85D24();
  v75 = MEMORY[0x277D84F90];
  v56[3] = sub_22CE42614(&qword_281445320, MEMORY[0x277D85230]);
  v56[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  v56[4] = sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  v32 = *MEMORY[0x277D85260];
  v33 = v17 + 104;
  v34 = *(v17 + 104);
  v56[1] = v33;
  v35 = v58;
  v34(v20, v32, v58);
  *(v25 + 48) = sub_22CE86004();
  v57 = "ns.BudgetServer.internal";
  sub_22CE85D24();
  v75 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v34(v20, v32, v35);
  *(v25 + 56) = sub_22CE86004();
  *(v25 + 216) = 0u;
  *(v25 + 232) = 0u;
  v36 = MEMORY[0x277D84FA0];
  *(v25 + 248) = 0;
  *(v25 + 256) = v36;
  sub_22CE40D28(v74, v25 + 264);
  sub_22CE40D28(v71, v25 + 104);
  sub_22CE40D28(v72, v25 + 144);
  v37 = v61;
  *(v25 + 184) = v60;
  *(v25 + 192) = v37;
  *(v25 + 200) = v62;
  *(v25 + 208) = v63 & 1;
  sub_22CE40D28(v73, v25 + 64);
  if (qword_281444EA0 != -1)
  {
    swift_once();
  }

  v38 = *(v25 + 88);
  v39 = *(v25 + 96);
  __swift_project_boxed_opaque_existential_1((v25 + 64), v38);
  v75 = (*(*(v39 + 8) + 8))(v38);
  v76 = *(v25 + 48);
  v40 = v76;
  v41 = sub_22CE85FC4();
  v42 = *(v41 - 8);
  v62 = *(v42 + 56);
  v63 = v42 + 56;
  v43 = v67;
  v62(v67, 1, 1, v41);
  v44 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  v61 = MEMORY[0x277CBCD90];
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00);
  v60 = sub_22CE42614(&qword_281445318, sub_22CE4FC1C);
  v45 = v64;
  sub_22CE85CF4();
  sub_22CE42330(v43, &qword_27D9EED80, &unk_22CE87920);

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_22CE42780;
  *(v47 + 24) = v46;
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0);

  v48 = v66;
  sub_22CE85D04();

  (*(v65 + 8))(v45, v48);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  v49 = *(v25 + 168);
  v50 = *(v25 + 176);
  __swift_project_boxed_opaque_existential_1((v25 + 144), v49);
  v75 = (*(v50 + 16))(v49, v50);
  v76 = *(v25 + 56);
  v51 = v76;
  v62(v43, 1, 1, v41);
  v52 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE30, &qword_22CE87940);
  sub_22CE40A60(&qword_281445348, &qword_27D9EEE30, &qword_22CE87940);
  v53 = v68;
  sub_22CE85CF4();
  sub_22CE42330(v43, &qword_27D9EED80, &unk_22CE87920);

  swift_allocObject();
  swift_weakInit();

  sub_22CE40A60(&unk_281445350, &qword_27D9EEE28, &qword_22CE87918);
  v54 = v70;
  sub_22CE85D04();

  (*(v69 + 8))(v53, v54);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  return v25;
}

void *BudgetServer.init(store:budgetLevelResolver:budgetEnforcementPolicyProvider:taskScheduler:windowDuration:maximumUpdateBudgetPerWindow:maximumPushToStartBudgetPerWindow:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = v8;
  LODWORD(v66) = a8;
  v64 = a6;
  v65 = a7;
  v63 = a5;
  v74 = a4;
  v75 = a3;
  v76 = a2;
  v77 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE28, &qword_22CE87918);
  v72 = *(v10 - 8);
  v73 = v10;
  v11 = *(v72 + 64);
  MEMORY[0x28223BE20](v10);
  v71 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED80, &unk_22CE87920);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v56 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED88, &unk_22CE872C0);
  v68 = *(v16 - 8);
  v69 = v16;
  v17 = *(v68 + 64);
  MEMORY[0x28223BE20](v16);
  v67 = &v56 - v18;
  v62 = sub_22CE85FD4();
  v78 = *(v62 - 8);
  v19 = *(v78 + 64);
  MEMORY[0x28223BE20](v62);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22CE85FB4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v24 = sub_22CE85D34();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  *(v8 + 16) = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED78, &unk_22CE87210);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  *(v8 + 24) = sub_22CE85CC4();
  *(v8 + 32) = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE20, &qword_22CE87910);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  *(v8 + 40) = sub_22CE85CC4();
  v61 = sub_22CE4FC1C();
  v60 = "deviceActivityMonitors";
  sub_22CE85D24();
  v79 = MEMORY[0x277D84F90];
  v59 = sub_22CE42614(&qword_281445320, MEMORY[0x277D85230]);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  v32 = *MEMORY[0x277D85260];
  v33 = *(v78 + 104);
  v78 += 104;
  v57 = v21;
  v34 = v21;
  v35 = v62;
  v33(v34, v32, v62);
  *(v8 + 48) = sub_22CE86004();
  v60 = "ns.BudgetServer.internal";
  sub_22CE85D24();
  v79 = MEMORY[0x277D84F90];
  sub_22CE86034();
  v33(v57, v32, v35);
  *(v8 + 56) = sub_22CE86004();
  *(v8 + 216) = 0u;
  *(v8 + 232) = 0u;
  v36 = MEMORY[0x277D84FA0];
  *(v8 + 248) = 0;
  *(v8 + 256) = v36;
  sub_22CE40D28(v77, v8 + 264);
  sub_22CE40D28(v74, v8 + 104);
  sub_22CE40D28(v75, v8 + 144);
  v37 = v64;
  *(v8 + 184) = v63;
  *(v8 + 192) = v37;
  *(v8 + 200) = v65;
  *(v8 + 208) = v66 & 1;
  sub_22CE40D28(v76, v8 + 64);
  if (qword_281444EA0 != -1)
  {
    swift_once();
  }

  v39 = *(v8 + 88);
  v38 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1(v9 + 8, v9[11]);
  v79 = (*(*(v38 + 8) + 8))(v39);
  v80 = v9[6];
  v40 = v80;
  v41 = sub_22CE85FC4();
  v42 = *(v41 - 8);
  v66 = *(v42 + 56);
  v78 = v42 + 56;
  v43 = v70;
  v66(v70, 1, 1, v41);
  v44 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EED90, &qword_22CE88F00);
  v65 = MEMORY[0x277CBCD90];
  sub_22CE40A60(&qword_281444830, &qword_27D9EED90, &qword_22CE88F00);
  v64 = sub_22CE42614(&qword_281445318, sub_22CE4FC1C);
  v45 = v67;
  sub_22CE85CF4();
  sub_22CE42330(v43, &qword_27D9EED80, &unk_22CE87920);

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  *(v47 + 16) = sub_22CE5E864;
  *(v47 + 24) = v46;
  sub_22CE40A60(&qword_281444848, &qword_27D9EED88, &unk_22CE872C0);

  v48 = v69;
  sub_22CE85D04();

  (*(v68 + 8))(v45, v48);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  v49 = v9[21];
  v50 = v9[22];
  __swift_project_boxed_opaque_existential_1(v9 + 18, v49);
  v79 = (*(v50 + 16))(v49, v50);
  v80 = v9[7];
  v51 = v80;
  v66(v43, 1, 1, v41);
  v52 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE30, &qword_22CE87940);
  sub_22CE40A60(&qword_281445348, &qword_27D9EEE30, &qword_22CE87940);
  v53 = v71;
  sub_22CE85CF4();
  sub_22CE42330(v43, &qword_27D9EED80, &unk_22CE87920);

  swift_allocObject();
  swift_weakInit();

  sub_22CE40A60(&unk_281445350, &qword_27D9EEE28, &qword_22CE87918);
  v54 = v73;
  sub_22CE85D04();

  (*(v72 + 8))(v53, v54);
  swift_beginAccess();
  sub_22CE85CA4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v77);
  return v9;
}

uint64_t BudgetServer.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  v5 = *(v0 + 184);

  v6 = *(v0 + 192);

  sub_22CE42330(v0 + 216, &unk_27D9EEF30, &unk_22CE87948);
  v7 = *(v0 + 256);

  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  return v0;
}

uint64_t BudgetServer.__deallocating_deinit()
{
  BudgetServer.deinit();

  return MEMORY[0x2821FE8D8](v0, 304, 7);
}

uint64_t BudgetServer.handle(pushEvent:)(uint64_t a1)
{
  v3 = type metadata accessor for PushEvent(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 48);
  sub_22CE5E660(a1, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PushEvent);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_22CE5E5F8(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for PushEvent);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22CE5CDB4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_22CE42778;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE50228;
  aBlock[3] = &block_descriptor_1;
  v10 = _Block_copy(aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE5621C(uint64_t *a1)
{
  v2 = type metadata accessor for PushEvent.EventType(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PushEvent(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v10 = sub_22CE85C84();
  __swift_project_value_buffer(v10, qword_281445368);
  sub_22CE5E660(a1, v9, type metadata accessor for PushEvent);
  v11 = sub_22CE85C74();
  v12 = sub_22CE85FA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136446210;
    v25 = v5;
    v26 = v14;
    v24 = v2;
    v15 = *v9;
    v16 = v9[1];

    sub_22CE5E6C8(v9, type metadata accessor for PushEvent);
    v17 = sub_22CE44280(v15, v16, &v26);

    *(v13 + 4) = v17;
    v5 = v25;
    _os_log_impl(&dword_22CE3F000, v11, v12, "Received push event for %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2318C20D0](v14, -1, -1);
    MEMORY[0x2318C20D0](v13, -1, -1);
  }

  else
  {

    sub_22CE5E6C8(v9, type metadata accessor for PushEvent);
  }

  sub_22CE56590();
  sub_22CE5E660(a1 + *(v6 + 32), v5, type metadata accessor for PushEvent.EventType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22CE5E6C8(v5, type metadata accessor for PushEvent.EventType);
      v19 = a1[5];
      v26 = a1[4];
      v27 = v19;
      v20 = *a1;
      v21 = a1[1];

      sub_22CE57154(&v26, v20, v21);
LABEL_12:

      sub_22CE578E8(v20, v21);
      return sub_22CE59234();
    }

    if (*(a1 + *(v6 + 44)) == 1)
    {
      v22 = a1[5];
      v26 = a1[4];
      v27 = v22;
      v20 = *a1;
      v21 = a1[1];

      sub_22CE58994(&v26, v20, v21);
      goto LABEL_12;
    }
  }

  else
  {
    sub_22CE584E0(*a1, a1[1]);
    sub_22CE5E6C8(v5, type metadata accessor for PushEvent.EventType);
  }

  return sub_22CE59234();
}

uint64_t sub_22CE56590()
{
  v1 = sub_22CE85D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CE85D34();
  v95 = *(v6 - 8);
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v6);
  v94 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_22CE85974();
  v9 = *(v113 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v113);
  v111 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v107 = &v90 - v14;
  MEMORY[0x28223BE20](v13);
  v106 = &v90 - v15;
  v109 = type metadata accessor for Budget();
  v103 = *(v109 - 8);
  v16 = *(v103 + 64);
  v17 = MEMORY[0x28223BE20](v109);
  v99 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v97 = &v90 - v20;
  MEMORY[0x28223BE20](v19);
  v102 = &v90 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE60, &qword_22CE87B40);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v112 = (&v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v108 = &v90 - v26;
  v27 = sub_22CE85D44();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = (&v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = v0;
  v32 = v0[6];
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D85200], v27);
  v33 = v32;
  LOBYTE(v32) = sub_22CE85D54();
  result = (*(v28 + 8))(v31, v27);
  if (v32)
  {
    v90 = v5;
    v91 = v6;
    v92 = v2;
    v93 = v1;
    v35 = v101[36];
    v36 = v101[37];
    __swift_project_boxed_opaque_existential_1(v101 + 33, v35);
    result = (*(v36 + 8))(v35, v36);
    v100 = 0;
    v38 = 0;
    v40 = result + 64;
    v39 = *(result + 64);
    v104 = result;
    v41 = 1 << *(result + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & v39;
    v44 = (v41 + 63) >> 6;
    v110 = (v9 + 8);
    v98 = (v9 + 16);
    *&v37 = 136380675;
    v96 = v37;
    v45 = v97;
    v46 = v112;
    v105 = result + 64;
    while (v43)
    {
      v47 = v38;
LABEL_18:
      v50 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v51 = v50 | (v47 << 6);
      v52 = (*(v104 + 48) + 16 * v51);
      v54 = *v52;
      v53 = v52[1];
      v55 = v102;
      sub_22CE5E660(*(v104 + 56) + *(v103 + 72) * v51, v102, type metadata accessor for Budget);
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      v57 = *(v56 + 48);
      v58 = v112;
      *v112 = v54;
      v58[1] = v53;
      v46 = v58;
      sub_22CE5E5F8(v55, v58 + v57, type metadata accessor for Budget);
      (*(*(v56 - 8) + 56))(v46, 0, 1, v56);

LABEL_19:
      v59 = v108;
      sub_22CE44874(v46, v108, &qword_27D9EEE60, &qword_22CE87B40);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
      if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
      {

        if (v100)
        {
          v85 = v101[7];
          aBlock[4] = sub_22CE5E868;
          aBlock[5] = v101;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_22CE42F10;
          aBlock[3] = &block_descriptor_56;
          v86 = _Block_copy(aBlock);

          v87 = v94;
          sub_22CE85D24();
          v114 = MEMORY[0x277D84F90];
          sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
          sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
          v88 = v90;
          v89 = v93;
          sub_22CE86034();
          MEMORY[0x2318C1890](0, v87, v88, v86);
          _Block_release(v86);
          (*(v92 + 8))(v88, v89);
          (*(v95 + 8))(v87, v91);
        }

        return result;
      }

      v61 = *(v59 + 8);

      sub_22CE5E5F8(v59 + *(v60 + 48), v45, type metadata accessor for Budget);
      v62 = v111;
      sub_22CE85954();
      v63 = sub_22CE858F4();
      v64 = *v110;
      (*v110)(v62, v113);
      if (v63)
      {
        v65 = v107;
        sub_22CE858C4();
      }

      else
      {
        v65 = v107;
        (*v98)(v107, v45, v113);
      }

      v66 = *(v45 + *(v109 + 40));
      v67 = v106;
      sub_22CE85914();
      v68 = v113;
      v64(v65, v113);
      v69 = v111;
      sub_22CE85954();
      v70 = sub_22CE85904();
      v64(v69, v68);
      v64(v67, v68);
      v46 = v112;
      if (v70)
      {
        v71 = v101[36];
        v72 = v101[37];
        __swift_project_boxed_opaque_existential_1(v101 + 33, v71);
        (*(v72 + 32))(*(v45 + *(v109 + 24)), *(v45 + *(v109 + 24) + 8), v71, v72);
        if (qword_281445360 != -1)
        {
          swift_once();
        }

        v73 = sub_22CE85C84();
        __swift_project_value_buffer(v73, qword_281445368);
        v74 = v99;
        sub_22CE5E660(v45, v99, type metadata accessor for Budget);
        v75 = sub_22CE85C74();
        v76 = sub_22CE85FA4();
        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          aBlock[0] = v78;
          *v77 = v96;
          v79 = (v74 + *(v109 + 24));
          v81 = *v79;
          v80 = v79[1];

          sub_22CE5E6C8(v74, type metadata accessor for Budget);
          v82 = sub_22CE44280(v81, v80, aBlock);
          v46 = v112;

          *(v77 + 4) = v82;
          _os_log_impl(&dword_22CE3F000, v75, v76, "Removed expired budget for %{private}s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v78);
          MEMORY[0x2318C20D0](v78, -1, -1);
          v83 = v77;
          v45 = v97;
          MEMORY[0x2318C20D0](v83, -1, -1);
        }

        else
        {

          sub_22CE5E6C8(v74, type metadata accessor for Budget);
        }

        v100 = 1;
      }

      result = sub_22CE5E6C8(v45, type metadata accessor for Budget);
      v40 = v105;
    }

    if (v44 <= v38 + 1)
    {
      v48 = v38 + 1;
    }

    else
    {
      v48 = v44;
    }

    v49 = v48 - 1;
    while (1)
    {
      v47 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v47 >= v44)
      {
        v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
        (*(*(v84 - 8) + 56))(v46, 1, 1, v84);
        v43 = 0;
        v38 = v49;
        goto LABEL_19;
      }

      v43 = *(v40 + 8 * v47);
      ++v38;
      if (v43)
      {
        v38 = v47;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE57154(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v72 = a3;
  v7 = sub_22CE85D14();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v7);
  v68 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_22CE85D34();
  v67 = *(v69 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v66 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22CE85974();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Budget();
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v61 - v22;
  v24 = sub_22CE85D44();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = (&v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = *a1;
  v61 = a1[1];
  v62 = v29;
  v30 = *(v4 + 48);
  *v28 = v30;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v31 = v30;
  LOBYTE(v30) = sub_22CE85D54();
  v33 = *(v25 + 8);
  v32 = v25 + 8;
  v33(v28, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v34 = *(v4 + 288);
  v35 = *(v4 + 296);
  __swift_project_boxed_opaque_existential_1((v4 + 264), v34);
  v32 = v72;
  (*(v35 + 16))(a2, v72, v34, v35);
  v36 = (*(v16 + 48))(v23, 1, v15);
  result = sub_22CE42330(v23, &qword_27D9EEBA0, &qword_22CE86D20);
  if (v36 != 1)
  {
    return result;
  }

  if (qword_281445360 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v38 = sub_22CE85C84();
  __swift_project_value_buffer(v38, qword_281445368);

  v39 = sub_22CE85C74();
  v40 = sub_22CE85FA4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_22CE44280(a2, v32, aBlock);
    _os_log_impl(&dword_22CE3F000, v39, v40, "Adding push-to-start budget for %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x2318C20D0](v42, -1, -1);
    MEMORY[0x2318C20D0](v41, -1, -1);
  }

  v43 = v32;
  v44 = *(v4 + 200);
  if (*(v4 + 208))
  {
    v45 = 10;
  }

  else
  {
    v45 = *(v4 + 200);
  }

  v46 = v61;

  v47 = v63;
  sub_22CE85954();
  LOBYTE(aBlock[0]) = 1;
  sub_22CE5495C(aBlock);
  v49 = v48;
  sub_22CE858C4();
  v50 = v15[5];
  v51 = &v19[v15[7]];
  *v51 = v62;
  *(v51 + 1) = v46;
  v52 = &v19[v15[6]];
  *v52 = a2;
  v52[1] = v43;
  v19[v15[9]] = 0;
  v53 = *(v64 + 40);

  v53(v19, v47, v65);
  *&v19[v50] = v45;
  *&v19[v15[10]] = v49;
  *&v19[v15[11]] = v45;
  v19[v15[8]] = 1;
  v54 = *(v4 + 288);
  v55 = *(v4 + 296);
  __swift_project_boxed_opaque_existential_1((v4 + 264), v54);
  (*(v55 + 24))(v19, v54, v55);
  v56 = *(v4 + 56);
  aBlock[4] = sub_22CE5E868;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_59;
  v57 = _Block_copy(aBlock);

  v58 = v66;
  sub_22CE85D24();
  v73 = MEMORY[0x277D84F90];
  sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
  v59 = v68;
  v60 = v71;
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v58, v59, v57);
  _Block_release(v57);
  (*(v70 + 8))(v59, v60);
  (*(v67 + 8))(v58, v69);
  sub_22CE5E6C8(v19, type metadata accessor for Budget);
}

void sub_22CE578E8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v68 = sub_22CE85D14();
  v73 = *(v68 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v68);
  v71 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_22CE85D34();
  v70 = *(v72 - 8);
  v8 = *(v70 + 64);
  MEMORY[0x28223BE20](v72);
  v69 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v67 - v12;
  v74 = type metadata accessor for Budget();
  v14 = *(v74 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v74);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22CE85D44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v3[6];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_22CE85D54();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (os_variant_has_internal_ui())
  {
    v25 = [objc_opt_self() standardUserDefaults];
    v26 = sub_22CE85DF4();
    v27 = [v25 BOOLForKey_];

    if (v27)
    {
      if (qword_281445360 != -1)
      {
        swift_once();
      }

      v28 = sub_22CE85C84();
      __swift_project_value_buffer(v28, qword_281445368);
      v29 = sub_22CE85C74();
      v30 = sub_22CE85F84();
      if (!os_log_type_enabled(v29, v30))
      {
        goto LABEL_13;
      }

      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_22CE3F000, v29, v30, "Automation flag set, not reducing budget.", v31, 2u);
      goto LABEL_12;
    }
  }

  v32 = v3[36];
  v33 = v3[37];
  __swift_project_boxed_opaque_existential_1(v3 + 33, v32);
  (*(v33 + 16))(a1, a2, v32, v33);
  v34 = v74;
  if ((*(v14 + 48))(v13, 1, v74) == 1)
  {
    sub_22CE42330(v13, &qword_27D9EEBA0, &qword_22CE86D20);
    if (qword_281445360 == -1)
    {
LABEL_10:
      v35 = sub_22CE85C84();
      __swift_project_value_buffer(v35, qword_281445368);

      v29 = sub_22CE85C74();
      v36 = sub_22CE85FA4();

      if (!os_log_type_enabled(v29, v36))
      {
LABEL_13:

        return;
      }

      v31 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock = v37;
      *v31 = 136446210;
      *(v31 + 4) = sub_22CE44280(a1, a2, &aBlock);
      _os_log_impl(&dword_22CE3F000, v29, v36, "Budget does not exist; not reducing budget for %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x2318C20D0](v37, -1, -1);
LABEL_12:
      MEMORY[0x2318C20D0](v31, -1, -1);
      goto LABEL_13;
    }

LABEL_29:
    swift_once();
    goto LABEL_10;
  }

  sub_22CE5E5F8(v13, v17, type metadata accessor for Budget);
  v38 = *(v34 + 20);
  v39 = *&v17[v38];
  v40 = v39 - 1;
  if (__OFSUB__(v39, 1))
  {
    __break(1u);
  }

  else
  {
    *&v17[v38] = v40;
    v41 = v3[36];
    v42 = v3[37];
    __swift_project_boxed_opaque_existential_1(v3 + 33, v41);
    (*(v42 + 24))(v17, v41, v42);
    if (qword_281445360 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v43 = sub_22CE85C84();
  __swift_project_value_buffer(v43, qword_281445368);

  v44 = sub_22CE85C74();
  v45 = sub_22CE85FA4();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136446466;
    *(v46 + 4) = sub_22CE44280(a1, a2, &aBlock);
    *(v46 + 12) = 2050;
    *(v46 + 14) = v40;
    _os_log_impl(&dword_22CE3F000, v44, v45, "Reduced budget for %{public}s to: %{public}ld", v46, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x2318C20D0](v47, -1, -1);
    MEMORY[0x2318C20D0](v46, -1, -1);
  }

  v48 = v68;
  LOBYTE(aBlock) = 2;
  if (sub_22CE59D94(a1, a2, &aBlock))
  {
    v49 = v3[7];
    v50 = swift_allocObject();
    v50[2] = v3;
    v50[3] = a1;
    v50[4] = a2;
    v80 = sub_22CE5E7CC;
    v81 = v50;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v51 = &block_descriptor_83;
LABEL_24:
    v78 = sub_22CE42F10;
    v79 = v51;
    v56 = _Block_copy(&aBlock);

    v57 = v69;
    sub_22CE85D24();
    v82 = MEMORY[0x277D84F90];
    sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
    v58 = v71;
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v57, v58, v56);
    _Block_release(v56);
    (*(v73 + 8))(v58, v48);
    v59 = v57;
    v34 = v74;
    (*(v70 + 8))(v59, v72);

    goto LABEL_25;
  }

  LOBYTE(aBlock) = 1;
  if (sub_22CE59D94(a1, a2, &aBlock))
  {
    v52 = v3[7];
    v53 = swift_allocObject();
    v53[2] = v3;
    v53[3] = a1;
    v53[4] = a2;
    v80 = sub_22CE5E768;
    v81 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v51 = &block_descriptor_77;
    goto LABEL_24;
  }

  LOBYTE(aBlock) = 0;
  if (sub_22CE59D94(a1, a2, &aBlock))
  {
    v54 = v3[7];
    v55 = swift_allocObject();
    v55[2] = v3;
    v55[3] = a1;
    v55[4] = a2;
    v80 = sub_22CE5E744;
    v81 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v51 = &block_descriptor_71;
    goto LABEL_24;
  }

LABEL_25:
  swift_beginAccess();
  v60 = &v17[*(v34 + 28)];
  v61 = v60[1];
  aBlock = *v60;
  v77 = v61;

  v62 = sub_22CE5C1A0(&aBlock);

  if (v62)
  {
    v63 = v3[7];
    v80 = sub_22CE5E728;
    v81 = v3;
    aBlock = MEMORY[0x277D85DD0];
    v77 = 1107296256;
    v78 = sub_22CE42F10;
    v79 = &block_descriptor_65;
    v64 = _Block_copy(&aBlock);

    v65 = v69;
    sub_22CE85D24();
    v75 = MEMORY[0x277D84F90];
    sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
    v66 = v71;
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v65, v66, v64);
    _Block_release(v64);
    (*(v73 + 8))(v66, v48);
    (*(v70 + 8))(v65, v72);
  }

  sub_22CE5E6C8(v17, type metadata accessor for Budget);
}

uint64_t sub_22CE584E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22CE85D14();
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = *(v38 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22CE85D34();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = sub_22CE85D44();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = (&v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = v3[6];
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x277D85200], v18);
  v24 = v23;
  LOBYTE(v23) = sub_22CE85D54();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v26 = v3[36];
    v27 = v3[37];
    __swift_project_boxed_opaque_existential_1(v3 + 33, v26);
    (*(v27 + 16))(a1, a2, v26, v27);
    v28 = type metadata accessor for Budget();
    v29 = (*(*(v28 - 8) + 48))(v17, 1, v28);
    result = sub_22CE42330(v17, &qword_27D9EEBA0, &qword_22CE86D20);
    if (v29 != 1)
    {
      v30 = v3[36];
      v31 = v3[37];
      __swift_project_boxed_opaque_existential_1(v3 + 33, v30);
      (*(v31 + 32))(a1, a2, v30, v31);
      v32 = v3[7];
      aBlock[4] = sub_22CE5E868;
      aBlock[5] = v3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CE42F10;
      aBlock[3] = &block_descriptor_62;
      v33 = _Block_copy(aBlock);

      sub_22CE85D24();
      v40 = MEMORY[0x277D84F90];
      sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
      sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
      v34 = v39;
      sub_22CE86034();
      MEMORY[0x2318C1890](0, v13, v9, v33);
      _Block_release(v33);
      (*(v38 + 8))(v9, v34);
      (*(v36 + 8))(v13, v37);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE58994(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v87 = a3;
  v88 = a2;
  v6 = sub_22CE85D14();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_22CE85D34();
  v78 = *(v80 - 8);
  v9 = *(v78 + 64);
  MEMORY[0x28223BE20](v80);
  v77 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_22CE85974();
  v74 = *(v75 - 8);
  v11 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Budget();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v76 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v69 - v19;
  v21 = sub_22CE85D44();
  v22 = *(v21 - 8);
  v23 = v22[8];
  MEMORY[0x28223BE20](v21);
  v25 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[1];
  v72 = *a1;
  v71 = v26;
  v27 = v3[6];
  *v25 = v27;
  v28 = v22[13];
  v85 = *MEMORY[0x277D85200];
  v84 = v28;
  v28(v25);
  v83 = v27;
  v29 = sub_22CE85D54();
  v30 = v22[1];
  v86 = v21;
  v30(v25, v21);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_4;
  }

  v70 = v30;
  v31 = v4[36];
  v32 = v4[37];
  __swift_project_boxed_opaque_existential_1(v4 + 33, v31);
  (*(v32 + 16))(v88, v87, v31, v32);
  LODWORD(v31) = (*(v14 + 48))(v20, 1, v13);
  result = sub_22CE42330(v20, &qword_27D9EEBA0, &qword_22CE86D20);
  if (v31 != 1)
  {
    return result;
  }

  v69 = v13;
  if (qword_281445360 != -1)
  {
    goto LABEL_10;
  }

LABEL_4:
  v34 = sub_22CE85C84();
  __swift_project_value_buffer(v34, qword_281445368);
  v35 = v87;

  v36 = sub_22CE85C74();
  v37 = sub_22CE85FA4();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_22CE44280(v88, v35, &aBlock);
    _os_log_impl(&dword_22CE3F000, v36, v37, "Adding activity push budget for %{public}s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x2318C20D0](v39, -1, -1);
    MEMORY[0x2318C20D0](v38, -1, -1);
  }

  v41 = v83;
  v40 = v84;
  *v25 = v83;
  v42 = v86;
  v40(v25, v85, v86);
  v43 = v41;
  LOBYTE(v41) = sub_22CE85D54();
  result = v70(v25, v42);
  if (v41)
  {
    v44 = v4[11];
    v45 = v4[12];
    __swift_project_boxed_opaque_existential_1(v4 + 8, v44);
    v46 = v72;
    v47 = v71;
    aBlock = v72;
    v91 = v71;
    (*(v45 + 16))(&v89, &aBlock, v44, v45);
    v48 = v35;
    v49 = v89;

    v50 = v73;
    sub_22CE85954();
    LOBYTE(aBlock) = v49;
    sub_22CE54A30(&aBlock);
    v86 = v51;
    LOBYTE(aBlock) = v49;
    sub_22CE5495C(&aBlock);
    v53 = v52;
    LOBYTE(aBlock) = v49;
    sub_22CE54A30(&aBlock);
    v55 = v54;
    v56 = v76;
    sub_22CE858C4();
    v57 = v69;
    v58 = v69[5];
    v59 = (v56 + v69[7]);
    *v59 = v46;
    v59[1] = v47;
    v60 = (v56 + v57[6]);
    *v60 = v88;
    v60[1] = v48;
    *(v56 + v57[9]) = 1;
    v61 = *(v74 + 40);

    v61(v56, v50, v75);
    *(v56 + v58) = v86;
    *(v56 + v57[10]) = v53;
    *(v56 + v57[11]) = v55;
    *(v56 + v57[8]) = v49;
    v62 = v4[36];
    v63 = v4[37];
    __swift_project_boxed_opaque_existential_1(v4 + 33, v62);
    (*(v63 + 24))(v56, v62, v63);
    v64 = v4[7];
    v94 = sub_22CE5E868;
    v95 = v4;
    aBlock = MEMORY[0x277D85DD0];
    v91 = 1107296256;
    v92 = sub_22CE42F10;
    v93 = &block_descriptor_86;
    v65 = _Block_copy(&aBlock);

    v66 = v77;
    sub_22CE85D24();
    v89 = MEMORY[0x277D84F90];
    sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
    sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
    v67 = v79;
    v68 = v82;
    sub_22CE86034();
    MEMORY[0x2318C1890](0, v66, v67, v65);
    _Block_release(v65);
    (*(v81 + 8))(v67, v68);
    (*(v78 + 8))(v66, v80);
    sub_22CE5E6C8(v56, type metadata accessor for Budget);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE59234()
{
  v1 = v0;
  v2 = sub_22CE85C04();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x28223BE20](v2);
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22CE85C14();
  v6 = *(v5 - 8);
  v54 = v5;
  v55 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v53 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22CE85974();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v44 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  v19 = sub_22CE85D44();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = v1[6];
  *v23 = v24;
  (*(v20 + 104))(v23, *MEMORY[0x277D85200], v19);
  v25 = v24;
  LOBYTE(v24) = sub_22CE85D54();
  (*(v20 + 8))(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  sub_22CE4DD94((v1 + 27), &v57, &unk_27D9EEF30, &unk_22CE87948);
  if (*(&v58 + 1))
  {
    sub_22CE40D28(&v57, v56);
    sub_22CE42330(&v57, &unk_27D9EEF30, &unk_22CE87948);
    __swift_project_boxed_opaque_existential_1(v56, v56[3]);
    sub_22CE85C94();
    __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    sub_22CE42330(&v57, &unk_27D9EEF30, &unk_22CE87948);
  }

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  swift_beginAccess();
  sub_22CE423C0(&v57, (v1 + 27));
  swift_endAccess();
  sub_22CE5B618(v18);
  sub_22CE858D4();
  v26 = sub_22CE85904();
  v23 = v10;
  v27 = v10[1];
  v27(v16, v9);
  if ((v26 & 1) == 0)
  {
    return (v27)(v18, v9);
  }

  v49 = v27;
  if (qword_281445360 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v28 = sub_22CE85C84();
  __swift_project_value_buffer(v28, qword_281445368);
  v29 = v23[2];
  v30 = v50;
  v48 = v23 + 2;
  v47 = v29;
  v29(v50, v18, v9);
  v31 = sub_22CE85C74();
  v32 = sub_22CE85FA4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v44 = v33;
    v45 = swift_slowAlloc();
    *&v57 = v45;
    *v33 = 136446210;
    sub_22CE42614(&qword_2814452A0, MEMORY[0x277CC9578]);
    v34 = sub_22CE86174();
    v46 = v2;
    v36 = v35;
    v49(v30, v9);
    v37 = sub_22CE44280(v34, v36, &v57);
    v2 = v46;

    v38 = v44;
    *(v44 + 1) = v37;
    v39 = v38;
    _os_log_impl(&dword_22CE3F000, v31, v32, "Scheduling wake to re-evaluate push subscription budgets at %{public}s", v38, 0xCu);
    v40 = v45;
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x2318C20D0](v40, -1, -1);
    MEMORY[0x2318C20D0](v39, -1, -1);
  }

  else
  {

    v49(v30, v9);
  }

  v47(v16, v18, v9);
  (*(v51 + 104))(v52, *MEMORY[0x277D4D510], v2);
  v42 = v53;
  sub_22CE85BF4();
  v43 = v1[17];
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  swift_allocObject();
  swift_weakInit();

  sub_22CE85C24();

  (*(v55 + 8))(v42, v54);
  v49(v18, v9);

  swift_beginAccess();
  sub_22CE423C0(&v57, (v1 + 27));
  return swift_endAccess();
}

uint64_t BudgetServer.budget(subscriptionID:)()
{
  v1 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  return sub_22CE85FE4();
}

Swift::Bool __swiftcall BudgetServer.hasExceededMaximumPushToStartBudget(subscriptionID:)(Swift::String subscriptionID)
{
  v2 = *(v1 + 48);
  sub_22CE85FE4();
  return v4;
}

uint64_t sub_22CE59A58@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Budget();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22CE85D44();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[6];
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x277D85200], v14);
  v20 = v19;
  LOBYTE(v19) = sub_22CE85D54();
  result = (*(v15 + 8))(v18, v14);
  if (v19)
  {
    v22 = a1[36];
    v23 = a1[37];
    __swift_project_boxed_opaque_existential_1(a1 + 33, v22);
    (*(v23 + 16))(v27, v28, v22, v23);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      result = sub_22CE42330(v8, &qword_27D9EEBA0, &qword_22CE86D20);
      v24 = 0;
    }

    else
    {
      sub_22CE5E5F8(v8, v13, type metadata accessor for Budget);
      v25 = *&v13[*(v9 + 20)];
      result = sub_22CE5E6C8(v13, type metadata accessor for Budget);
      v24 = v25 < 1;
    }

    *v29 = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CE59D94(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v33 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v31[-v9];
  v11 = type metadata accessor for Budget();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_22CE85D44();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v31[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = *a3;
  v21 = v4[6];
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x277D85200], v16);
  v22 = v21;
  LOBYTE(v21) = sub_22CE85D54();
  result = (*(v17 + 8))(v20, v16);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v24 = v4[36];
  v25 = v4[37];
  __swift_project_boxed_opaque_existential_1(v4 + 33, v24);
  (*(v25 + 16))(a1, v33, v24, v25);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_22CE42330(v10, &qword_27D9EEBA0, &qword_22CE86D20);
    return 0;
  }

  result = sub_22CE5E5F8(v10, v15, type metadata accessor for Budget);
  v26 = *&v15[*(v11 + 44)];
  v27 = *&v15[*(v11 + 20)];
  v28 = v26 - v27;
  if (__OFSUB__(v26, v27))
  {
    goto LABEL_8;
  }

  v34 = v32;
  sub_22CE54A30(&v34);
  v30 = v29;
  sub_22CE5E6C8(v15, type metadata accessor for Budget);
  return v28 >= v30;
}

uint64_t sub_22CE5A0AC()
{
  v1 = *(*v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE18, &unk_22CE87900);
  sub_22CE85FE4();
  return v3;
}

uint64_t sub_22CE5A120()
{
  v1 = *(*v0 + 48);
  sub_22CE85FE4();
  return v3;
}

uint64_t sub_22CE5A18C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(*v3 + 48);
  v6 = *a3;
  sub_22CE85FE4();
  return v7;
}

uint64_t sub_22CE5A200()
{
  v1 = *(*v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  return sub_22CE85FE4();
}

SessionPushNotifications::Priority __swiftcall BudgetServer.priority(topic:defaultPriority:)(SessionPushNotifications::Topic topic, SessionPushNotifications::Priority defaultPriority)
{
  v3 = *topic.unsuffixed._countAndFlagsBits;
  v4 = *(v2 + 48);
  v6 = *(topic.unsuffixed._countAndFlagsBits + 8);
  v7 = *topic.unsuffixed._object;
  return sub_22CE85FE4();
}

uint64_t sub_22CE5A310@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 *a5@<X8>)
{
  v9 = a1[21];
  v10 = a1[22];
  __swift_project_boxed_opaque_existential_1(a1 + 18, v9);
  (*(v10 + 8))(v16, v9, v10);
  sub_22CE56590();
  v14 = a2;
  v15 = a3;
  v17 = a4;
  sub_22CE5A438(&v14, &v17, v16, &v18);
  v11 = v18;
  v14 = a2;
  v15 = a3;
  v17 = a4;
  sub_22CE5ACF0(&v14, &v17, v16, &v18);
  result = __swift_destroy_boxed_opaque_existential_1(v16);
  v13 = v18;
  if (v11 != 3)
  {
    if (v18 > 1u)
    {
      if (v18 == 2 && v11 < 2)
      {
        goto LABEL_12;
      }
    }

    else if (v18 && !v11)
    {
      goto LABEL_12;
    }

    v13 = v11;
    goto LABEL_12;
  }

  if (v18 == 3)
  {
    v13 = a4;
  }

LABEL_12:
  *a5 = v13;
  return result;
}

uint64_t sub_22CE5A438@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v94 = a3;
  v8 = type metadata accessor for Budget();
  v109 = *(v8 - 8);
  v110 = v8;
  v9 = *(v109 + 64);
  MEMORY[0x28223BE20](v8);
  v93 = &v90[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v99 = *(v111 - 8);
  v11 = *(v99 + 64);
  v12 = MEMORY[0x28223BE20](v111);
  v92 = &v90[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v12);
  v101 = &v90[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v107 = &v90[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v103 = &v90[-v19];
  MEMORY[0x28223BE20](v18);
  v106 = &v90[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE60, &qword_22CE87B40);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v97 = &v90[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v96 = &v90[-v25];
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA0, &qword_22CE86D20);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v98 = &v90[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v28);
  v100 = &v90[-v30];
  v31 = sub_22CE85D44();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v90[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = a1[1];
  v105 = *a1;
  v102 = v36;
  v91 = *a2;
  v37 = v4[6];
  *v35 = v37;
  (*(v32 + 104))(v35, *MEMORY[0x277D85200], v31);
  v38 = v37;
  LOBYTE(a2) = sub_22CE85D54();
  result = (*(v32 + 8))(v35, v31);
  if (a2)
  {
    v95 = a4;
    v40 = v4[36];
    v41 = v4[37];
    __swift_project_boxed_opaque_existential_1(v4 + 33, v40);
    v42 = (*(v41 + 8))(v40, v41);
    v43 = v42;
    v44 = v42 + 64;
    v45 = 1 << *(v42 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v42 + 64);
    v48 = (v45 + 63) >> 6;

    v49 = 0;
    v50 = &qword_27D9EEE58;
    v51 = v103;
    v104 = v44;
    v108 = result;
    while (v47)
    {
      v53 = v50;
LABEL_13:
      v55 = __clz(__rbit64(v47)) | (v49 << 6);
      v56 = (*(v43 + 48) + 16 * v55);
      v57 = *v56;
      v58 = v56[1];
      v59 = v111;
      v60 = v106;
      sub_22CE5E660(*(v43 + 56) + *(v109 + 72) * v55, &v106[*(v111 + 48)], type metadata accessor for Budget);
      *v60 = v57;
      v60[1] = v58;
      sub_22CE44874(v60, v51, v53, &qword_22CE87B38);
      v61 = v107;
      sub_22CE4DD94(v51, v107, v53, &qword_22CE87B38);
      v62 = *(v61 + 1);

      v63 = &v61[*(v59 + 48)];
      v50 = v53;
      LOBYTE(v62) = *(v63 + *(v110 + 36));
      sub_22CE5E6C8(v63, type metadata accessor for Budget);
      if ((v62 & 1) == 0)
      {
        v64 = v101;
        sub_22CE4DD94(v51, v101, v53, &qword_22CE87B38);
        v65 = *(v64 + 1);

        v66 = &v64[*(v111 + 48)];
        v67 = (v66 + *(v110 + 28));
        v68 = *v67;
        v69 = v67[1];

        sub_22CE5E6C8(v66, type metadata accessor for Budget);
        if (v68 == v105 && v69 == v102)
        {

          v70 = v103;
          goto LABEL_25;
        }

        v52 = sub_22CE86194();

        v51 = v103;
        if (v52)
        {

          v70 = v51;
LABEL_25:
          v72 = v96;
          sub_22CE44874(v70, v96, &qword_27D9EEE58, &qword_22CE87B38);
          v71 = v99;
          v73 = v111;
          (*(v99 + 56))(v72, 0, 1, v111);
          v74 = v95;
          v76 = v97;
          v75 = v98;
LABEL_18:

          sub_22CE44874(v72, v76, &qword_27D9EEE60, &qword_22CE87B40);
          v77 = 1;
          v78 = (*(v71 + 48))(v76, 1, v73);
          v79 = v100;
          if (v78 != 1)
          {
            v80 = v92;
            sub_22CE44874(v76, v92, &qword_27D9EEE58, &qword_22CE87B38);
            v81 = *(v80 + 1);

            sub_22CE5E5F8(&v80[*(v73 + 48)], v79, type metadata accessor for Budget);
            v77 = 0;
          }

          v82 = v109;
          v83 = v77;
          v84 = v110;
          (*(v109 + 56))(v79, v83, 1, v110);
          sub_22CE4DD94(v79, v75, &qword_27D9EEBA0, &qword_22CE86D20);
          if ((*(v82 + 48))(v75, 1, v84) == 1)
          {
            sub_22CE42330(v79, &qword_27D9EEBA0, &qword_22CE86D20);
            result = sub_22CE42330(v75, &qword_27D9EEBA0, &qword_22CE86D20);
            v85 = 3;
          }

          else
          {
            v86 = v75;
            v87 = v93;
            sub_22CE5E5F8(v86, v93, type metadata accessor for Budget);
            v88 = v94[3];
            v89 = v94[4];
            __swift_project_boxed_opaque_existential_1(v94, v88);
            v112 = v91;
            (*(v89 + 8))(&v113, &v112, v87, v88, v89);
            sub_22CE5E6C8(v87, type metadata accessor for Budget);
            result = sub_22CE42330(v79, &qword_27D9EEBA0, &qword_22CE86D20);
            v85 = v113;
          }

          *v74 = v85;
          return result;
        }
      }

      v47 &= v47 - 1;
      result = sub_22CE42330(v51, v53, &qword_22CE87B38);
      v43 = v108;
      v44 = v104;
    }

    while (1)
    {
      v54 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        break;
      }

      if (v54 >= v48)
      {

        v71 = v99;
        v72 = v96;
        v73 = v111;
        (*(v99 + 56))(v96, 1, 1, v111);
        v74 = v95;
        v76 = v97;
        v75 = v98;
        goto LABEL_18;
      }

      v47 = *(v44 + 8 * v54);
      ++v49;
      if (v47)
      {
        v53 = v50;
        v49 = v54;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5ACF0@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v104 = a4;
  v8 = sub_22CE85974();
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  MEMORY[0x28223BE20](v8);
  v102 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v11 = *(*(v113 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v113);
  v112 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v111 = (&v94 - v15);
  MEMORY[0x28223BE20](v14);
  v110 = &v94 - v16;
  v105 = type metadata accessor for Budget();
  v118 = *(v105 - 8);
  v17 = *(v118 + 64);
  v18 = MEMORY[0x28223BE20](v105);
  v101 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v114 = &v94 - v21;
  MEMORY[0x28223BE20](v20);
  v109 = &v94 - v22;
  v23 = sub_22CE85D44();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *a1;
  v29 = a1[1];
  v30 = v4;
  v100 = *a2;
  v31 = *(v4 + 48);
  *v27 = v31;
  (*(v24 + 104))(v27, *MEMORY[0x277D85200], v23);
  v32 = v31;
  LOBYTE(v31) = sub_22CE85D54();
  result = (*(v24 + 8))(v27, v23);
  if ((v31 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v34 = v30;
  v35 = *(v30 + 288);
  v36 = *(v30 + 296);
  v99 = v34;
  __swift_project_boxed_opaque_existential_1((v34 + 264), v35);
  v37 = (*(v36 + 8))(v35, v36);

  v38 = sub_22CE5E42C(v37, v28, v29);

  v39 = *(v38 + 16);
  v98 = v28;
  v97 = v29;
  if (v39)
  {
    v95 = v8;
    v96 = a3;
    *v121 = MEMORY[0x277D84F90];
    sub_22CE4BB84(0, v39, 0);
    v40 = *v121;
    v41 = -1 << *(v38 + 32);
    v119 = v38 + 64;
    result = sub_22CE86044();
    v42 = result;
    v43 = 0;
    v106 = v38 + 72;
    v107 = v39;
    v44 = v118;
    v45 = v38;
    v108 = v38;
    while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v45 + 32))
    {
      v47 = v42 >> 6;
      if ((*(v119 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
      {
        goto LABEL_30;
      }

      v48 = *(v45 + 36);
      v115 = v43;
      v116 = v48;
      v49 = v44;
      v118 = v40;
      v50 = v113;
      v51 = *(v113 + 48);
      v52 = *(v45 + 56);
      v53 = (*(v45 + 48) + 16 * v42);
      v55 = *v53;
      v54 = v53[1];
      v117 = *(v49 + 72);
      v56 = v110;
      sub_22CE5E660(v52 + v117 * v42, &v110[v51], type metadata accessor for Budget);
      v57 = v111;
      *v111 = v55;
      v57[1] = v54;
      sub_22CE5E5F8(&v56[v51], v57 + *(v50 + 48), type metadata accessor for Budget);
      v58 = v57;
      v59 = v112;
      sub_22CE44874(v58, v112, &qword_27D9EEE58, &qword_22CE87B38);
      v60 = *(v59 + 8);

      v61 = *(v50 + 48);
      v40 = v118;
      v62 = v109;
      sub_22CE5E5F8(v59 + v61, v109, type metadata accessor for Budget);
      *v121 = v40;
      v64 = *(v40 + 16);
      v63 = *(v40 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_22CE4BB84(v63 > 1, v64 + 1, 1);
        v40 = *v121;
      }

      *(v40 + 16) = v64 + 1;
      result = sub_22CE5E5F8(v62, v40 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v64 * v117, type metadata accessor for Budget);
      v45 = v108;
      v46 = 1 << *(v108 + 32);
      if (v42 >= v46)
      {
        goto LABEL_31;
      }

      v65 = *(v119 + 8 * v47);
      if ((v65 & (1 << v42)) == 0)
      {
        goto LABEL_32;
      }

      if (v116 != *(v108 + 36))
      {
        goto LABEL_33;
      }

      v44 = v49;
      v66 = v65 & (-2 << (v42 & 0x3F));
      if (v66)
      {
        v46 = __clz(__rbit64(v66)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v67 = v47 << 6;
        v68 = v47 + 1;
        v69 = (v106 + 8 * v47);
        while (v68 < (v46 + 63) >> 6)
        {
          v71 = *v69++;
          v70 = v71;
          v67 += 64;
          ++v68;
          if (v71)
          {
            result = sub_22CE4D50C(v42, v116, 0);
            v46 = __clz(__rbit64(v70)) + v67;
            goto LABEL_5;
          }
        }

        result = sub_22CE4D50C(v42, v116, 0);
      }

LABEL_5:
      v43 = v115 + 1;
      v42 = v46;
      if (v115 + 1 == v107)
      {

        a3 = v96;
        v8 = v95;
        v72 = *(v40 + 16);
        if (!v72)
        {
          goto LABEL_26;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_29;
  }

  v40 = MEMORY[0x277D84F90];
  v44 = v118;
  v72 = *(MEMORY[0x277D84F90] + 16);
  if (v72)
  {
LABEL_21:
    v73 = 0;
    v74 = *(v105 + 20);
    v75 = v40 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
    v76 = *(v44 + 72);
    v77 = v114;
    while (1)
    {
      sub_22CE5E660(v75, v77, type metadata accessor for Budget);
      v78 = *(v77 + v74);
      result = sub_22CE5E6C8(v77, type metadata accessor for Budget);
      v79 = __OFADD__(v73, v78);
      v73 += v78;
      if (v79)
      {
        break;
      }

      v75 += v76;
      if (!--v72)
      {

        v80 = v97;

        v81 = v102;
        sub_22CE85954();
        v121[0] = 1;
        sub_22CE5495C(v121);
        v83 = v82;
        v121[0] = 1;
        sub_22CE54A30(v121);
        v85 = v84;
        v86 = v101;
        sub_22CE858C4();
        v87 = v105;
        v88 = *(v105 + 20);
        v89 = (v86 + *(v105 + 28));
        *v89 = v98;
        v89[1] = v80;
        v90 = (v86 + v87[6]);
        *v90 = 0x7461676572676761;
        v90[1] = 0xEF74656764754265;
        *(v86 + v87[9]) = 1;
        (*(v103 + 40))(v86, v81, v8);
        *(v86 + v88) = v73;
        *(v86 + v87[10]) = v83;
        *(v86 + v87[11]) = v85;
        *(v86 + v87[8]) = 1;
        v91 = a3[3];
        v92 = a3[4];
        __swift_project_boxed_opaque_existential_1(a3, v91);
        v120 = v100;
        (*(v92 + 8))(v121, &v120, v86, v91, v92);
        result = sub_22CE5E6C8(v86, type metadata accessor for Budget);
        v93 = v121[0];
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_26:

  v93 = 3;
LABEL_27:
  *v104 = v93;
  return result;
}

uint64_t sub_22CE5B5A8(uint64_t *a1, char *a2)
{
  v3 = *(*v2 + 48);
  v5 = *a1;
  v6 = a1[1];
  v7 = *a2;
  return sub_22CE85FE4();
}

uint64_t sub_22CE5B618@<X0>(char *a1@<X8>)
{
  v89 = a1;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v2 = *(*(v108 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v108);
  v91 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v94 = &v89 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v102 = &v89 - v8;
  MEMORY[0x28223BE20](v7);
  v109 = (&v89 - v9);
  v10 = sub_22CE85974();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v90 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v89 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v106 = &v89 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v89 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v100 = &v89 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v99 = &v89 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v89 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v89 - v31;
  v33 = sub_22CE85D44();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = (&v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = v1[6];
  *v37 = v38;
  (*(v34 + 104))(v37, *MEMORY[0x277D85200], v33);
  v39 = v38;
  LOBYTE(v38) = sub_22CE85D54();
  result = (*(v34 + 8))(v37, v33);
  if (v38)
  {
    v92 = v17;
    v41 = v1[36];
    v42 = v1[37];
    __swift_project_boxed_opaque_existential_1(v1 + 33, v41);
    v43 = (*(v42 + 8))(v41, v42);
    sub_22CE858D4();
    v45 = *(v11 + 16);
    v44 = v11 + 16;
    v95 = v45;
    v45(v30, v32, v10);
    v46 = v43 + 64;
    v47 = 1 << *(v43 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & *(v43 + 64);
    v50 = (v47 + 63) >> 6;
    v51 = (v44 - 8);
    v96 = v44;
    v103 = (v44 + 16);
    v104 = v43;

    v52 = 0;
    v105 = v30;
    v97 = v50;
    v98 = v32;
    while (v49)
    {
LABEL_12:
      v56 = __clz(__rbit64(v49)) | (v52 << 6);
      v57 = *(v104 + 56);
      v58 = (*(v104 + 48) + 16 * v56);
      v60 = *v58;
      v59 = v58[1];
      v61 = type metadata accessor for Budget();
      v62 = v57 + *(*(v61 - 8) + 72) * v56;
      v63 = v108;
      v64 = v109;
      sub_22CE5E660(v62, v109 + *(v108 + 48), type metadata accessor for Budget);
      *v64 = v60;
      v64[1] = v59;
      v65 = v102;
      sub_22CE4DD94(v64, v102, &qword_27D9EEE58, &qword_22CE87B38);
      v66 = *(v65 + 8);

      v67 = v65 + *(v63 + 48);
      v68 = v106;
      sub_22CE85954();
      LOBYTE(v66) = sub_22CE858F4();
      v69 = *v51;
      (*v51)(v68, v10);
      if (v66)
      {
        v70 = v101;
        sub_22CE858C4();
      }

      else
      {
        v70 = v101;
        v95(v101, v67, v10);
      }

      v107 = v61;
      v71 = *(v67 + *(v61 + 40));
      v72 = v100;
      sub_22CE85914();
      v69(v70, v10);
      sub_22CE5E6C8(v67, type metadata accessor for Budget);
      sub_22CE858C4();
      v73 = sub_22CE858F4();
      v69(v68, v10);
      v69(v72, v10);
      if (v73)
      {
        v74 = v94;
        sub_22CE4DD94(v109, v94, &qword_27D9EEE58, &qword_22CE87B38);
        v75 = *(v74 + 8);

        v76 = v74 + *(v108 + 48);
        sub_22CE85954();
        v77 = sub_22CE858F4();
        v69(v68, v10);
        v32 = v98;
        v78 = v92;
        if (v77)
        {
          sub_22CE858C4();
        }

        else
        {
          v95(v92, v76, v10);
        }

        v79 = *(v76 + *(v107 + 40));
        v80 = v93;
        sub_22CE85914();
        v69(v78, v10);
        sub_22CE5E6C8(v76, type metadata accessor for Budget);
        v30 = v105;
        v81 = sub_22CE85904();
        v69(v80, v10);
        if (v81)
        {
          v82 = v91;
          sub_22CE4DD94(v109, v91, &qword_27D9EEE58, &qword_22CE87B38);
          v83 = *(v82 + 8);

          v84 = v82 + *(v108 + 48);
          v85 = v106;
          sub_22CE85954();
          v86 = sub_22CE858F4();
          v69(v85, v10);
          v87 = v90;
          if (v86)
          {
            sub_22CE858C4();
          }

          else
          {
            v95(v90, v84, v10);
          }

          v88 = *(v84 + *(v107 + 40));
          v54 = v99;
          sub_22CE85914();
          v69(v87, v10);
          sub_22CE42330(v109, &qword_27D9EEE58, &qword_22CE87B38);
          v30 = v105;
          v69(v105, v10);
          sub_22CE5E6C8(v84, type metadata accessor for Budget);
          v53 = *v103;
        }

        else
        {
          sub_22CE42330(v109, &qword_27D9EEE58, &qword_22CE87B38);
          v53 = *v103;
          v54 = v99;
          (*v103)(v99, v30, v10);
        }
      }

      else
      {
        sub_22CE42330(v109, &qword_27D9EEE58, &qword_22CE87B38);
        v53 = *v103;
        v54 = v99;
        v30 = v105;
        (*v103)(v99, v105, v10);
        v32 = v98;
      }

      v49 &= v49 - 1;
      result = (v53)(v30, v54, v10);
      v50 = v97;
    }

    while (1)
    {
      v55 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v55 >= v50)
      {
        (*v51)(v32, v10);

        (*v103)(v89, v30, v10);
      }

      v49 = *(v46 + 8 * v55);
      ++v52;
      if (v49)
      {
        v52 = v55;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5BF40()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v2 = sub_22CE85C84();
    __swift_project_value_buffer(v2, qword_281445368);
    v3 = sub_22CE85C74();
    v4 = sub_22CE85FA4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22CE3F000, v3, v4, "Waking to re-evaluate push subscription budgets", v5, 2u);
      MEMORY[0x2318C20D0](v5, -1, -1);
    }

    v6 = *(v1 + 48);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22CE5E7F8;
    *(v7 + 24) = v1;
    aBlock[4] = sub_22CE5E888;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CE50228;
    aBlock[3] = &block_descriptor_94;
    v8 = _Block_copy(aBlock);

    dispatch_sync(v6, v8);

    _Block_release(v8);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22CE5C158(uint64_t a1)
{
  v1 = *(a1 + 40);

  sub_22CE85CB4();
}

uint64_t sub_22CE5C1A0(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_22CE85D44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v9 = a1[1];
  v11 = *(v2 + 48);
  *v8 = v11;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v12 = v11;
  v13 = sub_22CE85D54();
  (*(v5 + 8))(v8, v4);
  if ((v13 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v15 = 0;
  v16 = 0;
  v50 = "; activityIdentifier: ";
  *&v14 = 136380931;
  v48 = v14;
  *&v14 = 136381187;
  v47 = v14;
  v51 = v10;
  v49 = v2;
  while (1)
  {
    v13 = *(&unk_2840174C8 + v16 + 32);
    v17 = v15;
    v54 = v10;
    v55 = v9;
    LOBYTE(v53) = v13;
    v18 = sub_22CE5C85C(&v54, &v53);
    if ((v19 & 1) == 0)
    {
      break;
    }

    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v20 = sub_22CE85C84();
    __swift_project_value_buffer(v20, qword_281445368);

    v21 = sub_22CE85C74();
    v22 = sub_22CE85FA4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_4;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v53 = v24;
    v54 = v10;
    *v23 = v48;
    v55 = v9;

    MEMORY[0x2318C1750](0xD000000000000017, v50 | 0x8000000000000000);
    v25 = sub_22CE44280(v54, v55, &v53);

    *(v23 + 4) = v25;
    *(v23 + 12) = 2082;
    if (v13)
    {
      v26 = 0x7974697669746361;
    }

    else
    {
      v26 = 0x74536F5468737570;
    }

    if (v13)
    {
      v27 = 0xE800000000000000;
    }

    else
    {
      v27 = 0xEB00000000747261;
    }

    v28 = sub_22CE44280(v26, v27, &v53);

    *(v23 + 14) = v28;
    v10 = v51;
    _os_log_impl(&dword_22CE3F000, v21, v22, "Topic %{private}s has not used any budget for %{public}s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v24, -1, -1);
LABEL_3:
    MEMORY[0x2318C20D0]();
LABEL_4:

    v15 = 1;
    v16 = 1u;
    if (v17)
    {
      return 0;
    }
  }

  if (v18 > 0)
  {
    v52 = v18;
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v29 = sub_22CE85C84();
    __swift_project_value_buffer(v29, qword_281445368);

    v21 = sub_22CE85C74();
    v30 = sub_22CE85FA4();

    if (!os_log_type_enabled(v21, v30))
    {
      goto LABEL_4;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v53 = v32;
    v54 = v10;
    *v31 = v47;
    v55 = v9;

    MEMORY[0x2318C1750](0xD000000000000017, v50 | 0x8000000000000000);
    v33 = sub_22CE44280(v54, v55, &v53);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2082;
    if (v13)
    {
      v34 = 0x7974697669746361;
    }

    else
    {
      v34 = 0x74536F5468737570;
    }

    if (v13)
    {
      v35 = 0xE800000000000000;
    }

    else
    {
      v35 = 0xEB00000000747261;
    }

    v36 = sub_22CE44280(v34, v35, &v53);

    *(v31 + 14) = v36;
    *(v31 + 22) = 2050;
    v10 = v51;
    *(v31 + 24) = v52;
    _os_log_impl(&dword_22CE3F000, v21, v30, "Topic %{private}s has remaining budget for %{public}s of %{public}ld", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v32, -1, -1);
    goto LABEL_3;
  }

  if (qword_281445360 != -1)
  {
LABEL_39:
    swift_once();
  }

  v38 = sub_22CE85C84();
  __swift_project_value_buffer(v38, qword_281445368);

  v39 = sub_22CE85C74();
  v40 = sub_22CE85FA4();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = v48;
    v53 = v42;
    v54 = v51;
    v55 = v9;

    MEMORY[0x2318C1750](0xD000000000000017, v50 | 0x8000000000000000);
    v43 = sub_22CE44280(v54, v55, &v53);

    *(v41 + 4) = v43;
    *(v41 + 12) = 2082;
    if (v13)
    {
      v44 = 0x7974697669746361;
    }

    else
    {
      v44 = 0x74536F5468737570;
    }

    if (v13)
    {
      v45 = 0xE800000000000000;
    }

    else
    {
      v45 = 0xEB00000000747261;
    }

    v46 = sub_22CE44280(v44, v45, &v53);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_22CE3F000, v39, v40, "Topic %{private}s is out of budget because %{public}s is exhausted", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C20D0](v42, -1, -1);
    MEMORY[0x2318C20D0](v41, -1, -1);
  }

  return 1;
}

uint64_t sub_22CE5C85C(uint64_t *a1, unsigned __int8 *a2)
{
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v5 = *(*(v73 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v73);
  v65 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v71 = &v62 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = (&v62 - v10);
  v12 = sub_22CE85D44();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v66 = a1[1];
  v67 = v17;
  v70 = *a2;
  v18 = v2[6];
  *v16 = v18;
  (*(v13 + 104))(v16, *MEMORY[0x277D85200], v12);
  v19 = v18;
  LOBYTE(a1) = sub_22CE85D54();
  result = (*(v13 + 8))(v16, v12);
  if (a1)
  {
    v21 = v2[36];
    v22 = v2[37];
    __swift_project_boxed_opaque_existential_1(v2 + 33, v21);
    v23 = (*(v22 + 8))(v21, v22);
    v25 = v23 + 64;
    v24 = *(v23 + 64);
    v26 = *(v23 + 32);
    v64 = 1;
    v27 = 1 << v26;
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & v24;
    v30 = (v27 + 63) >> 6;
    v72 = v23;

    v63 = 0;
    v31 = 0;
    v32 = &qword_27D9EEE58;
    v68 = v30;
    v69 = v25;
    if (v29)
    {
      while (1)
      {
        v33 = v32;
LABEL_10:
        v35 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v36 = v35 | (v31 << 6);
        v37 = *(v72 + 56);
        v38 = (*(v72 + 48) + 16 * v36);
        v40 = *v38;
        v39 = v38[1];
        v41 = type metadata accessor for Budget();
        v42 = v37 + *(*(v41 - 1) + 72) * v36;
        v43 = v73;
        sub_22CE5E660(v42, v11 + *(v73 + 48), type metadata accessor for Budget);
        *v11 = v40;
        v11[1] = v39;
        v44 = v71;
        sub_22CE4DD94(v11, v71, v33, &qword_22CE87B38);
        v45 = *(v44 + 8);

        v46 = v44 + *(v43 + 48);
        v32 = v33;
        LODWORD(v39) = *(v46 + v41[9]);
        sub_22CE5E6C8(v46, type metadata accessor for Budget);
        if (v70 != v39)
        {
          break;
        }

        v47 = v65;
        sub_22CE4DD94(v11, v65, v33, &qword_22CE87B38);
        v48 = *(v47 + 8);

        v49 = v47 + *(v73 + 48);
        v50 = (v49 + v41[7]);
        v51 = *v50;
        v52 = v50[1];

        sub_22CE5E6C8(v49, type metadata accessor for Budget);
        if (v51 == v67 && v52 == v66)
        {
        }

        else
        {
          v53 = sub_22CE86194();

          if ((v53 & 1) == 0)
          {
            break;
          }
        }

        if (v64)
        {
          v54 = v71;
          sub_22CE44874(v11, v71, v33, &qword_22CE87B38);
          v55 = *(v54 + 8);

          v56 = v54 + *(v73 + 48);
          v63 = *(v56 + v41[5]);
          result = sub_22CE5E6C8(v56, type metadata accessor for Budget);
        }

        else
        {
          v57 = v71;
          sub_22CE4DD94(v11, v71, v33, &qword_22CE87B38);
          v58 = *(v57 + 8);

          v59 = v57 + *(v73 + 48);
          v60 = *(v59 + v41[5]);
          sub_22CE5E6C8(v59, type metadata accessor for Budget);
          result = sub_22CE42330(v11, v33, &qword_22CE87B38);
          v61 = __OFADD__(v63, v60);
          v63 += v60;
          if (v61)
          {
            goto LABEL_25;
          }
        }

        v64 = 0;
LABEL_15:
        v30 = v68;
        v25 = v69;
        if (!v29)
        {
          goto LABEL_6;
        }
      }

      result = sub_22CE42330(v11, v33, &qword_22CE87B38);
      goto LABEL_15;
    }

LABEL_6:
    while (1)
    {
      v34 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v34 >= v30)
      {

        return v63;
      }

      v29 = *(v25 + 8 * v34);
      ++v31;
      if (v29)
      {
        v33 = v32;
        v31 = v34;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

void *sub_22CE5CD74()
{
  type metadata accessor for IDSBagValueServer();
  swift_allocObject();
  result = sub_22CE5D06C();
  off_281444EA8 = result;
  return result;
}

uint64_t sub_22CE5CDB4()
{
  v1 = *(type metadata accessor for PushEvent(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_22CE5621C((v0 + v2));
}

unint64_t sub_22CE5CEB8()
{
  result = qword_27D9EEE38;
  if (!qword_27D9EEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9EEE38);
  }

  return result;
}

void *sub_22CE5D06C()
{
  v1 = v0;
  v15 = sub_22CE85FD4();
  v2 = *(v15 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v15);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22CE85FB4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = sub_22CE85D34();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_22CE4FC1C();
  v14[0] = "et timeout expiration";
  v14[1] = v10;
  sub_22CE85D24();
  v16 = MEMORY[0x277D84F90];
  sub_22CE42614(&qword_281445320, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF10, &unk_22CE87930);
  sub_22CE40A60(&qword_281445328, &unk_27D9EEF10, &unk_22CE87930);
  sub_22CE86034();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v15);
  v0[2] = sub_22CE86004();
  v0[3] = sub_22CE62A70(&unk_284017428);
  v0[4] = sub_22CE62B50(&unk_284017478);
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  v1[5] = v11;
  sub_22CE5D32C();
  return v1;
}

uint64_t sub_22CE5D32C()
{
  v1 = sub_22CE85D14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22CE85D34();
  v6 = *(v13 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v13);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 16);
  aBlock[4] = sub_22CE5DDCC;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CE42F10;
  aBlock[3] = &block_descriptor_47;
  v10 = _Block_copy(aBlock);

  sub_22CE85D24();
  v14 = MEMORY[0x277D84F90];
  sub_22CE42614(&qword_281445338, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE40A60(&qword_281445330, &unk_27D9EEF20, &qword_22CE872D0);
  sub_22CE86034();
  MEMORY[0x2318C1890](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

void sub_22CE5D5E0(void *a1)
{
  v2 = [objc_opt_self() sharedInstanceForBagType_];
  v3 = sub_22CE85DF4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_22CE42330(&v33, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v7 = sub_22CE85C84();
    __swift_project_value_buffer(v7, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load frequent burst window bag value";
    goto LABEL_46;
  }

  v5 = sub_22CE85DF4();
  v6 = [v2 objectForKey_];

  if (v6)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_22CE42330(&v33, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v14 = sub_22CE85C84();
    __swift_project_value_buffer(v14, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load reduced burst window bag value";
    goto LABEL_46;
  }

  v12 = sub_22CE85DF4();
  v13 = [v2 objectForKey_];

  if (v13)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_22CE42330(&v33, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v17 = sub_22CE85C84();
    __swift_project_value_buffer(v17, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load reduced burst bag value";
    goto LABEL_46;
  }

  v15 = sub_22CE85DF4();
  v16 = [v2 objectForKey_];

  if (v16)
  {
    sub_22CE86024();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33 = v31;
  v34 = v32;
  if (!*(&v32 + 1))
  {
    sub_22CE42330(&v33, &qword_27D9EEE40, &qword_22CE87B20);
    goto LABEL_42;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v29 = sub_22CE85C84();
    __swift_project_value_buffer(v29, qword_281445368);
    v8 = sub_22CE85C74();
    v9 = sub_22CE85F94();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_47;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "Could not load frequent burst bag value";
LABEL_46:
    _os_log_impl(&dword_22CE3F000, v8, v9, v11, v10, 2u);
    MEMORY[0x2318C20D0](v10, -1, -1);
LABEL_47:

    goto LABEL_48;
  }

  if (qword_281445360 != -1)
  {
    swift_once();
  }

  v18 = sub_22CE85C84();
  __swift_project_value_buffer(v18, qword_281445368);
  v19 = sub_22CE85C74();
  v20 = sub_22CE85FA4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134349824;
    *(v21 + 4) = v30;
    *(v21 + 12) = 2050;
    *(v21 + 14) = v30;
    *(v21 + 22) = 2050;
    *(v21 + 24) = v30;
    *(v21 + 32) = 2050;
    *(v21 + 34) = v30;
    _os_log_impl(&dword_22CE3F000, v19, v20, "Fetched IDS bag values; frequent window: %{public}ld; reduced window: %{public}ld; frequent burst: %{public}ld; reduced burst: %{public}ld", v21, 0x2Au);
    MEMORY[0x2318C20D0](v21, -1, -1);
  }

  v22 = *(a1[5] + 16);
  os_unfair_lock_lock(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE48, &qword_22CE87B28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22CE878F0;
  *(inited + 32) = 2;
  *(inited + 40) = v30;
  *(inited + 48) = 1;
  *(inited + 56) = v30;
  *(inited + 64) = 0;
  *(inited + 72) = 0x40AC200000000000;
  v24 = sub_22CE62A70(inited);
  swift_setDeallocating();
  v25 = a1[3];
  a1[3] = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE50, &qword_22CE87B30);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_22CE878F0;
  *(v26 + 32) = 2;
  *(v26 + 40) = v30;
  *(v26 + 48) = 1;
  *(v26 + 56) = v30;
  *(v26 + 64) = 0;
  *(v26 + 72) = 15;
  v27 = sub_22CE62B50(v26);
  swift_setDeallocating();
  v28 = a1[4];
  a1[4] = v27;

  os_unfair_lock_unlock(v22);
LABEL_48:
}

uint64_t sub_22CE5DD58()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

unint64_t *sub_22CE5DDD4(unint64_t *result, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = sub_22CE5DFC4(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_22CE5DE78()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_22CE56590();
  v4 = v1[36];
  v5 = v1[37];
  __swift_project_boxed_opaque_existential_1(v1 + 33, v4);
  return (*(v5 + 16))(v2, v3, v4, v5);
}

uint64_t sub_22CE5DF04@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  result = sub_22CE59D94(v3, v5, &v7);
  *a1 = result & 1;
  return result;
}

uint64_t sub_22CE5DF58@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[36];
  v4 = v1[37];
  __swift_project_boxed_opaque_existential_1(v1 + 33, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_22CE5DFC4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v48 = a2;
  v53 = a5;
  v55 = a4;
  v49 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE58, &qword_22CE87B38);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v59 = &v47 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v47 - v12);
  v14 = type metadata accessor for Budget();
  v57 = *(v14 - 8);
  v58 = v14;
  v15 = *(v57 + 64);
  result = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v60 = a3;
  v22 = a3[8];
  v21 = a3 + 8;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v50 = 0;
  v51 = (v23 + 63) >> 6;
  v56 = v18;
  while (v25)
  {
    v26 = __clz(__rbit64(v25));
    v62 = (v25 - 1) & v25;
LABEL_13:
    v29 = v26 | (v19 << 6);
    v30 = v60[7];
    v31 = (v60[6] + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v57 + 72);
    v54 = v29;
    sub_22CE5E660(v30 + v34 * v29, v18, type metadata accessor for Budget);
    *v13 = v32;
    v13[1] = v33;
    sub_22CE5E660(v18, v13 + *(v6 + 48), type metadata accessor for Budget);
    v35 = v59;
    sub_22CE4DD94(v13, v59, &qword_27D9EEE58, &qword_22CE87B38);
    v36 = *(v35 + 8);
    v61 = v33;
    swift_bridgeObjectRetain_n();

    v37 = v35 + *(v6 + 48);
    v38 = v58;
    LOBYTE(v36) = *(v37 + *(v58 + 36));
    sub_22CE5E6C8(v37, type metadata accessor for Budget);
    if ((v36 & 1) == 0)
    {
      sub_22CE42330(v13, &qword_27D9EEE58, &qword_22CE87B38);
      v18 = v56;
      goto LABEL_5;
    }

    v39 = v52;
    sub_22CE4DD94(v13, v52, &qword_27D9EEE58, &qword_22CE87B38);
    v40 = *(v39 + 8);

    v41 = v39 + *(v6 + 48);
    v42 = (v41 + *(v38 + 28));
    v43 = *v42;
    v44 = v42[1];

    sub_22CE5E6C8(v41, type metadata accessor for Budget);
    if (v43 == v55 && v44 == v53)
    {
      sub_22CE42330(v13, &qword_27D9EEE58, &qword_22CE87B38);

      v18 = v56;
LABEL_19:
      sub_22CE5E6C8(v18, type metadata accessor for Budget);

      *(v49 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
      v46 = __OFADD__(v50++, 1);
      v25 = v62;
      if (v46)
      {
        __break(1u);
        return sub_22CE6234C(v49, v48, v50, v60);
      }
    }

    else
    {
      v45 = sub_22CE86194();
      sub_22CE42330(v13, &qword_27D9EEE58, &qword_22CE87B38);

      v18 = v56;
      if (v45)
      {
        goto LABEL_19;
      }

LABEL_5:
      sub_22CE5E6C8(v18, type metadata accessor for Budget);

      v25 = v62;
    }
  }

  v27 = v19;
  while (1)
  {
    v19 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v19 >= v51)
    {
      return sub_22CE6234C(v49, v48, v50, v60);
    }

    v28 = v21[v19];
    ++v27;
    if (v28)
    {
      v26 = __clz(__rbit64(v28));
      v62 = (v28 - 1) & v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v12 = sub_22CE5DDD4(v15, v9, a1, a2, a3);
      MEMORY[0x2318C20D0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  v12 = sub_22CE5DFC4((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
LABEL_6:
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_22CE5E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE5E660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE5E6C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22CE5E744()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_22CE5C158(v0[2]);
}

uint64_t sub_22CE5E768()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_22CE5C158(v0[2]);
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CE5E7CC()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_22CE5C158(v0[2]);
}

uint64_t sub_22CE5E7F8()
{
  v0 = sub_22CE56590();

  return sub_22CE59234(v0);
}

uint64_t sub_22CE5E96C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 16);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = *(v1 + 56) + 72 * (v11 | (v8 << 6));
    v26 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 64);
    v27 = *(v12 + 16);
    v28 = v14;
    v30 = v15;
    v29 = v13;
    if ((v15 & 0x800000) == 0)
    {
      sub_22CE41214(&v26, v25);
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v9;
      if ((result & 1) == 0)
      {
        result = sub_22CE4BBC8(0, *(v9 + 16) + 1, 1);
        v9 = v31;
      }

      v16 = *(v9 + 16);
      v17 = *(v9 + 24);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        v23 = *(v9 + 16);
        v24 = v16 + 1;
        result = sub_22CE4BBC8((v17 > 1), v16 + 1, 1);
        v16 = v23;
        v18 = v24;
        v9 = v31;
      }

      *(v9 + 16) = v18;
      v19 = v9 + 72 * v16;
      *(v19 + 32) = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      *(v19 + 96) = v30;
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      *(v19 + 48) = v20;
    }
  }

  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++v10;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5EB20()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 16);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = *(v1 + 56) + 72 * (v11 | (v8 << 6));
    v26 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 64);
    v27 = *(v12 + 16);
    v28 = v14;
    v30 = v15;
    v29 = v13;
    if ((v15 & 0x800000) != 0 && !v15)
    {
      sub_22CE41214(&v26, v25);
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v9;
      if ((result & 1) == 0)
      {
        result = sub_22CE4BBC8(0, *(v9 + 16) + 1, 1);
        v9 = v31;
      }

      v16 = *(v9 + 16);
      v17 = *(v9 + 24);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        v23 = *(v9 + 16);
        v24 = v16 + 1;
        result = sub_22CE4BBC8((v17 > 1), v16 + 1, 1);
        v16 = v23;
        v18 = v24;
        v9 = v31;
      }

      *(v9 + 16) = v18;
      v19 = v9 + 72 * v16;
      *(v19 + 32) = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      *(v19 + 96) = v30;
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      *(v19 + 48) = v20;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5ECD4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = *(v0 + 16);

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v4)
  {
LABEL_9:
    v11 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v12 = *(v1 + 56) + 72 * (v11 | (v8 << 6));
    v26 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 64);
    v27 = *(v12 + 16);
    v28 = v14;
    v30 = v15;
    v29 = v13;
    if ((v15 & 0x800000) != 0 && v15 == 1)
    {
      sub_22CE41214(&v26, v25);
      result = swift_isUniquelyReferenced_nonNull_native();
      v31 = v9;
      if ((result & 1) == 0)
      {
        result = sub_22CE4BBC8(0, *(v9 + 16) + 1, 1);
        v9 = v31;
      }

      v16 = *(v9 + 16);
      v17 = *(v9 + 24);
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        v23 = *(v9 + 16);
        v24 = v16 + 1;
        result = sub_22CE4BBC8((v17 > 1), v16 + 1, 1);
        v16 = v23;
        v18 = v24;
        v9 = v31;
      }

      *(v9 + 16) = v18;
      v19 = v9 + 72 * v16;
      *(v19 + 32) = v26;
      v20 = v27;
      v21 = v28;
      v22 = v29;
      *(v19 + 96) = v30;
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      *(v19 + 48) = v20;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v9;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t PushSubscriptionStore.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_22CE62C30(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t sub_22CE5EEF8(__int128 *a1)
{
  v2 = v1;
  v3 = a1[3];
  v66 = a1[2];
  v67 = v3;
  v68 = *(a1 + 16);
  v4 = a1[1];
  v64 = *a1;
  v65 = v4;
  if ((v68 & 0x800000) != 0)
  {
    *&v39 = *(&v65 + 1);
    *(&v39 + 1) = v65;
    swift_beginAccess();
    v7 = *(v1 + 16);
    v8 = *(v2 + 16);
    v11 = *(v8 + 64);
    v10 = v8 + 64;
    v9 = v11;
    v12 = 1 << *(v7 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & v9;
    v15 = (v12 + 63) >> 6;
    v16 = *(v2 + 16);
    result = swift_bridgeObjectRetain_n();
    v18 = 0;
    while (v14)
    {
      v19 = v18;
LABEL_13:
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v21 = v20 | (v19 << 6);
      v22 = (*(v7 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(v7 + 56) + 72 * v21;
      v57 = *v25;
      v26 = *(v25 + 16);
      v27 = *(v25 + 32);
      v28 = *(v25 + 48);
      v61 = *(v25 + 64);
      v59 = v27;
      v60 = v28;
      v58 = v26;
      *&v62[0] = v24;
      *(&v62[0] + 1) = v23;
      v63 = v61;
      v62[3] = v27;
      v62[4] = v28;
      v62[1] = v57;
      v62[2] = v26;
      if (v61 | (SBYTE2(v61) << 16)) < 0 && (__PAIR128__(v58, *(&v58 + 1)) == v39 || (sub_22CE86194()))
      {

        sub_22CE41214(&v57, &v52);

        sub_22CE632E8(&v57);
        v29 = *(v2 + 16);
        if (*(v29 + 16))
        {
          v30 = *(v2 + 16);

          v31 = sub_22CE498B0(v24, v23);
          v6 = *(&v39 + 1);
          v5 = v39;
          if (v32)
          {
            v33 = *(v29 + 56) + 72 * v31;
            v40 = *v33;
            v35 = *(v33 + 32);
            v34 = *(v33 + 48);
            v36 = *(v33 + 64);
            v41 = *(v33 + 16);
            v42 = v35;
            v44 = v36;
            v43 = v34;
            sub_22CE41214(&v40, &v52);

            v47 = v42;
            v48 = v43;
            v49 = v44;
            v45 = v40;
            v46 = v41;
            swift_beginAccess();

            sub_22CE49C48(v24, v23, &v52);

            v50[2] = v54;
            v50[3] = v55;
            v51 = v56;
            v50[0] = v52;
            v50[1] = v53;
            sub_22CE42330(v50, &qword_27D9EEE78, &qword_22CE88E90);
            swift_endAccess();

            v54 = v47;
            v55 = v48;
            v56 = v49;
            v52 = v45;
            v53 = v46;
          }

          else
          {

            v56 = 0;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
          }
        }

        else
        {

          v56 = 0;
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v6 = *(&v39 + 1);
          v5 = v39;
        }

        sub_22CE42330(&v52, &qword_27D9EEE78, &qword_22CE88E90);
LABEL_19:

        goto LABEL_20;
      }

      sub_22CE41214(&v57, &v52);
      result = sub_22CE42330(v62, &qword_27D9EEE70, &unk_22CE87C20);
      v18 = v19;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v6 = *(&v39 + 1);
        v5 = v39;
        goto LABEL_19;
      }

      v14 = *(v10 + 8 * v19);
      ++v18;
      if (v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = *a1;
    v62[0] = *a1;
    sub_22CE6333C(&v52, &v57);
    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    v5 = *(&v62[0] + 1);
    v6 = *&v62[0];
LABEL_20:
    swift_beginAccess();
    sub_22CE41214(&v64, v62);
    v37 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v62[0] = *(v2 + 16);
    *(v2 + 16) = 0x8000000000000000;
    sub_22CE619E4(&v64, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v2 + 16) = *&v62[0];
    return swift_endAccess();
  }

  return result;
}

double sub_22CE5F324@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
    goto LABEL_5;
  }

  v8 = sub_22CE498B0(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_5:
    *(a3 + 64) = 0;
    *&v15 = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return *&v15;
  }

  v10 = *(v7 + 56) + 72 * v8;
  v19 = *v10;
  v12 = *(v10 + 32);
  v11 = *(v10 + 48);
  v13 = *(v10 + 64);
  v20 = *(v10 + 16);
  v21 = v12;
  v23 = v13;
  v22 = v11;
  sub_22CE41214(&v19, v29);

  v26 = v21;
  v27 = v22;
  v28 = v23;
  v24 = v19;
  v25 = v20;
  swift_beginAccess();

  sub_22CE49C48(a1, a2, v17);

  v29[2] = v17[2];
  v29[3] = v17[3];
  v30 = v18;
  v29[0] = v17[0];
  v29[1] = v17[1];
  sub_22CE42330(v29, &qword_27D9EEE78, &qword_22CE88E90);
  swift_endAccess();
  v14 = v27;
  *(a3 + 32) = v26;
  *(a3 + 48) = v14;
  *(a3 + 64) = v28;
  v15 = v25;
  *a3 = v24;
  *(a3 + 16) = v15;
  return *&v15;
}

char *sub_22CE5F49C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  v3 = sub_22CE6360C(v2, sub_22CE63398);

  v4 = *(v0 + 16);

  v6 = sub_22CE6360C(v5, sub_22CE6378C);

  v7 = *(v0 + 16);
  *(v0 + 16) = v6;

  v8 = *(v3 + 16);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = sub_22CE40F80(*(v3 + 16), 0);
  v10 = sub_22CE41080(&v12, v9 + 32, v8, v3);
  sub_22CE412C8();
  if (v10 != v8)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_22CE5F5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(a3 + 64) | (*(a3 + 66) << 16)) < 0)
  {
    v5 = *(a3 + 32);
    v6 = *(a3 + 40);
    *(a3 + 66);
    if (*(a3 + 64) >= 2u)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);
  }

  if (v5 == a4 && v6 == a5)
  {
    return 1;
  }

  else
  {
    return sub_22CE86194();
  }
}

uint64_t sub_22CE5F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 64) | (*(a3 + 66) << 16)) < 0)
  {
    v5 = *(a3 + 16);
    v6 = *(a3 + 24);

    if (*(a4 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v9 = 1;
    return v9 & 1;
  }

  v11 = *a3;
  v12 = *(a3 + 8);

  MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
  v5 = v11;
  v6 = v12;
  if (!*(a4 + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_22CE498B0(v5, v6);
  v8 = v7;

  v9 = v8 ^ 1;
  return v9 & 1;
}

double sub_22CE5F6E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_22CE498B0(a1, a2);
    if (v9)
    {
      v10 = *(v7 + 56) + 72 * v8;
      v18[0] = *v10;
      v12 = *(v10 + 32);
      v11 = *(v10 + 48);
      v13 = *(v10 + 64);
      v18[1] = *(v10 + 16);
      v18[2] = v12;
      v19 = v13;
      v18[3] = v11;
      v14 = *(v10 + 48);
      *(a3 + 32) = *(v10 + 32);
      *(a3 + 48) = v14;
      *(a3 + 64) = *(v10 + 64);
      v15 = *(v10 + 16);
      *a3 = *v10;
      *(a3 + 16) = v15;
      sub_22CE41214(v18, v17);

      return result;
    }
  }

  *(a3 + 64) = 0;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_22CE5F7C4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_beginAccess();
  v8 = 0;
  v9 = *(v3 + 16);
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v13)
    {
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    v12 = *(v9 + 64 + 8 * v14);
    ++v8;
    if (v12)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v16 = *(v9 + 56) + 72 * (v15 | (v14 << 6));
        v18 = *(v16 + 32);
        v17 = *(v16 + 48);
        v19 = *(v16 + 64);
        v24 = *(v16 + 16);
        v23 = *v16;
        v25 = v18;
        v26 = v17;
        v27 = v19;
        if ((v19 & 0x800000) != 0)
        {
          if (v24 == __PAIR128__(a2, a1) || (result = sub_22CE86194(), (result & 1) != 0))
          {

            sub_22CE41214(&v23, v22);

            v20 = v26;
            *(a3 + 32) = v25;
            *(a3 + 48) = v20;
            *(a3 + 64) = v27;
            v21 = v24;
            *a3 = v23;
            *(a3 + 16) = v21;
            return result;
          }

          v8 = v14;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v8 = v14;
          if (!v12)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v14 = v8;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5F958@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a3;
  v9 = a3[1];
  swift_beginAccess();
  v10 = *(v6 + 16);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 64);
  v14 = (v11 + 63) >> 6;
  v15 = *(v6 + 16);
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  while (v13)
  {
    v18 = v17;
LABEL_11:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v18 << 6);
    v21 = (*(v10 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v10 + 56) + 72 * v20;
    v40 = *v24;
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    v27 = *(v24 + 48);
    v44 = *(v24 + 64);
    v42 = v26;
    v43 = v27;
    v41 = v25;
    v45[0] = v22;
    v45[1] = v23;
    v50 = v44;
    v48 = v26;
    v49 = v27;
    v46 = v40;
    v47 = v25;
    if (v40 == __PAIR128__(v9, v8) || (sub_22CE86194()) && (v44 | (SBYTE2(v44) << 16)) < 0 && v44 == 1)
    {
      v29 = *(&v43 + 1);
      v28 = v43;
      if (v42 == __PAIR128__(a2, a1) || (v33 = *(&v43 + 1), v34 = v43, v30 = sub_22CE86194(), v29 = v33, v28 = v34, (v30 & 1) != 0))
      {
        if (v28 == a4 && v29 == a5 || (sub_22CE86194() & 1) != 0)
        {

          sub_22CE41214(&v40, v39);

          v31 = v43;
          *(a6 + 32) = v42;
          *(a6 + 48) = v31;
          *(a6 + 64) = v44;
          v32 = v41;
          *a6 = v40;
          *(a6 + 16) = v32;
          return result;
        }
      }
    }

    sub_22CE41214(&v40, v39);
    result = sub_22CE42330(v45, &qword_27D9EEE70, &unk_22CE87C20);
    v17 = v18;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v14)
    {

      *(a6 + 64) = 0;
      *(a6 + 32) = 0u;
      *(a6 + 48) = 0u;
      *a6 = 0u;
      *(a6 + 16) = 0u;
      return result;
    }

    v13 = *(v10 + 64 + 8 * v18);
    ++v17;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5FBD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = *(v2 + 16);
  result = swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v8)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v5 + 56) + 72 * v15;
    v27 = *v19;
    v20 = *(v19 + 16);
    v21 = *(v19 + 32);
    v22 = *(v19 + 48);
    v31 = *(v19 + 64);
    v29 = v21;
    v30 = v22;
    v28 = v20;
    v32[0] = v17;
    v32[1] = v18;
    v37 = v31;
    v35 = v21;
    v36 = v22;
    v33 = v27;
    v34 = v20;
    if ((v31 | (SBYTE2(v31) << 16)) < 0)
    {
      v24 = *(&v29 + 1);
      v23 = v29;
      if (v31 < 2u)
      {
        goto LABEL_11;
      }

      sub_22CE41214(&v27, v26);
      result = sub_22CE42330(v32, &qword_27D9EEE70, &unk_22CE87C20);
      v12 = v13;
    }

    else
    {
      v24 = *(&v28 + 1);
      v23 = v28;
LABEL_11:
      if (v23 == a1 && v24 == a2)
      {

        sub_22CE41214(&v27, v26);
        sub_22CE42330(v32, &qword_27D9EEE70, &unk_22CE87C20);
LABEL_19:

        return 1;
      }

      v25 = sub_22CE86194();

      sub_22CE41214(&v27, v26);
      result = sub_22CE42330(v32, &qword_27D9EEE70, &unk_22CE87C20);
      if (v25)
      {
        goto LABEL_19;
      }

      v12 = v13;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return 0;
    }

    v8 = *(v5 + 64 + 8 * v13);
    ++v12;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE5FE14(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v5 = *a3;
  v28 = a3[1];
  swift_beginAccess();
  v6 = *(v3 + 16);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = *(v3 + 16);
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  while (v9)
  {
LABEL_10:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = v15 | (v13 << 6);
    v17 = (*(v6 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 56) + 72 * v16;
    v30 = *v20;
    v21 = *(v20 + 16);
    v22 = *(v20 + 32);
    v23 = *(v20 + 48);
    v34 = *(v20 + 64);
    v32 = v22;
    v33 = v23;
    v31 = v21;
    v35[0] = v18;
    v35[1] = v19;
    v40 = v34;
    v38 = v22;
    v39 = v23;
    v36 = v30;
    v37 = v21;
    if (v30 != __PAIR128__(v28, v5) && (sub_22CE86194() & 1) == 0)
    {
      goto LABEL_4;
    }

    if ((v34 | (SBYTE2(v34) << 16)) < 0)
    {
      v25 = *(&v32 + 1);
      v24 = v32;
      if (v34 < 2u)
      {
        goto LABEL_14;
      }

LABEL_4:

      sub_22CE41214(&v30, v29);
      result = sub_22CE42330(v35, &qword_27D9EEE70, &unk_22CE87C20);
    }

    else
    {
      v25 = *(&v31 + 1);
      v24 = v31;
LABEL_14:
      if (v24 == a1 && v25 == a2)
      {

        sub_22CE41214(&v30, v29);
        sub_22CE42330(v35, &qword_27D9EEE70, &unk_22CE87C20);
LABEL_22:

        return 1;
      }

      v26 = sub_22CE86194();

      sub_22CE41214(&v30, v29);
      result = sub_22CE42330(v35, &qword_27D9EEE70, &unk_22CE87C20);
      if (v26)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      return 0;
    }

    v9 = *(v6 + 64 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22CE60080(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a3[1];
  v8[0] = *a3;
  v8[1] = v5;
  sub_22CE5F958(a1, a2, v8, a4, a5, v9);
  v6 = v10;
  if (v10)
  {
    sub_22CE42330(v9, &qword_27D9EEE78, &qword_22CE88E90);
  }

  return v6 != 0;
}

uint64_t PushSubscriptionStore.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t PushSubscriptionStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

char *sub_22CE601C8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return sub_22CE46B74(v3);
}

BOOL sub_22CE60338(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = a3[1];
  v10[0] = *a3;
  v10[1] = v7;
  sub_22CE5F958(a1, a2, v10, a4, a5, v11);
  v8 = v12;
  if (v12)
  {
    sub_22CE42330(v11, &qword_27D9EEE78, &qword_22CE88E90);
  }

  return v8 != 0;
}

void *sub_22CE6039C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEB8, &qword_22CE87CF0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEC0, &qword_22CE87CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22CE604E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB58, &qword_22CE88EF0);
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

char *sub_22CE605F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE98, &qword_22CE87CB8);
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

char *sub_22CE6070C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB68, &qword_22CE86CE8);
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

char *sub_22CE60818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD8, &qword_22CE86D38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22CE6093C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  v42 = a2;
  result = sub_22CE86154();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v26 = *(v5 + 56) + 72 * v22;
      if (v42)
      {
        v49 = *(v26 + 32);
        v47 = *(v26 + 16);
        v45 = *v26;
        v46 = *(v26 + 48);
        v43 = *(v26 + 8);
        v44 = *(v26 + 56);
        v27 = *(v26 + 64) | (*(v26 + 66) << 16);
        LOBYTE(v48) = *(v26 + 67);
      }

      else
      {
        v29 = *(v26 + 32);
        v28 = *(v26 + 48);
        v30 = *(v26 + 16);
        v27 = *(v26 + 64);
        v51 = v27;
        v50[1] = v30;
        v50[2] = v29;
        v50[3] = v28;
        v48 = HIBYTE(v27);
        v49 = v29;
        v50[0] = *v26;
        v47 = v30;
        v45 = *&v50[0];
        v46 = v28;
        v43 = *(&v50[0] + 1);
        v44 = *(&v28 + 1);

        sub_22CE41214(v50, v52);
      }

      v31 = *(v8 + 40);
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 72 * v16;
      *v18 = v45;
      *(v18 + 8) = v43;
      *(v18 + 16) = v47;
      *(v18 + 32) = v49;
      *(v18 + 48) = v46;
      *(v18 + 56) = v44;
      *(v18 + 66) = BYTE2(v27);
      *(v18 + 64) = v27;
      *(v18 + 67) = v48;
      ++*(v8 + 16);
      v5 = v41;
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

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_22CE60CB4(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v53 = a6;
  v9 = v6;
  v12 = a3(0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v47 - v14;
  v15 = *v9;
  if (*(*v9 + 24) > a1)
  {
    v16 = *(*v9 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_22CE86154();
  v18 = result;
  if (*(v15 + 16))
  {
    v48 = v9;
    v49 = v15;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v25 = result + 64;
    while (v23)
    {
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v31 = v28 | (v19 << 6);
      v32 = *(v15 + 56);
      v33 = (*(v15 + 48) + 16 * v31);
      v35 = *v33;
      v34 = v33[1];
      v36 = *(v50 + 72);
      v37 = v32 + v36 * v31;
      if (v51)
      {
        sub_22CE63AAC(v37, v52, v53);
      }

      else
      {
        sub_22CE63A44(v37, v52, v53);
      }

      v38 = *(v18 + 40);
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
      v39 = -1 << *(v18 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v25 + 8 * (v40 >> 6))) == 0)
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
          v45 = *(v25 + 8 * v41);
          if (v45 != -1)
          {
            v26 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v40) & ~*(v25 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v27 = (*(v18 + 48) + 16 * v26);
      *v27 = v35;
      v27[1] = v34;
      result = sub_22CE63AAC(v52, *(v18 + 56) + v36 * v26, v53);
      ++*(v18 + 16);
      v15 = v49;
    }

    v29 = v19;
    while (1)
    {
      v19 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v30 = v20[v19];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v23 = (v30 - 1) & v30;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v9 = v48;
      goto LABEL_36;
    }

    v46 = 1 << *(v15 + 32);
    v9 = v48;
    if (v46 >= 64)
    {
      bzero(v20, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v46;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v9 = v18;
  return result;
}

uint64_t sub_22CE60FF4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB80, &qword_22CE86D00);
  v40 = a2;
  result = sub_22CE86154();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
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
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 32 * v22);
      v26 = v25[1];
      v42 = *v25;
      v43 = *v23;
      v28 = v25[2];
      v27 = v25[3];
      if ((v40 & 1) == 0)
      {

        sub_22CE41BF0(v28, v27);
      }

      v29 = *(v8 + 40);
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
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
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v43;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      v13 = v41;
      *v18 = v42;
      v18[1] = v26;
      v18[2] = v28;
      v18[3] = v27;
      ++*(v8 + 16);
      v5 = v39;
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
        v41 = (v21 - 1) & v21;
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

uint64_t sub_22CE612D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB50, &unk_22CE86CD0);
  v36 = a2;
  result = sub_22CE86154();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      v26 = *(v8 + 40);
      sub_22CE86204();
      sub_22CE85E54();
      result = sub_22CE86244();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CE61588(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB60, &qword_22CE86CE0);
  v33 = a2;
  result = sub_22CE86154();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_22CE86204();
      MEMORY[0x2318C1AB0](v21);
      result = sub_22CE86244();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
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
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_22CE61818(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CE498B0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for PushToken();
      return sub_22CE63B14(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for PushToken);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CE4A404();
    goto LABEL_7;
  }

  sub_22CE60CB4(v15, a4 & 1, type metadata accessor for PushToken, &unk_27D9EECF0, qword_22CE86D50, type metadata accessor for PushToken);
  v22 = *v5;
  v23 = sub_22CE498B0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22CE861B4();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CE621D4(v12, a2, a3, a1, v18, type metadata accessor for PushToken, type metadata accessor for PushToken);
}

uint64_t sub_22CE619E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_22CE498B0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_22CE6093C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_22CE498B0(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_22CE4A430();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 72 * v11;

    return sub_22CE639E8(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 72 * v11;
  *v26 = *a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = *(a1 + 48);
  *(v26 + 64) = *(a1 + 64);
  *(v26 + 32) = v28;
  *(v26 + 48) = v29;
  *(v26 + 16) = v27;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_22CE61B84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_22CE498B0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Budget();
      return sub_22CE63B14(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Budget);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_22CE4A5F4();
    goto LABEL_7;
  }

  sub_22CE60CB4(v15, a4 & 1, type metadata accessor for Budget, &qword_27D9EEBA8, &qword_22CE86D28, type metadata accessor for Budget);
  v22 = *v5;
  v23 = sub_22CE498B0(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_22CE861B4();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_22CE621D4(v12, a2, a3, a1, v18, type metadata accessor for Budget, type metadata accessor for Budget);
}

uint64_t sub_22CE61D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_22CE498B0(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_22CE60FF4(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_22CE498B0(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_22CE4A874();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;

    return sub_22CE4E0DC(v31, v32);
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v34 = (v28[6] + 16 * v17);
  *v34 = a5;
  v34[1] = a6;
  v35 = (v28[7] + 32 * v17);
  *v35 = a1;
  v35[1] = a2;
  v35[2] = a3;
  v35[3] = a4;
  v36 = v28[2];
  v21 = __OFADD__(v36, 1);
  v37 = v36 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v37;
}

uint64_t sub_22CE61F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_22CE498B0(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_22CE612D0(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_22CE498B0(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_22CE4AA0C();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = *v25;
    *v25 = a1;
    v25[1] = a2;

    return swift_unknownObjectRelease();
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

unint64_t sub_22CE62088(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_22CE4DE0C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_22CE61588(v14, a3 & 1);
      v18 = *v4;
      result = sub_22CE4DE0C(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_22CE861B4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_22CE4AB8C();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_22CE621D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_22CE63AAC(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

void *sub_22CE62280(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, __int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22CE63438(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22CE62388(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void))
{
  v51 = a8;
  v14 = a5(0);
  v47 = *(v14 - 8);
  v15 = *(v47 + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v50 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v46 = &v45 - v18;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_22CE86164();
  v20 = result;
  if (a2 < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = *a1;
  }

  v22 = 0;
  v23 = result + 64;
  v45 = a4;
  while (v21)
  {
    v24 = __clz(__rbit64(v21));
    v48 = (v21 - 1) & v21;
LABEL_16:
    v27 = v24 | (v22 << 6);
    v28 = a4[7];
    v29 = (a4[6] + 16 * v27);
    v31 = *v29;
    v30 = v29[1];
    v32 = v46;
    v49 = *(v47 + 72);
    v33 = v51;
    sub_22CE63A44(v28 + v49 * v27, v46, v51);
    sub_22CE63AAC(v32, v50, v33);
    v34 = *(v20 + 40);
    sub_22CE86204();

    sub_22CE85E54();
    result = sub_22CE86244();
    v35 = -1 << *(v20 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v23 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v23 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v43 = (*(v20 + 48) + 16 * v38);
    *v43 = v31;
    v43[1] = v30;
    result = sub_22CE63AAC(v50, *(v20 + 56) + v38 * v49, v51);
    ++*(v20 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v21 = v48;
    if (!a3)
    {
      return v20;
    }
  }

  v25 = v22;
  while (1)
  {
    v22 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v22 >= a2)
    {
      return v20;
    }

    v26 = a1[v22];
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v48 = (v26 - 1) & v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CE626A0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  result = sub_22CE86164();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v40 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + 72 * v16);
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v46 = *(v21 + 16);
    v44 = v23;
    v45 = v24;
    v42 = *v21;
    v43 = v22;
    v25 = *(v9 + 40);
    sub_22CE86204();

    sub_22CE41214(&v42, v41);
    sub_22CE85E54();
    result = sub_22CE86244();
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v12 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    v34 = (*(v9 + 48) + 16 * v29);
    *v34 = v19;
    v34[1] = v20;
    v35 = *(v9 + 56) + 72 * v29;
    *v35 = v42;
    v36 = v43;
    v37 = v44;
    v38 = v45;
    *(v35 + 64) = v46;
    *(v35 + 32) = v37;
    *(v35 + 48) = v38;
    *(v35 + 16) = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v40;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22CE62924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t sub_22CE62988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{

  if ((a7 & 0x800000) != 0)
  {

    return sub_22CE62A0C(a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_22CE62A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_22CE62A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE88, &qword_22CE87CA0);
    v3 = sub_22CE86164();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22CE4DE0C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22CE62B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE80, &qword_22CE87C98);
    v3 = sub_22CE86164();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22CE4DE0C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22CE62C30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EECD0, &qword_22CE86D30);
  v3 = sub_22CE86164();

  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  v29 = *(a1 + 80);
  v30 = v5;
  v31 = *(a1 + 112);
  v6 = *(a1 + 48);
  v26 = *(a1 + 32);
  v27 = v6;
  v28 = v4;
  v8 = *(&v26 + 1);
  v7 = v26;
  sub_22CE4DD94(&v26, v25, &qword_27D9EEEB0, &unk_22CE87CE0);
  result = sub_22CE498B0(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 120);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 72 * result;
    *v13 = v27;
    v14 = v28;
    v15 = v29;
    v16 = v30;
    *(v13 + 64) = v31;
    *(v13 + 32) = v15;
    *(v13 + 48) = v16;
    *(v13 + 16) = v14;
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = (v11 + 88);
    v21 = v11[2];
    v22 = v11[4];
    v29 = v11[3];
    v30 = v22;
    v31 = *(v11 + 20);
    v23 = v11[1];
    v26 = *v11;
    v27 = v23;
    v28 = v21;
    v8 = *(&v26 + 1);
    v7 = v26;
    sub_22CE4DD94(&v26, v25, &qword_27D9EEEB0, &unk_22CE87CE0);
    result = sub_22CE498B0(v7, v8);
    v11 = v20;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22CE62DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEA8, &unk_22CE87CD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEBA8, &qword_22CE86D28);
    v8 = sub_22CE86164();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CE4DD94(v10, v6, &qword_27D9EEEA8, &unk_22CE87CD0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CE498B0(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Budget();
      result = sub_22CE63AAC(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Budget);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_22CE62FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEA0, &unk_22CE87CC0);
    v3 = sub_22CE86164();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_22CE4DE0C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_22CE630B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEE90, &unk_22CE87CA8);
    v3 = sub_22CE86164();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22CE498B0(v5, v6);
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

unint64_t sub_22CE631CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEB50, &unk_22CE86CD0);
    v3 = sub_22CE86164();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_22CE498B0(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_22CE633A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22CE63994();
  result = MEMORY[0x2318C1800](v2, &type metadata for Topic, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      sub_22CE82C08(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_22CE63438(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, __int128 *))
{
  v26 = 0;
  v25 = result;
  v4 = 0;
  v38 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v38 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v38 + 56) + 72 * v13;
    v34[0] = *v17;
    v19 = *(v17 + 32);
    v18 = *(v17 + 48);
    v20 = *(v17 + 16);
    v35 = *(v17 + 64);
    v34[2] = v19;
    v34[3] = v18;
    v34[1] = v20;
    v21 = *(v17 + 48);
    v31 = *(v17 + 32);
    v32 = v21;
    v33 = *(v17 + 64);
    v22 = *(v17 + 16);
    v29 = *v17;
    v30 = v22;

    sub_22CE41214(v34, v28);
    LOBYTE(v16) = a4(v16, v15, &v29);
    v36[2] = v31;
    v36[3] = v32;
    v37 = v33;
    v36[0] = v29;
    v36[1] = v30;
    sub_22CE632E8(v36);

    if (v16)
    {
      *(v25 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
        return sub_22CE626A0(v25, a2, v26, v38);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_22CE626A0(v25, a2, v26, v38);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CE6360C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, __int128 *))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22CE63438(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_22CE62280(v11, v6, v4, a2);
  result = MEMORY[0x2318C20D0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_22CE63994()
{
  result = qword_281445400;
  if (!qword_281445400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281445400);
  }

  return result;
}

uint64_t sub_22CE63A44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE63AAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CE63B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t PushToken.token.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22CE4E0DC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t PushToken.subscriptionIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t PushToken.subscriptionIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PushToken.environmentName.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t PushToken.environmentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PushToken.topic.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t PushToken.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t PushToken.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushToken() + 32);

  return sub_22CE63D88(v3, a1);
}

uint64_t sub_22CE63D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PushToken.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PushToken() + 32);

  return sub_22CE63E3C(a1, v3);
}

uint64_t sub_22CE63E3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t PushToken.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v16 = sub_22CE4F0F4(*v0, v0[1]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF90, &qword_22CE87110);
  sub_22CE4F5FC();
  v6 = sub_22CE85DC4();
  v8 = v7;

  v16 = 0;
  v17 = 0xE000000000000000;
  sub_22CE860F4();
  MEMORY[0x2318C1750](0xD000000000000018, 0x800000022CE8A660);
  MEMORY[0x2318C1750](v1[2], v1[3]);
  MEMORY[0x2318C1750](0xD000000000000013, 0x800000022CE8A680);
  MEMORY[0x2318C1750](v1[4], v1[5]);
  MEMORY[0x2318C1750](0x3A6369706F74203BLL, 0xE900000000000020);
  v9 = v0[7];
  v14 = v0[6];
  v15 = v9;

  MEMORY[0x2318C1750](0xD000000000000017, 0x800000022CE89D50);
  MEMORY[0x2318C1750](v14, v15);

  MEMORY[0x2318C1750](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x2318C1750](v6, v8);

  MEMORY[0x2318C1750](0xD000000000000012, 0x800000022CE8A6A0);
  v10 = type metadata accessor for PushToken();
  sub_22CE63D88(v0 + *(v10 + 32), v5);
  v11 = sub_22CE85E24();
  MEMORY[0x2318C1750](v11);

  return v16;
}

uint64_t PushToken.init(subscriptionIdentifier:environmentName:topic:token:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = *a5;
  v17 = a5[1];
  v18 = *(type metadata accessor for PushToken() + 32);
  v19 = sub_22CE85974();
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  *(a9 + 2) = a1;
  *(a9 + 3) = a2;
  *(a9 + 4) = a3;
  *(a9 + 5) = a4;
  *(a9 + 6) = v16;
  *(a9 + 7) = v17;
  *a9 = a6;
  *(a9 + 1) = a7;

  return sub_22CE63E3C(a8, &a9[v18]);
}

uint64_t PushToken.hash(into:)()
{
  v1 = sub_22CE85974();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - v8;
  v10 = *v0;
  v11 = v0[1];
  sub_22CE858B4();
  v12 = v0[2];
  v13 = v0[3];
  sub_22CE85E54();
  v14 = v0[4];
  v15 = v0[5];
  sub_22CE85E54();
  v16 = v0[6];
  v17 = v0[7];
  sub_22CE85E54();
  v18 = type metadata accessor for PushToken();
  sub_22CE63D88(v0 + *(v18 + 32), v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return sub_22CE86224();
  }

  (*(v2 + 32))(v5, v9, v1);
  sub_22CE86224();
  sub_22CE6492C(&unk_2814452A8, MEMORY[0x277CC9578]);
  sub_22CE85D94();
  return (*(v2 + 8))(v5, v1);
}

uint64_t PushToken.hashValue.getter()
{
  sub_22CE86204();
  PushToken.hash(into:)();
  return sub_22CE86244();
}

uint64_t sub_22CE64450()
{
  sub_22CE86204();
  PushToken.hash(into:)();
  return sub_22CE86244();
}

uint64_t sub_22CE64494()
{
  sub_22CE86204();
  PushToken.hash(into:)();
  return sub_22CE86244();
}

BOOL _s24SessionPushNotifications0B5TokenV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_22CE85974();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEF40, &qword_22CE86C00);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEEC8, &qword_22CE87DD8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  if ((sub_22CE51390(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_22CE86194() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_22CE86194() & 1) == 0 || (a1[6] != a2[6] || a1[7] != a2[7]) && (sub_22CE86194() & 1) == 0)
  {
    return 0;
  }

  v17 = *(type metadata accessor for PushToken() + 32);
  v18 = *(v13 + 48);
  sub_22CE63D88(a1 + v17, v16);
  sub_22CE63D88(a2 + v17, &v16[v18]);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
      return 1;
    }

    goto LABEL_16;
  }

  sub_22CE63D88(v16, v12);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_16:
    sub_22CE42330(v16, &qword_27D9EEEC8, &qword_22CE87DD8);
    return 0;
  }

  (*(v5 + 32))(v8, &v16[v18], v4);
  sub_22CE6492C(&qword_27D9EEED0, MEMORY[0x277CC9578]);
  v21 = sub_22CE85DE4();
  v22 = *(v5 + 8);
  v22(v8, v4);
  v22(v12, v4);
  sub_22CE42330(v16, &qword_27D9EEF40, &qword_22CE86C00);
  return (v21 & 1) != 0;
}

void sub_22CE6489C()
{
  sub_22CE519F8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_22CE6492C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_22CE64974(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22CE85884();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[2] = a1;
  v3[3] = a2;
  sub_22CE65C18();

  v11 = sub_22CE64B9C();
  if (!v11)
  {
    goto LABEL_2;
  }

  v18 = v11;
  v19 = [v11 URL];
  sub_22CE85874();

  v20 = sub_22CE85864();
  (*(v7 + 8))(v10, v6);
  Unique = _CFBundleCreateUnique();

  if (!Unique)
  {
LABEL_2:
    if (qword_281445360 != -1)
    {
      swift_once();
    }

    v12 = sub_22CE85C84();
    __swift_project_value_buffer(v12, qword_281445368);
    v13 = sub_22CE85C74();
    v14 = sub_22CE85F94();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_22CE3F000, v13, v14, "StringLocalizer could not open bundle", v15, 2u);
      MEMORY[0x2318C20D0](v15, -1, -1);
    }

    Unique = 0;
  }

  v3[4] = Unique;
  return v3;
}

id sub_22CE64B9C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22CE85DF4();

  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:v6];

  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_22CE85834();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t StringLocalizer.deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  v2 = *(v0 + 24);

  return v0;
}

uint64_t StringLocalizer.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  if (v1)
  {
  }

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_22CE64CE8(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v6 = v5;
  v43 = a4;
  v40 = a3;
  v10 = sub_22CE859F4();
  v41 = *(v10 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22CE85A14();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEED8, &qword_22CE87DF0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = v39 - v21;
  if (!a2)
  {
    goto LABEL_8;
  }

  v42 = a5;
  v23 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v23 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 && (v24 = *(v6 + 32)) != 0)
  {
    v39[1] = a1;
    v39[0] = v24;
    sub_22CE859D4();
    sub_22CE85A04();
    (*(v15 + 8))(v18, v14);
    sub_22CE859E4();
    (*(v41 + 8))(v13, v10);
    v25 = sub_22CE859C4();
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v22, 1, v25) == 1)
    {
      sub_22CE65B50(v22);
    }

    else
    {
      sub_22CE859B4();
      (*(v26 + 8))(v22, v25);
    }

    v28 = v39[0];
    v29 = sub_22CE85DF4();
    v30 = v43;

    v31 = sub_22CE85DF4();

    v32 = sub_22CE85DF4();

    v33 = CFBundleCopyLocalizedStringForLocalization();

    if (v33)
    {
      v34 = v33;
      v35 = sub_22CE85E04();
      v37 = v36;
      if (v40)
      {
        v38 = v40;
      }

      else
      {
        v38 = MEMORY[0x277D84F90];
      }

      v30 = _s24SessionPushNotifications15StringLocalizerC015formatLocalizedD0_9argumentsS2S_Says06CustomD11Convertible_pGtFZ_0(v35, v37, v38);
    }

    else
    {
    }

    return v30;
  }

  else
  {
LABEL_8:

    return v43;
  }
}

unint64_t sub_22CE650D8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_22CE65228(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_22CE860E4();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_22CE86114() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_22CE65228(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_22CE652C0(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_22CE65334(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_22CE652C0(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_22CE65458(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22CE65334(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_22CE86114();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x2821FD070]();
    }
  }

  return result;
}

uint64_t sub_22CE65458(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22CE85EE4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2318C1770](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t _s24SessionPushNotifications15StringLocalizerC015formatLocalizedD0_9argumentsS2S_Says06CustomD11Convertible_pGtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = a3;
  v5 = 0;
  v6 = 4 * v3;
  v44 = a3 + 32;
  v45 = 4 * v3;
  while (1)
  {
    v7 = sub_22CE85F04();
    v9 = v8;
    if (v6 > sub_22CE85E74() >> 14)
    {
      break;
    }

    MEMORY[0x2318C1750](v7, v9);

LABEL_6:
    if (v6 <= sub_22CE85E74() >> 14)
    {
      return 0;
    }
  }

  v10 = sub_22CE85F04();
  v12 = v11;
  if ((v7 != 37 || v9 != 0xE100000000000000) && (sub_22CE86194() & 1) == 0)
  {

    MEMORY[0x2318C1750](v7, v9);

    v6 = v45;
    goto LABEL_6;
  }

  if (v10 == 64 && v12 == 0xE100000000000000 || (sub_22CE86194() & 1) != 0)
  {

    if (v5 < *(v4 + 16))
    {
      if (v5 < 0)
      {
        goto LABEL_94;
      }

      v14 = (v44 + 40 * v5);
      v15 = v14[4];
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v16 = sub_22CE86174();
      MEMORY[0x2318C1750](v16);
    }

    v17 = __OFADD__(v5++, 1);
    if (v17)
    {
      goto LABEL_93;
    }

    goto LABEL_18;
  }

  if (v10 != 2573 || v12 != 0xE200000000000000)
  {
    result = sub_22CE86194();
    if ((result & 1) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v18 = HIBYTE(v12) & 0xF;
      }

      else
      {
        v18 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (!v18)
      {
        goto LABEL_95;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v19 = sub_22CE85E44();
      }

      else
      {
        v19 = sub_22CE860D4() << 16;
      }

      v20 = v19 >> 14 == 4 * v18;
      v4 = a3;
      if (!v20)
      {
        goto LABEL_66;
      }

      result = sub_22CE650D8(v10, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_101;
      }

      if ((result & 0xFFFFFF80) != 0)
      {
LABEL_66:

        if (v10 == 37 && v12 == 0xE100000000000000)
        {
        }

        else
        {
          v35 = sub_22CE86194();

          if ((v35 & 1) == 0)
          {
LABEL_18:
            v6 = v45;
            goto LABEL_6;
          }
        }

        MEMORY[0x2318C1750](37, 0xE100000000000000);
        goto LABEL_18;
      }

      result = sub_22CE650D8(v10, v12);
      if ((result & 0x100000000) != 0)
      {
        goto LABEL_102;
      }

      if ((result & 0xFFFFFF00) != 0)
      {
        goto LABEL_96;
      }
    }
  }

  if ((sub_22CE85DB4() & 1) == 0)
  {
    goto LABEL_66;
  }

  swift_bridgeObjectRetain_n();
  v21 = 0;
  v22 = v12;
  if (v10 != 2573)
  {
    goto LABEL_39;
  }

  while (2)
  {
    if (v22 == 0xE200000000000000)
    {
LABEL_38:

      goto LABEL_58;
    }

LABEL_39:
    result = sub_22CE86194();
    if (result)
    {
      goto LABEL_38;
    }

    if ((v22 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v22) & 0xF;
    }

    else
    {
      v23 = v10 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_91;
    }

    if ((v22 & 0x1000000000000000) != 0)
    {
      v28 = sub_22CE85E44();
    }

    else
    {
      if ((v22 & 0x2000000000000000) != 0)
      {
        v25 = v10;
      }

      else
      {
        if ((v10 & 0x1000000000000000) != 0)
        {
          v24 = ((v22 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v24 = sub_22CE86114();
        }

        v25 = *v24;
      }

      v26 = v25;
      v27 = (__clz(~v25) - 24) << 16;
      if (v26 < 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = 65541;
      }
    }

    if (v28 >> 14 != 4 * v23)
    {
      goto LABEL_71;
    }

    result = sub_22CE650D8(v10, v22);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_99;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
LABEL_71:

LABEL_72:

      sub_22CE85E84();
      if (sub_22CE85F04() == 36 && v36 == 0xE100000000000000)
      {
      }

      else
      {
        v37 = sub_22CE86194();

        if ((v37 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      sub_22CE85E74();
      if (sub_22CE85F04() == 64 && v38 == 0xE100000000000000)
      {

LABEL_80:
        if (v21 < *(a3 + 16))
        {
          if (v21 < 0)
          {
            goto LABEL_97;
          }

          v40 = (v44 + 40 * v21);
          v41 = v40[4];
          __swift_project_boxed_opaque_existential_1(v40, v40[3]);
          v42 = sub_22CE86174();
          MEMORY[0x2318C1750](v42);
        }

        sub_22CE85EA4();

        goto LABEL_85;
      }

      v39 = sub_22CE86194();

      if (v39)
      {
        goto LABEL_80;
      }

LABEL_84:

LABEL_85:
      v4 = a3;
      v6 = v45;
      goto LABEL_6;
    }

    result = sub_22CE650D8(v10, v22);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_100;
    }

    v29 = result;

    if ((v29 & 0xFFFFFF00) != 0)
    {
      goto LABEL_92;
    }

LABEL_58:
    result = sub_22CE85DB4();
    if ((result & 1) == 0)
    {
      goto LABEL_72;
    }

    v30 = (v21 * 10) >> 64;
    v31 = 10 * v21;
    if (v30 == v31 >> 63)
    {
      result = sub_22CE85DA4();
      if (v32)
      {
        goto LABEL_98;
      }

      v17 = __OFADD__(v31, result);
      v21 = v31 + result;
      if (v17)
      {
        goto LABEL_90;
      }

      sub_22CE85E74();
      v10 = sub_22CE85F04();
      v34 = v33;

      v22 = v34;
      if (v10 == 2573)
      {
        continue;
      }

      goto LABEL_39;
    }

    break;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  return result;
}

uint64_t sub_22CE65B50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9EEED8, &qword_22CE87DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22CE65C18()
{
  result = qword_27D9EEEE0;
  if (!qword_27D9EEEE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9EEEE0);
  }

  return result;
}

uint64_t PushSubscription.activityIdentifier.getter()
{
  if (((*(v0 + 64) | (*(v0 + 66) << 16)) & 0x80000000) == 0)
  {
    return 0;
  }

  v3 = v0 + 16;
  v1 = *(v0 + 16);
  v2 = *(v3 + 8);

  return v1;
}

uint64_t PushSubscription.id.getter()
{
  if ((*(v0 + 32) | (*(v0 + 66) << 16)) < 0)
  {
    v1 = v0[2];
    v2 = v0[3];
  }

  else
  {
    v4 = *v0;
    v5 = v0[1];

    MEMORY[0x2318C1750](0x6F54687375703A3ALL, 0xED00007472617453);
    return v4;
  }

  return v1;
}

uint64_t static Priority.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      if (!*a2)
      {
        return 1;
      }
    }

    else if (*a2 < 2u)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t Priority.description.getter()
{
  v1 = 0x6E7574726F70706FLL;
  if (*v0 != 1)
  {
    v1 = 0x6E696B61576E6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D726F6ELL;
  }
}

SessionPushNotifications::Priority_optional __swiftcall Priority.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_22CE65E0C(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 0;
    }
  }

  else if (*a2 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_22CE65E3C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 1;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 1;
    }
  }

  else if (*a1 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22CE65E6C(_BYTE *a1, _BYTE *a2)
{
  if (!*a1)
  {
    return 1;
  }

  if (*a1 == 1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if (*a2 > 1u)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22CE65E9C(_BYTE *a1, _BYTE *a2)
{
  if (!*a2)
  {
    return 0;
  }

  if (*a2 == 1)
  {
    if (*a1)
    {
      return 0;
    }
  }

  else if (*a1 > 1u)
  {
    return 0;
  }

  return 1;
}

uint64_t PushSubscription.SubscriptionType.Activity.PushType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (!*(v0 + 32))
  {
    v6 = 0x203A6E656B6F74;
    goto LABEL_5;
  }

  if (*(v0 + 32) == 1)
  {
    v4 = v0[2];
    v3 = v0[3];
    v6 = 0x3A6C656E6E616863;
    MEMORY[0x2318C1750](v1, v2);
    MEMORY[0x2318C1750](8251, 0xE200000000000000);
    v1 = v4;
    v2 = v3;
LABEL_5:
    MEMORY[0x2318C1750](v1, v2);
    return v6;
  }

  return 0x6C616E7265747865;
}

uint64_t PushSubscription.SubscriptionType.Activity.PushType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return MEMORY[0x2318C1AB0](2);
    }

    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
  }

  return sub_22CE85E54();
}

uint64_t PushSubscription.SubscriptionType.Activity.PushType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22CE86204();
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66110()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22CE86204();
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE661CC()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 32))
  {
    if (*(v0 + 32) != 1)
    {
      return MEMORY[0x2318C1AB0](2);
    }

    v4 = v0[2];
    v3 = v0[3];
    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
  }

  return sub_22CE85E54();
}

uint64_t sub_22CE66288()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_22CE86204();
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t PushSubscription.SubscriptionType.Activity.activityIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t PushSubscription.SubscriptionType.Activity.activityIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PushSubscription.SubscriptionType.Activity.pushType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  return sub_22CE62924(v2, v3, v4, v5, v6);
}

__n128 PushSubscription.SubscriptionType.Activity.pushType.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  sub_22CE62A0C(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v5;
  *(v1 + 48) = v3;
  return result;
}

uint64_t PushSubscription.SubscriptionType.Activity.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  sub_22CE860F4();
  MEMORY[0x2318C1750](0xD000000000000014, 0x800000022CE8A710);
  MEMORY[0x2318C1750](v1, v2);
  MEMORY[0x2318C1750](0x795468737570203BLL, 0xEC000000203A6570);
  if (!v7)
  {
    v19 = 0x203A6E656B6F74;
    v20 = 0xE700000000000000;
    v10 = v3;
    v11 = v4;
    goto LABEL_5;
  }

  if (v7 == 1)
  {
    v19 = 0x3A6C656E6E616863;
    v20 = 0xE900000000000020;
    MEMORY[0x2318C1750](v3, v4);
    MEMORY[0x2318C1750](8251, 0xE200000000000000);
    v10 = v5;
    v11 = v6;
LABEL_5:
    MEMORY[0x2318C1750](v10, v11);
    v12 = v19;
    v13 = v20;
    goto LABEL_7;
  }

  v13 = 0xE800000000000000;
  v12 = 0x6C616E7265747865;
LABEL_7:
  MEMORY[0x2318C1750](v12, v13);

  MEMORY[0x2318C1750](0x656870457369203BLL, 0xEF203A6C6172656DLL);
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

  MEMORY[0x2318C1750](v14, v15);

  MEMORY[0x2318C1750](0xD000000000000019, 0x800000022CE8A730);
  if (v9)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v9)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x2318C1750](v16, v17);

  return 0;
}

uint64_t PushSubscription.SubscriptionType.Activity.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  sub_22CE85E54();
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  sub_22CE86224();
  return sub_22CE86224();
}

uint64_t PushSubscription.SubscriptionType.Activity.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  sub_22CE86204();
  sub_22CE85E54();
  if (v7)
  {
    if (v7 == 1)
    {
      MEMORY[0x2318C1AB0](1);
      sub_22CE85E54();
      sub_22CE85E54();
    }

    else
    {
      MEMORY[0x2318C1AB0](2);
    }
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  sub_22CE86224();
  sub_22CE86224();
  return sub_22CE86244();
}

uint64_t sub_22CE6689C()
{
  sub_22CE86204();
  PushSubscription.SubscriptionType.Activity.hash(into:)();
  return sub_22CE86244();
}

uint64_t sub_22CE668E0()
{
  sub_22CE86204();
  PushSubscription.SubscriptionType.Activity.hash(into:)();
  return sub_22CE86244();
}

uint64_t PushSubscription.SubscriptionType.description.getter()
{
  if (((*(v0 + 24) | (*(v0 + 50) << 16)) & 0x80000000) == 0)
  {
    return 0x74536F5468737570;
  }

  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 1);
  v6 = *(v0 + 2);
  v2 = PushSubscription.SubscriptionType.Activity.description.getter();
  MEMORY[0x2318C1750](v2);

  return 0x7974697669746361;
}

uint64_t PushSubscription.SubscriptionType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 24) | (*(v0 + 50) << 16);
  if (v3 < 0)
  {
    v5 = v0[2];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[5];
    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
    if (v3)
    {
      if (v3 == 1)
      {
        MEMORY[0x2318C1AB0](1);
        sub_22CE85E54();
        sub_22CE85E54();
      }

      else
      {
        MEMORY[0x2318C1AB0](2);
      }
    }

    else
    {
      MEMORY[0x2318C1AB0](0);
      sub_22CE85E54();
    }

    sub_22CE86224();
    return sub_22CE86224();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);

    return sub_22CE85E54();
  }
}

uint64_t PushSubscription.SubscriptionType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 24) | (*(v0 + 50) << 16);
  sub_22CE86204();
  if (v7 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    sub_22CE85E54();
    if (v7)
    {
      if (v7 == 1)
      {
        MEMORY[0x2318C1AB0](1);
        sub_22CE85E54();
        sub_22CE85E54();
      }

      else
      {
        MEMORY[0x2318C1AB0](2);
      }
    }

    else
    {
      MEMORY[0x2318C1AB0](0);
      sub_22CE85E54();
    }

    sub_22CE86224();
    sub_22CE86224();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66C3C()
{
  v2 = *v0;
  v1 = v0[1];
  v5 = *(v0 + 2);
  v6 = *(v0 + 1);
  v3 = *(v0 + 24) | (*(v0 + 50) << 16);
  sub_22CE86204();
  if (v3 < 0)
  {
    MEMORY[0x2318C1AB0](1);
    PushSubscription.SubscriptionType.Activity.hash(into:)();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);
    sub_22CE85E54();
  }

  return sub_22CE86244();
}

uint64_t sub_22CE66CF8()
{
  v2 = *v0;
  v1 = v0[1];
  if ((*(v0 + 24) | (*(v0 + 50) << 16)) < 0)
  {
    MEMORY[0x2318C1AB0](1);
    v5 = *(v0 + 2);
    v4 = *(v0 + 1);
    return PushSubscription.SubscriptionType.Activity.hash(into:)();
  }

  else
  {
    MEMORY[0x2318C1AB0](0);

    return sub_22CE85E54();
  }
}