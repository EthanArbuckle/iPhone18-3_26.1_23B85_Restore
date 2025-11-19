uint64_t sub_269C85F54(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    if (a1 == 4)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_13;
    }

    if (a1 == 1)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_13;
    }
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_13:
    swift_once();
  }

  return sub_269D972C0();
}

id SleepScheduleClockCaption.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleClockCaption.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleClockCaption();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for SleepScheduleClockCaption.Message(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScheduleClockCaption.Message(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_269C86548()
{
  result = qword_28034EBE8;
  if (!qword_28034EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EBE8);
  }

  return result;
}

uint64_t sub_269C8659C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269C865F4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269C865F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269C86644(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C866B0(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (a1)
  {
    v5 = [a1 preferredContentSizeCategory];
    v6 = sub_269D9A630();
    v8 = v7;
    if (v6 == sub_269D9A630() && v8 == v9)
    {
    }

    else
    {
      v11 = sub_269D9B280();

      if ((v11 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v12 = [v1 traitCollection];
    v13 = [v12 legibilityWeight];

    if (v13 == [a1 legibilityWeight])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_11:

  sub_269C85AA0();
}

void sub_269C86828(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (([a1 isFiring] & 1) != 0 || objc_msgSend(a1, sel_isSnoozed))
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = a1;
    v7 = sub_269D98230();
    v8 = sub_269D9AB80();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v9 = 136446466;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, aBlock);

      *(v9 + 4) = v14;
      *(v9 + 12) = 2114;
      *(v9 + 14) = v6;
      *v10 = v6;
      v15 = v6;
      _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] dismissing active alarm: %{public}@", v9, 0x16u);
      sub_269C773DC(v10);
      MEMORY[0x26D652460](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v9, -1, -1);
    }

    v16 = [v6 alarmIDString];
    if (!v16)
    {
      sub_269D9A630();
      v16 = sub_269D9A5F0();
    }

    if ([v6 isSnoozed])
    {
      v17 = 6;
    }

    else if ([v6 isSleepAlarm])
    {
      v17 = 5;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v2 dismissAlarmWithIdentifier:v16 dismissAction:v17];

    if (v18)
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = ObjectType;
      aBlock[4] = sub_269C87160;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_269C4D5F0;
      aBlock[3] = &block_descriptor_7;
      v20 = _Block_copy(aBlock);
      v21 = v6;

      v22 = [v18 addCompletionBlock_];
      _Block_release(v20);
    }
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v23 = sub_269D98250();
    __swift_project_value_buffer(v23, qword_280351208);
    v24 = a1;
    oslog = sub_269D98230();
    v25 = sub_269D9AB60();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136446466;
      v29 = sub_269D9B4D0();
      v31 = sub_269C2EACC(v29, v30, aBlock);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v24;
      *v27 = v24;
      v32 = v24;
      _os_log_impl(&dword_269C18000, oslog, v25, "[%{public}s] attempting to dismiss inactive alarm: %{public}@", v26, 0x16u);
      sub_269C773DC(v27);
      MEMORY[0x26D652460](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_269C86CF0(int a1, NSObject *a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280351208);
    v6 = a2;
    v7 = sub_269D98230();
    v8 = sub_269D9AB60();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v33 = v10;
      *v9 = 136446466;
      v11 = sub_269D9B4D0();
      v13 = sub_269C2EACC(v11, v12, &v33);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v16 + 16))(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      v17 = sub_269D9A660();
      v19 = sub_269C2EACC(v17, v18, &v33);

      *(v9 + 14) = v19;
      _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] failed to dismiss active alarm with error: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v10, -1, -1);
      MEMORY[0x26D652460](v9, -1, -1);

      return;
    }

    v31 = a2;
  }

  else
  {
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v21 = sub_269D98250();
    __swift_project_value_buffer(v21, qword_280351208);
    v22 = a3;
    v32 = sub_269D98230();
    v23 = sub_269D9AB80();

    if (os_log_type_enabled(v32, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v24 = 136446466;
      v27 = sub_269D9B4D0();
      v29 = sub_269C2EACC(v27, v28, &v33);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2114;
      *(v24 + 14) = v22;
      *v25 = v22;
      v30 = v22;
      _os_log_impl(&dword_269C18000, v32, v23, "[%{public}s] dismissed active alarm: %{public}@", v24, 0x16u);
      sub_269C773DC(v25);
      MEMORY[0x26D652460](v25, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v24, -1, -1);

      return;
    }

    v31 = v32;
  }
}

unint64_t sub_269C87114()
{
  result = qword_280C0ADD0;
  if (!qword_280C0ADD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C0ADD0);
  }

  return result;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_269C8722C()
{
  v1 = v0;
  sub_269C91F14(0, &qword_280C0AED0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v114 = &v102 - v3;
  v115 = sub_269D9ACD0();
  v113 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v111 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C2FB3C();
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v112 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C93388();
  v109 = *(v7 - 1);
  v110 = v7;
  MEMORY[0x28223BE20](v7);
  v108 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9348C();
  v107 = v9;
  v106 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v105 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  v104 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
  v13 = *&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model];
  v103 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider;
  sub_269C2DB5C(&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider], &aBlock);
  v14 = v122;
  v15 = v123;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v122);
  v16 = *(v15 + 3);

  v17 = v16(v14, v15);
  v18 = [v1 traitCollection];
  v19 = [v18 preferredContentSizeCategory];

  v20 = sub_269D9ACF0();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  objc_allocWithZone(type metadata accessor for QuickScheduleOverrideViewController.DataSource());
  v22 = v1;
  v23 = sub_269C905D4(v12, v13, v17, v20 & 1, sub_269C93588, v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  v24 = *&v22[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource];
  *&v22[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource] = v23;

  v25 = type metadata accessor for QuickScheduleOverrideViewController();
  v125.receiver = v22;
  v125.super_class = v25;
  objc_msgSendSuper2(&v125, sel_viewDidLoad);
  result = [v22 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v27 systemBackgroundColor];
  v29 = [v27 systemGroupedBackgroundColor];
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  v31 = objc_allocWithZone(MEMORY[0x277D75348]);
  v123 = sub_269C57E64;
  v124 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v120 = 1107296256;
  v121 = sub_269CC7F6C;
  v122 = &block_descriptor_8;
  v32 = _Block_copy(&aBlock);
  v33 = [v31 initWithDynamicProvider_];
  _Block_release(v32);

  [v26 setBackgroundColor_];

  result = [v22 tableView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v34 = result;
  type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = sub_269D9A5F0();
  [v34 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:v36];

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v37 = sub_269D9A5F0();

  [v22 setTitle_];

  v38 = [v22 navigationItem];
  v39 = [v22 title];
  [v38 setTitle_];

  v40 = [v22 navigationItem];
  v41 = [v22 title];
  [v40 setBackButtonTitle_];

  if ((_UISolariumEnabled() & 1) == 0)
  {
    v42 = [v22 navigationController];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 navigationBar];

      v45 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      [v44 setShadowImage_];
    }

    if ((_UIBarsApplyChromelessEverywhere() & 1) == 0)
    {
      v46 = [v22 navigationController];
      if (v46)
      {
        v47 = v46;
        v48 = [v46 navigationBar];

        [v48 setTranslucent_];
      }
    }

    v49 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
    v50 = [v27 systemBackgroundColor];
    v51 = [v27 systemGroupedBackgroundColor];
    v52 = swift_allocObject();
    *(v52 + 16) = v50;
    *(v52 + 24) = v51;
    v53 = objc_allocWithZone(MEMORY[0x277D75348]);
    v123 = sub_269C937E4;
    v124 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v120 = 1107296256;
    v121 = sub_269CC7F6C;
    v122 = &block_descriptor_96;
    v54 = _Block_copy(&aBlock);
    v55 = [v53 initWithDynamicProvider_];
    _Block_release(v54);

    [v49 setBackgroundColor_];

    v56 = [v22 navigationController];
    if (v56)
    {
      v57 = v56;
      v58 = [v56 navigationBar];

      [v58 setStandardAppearance_];
    }
  }

  v59 = [v22 navigationItem];
  v60 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v61 = v22;
  v62 = [v60 initWithBarButtonSystemItem:1 target:v61 action:sel_cancelButtonPressed];
  [v59 setLeftBarButtonItem_];

  v63 = [v61 navigationItem];
  v64 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:0 target:v61 action:sel_saveButtonPressed_];

  [v63 setRightBarButtonItem_];
  v65 = [v61 navigationItem];
  v66 = [v65 rightBarButtonItem];

  v67 = v104;
  if (v66)
  {

    v68 = ScheduleOccurrenceEditModel.isValid.getter();

    [v66 setEnabled_];
  }

  aBlock = *(*(v67 + v1) + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D3B8();
  sub_269C93760(&qword_28034EF70, sub_269C2D3B8);

  v69 = sub_269D98900();

  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_alarmConfigurationObserver] = v69;

  aBlock = *(*(v67 + v1) + 32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D498();
  sub_269C93760(&qword_28034D858, sub_269C2D498);

  v70 = sub_269D98900();

  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_snoozeDurationPickerObserver] = v70;

  aBlock = *(*(v67 + v1) + 24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D430();
  sub_269C93760(&qword_28034EF80, sub_269C2D430);

  v71 = sub_269D98900();

  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelEditObserver] = v71;

  v72 = v103;
  sub_269C2DB5C(v1 + v103, &aBlock);
  v73 = v122;
  v74 = v123;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v122);
  v118 = (*(v74 + 4))(v73, v74);
  sub_269C9340C(0, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80, 0x277D624C0);
  sub_269C93510();
  v75 = v105;
  sub_269D988F0();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C93760(&qword_28034EF88, sub_269C9348C);
  v76 = v107;
  v77 = sub_269D98900();

  (*(v106 + 8))(v75, v76);
  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver] = v77;

  sub_269C2DB5C(v1 + v72, &aBlock);
  v78 = v122;
  v79 = v123;
  __swift_project_boxed_opaque_existential_1Tm(&aBlock, v122);
  v118 = (*(v79 + 3))(v78, v79);
  sub_269C9340C(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
  sub_269C300C0();
  v80 = v108;
  sub_269D988F0();

  __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C93760(&unk_28034EF90, sub_269C93388);
  v81 = v110;
  v82 = sub_269D98900();

  (*(v109 + 8))(v80, v81);
  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver] = v82;

  aBlock = *(*(v67 + v1) + 72);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2FDFC();
  sub_269C93760(&qword_28034FF20, sub_269C2FDFC);

  v83 = sub_269D98900();

  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepDurationGoalObserver] = v83;

  aBlock = *(*(v67 + v1) + 40);
  v84 = MEMORY[0x277CBCE30];
  sub_269C932C8(0, &qword_28034D830, MEMORY[0x277CBCE30]);
  sub_269C936A4(&qword_28034EFA0, &qword_28034D830, v84);
  aBlock = sub_269D988B0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = MEMORY[0x277CBCD88];
  sub_269C932C8(0, &qword_28034D8B0, MEMORY[0x277CBCD88]);
  sub_269C936A4(&qword_28034EFB0, &qword_28034D8B0, v85);
  v86 = sub_269D98900();

  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_validScheduleRangeObserver] = v86;

  v110 = objc_opt_self();
  v87 = [v110 defaultCenter];
  v88 = v111;
  sub_269D9ACE0();

  v103 = sub_269C1B0B8(0, &qword_280C0AEB0);
  v89 = sub_269D9AC40();
  aBlock = v89;
  v108 = sub_269D9AC30();
  v90 = *(v108 - 1);
  v107 = *(v90 + 56);
  v109 = v90 + 56;
  v91 = v114;
  v107(v114, 1, 1, v108);
  v106 = sub_269C93760(&qword_280C0B4B0, MEMORY[0x277CC9DB0]);
  v105 = sub_269C2FC08();
  v92 = v112;
  v93 = v115;
  sub_269D988E0();
  v104 = MEMORY[0x277D85248];
  sub_269C936E8(v91, &qword_280C0AED0, MEMORY[0x277D85248]);

  v113 = *(v113 + 8);
  (v113)(v88, v93);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = sub_269C93760(&qword_280C0B178, sub_269C2FB3C);
  v94 = v117;
  v95 = sub_269D98900();

  v116 = *(v116 + 8);
  (v116)(v92, v94);
  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_significantTimeChangeObserver] = v95;

  v96 = [v110 defaultCenter];
  sub_269D9ACE0();

  v97 = sub_269D9AC40();
  aBlock = v97;
  v107(v91, 1, 1, v108);
  sub_269D988E0();
  sub_269C936E8(v91, &qword_280C0AED0, v104);

  (v113)(v88, v93);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = sub_269D98900();

  (v116)(v92, v94);
  *&v61[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_willResignActiveObserver] = v98;

  sub_269C91F14(0, &qword_28034E1D0, sub_269C2FFF4, MEMORY[0x277D84560]);
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_269D9EBE0;
  v100 = sub_269D983D0();
  v101 = MEMORY[0x277D74DB8];
  *(v99 + 32) = v100;
  *(v99 + 40) = v101;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  sub_269D9AC10();
  swift_unknownObjectRelease();
}

void sub_269C88868()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v1 = Strong;
  v2 = [Strong tableView];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v2 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10);
  v5 = sub_269D9A7E0();

  if (v5 >> 62)
  {
    v6 = sub_269D9AF50();
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v15 = v5;
    do
    {
      if (v8)
      {
        v9 = MEMORY[0x26D651260](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v18 = v9;
      sub_269C3232C(0, &qword_28034EF00);
      if (swift_dynamicCast())
      {
        sub_269C25520(v16, v19);
        v11 = v20;
        v10 = v21;
        __swift_project_boxed_opaque_existential_1Tm(v19, v20);
        v12 = v6;
        v13 = *(v10 + 8);

        v13(v14, v11, v10);
        v6 = v12;
        v5 = v15;

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      else
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_269C91F78(v16);
      }

      ++v7;
    }

    while (v6 != v7);
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_269C88B30()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v1 = Strong;
  v2 = [Strong tableView];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v2 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10);
  v5 = sub_269D9A7E0();

  if (v5 >> 62)
  {
    v6 = sub_269D9AF50();
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v15 = v5;
    do
    {
      if (v8)
      {
        v9 = MEMORY[0x26D651260](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v18 = v9;
      sub_269C3232C(0, &qword_28034EF00);
      if (swift_dynamicCast())
      {
        sub_269C25520(v16, v19);
        v11 = v20;
        v10 = v21;
        __swift_project_boxed_opaque_existential_1Tm(v19, v20);
        v12 = v6;
        v13 = *(v10 + 8);

        v13(v14, v11, v10);
        v6 = v12;
        v5 = v15;

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      else
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_269C91F78(v16);
      }

      ++v7;
    }

    while (v6 != v7);
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_269C88DF8()
{
  v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged] = 1;
  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
  {

    sub_269D98750();
  }

  if (*&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
  {

    sub_269D98750();
  }

  [v0 setModalInPresentation_];
  v1 = [v0 navigationItem];
  v3 = [v1 rightBarButtonItem];

  if (v3)
  {

    v2 = ScheduleOccurrenceEditModel.isValid.getter();

    [v3 setEnabled_];
  }
}

void sub_269C88F28(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }

  else
  {
  }
}

uint64_t sub_269C89008()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Next occurrence did change while editing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C2DB5C(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider, v14);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v11 + 24))(v10, v11);
  sub_269D987C0();

  sub_269C8B528(v13);

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

void sub_269C891D8(void **a1)
{
  v1 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_269C892B4(v1);
  }

  else
  {
  }
}

void sub_269C892B4(void *a1)
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Sleep schedule did change while editing", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  sub_269C8B528(a1);
}

void sub_269C89428()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v1 = Strong;
  v2 = [Strong tableView];
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v2;
  v4 = [v2 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10);
  v5 = sub_269D9A7E0();

  if (v5 >> 62)
  {
    v6 = sub_269D9AF50();
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_19:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_7:
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = v5 & 0xC000000000000001;
    v15 = v5;
    do
    {
      if (v8)
      {
        v9 = MEMORY[0x26D651260](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v18 = v9;
      sub_269C3232C(0, &qword_28034EF00);
      if (swift_dynamicCast())
      {
        sub_269C25520(v16, v19);
        v11 = v20;
        v10 = v21;
        __swift_project_boxed_opaque_existential_1Tm(v19, v20);
        v12 = v6;
        v13 = *(v10 + 8);

        v13(v14, v11, v10);
        v6 = v12;
        v5 = v15;

        __swift_destroy_boxed_opaque_existential_1Tm(v19);
      }

      else
      {
        v17 = 0;
        memset(v16, 0, sizeof(v16));
        sub_269C91F78(v16);
      }

      ++v7;
    }

    while (v6 != v7);
    goto LABEL_19;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_269C896F0()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationItem];
    v3 = [v2 rightBarButtonItem];

    if (v3)
    {

      v4 = ScheduleOccurrenceEditModel.isValid.getter();

      [v3 setEnabled_];
    }

    else
    {
    }
  }

  else
  {
  }
}

void sub_269C89840()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleSignificantTimeChange];
  }

  else
  {
  }
}

void sub_269C89910()
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_269C89D48();
  }

  else
  {
  }
}

void sub_269C899DC(void *a1)
{
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - v5;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
    v9 = Strong;
    v10 = v8;

    if (!v8)
    {
      __break(1u);
      return;
    }

    v11 = [a1 traitCollection];
    v12 = [v11 preferredContentSizeCategory];

    LOBYTE(v11) = sub_269D9ACF0();
    v10[qword_28034EED0] = v11 & 1;
    if (v10[qword_28034EE88] == 1)
    {

      return;
    }

    v10[qword_28034EE88] = 1;
    sub_269C9021C();
    *(swift_allocObject() + 16) = v10;
    v13 = v10;
    sub_269D983A0();

    (*(v4 + 8))(v6, v3);
  }
}

void sub_269C89D48()
{
  swift_getObjectType();
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B728);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, &v8);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] App will resign active", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  sub_269D4B714();
}

void sub_269C8A0C4(void *a1)
{
  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);

    v6 = [v5 alarmConfiguration];
    [v6 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0);
    swift_dynamicCast();
    v7 = v29[0];
    v8 = [v29[0] isEnabled];
LABEL_5:
    v12 = v8;

    [v4 setOn:v12 animated:1];

    [v4 setDelegate_];
    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v4 = v9;
    v10 = *(*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);

    v11 = [v10 alarmConfiguration];
    [v11 mutableCopy];

    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034D9C0);
    swift_dynamicCast();
    v7 = v29[0];
    v8 = [v29[0] allowsSnooze];
    goto LABEL_5;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v13 = swift_dynamicCastClass();
  if (v13)
  {
    v14 = v13;
    v15 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model);
    type metadata accessor for AlarmSnoozeDurationModel(0);
    v16 = swift_allocObject();

    sub_269D97A20();
    *(v16 + 16) = v15;
    v17 = OBJC_IVAR____TtC13SleepHealthUI50ScheduleOccurrenceAlarmSnoozeDurationTableViewCell_snoozeDurationModel;
LABEL_11:
    *&v14[v17] = v16;

    [v14 setNeedsUpdateConfiguration];

    return;
  }

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v14 = v18;
    v19 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model);
    type metadata accessor for AlarmSnoozeDurationPickerModel(0);
    v16 = swift_allocObject();

    sub_269D97A20();
    *(v16 + 16) = v19;
    v17 = OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel;
    goto LABEL_11;
  }

  type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = v20;

    sub_269CF55D0(v22);

    v23 = v21 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_delegate;
    swift_beginAccess();
    *(v23 + 8) = &off_287AA3590;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v33 = a1;
    sub_269C1B0B8(0, &unk_28034DC10);
    sub_269C3232C(0, &qword_28034EF00);
    v24 = a1;
    if (swift_dynamicCast())
    {
      sub_269C25520(&v32, v29);
      v25 = v30;
      v26 = v31;
      __swift_project_boxed_opaque_existential_1Tm(v29, v30);
      v27 = *(v26 + 8);

      v27(v28, v25, v26);

      __swift_destroy_boxed_opaque_existential_1Tm(v29);
    }
  }
}

void sub_269C8A544()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *(*&v0[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model] + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);

  v3 = [v2 alarmConfiguration];
  [v3 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();

  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v4 = objc_opt_self();
  v5 = [v16 toneIdentifier];
  v6 = [v16 vibrationIdentifier];
  v7 = [v4 hksh:v5 alarmPickerWithToneIdentifier:v6 vibrationIdentifier:*&v1[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_tonePickerStyleProvider] styleProvider:?];

  [v7 setDelegate_];
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17[0] = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Presenting tone picker", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  [v1 showViewController:v7 sender:0];
}

id sub_269C8AAE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_269D97870();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource;
  v11 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v11)
  {
    sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_269D9EBF0;
    *(v12 + 32) = a2;
    *(v12 + 40) = 0;
    v13 = v11;
    MEMORY[0x26D64DA70](v12);
    sub_269D98380();

    (*(v7 + 8))(v9, v6);
    v15 = v31;
    v14 = v32;
    if (v32 && (v31 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v32 || (sub_269D9B280() & 1) != 0 || v15 == 0xD00000000000003ELL && 0x8000000269DAC150 == v14 || (sub_269D9B280() & 1) != 0 || v15 == 0xD000000000000029 && 0x8000000269DAC210 == v14 || (sub_269D9B280() & 1) != 0))
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  type metadata accessor for EditScheduleLinkTableViewCell();
  v31 = sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  v16 = sub_269D9A660();
  if (v14)
  {
    if (v16 == v15 && v14 == v17)
    {

LABEL_18:

      return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
    }

    v19 = sub_269D9B280();

    if (v19)
    {
      return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
    }
  }

  else
  {
  }

  v20 = *(v3 + v10);
  if (v20)
  {
    v21 = v20;
    sub_269C92518(a2);
    v23 = v22;

    if (v23)
    {
      v24 = sub_269D9A5F0();
      v25 = [a1 dequeueReusableHeaderFooterViewWithIdentifier_];

      if (v25)
      {
        type metadata accessor for ScheduleOccurrenceSectionTableViewHeaderView();
        v26 = swift_dynamicCastClass();
        if (v26)
        {
          v27 = v26;
          v28 = v25;
          v29 = sub_269D59EA0();
          v30 = sub_269D9A5F0();

          [v29 setText_];

          return v27;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

double sub_269C8B0C0(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double (*a6)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  v12 = a6(a4);

  return v12;
}

void sub_269C8B528(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_269D977A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_269D97580();
  v9 = MEMORY[0x28223BE20](v8);
  v12 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged))
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v13 = sub_269D98250();
    __swift_project_value_buffer(v13, qword_280C0B220);
    v42 = sub_269D98230();
    v14 = sub_269D9AB80();
    if (os_log_type_enabled(v42, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v43[0] = v16;
      *v15 = 136446210;
      v17 = sub_269D9B4D0();
      v19 = sub_269C2EACC(v17, v18, v43);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_269C18000, v42, v14, "[%{public}s] Ignoring occurrence reset since the user has already edited the model.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x26D652460](v16, -1, -1);
      MEMORY[0x26D652460](v15, -1, -1);
    }

    else
    {
      v21 = v42;
    }
  }

  else
  {
    v41 = v10;
    v42 = v9;
    if (a1)
    {
      v20 = a1;
    }

    else
    {
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      v22 = sub_269D98250();
      __swift_project_value_buffer(v22, qword_280C0B220);
      v23 = sub_269D98230();
      v24 = sub_269D9AB80();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43[0] = v40;
        *v25 = 136446210;
        v26 = sub_269D9B4D0();
        v28 = sub_269C2EACC(v26, v27, v43);
        v39 = v24;
        v29 = v28;

        *(v25 + 4) = v29;
        _os_log_impl(&dword_269C18000, v23, v39, "[%{public}s] Sleep schedule is nil - creating empty schedule.", v25, 0xCu);
        v30 = v40;
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x26D652460](v30, -1, -1);
        MEMORY[0x26D652460](v25, -1, -1);
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
    }

    v31 = a1;
    sub_269D97570();
    sub_269C2DB5C(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider, v43);
    v32 = v44;
    v33 = v45;
    __swift_project_boxed_opaque_existential_1Tm(v43, v44);
    v34 = SleepScheduleProviding.sleepScheduleModel.getter(v32, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    v35 = sub_269D974B0();
    (*(v5 + 16))(v7, *(v2 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v4);
    v36 = sub_269D976E0();
    (*(v5 + 8))(v7, v4);
    v37 = [v34 generateOverrideOccurrenceForCurrentDate:v35 gregorianCalendar:v36 schedule:v20];

    ScheduleOccurrenceEditModel.reset(occurrence:weekdaysWithExistingOccurrences:)(v37, 0);

    (*(v41 + 8))(v12, v42);
  }
}

void sub_269C8BA48()
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v0 = sub_269D98250();
  __swift_project_value_buffer(v0, qword_280C0B220);
  v1 = sub_269D98230();
  v2 = sub_269D9AB80();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v25[0] = v4;
    *v3 = 136446210;
    v5 = sub_269D9B4D0();
    v7 = sub_269C2EACC(v5, v6, v25);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_269C18000, v1, v2, "[%{public}s] Significant time changed", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x26D652460](v4, -1, -1);
    MEMORY[0x26D652460](v3, -1, -1);
  }

  v8 = [v21 tableView];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = v8;
  v10 = [v8 visibleCells];

  sub_269C1B0B8(0, &unk_28034DC10);
  v11 = sub_269D9A7E0();

  if (v11 >> 62)
  {
    v12 = sub_269D9AF50();
    if (v12)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_8:
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = v11 & 0xC000000000000001;
        do
        {
          if (v14)
          {
            v15 = MEMORY[0x26D651260](v13, v11);
          }

          else
          {
            v15 = *(v11 + 8 * v13 + 32);
          }

          v24 = v15;
          sub_269C3232C(0, &qword_28034EF00);
          if (swift_dynamicCast())
          {
            sub_269C25520(v22, v25);
            v17 = v26;
            v16 = v27;
            __swift_project_boxed_opaque_existential_1Tm(v25, v26);
            v18 = v12;
            v19 = *(v16 + 8);

            v19(v20, v17, v16);
            v12 = v18;
            v14 = v11 & 0xC000000000000001;

            __swift_destroy_boxed_opaque_existential_1Tm(v25);
          }

          else
          {
            v23 = 0;
            memset(v22, 0, sizeof(v22));
            sub_269C91F78(v22);
          }

          ++v13;
        }

        while (v12 != v13);

        return;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }
  }
}

void sub_269C8BDCC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_269C8BE98(uint64_t a1)
{
  v2 = v1;
  v87 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_269D977A0();
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v88 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v6 = sub_269D98250();
  __swift_project_value_buffer(v6, qword_280C0B220);
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v94[0] = v10;
    *v9 = 136446210;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, v94);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Save button pressed", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v14 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
  v15 = *&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model];
  if ((*(v15 + 56) & 1) == 0)
  {
    v16 = *(v15 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
    swift_beginAccess();
    if ([v16 isEqual_])
    {
      v17 = sub_269D98230();
      v18 = sub_269D9AB80();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v93[0] = v20;
        *v19 = 136446210;
        v21 = sub_269D9B4D0();
        v23 = sub_269C2EACC(v21, v22, v93);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_269C18000, v17, v18, "[%{public}s] save button pressed but no changes were made", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D652460](v20, -1, -1);
        MEMORY[0x26D652460](v19, -1, -1);
      }

      v24 = &v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate];
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v26 = result;
        if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
        {

          sub_269D98750();
        }

        if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
        {

          sub_269D98750();
        }

        [v26 cancelWithAnimated_];
        swift_unknownObjectRelease();
LABEL_39:
        *(v24 + 1) = 0;
        return swift_unknownObjectWeakAssign();
      }

      return result;
    }

    v15 = *&v2[v14];
  }

  if (*(v15 + 57) == 1)
  {

    sub_269D987C0();
    v27 = v92[0];
    if (v92[0])
    {
      swift_beginAccess();
      v28 = *(v15 + 48);
      v29 = [v27 overridenOccurrenceForOverrideOccurrence_];

      if (v29)
      {
        v30 = sub_269D98230();
        v31 = sub_269D9AB80();
        v32 = os_log_type_enabled(v30, v31);
        v85 = v29;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v92[0] = v34;
          *v33 = 136446210;
          v35 = sub_269D9B4D0();
          v37 = sub_269C2EACC(v35, v36, v92);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_269C18000, v30, v31, "[%{public}s] overriding an existing occurrence, asking if we should save", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x26D652460](v34, -1, -1);
          MEMORY[0x26D652460](v33, -1, -1);
        }

        v38 = *&v2[v14];
        (*(v89 + 16))(v88, v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v90);
        v39 = *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
        swift_beginAccess();
        v40 = *(v38 + 48);
        v41 = v39;

        v83 = v41;
        v42 = [v41 changesFromOccurrence_];
        v43 = [v42 hasChangeForPropertyIdentifier_];
        if ([v42 hasChangeForPropertyIdentifier_])
        {
          v44 = v43 | 2;
        }

        else
        {
          v44 = v43;
        }

        v45 = *MEMORY[0x277D62058];
        v46 = [v42 hasChangeForPropertyIdentifier_];

        if (v46)
        {
          v47 = v44 | 4;
        }

        else
        {
          v47 = v44;
        }

        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = swift_allocObject();
        *(v49 + 16) = v48;
        *(v49 + 24) = ObjectType;
        v86 = v49;
        v84 = v48;

        v50 = sub_269D98230();
        v51 = sub_269D9AB80();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v91 = v53;
          *v52 = 136446210;
          v54 = sub_269D9B4D0();
          v56 = sub_269C2EACC(v54, v55, &v91);

          *(v52 + 4) = v56;
          _os_log_impl(&dword_269C18000, v50, v51, "[%{public}s] Presenting occurrence change alert", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v53);
          MEMORY[0x26D652460](v53, -1, -1);
          MEMORY[0x26D652460](v52, -1, -1);
        }

        v57 = v85;
        v82 = sub_269C1B0B8(0, &unk_28034EF40);
        v81 = [v57 weekdays];
        v91 = v47;
        v58 = swift_allocObject();
        v80 = v58;
        swift_unknownObjectWeakInit();
        v59 = swift_allocObject();
        v59[2] = v58;
        v59[3] = sub_269C932A4;
        v60 = v86;
        v59[4] = v86;
        v59[5] = ObjectType;
        v61 = ObjectType;
        v62 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = swift_allocObject();
        v64 = v57;
        v65 = v83;
        v63[2] = v62;
        v63[3] = v65;
        v63[4] = v64;
        v63[5] = sub_269C932A4;
        v63[6] = v60;
        v63[7] = v61;
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        *(v67 + 24) = v61;
        swift_retain_n();
        v68 = v65;

        v85 = v64;

        v69 = v88;
        v70 = v68;
        v71 = static UIAlertController.createOccurrenceChangeAlert(calendar:occurrence:weekdays:changes:sender:changeNextHandler:changeAllHandler:cancelHandler:)(v88, v68, v81, &v91, v87, sub_269C932AC, v59, sub_269C932B8, v63, sub_269C937E0, v67);

        [v2 presentViewController:v71 animated:1 completion:0];

        (*(v89 + 8))(v69, v90);
      }
    }

    else
    {
    }
  }

  v72 = sub_269D98230();
  v73 = sub_269D9AB80();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v92[0] = v75;
    *v74 = 136446210;
    v76 = sub_269D9B4D0();
    v78 = sub_269C2EACC(v76, v77, v92);

    *(v74 + 4) = v78;
    _os_log_impl(&dword_269C18000, v72, v73, "[%{public}s] not overriding an existing occurrence, saving", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    MEMORY[0x26D652460](v75, -1, -1);
    MEMORY[0x26D652460](v74, -1, -1);
  }

  v24 = &v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
    {

      sub_269D98750();
    }

    if (*&v2[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
    {

      sub_269D98750();
    }

    v79 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();

    sub_269D86254(v79, 0);
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  return result;
}

void sub_269C8C960(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280C0B220);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v15[0] = v7;
      *v6 = 136446466;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, v15);

      *(v6 + 4) = v10;
      *(v6 + 12) = 1026;
      *(v6 + 14) = a1 & 1;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] saving (deleteOverride:%{BOOL,public}d)", v6, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = v11 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*&v12[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
      {

        sub_269D98750();
      }

      if (*&v12[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
      {

        sub_269D98750();
      }

      v14 = ScheduleOccurrenceEditModel.finalizedOccurrenceForSaving()();

      sub_269D86254(v14, a1 & 1);
      swift_unknownObjectRelease();

      *(v13 + 8) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_269C8CBE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v5 = sub_269D98250();
    __swift_project_value_buffer(v5, qword_280C0B220);
    v6 = sub_269D98230();
    v7 = sub_269D9AB80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      v10 = sub_269D9B4D0();
      v12 = sub_269C2EACC(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] change next wake up only", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D652460](v9, -1, -1);
      MEMORY[0x26D652460](v8, -1, -1);
    }
  }

  return a3(0);
}

void sub_269C8CD74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(_BOOL8), uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v11 = sub_269D98250();
    __swift_project_value_buffer(v11, qword_280C0B220);
    v12 = sub_269D98230();
    v13 = sub_269D9AB80();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v14 = 136446210;
      v15 = sub_269D9B4D0();
      v17 = a4;
      v18 = a5;
      v19 = a6;
      v20 = sub_269C2EACC(v15, v16, v24);

      *(v14 + 4) = v20;
      a6 = v19;
      a5 = v18;
      a4 = v17;
      _os_log_impl(&dword_269C18000, v12, v13, "[%{public}s] change next and future wake ups", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x26D652460](v23, -1, -1);
      MEMORY[0x26D652460](v14, -1, -1);
    }
  }

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_269C8CF58(a3, a4, a5, a6);
  }
}

void sub_269C8CF58(void *a1, uint64_t a2, void (*a3)(_BOOL8), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_269D971F0();
  v105 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v104 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C91F14(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v91 - v14;
  v16 = sub_269D977A0();
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v21 = v91 - v20;
  if (*(*&v5[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model] + 56))
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v22 = sub_269D98250();
    __swift_project_value_buffer(v22, qword_280C0B220);
    v106 = sub_269D98230();
    v23 = sub_269D9AB80();
    if (os_log_type_enabled(v106, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v108 = v25;
      *v24 = 136446210;
      v26 = sub_269D9B4D0();
      v28 = sub_269C2EACC(v26, v27, &v108);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_269C18000, v106, v23, "[%{public}s] isAdding unexpectedly true", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x26D652460](v25, -1, -1);
      MEMORY[0x26D652460](v24, -1, -1);
    }

    else
    {
      v44 = v106;
    }

    return;
  }

  v94 = v19;
  v95 = v11;
  v106 = v18;
  v103 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
  v99 = v15;
  v101 = a1;
  sub_269C2DB5C(&v5[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepScheduleProvider], &v108);
  v29 = v110;
  v30 = v111;
  __swift_project_boxed_opaque_existential_1Tm(&v108, v110);
  (*(v30 + 24))(v29, v30);
  sub_269D987C0();

  v31 = v107;
  if (v107)
  {
    v91[1] = a4;
    v92 = a3;
    v93 = ObjectType;
    __swift_destroy_boxed_opaque_existential_1Tm(&v108);
    v32 = [v101 convertToScheduledOccurrenceOnSameDaysAsOccurrence_];
    v98 = v31;
    v97 = [v31 weekdaysWithOccurrences];
    v100 = v5;
    v33 = *&v5[v103];
    v34 = *(v33 + 72);
    v35 = *(v33 + 80);
    LODWORD(v96) = *(v33 + 88);
    v37 = v106 + 2;
    isa = v106[2].isa;
    isa(v21, v33 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v16);
    type metadata accessor for ScheduleOccurrenceEditModel();
    v38 = swift_allocObject();
    sub_269C2D3B8();
    swift_allocObject();

    *(v38 + 16) = sub_269D98790();
    sub_269C2D430();
    swift_allocObject();
    *(v38 + 24) = sub_269D98790();
    sub_269C2D498();
    swift_allocObject();
    *(v38 + 32) = sub_269D98790();
    v108 = 0;
    sub_269C932C8(0, &qword_28034D830, MEMORY[0x277CBCE30]);
    swift_allocObject();
    *(v38 + 40) = sub_269D987F0();
    *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker) = 0;
    [v32 copy];
    sub_269D9AED0();
    swift_unknownObjectRelease();
    sub_269C1B0B8(0, &qword_28034E050);
    swift_dynamicCast();
    *(v38 + 48) = v107;
    *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) = v32;
    *(v38 + 56) = 0;
    v102 = v32;
    v39 = [v102 weekdays];
    *(v38 + 64) = v97 & ~v39;
    *(v38 + 72) = v34;
    *(v38 + 80) = v35;
    *(v38 + 88) = v96;
    v96 = isa;
    v97 = v37;
    isa((v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar), v21, v16);

    sub_269D987C0();
    v40 = v108;
    if (v108)
    {
      v41 = *(v38 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence);
      v42 = sub_269D976E0();
      v43 = [v40 allowableRangeForModifiedOccurrence:v41 gregorianCalendar:v42];
    }

    else
    {
      v43 = 0;
    }

    v108 = v43;
    sub_269D987D0();

    v53 = v106[1].isa;
    v53(v21, v16);
    if ((ScheduleOccurrenceEditModel.isValid.getter() & 1) == 0)
    {
      if (qword_280C0B218 != -1)
      {
        swift_once();
      }

      v72 = sub_269D98250();
      __swift_project_value_buffer(v72, qword_280C0B220);
      v73 = sub_269D98230();
      v74 = sub_269D9AB80();
      v75 = os_log_type_enabled(v73, v74);
      v76 = v100;
      v77 = v93;
      if (v75)
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        v108 = v79;
        *v78 = 136446210;
        v80 = sub_269D9B4D0();
        v82 = sub_269C2EACC(v80, v81, &v108);

        *(v78 + 4) = v82;
        _os_log_impl(&dword_269C18000, v73, v74, "[%{public}s] change is invalid, not saving", v78, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v79);
        MEMORY[0x26D652460](v79, -1, -1);
        MEMORY[0x26D652460](v78, -1, -1);
      }

      sub_269C675BC(&v108);
      if (v109 != 1)
      {
        v83 = v108;
        sub_269C1B0B8(0, &unk_28034EF40);
        v108 = v83;
        v84 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        *(v85 + 24) = v77;
        v86 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v87 = swift_allocObject();
        *(v87 + 16) = v86;
        *(v87 + 24) = v77;

        v88 = sub_269C9EBF8(&v108, v101, sub_269C93364, v85, sub_269C9336C, v87);

        [v76 presentViewController:v88 animated:1 completion:0];
      }

      goto LABEL_36;
    }

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v54 = sub_269D98250();
    __swift_project_value_buffer(v54, qword_280C0B220);
    v55 = sub_269D98230();
    v56 = sub_269D9AB80();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v108 = v58;
      *v57 = 136446210;
      v59 = sub_269D9B4D0();
      v61 = sub_269C2EACC(v59, v60, &v108);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_269C18000, v55, v56, "[%{public}s] change is valid, updating the model and saving", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v58);
      MEMORY[0x26D652460](v58, -1, -1);
      MEMORY[0x26D652460](v57, -1, -1);
    }

    v62 = v98;
    v63 = v99;
    v64 = [v98 overrideOccurrence];
    if (v64)
    {
      v65 = v64;
      v66 = v94;
      v96(v94, *&v100[v103] + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar, v16);
      v67 = [v65 wakeUpComponents];
      v68 = v104;
      sub_269D97120();

      sub_269D97720();
      (*(v105 + 8))(v68, v95);
      v53(v66, v16);
      v69 = sub_269D97580();
      v70 = *(v69 - 8);
      if ((*(v70 + 48))(v63, 1, v69) != 1)
      {
        sub_269D974F0();
        v90 = v89;

        (*(v70 + 8))(v63, v69);
        v71 = v90 > 0.0;
        goto LABEL_35;
      }

      sub_269C936E8(v63, &qword_280C0BB60, MEMORY[0x277CC9578]);
    }

    v71 = 0;
LABEL_35:
    *&v100[v103] = v38;

    v92(v71);

LABEL_36:

    return;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v108);
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v45 = sub_269D98250();
  __swift_project_value_buffer(v45, qword_280C0B220);
  v46 = sub_269D98230();
  v47 = sub_269D9AB80();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v108 = v49;
    *v48 = 136446210;
    v50 = sub_269D9B4D0();
    v52 = sub_269C2EACC(v50, v51, &v108);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_269C18000, v46, v47, "[%{public}s] no current sleep schedule", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x26D652460](v49, -1, -1);
    MEMORY[0x26D652460](v48, -1, -1);
  }
}

void sub_269C8DCA8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v1 = sub_269D98250();
    __swift_project_value_buffer(v1, qword_280C0B220);
    v2 = sub_269D98230();
    v3 = sub_269D9AB80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12[0] = v5;
      *v4 = 136446210;
      v6 = sub_269D9B4D0();
      v8 = sub_269C2EACC(v6, v7, v12);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_269C18000, v2, v3, "[%{public}s] edit in health", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D652460](v5, -1, -1);
      MEMORY[0x26D652460](v4, -1, -1);
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = v9 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (*&v10[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver])
      {

        sub_269D98750();
      }

      if (*&v10[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver])
      {

        sub_269D98750();
      }

      sub_269D86240();
      swift_unknownObjectRelease();
      *(v11 + 8) = 0;
      swift_unknownObjectWeakAssign();
    }
  }
}

void sub_269C8DECC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v1 = sub_269D98250();
    __swift_project_value_buffer(v1, qword_280C0B220);
    v2 = sub_269D98230();
    v3 = sub_269D9AB80();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136446210;
      v6 = sub_269D9B4D0();
      v8 = sub_269C2EACC(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_269C18000, v2, v3, "[%{public}s] cancel", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      MEMORY[0x26D652460](v5, -1, -1);
      MEMORY[0x26D652460](v4, -1, -1);
    }
  }
}

id sub_269C8E164(id a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver))
  {

    sub_269D98750();
  }

  if (*(a3 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver))
  {

    sub_269D98750();
  }

  return [a1 cancelWithAnimated_];
}

void sub_269C8E1F8(uint64_t a1)
{
  v21 = a1;
  sub_269C91F14(0, &qword_28034D998, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_269D97870();
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource;
  v9 = (v8 + 48);
  v22 = (v8 + 8);
  v23 = (v8 + 32);
  v10 = 2;
  v11 = &off_287A9FCC8;
  do
  {
    v12 = *&v24[v7];
    if (!v12)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v13 = *v11;
    v25 = *(v11 - 1);
    v26 = v13;

    v14 = v12;
    sub_269D983B0();

    if ((*v9)(v3, 1, v4) == 1)
    {

      sub_269C936E8(v3, &qword_28034D998, MEMORY[0x277CC9AF8]);
    }

    else
    {
      (*v23)(v6, v3, v4);
      v15 = [v24 tableView];
      if (!v15)
      {
        goto LABEL_16;
      }

      v16 = v15;

      v17 = sub_269D97830();
      v18 = [v16 cellForRowAtIndexPath_];

      if (v18)
      {
        type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
        if (swift_dynamicCastClass())
        {
          sub_269CF5D70(v21);
        }
      }

      (*v22)(v6, v4);
    }

    v11 += 2;
    --v10;
  }

  while (v10);
  swift_arrayDestroy();
  v19 = [v24 navigationItem];
  v20 = [v19 rightBarButtonItem];

  if (v20)
  {
    [v20 setEnabled_];
  }
}

uint64_t sub_269C8E53C(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-1] - v7;
  v9 = (a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_model);
  swift_beginAccess();
  v10 = v9[1];
  v16 = *v9;
  v17[0] = v10;
  *(v17 + 11) = *(v9 + 27);
  v11 = a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepScheduleClock_configuration;
  v12 = *(v11 + 144);

  sub_269D1E794(v12);
  v13 = v9[1];
  v16 = *v9;
  v17[0] = v13;
  *(v17 + 11) = *(v9 + 27);
  sub_269D1EA14(*(v11 + 144));
  ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();

  v14 = *(v3 + 8);
  v14(v6, v2);
  return (v14)(v8, v2);
}

BOOL sub_269C8E704(uint64_t a1)
{
  v2 = sub_269D971F0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);

  sub_269CF3E6C(v5);
  if (v6)
  {
    v7 = ScheduleOccurrenceEditModel.isValid(wakeUpComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v5, 3600.0, 72000.0, 300.0);
  }

  else
  {
    v7 = ScheduleOccurrenceEditModel.isValid(bedtimeComponents:minimumTimeInBed:maximumTimeInBed:editingIncrement:)(v5, 3600.0, 72000.0, 300.0);
  }

  v8 = v7;

  (*(v3 + 8))(v5, v2);
  return v8;
}

void sub_269C8E84C(void *a1)
{
  v2 = v1;
  v177 = v2;
  swift_getObjectType();
  v4 = MEMORY[0x277D83D88];
  sub_269C91F14(0, &unk_28034D9A0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v169 = &v162 - v6;
  sub_269C91F14(0, &unk_280C0BB50, MEMORY[0x277CC99E8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v168 = &v162 - v8;
  v9 = sub_269D971F0();
  v176 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v166 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v167 = &v162 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v173 = &v162 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v171 = &v162 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v162 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v162 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v165 = &v162 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v172 = &v162 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v170 = &v162 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v162 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v162 - v34;
  MEMORY[0x28223BE20](v33);
  v174 = &v162 - v36;
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v37 = sub_269D98250();
  __swift_project_value_buffer(v37, qword_280C0B220);
  v38 = a1;
  v39 = sub_269D98230();
  v40 = sub_269D9AB50();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v164 = v35;
    v42 = v41;
    v43 = swift_slowAlloc();
    v163 = v32;
    v44 = v43;
    v181 = v43;
    *v42 = 136446722;
    v45 = sub_269D9B4D0();
    v47 = sub_269C2EACC(v45, v46, &v181);
    v175 = v23;
    v48 = v47;

    *(v42 + 4) = v48;
    *(v42 + 12) = 2080;
    LOBYTE(v178[0]) = *(v38 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
    v49 = sub_269D9A660();
    v51 = sub_269C2EACC(v49, v50, &v181);

    *(v42 + 14) = v51;
    *(v42 + 22) = 2080;
    v52 = v174;
    sub_269CF3E6C(v174);
    sub_269C93760(&unk_28034D9B0, MEMORY[0x277CC8990]);
    v53 = sub_269D9B230();
    v55 = v54;
    (*(v176 + 8))(v52, v9);
    v56 = sub_269C2EACC(v53, v55, &v181);
    v23 = v175;

    *(v42 + 24) = v56;
    _os_log_impl(&dword_269C18000, v39, v40, "[%{public}s] AX %s changed to %s", v42, 0x20u);
    swift_arrayDestroy();
    v57 = v44;
    v32 = v163;
    MEMORY[0x26D652460](v57, -1, -1);
    v58 = v42;
    v35 = v164;
    MEMORY[0x26D652460](v58, -1, -1);
  }

  v59 = *(v38 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_component);
  v60 = *&v177[OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model];

  if (v59)
  {
    sub_269CF3E6C(v23);
    v61 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
    v62 = [*(v60 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) bedtimeComponents];
    sub_269D97120();

    sub_269D97150();
    if (v63)
    {

      v64 = *(v176 + 8);
      v64(v20, v9);
      v64(v23, v9);
    }

    else
    {
      v175 = v23;
      sub_269D971A0();
      v67 = v66;
      v68 = v176;
      v69 = *(v176 + 8);
      v69(v20, v9);
      if (v67)
      {

        v69(v175, v9);
      }

      else
      {
        v162 = v9;
        v72 = v175;
        sub_269D97150();
        if (v73 & 1) != 0 || (sub_269D971A0(), (v74))
        {

          v69(v72, v162);
        }

        else
        {
          v82 = v171;
          v83 = v162;
          (*(v68 + 16))(v171, v72, v162);
          v84 = sub_269D97150();
          LODWORD(v176) = v85;
          v86 = v84;
          v87 = sub_269D971A0();
          v89 = v88;
          v69(v82, v83);
          v90 = v86 * 60.0 * 60.0;
          if (v176)
          {
            v90 = 0.0;
          }

          v91 = v87 * 60.0;
          if (v89)
          {
            v91 = 0.0;
          }

          sub_269D225A8(&v181, round((v90 + v91) / 300.0) * 300.0);
          v176 = v181;
          v174 = v182;
          v92 = [*(v60 + v61) bedtimeComponents];
          v93 = v173;
          sub_269D97120();

          v94 = sub_269D97150();
          v96 = v72;
          if (v95)
          {
            v97 = 0;
          }

          else
          {
            v97 = v94;
          }

          v98 = sub_269D971A0();
          v100 = v99;
          v101 = v93;
          v102 = v162;
          v69(v101, v162);
          v103 = (v100 & 1) == 0;
          v104 = v174;
          if (v103)
          {
            v105 = v98;
          }

          else
          {
            v105 = 0;
          }

          v106 = v176;
          sub_269C679CC(v97, v105, v176, v174);
          if (v107 <= 72000.0)
          {
            if (v107 >= 3600.0)
            {
              v132 = [*(v60 + v61) bedtimeComponents];
              v133 = v167;
              sub_269D97120();

              if (v104 == 60 && __OFADD__(v106, 1))
              {
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              v134 = sub_269D977A0();
              (*(*(v134 - 8) + 56))(v168, 1, 1, v134);
              v135 = sub_269D97810();
              (*(*(v135 - 8) + 56))(v169, 1, 1, v135);
              v136 = v166;
              sub_269D971D0();
              ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();

              v137 = v136;
              v138 = v162;
              v69(v137, v162);
              v69(v133, v138);
              v108 = v175;
              v109 = v138;
            }

            else
            {

              v108 = v175;
              v109 = v162;
            }
          }

          else
          {

            v108 = v96;
            v109 = v102;
          }

          v69(v108, v109);
        }
      }
    }
  }

  else
  {
    sub_269CF3E6C(v35);
    sub_269D97150();
    if (v65)
    {

      (*(v176 + 8))(v35, v9);
    }

    else
    {
      sub_269D971A0();
      v70 = v176;
      if (v71)
      {

        (*(v70 + 8))(v35, v9);
      }

      else
      {
        v75 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
        v76 = [*(v60 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) wakeUpComponents];
        sub_269D97120();

        sub_269D97150();
        if (v77)
        {

          v78 = *(v70 + 8);
          v78(v32, v9);
          v78(v35, v9);
        }

        else
        {
          sub_269D971A0();
          v80 = v79;
          v81 = *(v70 + 8);
          v81(v32, v9);
          if (v80)
          {

            v81(v35, v9);
          }

          else
          {
            v110 = v170;
            (*(v70 + 16))(v170, v35, v9);
            v111 = sub_269D97150();
            LODWORD(v176) = v112;
            v113 = v111;
            v114 = sub_269D971A0();
            v175 = v70 + 8;
            v116 = v115;
            v81(v110, v9);
            v117 = v113 * 60.0 * 60.0;
            if (v176)
            {
              v117 = 0.0;
            }

            v118 = v114 * 60.0;
            if (v116)
            {
              v118 = 0.0;
            }

            sub_269D225A8(&v181, round((v117 + v118) / 300.0) * 300.0);
            v119 = v181;
            v176 = v182;
            v173 = v75;
            v120 = [*(v60 + v75) wakeUpComponents];
            v121 = v172;
            sub_269D97120();

            v122 = sub_269D97150();
            if (v123)
            {
              v124 = 0;
            }

            else
            {
              v124 = v122;
            }

            v125 = sub_269D971A0();
            v126 = v81;
            v128 = v127;
            v126(v121, v9);
            if (v128)
            {
              v129 = 0;
            }

            else
            {
              v129 = v125;
            }

            v130 = v176;
            sub_269C679CC(v119, v176, v124, v129);
            if (v131 <= 72000.0 && v131 >= 3600.0)
            {
              if (v130 == 60 && __OFADD__(v119, 1))
              {
                goto LABEL_72;
              }

              v157 = sub_269D977A0();
              (*(*(v157 - 8) + 56))(v168, 1, 1, v157);
              v158 = sub_269D97810();
              (*(*(v158 - 8) + 56))(v169, 1, 1, v158);
              v159 = v165;
              sub_269D971D0();
              v160 = [*&v173[v60] wakeUpComponents];
              v161 = v174;
              sub_269D97120();

              ScheduleOccurrenceEditModel.set(bedtimeComponents:wakeUpComponents:)();

              v126(v161, v9);
              v126(v159, v9);
              v126(v35, v9);
            }

            else
            {

              v126(v35, v9);
            }
          }
        }
      }
    }
  }

  v139 = [v177 tableView];
  if (v139)
  {
    v140 = v139;
    v141 = [v139 visibleCells];

    v142 = sub_269C1B0B8(0, &unk_28034DC10);
    v143 = sub_269D9A7E0();

    if (v143 >> 62)
    {
      v144 = sub_269D9AF50();
      if (v144)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v144 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v144)
      {
LABEL_56:
        if (v144 >= 1)
        {
          v145 = 0;
          v176 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_model;
          v146 = v143 & 0xC000000000000001;
          v147 = &protocol descriptor for ScheduleOccurrenceEditModelConsuming;
          v148 = &qword_28034EF00;
          v174 = v144;
          v175 = v143 & 0xC000000000000001;
          v173 = v142;
          do
          {
            if (v146)
            {
              v149 = MEMORY[0x26D651260](v145, v143);
            }

            else
            {
              v149 = *(v143 + 8 * v145 + 32);
            }

            v180 = v149;
            sub_269C3232C(0, v148);
            if (swift_dynamicCast())
            {
              sub_269C25520(v178, &v181);
              v151 = v183;
              v150 = v184;
              __swift_project_boxed_opaque_existential_1Tm(&v181, v183);
              v152 = v148;
              v153 = v147;
              v154 = v143;
              v155 = *(v150 + 8);

              v155(v156, v151, v150);
              v143 = v154;
              v147 = v153;
              v148 = v152;
              v144 = v174;
              v146 = v175;

              __swift_destroy_boxed_opaque_existential_1Tm(&v181);
            }

            else
            {
              v179 = 0;
              memset(v178, 0, sizeof(v178));
              sub_269C91F78(v178);
            }

            ++v145;
          }

          while (v144 != v145);
          goto LABEL_69;
        }

        __break(1u);
        goto LABEL_71;
      }
    }

LABEL_69:

    return;
  }

LABEL_73:
  __break(1u);
}

void sub_269C8F900(void *a1)
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = a1;
  v4 = sub_269D98230();
  v5 = sub_269D9AB50();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, &v15);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    [v3 value];
    v11 = sub_269D9A950();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Volume changed to %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  [v3 value];
  ScheduleOccurrenceEditModel.alarmVolume.setter(v14);

  sub_269D4B270();
}

void sub_269C8FB18(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = a3;
  v9 = a1;
  a5(v8);
}

void sub_269C8FC04(uint64_t a1, char a2)
{
  if (a1)
  {
    type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
    if (swift_dynamicCastClass())
    {

      ScheduleOccurrenceEditModel.alarmEnabled.setter(a2 & 1);

      sub_269D4B714();
    }

    else
    {
      type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
      if (swift_dynamicCastClass())
      {

        ScheduleOccurrenceEditModel.allowsSnooze.setter(a2 & 1);
      }
    }
  }
}

uint64_t sub_269C8FFD4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, void (*a7)(uint64_t, uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v12 = sub_269D9A630();
    a4 = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = a3;
  v15 = a1;
  sub_269C92DF0(v12, a4, a6, a7);
}

uint64_t type metadata accessor for QuickScheduleOverrideViewController.DataSource()
{
  result = qword_28034EEE8;
  if (!qword_28034EEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_269C90138()
{
  result = sub_269D977A0();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_269C9021C()
{
  sub_269D98350();
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  sub_269D98310();
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v2 = result;
    v3 = [result healthAppHidden];

    if ((v3 & 1) == 0)
    {
      sub_269C9364C(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_269D9EBE0;
      type metadata accessor for EditScheduleLinkTableViewCell();
      sub_269C93238(0);
      sub_269C93258(0, &qword_28034EF38, sub_269C93238);
      *(v4 + 32) = sub_269D9A660();
      *(v4 + 40) = v5;
      sub_269D98310();

      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_269D9EBE0;
      *(v6 + 32) = sub_269D9A660();
      *(v6 + 40) = v7;
      sub_269D98300();
    }

    sub_269D98310();
    sub_269D98300();
    result = sub_269D98300();
    if (*(v0 + qword_28034EEB0) == 1)
    {
      sub_269D98310();
      result = sub_269D98300();
      if (*(v0 + qword_28034EEB8) == 1)
      {
        result = sub_269D98300();
        if (*(v0 + qword_28034EEC0) == 1)
        {
          return sub_269D98300();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269C90534(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(a1 + qword_28034EE88) = 0;
}

char *sub_269C905D4(void *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v62 = a6;
  v63 = a7;
  v56 = a5;
  v57 = a1;
  v55 = a4;
  v61 = a3;
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = v54 - v10;
  *(v7 + qword_28034EE70) = 0;
  *(v7 + qword_28034EE78) = 0;
  *(v7 + qword_28034EE80) = 0;
  *(v7 + qword_28034EE88) = 0;
  v54[1] = qword_28034EE90;
  swift_unknownObjectWeakInit();
  v11 = (v7 + qword_28034EEC8);
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence;
  v13 = [*(a2 + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v13 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034D9C0);
  swift_dynamicCast();
  v14 = v64;
  v15 = [v64 isEnabled];

  *(v7 + qword_28034EEB0) = v15;
  v16 = [*(a2 + v12) alarmConfiguration];
  [v16 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v17 = v64;
  LOBYTE(v16) = [v64 allowsSnooze];

  *(v7 + qword_28034EEB8) = v16;
  v18 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_showAlarmSnoozeDurationPicker;
  swift_beginAccess();
  *(v7 + qword_28034EEC0) = *(a2 + v18);
  *(v7 + qword_28034EE98) = v61;
  *(v7 + qword_28034EEA0) = *(a2 + 88);
  v19 = OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_gregorianCalendar;
  v20 = qword_28034EEA8;
  v21 = sub_269D977A0();
  (*(*(v21 - 8) + 16))(v7 + v20, a2 + v19, v21);
  *(v7 + qword_28034EED0) = v55;
  v22 = *v11;
  v23 = v62;
  *v11 = v56;
  v11[1] = v23;

  sub_269C93228(v22);
  swift_unknownObjectWeakAssign();
  v24 = v57;
  v25 = sub_269D98370();
  sub_269D98390();
  type metadata accessor for ScheduleOccurrenceComponentsAndDayAccessibilityTableViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = sub_269D9A5F0();
  [v24 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v27];

  v28 = sub_269D9A5F0();
  [v24 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v28];

  type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v29 = swift_getObjCClassFromMetadata();
  v30 = sub_269D9A5F0();
  [v24 registerClass:v29 forCellReuseIdentifier:v30];

  v31 = sub_269D9A5F0();
  [v24 registerClass:v29 forCellReuseIdentifier:v31];

  type metadata accessor for ScheduleOccurrenceAlarmEnabledTableViewCell();
  v32 = swift_getObjCClassFromMetadata();
  v33 = sub_269D9A5F0();
  [v24 registerClass:v32 forCellReuseIdentifier:v33];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeTableViewCell();
  v34 = swift_getObjCClassFromMetadata();
  v35 = sub_269D9A5F0();
  [v24 registerClass:v34 forCellReuseIdentifier:v35];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationTableViewCell();
  v36 = swift_getObjCClassFromMetadata();
  v37 = sub_269D9A5F0();
  [v24 registerClass:v36 forCellReuseIdentifier:v37];

  type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v38 = swift_getObjCClassFromMetadata();
  v39 = sub_269D9A5F0();
  [v24 registerClass:v38 forCellReuseIdentifier:v39];

  type metadata accessor for ScheduleOccurrenceAlarmSoundTableViewCell();
  v40 = swift_getObjCClassFromMetadata();
  v41 = sub_269D9A5F0();
  [v24 registerClass:v40 forCellReuseIdentifier:v41];

  type metadata accessor for ScheduleOccurrenceAlarmVolumeTableViewCell();
  v42 = swift_getObjCClassFromMetadata();
  v43 = sub_269D9A5F0();
  [v24 registerClass:v42 forCellReuseIdentifier:v43];

  type metadata accessor for EditScheduleLinkTableViewCell();
  v44 = swift_getObjCClassFromMetadata();
  v64 = sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  sub_269D9A660();
  v45 = sub_269D9A5F0();

  [v24 registerClass:v44 forCellReuseIdentifier:v45];

  v46 = v58;
  sub_269C9021C();
  sub_269D983A0();
  (*(v59 + 8))(v46, v60);
  v64 = *(a2 + 16);
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v49 = swift_allocObject();
  *(v49 + 16) = v47;
  *(v49 + 24) = v48;
  sub_269C2D3B8();
  sub_269C93760(&qword_28034EF70, sub_269C2D3B8);

  v50 = sub_269D98900();

  *&v25[qword_28034EE70] = v50;

  v64 = *(a2 + 32);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C2D498();
  sub_269C93760(&qword_28034D858, sub_269C2D498);

  v51 = sub_269D98900();

  *&v25[qword_28034EE78] = v51;

  v64 = v61;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_269C9340C(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
  sub_269C300C0();
  v52 = sub_269D98900();

  *&v25[qword_28034EE80] = v52;

  return v25;
}

id sub_269C90F5C(void *a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_269D9A5F0();
  v3 = sub_269D97830();
  v4 = [a1 dequeueReusableCellWithIdentifier:v2 forIndexPath:v3];

  return v4;
}

void sub_269C9104C(void **a1)
{
  v1 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    sub_269C919E0(v1, v4);
  }

  else
  {
  }
}

void sub_269C91154(unsigned __int8 *a1)
{
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  v7 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v9 = Strong;
  v10 = *(Strong + qword_28034EEC0);
  *(Strong + qword_28034EEC0) = v7;
  if (v7 != v10)
  {
    sub_269C9021C();
    sub_269D983A0();

    (*(v4 + 8))(v6, v3);
LABEL_6:

    return;
  }
}

uint64_t sub_269C91314()
{
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - v3;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_269C9021C();
    sub_269D983A0();

    (*(v2 + 8))(v4, v1);
  }
}

id sub_269C914EC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  a6(a4);
  v13 = v12;

  if (v13)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

void *sub_269C91608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_269C499A4(0, &unk_28034EF10, MEMORY[0x277D74CC8]);
  v6 = sub_269D983C0();
  v7 = v6(a1, a2);
  type metadata accessor for ScheduleOccurrenceComponentsEditTableViewCell();
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = OBJC_IVAR____TtC13SleepHealthUI45ScheduleOccurrenceComponentsEditTableViewCell_editView;
    v10 = v8;
    swift_beginAccess();
    v11 = *(v10 + v9);
    v12 = &v11[OBJC_IVAR____TtC13SleepHealthUI31SleepScheduleComponentsEditView_model];
    swift_beginAccess();
    v12[*(type metadata accessor for SleepScheduleComponentsViewModel() + 32)] = 1;
    v13 = v7;
    v14 = v11;
    sub_269D0A9B8();
    swift_endAccess();
    sub_269C6A388();

    sub_269D06118((*(v3 + qword_28034EED0) & 1) == 0);
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = *(v10 + v9);

    swift_beginAccess();
    swift_unknownObjectWeakAssign();
  }

  else
  {
    type metadata accessor for ScheduleOccurrenceComponentsAccessibilityTableViewCell();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      goto LABEL_6;
    }

    v18 = v17 + OBJC_IVAR____TtC13SleepHealthUI54ScheduleOccurrenceComponentsAccessibilityTableViewCell_model;
    swift_beginAccess();
    *(v18 + *(type metadata accessor for SleepScheduleComponentsViewModel() + 32)) = 1;
    Strong = v7;
    sub_269D0A9B8();
    swift_endAccess();
  }

LABEL_6:
  v19 = *(v3 + qword_28034EEC8);
  if (v19)
  {

    v19(v7);
    sub_269C93228(v19);
  }

  return v7;
}

id sub_269C91858(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_269D97870();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D97840();
  v9 = a3;
  v10 = a1;
  v11 = sub_269C91608(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

id sub_269C919E0(void *a1, void *a2)
{
  v25 = a2;
  sub_269C91F14(0, &qword_28034D998, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_269D97870();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C499A4(0, &qword_28034EF20, MEMORY[0x277D74C90]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = qword_28034EEB0;
  v15 = *(v2 + qword_28034EEB0);
  *(v2 + v14) = [a1 isEnabled];
  v16 = qword_28034EEB8;
  v17 = *(v2 + qword_28034EEB8);
  result = [a1 allowsSnooze];
  *(v2 + v16) = result;
  if (v15 != *(v2 + v14) || ((v17 ^ result) & 1) != 0)
  {
    sub_269C9021C();
    sub_269D983A0();
    result = (*(v11 + 8))(v13, v10);
    if ((v15 & 1) == 0)
    {
      v28 = 0xD00000000000002ALL;
      v29 = 0x8000000269DAC270;
      sub_269D983B0();
      v20 = v26;
      v19 = v27;
      if ((*(v26 + 48))(v6, 1, v27) == 1)
      {
        return sub_269C936E8(v6, &qword_28034D998, MEMORY[0x277CC9AF8]);
      }

      else
      {
        v21 = v24;
        (*(v20 + 32))(v24, v6, v19);
        v22 = v25;
        if (v25)
        {
          v23 = sub_269D97830();
          [v22 scrollToRowAtIndexPath:v23 atScrollPosition:0 animated:1];
        }

        return (*(v20 + 8))(v21, v19);
      }
    }
  }

  return result;
}

uint64_t sub_269C91D1C()
{

  MEMORY[0x26D652550](v0 + qword_28034EE90);

  v1 = qword_28034EEA8;
  v2 = sub_269D977A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_28034EEC8);

  return sub_269C93228(v3);
}

id sub_269C91E04(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_269C91E3C(uint64_t a1)
{

  MEMORY[0x26D652550](a1 + qword_28034EE90);

  v2 = qword_28034EEA8;
  v3 = sub_269D977A0();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_28034EEC8);

  return sub_269C93228(v4);
}

void sub_269C91F14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C91F78(uint64_t a1)
{
  sub_269C92000(0, &unk_28034DC20, &qword_28034EF00, &protocol descriptor for ScheduleOccurrenceEditModelConsuming, sub_269C3232C);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269C92000(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_269D9AE60();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C9205C()
{
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_alarmConfigurationObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_snoozeDurationPickerObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelEditObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_significantTimeChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_sleepDurationGoalObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_validScheduleRangeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_willResignActiveObserver) = 0;
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_modelHasChanged) = 0;
  v1 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_tonePickerStyleProvider;
  v2 = type metadata accessor for TonePickerStyleProvider();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_vibrationPickerStyleProvider;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource) = 0;
  sub_269D9B100();
  __break(1u);
}

void sub_269C921A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  sub_269D98380();

  if (v8 && (v7 == 0xD000000000000029 && 0x8000000269DAC210 == v8 || (sub_269D9B280() & 1) != 0))
  {

    sub_269C8A544();
    return;
  }

  type metadata accessor for EditScheduleLinkTableViewCell();
  sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  v3 = sub_269D9A660();
  if (!v8)
  {

    return;
  }

  if (v3 == v7 && v8 == v4)
  {
  }

  else
  {
    v5 = sub_269D9B280();

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_nextOccurrenceChangeObserver))
    {

      sub_269D98750();
    }

    if (*(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_scheduleChangeObserver))
    {

      sub_269D98750();
    }

    sub_269D86240();
    swift_unknownObjectRelease();
    *(v6 + 8) = 0;
    swift_unknownObjectWeakAssign();
  }
}

void sub_269C9238C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v1)
  {
    v2 = v1;
    sub_269D98380();

    if (v6 && (v5 == 0xD000000000000029 && 0x8000000269DAC210 == v6 || (sub_269D9B280() & 1) != 0 || v5 == 0xD000000000000025 && 0x8000000269DAC320 == v6 || (sub_269D9B280() & 1) != 0))
    {
      goto LABEL_13;
    }

    type metadata accessor for EditScheduleLinkTableViewCell();
    sub_269C93238(0);
    sub_269C93258(0, &qword_28034EF38, sub_269C93238);
    v3 = sub_269D9A660();
    if (!v6)
    {
      goto LABEL_13;
    }

    if (v3 == v5 && v6 == v4)
    {

LABEL_13:

      return;
    }

    sub_269D9B280();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269C92518(uint64_t a1)
{
  v2 = sub_269D97870();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_269D9EBF0;
  *(v6 + 32) = a1;
  *(v6 + 40) = 0;
  MEMORY[0x26D64DA70]();
  sub_269D98380();
  (*(v3 + 8))(v5, v2);
  if (!v10)
  {
    return 0;
  }

  if (v9 != 0xD00000000000002BLL || 0x8000000269DAC120 != v10)
  {
    v7 = sub_269D9B280();

    if (v7)
    {
      goto LABEL_6;
    }

    return 0;
  }

LABEL_6:
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

id sub_269C9271C(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v7)
  {
    sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_269D9EBF0;
    *(v8 + 32) = a1;
    *(v8 + 40) = 0;
    v9 = v7;
    MEMORY[0x26D64DA70](v8);
    sub_269D98380();

    (*(v4 + 8))(v6, v3);
    v10 = v15;
    if (v15)
    {
      v11 = v14;
      if (v14 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v15 || (sub_269D9B280() & 1) != 0 || v11 == 0xD00000000000003ELL && 0x8000000269DAC150 == v10 || (sub_269D9B280() & 1) != 0 || v11 == 0xD00000000000002BLL && 0x8000000269DAC120 == v10)
      {

        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }

      v13 = sub_269D9B280();

      if (v13)
      {
        return [objc_allocWithZone(MEMORY[0x277D75B70]) init];
      }
    }
  }

  return 0;
}

double sub_269C9295C(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (v7)
  {
    sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_269D9EBF0;
    *(v8 + 32) = a1;
    *(v8 + 40) = 0;
    v9 = v7;
    MEMORY[0x26D64DA70](v8);
    sub_269D98380();

    (*(v4 + 8))(v6, v3);
    v11 = v16;
    v10 = v17;
    if (v17 && (v16 == 0xD000000000000029 && 0x8000000269DAC210 == v17 || (sub_269D9B280() & 1) != 0))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  type metadata accessor for EditScheduleLinkTableViewCell();
  v16 = sub_269C93238(0);
  sub_269C93258(0, &qword_28034EF38, sub_269C93238);
  v12 = sub_269D9A660();
  if (!v10)
  {

    return *MEMORY[0x277D76F30];
  }

  if (v12 == v11 && v10 == v13)
  {

LABEL_12:

    return 1.0;
  }

  v15 = sub_269D9B280();

  result = 1.0;
  if ((v15 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

double sub_269C92BB8(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI35QuickScheduleOverrideViewController_dataSource);
  if (!v7)
  {
    return *MEMORY[0x277D76F30];
  }

  sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269D9EBF0;
  *(v8 + 32) = a1;
  *(v8 + 40) = 0;
  v9 = v7;
  MEMORY[0x26D64DA70](v8);
  sub_269D98380();

  (*(v4 + 8))(v6, v3);
  v10 = v15;
  if (!v15)
  {
    return *MEMORY[0x277D76F30];
  }

  v11 = v14;
  if (v14 == 0xD00000000000002BLL && 0x8000000269DAC120 == v15 || (sub_269D9B280() & 1) != 0 || v11 == 0xD00000000000002DLL && 0x8000000269DAC0F0 == v10 || (sub_269D9B280() & 1) != 0 || v11 == 0xD00000000000003ELL && 0x8000000269DAC150 == v10)
  {

    return 9.0;
  }

  v13 = sub_269D9B280();

  result = 9.0;
  if ((v13 & 1) == 0)
  {
    return *MEMORY[0x277D76F30];
  }

  return result;
}

uint64_t sub_269C92DF0(uint64_t a1, uint64_t a2, char *a3, void (*a4)(uint64_t, uint64_t))
{
  swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B220);

  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    format = a3;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v22);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    if (a2)
    {

      v16 = sub_269D9A660();
      v18 = v17;
    }

    else
    {
      v18 = 0xE300000000000000;
      v16 = 7104878;
    }

    v19 = sub_269C2EACC(v16, v18, &v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_269C18000, v9, v10, format, v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  a4(a1, a2);
}

uint64_t sub_269C93010(uint64_t a1)
{
  v3 = sub_269D97870();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9364C(0, &qword_28034D990, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_269D9EBF0;
  *(v7 + 32) = a1;
  *(v7 + 40) = 0;
  MEMORY[0x26D64DA70]();
  sub_269D98380();
  (*(v4 + 8))(v6, v3);
  if (!v11)
  {
    return 0;
  }

  if (v10 == 0xD000000000000029 && 0x8000000269DAC210 == v11)
  {
  }

  else
  {
    v8 = sub_269D9B280();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(v1 + qword_28034EEA0) != 1)
  {
    return 0;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t sub_269C93228(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_269C93258(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_269C932C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_269C92000(255, &qword_280C0BF10, &qword_280C0BF20, 0x277D62510, sub_269C1B0B8);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_269C93388()
{
  if (!qword_28034EF50)
  {
    sub_269C9340C(255, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0, 0x277D624F8);
    sub_269C300C0();
    v0 = sub_269D986D0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034EF50);
    }
  }
}

void sub_269C9340C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_269C92000(255, a3, a4, a5, sub_269C1B0B8);
    v6 = sub_269D987E0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269C9348C()
{
  if (!qword_28034EF58)
  {
    sub_269C9340C(255, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80, 0x277D624C0);
    sub_269C93510();
    v0 = sub_269D986D0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034EF58);
    }
  }
}

unint64_t sub_269C93510()
{
  result = qword_28034EF68;
  if (!qword_28034EF68)
  {
    sub_269C9340C(255, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80, 0x277D624C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EF68);
  }

  return result;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269C9364C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269C936A4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_269C932C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269C936E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269C91F14(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269C93760(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_269C93828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 145))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_269C93870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 145) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 145) = 0;
    }

    if (a2)
    {
      *(result + 144) = -a2;
    }
  }

  return result;
}

uint64_t sub_269C9392C(uint64_t a1)
{
  v2 = sub_269D989F0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269D98E90();
}

uint64_t sub_269C93A18@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v65 = a2;
  v57 = type metadata accessor for SleepScorePetals();
  MEMORY[0x28223BE20](v57);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C94A98(0);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C94AC0(0, &qword_28034EFE0, sub_269C94A98);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  sub_269C949F0();
  v64 = v10;
  v63 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C953C4(0, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v58 = &v54 - v13;
  v14 = sub_269D99040();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A8E0();
  v55 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269D98AD0();
  v19 = v18;
  sub_269D98AD0();
  v21 = v20;
  v22 = *(a1 + 96);
  if (*(a1 + 144))
  {
    v23 = *(a1 + 136);
    v24 = *(a1 + 96);
    v54 = *(a1 + 120);
    v66 = *(a1 + 104);
    sub_269C95048(a1, v67);

    sub_269C95048(a1, v67);

    v70 = v54;
    v69 = v66;
    v68 = v22;
    v71 = v23;
    sub_269C95048(a1, v67);
    v26 = v66.n128_f64[1];
    v25 = v66.n128_f64[0];
  }

  else
  {
    sub_269C95048(a1, v67);
    sub_269D9AB70();
    v27 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95080(a1);
    v28 = *(v15 + 8);
    v29 = v28(v17, v14);
    v29.n128_u64[0] = v69.n128_u64[0];
    v66 = v29;

    sub_269C95048(a1, v67);
    sub_269D9AB70();
    v30 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95080(a1);
    v28(v17, v14);
    v24 = v68;

    sub_269C95048(a1, v67);
    sub_269D9AB70();
    v31 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269C95080(a1);
    v28(v17, v14);
    v25 = v66.n128_f64[0];
    v26 = v69.n128_f64[1];
  }

  if (v21 >= v19)
  {
    v32 = v19;
  }

  else
  {
    v32 = v21;
  }

  v33 = v32 * 0.5;
  v34 = v32 * 0.5 * v25;
  v35 = *(a1 + 16);
  v67[0] = *a1;
  v72 = *(a1 + 32);
  v73 = v35;

  *&v4[*(v57 + 44)] = swift_getKeyPath();
  sub_269C951C4(0, &qword_280C0B670, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v36 = v73;
  *v4 = v67[0];
  *(v4 + 1) = v36;
  *(v4 + 2) = v72;
  *(v4 + 6) = v33 * v24;
  *(v4 + 7) = v34;
  *(v4 + 8) = v33;
  *(v4 + 9) = v33 * v26;
  v37 = *(a1 + 64);
  sub_269D9A250();
  v39 = v38;
  v41 = v40;
  v42 = v61;
  sub_269C95228(v4, v61, type metadata accessor for SleepScorePetals);
  v43 = (v42 + *(v62 + 36));
  *v43 = v37;
  v43[1] = v37;
  v43[2] = v39;
  v43[3] = v41;
  v44 = *(a1 + 72);
  sub_269C95228(v42, v9, sub_269C94A98);
  *&v9[*(v60 + 36)] = v44;
  sub_269C94B24();
  v45 = v59;
  sub_269D99A20();
  sub_269C950B0(v9);
  v46 = sub_269D9A180();
  v48 = v47;
  v49 = v58;
  v50 = &v58[*(v56 + 36)];
  sub_269C941CC(a1, v50, v34);
  sub_269C94C78();
  v52 = (v50 + *(v51 + 36));
  *v52 = v46;
  v52[1] = v48;
  (*(v63 + 32))(v49, v45, v64);
  sub_269C1DAB8(v49, v65);
}

uint64_t sub_269C941CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v29 = sub_269D99040();
  v28 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SleepScoreCountingText();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v25 - v13;
  sub_269C951C4(0, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 56))
  {
    (*(v9 + 56))(v16, 1, 1, v8);
  }

  else
  {
    v27 = *(a1 + 48);
    v17 = a3 * 0.82 + a3 * 0.82;
    v18 = *(a1 + 96);
    if (*(a1 + 144))
    {
      v19 = *(a1 + 136);
      v33 = *(a1 + 104);
      v34 = *(a1 + 120);
      v32 = v18;
      v35 = v19;
      sub_269C95048(a1, v31);
    }

    else
    {
      sub_269C95048(a1, v31);
      sub_269D9AB70();
      v20 = sub_269D99590();
      v26 = a2;
      v21 = v20;
      sub_269D98200();

      a2 = v26;
      sub_269D99030();
      swift_getAtKeyPath();
      sub_269C95080(a1);
      (*(v28 + 8))(v7, v29);
      v19 = v35;
    }

    *v12 = v27;
    *(v12 + 1) = v19;
    *(v12 + 1) = *(a1 + 80);
    *(v12 + 4) = v17;
    v22 = *(v8 + 36);
    *&v12[v22] = swift_getKeyPath();
    sub_269C951C4(0, &qword_280C0B120, MEMORY[0x277CE0A00], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v23 = v30;
    sub_269C95228(v12, v30, type metadata accessor for SleepScoreCountingText);
    sub_269C95228(v23, v16, type metadata accessor for SleepScoreCountingText);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  sub_269C95130(v16, a2);
}

uint64_t sub_269C94604@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_269D99440();
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C948B4();
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 112);
  v28[6] = *(v1 + 96);
  v28[7] = v10;
  v28[8] = *(v1 + 128);
  v29 = *(v1 + 144);
  v11 = *(v1 + 48);
  v28[2] = *(v1 + 32);
  v28[3] = v11;
  v12 = *(v1 + 80);
  v28[4] = *(v1 + 64);
  v28[5] = v12;
  v13 = *(v1 + 16);
  v28[0] = *v1;
  v28[1] = v13;
  v14 = swift_allocObject();
  v15 = *(v1 + 112);
  *(v14 + 112) = *(v1 + 96);
  *(v14 + 128) = v15;
  *(v14 + 144) = *(v1 + 128);
  *(v14 + 160) = *(v1 + 144);
  v16 = *(v1 + 48);
  *(v14 + 48) = *(v1 + 32);
  *(v14 + 64) = v16;
  v17 = *(v1 + 80);
  *(v14 + 80) = *(v1 + 64);
  *(v14 + 96) = v17;
  v18 = *(v1 + 16);
  *(v14 + 16) = *v1;
  *(v14 + 32) = v18;
  v26[19] = sub_269C95040;
  v26[20] = v14;
  v26[21] = 0x3FF0000000000000;
  v27 = 0;
  sub_269C95048(v28, v26);
  sub_269D99430();
  sub_269C94AC0(0, &qword_28034EFC0, sub_269C9495C);
  v20 = v19;
  v21 = sub_269C94F60();
  sub_269D99B80();
  (*(v2 + 8))(v4, v24);

  v26[0] = v20;
  v26[1] = v21;
  swift_getOpaqueTypeConformance2();
  sub_269D99BC0();
  return (*(v7 + 8))(v9, v6);
}

void sub_269C948B4()
{
  if (!qword_28034EFB8)
  {
    sub_269C94AC0(255, &qword_28034EFC0, sub_269C9495C);
    sub_269C94F60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034EFB8);
    }
  }
}

void sub_269C9495C()
{
  if (!qword_28034EFC8)
  {
    sub_269C953C4(255, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
    sub_269C94E2C();
    v0 = sub_269D98C00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034EFC8);
    }
  }
}

void sub_269C949F0()
{
  if (!qword_28034EFD8)
  {
    sub_269C94AC0(255, &qword_28034EFE0, sub_269C94A98);
    sub_269C94B24();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034EFD8);
    }
  }
}

void sub_269C94AC0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98D00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_269C94B24()
{
  result = qword_28034EFF0;
  if (!qword_28034EFF0)
  {
    sub_269C94AC0(255, &qword_28034EFE0, sub_269C94A98);
    sub_269C94BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EFF0);
  }

  return result;
}

unint64_t sub_269C94BC8()
{
  result = qword_28034EFF8;
  if (!qword_28034EFF8)
  {
    sub_269C94A98(255);
    sub_269C94DE4(&qword_28034F000, type metadata accessor for SleepScorePetals);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034EFF8);
  }

  return result;
}

void sub_269C94C78()
{
  if (!qword_28034F008)
  {
    sub_269C951C4(255, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
    sub_269C94D0C();
    v0 = sub_269D98E00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F008);
    }
  }
}

unint64_t sub_269C94D0C()
{
  result = qword_28034F018;
  if (!qword_28034F018)
  {
    sub_269C951C4(255, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
    sub_269C94DE4(&qword_28034F020, type metadata accessor for SleepScoreCountingText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F018);
  }

  return result;
}

uint64_t sub_269C94DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_269C94E2C()
{
  result = qword_28034F028;
  if (!qword_28034F028)
  {
    sub_269C953C4(255, &qword_28034EFD0, sub_269C949F0, sub_269C94C78);
    sub_269C94AC0(255, &qword_28034EFE0, sub_269C94A98);
    sub_269C94B24();
    swift_getOpaqueTypeConformance2();
    sub_269C94DE4(&qword_28034F030, sub_269C94C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F028);
  }

  return result;
}

unint64_t sub_269C94F60()
{
  result = qword_28034F038;
  if (!qword_28034F038)
  {
    sub_269C94AC0(255, &qword_28034EFC0, sub_269C9495C);
    sub_269C94DE4(&qword_28034F040, sub_269C9495C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F038);
  }

  return result;
}

uint64_t sub_269C950B0(uint64_t a1)
{
  sub_269C94AC0(0, &qword_28034EFE0, sub_269C94A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C95130(uint64_t a1, uint64_t a2)
{
  sub_269C951C4(0, &qword_28034F010, type metadata accessor for SleepScoreCountingText, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269C951C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C95228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269C95290()
{
  result = qword_28034F048;
  if (!qword_28034F048)
  {
    sub_269C953C4(255, &qword_28034F050, sub_269C948B4, MEMORY[0x277CDE470]);
    sub_269C94AC0(255, &qword_28034EFC0, sub_269C9495C);
    sub_269C94F60();
    swift_getOpaqueTypeConformance2();
    sub_269C94DE4(&qword_28034E0A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F048);
  }

  return result;
}

void sub_269C953C4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_269D98D00();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for SleepDiffableTableViewDataSource()
{
  result = qword_28034F060;
  if (!qword_28034F060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_269C95538(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = a3;
  v11 = a1;
  sub_269C95720(a4, a6);
  v13 = v12;

  if (v13)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

id sub_269C95664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepDiffableTableViewDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269C956AC()
{
  v0 = objc_allocWithZone(type metadata accessor for SleepDiffableTableViewDataSource());
  *&v0[qword_28034F058 + 8] = 0;
  swift_unknownObjectWeakInit();
  return sub_269D98370();
}

uint64_t sub_269C95720(uint64_t a1, unsigned int *a2)
{
  v4 = v2;
  sub_269C95BFC();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D9AB10();
  v29 = *(v9 - 8);
  v30 = v9;
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D9AAD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269D97870();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x26D64DAA0](0, a1);
  (*(v12 + 104))(v14, *a2, v11);
  sub_269D9AAC0();
  (*(v12 + 8))(v14, v11);
  v19 = v4 + qword_28034F058;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v16 + 8))(v18, v15);

    v33 = 0;
    v31 = 0u;
    v32 = 0u;
LABEL_9:
    sub_269C95D1C(&v31, sub_269C95C54);
    return 0;
  }

  v21 = *(v19 + 8);
  v34[0] = Strong;
  v34[1] = v21;
  sub_269C95CC0(0, &qword_28034F080);
  sub_269C95CC0(0, &unk_280350870);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_8;
  }

  if (!*(&v32 + 1))
  {
LABEL_8:
    (*(v16 + 8))(v18, v15);

    goto LABEL_9;
  }

  sub_269C25520(&v31, v34);
  __swift_project_boxed_opaque_existential_1Tm(v34, v34[3]);
  sub_269D98150();

  sub_269C95CC0(0, &qword_280350880);
  v22 = v30;
  if (swift_dynamicCast())
  {
    v23 = v29;
    (*(v29 + 56))(v8, 0, 1, v22);
    v24 = v28;
    (*(v23 + 32))(v28, v8, v22);
    v25 = sub_269D9AB00();
    (*(v23 + 8))(v24, v22);
    (*(v16 + 8))(v18, v15);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    return v25;
  }

  (*(v16 + 8))(v18, v15);
  (*(v29 + 56))(v8, 1, 1, v22);
  sub_269C95D1C(v8, sub_269C95BFC);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return 0;
}

void sub_269C95BFC()
{
  if (!qword_28034F070)
  {
    sub_269D9AB10();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F070);
    }
  }
}

void sub_269C95C54()
{
  if (!qword_28034F078)
  {
    sub_269C95CC0(255, &unk_280350870);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F078);
    }
  }
}

uint64_t sub_269C95CC0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_269C95D1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_269C95D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v16.receiver = v3;
  v16.super_class = type metadata accessor for GoalTimePickerTableViewCell();
  v6 = objc_msgSendSuper2(&v16, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = v6;
  v8 = sub_269CF0630();

  v9 = sub_269D912B8();
  v10 = &v8[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v11 = *&v8[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
  *v10 = v12;
  v10[1] = v13;
  *(v10 + 2) = v9;
  *(v10 + 24) = v14 & 1;
  if (v11 != v13)
  {
    [v8 reloadAllComponents];
    sub_269CD94E4(1);
  }

  return v7;
}

id sub_269C95F38(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for GoalTimePickerTableViewCell();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_269CF0630();

    v7 = sub_269D912B8();
    v8 = &v6[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
    v9 = *&v6[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
    *v8 = v10;
    v8[1] = v11;
    *(v8 + 2) = v7;
    *(v8 + 24) = v12 & 1;
    if (v9 != v11)
    {
      [v6 reloadAllComponents];
      sub_269CD94E4(1);
    }
  }

  return v4;
}

id sub_269C960A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GoalTimePickerTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double SectionContent.init(item:headerText:footerText:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  sub_269C9D5C8(0, &qword_28034E390, &type metadata for SectionItem, MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  *(v14 + 32) = *a1;
  *(v14 + 48) = v15;
  *(v14 + 16) = xmmword_269D9EBE0;
  *(v14 + 64) = v12;
  *(v14 + 72) = v13;
  sub_269C961DC(v14, a2, a3, a4, a5, v20);
  v16 = v21;
  result = *v20;
  v18 = v20[1];
  v19 = v20[2];
  *a6 = v20[0];
  *(a6 + 16) = v18;
  *(a6 + 32) = v19;
  *(a6 + 48) = v16;
  return result;
}

uint64_t sub_269C961DC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v6 = a5;
  v8 = result;
  if (a3 != 1)
  {
    v11 = a3;
    v10 = a2;
    v23 = a2;
    v24 = a3;
    v18 = sub_269C9E4F4();
    v19 = *(v18 + 24);
    sub_269C9E548(v10, v11);

    v19(v22, &type metadata for StaticTextProvider, v18);

    v20 = MEMORY[0x277CE0BD8];
    sub_269C9D5C8(0, &qword_28034F198, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    sub_269C9D324(&qword_28034F190, &qword_28034F198, v20);
    v12 = sub_269D99FF0();
    sub_269C9E55C(v10, v11);
    result = sub_269C98B48(0, 0, 0);
    if (v6 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    a4 = 0;
    v6 = 0;
    v17 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (a5 == 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v23 = a4;
  v24 = v6;
  v13 = sub_269C9E4F4();
  v21 = v12;
  v14 = v8;
  v15 = *(v13 + 24);
  sub_269C9E548(a4, v6);

  v15(v22, &type metadata for StaticTextProvider, v13);
  v8 = v14;
  v12 = v21;

  v16 = MEMORY[0x277CE0BD8];
  sub_269C9D5C8(0, &qword_28034F198, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
  sub_269C9D324(&qword_28034F190, &qword_28034F198, v16);
  v17 = sub_269D99FF0();
  sub_269C9E55C(a4, v6);
  result = sub_269C98B48(0, 0, 0);
LABEL_6:
  *a6 = v10;
  a6[1] = v11;
  a6[2] = v12;
  a6[3] = a4;
  a6[4] = v6;
  a6[5] = v17;
  a6[6] = v8;
  return result;
}

uint64_t sub_269C96434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v32 = a1;
  sub_269C9D484(0, &qword_28034F1A8, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
  v31 = v13;
  result = MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (a3 != 1)
  {
    v35 = a2;
    v36 = a3;
    v20 = sub_269C9E4F4();
    v30 = a4;
    v21 = *(v20 + 24);
    sub_269C9E548(a2, a3);

    v22 = a6;
    v21(v33, &type metadata for StaticTextProvider, v20);

    v23 = MEMORY[0x277CE0BD8];
    sub_269C9D5C8(0, &qword_28034F198, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    v24 = v23;
    a6 = v22;
    sub_269C9D324(&qword_28034F190, &qword_28034F198, v24);
    a4 = v30;
    v19 = sub_269D99FF0();
    sub_269C9E55C(a2, a3);
    result = sub_269C98B48(0, 0, 0);
    v17 = a2;
    v18 = a3;
  }

  if (a5)
  {
    v33[0] = a4;
    v33[1] = a5;
    v34 = a6;

    v25 = SleepDeepLinkTextProvider.stringRepresentation.getter();
    v27 = v26;
    SleepDeepLinkTextProvider.text.getter(v16);

    sub_269C9D39C();
    v28 = sub_269D99FF0();

    result = sub_269C98B48(0, 0, 0);
  }

  else
  {
    v25 = 0;
    v27 = 0;
    v28 = 0;
  }

  *a7 = v17;
  a7[1] = v18;
  a7[2] = v19;
  a7[3] = v25;
  a7[4] = v27;
  a7[5] = v28;
  a7[6] = v32;
  return result;
}

uint64_t SectionContent.init<A, B>(items:headerProvider:footerProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v52 = a7;
  *(&v53 + 1) = a6;
  v57 = a3;
  v60 = a1;
  v58 = sub_269D9AE60();
  v56 = *(v58 - 8);
  v12 = MEMORY[0x28223BE20](v58);
  v14 = &v48 - v13;
  v54 = a5;
  v55 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](v12);
  v50 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v17;
  v18 = sub_269D9AE60();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v48 - v21;
  v23 = *(a4 - 8);
  v24 = MEMORY[0x28223BE20](v20);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v48 - v27;
  v29 = *(v19 + 16);
  *&v59 = a2;
  v29(v22, a2, v18);
  if ((*(v23 + 48))(v22, 1, a4) == 1)
  {
    (*(v19 + 8))(v22, v18);
    v30 = 0;
    v53 = 0uLL;
  }

  else
  {
    (*(v23 + 32))(v28, v22, a4);
    (*(v23 + 16))(v26, v28, a4);
    sub_269C989B0(v26, a4, *(&v53 + 1), &v61);
    (*(v23 + 8))(v28, a4);
    v53 = v61;
    v30 = v62;
    sub_269C98B48(0, 0, 0);
  }

  v31 = v18;
  v33 = v56;
  v32 = v57;
  v34 = v58;
  (*(v56 + 16))(v14, v57, v58);
  v36 = v54;
  v35 = v55;
  if ((*(v55 + 48))(v14, 1, v54) == 1)
  {
    v37 = *(v33 + 8);
    v37(v32, v34);
    (*(v19 + 8))(v59, v31);
    result = (v37)(v14, v34);
    v39 = 0;
    v40 = 0uLL;
  }

  else
  {
    v41 = *(v35 + 32);
    v49 = v30;
    v42 = v31;
    v43 = v51;
    v41(v51, v14, v36);
    v44 = v50;
    (*(v35 + 16))(v50, v43, v36);
    sub_269C989B0(v44, v36, v52, &v61);
    (*(v33 + 8))(v32, v34);
    v45 = v42;
    v30 = v49;
    (*(v19 + 8))(v59, v45);
    (*(v35 + 8))(v43, v36);
    v59 = v61;
    v39 = v62;
    result = sub_269C98B48(0, 0, 0);
    v40 = v59;
  }

  v46 = *(&v53 + 1);
  *a8 = v53;
  *(a8 + 8) = v46;
  *(a8 + 16) = v30;
  *(a8 + 24) = v40;
  v47 = v60;
  *(a8 + 40) = v39;
  *(a8 + 48) = v47;
  return result;
}

BOOL sub_269C96BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_269C96C70(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v143 = a2 + 32;
  v144 = result + 32;
  v142 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      return result;
    }

    v4 = (v144 + 56 * v3);
    v5 = (v143 + 56 * v3);
    v172 = v5[6];
    v173 = v4[6];
    v6 = *(v173 + 16);
    if (v6 != *(v172 + 16))
    {
      return 0;
    }

    v7 = *v4;
    v8 = v4[1];
    v9 = v4[2];
    v10 = v4[3];
    v12 = v4[4];
    v11 = v4[5];
    v14 = *v5;
    v13 = v5[1];
    v16 = v5[2];
    v15 = v5[3];
    v17 = v5[4];
    v18 = v5[5];
    v156 = v12;
    v157 = v11;
    v154 = v8;
    v155 = v10;
    v160 = v9;
    v158 = v16;
    v159 = *v4;
    v152 = v13;
    v153 = v17;
    v149 = v3;
    v150 = v15;
    v151 = *v5;
    if (v6)
    {
      break;
    }

    sub_269C9E3F4(v7, v8, v9);
    sub_269C9E3F4(v10, v12, v11);

    sub_269C9E3F4(v14, v13, v16);
    sub_269C9E3F4(v15, v17, v18);

LABEL_88:
    if (!v160)
    {
      v88 = v156;
      v87 = v157;
      v86 = v154;
      v89 = v158;
      v90 = v151;
      v91 = v152;
      if (!v158)
      {
        goto LABEL_102;
      }

LABEL_97:
      if (v91)
      {
        goto LABEL_140;
      }

      goto LABEL_102;
    }

    v86 = v154;

    v88 = v156;
    v87 = v157;
    v89 = v158;
    v90 = v151;
    v91 = v152;
    if (v158)
    {

      if (!v154)
      {
        goto LABEL_97;
      }

      if (!v152)
      {
        goto LABEL_140;
      }

      if (v159 == v151 && v154 == v152)
      {
      }

      else
      {
        v92 = sub_269D9B280();

        if ((v92 & 1) == 0)
        {
          goto LABEL_141;
        }
      }
    }

    else if (v154)
    {
LABEL_140:

LABEL_141:
      sub_269C98B48(v90, v91, v89);
      sub_269C98B48(v150, v153, v18);

      sub_269C98B48(v159, v86, v160);
      v139 = v155;
LABEL_143:
      v140 = v88;
      v141 = v87;
      goto LABEL_136;
    }

LABEL_102:
    if (!v87)
    {
      v94 = v155;
      v93 = v153;
      if (v18)
      {

LABEL_111:
        if (v93)
        {
          goto LABEL_142;
        }
      }

LABEL_114:
      sub_269C98B48(v90, v91, v89);
      v95 = v150;
      v96 = v93;
      goto LABEL_115;
    }

    if (!v18)
    {
      v94 = v155;
      v93 = v153;
      if (v88)
      {
LABEL_142:

        sub_269C98B48(v90, v91, v89);
        sub_269C98B48(v150, v93, v18);

        sub_269C98B48(v159, v86, v160);
        v139 = v94;
        goto LABEL_143;
      }

      goto LABEL_114;
    }

    v93 = v153;

    v94 = v155;
    if (!v88)
    {
      goto LABEL_111;
    }

    if (!v153)
    {
      goto LABEL_142;
    }

    if (v155 != v150 || v88 != v153)
    {
      v97 = sub_269D9B280();

      sub_269C98B48(v90, v91, v158);
      sub_269C98B48(v150, v153, v18);

      sub_269C98B48(v159, v86, v160);
      sub_269C98B48(v155, v88, v87);

      if ((v97 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_116;
    }

    sub_269C98B48(v90, v91, v89);
    v95 = v155;
    v96 = v88;
LABEL_115:
    sub_269C98B48(v95, v96, v18);

    sub_269C98B48(v159, v86, v160);
    sub_269C98B48(v94, v88, v87);

LABEL_116:
    v3 = v149 + 1;
    result = 1;
    v2 = v142;
    if (v149 + 1 == v142)
    {
      return result;
    }
  }

  sub_269C9E3F4(v7, v8, v9);
  sub_269C9E3F4(v10, v12, v11);

  sub_269C9E3F4(v14, v13, v16);
  sub_269C9E3F4(v15, v17, v18);
  if (v173 == )
  {
    goto LABEL_88;
  }

  v166 = v18;
  v19 = 0;
  v20 = v6 - 1;
  while (1)
  {
    v21 = *(v173 + v19 + 32);
    v22 = *(v173 + v19 + 40);
    v24 = *(v173 + v19 + 48);
    v23 = *(v173 + v19 + 56);
    v25 = *(v173 + v19 + 72);
    v26 = *(v173 + v19 + 73);
    v176 = v19;
    v177 = *(v173 + v19 + 64);
    v27 = v172 + v19;
    v29 = *(v172 + v19 + 32);
    v28 = *(v172 + v19 + 40);
    v30 = *(v172 + v19 + 48);
    v31 = *(v172 + v19 + 56);
    v32 = *(v172 + v19 + 64);
    v33 = *(v172 + v19 + 72);
    v34 = *(v27 + 73);
    v179[0] = v21;
    v179[1] = v22;
    v179[2] = v24;
    v179[3] = v23;
    v178 = v23;
    v179[4] = v177;
    v180 = v25;
    v181 = v26;
    v182 = v29;
    v183 = v28;
    v184 = v30;
    v185 = v31;
    v186 = v32;
    v187 = v33;
    v188 = v34;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v168 = v33;
        v59 = v30;
        v60 = v31;
        v61 = v32;
        if (v34 == 2)
        {
          v62 = v20;
          sub_269C9CC0C(v21, v22, v24, v23, v177, v25, 2u);
          sub_269C9CC0C(v29, v28, v59, v60, v61, v168, 2u);
          sub_269C9E438(v179, sub_269C9E498);
          v52 = v62;
          goto LABEL_39;
        }

        v117 = v22;
        v118 = v24;
        v170 = v22;
        v119 = v24;
        v120 = v25;
        sub_269C9CC0C(v21, v117, v118, v23, v177, v25, 2u);
        v121 = v21;
        v25 = v120;
        v24 = v119;
        v22 = v170;
        v32 = v61;
        v31 = v60;
        v30 = v59;
        v33 = v168;
      }

      else if (v26 == 3)
      {
        v171 = v32;
        v164 = v29;
        if (v34 == 3)
        {
          if (v21 != v29 || v22 != v28)
          {
            v35 = v25;
            v36 = v20;
            v37 = sub_269D9B280();
            v20 = v36;
            v25 = v35;
            if ((v37 & 1) == 0)
            {
              v134 = v21;
              v135 = v22;
              v136 = v24;
              v138 = v177;
              v137 = v178;
LABEL_129:
              sub_269C9CC0C(v134, v135, v136, v137, v138, v25, 3u);
              sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
LABEL_130:
              sub_269C9E438(v179, sub_269C9E498);
              goto LABEL_135;
            }
          }

          v161 = v20;
          if (v24 != v30 || v178 != v31)
          {
            v38 = v21;
            v39 = v22;
            v40 = v24;
            v41 = v25;
            v42 = sub_269D9B280();
            v25 = v41;
            v24 = v40;
            v22 = v39;
            v21 = v38;
            v29 = v164;
            if ((v42 & 1) == 0)
            {
              v134 = v21;
              v135 = v22;
              v136 = v24;
              v137 = v178;
              v138 = v177;
              goto LABEL_129;
            }
          }

          v174 = v24;
          v43 = v24;
          v44 = v25;
          sub_269C9CC0C(v21, v22, v43, v178, v177, v25, 3u);
          sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
          sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
          sub_269C9CC0C(v21, v22, v174, v178, v177, v44, 3u);
          sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 3u);
          sub_269C9CC0C(v21, v22, v174, v178, v177, v44, 3u);
          v145 = sub_269D99CD0();
          sub_269C9E438(v179, sub_269C9E498);
          sub_269C9CB74(v164, v28, v30, v31, v171, v33, 3u);
          sub_269C9CB74(v21, v22, v174, v178, v177, v44, 3u);
          sub_269C9CB74(v164, v28, v30, v31, v171, v33, 3u);
          v45 = v21;
          v46 = v22;
          v47 = v174;
          v48 = v178;
          v49 = v177;
          v50 = v44;
          v51 = 3;
          goto LABEL_21;
        }

        v110 = v21;
        v111 = v22;
        v112 = v24;
        v113 = v21;
        v114 = v22;
        v115 = v24;
        v116 = v25;
        sub_269C9CC0C(v110, v111, v112, v23, v177, v25, 3u);

LABEL_125:
        v25 = v116;
        v24 = v115;
        v22 = v114;
        v21 = v113;
        v29 = v164;
        v32 = v171;
      }

      else
      {
        if (v34 == 4)
        {
          v63 = v28;
          v64 = v30;
          v65 = v25;
          v66 = v20;
          sub_269C9CC0C(v29, v63, v64, v31, v32, v33, 4u);
          sub_269C9CC0C(v21, v22, v24, v178, v177, v65, 4u);
          sub_269C9E438(v179, sub_269C9E498);
          v52 = v66;
          goto LABEL_39;
        }

        v98 = v21;
        v99 = v22;
        v100 = v24;
        v148 = v28;
        v101 = v33;
        v102 = v30;
        v103 = v31;
        v104 = v32;
        v165 = v29;
        v105 = v21;
        v106 = v22;
        v107 = v24;
        v108 = v25;
        sub_269C9CC0C(v98, v99, v100, v23, v177, v25, 4u);
        v109 = v105;
        v32 = v104;
        v31 = v103;
        v30 = v102;
        v33 = v101;
        v28 = v148;
        v25 = v108;
        v24 = v107;
        v22 = v106;
        v21 = v105;
        v29 = v165;
      }

LABEL_126:
      v125 = v30;
      v126 = v25;
      sub_269C9CC0C(v29, v28, v125, v31, v32, v33, v34);
      sub_269C9E438(v179, sub_269C9E498);
      v129 = v21;
      v130 = v22;
      v131 = v24;
      v133 = v177;
      v132 = v178;
      v127 = v126;
      v128 = v26;
      goto LABEL_134;
    }

    v175 = v24;
    if (v26)
    {
      if (v34 != 1)
      {
        goto LABEL_126;
      }

      v162 = v21;
      if (v21)
      {
        if (v21 == 1)
        {
          v67 = 0x696472616F626E6FLL;
        }

        else
        {
          v67 = 0x63536567616E616DLL;
        }

        if (v21 == 1)
        {
          v68 = 0xEA0000000000676ELL;
        }

        else
        {
          v68 = 0xEE00656C75646568;
        }
      }

      else
      {
        v67 = 0x657078456E69616DLL;
        v68 = 0xEE0065636E656972;
      }

      v169 = v22;
      if (v29)
      {
        if (v29 == 1)
        {
          v77 = 0x696472616F626E6FLL;
        }

        else
        {
          v77 = 0x63536567616E616DLL;
        }

        if (v29 == 1)
        {
          v78 = 0xEA0000000000676ELL;
        }

        else
        {
          v78 = 0xEE00656C75646568;
        }
      }

      else
      {
        v77 = 0x657078456E69616DLL;
        v78 = 0xEE0065636E656972;
      }

      v79 = v20;
      v80 = v25;
      if (v67 == v77 && v68 == v78)
      {
        sub_269C9CC0C(v29, v28, v30, v31, v32, v33, 1u);

        sub_269C9E438(v179, sub_269C9E498);
        sub_269C9CB74(v21, v169, v175, v178, v177, v80, 1u);
        v53 = v176;
        v52 = v79;
        v18 = v166;
        if (!v79)
        {
          goto LABEL_88;
        }

        goto LABEL_76;
      }

      v81 = v33;
      v82 = v30;
      v83 = v31;
      v84 = v32;
      v146 = sub_269D9B280();
      sub_269C9CC0C(v29, v28, v82, v83, v84, v81, 1u);

      sub_269C9E438(v179, sub_269C9E498);
      sub_269C9CB74(v162, v169, v175, v178, v177, v80, 1u);
      v53 = v176;
      v52 = v79;
      if ((v146 & 1) == 0)
      {
        goto LABEL_135;
      }

      goto LABEL_75;
    }

    v171 = v32;
    v164 = v29;
    if (v34)
    {
      v122 = v21;
      v123 = v22;
      v124 = v24;
      v113 = v21;
      v114 = v22;
      v115 = v24;
      v116 = v25;
      sub_269C9CC0C(v122, v123, v124, v23, v177, v25, 0);

      goto LABEL_125;
    }

    v54 = v20;
    v163 = v25;
    sub_269C9CC0C(v21, v22, v24, v23, v177, v25, 0);
    sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 0);
    if ((v21 != v29 || v22 != v28) && (sub_269D9B280() & 1) == 0 || (v24 != v30 || v178 != v31) && (sub_269D9B280() & 1) == 0)
    {
      goto LABEL_130;
    }

    v161 = v54;
    v147 = v28;
    v167 = v33;
    if (v177)
    {
      if (!v171)
      {
        goto LABEL_130;
      }

      sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 0);
      v55 = v163;
      sub_269C9CC0C(v21, v22, v24, v178, v177, v163, 0);
      sub_269C9CC0C(v29, v28, v30, v31, v171, v33, 0);
      v56 = v21;
      v57 = v22;
      sub_269C9CC0C(v21, v22, v175, v178, v177, v163, 0);

      v58 = sub_269D99CD0();

      if ((v58 & 1) == 0)
      {
        sub_269C9E438(v179, sub_269C9E498);
        sub_269C9CB74(v29, v28, v30, v31, v171, v167, 0);
        sub_269C9CB74(v21, v22, v175, v178, v177, v163, 0);
        sub_269C9CB74(v29, v28, v30, v31, v171, v167, 0);
        v129 = v21;
        v130 = v22;
        v131 = v175;
        v132 = v178;
        v133 = v177;
        goto LABEL_133;
      }
    }

    else
    {
      if (v171)
      {
        goto LABEL_130;
      }

      sub_269C9CC0C(v29, v28, v30, v31, 0, v33, 0);
      LODWORD(v55) = v163;
      sub_269C9CC0C(v21, v22, v24, v178, 0, v163, 0);
      sub_269C9CC0C(v29, v28, v30, v31, 0, v33, 0);
      v56 = v21;
      v57 = v22;
      sub_269C9CC0C(v21, v22, v175, v178, 0, v163, 0);
    }

    v69 = v56;
    if (v55 != 3)
    {
      break;
    }

    v70 = v56;
    sub_269C9E438(v179, sub_269C9E498);
    v71 = v167;
    v72 = v178;
    v53 = v176;
    if (v167 != 3)
    {
      goto LABEL_132;
    }

    sub_269C9CB74(v164, v147, v30, v31, v171, 3, 0);
    sub_269C9CB74(v69, v57, v175, v178, v177, 3, 0);
    sub_269C9CB74(v164, v147, v30, v31, v171, 3, 0);
    sub_269C9CB74(v69, v57, v175, v178, v177, 3, 0);
    v52 = v161;
    v18 = v166;
    if (!v161)
    {
      goto LABEL_88;
    }

LABEL_76:
    v20 = v52 - 1;
    v19 = v53 + 48;
  }

  v71 = v167;
  v72 = v178;
  if (v167 != 3)
  {
    if (v55)
    {
      if (v55 == 1)
      {
        v73 = 0x696472616F626E6FLL;
        v74 = 0xEA0000000000676ELL;
        if (v167)
        {
          goto LABEL_59;
        }

LABEL_78:
        v75 = 0x657078456E69616DLL;
        v85 = 0x65636E656972;
LABEL_82:
        v76 = v85 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        goto LABEL_83;
      }

      v73 = 0x63536567616E616DLL;
      v74 = 0xEE00656C75646568;
      if (!v167)
      {
        goto LABEL_78;
      }
    }

    else
    {
      v73 = 0x657078456E69616DLL;
      v74 = 0xEE0065636E656972;
      if (!v167)
      {
        goto LABEL_78;
      }
    }

LABEL_59:
    if (v167 != 1)
    {
      v75 = 0x63536567616E616DLL;
      v85 = 0x656C75646568;
      goto LABEL_82;
    }

    v75 = 0x696472616F626E6FLL;
    v76 = 0xEA0000000000676ELL;
LABEL_83:
    if (v73 == v75 && v74 == v76)
    {

      sub_269C9E438(v179, sub_269C9E498);
      sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
      sub_269C9CB74(v56, v57, v175, v178, v177, v163, 0);
      sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
      sub_269C9CB74(v56, v57, v175, v178, v177, v163, 0);
      v52 = v161;
LABEL_39:
      v53 = v176;
      v18 = v166;
      if (!v52)
      {
        goto LABEL_88;
      }

      goto LABEL_76;
    }

    v145 = sub_269D9B280();

    sub_269C9E438(v179, sub_269C9E498);
    sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
    sub_269C9CB74(v56, v57, v175, v178, v177, v163, 0);
    sub_269C9CB74(v29, v147, v30, v31, v171, v167, 0);
    v45 = v56;
    v46 = v57;
    v47 = v175;
    v48 = v178;
    v49 = v177;
    v50 = v163;
    v51 = 0;
LABEL_21:
    sub_269C9CB74(v45, v46, v47, v48, v49, v50, v51);
    v52 = v161;
    v53 = v176;
    if ((v145 & 1) == 0)
    {
      goto LABEL_135;
    }

LABEL_75:
    v18 = v166;
    if (!v52)
    {
      goto LABEL_88;
    }

    goto LABEL_76;
  }

  v70 = v56;
  sub_269C9E438(v179, sub_269C9E498);
LABEL_132:
  sub_269C9CB74(v164, v147, v30, v31, v171, v71, 0);
  v55 = v163;
  sub_269C9CB74(v70, v57, v175, v72, v177, v163, 0);
  sub_269C9CB74(v164, v147, v30, v31, v171, v71, 0);
  v129 = v70;
  v130 = v57;
  v131 = v175;
  v132 = v72;
  v133 = v177;
LABEL_133:
  v127 = v55;
  v128 = 0;
LABEL_134:
  sub_269C9CB74(v129, v130, v131, v132, v133, v127, v128);
LABEL_135:
  sub_269C98B48(v151, v152, v158);
  sub_269C98B48(v150, v153, v166);

  sub_269C98B48(v159, v154, v160);
  v139 = v155;
  v140 = v156;
  v141 = v157;
LABEL_136:
  sub_269C98B48(v139, v140, v141);

  return 0;
}

uint64_t sub_269C980F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v3 = (a2 + 73);
      v4 = (a1 + 73);
      do
      {
        v5 = *(v4 - 33);
        v6 = *(v4 - 25);
        v7 = *(v4 - 17);
        v8 = *(v4 - 9);
        v9 = *(v4 - 1);
        v10 = *v4;
        v27 = *(v4 - 41);
        v28 = v5;
        v29 = v6;
        v30 = v7;
        v31 = v8;
        v32 = v9;
        v33 = v10;
        v12 = *(v3 - 33);
        v13 = *(v3 - 25);
        v14 = *(v3 - 17);
        v15 = *(v3 - 9);
        v20 = *(v3 - 41);
        v11 = v20;
        v21 = v12;
        v22 = v13;
        v23 = v14;
        v24 = v15;
        v25 = *(v3 - 1);
        v16 = v25;
        v26 = *v3;
        v17 = v26;
        sub_269C9CC0C(v27, v5, v6, v7, v8, v9, v10);
        sub_269C9CC0C(v11, v12, v13, v14, v15, v16, v17);
        v18 = _s13SleepHealthUI11SectionItemO2eeoiySbAC_ACtFZ_0(&v27, &v20);
        sub_269C9CB74(v20, v21, v22, v23, v24, v25, v26);
        sub_269C9CB74(v27, v28, v29, v30, v31, v32, v33);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v4 += 48;
        v3 += 48;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_269C98258(uint64_t a1, uint64_t a2)
{
  v35 = type metadata accessor for SleepStageSegment(0);
  v4 = MEMORY[0x28223BE20](v35);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v9 = &v34 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    v32 = 0;
    return v32 & 1;
  }

  if (!v10 || a1 == a2)
  {
    v32 = 1;
    return v32 & 1;
  }

  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a1 + v11;
  v13 = a2 + v11;
  v14 = 0xEB00000000646569;
  v15 = 0x6669636570736E75;
  v34 = *(v7 + 72);
  while (1)
  {
    result = sub_269C9E114(v12, v9, type metadata accessor for SleepStageSegment);
    if (!v10)
    {
      break;
    }

    sub_269C9E114(v13, v6, type metadata accessor for SleepStageSegment);
    v17 = *v9;
    if (v17 <= 1)
    {
      v22 = 0x7065656C536D6572;
      if (*v9)
      {
        v20 = 0x7065656C536D6572;
      }

      else
      {
        v20 = 0x656B617761;
      }

      if (*v9)
      {
        v21 = 0xE800000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }
    }

    else
    {
      if (v17 == 3)
      {
        v18 = 0x65656C5370656564;
      }

      else
      {
        v18 = v15;
      }

      if (v17 == 3)
      {
        v19 = 0xE900000000000070;
      }

      else
      {
        v19 = v14;
      }

      if (v17 == 2)
      {
        v20 = 0x65656C5365726F63;
      }

      else
      {
        v20 = v18;
      }

      if (v17 == 2)
      {
        v21 = 0xE900000000000070;
      }

      else
      {
        v21 = v19;
      }

      v22 = 0x7065656C536D6572;
    }

    v23 = *v6;
    v24 = v15;
    if (v23 == 3)
    {
      v25 = 0x65656C5370656564;
    }

    else
    {
      v25 = v15;
    }

    v26 = v14;
    if (v23 == 3)
    {
      v27 = 0xE900000000000070;
    }

    else
    {
      v27 = v14;
    }

    if (v23 == 2)
    {
      v25 = 0x65656C5365726F63;
      v27 = 0xE900000000000070;
    }

    if (*v6)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v22 = 0x656B617761;
      v28 = 0xE500000000000000;
    }

    if (*v6 <= 1u)
    {
      v29 = v22;
    }

    else
    {
      v29 = v25;
    }

    if (*v6 <= 1u)
    {
      v30 = v28;
    }

    else
    {
      v30 = v27;
    }

    if (v20 == v29 && v21 == v30)
    {
    }

    else
    {
      v31 = sub_269D9B280();

      if ((v31 & 1) == 0)
      {
        sub_269C9E438(v6, type metadata accessor for SleepStageSegment);
        sub_269C9E438(v9, type metadata accessor for SleepStageSegment);
        v32 = 0;
        return v32 & 1;
      }
    }

    v32 = sub_269D96F80();
    sub_269C9E438(v6, type metadata accessor for SleepStageSegment);
    sub_269C9E438(v9, type metadata accessor for SleepStageSegment);
    if (v32)
    {
      v13 += v34;
      v12 += v34;
      v33 = v10-- == 1;
      v14 = v26;
      v15 = v24;
      if (!v33)
      {
        continue;
      }
    }

    return v32 & 1;
  }

  __break(1u);
  return result;
}

__n128 SectionsViewModel.init(section:)@<Q0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = a1[2];
  v4 = *(a1 + 6);
  sub_269C9D5C8(0, &qword_28034E388, &type metadata for SectionContent, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  v6 = *a1;
  v7 = a1[1];
  *(v5 + 16) = xmmword_269D9EBE0;
  *(v5 + 32) = v6;
  result = v9;
  *(v5 + 48) = v7;
  *(v5 + 64) = v9;
  *(v5 + 80) = v4;
  *a2 = v5;
  return result;
}

double SectionsViewModel.init(sectionItem:headerText:footerText:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = MEMORY[0x277D84560];
  sub_269C9D5C8(0, &qword_28034E388, &type metadata for SectionContent, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269D9EBE0;
  sub_269C9D5C8(0, &qword_28034E390, &type metadata for SectionItem, v14);
  v16 = swift_allocObject();
  v17 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 16) = xmmword_269D9EBE0;
  *(v16 + 64) = v12;
  *(v16 + 72) = v13;
  sub_269C961DC(v16, a2, a3, a4, a5, v22);
  v18 = v23;
  result = *v22;
  v20 = v22[1];
  v21 = v22[2];
  *(v15 + 32) = v22[0];
  *(v15 + 48) = v20;
  *(v15 + 64) = v21;
  *(v15 + 80) = v18;
  *a6 = v15;
  return result;
}

uint64_t SectionContent.view.getter()
{
  sub_269C9D5C8(0, &qword_28034F088, &type metadata for SectionItem, MEMORY[0x277D83940]);
  sub_269C98B8C();
  sub_269C98DAC();
  sub_269C98E28();
  sub_269C99360();

  return sub_269D9A090();
}

uint64_t sub_269C98890@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 10) = *(a1 + 26);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C9B4D0(&v5, a2);
}

uint64_t SectionContent.header.getter@<X0>(uint64_t *a1@<X8>)
{
  result = *(v1 + 16);
  if (result)
  {
  }

  *a1 = result;
  return result;
}

uint64_t SectionContent.footer.getter@<X0>(uint64_t *a1@<X8>)
{
  result = *(v1 + 40);
  if (result)
  {
  }

  *a1 = result;
  return result;
}

uint64_t sub_269C989B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  *a4 = (*(a3 + 32))(a2, a3);
  a4[1] = v9;
  (*(a3 + 24))(a2, a3);
  swift_getAssociatedConformanceWitness();
  v10 = sub_269D99FF0();
  result = (*(*(a2 - 8) + 8))(a1, a2);
  a4[2] = v10;
  return result;
}

double SectionContent.init(items:headerText:footerText:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_269C961DC(a1, a2, a3, a4, a5, v10);
  v7 = v12;
  v8 = v10[1];
  *a6 = v10[0];
  *(a6 + 16) = v8;
  result = *&v11;
  *(a6 + 32) = v11;
  *(a6 + 48) = v7;
  return result;
}

uint64_t sub_269C98B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_269C98B8C()
{
  if (!qword_28034F090)
  {
    sub_269C9DC78(255, &qword_28034F098, sub_269C98C28, sub_269C98CE4, MEMORY[0x277CE0338]);
    v0 = sub_269D99D50();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F090);
    }
  }
}

void sub_269C98C28()
{
  if (!qword_28034F0A0)
  {
    v0 = MEMORY[0x277CE0338];
    sub_269C9DA44(255, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C9DA44(255, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v0);
    v1 = sub_269D992E0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F0A0);
    }
  }
}

void sub_269C98CE4()
{
  if (!qword_28034F0B8)
  {
    sub_269C98D44(255);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F0B8);
    }
  }
}

unint64_t sub_269C98DAC()
{
  result = qword_28034F0D0;
  if (!qword_28034F0D0)
  {
    sub_269C9D5C8(255, &qword_28034F088, &type metadata for SectionItem, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0D0);
  }

  return result;
}

unint64_t sub_269C98E70()
{
  result = qword_28034F0E0;
  if (!qword_28034F0E0)
  {
    sub_269C9DC78(255, &qword_28034F098, sub_269C98C28, sub_269C98CE4, MEMORY[0x277CE0338]);
    sub_269C98F34();
    sub_269C9925C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0E0);
  }

  return result;
}

unint64_t sub_269C98F34()
{
  result = qword_28034F0E8;
  if (!qword_28034F0E8)
  {
    sub_269C98C28();
    sub_269C98FB4();
    sub_269C99108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0E8);
  }

  return result;
}

unint64_t sub_269C98FB4()
{
  result = qword_28034F0F0;
  if (!qword_28034F0F0)
  {
    sub_269C9DA44(255, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C99060();
    sub_269C990B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0F0);
  }

  return result;
}

unint64_t sub_269C99060()
{
  result = qword_28034F0F8;
  if (!qword_28034F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F0F8);
  }

  return result;
}

unint64_t sub_269C990B4()
{
  result = qword_28034F100;
  if (!qword_28034F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F100);
  }

  return result;
}

unint64_t sub_269C99108()
{
  result = qword_28034F108;
  if (!qword_28034F108)
  {
    sub_269C9DA44(255, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, MEMORY[0x277CE0338]);
    sub_269C991B4();
    sub_269C99208();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F108);
  }

  return result;
}

unint64_t sub_269C991B4()
{
  result = qword_28034F110;
  if (!qword_28034F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F110);
  }

  return result;
}

unint64_t sub_269C99208()
{
  result = qword_28034F118;
  if (!qword_28034F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F118);
  }

  return result;
}

unint64_t sub_269C9925C()
{
  result = qword_28034F120;
  if (!qword_28034F120)
  {
    sub_269C98CE4();
    sub_269C9930C();
    sub_269C9E17C(&qword_28034F130, sub_269C98D44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F120);
  }

  return result;
}

unint64_t sub_269C9930C()
{
  result = qword_28034F128;
  if (!qword_28034F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F128);
  }

  return result;
}

unint64_t sub_269C99360()
{
  result = qword_28034F138;
  if (!qword_28034F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F138);
  }

  return result;
}

uint64_t SectionContent.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  sub_269C9BC7C(a1, v1[6]);
  if (v3)
  {
    v6 = v2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    sub_269D9B370();

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    sub_269D9B370();

    sub_269D9A6A0();

    if (!v5)
    {
      goto LABEL_11;
    }
  }

  if (v4)
  {
    sub_269D9B370();

    sub_269D9A6A0();
    goto LABEL_12;
  }

LABEL_11:
  sub_269D9B370();
LABEL_12:
}

uint64_t SectionContent.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_269D9B350();
  SectionContent.hash(into:)(v4);
  return sub_269D9B390();
}

uint64_t sub_269C9950C()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_269D9B350();
  SectionContent.hash(into:)(v4);
  return sub_269D9B390();
}

uint64_t sub_269C9956C()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_269D9B350();
  SectionContent.hash(into:)(v4);
  return sub_269D9B390();
}

void SectionContent.id.getter()
{
  v1 = *(v0 + 48);
  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  v18 = *(v1 + 16);
  if (v18)
  {
    v2 = 0;
    v3 = (v1 + 73);
    v17 = v1;
    while (v2 < *(v1 + 16))
    {
      v7 = *(v3 - 41);
      v8 = *(v3 - 33);
      v9 = *(v3 - 25);
      v10 = *(v3 - 17);
      v11 = *(v3 - 9);
      v12 = *(v3 - 1);
      v13 = *v3;
      v19 = *(v3 - 1);
      if (v13 <= 1)
      {
        if (*v3)
        {
          sub_269D9B000();

          v20[0] = 0xD000000000000011;
          v20[1] = 0x8000000269DAF430;
          if (v7)
          {
            if (v7 == 1)
            {
              v15 = 0x696472616F626E6FLL;
            }

            else
            {
              v15 = 0x63536567616E616DLL;
            }

            if (v7 == 1)
            {
              v16 = 0xEA0000000000676ELL;
            }

            else
            {
              v16 = 0xEE00656C75646568;
            }
          }

          else
          {
            v15 = 0x657078456E69616DLL;
            v16 = 0xEE0065636E656972;
          }

          MEMORY[0x26D650930](v15, v16);

          MEMORY[0x26D650930](0xD000000000000019, 0x8000000269DAF450);
        }

        else
        {
          strcpy(v20, "promotion - ");
          BYTE5(v20[1]) = 0;
          HIWORD(v20[1]) = -5120;
          sub_269C9CC0C(v7, v8, v9, v10, v11, v12, 0);
          MEMORY[0x26D650930](v9, v10);
        }

        v5 = v20[0];
        v6 = v20[1];
      }

      else if (v13 == 2)
      {
        v4 = v7;
        v5 = 0xD000000000000012;
        v6 = 0x8000000269DAF410;
      }

      else if (v13 == 3)
      {

        v5 = 0xD000000000000014;
        v6 = 0x8000000269DAF3F0;
      }

      else
      {
        v14 = v7;
        v5 = 0xD000000000000010;
        v6 = 0x8000000269DAF3D0;
      }

      ++v2;
      MEMORY[0x26D650930](v5, v6);
      sub_269C9CB74(v7, v8, v9, v10, v11, v19, v13);

      v3 += 48;
      v1 = v17;
      if (v18 == v2)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t SectionItem.id.getter()
{
  v1 = v0[41];
  if (v1 <= 1)
  {
    if (v0[41])
    {
      v6 = *v0;
      sub_269D9B000();

      v11[0] = 0xD000000000000011;
      v11[1] = 0x8000000269DAF430;
      v7 = 0xEA0000000000676ELL;
      v8 = 0x696472616F626E6FLL;
      if (v6 != 1)
      {
        v8 = 0x63536567616E616DLL;
        v7 = 0xEE00656C75646568;
      }

      if (v6)
      {
        v9 = v8;
      }

      else
      {
        v9 = 0x657078456E69616DLL;
      }

      if (v6)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0xEE0065636E656972;
      }

      MEMORY[0x26D650930](v9, v10);

      MEMORY[0x26D650930](0xD000000000000019, 0x8000000269DAF450);
    }

    else
    {
      v4 = *(v0 + 2);
      v5 = *(v0 + 3);
      strcpy(v11, "promotion - ");
      BYTE5(v11[1]) = 0;
      HIWORD(v11[1]) = -5120;
      MEMORY[0x26D650930](v4, v5);
    }

    return v11[0];
  }

  else
  {
    v2 = 0xD000000000000014;
    if (v1 != 3)
    {
      v2 = 0xD000000000000010;
    }

    if (v1 == 2)
    {
      return 0xD000000000000012;
    }

    else
    {
      return v2;
    }
  }
}

void sub_269C99A78(void *a1@<X8>)
{
  SectionContent.id.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t AnyTextProvider.stringRepresentation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyTextProvider.stringRepresentation.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AnyTextProvider.text.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_269C99B88()
{
  v1 = *v0;

  return v1;
}

uint64_t StaticTextProvider.text.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 8))
  {
    sub_269C3EEE8();

    result = sub_269D99960();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t StaticTextProvider.stringRepresentation.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_269C99C6C@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 8))
  {
    sub_269C3EEE8();

    result = sub_269D99960();
    v7 = v6 & 1;
  }

  else
  {
    result = 0;
    v4 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  a1[2] = v7;
  a1[3] = v5;
  return result;
}

uint64_t sub_269C99CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_269D993F0();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v47 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D99160();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText();
  v8 = v7 - 8;
  v39 = *(v7 - 8);
  v42 = *(v39 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D972A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9D634(0);
  v41 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C9DC30(0);
  v43 = v18;
  MEMORY[0x28223BE20](v18);
  v40 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v2, v11);
  v20 = sub_269D99950();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;
  v26 = *(v8 + 32);
  v27 = *(v2 + *(v8 + 28)) != 1;
  v38 = v2;
  v28 = *(v2 + v26 + 8);
  v54 = *(v2 + v26);
  v55 = v28;
  sub_269C9D5C8(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_269D99E90();
  sub_269D4345C(v27, v51, v52, v53, v20, v22, v12 & 1, v25, v17);

  sub_269C41568(v20, v22, v12 & 1);

  KeyPath = swift_getKeyPath();
  sub_269C9E114(v2, v10, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
  v30 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v31 = swift_allocObject();
  sub_269C9DCFC(v10, v31 + v30);
  v32 = &v17[*(v41 + 36)];
  sub_269C9DB98(0);
  sub_269D98B50();
  *v32 = KeyPath;
  v33 = v44;
  sub_269D99150();
  sub_269C9DDE0();
  v34 = v40;
  sub_269D99BA0();
  (*(v45 + 8))(v33, v46);
  sub_269C9E0B4(v17, sub_269C9D634);
  sub_269C9E114(v38, v10, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
  v35 = swift_allocObject();
  sub_269C9DCFC(v10, v35 + v30);
  v36 = v47;
  sub_269D993E0();
  sub_269D98CD0();

  (*(v49 + 8))(v36, v50);
  return sub_269C9E0B4(v34, sub_269C9DC30);
}

uint64_t sub_269C9A250(uint64_t a1)
{
  v2 = sub_269D98B60();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_269D98FD0();
}

uint64_t sub_269C9A318(uint64_t a1)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269C9A3D4(a1);
  sub_269D98B40();
}

void sub_269C9A3D4(uint64_t a1)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 healthAppHidden];

    if (v4)
    {
      type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText();
      sub_269C9D5C8(0, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      sub_269D99E80();
    }

    else
    {
      DeepLinkOpener.open(url:completion:)(a1, 0, 0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269C9A4C0(uint64_t a1)
{
  v2 = sub_269D973D0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText();
  if (*(a1 + *(v12 + 20)))
  {
    v13 = MEMORY[0x277D62210];
    if (*(a1 + *(v12 + 20)) == 1)
    {
      v13 = MEMORY[0x277D62218];
    }

    v14 = *v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = HKSPSleepURL();

  if (v15)
  {
    sub_269D973B0();

    sub_269D97380();
    v16 = *(v3 + 8);
    v16(v6, v2);
    (*(v3 + 32))(v11, v9, v2);
    sub_269C9A3D4(v11);
    v16(v11, v2);
  }

  else
  {
  }
}

uint64_t SleepDeepLinkTextProvider.text.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  sub_269C9D484(0, &qword_28034F140, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, MEMORY[0x277CE0BD8], MEMORY[0x277CE0330]);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - v3;
  v56 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText();
  MEMORY[0x28223BE20](v56);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97230();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D97240();
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_269D97260();
  MEMORY[0x28223BE20](v12 - 8);
  sub_269C9DBCC(0, &qword_28034F148, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - v14;
  sub_269C9CD24(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_269D972A0();
  v20 = MEMORY[0x28223BE20](v19);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *v1;
  v25 = *(v1 + 8);
  v26 = *(v1 + 16);
  if (v26 == 3 || (v46 = v23, v48 = v21, v49 = v20, v59 = v24, v60 = v25, v61 = v26, v27 = sub_269C9AE6C(), !v28))
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v30 = qword_280C0D990;
    v31 = sub_269D972C0();
    v33 = v32;

    v59 = v31;
    v60 = v33;
    sub_269C3EEE8();
    *v4 = sub_269D99960();
    *(v4 + 1) = v34;
    v4[16] = v35 & 1;
    *(v4 + 3) = v36;
    swift_storeEnumTagMultiPayload();
    sub_269C9E17C(&qword_28034F158, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    return sub_269D992D0();
  }

  else
  {
    v47 = v27;
    v29 = sub_269D973D0();
    (*(*(v29 - 8) + 56))(v15, 1, 1, v29);
    (*(v51 + 104))(v11, *MEMORY[0x277CC8BB0], v52);
    (*(v53 + 104))(v8, *MEMORY[0x277CC8B98], v54);
    sub_269D97250();
    sub_269D97290();
    v38 = v48;
    v37 = v49;
    (*(v48 + 56))(v18, 0, 1, v49);
    v39 = v46;
    (*(v38 + 32))(v46, v18, v37);
    v40 = v50;
    (*(v38 + 16))(v50, v39, v37);
    v41 = v56;
    v42 = v40 + *(v56 + 24);
    v58 = 0;
    sub_269D99E60();
    v43 = v60;
    *v42 = v59;
    *(v42 + 8) = v43;
    *(v40 + *(v41 + 20)) = v26;
    sub_269C9E114(v40, v4, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    swift_storeEnumTagMultiPayload();
    sub_269C9E17C(&qword_28034F158, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    sub_269D992D0();
    sub_269C9E438(v40, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    return (*(v38 + 8))(v39, v37);
  }
}

uint64_t sub_269C9AE6C()
{
  v1 = sub_269D973D0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v18 - v6;
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) != 2)
    {
      return 0;
    }

    v9 = MEMORY[0x277D62210];
  }

  else
  {
    v8 = 0;
    if (!*(v0 + 16))
    {
      goto LABEL_7;
    }

    v9 = MEMORY[0x277D62218];
  }

  v8 = *v9;
LABEL_7:
  v10 = HKSPSleepURL();

  if (!v10)
  {
    return 0;
  }

  sub_269D973B0();

  (*(v2 + 32))(v7, v5, v1);
  v11 = sub_269D97390();
  v13 = v12;
  (*(v2 + 8))(v7, v1);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v14 = qword_280C0D990;
  sub_269D972C0();

  sub_269C9DBCC(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269D9EBE0;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_269C7172C();
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  v16 = sub_269D9A600();

  return v16;
}

uint64_t SleepDeepLinkTextProvider.stringRepresentation.getter()
{
  if (*(v0 + 16) != 3)
  {
    return sub_269C9AE6C();
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v1 = qword_280C0D990;
  v2 = sub_269D972C0();

  return v2;
}

unint64_t sub_269C9B230@<X0>(unint64_t *a1@<X8>)
{
  result = SectionItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t SectionItem.hash(into:)()
{
  SectionItem.id.getter();
  sub_269D9A6A0();
}

uint64_t SectionItem.hashValue.getter()
{
  sub_269D9B350();
  SectionItem.id.getter();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269C9B354()
{
  sub_269D9B350();
  SectionItem.id.getter();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269C9B3D8()
{
  SectionItem.id.getter();
  sub_269D9A6A0();
}

uint64_t sub_269C9B44C()
{
  sub_269D9B350();
  SectionItem.id.getter();
  sub_269D9A6A0();

  return sub_269D9B390();
}

uint64_t sub_269C9B4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *a1;
  v5 = *(a1 + 8);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 41);
  if (v10 <= 1)
  {
    if (*(a1 + 41))
    {
      v23 = &type metadata for DeepLinkOpener;
      v24 = &protocol witness table for DeepLinkOpener;
      LOBYTE(v29) = 0;
      sub_269D99E60();
      v25 = v34;
      v26 = *(&v34 + 1);
      v22[0] = v6;
      sub_269C9E22C(v22, &v34);
      v37[16] = 1;
      sub_269C99060();
      sub_269C990B4();
      sub_269D992D0();
      sub_269C9E288(&v29, &v34);
      v37[17] = 0;
      v18 = MEMORY[0x277CE0338];
      sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
      sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v18);
      sub_269C98FB4();
      sub_269C99108();
      sub_269D992D0();
      sub_269C9E318(&v29);
      sub_269C9E114(v27, &v29, sub_269C98C28);
      v33 = 0;
      sub_269C98C28();
      sub_269C98CE4();
      sub_269C98F34();
      sub_269C9925C();
      sub_269D992D0();
      sub_269C9E438(v27, sub_269C98C28);
      sub_269C9E3A0(v22);
      goto LABEL_14;
    }

    v12 = *(a1 + 40);
    *&v34 = *a1;
    *(&v34 + 1) = v5;
    *&v35 = v8;
    *(&v35 + 1) = v7;
    *&v36 = v9;
    BYTE8(v36) = v12;
    v37[16] = 0;
    sub_269C99060();
    sub_269C990B4();

    sub_269D992D0();
    sub_269C9E288(&v29, &v34);
    v37[17] = 0;
    v13 = MEMORY[0x277CE0338];
    sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v13);
    sub_269C98FB4();
    sub_269C99108();
    sub_269D992D0();
    sub_269C9E318(&v29);
  }

  else
  {
    if (v10 == 2)
    {
      LOBYTE(v29) = 0;
      v14 = v4;
      sub_269D99E60();
      v27[0] = v6;
      v27[1] = v34;
      v27[3] = 0;
      v27[4] = 0;
      v27[2] = *(&v34 + 1);
      v28 = 0;
      sub_269C9E1C4(a1, &v34);
      sub_269C991B4();
      sub_269C99208();

      sub_269D992D0();
      v34 = v29;
      v35 = v30;
      *&v36 = v31;
      BYTE8(v36) = v32;
      v37[17] = 1;
      v15 = MEMORY[0x277CE0338];
      sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
      sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v15);
      sub_269C98FB4();
      sub_269C99108();
      sub_269D992D0();
      sub_269C9E114(v27, &v29, sub_269C98C28);
      v33 = 0;
      sub_269C98C28();
      sub_269C98CE4();
      sub_269C98F34();
      sub_269C9925C();
      sub_269D992D0();
      sub_269C9E1FC(a1);

      goto LABEL_11;
    }

    if (v10 != 3)
    {
      type metadata accessor for SleepActivityConfigurationModel();
      sub_269C9E17C(&qword_28034F248, type metadata accessor for SleepActivityConfigurationModel);
      *&v29 = sub_269D98E40();
      *(&v29 + 1) = v16;
      LOBYTE(v30) = v5;
      *(&v30 + 1) = sub_269D98760();
      v31 = v6;
      v33 = 1;
      sub_269C98C28();
      sub_269C98CE4();
      sub_269C98F34();
      sub_269C9925C();
      v17 = v4;
      sub_269D992D0();
      goto LABEL_14;
    }

    sub_269C991B4();
    sub_269C99208();

    sub_269D992D0();
    v34 = v29;
    v35 = v30;
    *&v36 = v31;
    BYTE8(v36) = v32;
    v37[17] = 1;
    v11 = MEMORY[0x277CE0338];
    sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
    sub_269C9DA44(0, &qword_28034F0B0, &type metadata for EditScheduleButton, &type metadata for TrailingDetailRow, v11);
    sub_269C98FB4();
    sub_269C99108();
    sub_269D992D0();
  }

  sub_269C9E114(v27, &v29, sub_269C98C28);
  v33 = 0;
  sub_269C98C28();
  sub_269C98CE4();
  sub_269C98F34();
  sub_269C9925C();
  sub_269D992D0();
LABEL_11:
  sub_269C9E438(v27, sub_269C98C28);
LABEL_14:
  v19 = *v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v19;
  *(a2 + 63) = *&v37[15];
  v20 = v35;
  *a2 = v34;
  *(a2 + 16) = v20;
}

void sub_269C9BC7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D6515B0](v3);
  if (v3)
  {
    v4 = (a2 + 73);
    do
    {
      v6 = *(v4 - 41);
      v7 = *(v4 - 33);
      v8 = *(v4 - 25);
      v9 = *(v4 - 17);
      v10 = *(v4 - 9);
      v11 = *v4;
      v14 = *(v4 - 1);
      if (v11 <= 1)
      {
        if (*v4)
        {
          sub_269D9B000();

          if (v6)
          {
            if (v6 == 1)
            {
              v12 = 0x696472616F626E6FLL;
            }

            else
            {
              v12 = 0x63536567616E616DLL;
            }

            if (v6 == 1)
            {
              v13 = 0xEA0000000000676ELL;
            }

            else
            {
              v13 = 0xEE00656C75646568;
            }
          }

          else
          {
            v12 = 0x657078456E69616DLL;
            v13 = 0xEE0065636E656972;
          }

          MEMORY[0x26D650930](v12, v13);

          MEMORY[0x26D650930](0xD000000000000019, 0x8000000269DAF450);
        }

        else
        {
          sub_269C9CC0C(v6, v7, v8, v9, v10, *(v4 - 1), 0);
          MEMORY[0x26D650930](v8, v9);
        }
      }

      else if (v11 == 3)
      {
      }

      else
      {
        v5 = v6;
      }

      v4 += 48;
      sub_269D9A6A0();

      sub_269C9CB74(v6, v7, v8, v9, v10, v14, v11);
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_269C9BF50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SleepStageSegment(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x26D6515B0](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_269C9E114(v9, v6, type metadata accessor for SleepStageSegment);
      sub_269D9A6A0();

      sub_269D97010();
      sub_269C9E17C(&qword_280C0BB98, MEMORY[0x277CC88A8]);
      sub_269D9A4E0();
      result = sub_269C9E438(v6, type metadata accessor for SleepStageSegment);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t _s13SleepHealthUI11SectionItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  v9 = *a2;
  v10 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  v14 = *(a2 + 40);
  v15 = *(a2 + 41);
  v86 = v2;
  v87 = v5;
  if (v8 <= 1)
  {
    v85 = *a1;
    if (!*(a1 + 41))
    {
      if (!*(a2 + 41))
      {
        v90[0] = *a1;
        v90[1] = v2;
        v90[2] = v5;
        v90[3] = v4;
        v90[4] = v6;
        v91 = v7;
        v88[0] = v9;
        v88[1] = v10;
        v88[2] = v12;
        v88[3] = v11;
        v88[4] = v13;
        v89 = v14;
        v61 = v14;
        v81 = v14;
        v78 = v13;
        v80 = v9;
        v62 = v9;
        v63 = v4;
        v64 = v6;
        v65 = v13;
        v66 = v7;
        v67 = v2;
        v68 = v3;
        sub_269C9CC0C(v62, v10, v12, v11, v65, v61, 0);
        sub_269C9CC0C(v68, v67, v5, v63, v64, v66, 0);
        sub_269C9CC0C(v68, v67, v5, v63, v64, v66, 0);
        sub_269C9CC0C(v80, v10, v12, v11, v78, v81, 0);
        v45 = _s13SleepHealthUI18PromotionViewModelV2eeoiySbAC_ACtFZ_0(v90, v88);
        sub_269C9CB74(v85, v86, v5, v63, v64, v66, 0);
        sub_269C9CB74(v80, v10, v12, v11, v78, v81, 0);
        sub_269C9CB74(v80, v10, v12, v11, v78, v81, 0);
        sub_269C9CB74(v85, v86, v5, v63, v64, v66, 0);
        return v45 & 1;
      }

      v82 = *(a1 + 40);
      v83 = *(a1 + 32);
      v25 = *a2;
      v26 = *(a1 + 24);

      v27 = v26;
      v9 = v25;

      goto LABEL_40;
    }

    v27 = *(a1 + 24);
    v83 = *(a1 + 32);
    v82 = *(a1 + 40);
    if (v15 != 1)
    {
LABEL_40:
      sub_269C9CC0C(v9, v10, v12, v11, v13, v14, v15);
      sub_269C9CB74(v85, v86, v87, v27, v83, v82, v8);
      v54 = v9;
      v55 = v10;
      v56 = v12;
      v57 = v11;
      v58 = v13;
      v59 = v14;
      v60 = v15;
LABEL_41:
      sub_269C9CB74(v54, v55, v56, v57, v58, v59, v60);
      v45 = 0;
      return v45 & 1;
    }

    v47 = 0xEE0065636E656972;
    v48 = 0x657078456E69616DLL;
    if (v3)
    {
      if (v3 == 1)
      {
        v49 = 0x696472616F626E6FLL;
      }

      else
      {
        v49 = 0x63536567616E616DLL;
      }

      if (v3 == 1)
      {
        v50 = 0xEA0000000000676ELL;
      }

      else
      {
        v50 = 0xEE00656C75646568;
      }

      v51 = *a2;
      if (!*a2)
      {
LABEL_36:
        if (v49 == v48 && v50 == v47)
        {
          v45 = 1;
        }

        else
        {
          v45 = sub_269D9B280();
        }

        sub_269C9CB74(v85, v86, v87, v27, v83, v82, 1u);
        sub_269C9CB74(v9, v10, v12, v11, v13, v14, 1u);
        return v45 & 1;
      }
    }

    else
    {
      v49 = 0x657078456E69616DLL;
      v50 = 0xEE0065636E656972;
      v51 = *a2;
      if (!*a2)
      {
        goto LABEL_36;
      }
    }

    if (v51 == 1)
    {
      v48 = 0x696472616F626E6FLL;
    }

    else
    {
      v48 = 0x63536567616E616DLL;
    }

    if (v51 == 1)
    {
      v47 = 0xEA0000000000676ELL;
    }

    else
    {
      v47 = 0xEE00656C75646568;
    }

    goto LABEL_36;
  }

  if (v8 != 2)
  {
    if (v8 == 3)
    {
      v83 = *(a1 + 32);
      v82 = *(a1 + 40);
      if (v15 == 3)
      {
        if (v3 == v9 && v2 == v10 || (v16 = *(a1 + 24), v17 = *(a1 + 8), v18 = *a1, v19 = sub_269D9B280(), v3 = v18, v4 = v16, (v19 & 1) != 0))
        {
          v20 = v3;
          v84 = v3;
          if (v5 == v12 && v4 == v11 || (v16 = v4, v21 = sub_269D9B280(), v4 = v16, (v21 & 1) != 0))
          {
            v22 = v9;
            v79 = v9;
            v23 = v4;
            sub_269C9CC0C(v22, v10, v12, v11, v13, v14, 3u);
            sub_269C9CC0C(v20, v86, v5, v23, v83, v82, 3u);
            sub_269C9CC0C(v20, v86, v5, v23, v83, v82, 3u);
            sub_269C9CC0C(v79, v10, v12, v11, v13, v14, 3u);
            v77 = sub_269D99CD0();
            sub_269C9CB74(v84, v86, v5, v23, v83, v82, 3u);
            sub_269C9CB74(v79, v10, v12, v11, v13, v14, 3u);
            sub_269C9CB74(v79, v10, v12, v11, v13, v14, 3u);
            sub_269C9CB74(v84, v86, v5, v23, v83, v82, 3u);
            return v77 & 1;
          }

          v75 = v20;
          v76 = v5;
          v71 = v83;
          v72 = v82;
          sub_269C9CC0C(v75, v86, v76, v16, v83, v82, 3u);
          sub_269C9CC0C(v9, v10, v12, v11, v13, v14, 3u);
          v73 = v84;
          v74 = v86;
        }

        else
        {
          v69 = v17;
          v70 = v5;
          v71 = v83;
          v72 = v82;
          sub_269C9CC0C(v18, v69, v70, v16, v83, v82, 3u);
          sub_269C9CC0C(v9, v10, v12, v11, v13, v14, 3u);
          v73 = v18;
          v74 = v86;
        }

        sub_269C9CB74(v73, v74, v87, v16, v71, v72, 3u);
        v54 = v9;
        v55 = v10;
        v56 = v12;
        v57 = v11;
        v58 = v13;
        v59 = v14;
        v60 = 3;
        goto LABEL_41;
      }

      v85 = *a1;
      v52 = *a2;
      v53 = *(a1 + 24);

      v27 = v53;
      v9 = v52;

      goto LABEL_40;
    }

    if (v15 == 4)
    {
      v40 = *a2;
      v41 = *(a1 + 24);
      v42 = *(a1 + 32);
      v43 = *(a1 + 40);
      v44 = *a1;
      sub_269C9CC0C(v3, v2, *(a1 + 16), v4, v6, v43, 4u);
      sub_269C9CC0C(v40, v10, v12, v11, v13, v14, 4u);
      sub_269C9CB74(v44, v86, v87, v41, v42, v43, 4u);
      v33 = v40;
      v34 = v10;
      v35 = v12;
      v36 = v11;
      v37 = v13;
      v38 = v14;
      v39 = 4;
      goto LABEL_19;
    }

LABEL_20:
    v27 = *(a1 + 24);
    v83 = *(a1 + 32);
    v85 = *a1;
    v82 = *(a1 + 40);
    v46 = v3;
    goto LABEL_40;
  }

  if (v15 != 2)
  {
    goto LABEL_20;
  }

  v28 = *a2;
  v29 = *(a1 + 24);
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v32 = *a1;
  sub_269C9CC0C(v3, v2, *(a1 + 16), v4, v6, v31, 2u);
  sub_269C9CC0C(v28, v10, v12, v11, v13, v14, 2u);
  sub_269C9CB74(v32, v86, v87, v29, v30, v31, 2u);
  v33 = v28;
  v34 = v10;
  v35 = v12;
  v36 = v11;
  v37 = v13;
  v38 = v14;
  v39 = 2;
LABEL_19:
  sub_269C9CB74(v33, v34, v35, v36, v37, v38, v39);
  v45 = 1;
  return v45 & 1;
}

uint64_t _s13SleepHealthUI14SectionContentV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[4];
  v6 = a1[5];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v15 = a2[3];
  v16 = a1[3];
  v10 = a2[4];
  v11 = a2[5];
  if ((sub_269C980F4(a1[6], a2[6]) & 1) == 0)
  {
    goto LABEL_23;
  }

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  if (!v9)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v2)
  {
LABEL_11:
    if (!v7)
    {
      goto LABEL_16;
    }

    v12 = 0;
LABEL_32:

    return v12 & 1;
  }

  if (!v7)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_32;
  }

  if (v3 == v8 && v2 == v7)
  {

    goto LABEL_16;
  }

  v13 = sub_269D9B280();

  if (v13)
  {
LABEL_16:
    if (v6)
    {

      if (v11)
      {

        if (v5)
        {
          if (v10)
          {
            if (v16 == v15 && v5 == v10)
            {

              v12 = 1;
            }

            else
            {
              v12 = sub_269D9B280();
            }

            goto LABEL_32;
          }

          goto LABEL_29;
        }

LABEL_26:
        if (v10)
        {
          v12 = 0;
          goto LABEL_32;
        }

        goto LABEL_30;
      }

      if (v5)
      {
LABEL_29:
        v12 = 0;
        goto LABEL_32;
      }
    }

    else if (v11)
    {

      goto LABEL_26;
    }

LABEL_30:
    v12 = 1;
    return v12 & 1;
  }

LABEL_23:
  v12 = 0;
  return v12 & 1;
}

void sub_269C9CB74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3)
    {
      if (a7 != 4)
      {
        return;
      }

      goto LABEL_4;
    }
  }

  else if (a7)
  {
    if (a7 != 2)
    {
      return;
    }

LABEL_4:

    return;
  }
}

id sub_269C9CC0C(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 > 2u)
  {
    if (a7 != 3)
    {
      if (a7 != 4)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else
  {
    if (a7)
    {
      if (a7 != 2)
      {
        return result;
      }

LABEL_4:

      return result;
    }
  }
}

uint64_t type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText()
{
  result = qword_28034F1B0;
  if (!qword_28034F1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_269C9CD5C()
{
  result = qword_28034F160;
  if (!qword_28034F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F160);
  }

  return result;
}

unint64_t sub_269C9CDF8()
{
  result = qword_28034F168;
  if (!qword_28034F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F168);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepActivityConfigurationSectionBuilder(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SleepActivityConfigurationSectionBuilder(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_13SleepHealthUI15AnyTextProviderVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269C9CEF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269C9CF40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269C9CF9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269C9CFE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_269C9D05C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_269C9D0B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_269C9D148(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_269C9D190(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_269C9D1F8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_269C9D268()
{
  if (!qword_28034F178)
  {
    sub_269C9D5C8(255, &qword_28034F088, &type metadata for SectionItem, MEMORY[0x277D83940]);
    sub_269C98B8C();
    sub_269C98DAC();
    v0 = sub_269D9A0A0();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F178);
    }
  }
}

uint64_t sub_269C9D324(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_269C9D5C8(255, a2, a3, MEMORY[0x277D83D88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269C9D39C()
{
  result = qword_28034F1A0;
  if (!qword_28034F1A0)
  {
    sub_269C9D484(255, &qword_28034F1A8, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText, MEMORY[0x277CE0BD8], MEMORY[0x277CE0338]);
    sub_269C9E17C(&qword_28034F158, type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F1A0);
  }

  return result;
}

void sub_269C9D484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_269C9D518()
{
  sub_269D972A0();
  if (v0 <= 0x3F)
  {
    sub_269C9D5C8(319, &qword_28034E300, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_269C9D5C8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_269C9D67C()
{
  if (!qword_28034F1C8)
  {
    sub_269C9D7A8(255);
    sub_269C9DA44(255, &qword_28034F208, MEMORY[0x277CE0BD8], &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C3EEE8();
    sub_269C9E17C(&qword_28034F210, sub_269C9D7A8);
    sub_269C9DA98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F1C8);
    }
  }
}

void sub_269C9D7DC()
{
  if (!qword_28034F1D8)
  {
    sub_269C9D484(255, &qword_28034F1E0, sub_269C9D884, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C9D9B8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F1D8);
    }
  }
}

void sub_269C9D884()
{
  if (!qword_28034F1E8)
  {
    sub_269C9DA44(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_269C9D934();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F1E8);
    }
  }
}

unint64_t sub_269C9D934()
{
  result = qword_28034F1F8;
  if (!qword_28034F1F8)
  {
    sub_269C9DA44(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F1F8);
  }

  return result;
}

void sub_269C9D9B8()
{
  if (!qword_28034F200)
  {
    sub_269C9DA44(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F200);
    }
  }
}

void sub_269C9DA44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269C9DA98()
{
  result = qword_28034F218;
  if (!qword_28034F218)
  {
    sub_269C9DA44(255, &qword_28034F208, MEMORY[0x277CE0BD8], &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C9DB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F218);
  }

  return result;
}

unint64_t sub_269C9DB44()
{
  result = qword_28034F220;
  if (!qword_28034F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F220);
  }

  return result;
}

void sub_269C9DBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C9DC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269C9DCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C9DD60(uint64_t a1)
{
  type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText();

  return sub_269C9A318(a1);
}

unint64_t sub_269C9DDE0()
{
  result = qword_28034F238;
  if (!qword_28034F238)
  {
    sub_269C9D634(255);
    sub_269C9D7A8(255);
    sub_269C9DA44(255, &qword_28034F208, MEMORY[0x277CE0BD8], &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C3EEE8();
    sub_269C9E17C(&qword_28034F210, sub_269C9D7A8);
    sub_269C9DA98();
    swift_getOpaqueTypeConformance2();
    sub_269C9E17C(&qword_28034F240, sub_269C9DB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F238);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_269D972A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_269C9E054()
{
  v1 = *(type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_269C9A4C0(v2);
}

uint64_t sub_269C9E0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C9E114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C9E17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269C9E288(uint64_t a1, uint64_t a2)
{
  sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C9E318(uint64_t a1)
{
  sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269C9E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_269C9E438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269C9E498()
{
  if (!qword_28034F250)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F250);
    }
  }
}

unint64_t sub_269C9E4F4()
{
  result = qword_28034F258;
  if (!qword_28034F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F258);
  }

  return result;
}

uint64_t sub_269C9E548(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_269C9E55C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_269C9E570()
{
  result = qword_28034F260;
  if (!qword_28034F260)
  {
    sub_269C9DC30(255);
    sub_269C9DDE0();
    sub_269C9E17C(&qword_28034E0A0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F260);
  }

  return result;
}

id static UIAlertController.createOccurrenceChangeAlert(calendar:occurrence:weekdays:changes:sender:changeNextHandler:changeAllHandler:cancelHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *a4;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v18 = sub_269D98250();
  __swift_project_value_buffer(v18, qword_280351208);
  v19 = a2;
  v20 = sub_269D98230();
  v21 = sub_269D9AB80();

  if (os_log_type_enabled(v20, v21))
  {
    v49 = a1;
    v22 = swift_slowAlloc();
    v50 = a7;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v22 = 136446466;
    v23 = sub_269D9B4D0();
    v25 = v19;
    v26 = a3;
    v27 = a5;
    v28 = v17;
    v29 = a6;
    v30 = sub_269C2EACC(v23, v24, &aBlock);

    *(v22 + 4) = v30;
    a6 = v29;
    v17 = v28;
    a5 = v27;
    a3 = v26;
    v19 = v25;
    *(v22 + 12) = 2114;
    *(v22 + 14) = v25;
    *v47 = v25;
    v31 = v25;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] creating action sheet for occurrence: %{public}@", v22, 0x16u);
    sub_269C773DC(v47);
    a7 = v50;
    MEMORY[0x26D652460](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x26D652460](v48, -1, -1);
    v32 = v22;
    a1 = v49;
    MEMORY[0x26D652460](v32, -1, -1);
  }

  aBlock = v17;
  _sSo17UIAlertControllerC13SleepHealthUIE18changeAlertMessage8calendar10occurrence8weekdays7changesSS10Foundation8CalendarV_So27HKSPSleepScheduleOccurrenceCSo12HKSPWeekdaysVAC0pQ9EditModelC9ChangeSetVtFZ_0(a1, v19, a3, &aBlock);
  v33 = sub_269D9A5F0();

  v34 = [objc_opt_self() alertControllerWithTitle:0 message:v33 preferredStyle:0];

  v35 = [v34 popoverPresentationController];
  [v35 setSourceItem_];

  aBlock = v17;
  _sSo17UIAlertControllerC13SleepHealthUIE16changeNextAction10occurrence7changesSSSo27HKSPSleepScheduleOccurrenceC_AC0lM9EditModelC9ChangeSetVtFZ_0(v19, &aBlock);

  v36 = sub_269D9A5F0();

  v56 = a6;
  v57 = a7;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_269CECE18;
  v55 = &block_descriptor_9;
  v37 = _Block_copy(&aBlock);

  v38 = objc_opt_self();
  v39 = [v38 actionWithTitle:v36 style:0 handler:v37];
  _Block_release(v37);

  [v34 addAction_];
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();

  v40 = sub_269D9A5F0();

  v56 = a8;
  v57 = a9;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_269CECE18;
  v55 = &block_descriptor_3;
  v41 = _Block_copy(&aBlock);

  v42 = [v38 actionWithTitle:v40 style:0 handler:{v41, 0xE000000000000000}];
  _Block_release(v41);

  [v34 addAction_];
  sub_269D972C0();
  v43 = sub_269D9A5F0();

  if (a10)
  {
    v56 = a10;
    v57 = a11;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_269CECE18;
    v55 = &block_descriptor_6;
    v44 = _Block_copy(&aBlock);
  }

  else
  {
    v44 = 0;
  }

  v45 = [v38 &selRef_begin + 1];
  _Block_release(v44);

  [v34 addAction_];
  return v34;
}