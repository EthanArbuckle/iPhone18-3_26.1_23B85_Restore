uint64_t (*TTRITimeZoneOverrideTipController.visibleTimeZoneOverrideBarButton.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21D44C770;
}

uint64_t sub_21D44C770(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_21D44C548();
  }

  return result;
}

void *TTRITimeZoneOverrideTipController.__allocating_init(loggingPrefix:hostViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = 0;
  swift_unknownObjectWeakInit();
  v6[6] = 0;
  swift_unknownObjectWeakInit();
  v6[3] = a1;
  v6[4] = a2;
  swift_unknownObjectWeakAssign();

  return v6;
}

void *TTRITimeZoneOverrideTipController.init(loggingPrefix:hostViewController:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[2] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = 0;
  swift_unknownObjectWeakInit();
  v3[3] = a1;
  v3[4] = a2;
  swift_unknownObjectWeakAssign();

  return v3;
}

uint64_t sub_21D44C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C460);
  v4[10] = swift_task_alloc();
  v5 = sub_21DBF8EFC();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C468);
  v4[15] = swift_task_alloc();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C470);
  v4[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C478);
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C480);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = sub_21DBFA84C();
  v4[25] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v4[26] = v9;
  v4[27] = v8;

  return MEMORY[0x2822009F8](sub_21D44CB00, v9, v8);
}

uint64_t sub_21D44CB00()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_21D44DA88();
  sub_21DBF8D8C();
  MEMORY[0x223D44910](v3);
  sub_21D0D0F1C(&qword_27CE5C490, &qword_27CE5C468);
  sub_21DBFA9BC();
  sub_21DBFC17C();
  (*(v2 + 8))(v1, v3);
  sub_21DBFC18C();
  swift_beginAccess();
  v4 = sub_21DBFA83C();
  v0[28] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_21DBFA7CC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[29] = v5;
  v0[30] = v7;

  return MEMORY[0x2822009F8](sub_21D44CCA8, v5, v7);
}

uint64_t sub_21D44CCA8()
{
  v1 = v0[28];
  v0[31] = sub_21DBFC16C();
  sub_21D0D0F1C(&qword_27CE5C498, &qword_27CE5C470);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_21D44CDAC;
  v3 = v0[10];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x282200310](v3, v1, v4);
}

uint64_t sub_21D44CDAC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_21D44D084;
  }

  else
  {
    (*(v2 + 248))();
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_21D44CED4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D44CED4()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_21D44DADC(v3);
    v4 = v0[26];
    v5 = v0[27];

    return MEMORY[0x2822009F8](sub_21D44D420, v4, v5);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = sub_21DBFC17C();
    v0[33] = v7;
    v11 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[34] = v8;
    *v8 = v0;
    v8[1] = sub_21D44D09C;
    v9 = v0[13];

    return (v11)(v0 + 35, v9);
  }
}

uint64_t sub_21D44D09C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  *(v1 + 281) = *(v1 + 280);
  v5 = *(v1 + 240);
  v6 = *(v1 + 232);

  return MEMORY[0x2822009F8](sub_21D44D248, v6, v5);
}

uint64_t sub_21D44D248()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21D44D2AC, v1, v2);
}

uint64_t sub_21D44D2AC()
{
  if ((sub_21DBFA98C() & 1) != 0 || (Strong = swift_weakLoadStrong()) == 0)
  {
    (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    sub_21D44D4F4(Strong, *(v0 + 281));

    v2 = sub_21DBFA83C();
    *(v0 + 224) = v2;
    if (v2)
    {
      swift_getObjectType();
      v3 = sub_21DBFA7CC();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    *(v0 + 232) = v3;
    *(v0 + 240) = v5;

    return MEMORY[0x2822009F8](sub_21D44CCA8, v3, v5);
  }
}

uint64_t sub_21D44D420()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

void sub_21D44D4F4(uint64_t a1, char a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = v3[2];
  if (v5)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      if (a2)
      {
        v8 = qword_27CE56760;
        v9 = v5;
        if (v8 != -1)
        {
          swift_once();
        }

        v10 = sub_21DBF84BC();
        __swift_project_value_buffer(v10, qword_27CE5C448);

        v11 = sub_21DBF84AC();
        v12 = sub_21DBFAEDC();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v31[0] = v14;
          *v13 = 136315138;
          *(v13 + 4) = sub_21D0CDFB4(v3[3], v3[4], v31);
          _os_log_impl(&dword_21D0C9000, v11, v12, "TTRITimeZoneOverrideTipController(%s): display tip", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v14);
          MEMORY[0x223D46520](v14, -1, -1);
          MEMORY[0x223D46520](v13, -1, -1);
        }

        sub_21DBF8DDC();
        v32 = &type metadata for TTRTipTimeZoneOverride;
        v33 = sub_21D44DA88();
        v15 = v9;
        v16 = sub_21DBF8DEC();
        v17 = sub_21DBF9A2C();
        v32 = MEMORY[0x277CE0F78];
        v33 = MEMORY[0x277CE0F60];
        v31[0] = v17;
        sub_21DBF8DCC();
        v18 = [v7 viewIfLoaded];
        v19 = [v18 window];

        if (v19)
        {

          [v7 presentViewController:v16 animated:1 completion:0];
          swift_unknownObjectWeakAssign();
        }

        else
        {
        }
      }

      else
      {
        v20 = swift_unknownObjectWeakLoadStrong();
        if (v20)
        {
          v21 = v20;
          v22 = qword_27CE56760;
          v23 = v5;
          if (v22 != -1)
          {
            swift_once();
          }

          v24 = sub_21DBF84BC();
          __swift_project_value_buffer(v24, qword_27CE5C448);

          v25 = sub_21DBF84AC();
          v26 = sub_21DBFAEDC();

          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v31[0] = v28;
            *v27 = 136315138;
            *(v27 + 4) = sub_21D0CDFB4(v3[3], v3[4], v31);
            _os_log_impl(&dword_21D0C9000, v25, v26, "TTRITimeZoneOverrideTipController(%s): hide tip", v27, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v28);
            MEMORY[0x223D46520](v28, -1, -1);
            MEMORY[0x223D46520](v27, -1, -1);
          }

          v29 = [v21 presentingViewController];
          if (v29)
          {
            v30 = v29;
            [v29 dismissViewControllerAnimated:1 completion:0];
          }

          swift_unknownObjectWeakAssign();
        }

        else
        {
        }
      }
    }
  }
}

uint64_t TTRITimeZoneOverrideTipController.deinit()
{

  MEMORY[0x223D46650](v0 + 40);

  MEMORY[0x223D46650](v0 + 56);
  return v0;
}

uint64_t TTRITimeZoneOverrideTipController.__deallocating_deinit()
{

  MEMORY[0x223D46650](v0 + 40);

  MEMORY[0x223D46650](v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_21D44D9D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D44C888(a1, v4, v5, v6);
}

unint64_t sub_21D44DA88()
{
  result = qword_27CE5C488;
  if (!qword_27CE5C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C488);
  }

  return result;
}

uint64_t sub_21D44DADC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21D44DB44()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v3)
  {
    v3 = [v2 magentaColor];
  }

  qword_27CE5C4A0 = v3;
}

void sub_21D44DC50()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v3)
  {
    v3 = [v2 magentaColor];
  }

  qword_27CE5C4A8 = v3;
}

void sub_21D44DD5C()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v3)
  {
    v3 = [v2 magentaColor];
  }

  qword_280D1ACB8 = v3;
}

void sub_21D44DE70()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (!v3)
  {
    v3 = [v2 magentaColor];
  }

  qword_280D173F0 = v3;
}

id static TTRCommonAsset.Color.RowAction.tomorrow.getter()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v3)
  {
    return v3;
  }

  v5 = [v2 magentaColor];

  return v5;
}

id static TTRCommonAsset.Color.RowAction.weekend.getter()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v3)
  {
    return v3;
  }

  v5 = [v2 magentaColor];

  return v5;
}

id static TTRCommonAsset.Color.RowAction.customDateAndTime.getter()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v3)
  {
    return v3;
  }

  v5 = [v2 magentaColor];

  return v5;
}

id static TTRCommonAsset.Color.RowAction.indentOrOutdent.getter()
{
  v0 = [objc_opt_self() ttr_systemBrownColor];

  return v0;
}

id static TTRCommonAsset.Color.RowAction.details.getter()
{
  if (qword_280D173D8 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21CE0;
  v1 = sub_21DBFA12C();
  v2 = objc_opt_self();
  v3 = [v2 colorNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  if (v3)
  {
    return v3;
  }

  v5 = [v2 magentaColor];

  return v5;
}

id static TTRCommonAsset.Color.RowAction.move.getter()
{
  v0 = [objc_opt_self() ttr_systemIndigoColor];

  return v0;
}

void sub_21D44E548(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v5 = qword_280D21C98;
  v6 = sub_21DBFA12C();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  *a4 = v7;
}

void sub_21D44E6C0()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_280D168B0 = v4;
}

void sub_21D44E888()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C4D8 = v3;
}

void sub_21D44EA3C()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C500 = v3;
}

void sub_21D44EAE0()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C508 = v3;
}

void sub_21D44EBCC()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C518 = v3;
}

void sub_21D44EC70()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C520 = v3;
}

void sub_21D44ED54()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C530 = v3;
}

void sub_21D44EE88()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C538 = v3;
}

void sub_21D44EFFC()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C558 = v3;
}

void sub_21D44F0A0()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C560 = v3;
}

void sub_21D44F394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_21DBFA12C();
  v6 = [objc_opt_self() _systemImageNamed_];

  *a4 = v6;
}

id sub_21D44F420(void *a1, id *a2)
{
  if (*a1 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  v2 = *a2;
  v3 = *a2;
  return v2;
}

void sub_21D44F468()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C5A0 = v3;
}

void sub_21D44F50C()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C5A8 = v3;
}

void sub_21D44F5B0()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C5B0 = v3;
}

void sub_21D44F654()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C5B8 = v3;
}

void sub_21D44F744()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_280D168E0 = v3;
}

void sub_21D44F7E8()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C5C8 = v3;
}

void sub_21D44F88C()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_27CE5C5D0 = v3;
}

void sub_21D44F930()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_27CE5C5D8 = v4;
}

void sub_21D44FAB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_21DBFA12C();
  v6 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v6);
  v8 = v7;

  *a4 = v8;
}

void sub_21D44FB30()
{
  v0 = sub_21DBFA12C();
  v1 = [objc_opt_self() _systemImageNamed_];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v1);
  v3 = v2;

  qword_280D168F8 = v3;
}

uint64_t static TTRCommonAsset.Image.PrivacyWarmingSheet.notification_12hr.getter()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

uint64_t static TTRCommonAsset.Image.PrivacyWarmingSheet.notification_24hr.getter()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

uint64_t static TTRCommonAsset.Image.PrivacyWarmingSheet.notification_faceID.getter()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

uint64_t static TTRCommonAsset.Image.PrivacyWarmingSheet.notification_touchID.getter()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  return v4;
}

uint64_t sub_21D44FEC8(char a1)
{
  if (a1)
  {
    Locale.uses12HourTime.getter();
    if (qword_280D16860 != -1)
    {
      swift_once();
    }

    v1 = qword_280D21C98;
  }

  else if (AXDeviceHasHomeButton())
  {
    if (qword_280D16860 != -1)
    {
      swift_once();
    }

    v1 = qword_280D21C98;
  }

  else
  {
    if (qword_280D16860 != -1)
    {
      swift_once();
    }

    v1 = qword_280D21C98;
  }

  v2 = sub_21DBFA12C();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v3);
  v5 = v4;

  return v5;
}

uint64_t sub_21D4500CC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C5F0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C5F0);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRPostponementWeekend.dateChangeType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TTRPostponementWeekend(0) + 20);

  return sub_21D450204(v3, a1);
}

uint64_t sub_21D450204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *static TTRPostponementCalculator.allowedPostponementTypes(relativeTo:now:calendar:)(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v86 = a2;
  v5 = sub_21DBF5A2C();
  v78 = *(v5 - 8);
  v79 = v5;
  MEMORY[0x28223BE20](v5);
  v76 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C608);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v65 - v8;
  v9 = sub_21DBF5A0C();
  v74 = *(v9 - 8);
  v75 = v9;
  MEMORY[0x28223BE20](v9);
  v73 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v65 - v12;
  v14 = sub_21DBF5C4C();
  v80 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v81 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF509C();
  v83 = *(v16 - 8);
  v84 = v16;
  MEMORY[0x28223BE20](v16);
  v82 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v87 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  v26 = sub_21DBF563C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v72 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v65 - v30;
  v85 = a3;
  sub_21DBF597C();
  v32 = *(v27 + 48);
  if (v32(v25, 1, v26) == 1)
  {
    sub_21D0CF7E0(v25, &qword_27CE58D68);
    if (qword_27CE568E8 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_27CE5C5F0);
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_21D0C9000, v34, v35, "TTRPostponementCalculator: Unable to retrieve a date from dueDateComponents for allowedPostponementTypes", v36, 2u);
      MEMORY[0x223D46520](v36, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    v68 = v32;
    v69 = v26;
    v70 = v31;
    v71 = v27;
    v66 = *(v27 + 32);
    v66(v31, v25, v26);
    v67 = a1;
    sub_21DBF507C();
    v38 = v80;
    v39 = *(v80 + 48);
    if (v39(v13, 1, v14) == 1)
    {
      v40 = [objc_opt_self() defaultTimeZone];
      v41 = v81;
      sub_21DBF5C2C();

      if (v39(v13, 1, v14) != 1)
      {
        sub_21D0CF7E0(v13, &unk_27CE60DB0);
      }
    }

    else
    {
      v41 = v81;
      (*(v38 + 32))(v81, v13, v14);
    }

    v42 = v86;
    v43 = v87;
    sub_21DBF58BC();
    (*(v38 + 8))(v41, v14);
    type metadata accessor for TTRReminderEditor();
    v44 = v82;
    static TTRReminderEditor.tomorrowDueDateComponents(now:)(v82);
    sub_21DBF597C();
    v45 = v69;
    if (v68(v22, 1, v69) == 1)
    {
      sub_21D0CF7E0(v22, &qword_27CE58D68);
      v47 = v70;
      v46 = v71;
    }

    else
    {
      v48 = v72;
      v66(v72, v22, v45);
      v50 = v73;
      v49 = v74;
      v51 = v75;
      (*(v74 + 104))(v73, *MEMORY[0x277CC9968], v75);
      v52 = v44;
      v53 = v45;
      v54 = v42;
      v55 = v70;
      v85 = sub_21DBF59CC();
      (*(v49 + 8))(v50, v51);
      v47 = v55;
      v42 = v54;
      v45 = v53;
      v44 = v52;
      v46 = v71;
      v56 = *(v71 + 8);
      v57 = v48;
      v43 = v87;
      v56(v57, v45);
      if (v85 == -1)
      {
        v63 = v84;
        v64 = *(v83 + 8);
        v64(v44, v84);
        v64(v43, v63);
        v56(v47, v45);
        return &unk_282EA6CA8;
      }
    }

    v58 = v76;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v59 = v77;
    static TTRPostponementCalculator.postponementWeekendType(relativeTo:now:calendar:)(v67, v42, v58, v77);
    (*(v78 + 8))(v58, v79);
    v60 = type metadata accessor for TTRPostponementWeekend(0);
    LODWORD(v58) = (*(*(v60 - 8) + 48))(v59, 1, v60);
    sub_21D0CF7E0(v59, &qword_27CE5C608);
    v61 = v84;
    v62 = *(v83 + 8);
    v62(v44, v84);
    v62(v43, v61);
    (*(v46 + 8))(v47, v45);
    if (v58 == 1)
    {
      return MEMORY[0x277D84F90];
    }

    else
    {
      return &unk_282EA6CD0;
    }
  }
}

uint64_t static TTRPostponementCalculator.postponementWeekendType(relativeTo:now:calendar:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, void (*a3)(char *, uint64_t)@<X2>, _BYTE *a4@<X8>)
{
  v152 = a2;
  v154 = a4;
  v132 = sub_21DBF5A2C();
  v146 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v141 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_21DBF509C();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v140 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v139 = &v120 - v9;
  MEMORY[0x28223BE20](v10);
  v142 = &v120 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v12 - 8);
  v126 = &v120 - v13;
  v145 = sub_21DBF5C4C();
  v151 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v131 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v138 = &v120 - v16;
  v17 = sub_21DBF58EC();
  v149 = *(v17 - 8);
  v150 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C610);
  MEMORY[0x28223BE20](v20 - 8);
  v144 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v135 = (&v120 - v23);
  MEMORY[0x28223BE20](v24);
  v26 = &v120 - v25;
  v27 = sub_21DBF4D0C();
  v153 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v143 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v147 = &v120 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v31 - 8);
  v130 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v120 - v34;
  v36 = sub_21DBF563C();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v129 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v148 = &v120 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v120 - v42;
  MEMORY[0x28223BE20](v44);
  v46 = &v120 - v45;
  v127 = a1;
  sub_21DBF597C();
  v47 = v36;
  v48 = v37;
  v50 = *(v37 + 48);
  v49 = v37 + 48;
  v128 = v50;
  if (v50(v35, 1, v47) == 1)
  {
    v51 = v154;
    sub_21D0CF7E0(v35, &qword_27CE58D68);
    if (qword_27CE568E8 != -1)
    {
      swift_once();
    }

    v52 = sub_21DBF84BC();
    __swift_project_value_buffer(v52, qword_27CE5C5F0);
    v53 = sub_21DBF84AC();
    v54 = sub_21DBFAEBC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_21D0C9000, v53, v54, "TTRPostponementCalculator: Unable to retrieve a date from dueDateComponents for postponementWeekendType", v55, 2u);
      MEMORY[0x223D46520](v55, -1, -1);
    }

    v56 = type metadata accessor for TTRPostponementWeekend(0);
    v57 = *(*(v56 - 8) + 56);
    v58 = v51;
    return v57(v58, 1, 1, v56);
  }

  v124 = v48;
  v59 = *(v48 + 32);
  v136 = v47;
  v137 = v46;
  v123 = v48 + 32;
  v122 = v59;
  v59(v46, v35, v47);
  sub_21DBF595C();
  v60 = v153;
  v61 = v153[6];
  v62 = v61(v26, 1, v27);
  v125 = v61;
  if (v62 == 1)
  {
    sub_21D0CF7E0(v26, &qword_27CE5C610);
    v63 = *MEMORY[0x277CC98E8];
    v64 = v149;
    v65 = v150;
    (*(v149 + 104))(v19, v63, v150);
    v66 = a3;
    v67 = v135;
    sub_21DBF587C();
    (*(v64 + 8))(v19, v65);
    if (v125(v67, 1, v27) == 1)
    {
      (*(v124 + 8))(v137, v136);
LABEL_14:
      sub_21D0CF7E0(v67, &qword_27CE5C610);
LABEL_15:
      v56 = type metadata accessor for TTRPostponementWeekend(0);
      v57 = *(*(v56 - 8) + 56);
      v58 = v154;
      return v57(v58, 1, 1, v56);
    }

    v152 = v66;
    v121 = v49;
    v68 = v147;
    v69 = v153;
    v135 = v153[4];
    v135(v147, v67, v27);
  }

  else
  {
    v152 = a3;
    v121 = v49;
    v68 = v147;
    v135 = v60[4];
    (v135)();
    v63 = *MEMORY[0x277CC98E8];
    v69 = v60;
  }

  sub_21DBF4CDC();
  v70 = v149;
  v71 = v63;
  v72 = v150;
  (*(v149 + 104))(v19, v71, v150);
  v67 = v144;
  sub_21DBF587C();
  (*(v70 + 8))(v19, v72);
  v74 = v124 + 8;
  v73 = *(v124 + 8);
  v75 = v136;
  v73(v43, v136);
  if (v125(v67, 1, v27) == 1)
  {
    (v69[1])(v68, v27);
    v73(v137, v75);
    goto LABEL_14;
  }

  v152 = v73;
  v77 = v143;
  v135(v143, v67, v27);
  v78 = v137;
  if ((sub_21DBF4CEC() & 1) == 0)
  {
    sub_21DBF4CDC();
    v79 = v78;
    v80 = sub_21DBF55DC();
    v81 = v136;
    v82 = v152;
    v152(v43, v136);
    if (v80)
    {
      v150 = v27;
      LODWORD(v144) = 0;
      goto LABEL_21;
    }

    sub_21DBF4CDC();
    v118 = sub_21DBF55DC();
    v82(v43, v81);
    if ((v118 & 1) == 0)
    {
      v119 = v69[1];
      v119(v77, v27);
      v119(v68, v27);
      v82(v79, v81);
      goto LABEL_15;
    }
  }

  v150 = v27;
  LODWORD(v144) = 1;
LABEL_21:
  sub_21DBF4CDC();
  v83 = v126;
  sub_21DBF507C();
  v84 = v151;
  v85 = *(v151 + 48);
  v86 = v145;
  if (v85(v83, 1, v145) == 1)
  {
    v87 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v85(v83, 1, v86) != 1)
    {
      sub_21D0CF7E0(v83, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v84 + 32))(v138, v83, v86);
  }

  v88 = v141;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A8A8);
  v89 = sub_21DBF5A0C();
  v90 = *(v89 - 8);
  v91 = *(v90 + 72);
  v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_21DC08D10;
  v94 = v93 + v92;
  v95 = *(v90 + 104);
  v95(v94, *MEMORY[0x277CC9988], v89);
  v95(v94 + v91, *MEMORY[0x277CC9998], v89);
  v95(v94 + 2 * v91, *MEMORY[0x277CC9968], v89);
  sub_21D1D0F50(v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_21DBF58DC();

  v97 = v146 + 8;
  v96 = *(v146 + 8);
  v98 = v132;
  v96(v88, v132);
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v99 = [objc_opt_self() defaultTimeZone];
  v100 = v131;
  sub_21DBF5C2C();

  sub_21DBF58BC();
  v101 = *(v151 + 8);
  v151 += 8;
  v135 = v101;
  (v101)(v100, v145);
  v96(v88, v98);
  sub_21DBF4F5C();
  sub_21DBF4F6C();
  sub_21DBF4FCC();
  sub_21DBF4FDC();
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v102 = v130;
  sub_21DBF597C();
  v146 = v97;
  v96(v88, v98);
  v103 = v136;
  v104 = v128;
  v105 = v128(v102, 1, v136);
  v149 = v74;
  if (v105 == 1)
  {
    v106 = v129;
    (*(v124 + 16))(v129, v148, v103);
    v107 = v104(v102, 1, v103);
    v108 = v154;
    v109 = v134;
    if (v107 != 1)
    {
      sub_21D0CF7E0(v102, &qword_27CE58D68);
    }
  }

  else
  {
    v106 = v129;
    v122(v129, v102, v103);
    v108 = v154;
    v109 = v134;
  }

  v110 = v141;
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  v111 = v138;
  sub_21DBF58BC();
  v96(v110, v98);
  v112 = v152;
  v152(v106, v103);
  v113 = v133;
  v114 = *(v133 + 8);
  v114(v140, v109);
  v114(v139, v109);
  (v135)(v111, v145);
  v112(v148, v103);
  v115 = v153[1];
  v116 = v150;
  v115(v143, v150);
  v115(v147, v116);
  v112(v137, v103);
  v117 = type metadata accessor for TTRPostponementWeekend(0);
  (*(v113 + 32))(&v108[*(v117 + 20)], v142, v109);
  type metadata accessor for TTRDateChangeType();
  swift_storeEnumTagMultiPayload();
  *v108 = v144;
  return (*(*(v117 - 8) + 56))(v108, 0, 1, v117);
}

uint64_t sub_21D451C40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(char *)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v24[1] = a1;
  v24[2] = a2;
  v27 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_21DBF5C4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = sub_21DBF509C();
  v12 = *(v24[0] - 8);
  MEMORY[0x28223BE20](v24[0]);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  sub_21DBF507C();
  v18 = *(v9 + 48);
  if (v18(v7, 1, v8) == 1)
  {
    v19 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if (v18(v7, 1, v8) != 1)
    {
      sub_21D0CF7E0(v7, &unk_27CE60DB0);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  sub_21DBF58BC();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for TTRReminderEditor();
  v25(v17);
  v20 = v24[0];
  (*(v12 + 8))(v17, v24[0]);
  v21 = v27;
  (*(v12 + 32))(v27, v14, v20);
  type metadata accessor for TTRDateChangeType();
  swift_storeEnumTagMultiPayload();
  v22 = v26(0);
  return (*(*(v22 - 8) + 56))(v21, 0, 1, v22);
}

uint64_t static TTRPostponementCalculator.postponementWeekdayType(relativeTo:now:calendar:)@<X0>(unsigned int (*a1)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF509C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRReminderEditor();
  static TTRReminderEditor.startOfWeekDueDateComponents(with:now:)(a1, v7);
  (*(v5 + 32))(a2, v7, v4);
  type metadata accessor for TTRDateChangeType();
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for TTRPostponementWeekday(0);
  return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
}

char *initializeBufferWithCopyOfBuffer for TTRPostponementWeekend(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *v4 = *a2;
    v4 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = type metadata accessor for TTRDateChangeType();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      memcpy(&v4[v6], &a2[v6], *(*(v7 - 8) + 64));
    }

    else
    {
      v8 = sub_21DBF509C();
      (*(*(v8 - 8) + 16))(&v4[v6], &a2[v6], v8);
      swift_storeEnumTagMultiPayload();
    }
  }

  return v4;
}

uint64_t destroy for TTRPostponementWeekend(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  type metadata accessor for TTRDateChangeType();
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v5 = sub_21DBF509C();
    v6 = *(*(v5 - 8) + 8);

    return v6(a1 + v3, v5);
  }

  return result;
}

_BYTE *initializeWithCopy for TTRPostponementWeekend(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TTRDateChangeType();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 16))(&a1[v5], &a2[v5], v7);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *assignWithCopy for TTRPostponementWeekend(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v5 = *(a3 + 20);
    sub_21D1A94E8(&a1[v5]);
    v6 = type metadata accessor for TTRDateChangeType();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
    }

    else
    {
      v7 = sub_21DBF509C();
      (*(*(v7 - 8) + 16))(&a1[v5], &a2[v5], v7);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a1;
}

_BYTE *initializeWithTake for TTRPostponementWeekend(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = type metadata accessor for TTRDateChangeType();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
  }

  else
  {
    v7 = sub_21DBF509C();
    (*(*(v7 - 8) + 32))(&a1[v5], &a2[v5], v7);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *assignWithTake for TTRPostponementWeekend(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    v5 = *(a3 + 20);
    sub_21D1A94E8(&a1[v5]);
    v6 = type metadata accessor for TTRDateChangeType();
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      memcpy(&a1[v5], &a2[v5], *(*(v6 - 8) + 64));
    }

    else
    {
      v7 = sub_21DBF509C();
      (*(*(v7 - 8) + 32))(&a1[v5], &a2[v5], v7);
      swift_storeEnumTagMultiPayload();
    }
  }

  return a1;
}

uint64_t sub_21D452800()
{
  result = type metadata accessor for TTRDateChangeType();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_21D4528E8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v7 = *a2;
    *a1 = *a2;
    a1 = (v7 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(v4 - 8);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v8 = sub_21DBF509C();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(v6 + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_21D452A50(uint64_t a1)
{
  type metadata accessor for TTRDateChangeType();
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    v3 = sub_21DBF509C();
    v4 = *(*(v3 - 8) + 8);

    return v4(a1, v3);
  }

  return result;
}

void *sub_21D452ADC(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v5 = sub_21DBF509C();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_21D452C04(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D1A94E8(a1);
  v4 = type metadata accessor for TTRDateChangeType();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = sub_21DBF509C();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

void *sub_21D452D3C(void *a1, const void *a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *(*(v4 - 8) + 64);

    return memcpy(a1, a2, v7);
  }

  else
  {
    v5 = sub_21DBF509C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

void *sub_21D452E64(void *a1, const void *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D1A94E8(a1);
  v4 = type metadata accessor for TTRDateChangeType();
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v5 = sub_21DBF509C();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v7 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v7);
}

uint64_t __swift_get_extra_inhabitant_index_3Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_4Tm(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRDateChangeType();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D4530A0()
{
  result = type metadata accessor for TTRDateChangeType();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D453160()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C648);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C648);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D453228()
{
  v1 = v0;
  v2 = sub_21DBF563C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  if (*(v0 + 56) == 2)
  {
    *(v0 + 34) = 0;
    return;
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  v11 = *(v0 + 72);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  v14 = [v13 displayDate];

  sub_21DBF560C();
  if (!v14)
  {
    goto LABEL_7;
  }

  if (!v9)
  {

LABEL_7:
    (*(v3 + 8))(v8, v2);
    v16 = 0;
    goto LABEL_8;
  }

  type metadata accessor for TTREarlyAlertUtils();
  v15 = v14;
  sub_21D3FCBA0(v10, v9, v15, v5);
  v16 = sub_21DBF55DC();

  v17 = *(v3 + 8);
  v17(v5, v2);
  v17(v8, v2);
LABEL_8:
  *(v1 + 34) = v16 & 1;
}

uint64_t sub_21D45340C(int a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v40 - v5;
  v6 = sub_21DBF563C();
  v43 = *(v6 - 1);
  v44 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF509C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - v16;
  v18 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v20 = (*(v18 + 16))(ObjectType, v18);
  v21 = [v20 dueDateComponents];

  if (v21)
  {
    sub_21DBF4EFC();

    (*(v10 + 56))(v17, 0, 1, v9);
    result = sub_21D0CF7E0(v17, &qword_27CE58D60);
    if (a1)
    {
      return result;
    }

    if (!*(v2 + 32))
    {
      *(v2 + 32) = 3;
    }

    *(v2 + 33) = 0;
  }

  else
  {
    (*(v10 + 56))(v17, 1, 1, v9);
    result = sub_21D0CF7E0(v17, &qword_27CE58D60);
    if ((a1 & 1) == 0)
    {
      return result;
    }

    *(v2 + 32) = 0;
  }

  v40 = v9;
  v41 = a1;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  type metadata accessor for TTRReminderEditor();
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  static TTRReminderEditor.defaultDueDateComponents(from:)(v12);
  (*(v43 + 8))(v8, v44);
  v23 = sub_21DBF4EDC();
  v24 = [v23 rem_allDayDateComponents];

  v25 = v45;
  sub_21DBF4EFC();

  v26 = v40;
  v43 = *(v10 + 8);
  (v43)(v12, v40);
  v44 = objc_opt_self();
  v27 = sub_21DBFA12C();

  v28 = v25;
  v29 = v26;
  (*(v10 + 16))(v12, v28, v26);
  v30 = (*(v10 + 80) + 25) & ~*(v10 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  v32 = v41;
  *(v31 + 24) = v41 & 1;
  (*(v10 + 32))(v31 + v30, v12, v29);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_21D457E78;
  *(v33 + 24) = v31;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_67;
  v34 = _Block_copy(aBlock);

  [v44 withActionName:v27 block:v34];

  _Block_release(v34);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    if (v32)
    {
      v35 = sub_21DBFA89C();
      v36 = v42;
      (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
      sub_21DBFA84C();

      v37 = sub_21DBFA83C();
      v38 = swift_allocObject();
      v39 = MEMORY[0x277D85700];
      v38[2] = v37;
      v38[3] = v39;
      v38[4] = v2;
      sub_21D1B5178(0, 0, v36, &unk_21DC165F0, v38);
    }

    (v43)(v45, v29);
  }

  return result;
}

uint64_t sub_21D453ACC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = *(a1 + 72);
  v10 = sub_21DBF509C();
  v11 = *(v10 - 8);
  v12 = v11;
  if (a2)
  {
    (*(v11 + 16))(v8, a3, v10);
    (*(v12 + 56))(v8, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v8, 1, 1, v10);
  }

  ObjectType = swift_getObjectType();
  (*(v9 + 144))(v8, ObjectType, v9);
  return sub_21D0CF7E0(v8, &qword_27CE58D60);
}

uint64_t sub_21D453C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D453CC4, v6, v5);
}

uint64_t sub_21D453CC4()
{
  *(v0 + 56) = sub_21DBFA83C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21D453D84;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D453D84()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D453EC0, v1, v0);
}

uint64_t sub_21D453EC0()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_21D4592D0, v1, v2);
}

void sub_21D453F24(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48[-v4];
  v5 = sub_21DBF563C();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_21DBF509C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v53 = &v48[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v48[-v12];
  MEMORY[0x28223BE20](v14);
  v16 = &v48[-v15];
  MEMORY[0x28223BE20](v17);
  v54 = v1;
  v55 = &v48[-v18];
  v19 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v21 = (*(v19 + 16))(ObjectType, v19);
  v22 = [v21 dueDateComponents];

  if (!v22)
  {
    if ((a1 & 1) == 0)
    {
      return;
    }

    v23 = v9;
    v49 = a1;
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    static TTRReminderEditor.defaultDueDateComponents(from:)(v55);
    (*(v51 + 8))(v7, v52);
    v27 = v54;
    v28 = v8;
    goto LABEL_8;
  }

  sub_21DBF4EFC();

  v23 = v9;
  (*(v9 + 32))(v16, v13, v8);
  v24 = sub_21DBF4EDC();
  v25 = [v24 rem_isAllDayDateComponents];

  v26 = (v9 + 8);
  if ((v25 ^ a1))
  {
    (*v26)(v16, v8);
    return;
  }

  v49 = a1;
  if (a1)
  {
    type metadata accessor for TTRReminderEditor();
    _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
    static TTRReminderEditor.defaultDueDateComponentsSettingToNextFullHour(dateComponents:now:)(v16, v55);
    (*(v51 + 8))(v7, v52);
    v28 = v8;
    (*v26)(v16, v8);
    v27 = v54;
LABEL_8:
    v29 = (v27 + 32);
    v30 = 1;
    v31 = v23;
    goto LABEL_9;
  }

  v46 = sub_21DBF4EDC();
  v47 = [v46 rem_allDayDateComponents];

  sub_21DBF4EFC();
  v28 = v8;
  (*v26)(v16, v8);
  v27 = v54;
  v29 = (v54 + 32);
  v31 = v23;
  if (*(v54 + 32) != 1)
  {
    goto LABEL_10;
  }

  v30 = 3;
LABEL_9:
  *v29 = v30;
LABEL_10:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v32 = objc_opt_self();
  v33 = sub_21DBFA12C();

  v34 = v53;
  (*(v31 + 16))(v53, v55, v28);
  v35 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v36 = v35 + v10;
  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  (*(v31 + 32))(v37 + v35, v34, v28);
  v38 = v49;
  *(v37 + v36) = v49 & 1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_21D457D40;
  *(v39 + 24) = v37;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v39;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_52;
  v40 = _Block_copy(aBlock);

  [v32 withActionName:v33 block:v40];

  _Block_release(v40);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
  }

  else
  {
    if (v38)
    {
      v41 = sub_21DBFA89C();
      v42 = v50;
      (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
      sub_21DBFA84C();

      v43 = sub_21DBFA83C();
      v44 = swift_allocObject();
      v45 = MEMORY[0x277D85700];
      v44[2] = v43;
      v44[3] = v45;
      v44[4] = v27;
      sub_21D1B5178(0, 0, v42, &unk_21DC165E0, v44);
    }

    (*(v31 + 8))(v55, v28);
  }
}

uint64_t sub_21D454638(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + 72);
  ObjectType = swift_getObjectType();
  v11 = sub_21DBF509C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v8, a2, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v9 + 144))(v8, ObjectType, v9);
  result = sub_21D0CF7E0(v8, &qword_27CE58D60);
  if ((a3 & 1) == 0)
  {
    return (*(v9 + 168))(0, ObjectType, v9);
  }

  return result;
}

uint64_t sub_21D4547B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D45484C, v6, v5);
}

uint64_t sub_21D45484C()
{
  *(v0 + 56) = sub_21DBFA83C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_21D45490C;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D45490C()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D454A48, v1, v0);
}

uint64_t sub_21D454A48()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return MEMORY[0x2822009F8](sub_21D454AAC, v1, v2);
}

uint64_t sub_21D454AAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D454B0C(uint64_t a1)
{
  v73 = a1;
  v2 = sub_21DBF5C4C();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  v69 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_21DBF509C();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v66 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v70 = &v63[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C668);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v63[-v8];
  v10 = type metadata accessor for TTRIReminderDetailDueDateModificationInput();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v63[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v63[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v75 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v76 = v21;
  v77 = &v63[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22);
  v24 = &v63[-v23];
  v25 = *(v1 + 72);
  v78 = v1;
  ObjectType = swift_getObjectType();
  v27 = (*(v25 + 16))(ObjectType, v25);
  v28 = [v27 timeZone];

  sub_21DBFA16C();
  v29 = v10;
  sub_21DBF5BBC();

  sub_21D0D3954(v73, v9, &qword_27CE5C668);
  v30 = (*(v11 + 48))(v9, 1, v10);
  v71 = v19;
  if (v30 == 1)
  {
    sub_21D0CF7E0(v9, &qword_27CE5C668);
    (*(v74 + 56))(v24, 1, 1, v72);
    v31 = v78;
    goto LABEL_13;
  }

  v32 = v72;
  v33 = v24;
  sub_21D45899C(v9, v13, type metadata accessor for TTRIReminderDetailDueDateModificationInput);
  v73 = v29;
  v64 = v13[*(v29 + 20)];
  v65 = v13;
  v34 = sub_21DBF55BC();
  sub_21D0D3954(v19, v16, &unk_27CE60DB0);
  v36 = v67;
  v35 = v68;
  v37 = *(v67 + 48);
  if (v37(v16, 1, v68) == 1)
  {
    v38 = v36;
    v39 = [objc_opt_self() defaultTimeZone];
    v40 = v69;
    sub_21DBF5C2C();

    v41 = v37(v16, 1, v35);
    v24 = v33;
    v42 = v74;
    v43 = v35;
    if (v41 != 1)
    {
      sub_21D0CF7E0(v16, &unk_27CE60DB0);
    }
  }

  else
  {
    v38 = v36;
    v40 = v69;
    (*(v36 + 32))(v69, v16, v35);
    v24 = v33;
    v42 = v74;
    v43 = v35;
  }

  v44 = objc_opt_self();
  v45 = sub_21DBF5C0C();
  (*(v38 + 8))(v40, v43);
  v46 = v64;
  v47 = [v44 rem:v34 dateComponentsWithDate:v45 timeZone:v64 isAllDay:?];

  v48 = v70;
  sub_21DBF4EFC();

  if (v46)
  {
    v49 = sub_21DBF4EDC();
    v50 = [v49 rem_strippingTimeZone];

    v51 = v66;
    sub_21DBF4EFC();

    (*(v42 + 8))(v48, v32);
    v52 = *(v42 + 32);
    v52(v48, v51, v32);
  }

  else
  {
    v52 = *(v42 + 32);
  }

  v31 = v78;
  v53 = v65;
  v52(v24, v48, v32);
  (*(v42 + 56))(v24, 0, 1, v32);
  v54 = *(v53 + *(v73 + 24));
  sub_21D458A04(v53, type metadata accessor for TTRIReminderDetailDueDateModificationInput);
  if ((v54 & 1) == 0)
  {
LABEL_13:
    if (qword_280D1BAA8 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_17;
  }

LABEL_14:
  while (1)
  {
    sub_21DBF516C();
    v55 = objc_opt_self();
    v56 = sub_21DBFA12C();

    v57 = v77;
    sub_21D0D3954(v24, v77, &qword_27CE58D60);
    v58 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v31;
    sub_21D0D523C(v57, v59 + v58, &qword_27CE58D60);
    v60 = swift_allocObject();
    *(v60 + 16) = sub_21D457CA4;
    *(v60 + 24) = v59;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v60;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_42_1;
    v61 = _Block_copy(aBlock);

    [v55 withActionName:v56 block:v61];

    _Block_release(v61);
    LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

    if ((v56 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
  }

  sub_21D453228();
  sub_21D0CF7E0(v71, &unk_27CE60DB0);
  sub_21D0CF7E0(v24, &qword_27CE58D60);
}

unsigned __int8 *sub_21D455530(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 32);
  if (v3 == 3)
  {
    if (v2 != 3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v3 == v2)
  {
LABEL_5:
    LOBYTE(v2) = 3;
  }

LABEL_6:
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_21D455560(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = aBlock - v5;
  v7 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v8 = sub_21DBFA12C();

  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = a1 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21D457B98;
  *(v10 + 24) = v9;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);

  [v7 withActionName:v8 block:v11];

  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v14 = sub_21DBFA89C();
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      sub_21DBFA84C();

      v15 = sub_21DBFA83C();
      v16 = swift_allocObject();
      v17 = MEMORY[0x277D85700];
      v16[2] = v15;
      v16[3] = v17;
      v16[4] = v2;
      sub_21D1B5178(0, 0, v6, &unk_21DC165D0, v16);
    }
  }

  return result;
}

uint64_t sub_21D4558B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21DBFA84C();
  v4[3] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21D455950, v6, v5);
}

uint64_t sub_21D455950()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21D4559F8;

  return sub_21D5BAEF0();
}

uint64_t sub_21D4559F8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21D0EFB64, v3, v2);
}

void sub_21D455B18(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_21DBF5C4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1[9];
  ObjectType = swift_getObjectType();
  v22 = (*(v11 + 16))(ObjectType, v11);
  v13 = [v22 displayDate];
  if (v13)
  {
    v14 = v13;
    v15 = [v22 timeZone];
    sub_21DBFA16C();

    sub_21DBF5BBC();

    v16 = *(v8 + 48);
    if (v16(v6, 1, v7) == 1)
    {
      v17 = [objc_opt_self() defaultTimeZone];
      sub_21DBF5C2C();

      if (v16(v6, 1, v7) != 1)
      {
        sub_21D0CF7E0(v6, &unk_27CE60DB0);
      }
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
    }

    v19 = v2[13];
    v20 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v19);
    (*(v20 + 32))(v10, v14, a1 & 1, v2, &off_282EBD418, v19, v20);

    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v18 = v22;
  }
}

uint64_t sub_21D455E08@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = *(result + 24);

      v4(0);

      result = sub_21D0EC9F4(v4, v5);
    }

    else
    {
    }
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_21D455EBC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v8 = a1;
  v9 = *(v7 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - v14;
  if (v13 < 0xB)
  {
    TTRRecurrenceRuleModel.init(repeatType:)(v13, v6);
    if ((*(v9 + 48))(v6, 1, v7) != 1)
    {
      sub_21D45899C(v6, v11, type metadata accessor for TTRRecurrenceRuleModel);
      v20 = *(v2 + 72);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58970);
      v22 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_21DC08D00;
      sub_21D458934(v11, v23 + v22, type metadata accessor for TTRRecurrenceRuleModel);
      (*(v20 + 208))(v23, 1, ObjectType, v20);

      result = sub_21D458A04(v11, type metadata accessor for TTRRecurrenceRuleModel);
      *(v2 + 33) = 0;
      v19 = *(v2 + 16);
      if (!v19)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_21D0CF7E0(v6, &qword_27CE5A018);
    goto LABEL_4;
  }

  if (v13 != 11)
  {
LABEL_4:
    *(v2 + 33) = 0;
    v16 = *(v2 + 72);
    v17 = swift_getObjectType();
    result = (*(v16 + 200))(0, v17, v16);
    v19 = *(v2 + 16);
    if (!v19)
    {
      return result;
    }

    goto LABEL_7;
  }

  v25 = type metadata accessor for TTRRecurrenceEndModel(0);
  (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  v26 = v7[5];
  v27 = v7[6];
  *&v15[v7[7]] = 0;
  *&v15[v7[8]] = 0;
  *&v15[v7[9]] = 0;
  *&v15[v7[10]] = 0;
  *&v15[v7[11]] = 0;
  *&v15[v7[12]] = 0;
  *&v15[v7[13]] = 0;
  *&v15[v26] = 0;
  *&v15[v27] = 1;
  v28 = *(v2 + 72);
  v29 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58970);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_21DC08D00;
  sub_21D458934(v15, v31 + v30, type metadata accessor for TTRRecurrenceRuleModel);
  (*(v28 + 208))(v31, 1, v29, v28);

  result = sub_21D458A04(v15, type metadata accessor for TTRRecurrenceRuleModel);
  *(v2 + 33) = 1;
  v19 = *(v2 + 16);
  if (!v19)
  {
    return result;
  }

LABEL_7:
  v24 = *(v2 + 24);

  v19(1);
  return sub_21D0EC9F4(v19, v24);
}

void sub_21D4562D4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C660);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v34[0] = *(v7 - 8);
  v34[1] = *(v34[0] + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  if (qword_27CE568F0 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE5C648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_21D0D3954(a1, v9, &unk_27CE62610);
  v12 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  sub_21DAEACDC();

  v14 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 16))(ObjectType, v14);
  v17 = [v16 recurrenceRules];

  v35 = a1;
  if (!v17)
  {
    v22 = &v6[v4[12]];
    sub_21D0D3954(a1, v22, &unk_27CE62610);
    goto LABEL_18;
  }

  sub_21D457B4C();
  isEscapingClosureAtFileLocation = sub_21DBFA5EC();

  if (!(isEscapingClosureAtFileLocation >> 62))
  {
    v19 = v35;
    if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_12:
    v21 = 0;
    goto LABEL_13;
  }

  v23 = sub_21DBFBD7C();
  v19 = v35;
  if (!v23)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (!*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_36;
  }

  for (i = *(isEscapingClosureAtFileLocation + 32); ; i = MEMORY[0x223D44740](0, isEscapingClosureAtFileLocation))
  {
    v21 = i;
LABEL_13:

    v24 = [v21 recurrenceEnd];

    v22 = &v6[v4[12]];
    sub_21D0D3954(v19, v22, &unk_27CE62610);
    if (v24)
    {
      v25 = type metadata accessor for TTRRecurrenceEndModel(0);
      if ((*(*(v25 - 8) + 48))(v22, 1, v25) == 1)
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        sub_21D0CF7E0(v22, &unk_27CE62610);
      }
    }

    else
    {
LABEL_18:
      v26 = type metadata accessor for TTRRecurrenceEndModel(0);
      if ((*(*(v26 - 8) + 48))(v22, 1, v26) == 1)
      {
        v27 = sub_21DBF84AC();
        v28 = sub_21DBFAEBC();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_21D0C9000, v27, v28, "Shouldn't be able to change RecurrenceEnd from nil to nil", v29, 2u);
          MEMORY[0x223D46520](v29, -1, -1);
        }

        if (qword_280D1BAA8 != -1)
        {
LABEL_36:
          swift_once();
        }

        sub_21DBF516C();
        v24 = 0;
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        sub_21D0CF7E0(v22, &unk_27CE62610);
        v24 = 0;
      }
    }

    v4 = objc_opt_self();
    v30 = sub_21DBFA12C();

    sub_21D0D3954(v35, v9, &unk_27CE62610);
    v31 = (*(v34[0] + 80) + 24) & ~*(v34[0] + 80);
    v6 = swift_allocObject();
    *(v6 + 2) = v2;
    sub_21D0D523C(v9, &v6[v31], &unk_27CE62610);
    v9 = swift_allocObject();
    *(v9 + 2) = sub_21D4592B0;
    *(v9 + 3) = v6;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_17;
    v19 = _Block_copy(aBlock);

    [v4 withActionName:v30 block:v19];

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_34:
    ;
  }

  v32 = *(v2 + 16);
  if (v32)
  {
    v33 = *(v2 + 24);

    v32(1);

    sub_21D0EC9F4(v32, v33);
  }

  else
  {
  }
}

void sub_21D456C0C(char a1)
{
  v2 = v1;
  v4 = v1[9];
  ObjectType = swift_getObjectType();
  v16 = (*(v4 + 16))(ObjectType, v4);
  v6 = [v16 displayDate];
  if (v6)
  {
    v7 = v6;
    v8 = [v16 recurrenceRules];
    if (v8)
    {
      sub_21D457B4C();
      v9 = sub_21DBFA5EC();

      if (v9 >> 62)
      {
        if (sub_21DBFBD7C())
        {
          goto LABEL_5;
        }
      }

      else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v9 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x223D44740](0, v9);
        }

        else
        {
          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v10 = *(v9 + 32);
        }

        v8 = v10;

        goto LABEL_12;
      }

      v8 = 0;
    }

LABEL_12:
    v12 = v2[13];
    v13 = v2[14];
    __swift_project_boxed_opaque_existential_1(v2 + 10, v12);
    v14 = [v16 accountCapabilities];
    v15 = [v14 supportsHourlyRecurrence];

    (*(v13 + 8))(v8, v7, v15, a1 & 1, v2, &off_282EBD448, v12, v13);
    v11 = v8;
    goto LABEL_13;
  }

  v11 = v16;
LABEL_13:
}

void sub_21D456DF4(char a1, _OWORD *a2)
{
  v3 = v2;
  v6 = v2[9];
  ObjectType = swift_getObjectType();
  v21 = (*(v6 + 16))(ObjectType, v6);
  v8 = [v21 displayDate];
  if (v8)
  {
    v9 = v8;
    v10 = [v21 recurrenceRules];
    if (v10)
    {
      v11 = v10;
      sub_21D457B4C();
      v12 = sub_21DBFA5EC();

      if (v12 >> 62)
      {
        if (sub_21DBFBD7C())
        {
          goto LABEL_5;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223D44740](0, v12);
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v13 = *(v12 + 32);
        }

        v20 = v13;

        goto LABEL_13;
      }
    }

    v20 = 0;
LABEL_13:
    v15 = v3[13];
    v16 = v3[14];
    __swift_project_boxed_opaque_existential_1(v3 + 10, v15);
    v17 = [v21 accountCapabilities];
    v18 = [v17 supportsHourlyRecurrence];

    v19 = a2[1];
    v22[0] = *a2;
    v22[1] = v19;
    v23[0] = a2[2];
    *(v23 + 9) = *(a2 + 41);
    (*(v16 + 16))(v20, v9, v18, a1 & 1, v22, v3, &off_282EBD438, v15, v16);

    v14 = v20;
    goto LABEL_14;
  }

  v14 = v21;
LABEL_14:
}

void sub_21D456FFC(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = v1[9];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 16))(ObjectType, v7);
  v10 = [v9 recurrenceRules];
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  sub_21D457B4C();
  v12 = sub_21DBFA5EC();

  if (v12 >> 62)
  {
    if (sub_21DBFBD7C())
    {
      goto LABEL_4;
    }

    goto LABEL_12;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

LABEL_13:
    if (qword_27CE568F0 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_27CE5C648);
    v28 = v9;
    v27 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();

    if (os_log_type_enabled(v27, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = [v28 objectID];
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&dword_21D0C9000, v27, v22, "Reminder has no recurrence rules -- Failed to edit recurrence end {objectID: %@}", v23, 0xCu);
      sub_21D0CF7E0(v24, &unk_27CE60070);
      MEMORY[0x223D46520](v24, -1, -1);
      MEMORY[0x223D46520](v23, -1, -1);

      v26 = v28;
    }

    else
    {

      v26 = v27;
    }

    return;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223D44740](0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  v15 = [v14 recurrenceEnd];
  v16 = v15;
  if (v15)
  {
    TTRRecurrenceEndModel.init(_:)(v15, v6);
    v17 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  }

  else
  {
    v18 = type metadata accessor for TTRRecurrenceEndModel(0);
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  }

  v19 = v2[13];
  v20 = v2[14];
  __swift_project_boxed_opaque_existential_1(v2 + 10, v19);
  (*(v20 + 24))(v6, v9, a1 & 1, v2, &off_282EBD428, v19, v20);

  sub_21D0CF7E0(v6, &unk_27CE62610);
}

uint64_t sub_21D4573D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 56);
  if (v3 == 2)
  {
    v4 = 0;
    v5 = 0;
    LOBYTE(v3) = 0;
    v7 = *a1;
    v6 = *(a1 + 8);
    if (!*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    if ((v4 != 0) | (v5 != 0) | v3 & 1)
    {
      v7 = v4;
      v6 = v5;
    }

    v8 = (v1 + 32);
    v9 = 2;
    goto LABEL_9;
  }

  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v7 = *a1;
  v6 = *(a1 + 8);
  if (*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = (v1 + 32);
  if (*(v1 + 32) == 2)
  {
    v9 = 3;
LABEL_9:
    *v8 = v9;
  }

  v11[0] = v7;
  v11[1] = v6;
  v12 = v2;
  return sub_21D45747C(v11);
}

uint64_t sub_21D45747C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  sub_21D453228();
  v6 = *(v1 + 56);
  if (v6 != 2 && *(v1 + 40) == 0 && (v6 & 1) == 0)
  {
    v7 = *(v1 + 72);
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 16))(ObjectType, v7);
    v10 = [v9 dueDateDeltaAlertContext];

    [v10 clearPendingDueDateDeltaAlertUpserts];
  }

  v11 = objc_opt_self();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v12 = sub_21DBFA12C();

  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v3;
  *(v13 + 32) = v4;
  *(v13 + 40) = v5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D457B3C;
  *(v14 + 24) = v13;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);

  [v11 withActionName:v12 block:{v15, 0x800000021DC50070}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D45773C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 72);
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(MEMORY[0x277D44610]) initWithUnit:a3 count:a2];
  (*(v5 + 160))(v7, ObjectType, v5);
}

uint64_t sub_21D4577E0()
{
  sub_21D0EC9F4(*(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 80);

  return swift_deallocClassInstance();
}

uint64_t sub_21D457864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v6, &qword_27CE5A018);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21D0CF7E0(v6, &qword_27CE5A018);
    v11 = *(a2 + 72);
    ObjectType = swift_getObjectType();
    return (*(v11 + 200))(0, ObjectType, v11);
  }

  else
  {
    sub_21D45899C(v6, v10, type metadata accessor for TTRRecurrenceRuleModel);
    v14 = *(a2 + 72);
    v15 = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58970);
    v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_21DC08D00;
    sub_21D458934(v10, v17 + v16, type metadata accessor for TTRRecurrenceRuleModel);
    (*(v14 + 208))(v17, 1, v15, v14);

    return sub_21D458A04(v10, type metadata accessor for TTRRecurrenceRuleModel);
  }
}

uint64_t sub_21D457AD4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(v3 + 72);
  ObjectType = swift_getObjectType();
  (*(v5 + 176))(a3, ObjectType, v5);
  return TTRTimeZoneOverrideMenuPresenterCapability.saveRecentlyUsedTimeZone(_:)(a3);
}

unint64_t sub_21D457B4C()
{
  result = qword_280D177E8;
  if (!qword_280D177E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D177E8);
  }

  return result;
}

uint64_t sub_21D457B98()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 72);
  ObjectType = swift_getObjectType();
  return (*(v2 + 168))(v1, ObjectType, v2);
}

uint64_t sub_21D457BF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D4558B8(a1, v4, v5, v6);
}

uint64_t sub_21D457CA4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + 72);
  ObjectType = swift_getObjectType();
  return (*(v3 + 144))(v0 + v2, ObjectType, v3);
}

uint64_t sub_21D457D40()
{
  v1 = *(sub_21DBF509C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v4 = *(v3 + *(v1 + 64));

  return sub_21D454638(v2, v3, v4);
}

uint64_t sub_21D457DC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D4547B0(a1, v4, v5, v6);
}

uint64_t sub_21D457E78()
{
  v1 = *(sub_21DBF509C() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return sub_21D453ACC(v2, v3, v4);
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21D457F20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D453C28(a1, v4, v5, v6);
}

uint64_t sub_21D457FD4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = aBlock - v5;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v7 = objc_opt_self();
  v8 = sub_21DBFA12C();

  sub_21D0D3954(a1, v6, &unk_27CE62610);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  sub_21D0D523C(v6, v10 + v9, &unk_27CE62610);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21D4591F8;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_85;
  v12 = _Block_copy(aBlock);

  [v7 withActionName:v8 block:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_21D4582E8(uint64_t a1)
{
  v2 = type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C670);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (v30 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v30 - v9;
  v11 = type metadata accessor for TTRReminderDetailViewModel.DatePickerModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRReminderDetailViewModel.DueDateState(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21DBF5C4C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v34 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D458934(a1, v16, type metadata accessor for TTRReminderDetailViewModel.DueDateState);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C678);
  if ((*(*(v20 - 8) + 48))(v16, 1, v20) != 1)
  {
    v30[1] = a1;

    v21 = *(v20 + 64);
    sub_21D45899C(v16, v13, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    sub_21DBF507C();
    sub_21D458A04(v13, type metadata accessor for TTRReminderDetailViewModel.DatePickerModel);
    if ((*(v18 + 48))(v10, 1, v17) == 1)
    {
      sub_21D0CF7E0(v10, &unk_27CE60DB0);
      sub_21D0CF7E0(&v16[v21], &unk_27CE628E0);
      return;
    }

    v22 = v34;
    (*(v18 + 32))(v34, v10, v17);
    sub_21D0CF7E0(&v16[v21], &unk_27CE628E0);
    v23 = *(v33 + 128);
    (*(v18 + 16))(v4, v22, v17);
    if (*(v23 + 16))
    {

      sub_21DBF6B4C();

      sub_21D458A04(v4, type metadata accessor for TTRTimeZoneProvider.TimeZoneOperationParams);
      v25 = v31;
      v24 = v32;
      v26 = (*(v31 + 88))(v7, v32);
      if (v26 == *MEMORY[0x277D450E0])
      {
        (*(v25 + 96))(v7, v24);
        TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(0, 0xE000000000000000);
        swift_allocObject();
        swift_weakInit();
        v27 = sub_21DBF816C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
        sub_21DBF820C();

LABEL_9:
        (*(v18 + 8))(v34, v17);
        return;
      }

      if (v26 == *MEMORY[0x277D450E8])
      {
        (*(v25 + 96))(v7, v24);
        TTRReminderDetailViewModel.DueDateState.timeZoneDescription.setter(*v7, v7[1]);
        goto LABEL_9;
      }

      if (v26 == *MEMORY[0x277D450D8])
      {
        (*(v18 + 8))(v34, v17);
        (*(v25 + 8))(v7, v24);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    if (qword_27CE568F0 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE5C648);
    v29 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v29);
    sub_21DAEAB00("Unknown REMAsyncOperationState type", 35, 2);
    __break(1u);
  }
}

uint64_t sub_21D458934(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D45899C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D458A04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21D458A80(void *a1)
{
  v50[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60DB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v44 - v3;
  v5 = sub_21DBF5C4C();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  v17 = sub_21DBF563C();
  v18 = *(v17 - 8);
  *&v19 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a1 displayDate];
  if (!v22)
  {
    return;
  }

  v46 = v18;
  v44 = v22;
  v23 = [v22 date];
  sub_21DBF55FC();

  v45 = a1;
  v24 = [a1 dueDateComponents];
  v47 = v17;
  v48 = v5;
  if (v24)
  {
    v25 = v24;
    sub_21DBF4EFC();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_21DBF509C();
  v28 = *(v27 - 8);
  (*(v28 + 56))(v13, v26, 1, v27);
  sub_21D0D523C(v13, v16, &qword_27CE58D60);
  sub_21D0D3954(v16, v10, &qword_27CE58D60);
  if ((*(v28 + 48))(v10, 1, v27) == 1)
  {
    sub_21D0CF7E0(v10, &qword_27CE58D60);
    v29 = v48;
    v30 = v49;
    (*(v49 + 56))(v4, 1, 1, v48);
    v31 = v45;
    goto LABEL_9;
  }

  sub_21DBF507C();
  (*(v28 + 8))(v10, v27);
  v29 = v48;
  v30 = v49;
  v32 = (*(v49 + 48))(v4, 1, v48);
  v31 = v45;
  if (v32 == 1)
  {
LABEL_9:
    v33 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    if ((*(v30 + 48))(v4, 1, v29) != 1)
    {
      sub_21D0CF7E0(v4, &unk_27CE60DB0);
    }

    goto LABEL_12;
  }

  (*(v30 + 32))(v7, v4, v29);
LABEL_12:
  v34 = objc_opt_self();
  v35 = [v31 recurrenceRules];
  v36 = sub_21DBF55BC();
  v37 = sub_21DBF5C0C();
  v50[0] = 0;
  v38 = [v34 repeatTypeForRecurrenceRules:v35 recurrenceDate:v36 recurrenceTimeZone:v37 getRepeatEnd:v50];

  if (v38 >= 0xC)
  {
    v40 = qword_27CE568F0;
    v41 = v50[0];
    if (v40 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE5C648);
    v43 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v43);
    sub_21DAEAB00("Unknown REMRepeatType", 21, 2);
    __break(1u);
  }

  else
  {
    v39 = v50[0];

    (*(v30 + 8))(v7, v29);
    sub_21D0CF7E0(v16, &qword_27CE58D60);
    (*(v46 + 8))(v21, v47);
  }
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for TTRRecurrenceEndModel(0);
  if (!(*(*(v3 - 8) + 48))(v0 + v2, 1, v3) && !swift_getEnumCaseMultiPayload())
  {
    v4 = sub_21DBF563C();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_21D4591FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(*(v0 + 16) + 72);
  ObjectType = swift_getObjectType();
  return (*(v3 + 216))(v0 + v2, ObjectType, v3);
}

uint64_t TTRTableViewDiff.init()@<X0>(uint64_t a1@<X8>)
{
  sub_21DBF5B8C();
  v2 = type metadata accessor for TTRTableViewDiff(0);
  sub_21DBF5B8C();
  sub_21DBF5B8C();
  v3 = MEMORY[0x277D84F90];
  *(a1 + v2[7]) = MEMORY[0x277D84F90];
  result = sub_21DBF5B8C();
  *(a1 + v2[9]) = v3;
  *(a1 + v2[10]) = v3;
  *(a1 + v2[11]) = v3;
  *(a1 + v2[12]) = v3;
  return result;
}

uint64_t TTRTableViewDiff.updatedSections.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF5B9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRTableViewDiff.updatedSections.setter(uint64_t a1)
{
  v3 = sub_21DBF5B9C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TTRTableViewDiff.insertedSections.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 20);
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRTableViewDiff.insertedSections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 20);
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRTableViewDiff.deletedSections.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 24);
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRTableViewDiff.deletedSections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 24);
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRTableViewDiff.movedSections.getter()
{
  type metadata accessor for TTRTableViewDiff(0);

  return sub_21DBF8E0C();
}

uint64_t TTRTableViewDiff.movedSections.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRTableViewDiff.sectionsWithUpdatedHeaderFooter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 32);
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRTableViewDiff.sectionsWithUpdatedHeaderFooter.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 32);
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRTableViewDiff.updatedRows.getter()
{
  type metadata accessor for TTRTableViewDiff(0);

  return sub_21DBF8E0C();
}

uint64_t TTRTableViewDiff.updatedRows.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRTableViewDiff.insertedRows.getter()
{
  type metadata accessor for TTRTableViewDiff(0);

  return sub_21DBF8E0C();
}

uint64_t TTRTableViewDiff.insertedRows.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRTableViewDiff.deletedRows.getter()
{
  type metadata accessor for TTRTableViewDiff(0);

  return sub_21DBF8E0C();
}

uint64_t TTRTableViewDiff.deletedRows.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRTableViewDiff.movedRows.getter()
{
  type metadata accessor for TTRTableViewDiff(0);

  return sub_21DBF8E0C();
}

uint64_t TTRTableViewDiff.movedRows.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTableViewDiff(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRTableViewAnimations.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

RemindersUICore::TTRTableViewUpdateAnimations __swiftcall TTRTableViewUpdateAnimations.init(allUse:)(RemindersUICore::TTRTableViewAnimations allUse)
{
  v2 = *allUse;
  *v1 = vdup_n_s8(v2).u32[0];
  *(v1 + 4) = v2;
  *(v1 + 5) = v2;
  result.insertSection = allUse;
  return result;
}

unint64_t sub_21D459DD0()
{
  result = qword_27CE5C680;
  if (!qword_27CE5C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C680);
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRTableViewUpdates(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    v12 = sub_21DBF5B9C();
    v13 = *(*(v12 - 8) + 16);
    v13(a1, a2, v12);
    v14 = type metadata accessor for TTRTableViewDiff(0);
    v13((a1 + v14[5]), (a2 + v14[5]), v12);
    v13((a1 + v14[6]), (a2 + v14[6]), v12);
    *(a1 + v14[7]) = *(a2 + v14[7]);
    v15 = v14[8];
    sub_21DBF8E0C();
    v13((a1 + v15), (a2 + v15), v12);
    *(a1 + v14[9]) = *(a2 + v14[9]);
    *(a1 + v14[10]) = *(a2 + v14[10]);
    *(a1 + v14[11]) = *(a2 + v14[11]);
    *(a1 + v14[12]) = *(a2 + v14[12]);
    v16 = *(v7 + 48);
    v17 = a1 + v16;
    v18 = a2 + v16;
    *v17 = *v18;
    *(v17 + 2) = *(v18 + 2);
    v19 = *(v8 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v19(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t destroy for TTRTableViewUpdates(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = sub_21DBF5B9C();
    v5 = *(*(v4 - 8) + 8);
    v5(a1, v4);
    v6 = type metadata accessor for TTRTableViewDiff(0);
    v5(a1 + v6[5], v4);
    v5(a1 + v6[6], v4);

    v5(a1 + v6[8], v4);
  }

  return result;
}

char *initializeWithCopy for TTRTableViewUpdates(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF5B9C();
    v11 = *(*(v10 - 8) + 16);
    v11(a1, a2, v10);
    v12 = type metadata accessor for TTRTableViewDiff(0);
    v11(&a1[v12[5]], &a2[v12[5]], v10);
    v11(&a1[v12[6]], &a2[v12[6]], v10);
    *&a1[v12[7]] = *&a2[v12[7]];
    v13 = v12[8];
    sub_21DBF8E0C();
    v11(&a1[v13], &a2[v13], v10);
    *&a1[v12[9]] = *&a2[v12[9]];
    *&a1[v12[10]] = *&a2[v12[10]];
    *&a1[v12[11]] = *&a2[v12[11]];
    *&a1[v12[12]] = *&a2[v12[12]];
    v14 = *(v6 + 48);
    v15 = &a1[v14];
    v16 = &a2[v14];
    *v15 = *v16;
    *(v15 + 2) = *(v16 + 2);
    v17 = *(v7 + 56);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v17(a1, 0, 1, v6);
    return a1;
  }
}

char *assignWithCopy for TTRTableViewUpdates(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF5B9C();
      v12 = *(*(v11 - 8) + 16);
      v12(a1, a2, v11);
      v13 = type metadata accessor for TTRTableViewDiff(0);
      v12(&a1[v13[5]], &a2[v13[5]], v11);
      v12(&a1[v13[6]], &a2[v13[6]], v11);
      *&a1[v13[7]] = *&a2[v13[7]];
      v14 = v13[8];
      sub_21DBF8E0C();
      v12(&a1[v14], &a2[v14], v11);
      *&a1[v13[9]] = *&a2[v13[9]];
      *&a1[v13[10]] = *&a2[v13[10]];
      *&a1[v13[11]] = *&a2[v13[11]];
      *&a1[v13[12]] = *&a2[v13[12]];
      v15 = *(v6 + 48);
      v16 = &a1[v15];
      v17 = &a2[v15];
      v18 = *(v17 + 2);
      *v16 = *v17;
      *(v16 + 2) = v18;
      v19 = *(v7 + 56);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v19(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v22 = sub_21DBF5B9C();
      v23 = *(*(v22 - 8) + 24);
      v23(a1, a2, v22);
      v24 = type metadata accessor for TTRTableViewDiff(0);
      v23(&a1[v24[5]], &a2[v24[5]], v22);
      v23(&a1[v24[6]], &a2[v24[6]], v22);
      *&a1[v24[7]] = *&a2[v24[7]];
      sub_21DBF8E0C();

      v23(&a1[v24[8]], &a2[v24[8]], v22);
      *&a1[v24[9]] = *&a2[v24[9]];
      sub_21DBF8E0C();

      *&a1[v24[10]] = *&a2[v24[10]];
      sub_21DBF8E0C();

      *&a1[v24[11]] = *&a2[v24[11]];
      sub_21DBF8E0C();

      *&a1[v24[12]] = *&a2[v24[12]];
      sub_21DBF8E0C();

      v25 = *(v6 + 48);
      v26 = &a1[v25];
      v27 = &a2[v25];
      *v26 = *v27;
      v26[1] = v27[1];
      v26[2] = v27[2];
      v26[3] = v27[3];
      v26[4] = v27[4];
      v26[5] = v27[5];
      return a1;
    }

    sub_21D45A838(a1);
  }

  v20 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v20);
}

uint64_t sub_21D45A838(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for TTRTableViewUpdates(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = sub_21DBF5B9C();
    v11 = *(*(v10 - 8) + 32);
    v11(a1, a2, v10);
    v12 = type metadata accessor for TTRTableViewDiff(0);
    v11(&a1[v12[5]], &a2[v12[5]], v10);
    v11(&a1[v12[6]], &a2[v12[6]], v10);
    *&a1[v12[7]] = *&a2[v12[7]];
    v11(&a1[v12[8]], &a2[v12[8]], v10);
    *&a1[v12[9]] = *&a2[v12[9]];
    *&a1[v12[10]] = *&a2[v12[10]];
    *&a1[v12[11]] = *&a2[v12[11]];
    *&a1[v12[12]] = *&a2[v12[12]];
    v13 = *(v6 + 48);
    v14 = &a1[v13];
    v15 = &a2[v13];
    *v14 = *v15;
    *(v14 + 2) = *(v15 + 2);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

char *assignWithTake for TTRTableViewUpdates(char *a1, char *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = sub_21DBF5B9C();
      v12 = *(*(v11 - 8) + 32);
      v12(a1, a2, v11);
      v13 = type metadata accessor for TTRTableViewDiff(0);
      v12(&a1[v13[5]], &a2[v13[5]], v11);
      v12(&a1[v13[6]], &a2[v13[6]], v11);
      *&a1[v13[7]] = *&a2[v13[7]];
      v12(&a1[v13[8]], &a2[v13[8]], v11);
      *&a1[v13[9]] = *&a2[v13[9]];
      *&a1[v13[10]] = *&a2[v13[10]];
      *&a1[v13[11]] = *&a2[v13[11]];
      *&a1[v13[12]] = *&a2[v13[12]];
      v14 = *(v6 + 48);
      v15 = &a1[v14];
      v16 = &a2[v14];
      *v15 = *v16;
      *(v15 + 2) = *(v16 + 2);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v19 = sub_21DBF5B9C();
      v20 = *(*(v19 - 8) + 40);
      v20(a1, a2, v19);
      v21 = type metadata accessor for TTRTableViewDiff(0);
      v20(&a1[v21[5]], &a2[v21[5]], v19);
      v20(&a1[v21[6]], &a2[v21[6]], v19);
      *&a1[v21[7]] = *&a2[v21[7]];

      v20(&a1[v21[8]], &a2[v21[8]], v19);
      *&a1[v21[9]] = *&a2[v21[9]];

      *&a1[v21[10]] = *&a2[v21[10]];

      *&a1[v21[11]] = *&a2[v21[11]];

      *&a1[v21[12]] = *&a2[v21[12]];

      v22 = *(v6 + 48);
      v23 = &a1[v22];
      v24 = &a2[v22];
      *v23 = *v24;
      *(v23 + 2) = *(v24 + 2);
      return a1;
    }

    sub_21D45A838(a1);
  }

  v17 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v17);
}

uint64_t sub_21D45AE50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_21D45AEC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t sub_21D45AF60()
{
  result = type metadata accessor for TTRTableViewDiff(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TTRTableViewDiff(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5B9C();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    v8((a1 + a3[5]), (a2 + a3[5]), v7);
    v8((a1 + a3[6]), (a2 + a3[6]), v7);
    v9 = a3[8];
    *(a1 + a3[7]) = *(a2 + a3[7]);
    sub_21DBF8E0C();
    v8((a1 + v9), (a2 + v9), v7);
    v10 = a3[10];
    *(a1 + a3[9]) = *(a2 + a3[9]);
    *(a1 + v10) = *(a2 + v10);
    v11 = a3[12];
    *(a1 + a3[11]) = *(a2 + a3[11]);
    *(a1 + v11) = *(a2 + v11);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t destroy for TTRTableViewDiff(uint64_t a1, int *a2)
{
  v4 = sub_21DBF5B9C();
  v5 = *(*(v4 - 8) + 8);
  v5(a1, v4);
  v5(a1 + a2[5], v4);
  v5(a1 + a2[6], v4);

  v5(a1 + a2[8], v4);
}

uint64_t initializeWithCopy for TTRTableViewDiff(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(*(v6 - 8) + 16);
  v7(a1, a2, v6);
  v7(a1 + a3[5], a2 + a3[5], v6);
  v7(a1 + a3[6], a2 + a3[6], v6);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();
  v7(a1 + v8, a2 + v8, v6);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v10) = *(a2 + v10);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRTableViewDiff(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(*(v6 - 8) + 24);
  v7(a1, a2, v6);
  v7(a1 + a3[5], a2 + a3[5], v6);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();

  v7(a1 + a3[8], a2 + a3[8], v6);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  sub_21DBF8E0C();

  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_21DBF8E0C();

  *(a1 + a3[11]) = *(a2 + a3[11]);
  sub_21DBF8E0C();

  *(a1 + a3[12]) = *(a2 + a3[12]);
  sub_21DBF8E0C();

  return a1;
}

uint64_t initializeWithTake for TTRTableViewDiff(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(*(v6 - 8) + 32);
  v7(a1, a2, v6);
  v7(a1 + a3[5], a2 + a3[5], v6);
  v7(a1 + a3[6], a2 + a3[6], v6);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v7(a1 + v8, a2 + v8, v6);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  v10 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v10) = *(a2 + v10);
  return a1;
}

uint64_t assignWithTake for TTRTableViewDiff(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_21DBF5B9C();
  v7 = *(*(v6 - 8) + 40);
  v7(a1, a2, v6);
  v7(a1 + a3[5], a2 + a3[5], v6);
  v7(a1 + a3[6], a2 + a3[6], v6);
  *(a1 + a3[7]) = *(a2 + a3[7]);

  v7(a1 + a3[8], a2 + a3[8], v6);
  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);

  *(a1 + a3[12]) = *(a2 + a3[12]);

  return a1;
}

uint64_t sub_21D45B750()
{
  result = sub_21DBF5B9C();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRTableViewAnimations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTableViewAnimations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TTRTableViewUpdateAnimations(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[6])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTableViewUpdateAnimations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 4) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t TTRIChromelessToolbarUpdater.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIChromelessToolbarUpdater.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D45BB2C;
}

void sub_21D45BB2C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t TTRIChromelessToolbarUpdater.__allocating_init(scrollView:)(void *a1)
{
  swift_allocObject();
  v2 = sub_21D45C0D8(a1);

  return v2;
}

uint64_t TTRIChromelessToolbarUpdater.init(scrollView:)(void *a1)
{
  v2 = sub_21D45C0D8(a1);

  return v2;
}

uint64_t sub_21D45BC28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C708);
  sub_21DBF52FC();
  result = sub_21DBF52EC();
  if (v5)
  {
    if (v8)
    {
      return result;
    }

    goto LABEL_9;
  }

  if ((v8 & 1) != 0 || (v3 == v6 ? (v1 = v4 == v7) : (v1 = 0), !v1))
  {
LABEL_9:
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {

      v2._object = 0x800000021DC5CDC0;
      v2._countAndFlagsBits = 0xD00000000000002ALL;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
    }
  }

  return result;
}

Swift::Void __swiftcall TTRIChromelessToolbarUpdater.updateForToolbarVisibilityChange()()
{

  v0._object = 0x800000021DC5CC80;
  v0._countAndFlagsBits = 0xD000000000000022;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

uint64_t TTRIChromelessToolbarUpdater.deinit()
{
  sub_21D157444(v0 + 24);
  sub_21D1A8418(v0 + 40);

  return v0;
}

uint64_t TTRIChromelessToolbarUpdater.__deallocating_deinit()
{
  sub_21D157444(v0 + 24);
  sub_21D1A8418(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_21D45BE10(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a1)
    {

      v3._object = 0x800000021DC5CDA0;
      v3._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void _s15RemindersUICore28TTRIChromelessToolbarUpdaterC21deferredActionPerform_6reasonyAA011TTRDeferredG0C_SStF_0()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    v3 = (*(v1 + 8))(v0, ObjectType, v1);
    if (v3)
    {
      v4 = v3;
      if (([v3 isHidden] & 1) == 0)
      {
        v5 = *(v0 + 16);
        [v5 contentSize];
        [v4 convertRect:v5 fromCoordinateSpace:{0.0, 0.0, v6, v7}];
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;
        [v4 bounds];
        v18.origin.x = v9;
        v18.origin.y = v11;
        v18.size.width = v13;
        v18.size.height = v15;
        v16 = CGRectIntersectsRect(v17, v18);
        (*(v1 + 16))(v0, !v16, ObjectType, v1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D45C0D8(void *a1)
{
  v2 = v1;
  v4 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v4);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 16) = a1;
  sub_21D0CE468();
  v5 = a1;
  v6 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v7 = swift_allocObject();
  v7[3] = 0;
  swift_unknownObjectWeakInit();
  v8 = MEMORY[0x277D84F90];
  v12[0] = MEMORY[0x277D84F90];
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v7[5] = sub_21DBF5EEC();
  v7[6] = v8;
  v7[4] = v6;
  *(v2 + 80) = v7;
  *(v2 + 72) = [objc_allocWithZone(type metadata accessor for ScrollOffsetObserver()) init];
  v9 = *(v2 + 80);
  swift_beginAccess();
  *(v9 + 24) = &protocol witness table for TTRIChromelessToolbarUpdater;
  swift_unknownObjectWeakAssign();
  swift_weakAssign();
  swift_getKeyPath();
  swift_allocObject();
  swift_weakInit();
  v10 = sub_21DBF530C();

  v12[3] = sub_21DBF52BC();
  v12[0] = v10;
  swift_beginAccess();
  sub_21D45C42C(v12, v2 + 40);
  swift_endAccess();
  [v5 _addScrollViewScrollObserver_];
  return v2;
}

uint64_t sub_21D45C42C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id TTRListDetailBadgeViewModel.init()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D1BAC0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = xmmword_280D1BAC8;
  v3 = qword_280D1BAD8;
  v4 = unk_280D1BAE0;
  v5 = xmmword_280D1BAE8;
  v6 = byte_280D1BAF8;
  v9 = *MEMORY[0x277D44960];
  v7 = *MEMORY[0x277D44960];
  *a1 = xmmword_21DC0E710;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_21D0FB960(v2, *(&v2 + 1), v3, v4, v5, *(&v5 + 1), v6);

  return v9;
}

uint64_t TTRListDetailBadgeViewModel.init(listProtocol:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 48))(v4, v5);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = [v6 emoji];
  if (!v8)
  {

LABEL_5:
    v14 = type metadata accessor for TTRListBadgeEmblem();
    v15 = a1[3];
    v16 = a1[4];
    v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
    v31 = sub_21D6589DC(v17, v14, v15, v16);
    v18 = v31;
    v30 = REMListBadgeEmblem.name.getter();
    v12 = v19;

    v29 = 0;
    v13 = 0;
    goto LABEL_6;
  }

  v9 = v8;
  v10 = sub_21DBFA16C();
  v12 = v11;

  sub_21DBF8E0C();
  v13 = 1;
  v30 = v10;
  v31 = v10;
  v29 = v12;
LABEL_6:
  type metadata accessor for TTRListColors();
  sub_21D0D32E4(a1, v32);
  static TTRListColors.color(for:)(v32, v33);
  sub_21D45C980(v32);
  v20 = v34;
  v21 = v35;
  v22 = v36;
  v27 = v33[1];
  v28 = v33[0];
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  (*(v24 + 56))(v33, v23, v24);
  v25 = v33[0];
  v32[0] = v22;
  *a2 = v30;
  *(a2 + 8) = v12;
  *(a2 + 16) = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v20;
  *(a2 + 56) = v21;
  *(a2 + 64) = v22;
  *(a2 + 65) = v33[0];
  *(a2 + 68) = *(v33 + 3);
  *(a2 + 72) = v31;
  *(a2 + 80) = v29;
  *(a2 + 88) = v13;
  *(a2 + 89) = v25;
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TTRListDetailBadgeViewModel.badgeName.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

id TTRListDetailBadgeViewModel.badgeColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_21D0FB960(v2, v3, v4, v5, v6, v7, v8);
}

double TTRListDetailBadgeViewModel.init(listOrCustomSmartList:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {
    v4 = sub_21D0D8CF0(0, &qword_280D0C320);
    v5 = &protocol witness table for REMSmartList;
  }

  else
  {
    v4 = sub_21D0D8CF0(0, &qword_280D17690);
    v5 = &protocol witness table for REMList;
  }

  v12[3] = v4;
  v12[4] = v5;
  v12[0] = v3;
  sub_21D0D32E4(v12, v9);
  TTRListDetailBadgeViewModel.init(listProtocol:)(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v6 = v10[3];
  a2[2] = v10[2];
  a2[3] = v6;
  a2[4] = v11[0];
  *(a2 + 74) = *(v11 + 10);
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  a2[1] = v8;
  return result;
}

double TTRListDetailBadgeViewModel.init(listOrCustomSmartListChangeItem:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {
    v4 = sub_21D0D8CF0(0, &qword_27CE592C8);
    v5 = &protocol witness table for REMSmartListChangeItem;
  }

  else
  {
    v4 = sub_21D0D8CF0(0, &unk_280D177F0);
    v5 = &protocol witness table for REMListChangeItem;
  }

  v12[3] = v4;
  v12[4] = v5;
  v12[0] = v3;
  sub_21D0D32E4(v12, v9);
  TTRListDetailBadgeViewModel.init(listProtocol:)(v9, v10);
  __swift_destroy_boxed_opaque_existential_0(v12);
  v6 = v10[3];
  a2[2] = v10[2];
  a2[3] = v6;
  a2[4] = v11[0];
  *(a2 + 74) = *(v11 + 10);
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  a2[1] = v8;
  return result;
}

uint64_t sub_21D45C980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s15RemindersUICore27TTRListDetailBadgeViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v16 = *(a2 + 48);
  v17 = *(a2 + 56);
  v18 = *(a2 + 64);
  if (v3)
  {
    if (!v11)
    {
      return 0;
    }

    v28 = *(a1 + 89);
    v29 = *(a2 + 88);
    v30 = *(a2 + 80);
    v31 = *(a2 + 72);
    v32 = *(a1 + 88);
    v33 = *(a1 + 80);
    v34 = *(a1 + 72);
    v27 = *(a2 + 89);
    if (*a1 != *a2 || v3 != v11)
    {
      v25 = *(a1 + 48);
      v26 = *(a1 + 16);
      v24 = *(a1 + 56);
      v23 = *(a1 + 64);
      v19 = sub_21DBFC64C();
      v10 = v23;
      v9 = v24;
      v7 = v25;
      v4 = v26;
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v28 = *(a1 + 89);
    v29 = *(a2 + 88);
    v30 = *(a2 + 80);
    v31 = *(a2 + 72);
    v32 = *(a1 + 88);
    v33 = *(a1 + 80);
    v34 = *(a1 + 72);
    v27 = *(a2 + 89);
    if (v11)
    {
      return 0;
    }
  }

  v42 = v4;
  v43 = v5;
  v44 = v6;
  v45 = v8;
  v46 = v7;
  v47 = v9;
  v48 = v10;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  sub_21D0FB960(v4, v5, v6, v8, v7, v9, v10);
  sub_21D0FB960(v12, v13, v14, v15, v16, v17, v18);
  v20 = _s15RemindersUICore24TTRCrossDeviceIdentifierO2eeoiySbAC_ACtFZ_0(&v42, &v35);
  sub_21D1078C0(v35, v36, v37, v38, v39, v40, v41);
  sub_21D1078C0(v42, v43, v44, v45, v46, v47, v48);
  if (v20)
  {
    v42 = v34;
    v43 = v33;
    LOBYTE(v44) = v32;
    v35 = v31;
    v36 = v30;
    LOBYTE(v37) = v29;
    sub_21D0FB9BC(v34, v33, v32);
    sub_21D0FB9BC(v31, v30, v29);
    v21 = _s15RemindersUICore27TTRListDetailViewModelBadgeO2eeoiySbAC_ACtFZ_0(&v42, &v35);
    sub_21D0FB9F4(v35, v36, v37);
    sub_21D0FB9F4(v42, v43, v44);
    if (v21)
    {
      return v28 ^ v27 ^ 1u;
    }
  }

  return 0;
}

unint64_t _s15RemindersUICore16TTRListBadgeViewC14shareSheetIcon4withSo7UIImageCSgAA0c6DetaildE5ModelV_tFZ_0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v39 = a1[7];
  v38 = *(a1 + 64);
  v36 = a1[9];
  v37 = a1[10];
  v34 = *(a1 + 88);
  v8 = *(a1 + 89);
  v9 = [objc_allocWithZone(type metadata accessor for TTRListBadgeView()) initWithFrame_];
  v10 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiFontSize;
  swift_beginAccess();
  v11 = *&v9[v10];
  *&v9[v10] = 0x403E000000000000;
  if (v11 != 30.0)
  {
    v12 = *&v9[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emojiView];
    if (v12)
    {
      v33 = v2;
      v13 = v12;
      v14 = [v13 font];
      if (v14)
      {
        v15 = v14;
        v32 = v13;
        v16 = [v14 fontWithSize_];
        [v32 setFont_];

        v13 = v32;
      }

      v2 = v33;
    }
  }

  if (v8)
  {
    if (qword_27CE57088 != -1)
    {
      swift_once();
    }

    v40 = xmmword_27CE65AC0;
    v41 = *algn_27CE65AD0;
    v42 = qword_27CE65AE0;
    LOBYTE(v43) = byte_27CE65AE8;
  }

  else
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    LOBYTE(v43) = 2;
  }

  sub_21D113874(&v40);
  if (v34)
  {
    v17 = &v9[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_emoji];
    swift_beginAccess();
    v35 = v1;
    v18 = v7;
    v19 = v6;
    v20 = v5;
    v21 = v4;
    v22 = v3;
    v23 = v2;
    v25 = *v17;
    v24 = v17[1];
    *v17 = v36;
    v17[1] = v37;
    sub_21DBF8E0C();
    v26 = v25;
    v2 = v23;
    v3 = v22;
    v4 = v21;
    v5 = v20;
    v6 = v19;
    v7 = v18;
    v1 = v35;
    sub_21D1136D0(v26, v24);
  }

  else
  {
    v27 = REMListBadgeEmblem.image.getter(v36);
    sub_21D112D3C(v27);
    sub_21D0FB9F4(v36, v37, 0);
  }

  *&v40 = v3;
  *(&v40 + 1) = v4;
  *&v41 = v5;
  *(&v41 + 1) = v6;
  v42 = v7;
  v43 = v39;
  v44 = v38;
  sub_21D0FB960(v3, v4, v5, v6, v7, v39, v38);
  sub_21D113E3C(&v40);
  v28 = &v9[OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityName];
  swift_beginAccess();
  *v28 = v2;
  v28[1] = v1;
  sub_21DBF8E0C();

  v29 = OBJC_IVAR____TtC15RemindersUICore16TTRListBadgeView_ttrAccessibilityShouldIgnoreAccessibilityName;
  swift_beginAccess();
  v9[v29] = v1 == 0;
  v30 = UIView.snapshotImage()();

  return v30;
}

uint64_t assignWithCopy for TTRReminderDetailViewModel.BadgeViewModel.Badge(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D0FB9BC(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_21D0FB9F4(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRReminderDetailViewModel.BadgeViewModel.Badge(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_21D0FB9F4(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderDetailViewModel.BadgeViewModel.Badge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t assignWithCopy for TTRListDetailBadgeViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  v10 = *(a2 + 64);
  sub_21D0FB960(v4, v5, v6, v7, v8, v9, v10);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  *(a1 + 64) = v10;
  sub_21D1078C0(v11, v12, v13, v14, v15, v16, v17);
  v18 = *(a2 + 72);
  v19 = *(a2 + 80);
  LOBYTE(v6) = *(a2 + 88);
  sub_21D0FB9BC(v18, v19, v6);
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  v22 = *(a1 + 88);
  *(a1 + 72) = v18;
  *(a1 + 80) = v19;
  *(a1 + 88) = v6;
  sub_21D0FB9F4(v20, v21, v22);
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

uint64_t assignWithTake for TTRListDetailBadgeViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 64);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v13;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  sub_21D1078C0(v6, v7, v8, v9, v10, v11, v12);
  v14 = *(a2 + 88);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v14;
  sub_21D0FB9F4(v15, v16, v17);
  *(a1 + 89) = *(a2 + 89);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRListDetailBadgeViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
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

uint64_t storeEnumTagSinglePayload for TTRListDetailBadgeViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_21D45D23C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5C710);
  v1 = __swift_project_value_buffer(v0, qword_27CE5C710);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRIHashtagAssociationBackgroundTaskPerformer.__allocating_init(app:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void TTRIHashtagAssociationBackgroundTaskPerformer.beginBackgroundTask(named:expirationHandler:)(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = type metadata accessor for TTRIHashtagAssociationBackgroundTaskPerformer.BackgroundTask();
  v9 = swift_allocObject();
  *(v9 + 16) = *MEMORY[0x277D767B0];
  *(v9 + 24) = v7;
  v10 = qword_27CE568F8;
  v19 = v7;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5C710);
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAE9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRIHashtagAssociationBackgroundTaskPerformer: begin background task", v14, 2u);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  v15 = sub_21DBFA12C();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v9;
  aBlock[4] = sub_21D45D588;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_28;
  v17 = _Block_copy(aBlock);

  v18 = [v19 beginBackgroundTaskWithName:v15 expirationHandler:v17];
  _Block_release(v17);

  *(v9 + 16) = v18;
  a3[3] = v8;
  a3[4] = &off_282EBDB30;
  *a3 = v9;
}

void sub_21D45D5C0()
{
  v1 = *MEMORY[0x277D767B0];
  if (*(v0 + 16) != *MEMORY[0x277D767B0])
  {
    v2 = v0;
    if (qword_27CE568F8 != -1)
    {
      swift_once();
    }

    v3 = sub_21DBF84BC();
    __swift_project_value_buffer(v3, qword_27CE5C710);
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAE9C();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21D0C9000, v4, v5, "TTRIHashtagAssociationBackgroundTaskPerformer: end background task", v6, 2u);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    [*(v2 + 24) endBackgroundTask_];
    *(v2 + 16) = v1;
  }
}

uint64_t sub_21D45D6D0()
{

  return swift_deallocClassInstance();
}

uint64_t TTRIHashtagAssociationBackgroundTaskPerformer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRIReminderCellTitleModuleInterface.editableReminderCell.getter(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 16))())
  {
    return 0;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(v2, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t TTRIReminderCellTitleModuleInterface.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  (*(*(a2 + 8) + 8))(a1, v7);
  v10 = type metadata accessor for TTRReminderCellTitleViewModel();
  v11 = 1;
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    sub_21D1D338C(v9, a3);
    v11 = 0;
  }

  sub_21D45D9B0(v9);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t sub_21D45D9B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRIReminderCellNotesModuleInterface.item.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - v8;
  (*(a2 + 8))(a1, a2, v7);
  v10 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v11 = 1;
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    sub_21D1D338C(v9, a3);
    v11 = 0;
  }

  sub_21D45DC38(v9);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  return (*(*(v12 - 8) + 56))(a3, v11, 1, v12);
}

uint64_t sub_21D45DC38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRIReminderCellNotesModuleInterface.editableReminderCell.getter(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 32))())
  {
    return 0;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 16))(v2, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

id TTRITreeViewMultiRowReorderingDropIndicatorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRITreeViewMultiRowReorderingDropIndicatorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v13.receiver = v4;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a1, a2, a3, a4);
  sub_21D45DF20();

  return v11;
}

void sub_21D45DF20()
{
  [v0 setUserInteractionEnabled_];
  v1 = objc_opt_self();
  v2 = [v1 ttr_systemBlueColor];
  [v0 setBackgroundColor_];

  v3 = [v0 layer];
  [v3 setCornerRadius_];

  v4 = [v0 layer];
  [v4 setCornerCurve_];

  v5 = [v0 layer];
  [v5 setBorderWidth_];

  v6 = [v0 layer];
  v7 = [v1 whiteColor];
  v8 = [v7 CGColor];

  [v6 setBorderColor_];
  v9 = [v0 layer];
  [v9 setShadowRadius_];

  v10 = [v0 layer];
  v11 = [v1 blackColor];
  v12 = [v11 CGColor];

  [v10 setShadowColor_];
  v13 = [v0 layer];
  LODWORD(v14) = 1050253722;
  [v13 setShadowOpacity_];

  v15 = [v0 layer];
  [v15 setShadowOffset_];
}

Swift::Void __swiftcall TTRITreeViewMultiRowReorderingDropIndicatorView.layoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  [v0 bounds];
  v3 = &v0[OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize];
  if ((v0[OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize + 16] & 1) != 0 || v1 != *v3 || v2 != v3[1])
  {
    *v3 = v1;
    v3[1] = v2;
    *(v3 + 16) = 0;
    v4 = v1;
    v5 = v2;
    v6 = [v0 layer];
    v7 = [objc_opt_self() bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v4, v5, 2.0}];
    v8 = [v7 CGPath];

    [v6 setShadowPath_];
  }
}

id TTRITreeViewMultiRowReorderingDropIndicatorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D45E4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for TTRIReminderCellNotesViewModel()
{
  result = qword_280D126A0;
  if (!qword_280D126A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRIReminderCellNotesViewModel.allowsEditing.setter(char a1)
{
  result = type metadata accessor for TTRIReminderCellNotesViewModel();
  *(v1 + *(result + 20)) = a1;
  return result;
}

void *TTRIReminderCellNotesViewModel.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRIReminderCellNotesViewModel() + 24));
  v2 = v1;
  return v1;
}

void TTRIReminderCellNotesViewModel.notes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderCellNotesViewModel() + 24);

  *(v1 + v3) = a1;
}

uint64_t TTRIReminderCellNotesViewModel.baseTextStyles.getter()
{
  type metadata accessor for TTRIReminderCellNotesViewModel();

  return sub_21DBF8E0C();
}

uint64_t TTRIReminderCellNotesViewModel.baseTextStyles.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRIReminderCellNotesViewModel() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t TTRIReminderCellNotesViewModel.inlineHashtagVisibility.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for TTRIReminderCellNotesViewModel() + 32));

  return sub_21DBF8E0C();
}

uint64_t TTRIReminderCellNotesViewModel.inlineHashtagVisibility.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for TTRIReminderCellNotesViewModel() + 32);

  *(v1 + v3) = v2;
  return result;
}

uint64_t TTRIReminderCellNotesViewModel.supportsStyling.setter(char a1)
{
  result = type metadata accessor for TTRIReminderCellNotesViewModel();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t TTRIReminderCellNotesViewModel.init(item:allowsEditing:notes:baseTextStyles:inlineHashtagVisibility:supportsStyling:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = *a5;
  v14 = type metadata accessor for TTRIReminderCellNotesViewModel();
  v15 = v14[6];
  v16 = v14[7];
  result = sub_21D24BDFC(a1, a7);
  *(a7 + v14[5]) = a2;
  *(a7 + v15) = a3;
  *(a7 + v16) = a4;
  *(a7 + v14[8]) = v13;
  *(a7 + v14[9]) = a6;
  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRIReminderCellNotesViewModel(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v6 = a3;
    v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v28 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v29 = *(v28 - 8);
            if ((*(v29 + 48))(a2, 1, v28))
            {
              v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v30 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v39 = *(v28 + 20);
              v40 = sub_21DBF6C1C();
              v103 = *(*(v40 - 8) + 16);
              sub_21DBF8E0C();
              v103(a1 + v39, a2 + v39, v40);
              (*(v29 + 56))(a1, 0, 1, v28);
            }

            v41 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v42 = (a1 + v41);
            v43 = (a2 + v41);
            v44 = v43[1];
            if (v44)
            {
              *v42 = *v43;
              v42[1] = v44;
              v45 = v43[2];
              v42[2] = v45;
              sub_21DBF8E0C();
              v46 = v45;
            }

            else
            {
              *v42 = *v43;
              v42[2] = v43[2];
            }

            goto LABEL_129;
          case 7:
            v34 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v35 = *(v34 - 8);
            if ((*(v35 + 48))(a2, 1, v34))
            {
              v36 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v36 - 8) + 64));
            }

            else
            {
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(a1, a2, v48);
              *(a1 + *(v34 + 20)) = *(a2 + *(v34 + 20));
              (*(v35 + 56))(a1, 0, 1, v34);
            }

            v49 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v49 + 20)) = *(a2 + *(v49 + 20));
            goto LABEL_129;
          case 8:
            *a1 = *a2;
            v9 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v10 = sub_21DBF8D7C();
            (*(*(v10 - 8) + 16))(a1 + v9, a2 + v9, v10);
LABEL_129:
            swift_storeEnumTagMultiPayload();
            goto LABEL_130;
        }

LABEL_35:
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_130:
        v94 = v6[6];
        *(a1 + v6[5]) = *(a2 + v6[5]);
        v95 = *(a2 + v94);
        *(a1 + v94) = v95;
        v96 = v6[8];
        *(a1 + v6[7]) = *(a2 + v6[7]);
        *(a1 + v96) = *(a2 + v96);
        *(a1 + v6[9]) = *(a2 + v6[9]);
        v97 = v95;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        return a1;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        v20 = a2[2];
        a1[2] = v20;
        v21 = v20;
        goto LABEL_129;
      }

      v31 = *a2;
      *a1 = *a2;
      v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v17 = *(v16 - 8);
      v32 = *(v17 + 48);
      v33 = v31;
      if (v32(a2 + v15, 1, v16))
      {
LABEL_28:
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v15, a2 + v15, *(*(v27 - 8) + 64));
        goto LABEL_129;
      }

      v47 = swift_getEnumCaseMultiPayload();
      if (v47 > 4)
      {
        if (v47 <= 7)
        {
          if (v47 == 5 || v47 == 6)
          {
            goto LABEL_114;
          }

          goto LABEL_127;
        }

        if (v47 != 8 && v47 != 9)
        {
          goto LABEL_127;
        }

LABEL_113:
        v91 = *(a2 + v15);
        *(a1 + v15) = v91;
        v92 = v91;
        swift_storeEnumTagMultiPayload();
LABEL_128:
        (*(v17 + 56))(a1 + v15, 0, 1, v16);
        goto LABEL_129;
      }

      if (v47 <= 2)
      {
        if (v47 != 1)
        {
          if (v47 == 2)
          {
            goto LABEL_114;
          }

LABEL_127:
          memcpy(a1 + v15, a2 + v15, *(v17 + 64));
          goto LABEL_128;
        }

        goto LABEL_113;
      }

LABEL_114:
      v93 = sub_21DBF563C();
      (*(*(v93 - 8) + 16))(a1 + v15, a2 + v15, v93);
      swift_storeEnumTagMultiPayload();
      goto LABEL_128;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v24 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v25 = *(v17 + 48);
        v26 = v24;
        if (v25(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v38 = swift_getEnumCaseMultiPayload();
        if (v38 > 4)
        {
          if (v38 <= 7)
          {
            if (v38 == 5 || v38 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v38 != 8 && v38 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v38 > 2)
        {
          goto LABEL_114;
        }

        if (v38 == 1)
        {
          goto LABEL_113;
        }

        if (v38 != 2)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v14 = *a2;
        *a1 = *a2;
        v15 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v16 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v17 = *(v16 - 8);
        v18 = *(v17 + 48);
        v19 = v14;
        if (v18(a2 + v15, 1, v16))
        {
          goto LABEL_28;
        }

        v37 = swift_getEnumCaseMultiPayload();
        if (v37 > 4)
        {
          if (v37 <= 7)
          {
            if (v37 == 5 || v37 == 6)
            {
              goto LABEL_114;
            }

            goto LABEL_127;
          }

          if (v37 != 8 && v37 != 9)
          {
            goto LABEL_127;
          }

          goto LABEL_113;
        }

        if (v37 > 2)
        {
          goto LABEL_114;
        }

        if (v37 == 1)
        {
          goto LABEL_113;
        }

        if (v37 != 2)
        {
          goto LABEL_127;
        }
      }

      goto LABEL_114;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_35;
      }

      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = swift_getEnumCaseMultiPayload();
      v108 = v6;
      if (v13 <= 4)
      {
        if (v13 > 2)
        {
LABEL_65:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(a1, a2, v50);
          swift_storeEnumTagMultiPayload();
          goto LABEL_92;
        }

        if (v13 != 1)
        {
          if (v13 == 2)
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        }

LABEL_68:
        v51 = *a2;
        *a1 = *a2;
        v52 = v51;
        swift_storeEnumTagMultiPayload();
        goto LABEL_92;
      }

      if (v13 > 7)
      {
        if (v13 == 8 || v13 == 9)
        {
          goto LABEL_68;
        }
      }

      else if (v13 == 5 || v13 == 6)
      {
        goto LABEL_65;
      }

LABEL_91:
      memcpy(a1, a2, *(*(v12 - 8) + 64));
LABEL_92:
      v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v57 = v56[5];
      v58 = a1 + v57;
      v59 = a2 + v57;
      v60 = *(a2 + v57 + 8);
      if (v60)
      {
        *v58 = *v59;
        *(v58 + 1) = v60;
        v61 = *(v59 + 2);
        v62 = *(v59 + 3);
        v63 = *(v59 + 4);
        v64 = *(v59 + 5);
        v65 = *(v59 + 6);
        v99 = *(v59 + 7);
        v104 = v59[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v61, v62, v63, v64, v65, v99, v104);
        *(v58 + 2) = v61;
        *(v58 + 3) = v62;
        *(v58 + 4) = v63;
        *(v58 + 5) = v64;
        *(v58 + 6) = v65;
        *(v58 + 7) = v99;
        v58[64] = v104;
        *(v58 + 65) = *(v59 + 65);
        v66 = v59[120];
        if (v66 == 255)
        {
          *(v58 + 72) = *(v59 + 72);
          *(v58 + 88) = *(v59 + 88);
          *(v58 + 104) = *(v59 + 104);
          v58[120] = v59[120];
        }

        else
        {
          v67 = *(v59 + 9);
          v68 = *(v59 + 12);
          v100 = *(v59 + 11);
          v105 = *(v59 + 10);
          v69 = *(v59 + 13);
          v70 = *(v59 + 14);
          v71 = v66 & 1;
          sub_21D0FB960(v67, v105, v100, v68, v69, v70, v66 & 1);
          *(v58 + 9) = v67;
          *(v58 + 10) = v105;
          *(v58 + 11) = v100;
          *(v58 + 12) = v68;
          *(v58 + 13) = v69;
          *(v58 + 14) = v70;
          v58[120] = v71;
        }

        v6 = v108;
        v58[121] = v59[121];
        goto LABEL_98;
      }

LABEL_95:
      v72 = *(v59 + 5);
      *(v58 + 4) = *(v59 + 4);
      *(v58 + 5) = v72;
      *(v58 + 6) = *(v59 + 6);
      *(v58 + 106) = *(v59 + 106);
      v73 = *(v59 + 1);
      *v58 = *v59;
      *(v58 + 1) = v73;
      v74 = *(v59 + 3);
      *(v58 + 2) = *(v59 + 2);
      *(v58 + 3) = v74;
LABEL_98:
      *(a1 + v56[6]) = *(a2 + v56[6]);
      *(a1 + v56[7]) = *(a2 + v56[7]);
      *(a1 + v56[8]) = *(a2 + v56[8]);
      *(a1 + v56[9]) = *(a2 + v56[9]);
      *(a1 + v56[10]) = *(a2 + v56[10]);
      v75 = v56[11];
      v76 = *(a2 + v75);
      *(a1 + v75) = v76;
      v77 = v76;
      goto LABEL_129;
    }

    v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v23 = swift_getEnumCaseMultiPayload();
    v109 = v6;
    if (v23 <= 4)
    {
      if (v23 > 2)
      {
LABEL_69:
        v53 = sub_21DBF563C();
        (*(*(v53 - 8) + 16))(a1, a2, v53);
        swift_storeEnumTagMultiPayload();
        goto LABEL_100;
      }

      if (v23 != 1)
      {
        if (v23 == 2)
        {
          goto LABEL_69;
        }

        goto LABEL_99;
      }

LABEL_72:
      v54 = *a2;
      *a1 = *a2;
      v55 = v54;
      swift_storeEnumTagMultiPayload();
      goto LABEL_100;
    }

    if (v23 > 7)
    {
      if (v23 == 8 || v23 == 9)
      {
        goto LABEL_72;
      }
    }

    else if (v23 == 5 || v23 == 6)
    {
      goto LABEL_69;
    }

LABEL_99:
    memcpy(a1, a2, *(*(v22 - 8) + 64));
LABEL_100:
    v56 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v78 = v56[5];
    v58 = a1 + v78;
    v59 = a2 + v78;
    v79 = *(a2 + v78 + 8);
    if (v79)
    {
      *v58 = *v59;
      *(v58 + 1) = v79;
      v80 = *(v59 + 2);
      v81 = *(v59 + 3);
      v82 = *(v59 + 4);
      v83 = *(v59 + 5);
      v84 = *(v59 + 6);
      v101 = *(v59 + 7);
      v106 = v59[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v80, v81, v82, v83, v84, v101, v106);
      *(v58 + 2) = v80;
      *(v58 + 3) = v81;
      *(v58 + 4) = v82;
      *(v58 + 5) = v83;
      *(v58 + 6) = v84;
      *(v58 + 7) = v101;
      v58[64] = v106;
      *(v58 + 65) = *(v59 + 65);
      v85 = v59[120];
      if (v85 == 255)
      {
        *(v58 + 72) = *(v59 + 72);
        *(v58 + 88) = *(v59 + 88);
        *(v58 + 104) = *(v59 + 104);
        v58[120] = v59[120];
      }

      else
      {
        v86 = *(v59 + 9);
        v87 = *(v59 + 12);
        v102 = *(v59 + 11);
        v107 = *(v59 + 10);
        v88 = *(v59 + 13);
        v89 = *(v59 + 14);
        v90 = v85 & 1;
        sub_21D0FB960(v86, v107, v102, v87, v88, v89, v85 & 1);
        *(v58 + 9) = v86;
        *(v58 + 10) = v107;
        *(v58 + 11) = v102;
        *(v58 + 12) = v87;
        *(v58 + 13) = v88;
        *(v58 + 14) = v89;
        v58[120] = v90;
      }

      v6 = v109;
      v58[121] = v59[121];
      goto LABEL_98;
    }

    goto LABEL_95;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = (v11 + ((v5 + 16) & ~v5));

  return a1;
}

uint64_t destroy for TTRIReminderCellNotesViewModel(id *a1, uint64_t a2)
{
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
          if (!(*(*(v11 - 8) + 48))(a1, 1, v11))
          {

            v12 = *(v11 + 20);
            v13 = sub_21DBF6C1C();
            (*(*(v13 - 8) + 8))(a1 + v12, v13);
          }

          v14 = (a1 + *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20));
          if (v14[1])
          {
          }

          break;
        case 7:
          v15 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
          if (!(*(*(v15 - 8) + 48))(a1, 1, v15))
          {
            v16 = sub_21DBF563C();
            (*(*(v16 - 8) + 8))(a1, v16);
          }

          break;
        case 8:
          v5 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
          v6 = sub_21DBF8D7C();
          (*(*(v6 - 8) + 8))(a1 + v5, v6);
          break;
      }

      goto LABEL_46;
    }

    if (EnumCaseMultiPayload != 4)
    {

      goto LABEL_46;
    }

LABEL_17:

    v8 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v9 - 8) + 48))(a1 + v8, 1, v9))
    {
      goto LABEL_46;
    }

    v10 = swift_getEnumCaseMultiPayload();
    if (v10 > 4)
    {
      if (v10 <= 7)
      {
        if (v10 != 5 && v10 != 6)
        {
          goto LABEL_46;
        }

LABEL_45:
        v21 = sub_21DBF563C();
        (*(*(v21 - 8) + 8))(a1 + v8, v21);
        goto LABEL_46;
      }

      if (v10 != 8 && v10 != 9)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (v10 > 2)
      {
        goto LABEL_45;
      }

      if (v10 != 1)
      {
        if (v10 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    goto LABEL_46;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 1)
  {
    goto LABEL_46;
  }

  type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 != 5 && v7 != 6)
      {
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    if (v7 != 8 && v7 != 9)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 > 2)
  {
LABEL_37:
    v17 = sub_21DBF563C();
    (*(*(v17 - 8) + 8))(a1, v17);
    goto LABEL_41;
  }

  if (v7 == 1)
  {
LABEL_40:

    goto LABEL_41;
  }

  if (v7 == 2)
  {
    goto LABEL_37;
  }

LABEL_41:
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
  v19 = a1 + *(v18 + 20);
  if (*(v19 + 1))
  {

    sub_21D179EF0(*(v19 + 2), *(v19 + 3), *(v19 + 4), *(v19 + 5), *(v19 + 6), *(v19 + 7), v19[64]);
    v20 = v19[120];
    if (v20 != 255)
    {
      sub_21D1078C0(*(v19 + 9), *(v19 + 10), *(v19 + 11), *(v19 + 12), *(v19 + 13), *(v19 + 14), v20 & 1);
    }
  }

LABEL_46:
}

void **initializeWithCopy for TTRIReminderCellNotesViewModel(void **a1, void **a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_26;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_33;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v116 = a3;
      if (v11 > 4)
      {
        if (v11 <= 7)
        {
          if (v11 == 5 || v11 == 6)
          {
            goto LABEL_63;
          }

          goto LABEL_89;
        }

        if (v11 != 8 && v11 != 9)
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v11 > 2)
        {
LABEL_63:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
LABEL_90:
          v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
          v55 = v54[5];
          v56 = a1 + v55;
          v57 = a2 + v55;
          v58 = *(a2 + v55 + 8);
          if (v58)
          {
            v113 = a2;
            *v56 = *v57;
            *(v56 + 1) = v58;
            v59 = *(v57 + 2);
            v60 = *(v57 + 3);
            v61 = *(v57 + 4);
            v62 = *(v57 + 5);
            v64 = *(v57 + 6);
            v63 = *(v57 + 7);
            v108 = v57[64];
            sub_21DBF8E0C();
            sub_21D2A7DB4(v59, v60, v61, v62, v64, v63, v108);
            *(v56 + 2) = v59;
            *(v56 + 3) = v60;
            *(v56 + 4) = v61;
            *(v56 + 5) = v62;
            *(v56 + 6) = v64;
            *(v56 + 7) = v63;
            v56[64] = v108;
            *(v56 + 65) = *(v57 + 65);
            v65 = v57[120];
            if (v65 == 255)
            {
              *(v56 + 72) = *(v57 + 72);
              *(v56 + 88) = *(v57 + 88);
              *(v56 + 104) = *(v57 + 104);
              v56[120] = v57[120];
            }

            else
            {
              v66 = *(v57 + 9);
              v109 = *(v57 + 10);
              v67 = *(v57 + 11);
              v68 = *(v57 + 12);
              v69 = *(v57 + 13);
              v70 = *(v57 + 14);
              v71 = v65 & 1;
              sub_21D0FB960(v66, v109, v67, v68, v69, v70, v65 & 1);
              *(v56 + 9) = v66;
              *(v56 + 10) = v109;
              *(v56 + 11) = v67;
              *(v56 + 12) = v68;
              *(v56 + 13) = v69;
              *(v56 + 14) = v70;
              v56[120] = v71;
            }

            a3 = v116;
            v56[121] = v57[121];
            a2 = v113;
          }

          else
          {
            v72 = *(v57 + 5);
            *(v56 + 4) = *(v57 + 4);
            *(v56 + 5) = v72;
            *(v56 + 6) = *(v57 + 6);
            *(v56 + 106) = *(v57 + 106);
            v73 = *(v57 + 1);
            *v56 = *v57;
            *(v56 + 1) = v73;
            v74 = *(v57 + 3);
            *(v56 + 2) = *(v57 + 2);
            *(v56 + 3) = v74;
          }

          *(a1 + v54[6]) = *(a2 + v54[6]);
          *(a1 + v54[7]) = *(a2 + v54[7]);
          *(a1 + v54[8]) = *(a2 + v54[8]);
          *(a1 + v54[9]) = *(a2 + v54[9]);
          *(a1 + v54[10]) = *(a2 + v54[10]);
          v75 = v54[11];
          v76 = *(a2 + v75);
          *(a1 + v75) = v76;
          v77 = v76;
          goto LABEL_128;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_63;
          }

LABEL_89:
          memcpy(a1, a2, *(*(v10 - 8) + 64));
          goto LABEL_90;
        }
      }

      v49 = *a2;
      *a1 = *a2;
      v50 = v49;
      swift_storeEnumTagMultiPayload();
      goto LABEL_90;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    v117 = a3;
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_67;
        }

        goto LABEL_97;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_97;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_67:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        v78 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
        v79 = v78[5];
        v80 = a1 + v79;
        v81 = a2 + v79;
        v82 = *(a2 + v79 + 8);
        if (v82)
        {
          *v80 = *v81;
          *(v80 + 1) = v82;
          v83 = *(v81 + 2);
          v84 = *(v81 + 3);
          v85 = *(v81 + 4);
          v86 = *(v81 + 5);
          v87 = *(v81 + 6);
          v114 = *(v81 + 7);
          v110 = v81[64];
          sub_21DBF8E0C();
          sub_21D2A7DB4(v83, v84, v85, v86, v87, v114, v110);
          *(v80 + 2) = v83;
          *(v80 + 3) = v84;
          *(v80 + 4) = v85;
          *(v80 + 5) = v86;
          *(v80 + 6) = v87;
          *(v80 + 7) = v114;
          v80[64] = v110;
          *(v80 + 65) = *(v81 + 65);
          v88 = v81[120];
          if (v88 == 255)
          {
            *(v80 + 72) = *(v81 + 72);
            *(v80 + 88) = *(v81 + 88);
            *(v80 + 104) = *(v81 + 104);
            v80[120] = v81[120];
          }

          else
          {
            v111 = *(v81 + 10);
            v115 = *(v81 + 9);
            v89 = *(v81 + 11);
            v90 = *(v81 + 12);
            v91 = *(v81 + 13);
            v92 = *(v81 + 14);
            v93 = v88 & 1;
            sub_21D0FB960(v115, v111, v89, v90, v91, v92, v88 & 1);
            *(v80 + 9) = v115;
            *(v80 + 10) = v111;
            *(v80 + 11) = v89;
            *(v80 + 12) = v90;
            *(v80 + 13) = v91;
            *(v80 + 14) = v92;
            v80[120] = v93;
          }

          a3 = v117;
          v80[121] = v81[121];
        }

        else
        {
          v94 = *(v81 + 5);
          *(v80 + 4) = *(v81 + 4);
          *(v80 + 5) = v94;
          *(v80 + 6) = *(v81 + 6);
          *(v80 + 106) = *(v81 + 106);
          v95 = *(v81 + 1);
          *v80 = *v81;
          *(v80 + 1) = v95;
          v96 = *(v81 + 3);
          *(v80 + 2) = *(v81 + 2);
          *(v80 + 3) = v96;
        }

        *(a1 + v78[6]) = *(a2 + v78[6]);
        *(a1 + v78[7]) = *(a2 + v78[7]);
        *(a1 + v78[8]) = *(a2 + v78[8]);
        *(a1 + v78[9]) = *(a2 + v78[9]);
        *(a1 + v78[10]) = *(a2 + v78[10]);
        v97 = v78[11];
        v98 = *(a2 + v97);
        *(a1 + v97) = v98;
        v99 = v98;
        goto LABEL_128;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_67;
        }

LABEL_97:
        memcpy(a1, a2, *(*(v20 - 8) + 64));
        goto LABEL_98;
      }
    }

    v52 = *a2;
    *a1 = *a2;
    v53 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_98;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v18 = a2[2];
      a1[2] = v18;
      v19 = v18;
      goto LABEL_128;
    }

    v29 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v30 = *(v15 + 48);
    v31 = v29;
    if (v30(a2 + v13, 1, v14))
    {
LABEL_26:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
      memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
      goto LABEL_128;
    }

    v45 = swift_getEnumCaseMultiPayload();
    if (v45 > 4)
    {
      if (v45 <= 7)
      {
        if (v45 == 5 || v45 == 6)
        {
          goto LABEL_113;
        }

        goto LABEL_126;
      }

      if (v45 != 8 && v45 != 9)
      {
        goto LABEL_126;
      }

LABEL_112:
      v100 = *(a2 + v13);
      *(a1 + v13) = v100;
      v101 = v100;
      swift_storeEnumTagMultiPayload();
LABEL_127:
      (*(v15 + 56))(a1 + v13, 0, 1, v14);
      goto LABEL_128;
    }

    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        if (v45 == 2)
        {
          goto LABEL_113;
        }

LABEL_126:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_127;
      }

      goto LABEL_112;
    }

LABEL_113:
    v102 = sub_21DBF563C();
    (*(*(v102 - 8) + 16))(a1 + v13, a2 + v13, v102);
    swift_storeEnumTagMultiPayload();
    goto LABEL_127;
  }

  switch(EnumCaseMultiPayload)
  {
    case 6:
      v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(a2, 1, v26))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
        memcpy(a1, a2, *(*(v28 - 8) + 64));
      }

      else
      {
        *a1 = *a2;
        v37 = *(v26 + 20);
        v38 = sub_21DBF6C1C();
        v112 = *(*(v38 - 8) + 16);
        sub_21DBF8E0C();
        v112(a1 + v37, a2 + v37, v38);
        (*(v27 + 56))(a1, 0, 1, v26);
      }

      v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
      v40 = (a1 + v39);
      v41 = (a2 + v39);
      v42 = v41[1];
      if (v42)
      {
        *v40 = *v41;
        v40[1] = v42;
        v43 = v41[2];
        v40[2] = v43;
        sub_21DBF8E0C();
        v44 = v43;
      }

      else
      {
        *v40 = *v41;
        v40[2] = v41[2];
      }

      goto LABEL_128;
    case 7:
      v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v33 = *(v32 - 8);
      if ((*(v33 + 48))(a2, 1, v32))
      {
        v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
        memcpy(a1, a2, *(*(v34 - 8) + 64));
      }

      else
      {
        v46 = sub_21DBF563C();
        (*(*(v46 - 8) + 16))(a1, a2, v46);
        *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
        (*(v33 + 56))(a1, 0, 1, v32);
      }

      v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
      *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
      goto LABEL_128;
    case 8:
      *a1 = *a2;
      v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v9 = sub_21DBF8D7C();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
      swift_storeEnumTagMultiPayload();
      goto LABEL_129;
  }

LABEL_33:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_129:
  v103 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v104 = *(a2 + v103);
  *(a1 + v103) = v104;
  v105 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v105) = *(a2 + v105);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  v106 = v104;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

void *assignWithCopy for TTRIReminderCellNotesViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D24B040(a1);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        switch(EnumCaseMultiPayload)
        {
          case 6:
            v26 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(a2, 1, v26))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
              memcpy(a1, a2, *(*(v28 - 8) + 64));
            }

            else
            {
              *a1 = *a2;
              v37 = *(v26 + 20);
              v38 = sub_21DBF6C1C();
              v108 = *(*(v38 - 8) + 16);
              sub_21DBF8E0C();
              v108(a1 + v37, a2 + v37, v38);
              (*(v27 + 56))(a1, 0, 1, v26);
            }

            v39 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
            v40 = (a1 + v39);
            v41 = (a2 + v39);
            if (v41[1])
            {
              *v40 = *v41;
              v40[1] = v41[1];
              v42 = v41[2];
              v40[2] = v42;
              sub_21DBF8E0C();
              v43 = v42;
            }

            else
            {
              v44 = *v41;
              v40[2] = v41[2];
              *v40 = v44;
            }

            goto LABEL_128;
          case 7:
            v32 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
            v33 = *(v32 - 8);
            if ((*(v33 + 48))(a2, 1, v32))
            {
              v34 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
              memcpy(a1, a2, *(*(v34 - 8) + 64));
            }

            else
            {
              v46 = sub_21DBF563C();
              (*(*(v46 - 8) + 16))(a1, a2, v46);
              *(a1 + *(v32 + 20)) = *(a2 + *(v32 + 20));
              (*(v33 + 56))(a1, 0, 1, v32);
            }

            v47 = type metadata accessor for TTRTemplatePublicLinkData(0);
            *(a1 + *(v47 + 20)) = *(a2 + *(v47 + 20));
            goto LABEL_128;
          case 8:
            *a1 = *a2;
            v8 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
            v9 = sub_21DBF8D7C();
            (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
LABEL_128:
            swift_storeEnumTagMultiPayload();
            goto LABEL_129;
        }

        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 4)
      {
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        v18 = a2[2];
        a1[2] = v18;
        v19 = v18;
        goto LABEL_128;
      }

      v29 = *a2;
      *a1 = *a2;
      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v15 = *(v14 - 8);
      v30 = *(v15 + 48);
      v31 = v29;
      if (v30(a2 + v13, 1, v14))
      {
LABEL_27:
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
        memcpy(a1 + v13, a2 + v13, *(*(v25 - 8) + 64));
        goto LABEL_128;
      }

      v45 = swift_getEnumCaseMultiPayload();
      if (v45 > 4)
      {
        if (v45 <= 7)
        {
          if (v45 == 5 || v45 == 6)
          {
            goto LABEL_113;
          }

          goto LABEL_126;
        }

        if (v45 != 8 && v45 != 9)
        {
          goto LABEL_126;
        }

LABEL_112:
        v94 = *(a2 + v13);
        *(a1 + v13) = v94;
        v95 = v94;
        swift_storeEnumTagMultiPayload();
LABEL_127:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_128;
      }

      if (v45 <= 2)
      {
        if (v45 != 1)
        {
          if (v45 == 2)
          {
            goto LABEL_113;
          }

LABEL_126:
          memcpy(a1 + v13, a2 + v13, *(v15 + 64));
          goto LABEL_127;
        }

        goto LABEL_112;
      }

LABEL_113:
      v96 = sub_21DBF563C();
      (*(*(v96 - 8) + 16))(a1 + v13, a2 + v13, v96);
      swift_storeEnumTagMultiPayload();
      goto LABEL_127;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v22 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v23 = *(v15 + 48);
        v24 = v22;
        if (v23(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v36 = swift_getEnumCaseMultiPayload();
        if (v36 > 4)
        {
          if (v36 <= 7)
          {
            if (v36 == 5 || v36 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v36 != 8 && v36 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v36 > 2)
        {
          goto LABEL_113;
        }

        if (v36 == 1)
        {
          goto LABEL_112;
        }

        if (v36 != 2)
        {
          goto LABEL_126;
        }
      }

      else
      {
        v12 = *a2;
        *a1 = *a2;
        v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v15 = *(v14 - 8);
        v16 = *(v15 + 48);
        v17 = v12;
        if (v16(a2 + v13, 1, v14))
        {
          goto LABEL_27;
        }

        v35 = swift_getEnumCaseMultiPayload();
        if (v35 > 4)
        {
          if (v35 <= 7)
          {
            if (v35 == 5 || v35 == 6)
            {
              goto LABEL_113;
            }

            goto LABEL_126;
          }

          if (v35 != 8 && v35 != 9)
          {
            goto LABEL_126;
          }

          goto LABEL_112;
        }

        if (v35 > 2)
        {
          goto LABEL_113;
        }

        if (v35 == 1)
        {
          goto LABEL_112;
        }

        if (v35 != 2)
        {
          goto LABEL_126;
        }
      }

      goto LABEL_113;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
LABEL_34:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        goto LABEL_129;
      }

      v10 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v11 = swift_getEnumCaseMultiPayload();
      v113 = a3;
      if (v11 <= 4)
      {
        if (v11 > 2)
        {
LABEL_64:
          v48 = sub_21DBF563C();
          (*(*(v48 - 8) + 16))(a1, a2, v48);
          swift_storeEnumTagMultiPayload();
          goto LABEL_91;
        }

        if (v11 != 1)
        {
          if (v11 == 2)
          {
            goto LABEL_64;
          }

          goto LABEL_90;
        }

LABEL_67:
        v49 = *a2;
        *a1 = *a2;
        v50 = v49;
        swift_storeEnumTagMultiPayload();
        goto LABEL_91;
      }

      if (v11 > 7)
      {
        if (v11 == 8 || v11 == 9)
        {
          goto LABEL_67;
        }
      }

      else if (v11 == 5 || v11 == 6)
      {
        goto LABEL_64;
      }

LABEL_90:
      memcpy(a1, a2, *(*(v10 - 8) + 64));
LABEL_91:
      v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v55 = v54[5];
      v56 = a1 + v55;
      v57 = a2 + v55;
      if (*(a2 + v55 + 8))
      {
        *v56 = *v57;
        *(v56 + 1) = *(v57 + 1);
        v58 = *(v57 + 2);
        v59 = *(v57 + 3);
        v60 = *(v57 + 4);
        v61 = *(v57 + 5);
        v62 = *(v57 + 6);
        v104 = *(v57 + 7);
        v109 = v57[64];
        sub_21DBF8E0C();
        sub_21D2A7DB4(v58, v59, v60, v61, v62, v104, v109);
        *(v56 + 2) = v58;
        *(v56 + 3) = v59;
        *(v56 + 4) = v60;
        *(v56 + 5) = v61;
        *(v56 + 6) = v62;
        *(v56 + 7) = v104;
        v56[64] = v109;
        v56[65] = v57[65];
        v56[66] = v57[66];
        v56[67] = v57[67];
        v56[68] = v57[68];
        v63 = v57[120];
        if (v63 == 255)
        {
          v75 = *(v57 + 72);
          v76 = *(v57 + 88);
          v77 = *(v57 + 104);
          v56[120] = v57[120];
          *(v56 + 104) = v77;
          *(v56 + 88) = v76;
          *(v56 + 72) = v75;
        }

        else
        {
          v64 = *(v57 + 9);
          v65 = *(v57 + 12);
          v105 = *(v57 + 11);
          v110 = *(v57 + 10);
          v66 = *(v57 + 13);
          v67 = *(v57 + 14);
          v68 = v63 & 1;
          sub_21D0FB960(v64, v110, v105, v65, v66, v67, v63 & 1);
          *(v56 + 9) = v64;
          *(v56 + 10) = v110;
          *(v56 + 11) = v105;
          *(v56 + 12) = v65;
          *(v56 + 13) = v66;
          *(v56 + 14) = v67;
          v56[120] = v68;
        }

        a3 = v113;
        v56[121] = v57[121];
        goto LABEL_97;
      }

LABEL_94:
      v69 = *v57;
      v70 = *(v57 + 1);
      v71 = *(v57 + 3);
      *(v56 + 2) = *(v57 + 2);
      *(v56 + 3) = v71;
      *v56 = v69;
      *(v56 + 1) = v70;
      v72 = *(v57 + 4);
      v73 = *(v57 + 5);
      v74 = *(v57 + 6);
      *(v56 + 106) = *(v57 + 106);
      *(v56 + 5) = v73;
      *(v56 + 6) = v74;
      *(v56 + 4) = v72;
LABEL_97:
      *(a1 + v54[6]) = *(a2 + v54[6]);
      *(a1 + v54[7]) = *(a2 + v54[7]);
      *(a1 + v54[8]) = *(a2 + v54[8]);
      *(a1 + v54[9]) = *(a2 + v54[9]);
      *(a1 + v54[10]) = *(a2 + v54[10]);
      v78 = v54[11];
      v79 = *(a2 + v78);
      *(a1 + v78) = v79;
      v80 = v79;
      goto LABEL_128;
    }

    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 4)
    {
      if (v21 > 2)
      {
LABEL_68:
        v51 = sub_21DBF563C();
        (*(*(v51 - 8) + 16))(a1, a2, v51);
        swift_storeEnumTagMultiPayload();
        goto LABEL_99;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_68;
        }

        goto LABEL_98;
      }

LABEL_71:
      v52 = *a2;
      *a1 = *a2;
      v53 = v52;
      swift_storeEnumTagMultiPayload();
      goto LABEL_99;
    }

    if (v21 > 7)
    {
      if (v21 == 8 || v21 == 9)
      {
        goto LABEL_71;
      }
    }

    else if (v21 == 5 || v21 == 6)
    {
      goto LABEL_68;
    }

LABEL_98:
    memcpy(a1, a2, *(*(v20 - 8) + 64));
LABEL_99:
    v54 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
    v81 = v54[5];
    v56 = a1 + v81;
    v57 = a2 + v81;
    if (*(a2 + v81 + 8))
    {
      *v56 = *v57;
      *(v56 + 1) = *(v57 + 1);
      v82 = *(v57 + 2);
      v83 = *(v57 + 3);
      v84 = *(v57 + 4);
      v85 = *(v57 + 5);
      v102 = *(v57 + 6);
      v111 = *(v57 + 7);
      v106 = v57[64];
      sub_21DBF8E0C();
      sub_21D2A7DB4(v82, v83, v84, v85, v102, v111, v106);
      *(v56 + 2) = v82;
      *(v56 + 3) = v83;
      *(v56 + 4) = v84;
      *(v56 + 5) = v85;
      *(v56 + 6) = v102;
      *(v56 + 7) = v111;
      v56[64] = v106;
      v56[65] = v57[65];
      v56[66] = v57[66];
      v56[67] = v57[67];
      v56[68] = v57[68];
      v86 = v57[120];
      if (v86 == 255)
      {
        v91 = *(v57 + 72);
        v92 = *(v57 + 88);
        v93 = *(v57 + 104);
        v56[120] = v57[120];
        *(v56 + 104) = v93;
        *(v56 + 88) = v92;
        *(v56 + 72) = v91;
      }

      else
      {
        v107 = *(v57 + 10);
        v112 = *(v57 + 9);
        v87 = *(v57 + 12);
        v103 = *(v57 + 11);
        v88 = *(v57 + 13);
        v89 = *(v57 + 14);
        v90 = v86 & 1;
        sub_21D0FB960(v112, v107, v103, v87, v88, v89, v86 & 1);
        *(v56 + 9) = v112;
        *(v56 + 10) = v107;
        *(v56 + 11) = v103;
        *(v56 + 12) = v87;
        *(v56 + 13) = v88;
        *(v56 + 14) = v89;
        v56[120] = v90;
      }

      v56[121] = v57[121];
      goto LABEL_97;
    }

    goto LABEL_94;
  }

LABEL_129:
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v97 = a3[6];
  v98 = *(a1 + v97);
  v99 = *(a2 + v97);
  *(a1 + v97) = v99;
  v100 = v99;

  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_21DBF8E0C();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  sub_21DBF8E0C();

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

_BYTE *initializeWithTake for TTRIReminderCellNotesViewModel(_BYTE *a1, _BYTE *a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          a1[*(v21 + 20)] = a2[*(v21 + 20)];
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *&a1[*(v27 + 20)] = *&a2[*(v27 + 20)];
        goto LABEL_87;
      }

      if (EnumCaseMultiPayload != 8)
      {
        goto LABEL_32;
      }

      *a1 = *a2;
      v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
      v18 = sub_21DBF8D7C();
      (*(*(v18 - 8) + 32))(&a1[v17], &a2[v17], v18);
LABEL_87:
      swift_storeEnumTagMultiPayload();
      goto LABEL_88;
    }

    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = &a1[v30];
        v32 = &a2[v30];
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_87;
      }

      goto LABEL_32;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v24 = swift_getEnumCaseMultiPayload();
      if (v24 <= 3)
      {
        if (v24 == 2 || v24 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v24 == 4 || v24 == 5 || v24 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      *a1 = *a2;
      v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(&a2[v14], 1, v15))
      {
        goto LABEL_29;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
LABEL_57:
        v34 = sub_21DBF563C();
        (*(*(v34 - 8) + 32))(&a1[v14], &a2[v14], v34);
        swift_storeEnumTagMultiPayload();
LABEL_86:
        (*(v16 + 56))(&a1[v14], 0, 1, v15);
        goto LABEL_87;
      }

LABEL_85:
      memcpy(&a1[v14], &a2[v14], *(v16 + 64));
      goto LABEL_86;
    }

    *a1 = *a2;
    v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(&a2[v14], 1, v15))
    {
      v25 = swift_getEnumCaseMultiPayload();
      if (v25 <= 3)
      {
        if (v25 == 2 || v25 == 3)
        {
          goto LABEL_57;
        }
      }

      else if (v25 == 4 || v25 == 5 || v25 == 6)
      {
        goto LABEL_57;
      }

      goto LABEL_85;
    }

LABEL_29:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
    memcpy(&a1[v14], &a2[v14], *(*(v20 - 8) + 64));
    goto LABEL_87;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v19 = swift_getEnumCaseMultiPayload();
    if (v19 <= 3)
    {
      if (v19 == 2 || v19 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v19 == 4 || v19 == 5 || v19 == 6)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_9;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_9:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_65:
      v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
      v36 = v35[5];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = v38[3];
      v37[2] = v38[2];
      v37[3] = v39;
      v40 = v38[1];
      *v37 = *v38;
      v37[1] = v40;
      *(v37 + 106) = *(v38 + 106);
      v41 = v38[6];
      v37[5] = v38[5];
      v37[6] = v41;
      v37[4] = v38[4];
      a1[v35[6]] = a2[v35[6]];
      a1[v35[7]] = a2[v35[7]];
      a1[v35[8]] = a2[v35[8]];
      a1[v35[9]] = a2[v35[9]];
      a1[v35[10]] = a2[v35[10]];
      *&a1[v35[11]] = *&a2[v35[11]];
      goto LABEL_87;
    }

LABEL_64:
    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_65;
  }

LABEL_32:
  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_88:
  v42 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v42] = *&a2[v42];
  v43 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  *&a1[v43] = *&a2[v43];
  a1[a3[9]] = a2[a3[9]];
  return a1;
}

void *assignWithTake for TTRIReminderCellNotesViewModel(void *a1, void *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_21D24B040(a1);
    v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 3)
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
            goto LABEL_10;
          }

          goto LABEL_65;
        }

        if (EnumCaseMultiPayload == 1)
        {
          v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v9 = swift_getEnumCaseMultiPayload();
          if (v9 <= 3)
          {
            if (v9 == 2 || v9 == 3)
            {
              goto LABEL_10;
            }
          }

          else if (v9 == 4 || v9 == 5 || v9 == 6)
          {
LABEL_10:
            v10 = sub_21DBF563C();
            (*(*(v10 - 8) + 32))(a1, a2, v10);
            swift_storeEnumTagMultiPayload();
LABEL_66:
            v35 = type metadata accessor for TTRRemindersListViewModel.SectionHeader(0);
            v36 = v35[5];
            v37 = (a1 + v36);
            v38 = (a2 + v36);
            v39 = v38[3];
            v37[2] = v38[2];
            v37[3] = v39;
            v40 = v38[1];
            *v37 = *v38;
            v37[1] = v40;
            *(v37 + 106) = *(v38 + 106);
            v41 = v38[6];
            v37[5] = v38[5];
            v37[6] = v41;
            v37[4] = v38[4];
            *(a1 + v35[6]) = *(a2 + v35[6]);
            *(a1 + v35[7]) = *(a2 + v35[7]);
            *(a1 + v35[8]) = *(a2 + v35[8]);
            *(a1 + v35[9]) = *(a2 + v35[9]);
            *(a1 + v35[10]) = *(a2 + v35[10]);
            *(a1 + v35[11]) = *(a2 + v35[11]);
            goto LABEL_88;
          }

LABEL_65:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_66;
        }

        goto LABEL_33;
      }

      if (EnumCaseMultiPayload == 2)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
LABEL_30:
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70);
          memcpy(a1 + v14, a2 + v14, *(*(v20 - 8) + 64));
          goto LABEL_88;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 <= 3)
        {
          if (v25 == 2 || v25 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v25 == 4 || v25 == 5 || v25 == 6)
        {
          goto LABEL_58;
        }
      }

      else
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v33 = swift_getEnumCaseMultiPayload();
        if (v33 <= 3)
        {
          if (v33 == 2 || v33 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v33 == 4 || v33 == 5 || v33 == 6)
        {
LABEL_58:
          v34 = sub_21DBF563C();
          (*(*(v34 - 8) + 32))(a1 + v14, a2 + v14, v34);
          swift_storeEnumTagMultiPayload();
LABEL_87:
          (*(v16 + 56))(a1 + v14, 0, 1, v15);
          goto LABEL_88;
        }
      }

LABEL_86:
      memcpy(a1 + v14, a2 + v14, *(v16 + 64));
      goto LABEL_87;
    }

    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v21 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        v22 = *(v21 - 8);
        if ((*(v22 + 48))(a2, 1, v21))
        {
          v23 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
          memcpy(a1, a2, *(*(v23 - 8) + 64));
        }

        else
        {
          v26 = sub_21DBF563C();
          (*(*(v26 - 8) + 32))(a1, a2, v26);
          *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
          (*(v22 + 56))(a1, 0, 1, v21);
        }

        v27 = type metadata accessor for TTRTemplatePublicLinkData(0);
        *(a1 + *(v27 + 20)) = *(a2 + *(v27 + 20));
        goto LABEL_88;
      }

      if (EnumCaseMultiPayload == 8)
      {
        *a1 = *a2;
        v17 = *(type metadata accessor for TTRRemindersListTips(0) + 20);
        v18 = sub_21DBF8D7C();
        (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
LABEL_88:
        swift_storeEnumTagMultiPayload();
        goto LABEL_89;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        *a1 = *a2;
        v14 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v15 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v16 = *(v15 - 8);
        if ((*(v16 + 48))(a2 + v14, 1, v15))
        {
          goto LABEL_30;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 <= 3)
        {
          if (v24 == 2 || v24 == 3)
          {
            goto LABEL_58;
          }
        }

        else if (v24 == 4 || v24 == 5 || v24 == 6)
        {
          goto LABEL_58;
        }

        goto LABEL_86;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v11 = type metadata accessor for TTRRemindersListViewModel.HashtagLabelSelectorState(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(a2, 1, v11))
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A440);
          memcpy(a1, a2, *(*(v13 - 8) + 64));
        }

        else
        {
          *a1 = *a2;
          v28 = *(v11 + 20);
          v29 = sub_21DBF6C1C();
          (*(*(v29 - 8) + 32))(a1 + v28, a2 + v28, v29);
          (*(v12 + 56))(a1, 0, 1, v11);
        }

        v30 = *(type metadata accessor for TTRRemindersListViewModel.HashtagsState(0) + 20);
        v31 = a1 + v30;
        v32 = a2 + v30;
        *v31 = *v32;
        *(v31 + 2) = *(v32 + 2);
        goto LABEL_88;
      }
    }

LABEL_33:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_89:
  v42 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t sub_21D465424()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t TTRIReminderCellModuleOwnerModuleType.structuredHashtagTipkitSignalContext.getter()
{
  if (*v0)
  {
    v1 = 0xD000000000000033;
  }

  else
  {
    v1 = 0xD00000000000001CLL;
  }

  if (*v0 - 2 >= 2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_21D465560()
{
  result = qword_27CE5C730;
  if (!qword_27CE5C730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C730);
  }

  return result;
}

unint64_t sub_21D4655B8()
{
  result = qword_27CE5C738;
  if (!qword_27CE5C738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5C738);
  }

  return result;
}

uint64_t TTRIReminderCellSubtaskButtonConfiguration.primaryAction.getter()
{
  v1 = *(v0 + 24);
  sub_21D0D0E74(v1, *(v0 + 32));
  return v1;
}

uint64_t TTRIReminderCellSubtaskButtonConfiguration.init(leadingSeparatorText:buttonTitle:tintColor:primaryAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TTRIReminderCellAppLinkButtonConfiguration.primaryAction.getter()
{
  v1 = *(v0 + 16);
  sub_21D0D0E74(v1, *(v0 + 24));
  return v1;
}

uint64_t TTRIReminderCellAppLinkButtonConfiguration.init(image:title:primaryAction:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t TTRIReminderCellHashtagModuleInterface.editableReminderCell.getter(uint64_t a1, uint64_t a2)
{
  if (!(*(a2 + 136))())
  {
    return 0;
  }

  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(v2, a2, ObjectType, v5);
  swift_unknownObjectRelease();
  return v7;
}

void destroy for TTRIReminderCellSubtaskButtonConfiguration(uint64_t a1)
{
  if (*(a1 + 24))
  {
  }
}

void *initializeWithCopy for TTRIReminderCellSubtaskButtonConfiguration(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v5;
  v6 = *(a2 + 16);
  a1[2] = v6;
  v8 = (a2 + 24);
  v7 = *(a2 + 24);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v7)
  {
    v12 = *(a2 + 32);
    a1[3] = v7;
    a1[4] = v12;
  }

  else
  {
    *(a1 + 3) = *v8;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIReminderCellSubtaskButtonConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a1 + 16);
  *(a1 + 16) = v10;
  v12 = v10;

  v13 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v13)
    {
      v15 = *(a2 + 32);
      *(a1 + 24) = v13;
      *(a1 + 32) = v15;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v13)
  {

    goto LABEL_7;
  }

  v14 = *(a2 + 32);
  *(a1 + 24) = v13;
  *(a1 + 32) = v14;

  return a1;
}

uint64_t assignWithTake for TTRIReminderCellSubtaskButtonConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v6 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v6)
    {
      v8 = *(a2 + 32);
      *(a1 + 24) = v6;
      *(a1 + 32) = v8;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v6)
  {

    goto LABEL_7;
  }

  v7 = *(a2 + 32);
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderCellSubtaskButtonConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderCellSubtaskButtonConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void destroy for TTRIReminderCellAppLinkButtonConfiguration(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }
}

void *initializeWithCopy for TTRIReminderCellAppLinkButtonConfiguration(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v5;
  v7 = (a2 + 16);
  v6 = *(a2 + 16);
  v8 = v4;
  v9 = v5;
  if (v6)
  {
    v10 = *(a2 + 24);
    a1[2] = v6;
    a1[3] = v10;
  }

  else
  {
    *(a1 + 1) = *v7;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIReminderCellAppLinkButtonConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v10)
    {
      v12 = *(a2 + 24);
      *(a1 + 16) = v10;
      *(a1 + 24) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 24);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;

  return a1;
}

uint64_t assignWithTake for TTRIReminderCellAppLinkButtonConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (v5)
    {
      v7 = *(a2 + 24);
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      return a1;
    }

LABEL_7:
    *(a1 + 16) = *(a2 + 16);
    return a1;
  }

  if (!v5)
  {

    goto LABEL_7;
  }

  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderCellAppLinkButtonConfiguration(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderCellAppLinkButtonConfiguration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id UIResponder.firstResponder.getter()
{
  v1 = [v0 firstResponder];

  return v1;
}

Swift::Void __swiftcall TTRAsyncSearchQueryPerformer.cancel()()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query);
  if (v2)
  {
    [v2 cancel];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

void TTRAsyncSearchQueryPerformer.search()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C750);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - v4;
  swift_beginAccess();
  v6 = sub_21DBF8E0C();
  v7 = sub_21D467438(v6);
  v9 = v8;

  if (qword_280D0F160 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  v34 = __swift_project_value_buffer(v10, qword_280D0F168);
  v11 = sub_21DBF84AC();
  v12 = sub_21DBFAE9C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_21D0C9000, v11, v12, "TTRAsyncSearchQueryPerformer: Performing Spotlight async search query.", v13, 2u);
    MEMORY[0x223D46520](v13, -1, -1);
  }

  v14 = [objc_opt_self() daemonUserDefaults];
  v15 = [v14 isSpotlightQueryLoggingEnabled];

  if (v15)
  {
    sub_21DBF8E0C();
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEDC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v34 = v2;
      v35 = v19;
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_21D0CDFB4(v7, v9, &v35);
      _os_log_impl(&dword_21D0C9000, v16, v17, "TTRAsyncSearchQueryPerformer: Async search query string: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v2 = v34;
      MEMORY[0x223D46520](v20, -1, -1);
      MEMORY[0x223D46520](v18, -1, -1);
    }
  }

  v21 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v22 = sub_21DBFA12C();

  v23 = sub_21DBFA5DC();
  v24 = [v21 initWithQueryString:v22 attributes:v23];

  v25 = sub_21DBFB33C();
  if (v25)
  {
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C768);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_21DC08D00;
    *(v27 + 32) = v26;
    type metadata accessor for FileProtectionType(0);
    v28 = v26;
    v29 = sub_21DBFA5DC();

    [v24 setProtectionClasses_];
  }

  v30 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query) = v24;
  v31 = v24;

  MEMORY[0x28223BE20](v32);
  *(&v33 - 2) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DED0);
  (*(v3 + 104))(v5, *MEMORY[0x277D858A0], v2);
  sub_21DBFAA0C();
}

uint64_t sub_21D46647C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F168);
  v1 = __swift_project_value_buffer(v0, qword_280D0F168);
  if (qword_280D0C8B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D466544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC0B380;
  *(v0 + 32) = 0x656C746974;
  *(v0 + 40) = 0xE500000000000000;
  *(v0 + 48) = 0x4E79616C70736964;
  *(v0 + 56) = 0xEB00000000656D61;
  *(v0 + 64) = 0x746E656D6D6F63;
  *(v0 + 72) = 0xE700000000000000;
  strcpy((v0 + 80), "namedLocation");
  *(v0 + 94) = -4864;
  *(v0 + 96) = 0xD000000000000015;
  *(v0 + 104) = 0x800000021DC5D0E0;
  *(v0 + 112) = 0x4B746361746E6F63;
  *(v0 + 120) = 0xEF7364726F777965;
  result = sub_21DBFA16C();
  *(v0 + 128) = result;
  *(v0 + 136) = v2;
  off_27CE5C740 = v0;
  return result;
}

uint64_t static TTRSearchQueryPerformer.defaultAttributesForTextualSearch.getter()
{
  if (qword_27CE56908 != -1)
  {
    swift_once();
  }

  return sub_21DBF8E0C();
}

uint64_t TTRSearchQueryPerformer.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRSearchQueryPerformer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

char *TTRSearchQueryPerformer.__allocating_init(attributesToFetch:itemTypes:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_21D46C3B0(a1, a2, a3);

  return v8;
}

char *TTRSearchQueryPerformer.init(attributesToFetch:itemTypes:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21D46C3B0(a1, a2, a3);

  return v4;
}

char *TTRSearchQueryPerformer.__allocating_init(searchTerm:itemTypes:matchCriteria:attributesToFetch:queue:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = sub_21DBF624C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v17 && *(a3 + 16))
  {
    v18 = objc_allocWithZone(v6);
    v35 = a6;
    v19 = sub_21D46C3B0(a5, a3, a6);
    v20 = a4;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08) + 48);
    *v16 = a1;
    *(v16 + 1) = a2;
    v22 = sub_21DBF672C();
    v23 = *(v22 - 8);
    v24 = *(v23 + 16);
    v33 = v22;
    v34 = v20;
    v24(&v16[v21], v20);
    (*(v14 + 104))(v16, *MEMORY[0x277D44F10], v13);
    v25 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
    swift_beginAccess();
    v26 = *&v19[v25];
    v27 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v19[v25] = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_21D21303C(0, v26[2] + 1, 1, v26);
      *&v19[v25] = v26;
    }

    v30 = v26[2];
    v29 = v26[3];
    if (v30 >= v29 >> 1)
    {
      v26 = sub_21D21303C(v29 > 1, v30 + 1, 1, v26);
    }

    v26[2] = v30 + 1;
    (*(v14 + 32))(v26 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v30, v16, v13);
    *&v19[v25] = v26;
    swift_endAccess();

    (*(v23 + 8))(v34, v33);
  }

  else
  {
    v31 = sub_21DBF672C();
    (*(*(v31 - 8) + 8))(a4, v31);

    return 0;
  }

  return v27;
}

char *TTRSearchQueryPerformer.__allocating_init(spotlightItemIdentifier:itemTypes:attributesToFetch:queue:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = sub_21DBF624C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v16 = objc_allocWithZone(v5);
    v17 = sub_21D46C3B0(a4, a3, a5);
    *v14 = a1;
    v14[1] = a2;
    (*(v12 + 104))(v14, *MEMORY[0x277D44F20], v11);
    v18 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_criteria;
    swift_beginAccess();
    v19 = *&v17[v18];
    v20 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v17[v18] = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_21D21303C(0, v19[2] + 1, 1, v19);
      *&v17[v18] = v19;
    }

    v23 = v19[2];
    v22 = v19[3];
    if (v23 >= v22 >> 1)
    {
      v19 = sub_21D21303C(v22 > 1, v23 + 1, 1, v19);
    }

    v19[2] = v23 + 1;
    (*(v12 + 32))(v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v23, v14, v11);
    *&v17[v18] = v19;
    swift_endAccess();
  }

  else
  {

    return 0;
  }

  return v20;
}

Swift::Void __swiftcall TTRSearchQueryPerformer.addCriteria(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v1 = sub_21DBF8E0C();
  sub_21D562A78(v1);
  swift_endAccess();
}

Swift::Void __swiftcall TTRSearchQueryPerformer.start()()
{
  v2 = v0;
  v3 = sub_21DBF9D8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3, v5);
  v9 = v8;
  v10 = sub_21DBF9DAC();
  (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v1 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query);
  if (v11)
  {
LABEL_13:
    [v11 start];
    return;
  }

  swift_beginAccess();
  v12 = sub_21DBF8E0C();
  v10 = sub_21D467438(v12);
  v7 = v13;

  if (qword_280D0F160 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v14 = sub_21DBF84BC();
  __swift_project_value_buffer(v14, qword_280D0F168);
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAE9C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_21D0C9000, v15, v16, "TTRSearchQueryPerformer: Performing Spotlight search query.", v17, 2u);
    MEMORY[0x223D46520](v17, -1, -1);
  }

  v18 = [objc_opt_self() daemonUserDefaults];
  v19 = [v18 isSpotlightQueryLoggingEnabled];

  if (v19)
  {
    sub_21DBF8E0C();
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAEDC();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_21D0CDFB4(v10, v7, &aBlock);
      _os_log_impl(&dword_21D0C9000, v20, v21, "TTRSearchQueryPerformer: Search query string: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x223D46520](v23, -1, -1);
      MEMORY[0x223D46520](v22, -1, -1);
    }
  }

  v24 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v25 = sub_21DBFA12C();

  v26 = sub_21DBFA5DC();
  v27 = [v24 initWithQueryString:v25 attributes:v26];

  v28 = sub_21DBFB33C();
  if (v28)
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C768);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21DC08D00;
    *(v30 + 32) = v29;
    type metadata accessor for FileProtectionType(0);
    v31 = v29;
    v32 = sub_21DBFA5DC();

    [v27 setProtectionClasses_];
  }

  v33 = *(v2 + v1);
  *(v2 + v1) = v27;
  v34 = v27;

  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  v48 = sub_21D46C7A4;
  v49 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_21D468044;
  v47 = &block_descriptor_29;
  v38 = _Block_copy(&aBlock);

  [v34 setFoundItemsHandler_];
  _Block_release(v38);
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  v48 = sub_21D46C7AC;
  v49 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v45 = 1107296256;
  v46 = sub_21D11E5E4;
  v47 = &block_descriptor_14_0;
  v42 = _Block_copy(&aBlock);

  [v34 setCompletionHandler_];
  _Block_release(v42);

  v11 = *(v2 + v1);
  if (v11)
  {
    goto LABEL_13;
  }
}

uint64_t sub_21D467438(uint64_t a1)
{
  v2 = sub_21DBF624C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v9 = *(v3 + 16);
    v8 = v3 + 16;
    v10 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v22 = *(v8 + 56);
    v23 = v9;
    v11 = MEMORY[0x277D84F90];
    v21 = v8;
    v9(v6, v10, v2, v4);
    while (1)
    {
      v13 = sub_21D469828();
      v15 = v14;
      (*(v8 - 8))(v6, v2);
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_21D210A84(0, *(v11 + 2) + 1, 1, v11);
        }

        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = sub_21D210A84((v17 > 1), v18 + 1, 1, v11);
        }

        *(v11 + 2) = v18 + 1;
        v12 = &v11[16 * v18];
        *(v12 + 4) = v13;
        *(v12 + 5) = v15;
      }

      v10 += v22;
      if (!--v7)
      {
        break;
      }

      v23(v6, v10, v2, v16);
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v19 = sub_21DBFA07C();

  return v19;
}

void sub_21D467678(unint64_t a1)
{
  if (qword_280D0F160 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F168);
  sub_21DBF8E0C();
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAE9C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (a1 >> 62)
    {
      v6 = sub_21DBFBD7C();
    }

    else
    {
      v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;

    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRSearchQueryPerformer: Search query found %ld items.", v5, 0xCu);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    sub_21D467814(v9, a1);
  }
}

void sub_21D467814(unint64_t a1, unint64_t a2)
{
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query);
    if (v14 && v14 == a1)
    {
      v79 = v2;
      v70 = v13;
      v71 = v11;
      v72 = v8;
      v73 = v6;
      v75 = v5;
      v83 = MEMORY[0x277D84F98];
      v74 = v10;
      v80 = a2;
      if (a2 >> 62)
      {
        goto LABEL_50;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
      {
        v81 = v80 & 0xC000000000000001;
        v76 = v80 + 32;
        v77 = v80 & 0xFFFFFFFFFFFFFF8;
        v69 = a1;
        v17 = a1;
        a1 = 0;
        *&v18 = 136315394;
        v78 = v18;
        while (1)
        {
          if (v81)
          {
            v33 = MEMORY[0x223D44740](a1, v80);
          }

          else
          {
            if (a1 >= *(v77 + 16))
            {
              goto LABEL_48;
            }

            v33 = *(v76 + 8 * a1);
          }

          v34 = v33;
          if (__OFADD__(a1++, 1))
          {
            break;
          }

          v36 = [v33 attributeSet];
          v37 = sub_21DBFB51C();

          if (!v37)
          {
            goto LABEL_34;
          }

          v38 = sub_21D468750();
          v39 = [v37 entityName];
          v40 = sub_21DBFA16C();
          v42 = v41;

          if (!*(v38 + 16) || (sub_21DBFC7DC(), sub_21DBFA27C(), v43 = sub_21DBFC82C(), v44 = -1 << *(v38 + 32), v45 = v43 & ~v44, ((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0))
          {
LABEL_33:

LABEL_34:
            if (qword_280D0F160 != -1)
            {
              swift_once();
            }

            v49 = sub_21DBF84BC();
            __swift_project_value_buffer(v49, qword_280D0F168);
            v50 = v34;
            v51 = sub_21DBF84AC();
            v52 = sub_21DBFAEBC();

            if (os_log_type_enabled(v51, v52))
            {
              v19 = swift_slowAlloc();
              v20 = swift_slowAlloc();
              aBlock[0] = v20;
              *v19 = v78;
              v21 = [v50 uniqueIdentifier];
              v22 = sub_21DBFA16C();
              v24 = v23;

              v25 = sub_21D0CDFB4(v22, v24, aBlock);

              *(v19 + 4) = v25;
              *(v19 + 12) = 2080;
              v26 = [v50 attributeSet];
              v27 = sub_21DBFB52C();
              v29 = v28;

              if (v29)
              {
                v30 = v27;
              }

              else
              {
                v30 = 7104878;
              }

              if (v29)
              {
                v31 = v29;
              }

              else
              {
                v31 = 0xE300000000000000;
              }

              v32 = sub_21D0CDFB4(v30, v31, aBlock);

              *(v19 + 14) = v32;
              _os_log_impl(&dword_21D0C9000, v51, v52, "Dropping item because of invalid objectID {uniqueIdentifier: %s, objectID: %s}", v19, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D46520](v20, -1, -1);
              MEMORY[0x223D46520](v19, -1, -1);
            }

            else
            {
            }

            goto LABEL_17;
          }

          v46 = ~v44;
          while (1)
          {
            v47 = (*(v38 + 48) + 16 * v45);
            v48 = *v47 == v40 && v47[1] == v42;
            if (v48 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v38 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v53 = [v34 attributeSet];
          if (v53)
          {
            v54 = v53;
            v55 = v83;
            if ((v83 & 0xC000000000000001) != 0)
            {
              if (v83 >= 0)
              {
                v55 = v83 & 0xFFFFFFFFFFFFFF8;
              }

              v56 = sub_21DBFBD7C();
              if (__OFADD__(v56, 1))
              {
                goto LABEL_49;
              }

              v55 = sub_21D9846C8(v55, v56 + 1);
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v55;
            sub_21D477EB0(v54, v37, isUniquelyReferenced_nonNull_native);

            v83 = aBlock[0];
          }

          else
          {
            v58 = sub_21D9838F0(v37);
          }

LABEL_17:
          if (a1 == i)
          {
            v59 = v83;
            a1 = v69;
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        ;
      }

      v60 = a1;
      v59 = MEMORY[0x277D84F98];
LABEL_52:
      v61 = v75;
      if ((v59 & 0xC000000000000001) != 0)
      {
        if (sub_21DBFBD7C())
        {
LABEL_54:
          v81 = *(v79 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue);
          v62 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v63 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v64 = swift_allocObject();
          v64[2] = v62;
          v64[3] = v63;
          v64[4] = v59;
          aBlock[4] = sub_21D46C92C;
          aBlock[5] = v64;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_21D0D74FC;
          aBlock[3] = &block_descriptor_37;
          v65 = _Block_copy(aBlock);

          v66 = v70;
          sub_21DBF9D4C();
          aBlock[9] = MEMORY[0x277D84F90];
          sub_21D0CD898();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
          sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
          v67 = v72;
          sub_21DBFBCBC();
          MEMORY[0x223D438F0](0, v66, v67, v65);
          _Block_release(v65);

          (*(v73 + 8))(v67, v61);
          (*(v71 + 8))(v66, v74);

          return;
        }
      }

      else if (*(v59 + 16))
      {
        goto LABEL_54;
      }
    }
  }
}

uint64_t sub_21D468044(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_21D46C888();
  v2 = sub_21DBFA5EC();

  v1(v2);
}

void sub_21D4680B8(void *a1)
{
  if (qword_280D0F160 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F168);
  v3 = a1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAE9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16[0] = v7;
    *v6 = 136315138;
    if (a1)
    {
      v8 = sub_21DBF52CC();
    }

    else
    {
      v8 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C7B8);
    v9 = sub_21DBFBA5C();
    v11 = v10;

    v12 = sub_21D0CDFB4(v9, v11, v16);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRSearchQueryPerformer: Search query completed with error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    sub_21D4682B8(v15, a1);
  }
}

void sub_21D4682B8(void *a1, void *a2)
{
  v5 = sub_21DBF9D2C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v9);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v14 = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query);
    if (v14)
    {
      v15 = v14 == a1;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      v21[2] = *(v2 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue);
      v22 = v11;
      v23 = v10;
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v21[1] = v16;
      v18[2] = v16;
      v18[3] = v17;
      v18[4] = a2;
      aBlock[4] = sub_21D46C87C;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_29;
      v19 = _Block_copy(aBlock);
      v21[0] = a1;

      v20 = a2;
      sub_21DBF9D4C();
      v24 = MEMORY[0x277D84F90];
      sub_21D0CD898();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
      sub_21DBFBCBC();
      MEMORY[0x223D438F0](0, v13, v8, v19);
      _Block_release(v19);

      (*(v6 + 8))(v8, v5);
      (*(v22 + 8))(v13, v23);
    }
  }
}

Swift::Void __swiftcall TTRSearchQueryPerformer.cancel()()
{
  v1 = sub_21DBF9D8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1, v3);
  v7 = v6;
  LOBYTE(v6) = sub_21DBF9DAC();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query;
    v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_query);
    if (v9)
    {
      [v9 cancel];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D468750()
{
  v1 = sub_21DBF659C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames;
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames);
  if (v6)
  {
    sub_21DBF8E0C();
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer_itemTypes);
    v8 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v22 = OBJC_IVAR____TtC15RemindersUICore23TTRSearchQueryPerformer____lazy_storage___entityNames;
      v23 = v0;
      v28 = MEMORY[0x277D84F90];
      sub_21D18E678(0, v8, 0);
      v9 = v28;
      v11 = *(v2 + 16);
      v10 = v2 + 16;
      v12 = v7 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
      v25 = *(v10 + 56);
      v26 = v11;
      v24 = (v10 - 8);
      v27 = v10;
      do
      {
        v26(v4, v12, v1);
        v13 = sub_21DBF657C();
        v15 = v14;
        v16 = v1;
        (*v24)(v4, v1);
        v28 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_21D18E678((v17 > 1), v18 + 1, 1);
          v9 = v28;
        }

        *(v9 + 16) = v18 + 1;
        v19 = v9 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v12 += v25;
        --v8;
        v1 = v16;
      }

      while (v8);
      v5 = v22;
      v0 = v23;
    }

    v6 = sub_21D0FC0A8(v9);

    *(v0 + v5) = v6;
    sub_21DBF8E0C();
  }

  return v6;
}