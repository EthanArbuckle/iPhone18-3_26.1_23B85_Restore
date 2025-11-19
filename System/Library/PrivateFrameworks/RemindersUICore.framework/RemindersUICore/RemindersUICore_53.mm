void sub_21D5E4CE0(void *a1)
{
  if (qword_27CE56A90 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5EC48);
  v3 = a1;
  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_21DBFC74C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRIReminderSectionPickerMonitorableDataView: did hit error {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

id sub_21D5E4E78()
{
  v1 = v0;
  v89 = *MEMORY[0x277D85DE8];
  v65 = sub_21DBF6DBC();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70);
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v78 = &v52 - v3;
  v73 = sub_21DBF734C();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v74 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21DBF71BC();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v71 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF738C();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF719C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_21DBF74FC();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21DBF714C();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21DBF70DC();
  v66 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v68 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v17 = sub_21DBF763C();
  v67 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EC70);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v21 = &v52 - v20;
  sub_21D0FACE0((v1 + 3), &v84);
  if (v85)
  {
    v52 = v11;
    v53 = v9;
    v54 = v8;
    sub_21D0D0FD0(&v84, &v86);
    v22 = v87;
    v23 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    LOBYTE(v23) = TTRListProtocol.isListRepresentationOfTemplate.getter(v22, v23);
    v55 = v1;
    v83 = v1[2];
    v24 = v87;
    v25 = v88;
    __swift_project_boxed_opaque_existential_1(&v86, v87);
    v26 = (*(v25 + 8))(v24, v25);
    if (v23)
    {
      *&v84 = 0;
      v27 = [v83 fetchTemplateWithObjectID:v26 error:&v84];

      v28 = v84;
      if (v27)
      {
        v29 = v84;
        v28 = [v27 objectID];
        v30 = [v27 sortingStyle];
        sub_21DBF708C();
        (*(v79 + 104))(v80, *MEMORY[0x277D45458], v81);
        sub_21DBF762C();
        v31 = v82;
        sub_21DBF6CEC();
        (*(v67 + 8))(v19, v17);
        if (v31)
        {
        }

        else
        {

          v44 = v58;
          v45 = v57;
          v46 = sub_21DBF76DC();
          v47 = v52;
          MEMORY[0x223D3FCA0](v46);
          (*(v59 + 8))(v44, v60);
          v28 = sub_21DBF718C();

          (*(v53 + 8))(v47, v54);
          (*(v56 + 8))(v21, v45);
        }

        goto LABEL_13;
      }
    }

    else
    {
      *&v84 = 0;
      v33 = [v83 fetchListWithObjectID:v26 error:&v84];

      v28 = v84;
      if (v33)
      {
        (*(v66 + 104))(v68, *MEMORY[0x277D45418], v14);
        v34 = v55[11];
        v35 = v55[12];
        __swift_project_boxed_opaque_existential_1(v55 + 8, v34);
        v36 = v28;
        *&v84 = [v33 objectID];
        BYTE8(v84) = 0;
        v37 = (*(v35 + 8))(&v84, v34, v35);
        sub_21D157478(v84, BYTE8(v84));
        v38 = MEMORY[0x277D45468];
        if ((v37 & 1) == 0)
        {
          v38 = MEMORY[0x277D45470];
        }

        (*(v69 + 104))(v71, *v38, v70);
        v28 = v74;
        (*(v72 + 104))(v74, *MEMORY[0x277D45500], v73);
        (*(v79 + 104))(v80, *MEMORY[0x277D45458], v81);
        v39 = v75;
        sub_21DBF737C();
        v40 = v78;
        v41 = v82;
        sub_21DBF6D0C();
        if (v41)
        {
          (*(v76 + 8))(v39, v77);
        }

        else
        {
          v48 = v61;
          v49 = v64;
          v50 = sub_21DBF76DC();
          v51 = v52;
          MEMORY[0x223D3F550](v50);
          (*(v63 + 8))(v48, v65);
          v28 = sub_21DBF718C();

          (*(v53 + 8))(v51, v54);
          (*(v62 + 8))(v40, v49);
          (*(v76 + 8))(v39, v77);
        }

        goto LABEL_13;
      }
    }

    v42 = v28;
    sub_21DBF52DC();

    swift_willThrow();
LABEL_13:
    __swift_destroy_boxed_opaque_existential_0(&v86);
    return v28;
  }

  sub_21D45C980(&v84);
  v32 = objc_opt_self();
  v28 = sub_21DBFA12C();
  [v32 internalErrorWithDebugDescription_];

  swift_willThrow();
  return v28;
}

uint64_t dispatch thunk of TTRReminderSectionPickerInteractorType.fetchSuggestedSections(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1237C4;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_21D5E5C2C()
{
  result = qword_27CE5EC90;
  if (!qword_27CE5EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5EC90);
  }

  return result;
}

uint64_t sub_21D5E5C80()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EC98);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EC98);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D5E5D7C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v19 - v5;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, sel_viewDidLoad, v4);
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = result;
  [result setEditing:0 animated:0];

  result = [v1 tableView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v9 setTableHeaderView_];

  if (v1[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_isPresentedInPopover] != 1)
  {
LABEL_6:
    v14 = sub_21DBFA89C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_21DBFA84C();
    v15 = v1;
    v16 = sub_21DBFA83C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v15;
    sub_21D1B5178(0, 0, v6, &unk_21DC1E4B8, v17);
  }

  result = [v1 tableView];
  if (result)
  {
    v11 = result;
    v19[1] = result;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_21DBF530C();

    v13 = *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_contentSizeObserver];
    *&v1[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_contentSizeObserver] = v12;

    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21D5E6038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D5E60D4, v6, v5);
}

uint64_t sub_21D5E60D4()
{
  if (qword_27CE56A98 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE5EC98);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAE9C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTRIReminderSectionPickerViewController: Begin to fetch suggested sections", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v5 = v0[2];

  v0[7] = *(v5 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter);
  v0[8] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v0[9] = v7;
  v0[10] = v6;

  return MEMORY[0x2822009F8](sub_21D5E622C, v7, v6);
}

uint64_t sub_21D5E622C()
{
  v1 = v0[7];
  v2 = *(v1 + 216);
  if (v2)
  {
    v3 = *(v1 + 208);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_21D5E632C;

    return TTRIReminderSectionPickerInteractor.fetchSuggestedSections(for:)(v3, v2);
  }

  else
  {

    v0[13] = MEMORY[0x277D84F90];
    v6 = v0[5];
    v7 = v0[6];

    return MEMORY[0x2822009F8](sub_21D5E64D0, v6, v7);
  }
}

uint64_t sub_21D5E632C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return MEMORY[0x2822009F8](sub_21D5E6454, v4, v3);
}

uint64_t sub_21D5E6454()
{
  v1 = v0[12];

  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v2 = v1;
  }

  v0[13] = v2;
  v3 = v0[5];
  v4 = v0[6];

  return MEMORY[0x2822009F8](sub_21D5E64D0, v3, v4);
}

uint64_t sub_21D5E64D0()
{
  v10 = v0;
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController);
  v3 = v0[13];
  if (v2)
  {
    v4 = v0[2];
    v9 = 2;
    v5 = v4;
    sub_21DBF8E0C();
    v6 = v2;
    sub_21DBE0FF8(&v9, v6, v5, v3);
    swift_bridgeObjectRelease_n();
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

void sub_21D5E65F0()
{
  if (*(*&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter] + 113) != 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  sub_21DBF516C();
  v1 = sub_21DBFA12C();

  [v0 setTitle_];
}

uint64_t sub_21D5E6894(uint64_t a1)
{
  if (*(*(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter) + 113))
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v9 = xmmword_21DC0E710;
  v10 = 0;
  v11 = sub_21DBF516C();
  v12 = v1;
  v13 = 0;
  v2 = sub_21D5CB094(2, 0, &v9, 2);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = (v2 + qword_27CE652E8);
  swift_beginAccess();
  v5 = *v4;
  *v4 = sub_21D5E959C;
  v4[1] = v3;

  sub_21D0D0E88(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E670);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 48) = 1;
  *(v6 + 49) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 32) = v2;
  *(v6 + 40) = 0;
  v7 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x70);
  swift_beginAccess();
  *(v7 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v6;
}

void sub_21D5E6B60(uint64_t a1)
{
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (v8)
    {
      v11 = [v6 string];
      v12 = sub_21DBFA16C();
      v14 = v13;

      sub_21D5968AC(v6, v7, 1);
      v6 = v12;
      v7 = v14;
    }

    else
    {
      sub_21DBF8E0C();
    }

    v30[0] = v6;
    v30[1] = v7;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v15 = sub_21DBFBB3C();
    v17 = v16;
    (*(v3 + 8))(v5, v2);

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = *&v10[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter];
      swift_beginAccess();
      v20 = *(v19 + 64);
      *(v19 + 64) = 1;
      swift_unknownObjectRetain();
      sub_21D157878(v20);
      v21 = *(v19 + 64);
      v22 = *(v19 + 80);
      if (v21 == 1)
      {
        if (v22)
        {
          v21 = *(v19 + 72);
          v23 = *(v19 + 88);
          v22 = sub_21DBF8E0C();
          if (v23)
          {
            v24 = 2;
          }

          else
          {
            v24 = 0;
          }
        }

        else
        {
          v21 = 0;
          v24 = 3;
        }
      }

      else if (v22)
      {
        v21 = 0;
        v22 = 0;
        v24 = 3;
      }

      else
      {
        v25 = v21;
        v22 = 0;
        v24 = 1;
      }

      v26 = *(v19 + 96);
      v27 = *(v19 + 104);
      *(v19 + 96) = v21;
      *(v19 + 104) = v22;
      v28 = *(v19 + 112);
      *(v19 + 112) = v24;
      swift_endAccess();
      sub_21D5E903C(v26, v27, v28);
      v29 = *(v19 + 48);
      if (v29)
      {

        v29(v10, v15, v17, 0);

        swift_unknownObjectRelease();
        sub_21D0D0E88(v29);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    if (v10[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_isPresentedInPopover] == 1)
    {
      [v10 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_21D5E6E64(uint64_t a1)
{
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v1;
    v18 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v6 = (a1 + 64);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v13 = *(v6 - 2);
      v14 = v8;
      v15 = v7;
      v16 = v9;
      v10 = v13;
      sub_21DBF8E0C();
      v11 = v10;
      sub_21DBF8E0C();
      sub_21D5E6F80(&v13, v5, &v17);
      v12 = v13;

      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v6 += 5;
      --v3;
    }

    while (v3);
    return v18;
  }

  return result;
}

uint64_t sub_21D5E6F80@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v30 = *a1;
  v31 = v4;
  v32 = *(a1 + 4);
  v5 = *(a2 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter);
  swift_beginAccess();
  if (*(v5 + 112) != 1)
  {
    v7 = v30;
    if (v30 != 1)
    {
      v6 = 1;
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  v6 = *(v5 + 96);
  v7 = v30;
  v8 = v6;
  if (v30 != 1)
  {
    if (v6 == 1)
    {
      goto LABEL_13;
    }

    v13 = v8;
    if (v30)
    {
      if (v6)
      {
        sub_21D0D8CF0(0, &qword_280D17680);
        v14 = v30;
        sub_21D15751C(v6);
        sub_21D15751C(v6);
        sub_21D15751C(v30);
        v15 = sub_21DBFB63C();
        sub_21D157878(v6);
        sub_21D157878(v6);

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        v11 = 0;
        v12 = v30;
        goto LABEL_14;
      }

      sub_21D15751C(0);
      sub_21D15751C(v30);
    }

    else if (!v6)
    {
      goto LABEL_16;
    }

    v28 = v30;

LABEL_19:
    v11 = 1;
    v12 = v30;
    goto LABEL_14;
  }

  if (v6 != 1)
  {
    v7 = 1;
LABEL_13:
    v12 = v7;
    v16 = v7;
    sub_21D157878(v7);
    v11 = 1;
    v7 = v6;
    goto LABEL_14;
  }

LABEL_6:
  v7 = 1;
  v9 = 1;
  v10 = 1;
  v11 = 0;
  v12 = 1;
LABEL_14:
  sub_21D157878(v7);
  objc_allocWithZone(type metadata accessor for TTRISectionPickerCellContent());
  sub_21DBF8E0C();
  v17 = sub_21DA88104(0, 0xD000000000000011, 0x800000021DC632B0, 0, *(&v30 + 1), v31, v12, v11);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = v31;
  *(v19 + 24) = v30;
  *(v19 + 40) = v20;
  *(v19 + 56) = v32;
  v21 = MEMORY[0x277D85000];
  v22 = (v17 + *((*MEMORY[0x277D85000] & *v17) + 0x108));
  swift_beginAccess();
  v23 = *v22;
  *v22 = sub_21D5E95F8;
  v22[1] = v19;
  v24 = v17;

  sub_21D5E9604(&v30, v29);
  sub_21D0D0E88(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAE0);
  v25 = swift_allocObject();
  *(v25 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 48) = 1;
  *(v25 + 49) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = 1;
  *(v25 + 32) = v24;
  *(v25 + 40) = 0;
  v26 = v24 + *((*v21 & *v24) + 0x70);
  swift_beginAccess();
  *(v26 + 1) = &protocol witness table for TTRITableCell<A>;
  result = swift_unknownObjectWeakAssign();
  *a3 = v25;
  return result;
}

void sub_21D5E7310(uint64_t a1, void **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v7 = *a2;
    v6 = v7;
    sub_21D5E9660(&v7, &v5);
    sub_21D5EA298(&v6, v4);

    if (*(v4 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_isPresentedInPopover) == 1)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_21D5E73D0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestionGroup;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestionGroup))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestionGroup);
  }

  else
  {
    type metadata accessor for TTRITableGroup();
    v2 = swift_allocObject();
    *(v2 + 16) = 0;
    *(v2 + 24) = 1;
    *(v2 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 88) = 0;
    *(v2 + 72) = 0u;
    *(v2 + 56) = 0u;
    v3 = MEMORY[0x277D84F90];
    *(v2 + 96) = 2;
    *(v2 + 48) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_21D5E7484(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_21D5E74EC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___sectionlessSection;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___sectionlessSection))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___sectionlessSection);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE586C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter);
    v6 = *(v4 + 136);
    v5 = *(v4 + 144);
    v7 = *(v4 + 152);
    v8 = *(v4 + 120);
    *(inited + 32) = v8;
    *(inited + 48) = v6;
    *(inited + 56) = v5;
    *(inited + 64) = v7;
    v9 = v8;
    sub_21DBF8E0C();
    v10 = v9;
    sub_21DBF8E0C();
    v11 = sub_21D5E6E64(inited);
    swift_setDeallocating();
    sub_21D5E95A4(inited + 32);
    memset(v15, 0, 73);
    memset(v14, 0, 73);
    v12 = sub_21D7F6330(v11);

    type metadata accessor for TTRITableSection();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 200) = 0;
    *(v2 + 208) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 89) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 128) = 0u;
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
    *(v2 + 169) = 0u;
    *(v2 + 112) = 0u;
    *(v2 + 216) = 1;
    swift_beginAccess();
    sub_21D313A24(v15, v2 + 32);
    swift_endAccess();
    swift_beginAccess();
    sub_21D313A24(v14, v2 + 112);
    swift_endAccess();
    *(v2 + 192) = v12;
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_21D5E76D4()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController;
  if (!*&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController])
  {
    v5 = v0;
    v6 = MEMORY[0x277D84F90];
    v32 = MEMORY[0x277D84F90];
    v7 = *(*&v0[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter] + 168);
    v8 = *(v7 + 16);
    sub_21DBF8E0C();
    if (v8)
    {
      v9 = sub_21D5E6E64(v7);
      v10 = sub_21D7F6330(v9);

      sub_21D562A50(v10);
      v6 = v32;
    }

    v11 = sub_21D5E7484(&OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___addSectionCell, sub_21D5E6894);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_21D213018(0, v6[2] + 1, 1, v6);
    }

    v13 = v6[2];
    v12 = v6[3];
    if (v13 >= v12 >> 1)
    {
      v6 = sub_21D213018((v12 > 1), v13 + 1, 1, v6);
    }

    v6[2] = v13 + 1;
    v14 = &v6[2 * v13];
    v14[4] = v11;
    v14[5] = &protocol witness table for TTRITableCell<A>;
    v15 = [v5 tableView];
    if (v15)
    {
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58718);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21DC08D10;
      *(v17 + 32) = sub_21D5E74EC();
      *(v17 + 40) = &protocol witness table for TTRITableSection;
      memset(v31, 0, 73);
      type metadata accessor for TTRITableSection();
      memset(v30, 0, 73);
      v18 = swift_allocObject();
      *(v18 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v18 + 200) = 0;
      *(v18 + 208) = 0;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 89) = 0u;
      *(v18 + 32) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 169) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 216) = 1;
      swift_beginAccess();
      sub_21DBF8E0C();
      sub_21D313A24(v31, v18 + 32);
      swift_endAccess();
      swift_beginAccess();
      sub_21D313A24(v30, v18 + 112);
      swift_endAccess();
      *(v18 + 192) = v6;
      *(v17 + 48) = v18;
      *(v17 + 56) = &protocol witness table for TTRITableSection;
      *(v17 + 64) = sub_21D5E7484(&OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestedSection, sub_21D5E90BC);
      *(v17 + 72) = &protocol witness table for TTRITableSection;
      v19 = sub_21D5E8D34(v16, v17, 6, 0);
      v20 = &v19[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_customSectionSpacing];
      swift_beginAccess();
      *v20 = 0x4030000000000000;
      v20[8] = 0;
      v21 = *&v5[v1];
      *&v5[v1] = v19;
      v22 = v19;

      v23 = [v5 tableView];
      if (v23)
      {
        v24 = v23;
        [v23 setDelegate_];

        v25 = [v5 tableView];
        if (v25)
        {
          v26 = v25;
          [v25 setDataSource_];

          v27 = [v5 tableView];
          if (v27)
          {
            v28 = v27;

            [v28 reloadData];

            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  if (qword_27CE56A98 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5EC98);
  oslog = sub_21DBF84AC();
  v3 = sub_21DBFAECC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v3, "buildSections is called more than once", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }
}

void sub_21D5E7B8C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter);
  swift_beginAccess();
  if (*(v2 + 112))
  {
    v32 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v3 = *(v2 + 104);
    v32 = *(v2 + 96);
    sub_21DBF8E0C();
  }

  v4 = *(sub_21D5E7484(&OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___addSectionCell, sub_21D5E6894) + 32);

  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x68);
  swift_beginAccess();
  v7 = *(v4 + v6);
  if (v7 && (v8 = *(v7 + qword_27CE65428 + 8), ObjectType = swift_getObjectType(), v10 = *(v8 + 216), swift_unknownObjectRetain(), LOBYTE(v8) = v10(ObjectType, v8), swift_unknownObjectRelease(), (v8 & 1) != 0))
  {

    v11 = v32;
  }

  else
  {
    v12 = v4 + *((*v5 & *v4) + 0x78);
    swift_beginAccess();
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = v12[16];
    v16 = v12[17];
    v18 = *(v12 + 3);
    v17 = *(v12 + 4);
    v19 = *(v12 + 5);
    sub_21D59B950(v13, v14, v15);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21D5968AC(v13, v14, v15);
    LOBYTE(v33) = 0;
    v11 = v32;
    *&v39 = v32;
    *(&v39 + 1) = v3;
    v40 = 0;
    v41 = v16;
    v42 = v18;
    v5 = MEMORY[0x277D85000];
    v43 = v17;
    v44 = v19;
    sub_21D5C6B34(&v39);
  }

  v21 = *(*(v1 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___addSectionCell) + 32);

  v22 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v22 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v22 != 0;
  v24 = v21 + *((*v5 & *v21) + 0x78);
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 1);
  v27 = v24[16];
  v28 = *(v24 + 3);
  v29 = *(v24 + 4);
  v30 = *(v24 + 5);
  *&v33 = v25;
  *(&v33 + 1) = v26;
  v34 = v27;
  v35 = v23;
  v36 = v28;
  v37 = v29;
  v38 = v30;
  sub_21D59B950(v25, v26, v27);
  v31 = v30;
  sub_21DBF8E0C();
  sub_21D5C6B34(&v33);
}

void sub_21D5E7E54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF813C();
  MEMORY[0x28223BE20](v4);
  if (*(a1 + 16))
  {
    v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v73 = v6;
    sub_21D5E7484(&OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestedSection, sub_21D5E90BC);
    TTRITableSection.isHidden.setter(0);

    v7 = sub_21D5E73D0();
    swift_beginAccess();
    v8 = *(v7 + 48);
    sub_21DBF8E0C();

    *&v90 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAE0);
    sub_21D0D0F1C(&qword_27CE5EA60, &qword_27CE5EA50);
    v9 = sub_21DBFA43C();

    if (v9)
    {
      if (v9 >> 62)
      {
        v10 = sub_21DBFBD7C();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = MEMORY[0x277D84F90];
      v70 = a1;
      v71 = v4;
      v74 = v2;
      if (v10)
      {
        *&v90 = MEMORY[0x277D84F90];
        sub_21D18F2CC(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
          return;
        }

        v12 = v90;
        v75 = v9;
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = 0;
          v76 = v10;
          do
          {
            v14 = MEMORY[0x223D44740](v13, v75);
            v15 = (*(v14 + 32) + *((*MEMORY[0x277D85000] & **(v14 + 32)) + 0x78));
            swift_beginAccess();
            v17 = *v15;
            v16 = v15[1];
            v18 = v15[2];
            v19 = *(v15 + 24);
            sub_21DBF8E0C();
            sub_21D15751C(v18);
            swift_unknownObjectRelease();
            *&v90 = v12;
            v21 = *(v12 + 16);
            v20 = *(v12 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_21D18F2CC((v20 > 1), v21 + 1, 1);
              v12 = v90;
            }

            v13 = (v13 + 1);
            *(v12 + 16) = v21 + 1;
            v22 = v12 + 32 * v21;
            *(v22 + 32) = v17;
            *(v22 + 40) = v16;
            *(v22 + 48) = v18;
            *(v22 + 56) = v19;
          }

          while (v76 != v13);
        }

        else
        {
          v27 = v9 + 32;
          do
          {
            v76 = v10;
            v28 = (*(*v27 + 32) + *((*MEMORY[0x277D85000] & **(*v27 + 32)) + 0x78));
            swift_beginAccess();
            v30 = *v28;
            v29 = v28[1];
            v31 = v28[2];
            v32 = *(v28 + 24);
            sub_21DBF8E0C();
            sub_21D15751C(v31);
            *&v90 = v12;
            v34 = *(v12 + 16);
            v33 = *(v12 + 24);
            if (v34 >= v33 >> 1)
            {
              sub_21D18F2CC((v33 > 1), v34 + 1, 1);
              v12 = v90;
            }

            *(v12 + 16) = v34 + 1;
            v35 = v12 + 32 * v34;
            *(v35 + 32) = v30;
            *(v35 + 40) = v29;
            *(v35 + 48) = v31;
            *(v35 + 56) = v32;
            v27 += 8;
            v10 = &v76[-1].isa + 7;
          }

          while (v76 != 1);
        }

        v69 = v12;

        v4 = v71;
        v2 = v74;
        v11 = MEMORY[0x277D84F90];
      }

      else
      {

        v69 = MEMORY[0x277D84F90];
      }

      v36 = *(v2 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter);
      swift_beginAccess();
      v37 = 0;
      v38 = *(v36 + 96);
      v39 = *(v36 + 104);
      v40 = 0xE000000000000000;
      if (*(v36 + 112) > 1u)
      {
        if (*(v36 + 112) == 2)
        {
          sub_21DBF8E0C();
          v37 = v38;
          v40 = v39;
        }
      }

      else if (*(v36 + 112))
      {
        v41 = *(v36 + 136);
        v86 = *(v36 + 120);
        v87 = v41;
        v42 = *(v36 + 168);
        v88 = *(v36 + 152);
        v89 = v42;
        v43 = *(v36 + 136);
        v82 = *(v36 + 120);
        v83 = v43;
        v44 = *(v36 + 168);
        v84 = *(v36 + 152);
        v85 = v44;
        v78 = v38;
        v45 = v38;
        sub_21D5E9014(v38, v39, 1);
        sub_21D5E8C84(&v86, v77);
        sub_21D5E9814(&v78, 0, 0, v79);
        sub_21D157878(v78);
        v90 = v82;
        v91 = v83;
        v92 = v84;
        v93 = v85;
        sub_21D5E8CE0(&v90);
        if (v80)
        {
          v76 = v81;
          v46 = v79[0];
          v37 = v79[1];
          v47 = v38;
          v48 = v80;
          sub_21D5E903C(v47, v39, 1);
          sub_21DBF8E0C();
          sub_21D5E9064(v46, v37, v48);
          v40 = v48;
        }

        else
        {
          sub_21D5E903C(v38, v39, 1);
          v37 = 0;
          v40 = 0xE000000000000000;
        }
      }

      v75 = v37;
      v76 = v40;
      v49 = *(v36 + 136);
      v86 = *(v36 + 120);
      v87 = v49;
      v50 = *(v36 + 168);
      v88 = *(v36 + 152);
      v89 = v50;
      v51 = *(v36 + 136);
      v82 = *(v36 + 120);
      v83 = v51;
      v52 = *(v36 + 168);
      v84 = *(v36 + 152);
      v85 = v52;
      sub_21D5E8C84(&v86, &v90);
      sub_21D5E9A90(v70);
      v54 = v53;
      v90 = v82;
      v91 = v83;
      v92 = v84;
      v93 = v85;
      sub_21D5E8CE0(&v90);
      v55 = *(v54 + 16);
      if (v55)
      {
        *&v82 = v11;
        sub_21D18F2CC(0, v55, 0);
        v56 = v82;
        v70 = v54;
        v57 = (v54 + 40);
        do
        {
          v58 = *(v57 - 1);
          v59 = *v57;
          if (v58 == v75 && v59 == v76)
          {
            v61 = 0;
          }

          else
          {
            v61 = sub_21DBFC64C() ^ 1;
          }

          *&v82 = v56;
          v63 = *(v56 + 16);
          v62 = *(v56 + 24);
          sub_21DBF8E0C();
          if (v63 >= v62 >> 1)
          {
            sub_21D18F2CC((v62 > 1), v63 + 1, 1);
            v56 = v82;
          }

          *(v56 + 16) = v63 + 1;
          v64 = v56 + 32 * v63;
          *(v64 + 32) = v58;
          *(v64 + 40) = v59;
          *(v64 + 48) = 1;
          *(v64 + 56) = v61 & 1;
          v57 += 2;
          --v55;
        }

        while (v55);

        v4 = v71;
      }

      else
      {

        v56 = MEMORY[0x277D84F90];
      }

      *&v82 = v56;
      v77[0] = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ECF0);
      sub_21D0D0F1C(&qword_27CE5ECF8, &qword_27CE5ECF0);
      v65 = v72;
      sub_21DBFAC5C();

      MEMORY[0x28223BE20](v66);
      *(&v69 - 2) = v56;
      *(&v69 - 1) = v67;
      MEMORY[0x28223BE20](v68);
      *(&v69 - 2) = v56;

      sub_21D5D0048(v65, sub_21D5E9004, (&v69 - 4), sub_21D5E900C, (&v69 - 4));

      (*(v73 + 8))(v65, v4);
    }
  }

  else
  {
    if (qword_27CE56A98 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE5EC98);
    v76 = sub_21DBF84AC();
    v24 = sub_21DBFAE9C();
    if (os_log_type_enabled(v76, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_21D0C9000, v76, v24, "TTRIReminderSectionPickerViewController: No more suggested section names", v25, 2u);
      MEMORY[0x223D46520](v25, -1, -1);
    }

    v26 = v76;
  }
}

uint64_t sub_21D5E876C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAE0);
  result = swift_dynamicCastClass();
  v3 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a1 = v3;
  return result;
}

unint64_t sub_21D5E87D4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (*(a2 + 16) > result)
    {
      v4 = a2 + 32 * result;
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
      v7 = *(v4 + 48);
      v8 = *(v4 + 56);
      objc_allocWithZone(type metadata accessor for TTRISectionPickerCellContent());
      sub_21DBF8E0C();
      sub_21D15751C(v7);
      v9 = sub_21DA88104(0, 0xD000000000000011, 0x800000021DC632B0, 0, v5, v6, v7, v8);
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = a2;
      v11[4] = v3;
      v12 = MEMORY[0x277D85000];
      v13 = (v9 + *((*MEMORY[0x277D85000] & *v9) + 0x108));
      swift_beginAccess();
      v14 = *v13;
      *v13 = sub_21D5E90B0;
      v13[1] = v11;
      v15 = v9;

      sub_21DBF8E0C();
      sub_21D0D0E88(v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EAE0);
      v16 = swift_allocObject();
      *(v16 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v16 + 48) = 1;
      *(v16 + 49) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      *(v16 + 72) = 1;
      *(v16 + 32) = v15;
      *(v16 + 40) = 0;
      v17 = v15 + *((*v12 & *v15) + 0x70);
      swift_beginAccess();
      *(v17 + 1) = &protocol witness table for TTRITableCell<A>;
      swift_unknownObjectWeakAssign();
      *(v16 + 72) = 1;
      return v16;
    }
  }

  __break(1u);
  return result;
}

void sub_21D5E8A10(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16) <= a3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = Strong;
  v7 = a2 + 32 * a3;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  sub_21DBF8E0C();
  sub_21D5EA570(v8, v9, v6);

  if (*(v6 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_isPresentedInPopover) == 1)
  {
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_21D5E8AE8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a3 + 16) > a2)
  {
    v3 = a3 + 32 * a2;
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v3 + 48);
    v7 = *(v3 + 56);
    sub_21DBF8E0C();
    sub_21D15751C(v6);
    sub_21D5C8698(v4, v5, v6, v7);
    return;
  }

  __break(1u);
}

char *sub_21D5E8D34(void *a1, uint64_t a2, char a3, char a4)
{
  v8 = type metadata accessor for TTRITableDataController();
  v9 = objc_allocWithZone(v8);
  v27[3] = sub_21D0D8CF0(0, &unk_27CE62380);
  v27[4] = &protocol witness table for UITableView;
  v27[0] = a1;
  v10 = &v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_customSectionSpacing];
  *v10 = 0;
  v10[8] = 1;
  v11 = &v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_cachedSectionsMetadata];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  *&v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_batchUpdatesContext] = 0;
  v12 = OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_cellViewAssignment;
  type metadata accessor for CellViewAssignment();
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F98];
  *&v9[v12] = v13;
  sub_21D0D32E4(v27, &v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_tableView]);
  *&v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_sections] = a2;
  v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_rowInsertionAnimationType] = a3;
  v9[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_collapseSectionIfItemsAreHidden] = a4;
  v26.receiver = v9;
  v26.super_class = v8;
  v14 = a1;
  v15 = objc_msgSendSuper2(&v26, sel_init);
  v25 = sub_21D0D8CF0(0, &qword_27CE5A5C0);
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A5B0);
  sub_21DBFA1AC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = sub_21DBFA12C();

  [v14 registerClass:ObjCClassFromMetadata forHeaderFooterViewReuseIdentifier:{v18, v25, v26.receiver, v26.super_class, v27[0]}];

  v19 = *&v16[OBJC_IVAR____TtC15RemindersUICore23TTRITableDataController_sections];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (v19 + 40);
    do
    {
      v22 = *v21;
      v23 = swift_unknownObjectRetain();
      sub_21DBD477C(v23, v22);
      swift_unknownObjectRelease();
      v21 += 2;
      --v20;
    }

    while (v20);
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v16;
}

uint64_t sub_21D5E8FA4(__int128 *a1, __int128 *a2, uint64_t (*a3)(__int128 *, __int128 *))
{
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v5 = *a2;
  v6 = *(a2 + 2);
  v7 = *(a2 + 24);
  v12 = *a1;
  v13 = v3;
  v14 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  return a3(&v12, &v9) & 1;
}

id sub_21D5E9014(id result, id a2, char a3)
{
  if (a3 == 2)
  {
    return sub_21DBF8E0C();
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    return sub_21DBF8E0C();
  }

  return result;
}

void sub_21D5E903C(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

uint64_t sub_21D5E9064(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = result;
  }

  return result;
}

uint64_t sub_21D5E90BC(uint64_t a1)
{
  v13 = sub_21DBF8A0C();
  v2 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  v14 = a1;
  v8 = *(a1 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter);
  if (*(v8 + 113) != 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_5:
  v12 = sub_21DBF516C();
  if (*(v8 + 113) == 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_9:
  sub_21DBF516C();
  sub_21DBF898C();
  UIListContentConfiguration.usingRoundedSystemFont()(v7);
  (*(v2 + 8))(v4, v13);
  sub_21DBF8E0C();
  sub_21DBF89EC();
  sub_21DBF8E0C();
  sub_21DBF88FC();

  TTRITableSectionHeaderFooter.init(listContentConfiguration:height:)(v7, 0, 1, v16);
  memset(v15, 0, 73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC08D00;
  *(v9 + 32) = sub_21D5E73D0();
  *(v9 + 40) = &protocol witness table for TTRITableGroup;
  type metadata accessor for TTRITableSection();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 200) = 0;
  *(v10 + 208) = 0;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 89) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 128) = 0u;
  *(v10 + 144) = 0u;
  *(v10 + 160) = 0u;
  *(v10 + 169) = 0u;
  *(v10 + 112) = 0u;
  *(v10 + 216) = 1;
  swift_beginAccess();
  sub_21D313A24(v16, v10 + 32);
  swift_endAccess();
  swift_beginAccess();
  sub_21D313A24(v15, v10 + 112);
  swift_endAccess();
  *(v10 + 192) = v9;
  TTRITableSection.isHidden.setter(1);
  return v10;
}

uint64_t sub_21D5E96BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D5E6038(a1, v4, v5, v6);
}

void sub_21D5E9770()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_contentSizeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___addSectionCell) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestionGroup) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestedSection) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___sectionlessSection) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D5E9814(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(v4 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_26:
    a4[4] = 0;
    *a4 = 0u;
    *(a4 + 1) = 0u;
    return;
  }

  v7 = a3;
  v8 = a2;
  v31 = a4;
  v9 = *a1;
  if (*a1 == 1)
  {
LABEL_15:
    if (v7)
    {
      v35 = -v6;
      v20 = (v5 + 64);
      v21 = -1;
      while (1)
      {
        if (v35 + v21 == -1)
        {
          goto LABEL_25;
        }

        if (++v21 >= *(v5 + 16))
        {
          goto LABEL_35;
        }

        v22 = *(v20 - 4);
        v23 = *(v20 - 3);
        v24 = *(v20 - 2);
        v25 = *(v20 - 1);
        v26 = *v20;
        if (v23 == v8 && v24 == v7)
        {
          break;
        }

        v20 += 5;
        if (sub_21DBFC64C())
        {
          v7 = v24;
LABEL_28:
          *v31 = v22;
          v31[1] = v23;
          v31[2] = v7;
          v31[3] = v25;
          v31[4] = v26;
          sub_21DBF8E0C();
          v28 = v22;

          sub_21DBF8E0C();
          return;
        }
      }

      v23 = v8;
      goto LABEL_28;
    }

LABEL_25:
    a4 = v31;
    goto LABEL_26;
  }

  v33 = *(v4 + 56);
  v34 = v9;
  v10 = 0;
  v11 = (v5 + 64);
  while (v10 < *(v5 + 16))
  {
    v15 = *(v11 - 2);
    v14 = *(v11 - 1);
    v16 = *v11;
    v17 = *(v11 - 4);
    if (!v17)
    {
      if (!v9)
      {
        v32 = *(v11 - 2);
        sub_21D15751C(0);
        sub_21DBF8E0C();
        sub_21DBF8E0C();

        goto LABEL_33;
      }

      v12 = v9;
      goto LABEL_5;
    }

    if (!v9)
    {
      v12 = 0;
LABEL_5:
      sub_21D15751C(v12);
      v13 = v34;
      goto LABEL_6;
    }

    v32 = *(v11 - 2);
    sub_21D1B2ABC();
    v18 = v17;
    sub_21D15751C(v9);
    sub_21DBF8E0C();
    v13 = v18;
    sub_21DBF8E0C();
    v19 = sub_21DBFB63C();

    if (v19)
    {
      sub_21D157878(v9);
LABEL_33:
      *v31 = v32;
      v31[2] = v15;
      v31[3] = v14;
      v31[4] = v16;
      return;
    }

    v5 = v33;
LABEL_6:
    ++v10;

    v11 += 5;
    if (v6 == v10)
    {
      sub_21D157878(v9);
      v8 = a2;
      v7 = a3;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

void sub_21D5E9A90(uint64_t a1)
{
  v3 = *(v1 + 56);
  sub_21DBF8E0C();
  v4 = sub_21DBF8E0C();
  v53 = sub_21D0FC0A8(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED08);
  sub_21D5EBAE8();
  v5 = sub_21DBFA42C();

  sub_21DBF8E0C();
  v6 = sub_21DBFA42C();
  v49 = v3;

  v7 = sub_21D7C0EB4(v5, v53);

  v8 = *(a1 + 16);
  v50 = v6;
  if (v8)
  {
    v9 = 0;
    v54 = a1 + 32;
    v10 = (v7 + 7);
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 >= v8)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_55;
      }

      v12 = (v54 + 16 * v9);
      v14 = *v12;
      v13 = v12[1];
      ++v9;
      if (!v7[2])
      {
        break;
      }

      sub_21DBFC7DC();
      sub_21DBF8E0C();
      sub_21DBFA27C();
      v15 = sub_21DBFC82C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      if ((*&v10[(v17 >> 3) & 0xFFFFFFFFFFFFFF8] >> v17))
      {
        v18 = ~v16;
        while (1)
        {
          v19 = (v7[6] + 16 * v17);
          v20 = *v19 == v14 && v19[1] == v13;
          if (v20 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v17 = (v17 + 1) & v18;
          if (((*&v10[(v17 >> 3) & 0xFFFFFFFFFFFFFF8] >> v17) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (v11 == v8)
        {
          goto LABEL_23;
        }
      }

      else
      {
LABEL_15:
        v21 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21D18E678(0, *(v52 + 16) + 1, 1);
          v21 = v52;
        }

        v23 = *(v21 + 16);
        v22 = *(v21 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21D18E678((v22 > 1), v23 + 1, 1);
          v21 = v52;
        }

        *(v21 + 16) = v23 + 1;
        v52 = v21;
        v24 = v21 + 16 * v23;
        *(v24 + 32) = v14;
        *(v24 + 40) = v13;
        v6 = v50;
        if (v11 == v8)
        {
          goto LABEL_23;
        }
      }
    }

    sub_21DBF8E0C();
    goto LABEL_15;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_23:

  v25 = v52;
  v26 = *(v52 + 16);
  if (v26)
  {
    v55 = MEMORY[0x277D84F90];
    v51 = *(v52 + 16);
    sub_21D18E678(0, v26, 0);
    v27 = v51;
    v28 = 0;
    v29 = v6 + 56;
    while (v28 < *(v25 + 16))
    {
      v30 = (v52 + 32 + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      if (*(v6 + 16))
      {
        sub_21DBFC7DC();
        sub_21DBF8E0C();
        sub_21DBFA27C();
        v33 = sub_21DBFC82C();
        v34 = -1 << *(v6 + 32);
        v35 = v33 & ~v34;
        if ((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          while (1)
          {
            v37 = (*(v6 + 48) + 16 * v35);
            v38 = *v37 == v32 && v37[1] == v31;
            if (v38 || (sub_21DBFC64C() & 1) != 0)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v29 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_48;
            }
          }

          v39 = *(v49 + 16);
          if (v39)
          {
            v40 = (v49 + 64);
            while (1)
            {
              if (*v40)
              {
                v41 = *(v40 - 4);
                v42 = *(v40 - 3);
                v43 = *(v40 - 2);
                v44 = *(v40 - 1) == v32 && *v40 == v31;
                if (v44 || (sub_21DBFC64C() & 1) != 0)
                {
                  break;
                }
              }

              v40 += 5;
              if (!--v39)
              {
                goto LABEL_47;
              }
            }

            v45 = v41;
            sub_21DBF8E0C();

            v32 = v42;
            v31 = v43;
LABEL_47:
            v6 = v50;
            v25 = v52;
          }
        }

LABEL_48:
        v27 = v51;
      }

      else
      {
        sub_21DBF8E0C();
      }

      v47 = *(v55 + 16);
      v46 = *(v55 + 24);
      if (v47 >= v46 >> 1)
      {
        sub_21D18E678((v46 > 1), v47 + 1, 1);
        v27 = v51;
      }

      ++v28;
      *(v55 + 16) = v47 + 1;
      v48 = v55 + 16 * v47;
      *(v48 + 32) = v32;
      *(v48 + 40) = v31;
      if (v28 == v27)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_56;
  }

LABEL_52:
}

uint64_t TTRIReminderSectionPickerUnsavedSectionObject.UserAction.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D5EA030@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[23];
  swift_beginAccess();
  v4 = *(v3 + 32);
  if (v4)
  {
    swift_beginAccess();
    v5 = *(v3 + 40);
    if (v5)
    {
      if (v1[27])
      {
        swift_beginAccess();
        sub_21D0FACE0(v3 + 48, v19);
        v6 = v20;
        if (v20)
        {
          v7 = *(&v20 + 1);
          __swift_project_boxed_opaque_existential_1(v19, v20);
          v8 = *(v7 + 8);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          v9 = v8(v6, v7);
          __swift_destroy_boxed_opaque_existential_0(v19);
          v10 = v1[31];
          v11 = v1[32];
          __swift_project_boxed_opaque_existential_1(v1 + 28, v10);
          v12 = (*(v11 + 40))(v9, v10, v11);

LABEL_12:
          sub_21D5EA798(v4, v5, v12 & 1, v19);
          v15 = v19[0];
          result = v19[1];
          v14 = v19[2];
          v18 = v20;
          v17 = v21;
          v16 = v22;
          goto LABEL_13;
        }

        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D45C980(v19);
      }

      else
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
      }

      v12 = 0;
      goto LABEL_12;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  result = sub_21DBF516C();
  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v17 = vdupq_n_s64(MEMORY[0x277D84F90]);
  v18 = 0uLL;
LABEL_13:
  *a1 = v15;
  *(a1 + 8) = result;
  *(a1 + 16) = v14;
  *(a1 + 24) = v18;
  *(a1 + 40) = v17;
  *(a1 + 56) = v16;
  return result;
}

void sub_21D5EA298(void **a1, uint64_t a2)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = *(v2 + 64);
  *(v2 + 64) = v4;
  v35 = v4;
  sub_21D157878(v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 80);
  v34 = a2;
  if (v6 == 1)
  {
    if (v7)
    {
      v6 = *(v2 + 72);
      v8 = *(v2 + 88);
      v7 = sub_21DBF8E0C();
      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v6 = 0;
      v9 = 3;
    }
  }

  else if (v7)
  {
    v6 = 0;
    v7 = 0;
    v9 = 3;
  }

  else
  {
    v10 = v6;
    v7 = 0;
    v9 = 1;
  }

  v11 = *(v2 + 96);
  v12 = *(v2 + 104);
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  v13 = *(v2 + 112);
  *(v2 + 112) = v9;
  swift_endAccess();
  sub_21D5E903C(v11, v12, v13);

  if (!v4)
  {
    v26 = *(v2 + 32);
    if (!v26)
    {
      return;
    }

    v28 = *(v2 + 136);
    v27 = *(v2 + 144);
    v29 = *(v2 + 152);
    v38 = *(v2 + 120);
    v39 = v28;
    v40 = v27;
    v41 = v29;
    sub_21D0D0E78(v26);
    sub_21DBF8E0C();
    v30 = v38;
    sub_21DBF8E0C();
    v26(v34, &v38);
    sub_21D0D0E88(v26);
    v31 = v38;

    goto LABEL_21;
  }

  v33 = v2;
  v14 = *(*(v2 + 160) + 16);
  v37 = *(v2 + 160);
  sub_21DBF8E0C();
  v36 = v14;
  if (!v14)
  {
LABEL_21:

    return;
  }

  v15 = 0;
  v16 = (v37 + 64);
  while (1)
  {
    if (v15 >= *(v37 + 16))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 - 4);
    if (v17)
    {
      break;
    }

LABEL_13:
    ++v15;
    v16 += 5;
    if (v36 == v15)
    {
      goto LABEL_21;
    }
  }

  v19 = *(v16 - 1);
  v18 = *v16;
  v20 = *(v16 - 3);
  v21 = *(v16 - 2);
  sub_21D1B2ABC();
  sub_21DBF8E0C();
  v22 = v17;
  v23 = v35;
  v24 = v22;
  sub_21DBF8E0C();
  v25 = sub_21DBFB63C();

  if ((v25 & 1) == 0)
  {

    goto LABEL_13;
  }

  v32 = *(v33 + 32);
  if (v32)
  {
    *&v38 = v17;
    *(&v38 + 1) = v20;
    v39 = v21;
    v40 = v19;
    v41 = v18;

    v32(v34, &v38);
    sub_21D0D0E88(v32);
  }
}

uint64_t sub_21D5EA570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 64);
  *(v3 + 64) = 1;
  sub_21D157878(v8);
  v9 = *(v3 + 64);
  v10 = *(v3 + 80);
  if (v9 == 1)
  {
    if (v10)
    {
      v9 = *(v3 + 72);
      v11 = *(v3 + 88);
      v10 = sub_21DBF8E0C();
      if (v11)
      {
        v12 = 2;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v9 = 0;
      v12 = 3;
    }
  }

  else if (v10)
  {
    v9 = 0;
    v10 = 0;
    v12 = 3;
  }

  else
  {
    v13 = v9;
    v10 = 0;
    v12 = 1;
  }

  v14 = *(v4 + 96);
  v15 = *(v4 + 104);
  *(v4 + 96) = v9;
  *(v4 + 104) = v10;
  v16 = *(v4 + 112);
  *(v4 + 112) = v12;
  swift_endAccess();
  sub_21D5E903C(v14, v15, v16);
  v37[0] = *(v4 + 120);
  v17 = *(v4 + 152);
  v37[1] = *(v4 + 136);
  v37[2] = v17;
  v37[3] = *(v4 + 168);
  v18 = *(v4 + 136);
  v30 = *(v4 + 120);
  v31 = v18;
  v19 = *(v4 + 168);
  v32 = *(v4 + 152);
  v33 = v19;
  v29 = 1;
  sub_21D5E8C84(v37, v38);
  sub_21D5E9814(&v29, a1, a2, &v34);
  v38[0] = v30;
  v38[1] = v31;
  v38[2] = v32;
  v38[3] = v33;
  result = sub_21D5E8CE0(v38);
  v21 = v35;
  if (v35)
  {
    v23 = *(&v34 + 1);
    v22 = v34;
    v24 = *(v4 + 32);
    if (v24)
    {
      v30 = v34;
      v31 = v35;
      *&v32 = v36;
      v25 = v34;
      v26 = v35;

      v24(a3, &v30);
      sub_21D0D0E88(v24);
      v22 = v25;
      v27 = v23;
      v21 = v26;
    }

    else
    {
      v27 = *(&v34 + 1);
    }

    return sub_21D5E9064(v22, v27, v21);
  }

  else
  {
    v28 = *(v4 + 48);
    if (v28)
    {

      v28(a3, a1, a2, 1);
      return sub_21D0D0E88(v28);
    }
  }

  return result;
}

uint64_t sub_21D5EA798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  LOBYTE(v4) = a3;
  if (qword_280D1BAA8 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v6 = sub_21DBF516C();
    v8 = v6;
    v9 = v7;
    v10 = *(a1 + 16);
    if (!v10)
    {

      v22 = MEMORY[0x277D84F90];
      v31 = MEMORY[0x277D84F90];
      v4 = MEMORY[0x277D84F90];
      goto LABEL_50;
    }

    v58 = v7;
    if (!a2)
    {
      break;
    }

    v55 = v4;
    v54 = v6;
    v11 = 0;
    v60 = MEMORY[0x277D84F90];
    do
    {
      v12 = (a1 + 64 + 40 * v11);
      v13 = v11;
      while (1)
      {
        if (v13 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_52;
        }

        v11 = v13 + 1;
        v14 = *(v12 - 4);
        if (v14)
        {
          break;
        }

        v12 += 5;
        ++v13;
        if (v10 == v11)
        {
          goto LABEL_15;
        }
      }

      v66 = *(v12 - 2);
      v4 = *v12;
      v63 = *(v12 - 1);
      sub_21DBF8E0C();
      v15 = v14;
      sub_21DBF8E0C();
      v16 = v60;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21D18EEA4(0, *(v60 + 16) + 1, 1);
        v16 = v60;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      v19 = v66;
      if (v18 >= v17 >> 1)
      {
        sub_21D18EEA4((v17 > 1), v18 + 1, 1);
        v19 = v66;
        v16 = v60;
      }

      *(v16 + 16) = v18 + 1;
      v60 = v16;
      v20 = v16 + 40 * v18;
      *(v20 + 32) = v19;
      *(v20 + 48) = v63;
      *(v20 + 64) = v4;
    }

    while (v10 - 1 != v13);
LABEL_15:

    v21 = *(v60 + 16);
    if (!v21)
    {

      v22 = MEMORY[0x277D84F90];
      if (v55)
      {
        goto LABEL_26;
      }

LABEL_45:

      result = sub_21DBF8E0C();
      v4 = MEMORY[0x277D84F90];
      v31 = v22;
LABEL_48:
      v8 = v54;
      goto LABEL_49;
    }

    v69 = MEMORY[0x277D84F90];
    sub_21D18EE84(0, v21, 0);
    v22 = v69;
    v23 = (v60 + 64);
    do
    {
      if (*(v23 - 2))
      {
        v67 = *(v23 - 3);
        v64 = *(v23 - 2);
      }

      else
      {
        v67 = 0;
        v64 = 0xE000000000000000;
      }

      v24 = *(v23 - 4);
      v25 = *(v23 - 1);
      a1 = *v23;
      v27 = *(v69 + 16);
      v26 = *(v69 + 24);
      v28 = v24;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v27 >= v26 >> 1)
      {
        sub_21D18EE84((v26 > 1), v27 + 1, 1);
      }

      v23 += 5;
      *(v69 + 16) = v27 + 1;
      v29 = (v69 + 40 * v27);
      v29[4] = v24;
      v29[5] = v67;
      v29[6] = v64;
      v29[7] = v25;
      v29[8] = a1;
      --v21;
    }

    while (v21);

    if ((v55 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_26:
    v32 = *(v22 + 16);
    if (!v32)
    {
      v4 = MEMORY[0x277D84F90];
      v31 = MEMORY[0x277D84F90];
LABEL_47:

      goto LABEL_48;
    }

    v33 = 0;
    v61 = *(v22 + 16);
    v53 = v32 - 1;
    v34 = v22 + 64;
    v31 = MEMORY[0x277D84F90];
    v4 = MEMORY[0x277D84F90];
    v65 = v22;
    v52 = v22 + 64;
LABEL_28:
    v56 = v4;
    v35 = (v34 + 40 * v33);
    v36 = v33;
    while (v36 < *(v22 + 16))
    {
      v37 = v31;
      v39 = *(v35 - 4);
      v38 = *(v35 - 3);
      a1 = *(v35 - 2);
      v68 = *(v35 - 1);
      v33 = v36 + 1;
      v40 = *v35;
      sub_21DBF8E0C();
      v41 = v39;
      sub_21DBF8E0C();
      v42 = sub_21D1E23FC(v39, a2);
      v4 = v41;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v42)
      {
        v48 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_21D212EF8(0, *(v56 + 2) + 1, 1, v56);
        }

        v50 = *(v48 + 2);
        v49 = *(v48 + 3);
        v57 = v48;
        if (v50 >= v49 >> 1)
        {
          v57 = sub_21D212EF8((v49 > 1), v50 + 1, 1, v48);
        }

        v4 = v57;
        *(v57 + 2) = v50 + 1;
        v51 = &v57[40 * v50];
        *(v51 + 4) = v39;
        *(v51 + 5) = v38;
        *(v51 + 6) = a1;
        *(v51 + 7) = v68;
        *(v51 + 8) = v40;
        v34 = v52;
        v22 = v65;
        v31 = v37;
        if (v53 != v36)
        {
          goto LABEL_28;
        }

        goto LABEL_47;
      }

      v43 = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_21D212EF8(0, *(v37 + 2) + 1, 1, v37);
      }

      v45 = *(v43 + 2);
      v44 = *(v43 + 3);
      v46 = v43;
      if (v45 >= v44 >> 1)
      {
        v46 = sub_21D212EF8((v44 > 1), v45 + 1, 1, v43);
      }

      *(v46 + 2) = v45 + 1;
      v31 = v46;
      v47 = &v46[40 * v45];
      *(v47 + 4) = v39;
      *(v47 + 5) = v38;
      *(v47 + 6) = a1;
      *(v47 + 7) = v68;
      *(v47 + 8) = v40;
      v35 += 5;
      v36 = v33;
      v22 = v65;
      if (v61 == v33)
      {
        v4 = v56;
        goto LABEL_47;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v22 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
LABEL_49:
  v9 = v58;
LABEL_50:
  *a4 = 0;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = 0;
  a4[5] = v22;
  a4[6] = v31;
  a4[7] = v4;
  return result;
}

uint64_t sub_21D5EAD78()
{
  sub_21D157444(v0 + 16);
  sub_21D0D0E88(*(v0 + 32));
  sub_21D0D0E88(*(v0 + 48));
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);
  sub_21D157878(*(v0 + 64));

  sub_21D5E903C(v1, v2, v3);
  v4 = *(v0 + 120);

  __swift_destroy_boxed_opaque_existential_0(v0 + 224);
  return v0;
}

uint64_t sub_21D5EAE4C()
{
  sub_21D5EAD78();

  return swift_deallocClassInstance();
}

id TTRIReminderSectionPickerViewModel.SectionState.id.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t TTRIReminderSectionPickerViewModel.SectionState.displayName.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIReminderSectionPickerViewModel.SectionState.canonicalName.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

void sub_21D5EAEF4()
{
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 32);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3._object = 0x800000021DC63430;
      v3._countAndFlagsBits = 0xD000000000000019;
      TTRMainActorDeferredAction.scheduleNextRunLoop(reason:)(v3);
    }
  }
}

BOOL _s15RemindersUICore34TTRIReminderSectionPickerViewModelV0D5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v7 = *a2;
  v6 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v16 = *(a1 + 24);
    sub_21D1B2ABC();
    v11 = v7;
    v12 = v2;
    v13 = sub_21DBFB63C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = *(a1 + 24);
    if (v7)
    {
      return 0;
    }
  }

  v14 = v3 == v6 && v4 == v9;
  if (!v14 && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    return v10 && (v16 == v8 && v5 == v10 || (sub_21DBFC64C() & 1) != 0);
  }

  return !v10;
}

unint64_t sub_21D5EB07C()
{
  result = qword_27CE5ED00;
  if (!qword_27CE5ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5ED00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRHashtagCollectionViewAllTagsButtonState(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRHashtagCollectionViewAllTagsButtonState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t destroy for TTRIReminderSectionPickerViewModel(id *a1)
{
}

void *initializeWithCopy for TTRIReminderSectionPickerViewModel(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  v6 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v6;
  v7 = *(a2 + 56);
  a1[6] = *(a2 + 48);
  a1[7] = v7;
  v8 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderSectionPickerViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIReminderSectionPickerViewModel(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderSectionPickerViewModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderSectionPickerViewModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRSectionLite(id *a1)
{
}

void *initializeWithCopy for TTRSectionLite(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;
  a1[4] = *(a2 + 32);
  v6 = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRSectionLite(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRSectionLite(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;

  v6 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderSectionPickerViewModel.SectionState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderSectionPickerViewModel.SectionState(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void destroy for SectionPickerCellSelectType(uint64_t a1)
{
  if (*a1 != 1)
  {
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);

  sub_21D5E903C(v2, v3, v4);
}

uint64_t initializeWithCopy for SectionPickerCellSelectType(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 != 1)
  {
    v5 = v4;
  }

  v7 = *(a2 + 8);
  v6 = *(a2 + 16);
  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  sub_21DBF8E0C();
  sub_21D5E9014(v8, v9, v10);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  return a1;
}

uint64_t assignWithCopy for SectionPickerCellSelectType(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != 1)
  {
    if (v5 != 1)
    {
      *a1 = v5;
      v7 = v5;

      goto LABEL_8;
    }

    sub_21D5EB848(a1);
    v5 = *a2;
    goto LABEL_6;
  }

  if (v5 == 1)
  {
LABEL_6:
    *a1 = v5;
    goto LABEL_8;
  }

  *a1 = v5;
  v6 = v5;
LABEL_8:
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  sub_21D5E9014(v8, v9, v10);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v13 = *(a1 + 48);
  *(a1 + 48) = v10;
  sub_21D5E903C(v11, v12, v13);
  return a1;
}

uint64_t assignWithTake for SectionPickerCellSelectType(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 != 1)
  {
    if (v5 != 1)
    {
      *a1 = v5;

      goto LABEL_6;
    }

    sub_21D5EB848(a1);
    v5 = 1;
  }

  *a1 = v5;
LABEL_6:
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;

  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v10 = *(a1 + 48);
  *(a1 + 48) = v7;
  sub_21D5E903C(v8, v9, v10);
  return a1;
}

uint64_t getEnumTagSinglePayload for SectionPickerCellSelectType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SectionPickerCellSelectType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21D5EBA04()
{
  sub_21D5EA030(v11);
  v1 = *(v0 + 136);
  v12[0] = *(v0 + 120);
  v12[1] = v1;
  v2 = *(v0 + 168);
  v12[2] = *(v0 + 152);
  v12[3] = v2;
  v3 = v11[1];
  *(v0 + 120) = v11[0];
  *(v0 + 136) = v3;
  v4 = v11[3];
  *(v0 + 152) = v11[2];
  *(v0 + 168) = v4;
  sub_21D5E8CE0(v12);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController;
    v8 = *(result + OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController);
    if (v8 || (sub_21D5E76D4(), (v8 = *(v6 + v7)) != 0))
    {
      v10 = 1;
      swift_unknownObjectRetain();
      v9 = v8;
      sub_21DBE0FF8(&v10, v9, v6, MEMORY[0x277D84F90]);

      return swift_unknownObjectRelease_n();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_21D5EBAE8()
{
  result = qword_27CE5ED10;
  if (!qword_27CE5ED10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5ED08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5ED10);
  }

  return result;
}

uint64_t sub_21D5EBB5C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D5E9014(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for SectionPickerCellSelectType.State(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_21D5E9014(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_21D5E903C(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for SectionPickerCellSelectType.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_21D5E903C(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for SectionPickerCellSelectType.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for SectionPickerCellSelectType.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_21D5EBCD4(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_21D5EBCEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_21D5EBD30()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v3 = [v0 traitCollection];
  [v2 scaledValueForValue:v3 compatibleWithTraitCollection:16.0];
  v5 = v4;

  v6 = [v0 traitCollection];
  [v6 displayScale];
  v8 = v7;

  v12 = v8 == 0.0 || v8 == 1.0;
  v13 = round(v5 * v8) / v8;
  v14 = round(v5);
  if (v12)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = &v0[OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize];
  if ((v0[OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentImageSize + 8] & 1) != 0 || (v10.n128_u64[0] = 0x3E50000000000000, *v9.i64 = v15, (sub_21D110D14(v9, v10, *v16, v11) & 1) == 0))
  {
    *v16 = v15;
    *(v16 + 8) = 0;
    sub_21D5EBE80(v15);
  }

  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_layoutSubviews);
}

void sub_21D5EBE80(double a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage;
  v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore30TTRIRemindersListAppLinkButton_currentOriginalImage);
  if (v11)
  {
    v12 = v11;
    v13 = [v12 CGImage];
    if (v13)
    {
      v14 = v13;
      [v12 size];
      v16 = v15 / a1;
      [v12 scale];
      v18 = v17 * v16;
      v19 = [v12 imageOrientation];
      v20 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v14 scale:v19 orientation:v18];

      goto LABEL_7;
    }

    v20 = *(v2 + v10);
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
LABEL_7:
  sub_21DBFB97C();
  v22 = sub_21DBFB95C();
  if ((*(*(v22 - 8) + 48))(v9, 1, v22))
  {
    sub_21D303258(v9, v6);
    sub_21DBFB98C();

    sub_21D3032C8(v9);
  }

  else
  {
    v23 = v20;
    sub_21DBFB8FC();
    sub_21DBFB98C();
  }
}

id TTRITimeZoneCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v4;
  v9 = *(a1 + 96);
  v5 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v5;
  v6 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v6;
  return sub_21DA87D30(0, 0x656E6F5A656D6954, 0xEC0000006C6C6543, 1, v8);
}

uint64_t TTRITimeZoneCellStateAdaptor.State.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRITimeZoneCellStateAdaptor.State.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TTRITimeZoneCellStateAdaptor.State.timeZone.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRITimeZoneCellStateAdaptor.State.timeZone.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t TTRITimeZoneCellStateAdaptor.State.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v9 = *(v1 + 64);
  v10 = v2;
  v11 = *(v1 + 96);
  v3 = v11;
  v4 = *(v1 + 48);
  v8[0] = *(v1 + 32);
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRITimeZoneCellStateAdaptor.State.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v7[2] = *(v1 + 64);
  v7[3] = v3;
  v8 = *(v1 + 96);
  v4 = *(v1 + 48);
  v7[0] = *(v1 + 32);
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00);
  v5 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v5;
  *(v1 + 96) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  return result;
}

id TTRITimeZoneCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRITimeZoneCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRITimeZoneCellStateAdaptor.setState(_:on:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v9[2] = a2;
  v9[3] = v11;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D5ED1D8;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_60;
  v7 = _Block_copy(aBlock);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_21D5EC648(char *a1, uint64_t a2)
{
  v4 = *&a1[qword_27CE65590];
  v5 = sub_21DBFA12C();
  [v4 setText_];

  v6 = *&a1[qword_27CE5ED40];
  v7 = sub_21DBFA12C();
  [v6 setText_];

  v8 = *(a2 + 80);
  v23 = *(a2 + 64);
  v24 = v8;
  v25 = *(a2 + 96);
  v9 = *(a2 + 48);
  v21 = *(a2 + 32);
  v22 = v9;
  v10 = &a1[qword_27CE655A0];
  swift_beginAccess();
  v11 = *(v10 + 3);
  v28 = *(v10 + 2);
  v29 = v11;
  v30 = v10[64];
  v12 = *(v10 + 1);
  v26 = *v10;
  v27 = v12;
  v31[2] = v28;
  v31[3] = v11;
  v32 = v30;
  v31[0] = v26;
  v31[1] = v12;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v10[64] = v25;
  *(v10 + 2) = v15;
  *(v10 + 3) = v16;
  *v10 = v13;
  *(v10 + 1) = v14;
  sub_21D1ADB0C(&v21, v19);
  sub_21D1ADB0C(&v26, v19);
  sub_21D0CF7E0(v31, &unk_27CE5EA00);
  v19[2] = v28;
  v19[3] = v29;
  v20 = v30;
  v19[0] = v26;
  v19[1] = v27;
  sub_21DA7EF48(v19);
  sub_21D0CF7E0(&v26, &unk_27CE5EA00);
  v17 = sub_21DBFA12C();
  [a1 setAccessibilityLabel_];

  v18 = sub_21DBFA12C();
  [a1 setAccessibilityValue_];
}

id TTRITimeZoneCellContent.init(state:)(uint64_t a1)
{
  v1 = *(a1 + 80);
  v5[4] = *(a1 + 64);
  v5[5] = v1;
  v6 = *(a1 + 96);
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v3 = *(a1 + 48);
  v5[2] = *(a1 + 32);
  v5[3] = v3;
  return sub_21DA87D30(0, 0x656E6F5A656D6954, 0xEC0000006C6C6543, 1, v5);
}

char *sub_21D5EC8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v9 = sub_21D900614(1);
  [v8 setFont_];

  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  v10 = [objc_opt_self() secondaryLabelColor];
  [v8 setTextColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC09CF0;
  *(v11 + 32) = v8;
  v12 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D114EC8();
  v13 = v8;
  v14 = sub_21DBFA5DC();

  v15 = [v12 initWithArrangedSubviews_];

  [v15 setAxis_];
  [v15 setDistribution_];
  [v15 setAlignment_];
  [v15 setSpacing_];
  *&v4[qword_27CE5ED40] = v13;
  v16 = v13;
  if (a3)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v33.receiver = v4;
  v33.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v33, sel_initWithStyle_reuseIdentifier_, a1, v17);

  type metadata accessor for TTRIDetailTimeZoneTableViewCell.ExtraAccessoryProvider();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v13;
  v20 = &v18[qword_27CE65610];
  swift_beginAccess();
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = *(v20 + 2);
  v24 = *(v20 + 3);
  v25 = *(v20 + 4);
  *v20 = v19;
  *(v20 + 1) = &off_282EC7960;
  *(v20 + 3) = 0;
  *(v20 + 4) = 0;
  *(v20 + 2) = 0;
  LOBYTE(v19) = v20[40];
  v20[40] = 2;
  v26 = v18;
  v27 = v13;
  v28 = v26;
  v29 = v15;
  sub_21D361B20(v21, v22, v23, v24, v25, v19);
  sub_21D361BB4(v21, v22, v23, v24, v25, v19);
  v31[0] = v21;
  v31[1] = v22;
  v31[2] = v23;
  v31[3] = v24;
  v31[4] = v25;
  v32 = v19;
  sub_21DA7F6B4(v31);

  sub_21D361BB4(v21, v22, v23, v24, v25, v19);
  return v28;
}

char *sub_21D5ECC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D5EC8F0(a3, a4, v6);
}

uint64_t sub_21D5ECD74()
{

  return swift_deallocClassInstance();
}

id (*sub_21D5ECE04(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 24);
  *a1 = v3;
  *(a1 + 8) = [v3 numberOfLines] == 0;
  return sub_21D5ECE60;
}

uint64_t _s15RemindersUICore28TTRITimeZoneCellStateAdaptorV0F0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 5);
  v57 = *(a1 + 4);
  v58 = v8;
  v59 = *(a1 + 96);
  v9 = *(a1 + 3);
  v55 = *(a1 + 2);
  v56 = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v64 = *(a2 + 96);
  v14 = *(a2 + 5);
  v62 = *(a2 + 4);
  v63 = v14;
  v15 = *(a2 + 3);
  v60 = *(a2 + 2);
  v61 = v15;
  if ((v4 != v10 || v5 != v11) && (sub_21DBFC64C() & 1) == 0 || (v6 != v12 || v7 != v13) && (sub_21DBFC64C() & 1) == 0)
  {
    goto LABEL_18;
  }

  v16 = *(&v56 + 1);
  v17 = v59;
  *&v54[7] = *(a2 + 2);
  *&v54[23] = a2[6];
  v18 = *(&v61 + 1);
  v19 = v64;
  if (*(&v56 + 1) >> 1 != 0xFFFFFFFFLL || v59 >= 2u)
  {
    v22 = a1[6];
    v44 = *(a1 + 2);
    *&v45 = v22;
    *(&v45 + 1) = *(&v56 + 1);
    v23 = *(a1 + 5);
    v46 = *(a1 + 4);
    v47 = v23;
    v48 = v59;
    v43 = v59;
    v41 = v46;
    v42 = v23;
    v39 = v44;
    v40 = v45;
    if (*(&v61 + 1) >> 1 != 0xFFFFFFFFLL || v64 >= 2u)
    {
      v34 = *(a2 + 2);
      v24 = a2[6];
      v25 = *(a2 + 5);
      v36 = *(a2 + 4);
      v37 = v25;
      *&v35 = v24;
      *(&v35 + 1) = *(&v61 + 1);
      v38 = v64;
      sub_21D1ADB0C(&v55, v32);
      sub_21D1ADB0C(&v60, v32);
      sub_21D1ADB0C(&v44, v32);
      v21 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v39, &v34);
      v30[2] = v36;
      v30[3] = v37;
      v31 = v38;
      v30[0] = v34;
      v30[1] = v35;
      sub_21D35D940(v30);
      v32[2] = v41;
      v32[3] = v42;
      v33 = v43;
      v32[0] = v39;
      v32[1] = v40;
      sub_21D35D940(v32);
      v34 = *(a1 + 2);
      *&v35 = a1[6];
      *(&v35 + 1) = v16;
      v26 = *(a1 + 5);
      v36 = *(a1 + 4);
      v37 = v26;
      v38 = v17;
      sub_21D0CF7E0(&v34, &unk_27CE5EA00);
      return v21 & 1;
    }

    v36 = v46;
    v37 = v47;
    v38 = v48;
    v34 = v44;
    v35 = v45;
    sub_21D1ADB0C(&v55, v32);
    sub_21D1ADB0C(&v60, v32);
    sub_21D1ADB0C(&v44, v32);
    sub_21D35D940(&v34);
    goto LABEL_17;
  }

  if (*(&v61 + 1) >> 1 != 0xFFFFFFFFLL || v64 >= 2u)
  {
    sub_21D1ADB0C(&v55, &v44);
    sub_21D1ADB0C(&v60, &v44);
LABEL_17:
    v44 = *(a1 + 2);
    *&v45 = a1[6];
    *(&v45 + 1) = v16;
    v27 = *(a1 + 5);
    v46 = *(a1 + 4);
    v47 = v27;
    v48 = v17;
    *v49 = *v54;
    *&v49[15] = *&v54[15];
    v50 = v18;
    v28 = *(a2 + 4);
    v52 = *(a2 + 5);
    v51 = v28;
    v53 = v19;
    sub_21D0CF7E0(&v44, qword_27CE5ABE0);
LABEL_18:
    v21 = 0;
    return v21 & 1;
  }

  v44 = *(a1 + 2);
  *&v45 = a1[6];
  *(&v45 + 1) = *(&v56 + 1);
  v20 = *(a1 + 5);
  v46 = *(a1 + 4);
  v47 = v20;
  v48 = v59;
  sub_21D1ADB0C(&v55, &v39);
  sub_21D1ADB0C(&v60, &v39);
  sub_21D0CF7E0(&v44, &unk_27CE5EA00);
  v21 = 1;
  return v21 & 1;
}

unint64_t sub_21D5ED1E4()
{
  result = qword_27CE5ED28;
  if (!qword_27CE5ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5ED28);
  }

  return result;
}

void destroy for TTRITimeZoneCellStateAdaptor.State(uint64_t a1)
{

  v2 = *(a1 + 56);
  if (v2 >> 1 != 0xFFFFFFFF || *(a1 + 96) >= 2u)
  {
    sub_21D362050(*(a1 + 32), *(a1 + 40), *(a1 + 48), v2, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));
  }
}

uint64_t initializeWithCopy for TTRITimeZoneCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 56);
  v7 = *(a2 + 96);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v6 >> 1 != 0xFFFFFFFF || v7 >= 2)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v12 = *(a2 + 64);
    v13 = *(a2 + 72);
    v15 = *(a2 + 80);
    v14 = *(a2 + 88);
    sub_21D361F04(v9, v10, v11, v6, v12, v13, v15, v14, v7);
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v6;
    *(a1 + 64) = v12;
    *(a1 + 72) = v13;
    *(a1 + 80) = v15;
    *(a1 + 88) = v14;
    *(a1 + 96) = v7;
  }

  else
  {
    v16 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v16;
    *(a1 + 96) = *(a2 + 96);
    v17 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v17;
  }

  return a1;
}

uint64_t assignWithCopy for TTRITimeZoneCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  sub_21DBF8E0C();

  v4 = *(a2 + 56);
  v5 = *(a2 + 96);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 56) >> 1 == 0xFFFFFFFFLL && *(a1 + 96) < 2u)
  {
    if (v7)
    {
      *(a1 + 32) = *(a2 + 32);
      v8 = *(a2 + 48);
      v9 = *(a2 + 64);
      v10 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v9;
      *(a1 + 80) = v10;
      *(a1 + 48) = v8;
    }

    else
    {
      v30 = *(a2 + 32);
      v31 = *(a2 + 40);
      v32 = *(a2 + 48);
      v33 = *(a2 + 64);
      v34 = *(a2 + 72);
      v36 = *(a2 + 80);
      v35 = *(a2 + 88);
      sub_21D361F04(v30, v31, v32, v4, v33, v34, v36, v35, v5);
      *(a1 + 32) = v30;
      *(a1 + 40) = v31;
      *(a1 + 48) = v32;
      *(a1 + 56) = v4;
      *(a1 + 64) = v33;
      *(a1 + 72) = v34;
      *(a1 + 80) = v36;
      *(a1 + 88) = v35;
      *(a1 + 96) = v5;
    }
  }

  else if (v7)
  {
    sub_21D35D940(a1 + 32);
    *(a1 + 32) = *(a2 + 32);
    v12 = *(a2 + 64);
    v11 = *(a2 + 80);
    v13 = *(a2 + 48);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 64) = v12;
    *(a1 + 80) = v11;
    *(a1 + 48) = v13;
  }

  else
  {
    v14 = *(a2 + 32);
    v15 = *(a2 + 40);
    v16 = *(a2 + 48);
    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
    v20 = *(a2 + 80);
    v19 = *(a2 + 88);
    sub_21D361F04(v14, v15, v16, v4, v17, v18, v20, v19, v5);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    v26 = *(a1 + 72);
    v27 = *(a1 + 80);
    v28 = *(a1 + 88);
    v29 = *(a1 + 96);
    *(a1 + 32) = v14;
    *(a1 + 40) = v15;
    *(a1 + 48) = v16;
    *(a1 + 56) = v4;
    *(a1 + 64) = v17;
    *(a1 + 72) = v18;
    *(a1 + 80) = v20;
    *(a1 + 88) = v19;
    *(a1 + 96) = v5;
    sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return a1;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t assignWithTake for TTRITimeZoneCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a1 + 56);
  v7 = *(a1 + 96);
  v8 = *(a2 + 56);
  v9 = *(a2 + 96);
  if (v6 >> 1 != 0xFFFFFFFF || v7 >= 2)
  {
    if (v8 >> 1 != 0xFFFFFFFF || v9 >= 2)
    {
      v12 = *(a2 + 48);
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      v16 = *(a1 + 64);
      v17 = *(a1 + 72);
      v18 = *(a1 + 80);
      v19 = *(a1 + 88);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v12;
      *(a1 + 56) = v8;
      v20 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v20;
      *(a1 + 96) = v9;
      sub_21D362050(v13, v14, v15, v6, v16, v17, v18, v19, v7);
      return a1;
    }

    sub_21D35D940(a1 + 32);
  }

  v10 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v10;
  *(a1 + 96) = *(a2 + 96);
  v11 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v11;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITimeZoneCellStateAdaptor.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t storeEnumTagSinglePayload for TTRITimeZoneCellStateAdaptor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static TimeZone.ttr_default.getter()
{
  v0 = [objc_opt_self() defaultTimeZone];
  sub_21DBF5C2C();
}

uint64_t TimeZone.defaultCityName()()
{
  v1[27] = v0;
  v2 = sub_21DBF582C();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D5ED908, 0, 0);
}

uint64_t sub_21D5ED908()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  sub_21DBF57AC();
  v4 = objc_allocWithZone(MEMORY[0x277D0ECC0]);
  v5 = sub_21DBF574C();
  v6 = [v4 initWithLocale_];
  v0[31] = v6;

  (*(v2 + 8))(v1, v3);
  v7 = swift_allocObject();
  v0[32] = v7;
  *(v7 + 16) = MEMORY[0x277D84F90];
  sub_21DBF5BCC();
  v8 = sub_21DBFA12C();
  v0[33] = v8;

  v0[22] = sub_21D5EDE7C;
  v0[23] = v7;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21D5EDE98;
  v0[21] = &block_descriptor_61;
  v9 = _Block_copy(v0 + 18);
  v0[34] = v9;

  v0[2] = v0;
  v0[3] = sub_21D5EDB5C;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED58);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_21D5EDF0C;
  v0[13] = &block_descriptor_3_0;
  v0[14] = v10;
  [v6 regionsWithTimeZoneName:v8 types:8 sort:2 cursor:v9 finished:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21D5EDB5C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_21D5EDDD8;
  }

  else
  {
    v2 = sub_21D5EDC6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D5EDC6C()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);
  _Block_release(*(v0 + 272));

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    result = sub_21DBFBD7C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = *(v0 + 248);
    v8 = sub_21DBF5BCC();
    v10 = v11;
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_21DBF8E0C();
    v5 = MEMORY[0x223D44740](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(v3 + 32);
  }

  v6 = *(v0 + 248);
  v7 = [v5 name];
  v8 = sub_21DBFA16C();
  v10 = v9;

LABEL_9:

  v12 = *(v0 + 8);

  return v12(v8, v10);
}

uint64_t sub_21D5EDDD8()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[31];
  swift_willThrow();

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

void sub_21D5EDE98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_21D5EDF0C(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t TimeZone.defaultFormattedRegionName()()
{
  v1[45] = v0;
  v2 = sub_21DBF582C();
  v1[46] = v2;
  v1[47] = *(v2 - 8);
  v1[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D5EE078, 0, 0);
}

uint64_t sub_21D5EE078()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  sub_21DBF57AC();
  v4 = objc_allocWithZone(MEMORY[0x277D0ECC0]);
  v5 = sub_21DBF574C();
  v6 = [v4 initWithLocale_];
  v0[49] = v6;

  (*(v2 + 8))(v1, v3);
  v7 = swift_allocObject();
  v0[50] = v7;
  *(v7 + 16) = MEMORY[0x277D84F90];
  sub_21DBF5BCC();
  v8 = sub_21DBFA12C();
  v0[51] = v8;

  v0[38] = sub_21D5EED60;
  v0[39] = v7;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_21D5EDE98;
  v0[37] = &block_descriptor_8_0;
  v9 = _Block_copy(v0 + 34);
  v0[52] = v9;

  v0[2] = v0;
  v0[3] = sub_21D5EE2CC;
  v10 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED58);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_21D5EDF0C;
  v0[21] = &block_descriptor_11;
  v0[22] = v10;
  [v6 regionsWithTimeZoneName:v8 types:8 sort:2 cursor:v9 finished:v0 + 18];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21D5EE2CC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {
    v2 = sub_21D5EE7A8;
  }

  else
  {
    v2 = sub_21D5EE3DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D5EE3DC()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 400);
  _Block_release(*(v0 + 416));

  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3 >> 62)
  {
    v4 = sub_21DBFBD7C();
    if (v4)
    {
LABEL_3:
      if ((v3 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v5 = MEMORY[0x223D44740](0, v3);
      }

      else
      {
        if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x282200938](v4);
        }

        v5 = *(v3 + 32);
      }

      *(v0 + 432) = v5;
      v6 = *(v0 + 392);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 344;
      *(v0 + 88) = sub_21D5EE608;
      v7 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_21D5EE998;
      *(v0 + 232) = &block_descriptor_14_1;
      *(v0 + 240) = v7;
      [v6 formattedNameForRegion:v5 result:v0 + 208];
      v4 = v0 + 80;

      return MEMORY[0x282200938](v4);
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v8 = *(v0 + 392);
  v9 = sub_21DBF5BCC();
  v11 = v10;

  v12 = *(v0 + 8);

  return v12(v9, v11);
}

uint64_t sub_21D5EE608()
{
  v1 = *(*v0 + 112);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_21D5EE844;
  }

  else
  {
    v2 = sub_21D5EE718;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D5EE718()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 344);
  v3 = *(v0 + 352);

  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_21D5EE7A8()
{
  v1 = v0[52];
  v2 = v0[51];
  v3 = v0[49];
  swift_willThrow();

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21D5EE844()
{
  v1 = v0[54];
  v2 = v0[49];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_21D5EE8D4(void *a1, _BYTE *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = a1;
  MEMORY[0x223D42D80]();
  if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  result = swift_endAccess();
  *a2 = 1;
  return result;
}

uint64_t sub_21D5EE998(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_21DBFA16C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

uint64_t TimeZone.localizedFullName.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v8 - v1;
  sub_21DBF57AC();
  v3 = sub_21DBF582C();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = sub_21DBF5BEC();
  v6 = v5;
  sub_21D5EEB58(v2);
  if (v6)
  {
    return v4;
  }

  else
  {
    return sub_21DBF5BCC();
  }
}

uint64_t sub_21D5EEB58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL TimeZone.effectivelyEquals(_:)()
{
  v0 = sub_21DBF563C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v4 = sub_21DBF5BFC();
  v5 = *(v1 + 8);
  v5(v3, v0);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v6 = sub_21DBF5BFC();
  v5(v3, v0);
  return v4 == v6;
}

uint64_t sub_21D5EED6C(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = *(a2 + 24);
  v11 = *a1;
  v12 = v2;
  v13 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  return sub_21D5EF0D4(&v11, &v8) & 1;
}

uint64_t sub_21D5EEDC8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v9[2] = a2;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D5EF35C;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_62;
  v7 = _Block_copy(aBlock);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

id sub_21D5EEF18(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = *&a1[qword_27CE65590];
  v8 = sub_21DBFA12C();
  [v7 setText_];

  if (a5)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  [a1 setAccessoryType_];

  return [a1 setSelectionStyle_];
}

uint64_t type metadata accessor for TTRISectionPickerCellContent()
{
  result = qword_27CE5ED68;
  if (!qword_27CE5ED68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D5EF080()
{
  result = qword_27CE5ED78;
  if (!qword_27CE5ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5ED78);
  }

  return result;
}

uint64_t sub_21D5EF0D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_21DBFC64C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == 1)
    {
      if (v4 == 1)
      {
        v2 = 1;
LABEL_9:
        sub_21D15751C(v2);
        sub_21D15751C(v2);
LABEL_10:
        sub_21D157878(v2);
        return v3 ^ v5 ^ 1u;
      }

      goto LABEL_12;
    }

    if (v4 == 1)
    {
LABEL_12:
      sub_21D15751C(v2);
      sub_21D15751C(v4);
      sub_21D157878(v2);
      v9 = v4;
LABEL_22:
      sub_21D157878(v9);
      return 0;
    }

    if (v2)
    {
      if (v4)
      {
        sub_21D1B2ABC();
        sub_21D15751C(v2);
        sub_21D15751C(v4);
        sub_21D15751C(v4);
        sub_21D15751C(v2);
        v10 = sub_21DBFB63C();
        sub_21D157878(v4);

        if (v10)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }

      sub_21D15751C(0);
    }

    else if (!v4)
    {
      v2 = 0;
      goto LABEL_9;
    }

    sub_21D15751C(v2);
    sub_21D15751C(v4);
    sub_21D15751C(v2);

LABEL_21:
    v9 = v2;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_21D5EF238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != 1)
  {
    if (v3 != 1)
    {
      if (v2)
      {
        if (v3)
        {
          sub_21D1B2ABC();
          sub_21D15751C(v2);
          sub_21D15751C(v3);
          sub_21D15751C(v3);
          sub_21D15751C(v2);
          v5 = sub_21DBFB63C();
          sub_21D157878(v3);

          goto LABEL_7;
        }

        sub_21D15751C(0);
      }

      else if (!v3)
      {
        sub_21D15751C(0);
        v4 = 0;
        goto LABEL_4;
      }

      sub_21D15751C(v2);
      sub_21D15751C(v3);
      sub_21D15751C(v2);

      v5 = 0;
      goto LABEL_7;
    }

LABEL_6:
    sub_21D15751C(*(a1 + 16));
    sub_21D15751C(v3);
    sub_21D157878(v2);
    v5 = 0;
    v2 = v3;
    goto LABEL_7;
  }

  if (v3 != 1)
  {
    goto LABEL_6;
  }

  v2 = 1;
  sub_21D15751C(1);
  v4 = 1;
LABEL_4:
  sub_21D15751C(v4);
  v5 = 1;
LABEL_7:
  sub_21D157878(v2);
  return v5 & 1;
}

void destroy for TTRISectionPickerCellStateAdaptor.State(uint64_t a1)
{

  v2 = *(a1 + 16);
  if (v2 != 1)
  {
  }
}

uint64_t initializeWithCopy for TTRISectionPickerCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  sub_21DBF8E0C();
  if (v5 != 1)
  {
    v6 = v5;
  }

  *(a1 + 16) = v5;
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TTRISectionPickerCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  v4 = (a1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 != 1)
  {
    if (v6 != 1)
    {
      *v4 = v6;
      v8 = v6;

      goto LABEL_8;
    }

    sub_21D5EB848(a1 + 16);
    v6 = *(a2 + 16);
    goto LABEL_6;
  }

  if (v6 == 1)
  {
LABEL_6:
    *v4 = v6;
    goto LABEL_8;
  }

  *v4 = v6;
  v7 = v6;
LABEL_8:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for TTRISectionPickerCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v5 != 1)
  {
    if (v7 != 1)
    {
      *v6 = v7;

      goto LABEL_6;
    }

    sub_21D5EB848(a1 + 16);
    v7 = 1;
  }

  *v6 = v7;
LABEL_6:
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISectionPickerCellStateAdaptor.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for TTRISectionPickerCellStateAdaptor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21D5EF5F4()
{
  result = qword_27CE5ED80;
  if (!qword_27CE5ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5ED80);
  }

  return result;
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.upstreamTree.getter()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(*(v3 + 8) + 8) + 24))(a1, ObjectType);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(*(v5 + 8) + 8) + 32))(a1, a2, ObjectType);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.item(withID:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(*(v3 + 8) + 8) + 40))(a1, ObjectType);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.parent(of:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(*(v3 + 8) + 8) + 48))(a1, ObjectType);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.isExpandSuppressed(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(*(v3 + 8) + 16))(a1, ObjectType) & 1;
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.convertFromImmediateUpstream(_:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(a1, ObjectType, v3);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.convertToImmediateUpstream(_:for:)(uint64_t a1, char *a2)
{
  v4 = *a2;
  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v8 = v4;
  return (*(v5 + 32))(a1, &v8, ObjectType, v5);
}

uint64_t TTRAnyTreeStorageChainedTreeDeriving.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D5EFABC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D5EFAFC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D5EFC50()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F448);
  v1 = __swift_project_value_buffer(v0, qword_280D0F448);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRThumbnailGenerator.__allocating_init(queue:backgroundQueue:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v6 = a1;
  v7 = [v5 init];
  *(v4 + 24) = v7;
  [v7 setUnderlyingQueue_];

  return v4;
}

uint64_t TTRThumbnailGenerator.thumbnail(for:scale:size:)(void *a1, double a2, double a3, double a4)
{
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v66[-v14];
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v66[-v18];
  v20 = [a1 width];
  v21 = [a1 height];
  if (v20)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    v23 = objc_opt_self();
    v24 = sub_21DBFA12C();
    v25 = [v23 invalidParameterErrorWithDescription_];
LABEL_17:
    v60 = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED88);
    swift_allocObject();
    return sub_21DBF823C();
  }

  v26 = [a1 fileURL];
  if (!v26)
  {
    if (qword_280D0F440 != -1)
    {
      swift_once();
    }

    v52 = sub_21DBF84BC();
    __swift_project_value_buffer(v52, qword_280D0F448);
    v53 = a1;
    v54 = sub_21DBF84AC();
    v55 = sub_21DBFAEBC();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138543362;
      v58 = [v53 objectID];
      *(v56 + 4) = v58;
      *v57 = v58;
      _os_log_impl(&dword_21D0C9000, v54, v55, "TTRThumbnailGenerator: image attachment missing fileURL {objectID: %{public}@}", v56, 0xCu);
      sub_21D560EB8(v57);
      MEMORY[0x223D46520](v57, -1, -1);
      MEMORY[0x223D46520](v56, -1, -1);
    }

    v59 = objc_opt_self();
    v24 = sub_21DBFA12C();
    v25 = [v59 invalidParameterErrorWithDescription_];
    goto LABEL_17;
  }

  v71 = v4;
  v27 = v26;
  sub_21DBF546C();

  (*(v10 + 32))(v19, v15, v9);
  if (qword_280D0F440 != -1)
  {
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_280D0F448);
  (*(v10 + 16))(v12, v19, v9);
  v29 = a1;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAEDC();

  v32 = &off_278331000;
  if (os_log_type_enabled(v30, v31))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v69 = v34;
    v70 = swift_slowAlloc();
    v72 = v70;
    *v33 = 138544130;
    v35 = [v29 objectID];
    *(v33 + 4) = v35;
    *v34 = v35;
    v68 = v30;
    *(v33 + 12) = 2082;
    v36 = [v29 uti];
    v37 = sub_21DBFA16C();
    v67 = v31;
    v39 = v38;

    v40 = sub_21D0CDFB4(v37, v39, &v72);

    *(v33 + 14) = v40;
    *(v33 + 22) = 2082;
    v41 = sub_21DBFB57C();
    v43 = sub_21D0CDFB4(v41, v42, &v72);

    *(v33 + 24) = v43;
    *(v33 + 32) = 2082;
    v44 = sub_21DBF53BC();
    v46 = v45;
    v47 = *(v10 + 8);
    v47(v12, v9);
    v48 = sub_21D0CDFB4(v44, v46, &v72);

    *(v33 + 34) = v48;
    v32 = &off_278331000;
    v49 = v68;
    _os_log_impl(&dword_21D0C9000, v68, v67, "TTRThumbnailGenerator: generating thumbnail for image attachment {objectID: %{public}@, UTI: %{public}s, originalSize: %{public}s, file: %{public}s}", v33, 0x2Au);
    v50 = v69;
    sub_21D560EB8(v69);
    MEMORY[0x223D46520](v50, -1, -1);
    v51 = v70;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v51, -1, -1);
    MEMORY[0x223D46520](v33, -1, -1);
  }

  else
  {

    v47 = *(v10 + 8);
    v47(v12, v9);
  }

  v62 = v71;
  v63 = [v29 v32[425]];
  MEMORY[0x28223BE20](v63);
  *&v66[-48] = v19;
  *&v66[-40] = v64;
  *&v66[-32] = a3;
  *&v66[-24] = a4;
  *&v66[-16] = a2;
  *&v66[-8] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED88);
  swift_allocObject();
  v65 = sub_21DBF829C();

  v47(v19, v9);
  return v65;
}

uint64_t TTRThumbnailGenerator.thumbnail(for:scale:size:attachmentID:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED88);
  swift_allocObject();
  return sub_21DBF829C();
}

void sub_21D5F04E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, void *a12)
{
  v62 = a3;
  v63 = a6;
  v60 = a5;
  v61 = a1;
  v64 = a2;
  v65 = a4;
  v17 = sub_21DBF54CC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_21DBF547C();
  if ((v59 & 1) == 0)
  {
    if (qword_280D0F440 != -1)
    {
      swift_once();
    }

    v21 = sub_21DBF84BC();
    __swift_project_value_buffer(v21, qword_280D0F448);
    v22 = a8;
    v23 = sub_21DBF84AC();
    v24 = sub_21DBFAEBC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = v25;
      v27 = swift_slowAlloc();
      v57 = a12;
      v28 = v27;
      *v26 = 138543362;
      *(v26 + 4) = v22;
      *v27 = v22;
      v29 = v22;
      _os_log_impl(&dword_21D0C9000, v23, v24, "TTRThumbnailGenerator: startAccessingSecurityScopedResource failed {objectID: %{public}@}", v26, 0xCu);
      sub_21D560EB8(v28);
      MEMORY[0x223D46520](v28, -1, -1);
      v30 = v26;
      v20 = v58;
      MEMORY[0x223D46520](v30, -1, -1);
    }
  }

  v31 = objc_allocWithZone(MEMORY[0x277CDAAD8]);
  v32 = sub_21DBF53FC();
  v58 = [v31 initWithFileAtURL:v32 size:4 scale:a9 representationTypes:{a10, a11}];

  v57 = [objc_opt_self() sharedGenerator];
  v33 = swift_allocObject();
  swift_weakInit();
  (*(v18 + 16))(v20, a7, v17);
  v34 = (*(v18 + 80) + 17) & ~*(v18 + 80);
  v35 = (v19 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v56 = a8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = v17;
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v20;
  v42 = v40;
  *(v40 + 16) = v59 & 1;
  (*(v18 + 32))(v40 + v34, v41, v38);
  *(v42 + v35) = v33;
  v43 = (v42 + v36);
  v44 = v61;
  v46 = v63;
  v45 = v64;
  *v43 = v60;
  v43[1] = v46;
  v47 = v56;
  *(v42 + v37) = v56;
  v48 = (v42 + v39);
  *v48 = v44;
  v48[1] = v45;
  v49 = (v42 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8));
  v50 = v65;
  *v49 = v62;
  v49[1] = v50;
  aBlock[4] = sub_21D5F1984;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D55C8BC;
  aBlock[3] = &block_descriptor_25_0;
  v51 = _Block_copy(aBlock);
  v52 = v47;

  v54 = v57;
  v53 = v58;
  [v57 generateBestRepresentationForRequest:v58 completionHandler:v51];
  _Block_release(v51);
}

uint64_t sub_21D5F090C(void *a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = sub_21DBF9D2C();
  v65 = *(v17 - 8);
  v66 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_21DBF9D5C();
  v63 = *(v20 - 8);
  v64 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    sub_21DBF545C();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return a6();
  }

  v62 = Strong;
  if (a1)
  {
    v24 = [a1 UIImage];
    if (qword_280D0F440 != -1)
    {
      swift_once();
    }

    v25 = sub_21DBF84BC();
    __swift_project_value_buffer(v25, qword_280D0F448);
    v26 = a8;
    v27 = sub_21DBF84AC();
    v28 = sub_21DBFAE9C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138543362;
      *(v29 + 4) = v26;
      *v30 = v26;
      v31 = v26;
      _os_log_impl(&dword_21D0C9000, v27, v28, "TTRThumbnailGenerator: QL thumbnail generation finished {objectID: %{public}@}", v29, 0xCu);
      sub_21D560EB8(v30);
      MEMORY[0x223D46520](v30, -1, -1);
      MEMORY[0x223D46520](v29, -1, -1);
    }

    v32 = swift_allocObject();
    v32[2] = a9;
    v32[3] = a10;
    v32[4] = v24;
    v72 = sub_21D5F1AE4;
    v73 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_21D0D74FC;
    v71 = &block_descriptor_37_1;
    v33 = _Block_copy(&aBlock);

    v34 = v24;
    sub_21DBF9D4C();
    v67 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0CD8F0();
    v35 = v66;
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v22, v19, v33);
    _Block_release(v33);

    (*(v65 + 8))(v19, v35);
    (*(v63 + 8))(v22, v64);
  }

  else
  {
    if (a2)
    {
      v37 = a2;
    }

    else
    {
      v38 = objc_opt_self();
      v39 = sub_21DBFA12C();
      v37 = [v38 internalErrorWithDebugDescription_];
    }

    v40 = a2;
    if (qword_280D0F440 != -1)
    {
      swift_once();
    }

    v41 = sub_21DBF84BC();
    __swift_project_value_buffer(v41, qword_280D0F448);
    v42 = a8;
    v43 = v37;
    v44 = sub_21DBF84AC();
    v45 = sub_21DBFAEBC();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      aBlock = v61;
      *v46 = 136446466;
      swift_getErrorValue();
      v59 = v45;
      v47 = sub_21DBFC75C();
      v49 = sub_21D0CDFB4(v47, v48, &aBlock);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2114;
      *(v46 + 14) = v42;
      v50 = v60;
      *v60 = v42;
      v51 = v42;
      _os_log_impl(&dword_21D0C9000, v44, v59, "TTRThumbnailGenerator: QL thumbnail generation failed {error: %{public}s, objectID: %{public}@}", v46, 0x16u);
      sub_21D560EB8(v50);
      MEMORY[0x223D46520](v50, -1, -1);
      v52 = v61;
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x223D46520](v52, -1, -1);
      MEMORY[0x223D46520](v46, -1, -1);
    }

    v53 = swift_allocObject();
    v53[2] = a11;
    v53[3] = a12;
    v53[4] = v37;
    v72 = sub_21D5F1A74;
    v73 = v53;
    aBlock = MEMORY[0x277D85DD0];
    v69 = 1107296256;
    v70 = sub_21D0D74FC;
    v71 = &block_descriptor_31_0;
    v54 = v37;
    v55 = _Block_copy(&aBlock);
    v56 = v54;

    sub_21DBF9D4C();
    v67 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0CD8F0();
    v57 = v66;
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v22, v19, v55);
    _Block_release(v55);

    (*(v65 + 8))(v19, v57);
    (*(v63 + 8))(v22, v64);
  }
}

id QLThumbnailRepresentation.nativeImage.getter()
{
  v1 = [v0 UIImage];

  return v1;
}

uint64_t TTRThumbnailGenerator.thumbnail(for:scale:size:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED88);
  swift_allocObject();
  return sub_21DBF829C();
}

void sub_21D5F1128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11)
{
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a8;
  *(v23 + 48) = a9;
  *(v23 + 56) = a10;
  *(v23 + 64) = a11;
  *(v23 + 72) = a1;
  *(v23 + 80) = a2;
  *(v23 + 88) = a3;
  *(v23 + 96) = a4;
  v28[4] = sub_21D5F1960;
  v28[5] = v23;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 1107296256;
  v28[2] = sub_21D0D74FC;
  v28[3] = &block_descriptor_63;
  v24 = _Block_copy(v28);
  v25 = objc_opt_self();

  v26 = a8;

  v27 = [v25 blockOperationWithBlock_];
  _Block_release(v24);

  [*(a7 + 24) addOperation_];
}

uint64_t sub_21D5F12E4(double a1, double a2, double a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a11;
  v18 = sub_21DBF9D2C();
  v36 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF9D5C();
  v34 = *(v21 - 8);
  v35 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return a5();
  }

  v24 = UIImage.resized(to:scale:)(a1, a2, a3);
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    v26[2] = a8;
    v26[3] = a9;
    v26[4] = v25;
    v42 = sub_21D5F1B5C;
    v43 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_21D0D74FC;
    v41 = &block_descriptor_18_1;
    v27 = _Block_copy(&aBlock);

    v28 = v25;
    sub_21DBF9D4C();
    v37 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v23, v20, v27);
    _Block_release(v27);
  }

  else
  {
    v30 = swift_allocObject();
    v31 = v33;
    *(v30 + 16) = a10;
    *(v30 + 24) = v31;
    v42 = sub_21D5F197C;
    v43 = v30;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_21D0D74FC;
    v41 = &block_descriptor_12_2;
    v32 = _Block_copy(&aBlock);

    sub_21DBF9D4C();
    v37 = MEMORY[0x277D84F90];
    sub_21D0CD898();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0CD8F0();
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v23, v20, v32);
    _Block_release(v32);
  }

  (*(v36 + 8))(v20, v18);
  (*(v34 + 8))(v23, v35);
}

void sub_21D5F16F8(void (*a1)(id))
{
  if (qword_280D0F440 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_280D0F448);
  v3 = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21D0C9000, v3, v4, "TTRThumbnailGenerator: failed to resize image", v5, 2u);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  v6 = objc_opt_self();
  v7 = sub_21DBFA12C();
  v8 = [v6 internalErrorWithDebugDescription_];

  a1(v8);
}

uint64_t TTRThumbnailGenerator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D5F1984(void *a1, void *a2)
{
  v5 = *(sub_21DBF54CC() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_21D5F090C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v10), *(v2 + v10 + 8), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_14Tm()
{

  return swift_deallocObject();
}

void sub_21D5F1AE8()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 32);
  v2 = v4;
  v1(&v4);
  v3 = v4;
}

uint64_t sub_21D5F1BA0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5ED90);
  v1 = __swift_project_value_buffer(v0, qword_27CE5ED90);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D5F1C68(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D6498E4(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D5F1CC8(unint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v6 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v27 = result;
  if (!result)
  {
    return result;
  }

  v8 = v6;
  v24 = v5;
  if (v6 >> 62)
  {
    result = sub_21DBFBD7C();
    v8 = v6;
    v9 = result;
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:
    sub_21D5F3664(v24);
  }

  v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_4:
  if (v9 >= 1)
  {
    v10 = 0;
    v26 = v8 & 0xC000000000000001;
    v25 = xmmword_21DC08D00;
    v11 = v8;
    while (1)
    {
      if (v26)
      {
        v13 = MEMORY[0x223D44740](v10);
      }

      else
      {
        v13 = *(v8 + 8 * v10 + 32);
      }

      _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC15prepareToDeleteyyAA0cdeF5StateCF_0(v13);
      v14 = *(v27 + 32);
      v15 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item;
      v16 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_registeredUndoForAddingReminder;
      swift_beginAccess();
      v17 = *(v13 + v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
      v18 = *(type metadata accessor for TTRRemindersListViewModel.Item(0) - 8);
      v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v25;
      sub_21D1D338C(v13 + v15, v20 + v19);
      if (v17 != 1)
      {
        break;
      }

      sub_21D1D3F20(*(v14 + 80) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, v4);
      v21 = type metadata accessor for TTRRemindersListUndoContext();
      if ((*(*(v21 - 8) + 48))(v4, 1, v21) == 1)
      {
        goto LABEL_15;
      }

      *(&v29 + 1) = v21;
      v30 = &protocol witness table for TTRRemindersListUndoContext;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
      sub_21D5F3AE0(v4, boxed_opaque_existential_0, type metadata accessor for TTRRemindersListUndoContext);
LABEL_7:
      ++v10;
      sub_21D6454A0(v20, 0, 1, 0, 0, &v28);
      swift_setDeallocating();
      sub_21D106C78(v20 + v19, type metadata accessor for TTRRemindersListViewModel.Item);
      swift_deallocClassInstance();

      sub_21D0CF7E0(&v28, &unk_27CE60D80);
      v8 = v11;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    v22 = type metadata accessor for TTRRemindersListUndoContext();
    (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
LABEL_15:
    sub_21D0CF7E0(v4, &qword_27CE59370);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D5F208C()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_21D5F2108(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v28[-v12];
  sub_21D1D3F20(*(v4 + 48) + OBJC_IVAR____TtC15RemindersUICore19UndoContextProvider_undoContext, &v28[-v12]);
  sub_21D5F2468(a1, a2, a3, &v29);
  v14 = v29;
  if (v29)
  {
    v15 = v30;

    if (v15)
    {
      sub_21D9A1B40(0, v14);
    }

    v16 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_undoContext;
    swift_beginAccess();
    sub_21D1D3F20(v14 + v16, v10);
    v17 = type metadata accessor for TTRRemindersListUndoContext();
    v18 = (*(*(v17 - 8) + 48))(v10, 1, v17);
    sub_21D0CF7E0(v10, &qword_27CE59370);
    if (v18 == 1)
    {
      swift_beginAccess();
      sub_21D5F3A70(v13, v14 + v16);
      swift_endAccess();
    }

    if (TTRRemindersListEditingSessionState.isForNewReminder.getter())
    {
      sub_21D9A1DD0(v14, v13);
    }

    v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
    swift_beginAccess();
    v20 = *(v14 + v19);
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v14 + v19) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_21D210A84(0, *(v20 + 2) + 1, 1, v20);
      *(v14 + v19) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_21D210A84((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    v24 = &v20[16 * v23];
    *(v24 + 4) = a2;
    *(v24 + 5) = a3;
    *(v14 + v19) = v20;
    swift_endAccess();
    type metadata accessor for TTRRemindersListConcreteEditingSession();
    swift_allocObject();
    sub_21DBF8E0C();
    v25 = TTRRemindersListConcreteEditingSession.init(acquirerName:editingSessionState:isFormallyAcquired:)(a2, a3, v14, 1);

    sub_21D0CF7E0(v13, &qword_27CE59370);
    v26 = v25 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_delegate;
    swift_beginAccess();
    *(v26 + 8) = &off_282EC7FB0;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    sub_21D0CF7E0(v13, &qword_27CE59370);
    return 0;
  }

  return v25;
}

void sub_21D5F2468(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v97 = a2;
  v99 = a4;
  v7 = type metadata accessor for TTRRemindersListViewModel.ReminderID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v96 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v94 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v94 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v94 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v94 - v21;
  v23 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v4;
  v100 = *(*(v4 + 32) + 16);

  v101 = a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v25);
  v26 = sub_21D291698(v25);

  sub_21D106C78(v25, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v26)
  {
    v27 = *(*v26 + 128);
    swift_beginAccess();
    v28 = *(v26 + v27);

    if (v28)
    {
      if (qword_27CE56AA8 != -1)
      {
        swift_once();
      }

      v29 = sub_21DBF84BC();
      __swift_project_value_buffer(v29, qword_27CE5ED90);
      sub_21D1D338C(v101, v22);
      sub_21DBF8E0C();
      v30 = sub_21DBF84AC();
      v31 = sub_21DBFAE9C();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v102 = v33;
        *v32 = 136315394;
        *(v32 + 4) = sub_21D0CDFB4(v97, a3, &v102);
        *(v32 + 12) = 2080;
        v34 = sub_21D25D250();
        v36 = v35;
        sub_21D106C78(v22, type metadata accessor for TTRRemindersListViewModel.Item);
        v37 = sub_21D0CDFB4(v34, v36, &v102);

        *(v32 + 14) = v37;
        _os_log_impl(&dword_21D0C9000, v30, v31, "Reminder Editing Session: Reusing existing session {acquirer: %s, item: %s}", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v33, -1, -1);
        MEMORY[0x223D46520](v32, -1, -1);
      }

      else
      {

        sub_21D106C78(v22, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      v60 = 0;
      v61 = 1;
LABEL_21:
      if ((*(v98 + 16))(v59))
      {
        v63 = v62;
        ObjectType = swift_getObjectType();
        (*(v63 + 8))(&v102, ObjectType, v63);
        swift_unknownObjectRelease();
        v65 = v102;
        v66 = v103;
        v67 = v104;
        v68 = v105;
        v69 = v106;
        v70 = v107;
        if (v103 == 255)
        {
          sub_21D157864(v102, 255);
          sub_21D575DF4(v67, v68, v69, v70);
        }

        else
        {
          v71 = v102;
          sub_21D157864(v65, v66);
          sub_21D575DF4(v67, v68, v69, v70);
          if ((v66 & 1) == 0)
          {
LABEL_33:
            v79 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_pendingMoveTargetList;
            swift_beginAccess();
            v80 = *(v28 + v79);
            *(v28 + v79) = v65;

            if (v60)
            {
              v108 = 3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
              v81 = (*(v96 + 80) + 32) & ~*(v96 + 80);
              v82 = swift_allocObject();
              *(v82 + 16) = xmmword_21DC08D00;
              sub_21D1D338C(v101, v82 + v81);
              sub_21D897284(&v108, v82);

              swift_setDeallocating();
              sub_21D106C78(v82 + v81, type metadata accessor for TTRRemindersListViewModel.Item);
              swift_deallocClassInstance();
            }

            else
            {
            }

            v83 = v99;
            *v99 = v28;
            *(v83 + 8) = v61;
            return;
          }

          sub_21D157864(v65, v66);
        }
      }

      v65 = 0;
      goto LABEL_33;
    }
  }

  TTRRemindersListViewModel.Item.reminderCasesOnly.getter(v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v39 = v95;
      sub_21D5F3AE0(v11, v95, type metadata accessor for TTRRemindersListViewModel.ReminderID);
      if (qword_27CE56AA8 != -1)
      {
        swift_once();
      }

      v40 = sub_21DBF84BC();
      __swift_project_value_buffer(v40, qword_27CE5ED90);
      sub_21D1D338C(v101, v16);
      sub_21DBF8E0C();
      v41 = sub_21DBF84AC();
      v42 = sub_21DBFAE9C();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v102 = v44;
        *v43 = 136315394;
        *(v43 + 4) = sub_21D0CDFB4(v97, a3, &v102);
        *(v43 + 12) = 2080;
        v45 = sub_21D25D250();
        v47 = v46;
        sub_21D106C78(v16, type metadata accessor for TTRRemindersListViewModel.Item);
        v48 = sub_21D0CDFB4(v45, v47, &v102);

        *(v43 + 14) = v48;
        _os_log_impl(&dword_21D0C9000, v41, v42, "Reminder Editing Session: Creating a session for placeholderReminder {acquirer: %s, item: %s}", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D46520](v44, -1, -1);
        MEMORY[0x223D46520](v43, -1, -1);
      }

      else
      {

        v49 = sub_21D106C78(v16, type metadata accessor for TTRRemindersListViewModel.Item);
      }

      if ((*(v98 + 16))(v49))
      {
        v85 = v84;
        v86 = swift_getObjectType();
        v87 = (*(v85 + 16))(*v39, v86, v85);
        swift_unknownObjectRelease();
        if (v87)
        {
          v88 = v94;
          sub_21D1D338C(v101, v94);
          type metadata accessor for TTRRemindersListEditingSessionState();
          swift_allocObject();
          v28 = TTRRemindersListEditingSessionState.init(item:reminderChangeItem:)(v88, v87);
          v89 = v87;
          TTRRemindersListTreeViewModel.setEditingSessionState(_:for:)(v28);

          v59 = sub_21D106C78(v39, type metadata accessor for TTRRemindersListViewModel.ReminderID);
          v61 = 0;
          v60 = 1;
          goto LABEL_21;
        }
      }

      v90 = sub_21DBF84AC();
      v91 = sub_21DBFAEBC();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_21D0C9000, v90, v91, "Reminder Editing Session: Cannot create REMReminderChangeItem for placeholderReminder.", v92, 2u);
        MEMORY[0x223D46520](v92, -1, -1);
      }

      v77 = type metadata accessor for TTRRemindersListViewModel.ReminderID;
      v78 = v39;
      goto LABEL_44;
    }

LABEL_15:
    if (qword_27CE56AA8 != -1)
    {
      swift_once();
    }

    v50 = sub_21DBF84BC();
    __swift_project_value_buffer(v50, qword_27CE5ED90);
    sub_21D1D338C(v101, v19);
    sub_21DBF8E0C();
    v51 = sub_21DBF84AC();
    v52 = sub_21DBFAECC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v102 = v54;
      *v53 = 136315394;
      *(v53 + 4) = sub_21D0CDFB4(v97, a3, &v102);
      *(v53 + 12) = 2080;
      v55 = sub_21D25D250();
      v57 = v56;
      sub_21D106C78(v19, type metadata accessor for TTRRemindersListViewModel.Item);
      v58 = sub_21D0CDFB4(v55, v57, &v102);

      *(v53 + 14) = v58;
      _os_log_impl(&dword_21D0C9000, v51, v52, "Reminder Editing Session: Attempting to create a session for invalid item {acquirer: %s, item: %s}", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v54, -1, -1);
      MEMORY[0x223D46520](v53, -1, -1);

LABEL_45:
      v93 = v99;
      *v99 = 0;
      *(v93 + 8) = 0;
      return;
    }

    v77 = type metadata accessor for TTRRemindersListViewModel.Item;
    v78 = v19;
LABEL_44:
    sub_21D106C78(v78, v77);
    goto LABEL_45;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_21D106C78(v11, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
    goto LABEL_15;
  }

  if (qword_27CE56AA8 != -1)
  {
    swift_once();
  }

  v72 = sub_21DBF84BC();
  __swift_project_value_buffer(v72, qword_27CE5ED90);
  v73 = sub_21DBF84AC();
  v74 = sub_21DBFAECC();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 0;
    _os_log_impl(&dword_21D0C9000, v73, v74, "Reminder Editing Session: A session should always be available for uncommittedReminder", v75, 2u);
    MEMORY[0x223D46520](v75, -1, -1);
  }

  v76 = v99;
  *v99 = 0;
  *(v76 + 8) = 0;
  sub_21D106C78(v11, type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem);
}

uint64_t sub_21D5F30AC(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if (qword_27CE56AA8 != -1)
  {
    swift_once();
  }

  v11 = sub_21DBF84BC();
  __swift_project_value_buffer(v11, qword_27CE5ED90);

  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAE9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = v3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_21D0CDFB4(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName), *(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_acquirerName + 8), &v25);
    *(v15 + 12) = 2080;
    sub_21D1D338C(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v9);
    v17 = sub_21D25D250();
    v19 = v18;
    sub_21D106C78(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    v20 = sub_21D0CDFB4(v17, v19, &v25);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_21D0C9000, v12, v13, "Reminder Editing Session: update item {acquirer: %s, item: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v16, -1, -1);
    MEMORY[0x223D46520](v15, -1, -1);
  }

  v25 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58928);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC08D00;
  sub_21D1D338C(*(a1 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState) + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_item, v22 + v21);
  sub_21D897284(&v25, v22);
  swift_setDeallocating();
  sub_21D106C78(v22 + v21, type metadata accessor for TTRRemindersListViewModel.Item);
  return swift_deallocClassInstance();
}

uint64_t sub_21D5F33D8(_BYTE *a1, uint64_t a2)
{
  if (_s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC18prepareToForceSave_14isAsynchronousSbAA0cd8ConcreteeF0C_SbtF_0(a2, 0))
  {
    v4 = *(a2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v4;

    sub_21D5F3664(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  *a1 = 0;
  return 0;
}

id sub_21D5F34A0(_BYTE *a1, uint64_t a2)
{
  if (_s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC18prepareToForceSave_14isAsynchronousSbAA0cd8ConcreteeF0C_SbtF_0(a2, 1))
  {
    v4 = *(a2 + OBJC_IVAR____TtC15RemindersUICore38TTRRemindersListConcreteEditingSession_editingSessionState);
    v5 = *(v4 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_reminderChangeItem);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC09CF0;
    *(inited + 32) = v4;
    v7 = v5;

    sub_21D5F3664(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDA8);
    swift_allocObject();
    sub_21DBF911C();
    sub_21D5F3A0C();
    sub_21DBF91DC();
    result = v7;
  }

  else
  {
    result = 0;
  }

  *a1 = 0;
  return result;
}

unint64_t sub_21D5F3664(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = sub_21DBFBD7C();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = (v1 + 32);
    do
    {
      if (v4)
      {
        v6 = MEMORY[0x223D44740](v3, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
      }

      ++v3;
      _s15RemindersUICore48TTRRemindersListEditingSessionProviderCapabilityC15prepareToCommityyAA0cdeF5StateCF_0(v6);
    }

    while (v2 != v3);
    for (i = 0; i != v2; ++i)
    {
      if (v4)
      {
        v8 = MEMORY[0x223D44740](i, v1);
      }

      else
      {
        v8 = *(v1 + 8 * i + 32);
      }

      sub_21D6489F4(v8);
    }

    if (v4)
    {
      v9 = 0;
      v10 = MEMORY[0x277D84F90];
      do
      {
        v11 = MEMORY[0x223D44740](v9++, v1);
        v12 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
        swift_beginAccess();
        *(v11 + v12) = 0;
        v13 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
        swift_beginAccess();
        *(v11 + v13) = 0;
        v14 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
        swift_beginAccess();
        *(v11 + v14) = 0;
        v15 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave;
        swift_beginAccess();
        *(v11 + v15) = 0;
        v16 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
        swift_beginAccess();
        *(v11 + v16) = v10;
        swift_unknownObjectRelease();
      }

      while (v2 != v9);
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      do
      {
        v18 = *v5++;
        v19 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_saveState;
        swift_beginAccess();
        *(v18 + v19) = 0;
        v20 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_isMarkedForDeletion;
        swift_beginAccess();
        *(v18 + v20) = 0;
        v21 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_deletesIfTitleIsInvalid;
        swift_beginAccess();
        *(v18 + v21) = 0;
        v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_doNotSave;
        swift_beginAccess();
        *(v18 + v22) = 0;
        v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListEditingSessionState_acquirerNames;
        swift_beginAccess();
        *(v18 + v23) = v17;

        --v2;
      }

      while (v2);
    }
  }

  return result;
}

void sub_21D5F3954(void (*a1)(id *))
{
  v2 = objc_opt_self();
  v3 = sub_21DBFA12C();
  v4 = [v2 internalErrorWithDebugDescription_];

  v5 = v4;
  v6 = 1;
  a1(&v5);
}

unint64_t sub_21D5F3A0C()
{
  result = qword_27CE5EDB0;
  if (!qword_27CE5EDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5EDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5EDB0);
  }

  return result;
}

uint64_t sub_21D5F3A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59370);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D5F3AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D5F3B48()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5EDC0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5EDC0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRExtensionContextExtractor.__allocating_init(userActivityProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = 0;
  sub_21D0D0FD0(a1, v2 + 16);
  return v2;
}

uint64_t TTRExtensionContextExtractor.init(userActivityProvider:)(__int128 *a1)
{
  *(v1 + 56) = 0;
  sub_21D0D0FD0(a1, v1 + 16);
  return v1;
}

uint64_t sub_21D5F3C7C(void *a1)
{
  v2 = v1;
  v73 = *v1;
  v4 = sub_21DBF9D8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v7 = sub_21DBFB12C();
  (*(v5 + 104))(v7, *MEMORY[0x277D851F0], v4);
  v8 = sub_21DBF9DAC();
  result = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    goto LABEL_43;
  }

  v87 = MEMORY[0x277D84F90];
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v75 = (v10 + 16);
  *(v10 + 24) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v74 = (v11 + 16);
  *(v11 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
  v72 = swift_allocBox();
  v13 = v12;
  v14 = type metadata accessor for TTRSERecipeCard();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  result = (*(v16 + 8))(v15, v16);
  v82 = *(result + 16);
  if (!v82)
  {

    v84 = 0;
    v61 = MEMORY[0x277D84F90];
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE8);
    v86 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDF0);
    sub_21D5F4658();
    *&v85 = sub_21DBF819C();

    v62 = swift_allocObject();
    v63 = swift_weakInit();
    MEMORY[0x28223BE20](v63);
    v64 = v73;
    *(&v71 - 2) = v62;
    *(&v71 - 1) = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE00);
    swift_allocObject();
    sub_21DBF828C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE08);
    sub_21DBF81CC();
    v65 = swift_allocObject();
    v65[2] = v72;
    v65[3] = v10;
    v66 = v84;
    v65[4] = v11;
    v65[5] = v66;
    v65[6] = v2;
    v65[7] = v64;
    v67 = swift_allocObject();
    *(v67 + 16) = sub_21D5FA790;
    *(v67 + 24) = v65;
    v68 = v66;

    v69 = sub_21DBF816C();
    type metadata accessor for TTRExtensionContextExtractorResult();
    v70 = sub_21DBF81FC();

    return v70;
  }

  v17 = 0;
  v18 = 0;
  v81 = result + 32;
  v78 = MEMORY[0x277D84F90];
  v85 = xmmword_21DC0AFB0;
  v79 = result;
  v76 = v11;
  v77 = v10;
  while (v18 < *(result + 16))
  {
    v21 = v81 + 24 * v18;
    v22 = *(v21 + 16);
    if (!v22)
    {
      goto LABEL_6;
    }

    v20 = *v21;
    v19 = *(v21 + 8);
    v23 = *(v10 + 24);
    v83 = v19;
    if (v23)
    {
      v24 = v19;
      swift_bridgeObjectRetain_n();
      v25 = v20;
      if (*(v11 + 24))
      {
        goto LABEL_18;
      }
    }

    else if (v20)
    {
      v26 = v19;
      swift_bridgeObjectRetain_n();
      v27 = [v20 string];
      v28 = v11;
      v29 = v20;
      v30 = sub_21DBFA16C();
      v32 = v31;

      v19 = v83;
      *(v10 + 16) = v30;
      *(v10 + 24) = v32;
      v20 = v29;
      v11 = v28;

      if (*(v28 + 24))
      {
        goto LABEL_18;
      }
    }

    else
    {
      v33 = v75;
      *v75 = 0;
      v33[1] = 0;
      v34 = v19;
      swift_bridgeObjectRetain_n();
      if (*(v11 + 24))
      {
        goto LABEL_18;
      }
    }

    if (v19)
    {
      v35 = [v19 string];
      v36 = v10;
      v37 = v20;
      v38 = sub_21DBFA16C();
      v40 = v39;

      v19 = v83;
      *(v11 + 16) = v38;
      *(v11 + 24) = v40;
      v20 = v37;
      v10 = v36;

LABEL_18:
      if (v17)
      {
        goto LABEL_20;
      }

LABEL_19:
      v41 = v19;
      v17 = v19;
      goto LABEL_20;
    }

    v60 = v74;
    *v74 = 0;
    v60[1] = 0;
    if (!v17)
    {
      goto LABEL_19;
    }

LABEL_20:
    v84 = v17;
    if (v22 >> 62)
    {
      v42 = sub_21DBFBD7C();
      if (v42)
      {
LABEL_22:
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE10);
        if (v42 < 1)
        {
          goto LABEL_42;
        }

        v80 = v20;
        if ((v22 & 0xC000000000000001) != 0)
        {
          v43 = 0;
          do
          {
            v44 = MEMORY[0x223D44740](v43, v22);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE18);
            v45 = swift_allocObject();
            *(v45 + 16) = v85;
            v46 = swift_allocObject();
            *(v46 + 16) = v2;
            *(v46 + 24) = v44;
            *(v45 + 32) = sub_21D5FA7D8;
            *(v45 + 40) = v46;
            v47 = swift_allocObject();
            *(v47 + 16) = v2;
            *(v47 + 24) = v44;
            *(v45 + 48) = sub_21D5FA808;
            *(v45 + 56) = v47;
            v48 = swift_allocObject();
            *(v48 + 16) = v2;
            *(v48 + 24) = v44;
            *(v45 + 64) = sub_21D5FA838;
            *(v45 + 72) = v48;
            v49 = swift_allocObject();
            *(v49 + 16) = v2;
            *(v49 + 24) = v44;
            *(v45 + 80) = sub_21D5FA868;
            *(v45 + 88) = v49;
            swift_retain_n();
            swift_unknownObjectRetain_n();
            sub_21DBF818C();

            MEMORY[0x223D42D80](v50);
            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            ++v43;
            sub_21DBFA6CC();

            swift_unknownObjectRelease();
          }

          while (v42 != v43);
        }

        else
        {
          v51 = (v22 + 32);
          do
          {
            v52 = *v51;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE18);
            v53 = swift_allocObject();
            *(v53 + 16) = v85;
            v54 = swift_allocObject();
            *(v54 + 16) = v2;
            *(v54 + 24) = v52;
            *(v53 + 32) = sub_21D5FBC08;
            *(v53 + 40) = v54;
            v55 = swift_allocObject();
            *(v55 + 16) = v2;
            *(v55 + 24) = v52;
            *(v53 + 48) = sub_21D5FBC0C;
            *(v53 + 56) = v55;
            v56 = swift_allocObject();
            *(v56 + 16) = v2;
            *(v56 + 24) = v52;
            *(v53 + 64) = sub_21D5FBC10;
            *(v53 + 72) = v56;
            v57 = swift_allocObject();
            *(v57 + 16) = v2;
            *(v57 + 24) = v52;
            *(v53 + 80) = sub_21D5FBC14;
            *(v53 + 88) = v57;
            swift_retain_n();
            v58 = v52;
            sub_21DBF818C();

            MEMORY[0x223D42D80](v59);
            if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_21DBFA63C();
            }

            sub_21DBFA6CC();

            ++v51;
            --v42;
          }

          while (v42);
        }

        v78 = v87;
        v11 = v76;
        v10 = v77;
        v19 = v83;
        v20 = v80;
      }
    }

    else
    {
      v42 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v42)
      {
        goto LABEL_22;
      }
    }

    swift_bridgeObjectRelease_n();

    v17 = v84;
    result = v79;
LABEL_6:
    if (++v18 == v82)
    {

      v84 = v17;
      v61 = v78;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_21D5F4658()
{
  result = qword_27CE5EDF8;
  if (!qword_27CE5EDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5EDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5EDF8);
  }

  return result;
}

uint64_t sub_21D5F46BC(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v297 = a7;
  v300 = a6;
  v307 = a5;
  v309 = a4;
  v342[23] = *MEMORY[0x277D85DE8];
  v305 = type metadata accessor for TTRExtensionContextExtractorResult();
  MEMORY[0x28223BE20](v305);
  v299 = &v287 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF54CC();
  v311 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v314 = &v287 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  v294 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8);
  v295 = v13;
  v296 = &v287 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v306 = &v287 - v15;
  v293 = type metadata accessor for TTRSERecipeCard();
  v291 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v288 = &v287 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v289 = &v287 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE0);
  MEMORY[0x28223BE20](v19 - 8);
  v290 = &v287 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v292 = &v287 - v22;
  v23 = type metadata accessor for TTRAttachmentInfo();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v310 = &v287 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v287 - v27;
  MEMORY[0x28223BE20](v29);
  v313 = &v287 - v30;
  MEMORY[0x28223BE20](v31);
  v312 = &v287 - v32;
  MEMORY[0x28223BE20](v33);
  v327 = (&v287 - v34);
  MEMORY[0x28223BE20](v35);
  v316 = &v287 - v36;
  MEMORY[0x28223BE20](v37);
  v326 = &v287 - v38;
  MEMORY[0x28223BE20](v39);
  v321 = &v287 - v40;
  MEMORY[0x28223BE20](v41);
  v320 = &v287 - v42;
  MEMORY[0x28223BE20](v43);
  v319 = &v287 - v44;
  MEMORY[0x28223BE20](v45);
  v318 = &v287 - v46;
  MEMORY[0x28223BE20](v47);
  v317 = &v287 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49 - 8);
  v324 = &v287 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v335 = &v287 - v53;
  MEMORY[0x28223BE20](v54);
  v323 = &v287 - v55;
  MEMORY[0x28223BE20](v56);
  v333 = (&v287 - v57);
  MEMORY[0x28223BE20](v58);
  v60 = &v287 - v59;
  MEMORY[0x28223BE20](v61);
  v322 = &v287 - v62;
  MEMORY[0x28223BE20](v63);
  v332 = &v287 - v64;
  MEMORY[0x28223BE20](v65);
  v334 = &v287 - v66;
  v301 = swift_projectBox();
  v302 = v50;
  v67 = *(a1 + 16);
  v315 = v10;
  v308 = a2;
  v339 = v23;
  v303 = v28;
  v304 = v67;
  v325 = v24;
  v298 = a1;
  if (v67)
  {
    v331 = v60;
    v68 = a1 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
    v69 = *(v50 + 72);
    v70 = (v24 + 48);
    v337 = (v24 + 56);
    v338 = v69;
    v328 = MEMORY[0x277D84F90];
    v71 = v68;
    v72 = v67;
    v73 = v339;
    v74 = v322;
    v330 = v68;
    while (1)
    {
      v76 = v74;
      v77 = v334;
      sub_21D0D3954(v71, v334, &qword_27CE5EE48);
      v78 = v331;
      sub_21D0D523C(v77, v331, &qword_27CE5EE48);
      v79 = *v70;
      if ((*v70)(v78, 1, v73) == 1)
      {
        sub_21D0CF7E0(v78, &qword_27CE5EE48);
        v74 = v76;
        v336 = *v337;
        (v336)(v76, 1, 1, v73);
        v75 = v330;
      }

      else
      {
        v329 = v79;
        v80 = v70;
        v81 = v318;
        sub_21D5FBA50(v78, v318, type metadata accessor for TTRAttachmentInfo);
        v82 = v319;
        sub_21D5FBAB8(v81, v319, type metadata accessor for TTRAttachmentInfo);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v74 = v322;
          sub_21D5FBA50(v81, v322, type metadata accessor for TTRAttachmentInfo);
          v336 = *v337;
          (v336)(v74, 0, 1, v73);
          sub_21D5FBB20(v82, type metadata accessor for TTRAttachmentInfo);
        }

        else
        {
          sub_21D5FBB20(v81, type metadata accessor for TTRAttachmentInfo);
          v73 = v339;
          sub_21D5FBB20(v82, type metadata accessor for TTRAttachmentInfo);
          v74 = v322;
          v336 = *v337;
          (v336)(v322, 1, 1, v73);
        }

        v70 = v80;
        v79 = v329;
        v75 = v330;
        if (v329(v74, 1, v73) != 1)
        {
          sub_21D5FBA50(v74, v317, type metadata accessor for TTRAttachmentInfo);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v83 = v328;
          }

          else
          {
            v83 = sub_21D213EEC(0, v328[2] + 1, 1, v328);
          }

          v85 = v83[2];
          v84 = v83[3];
          if (v85 >= v84 >> 1)
          {
            v83 = sub_21D213EEC(v84 > 1, v85 + 1, 1, v83);
          }

          v83[2] = v85 + 1;
          v86 = (*(v325 + 80) + 32) & ~*(v325 + 80);
          v328 = v83;
          sub_21D5FBA50(v317, v83 + v86 + *(v325 + 72) * v85, type metadata accessor for TTRAttachmentInfo);
          v73 = v339;
          goto LABEL_5;
        }
      }

      sub_21D0CF7E0(v74, &qword_27CE5EE48);
LABEL_5:
      v71 += v338;
      if (!--v72)
      {
        v334 = v70;
        v87 = MEMORY[0x277D84F90];
        v88 = v304;
        v89 = v323;
        while (1)
        {
          v91 = v332;
          sub_21D0D3954(v75, v332, &qword_27CE5EE48);
          sub_21D0D523C(v91, v89, &qword_27CE5EE48);
          v92 = v87;
          if (v79(v89, 1, v73) == 1)
          {
            sub_21D0CF7E0(v89, &qword_27CE5EE48);
            v90 = v333;
            (v336)(v333, 1, 1, v73);
          }

          else
          {
            v93 = v321;
            sub_21D5FBA50(v89, v321, type metadata accessor for TTRAttachmentInfo);
            v94 = v326;
            sub_21D5FBAB8(v93, v326, type metadata accessor for TTRAttachmentInfo);
            if (swift_getEnumCaseMultiPayload() == 3)
            {
              sub_21D5FBB20(v93, type metadata accessor for TTRAttachmentInfo);
              v90 = v333;
              (v336)(v333, 1, 1, v73);
              sub_21D5FBB20(v326, type metadata accessor for TTRAttachmentInfo);
            }

            else
            {
              sub_21D5FBB20(v94, type metadata accessor for TTRAttachmentInfo);
              v95 = v93;
              v90 = v333;
              sub_21D5FBA50(v95, v333, type metadata accessor for TTRAttachmentInfo);
              (v336)(v90, 0, 1, v73);
            }

            if (v79(v90, 1, v73) != 1)
            {
              sub_21D5FBA50(v90, v320, type metadata accessor for TTRAttachmentInfo);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v89 = v323;
              v87 = v92;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v87 = sub_21D213EEC(0, v92[2] + 1, 1, v92);
              }

              v98 = v87[2];
              v97 = v87[3];
              if (v98 >= v97 >> 1)
              {
                v87 = sub_21D213EEC(v97 > 1, v98 + 1, 1, v87);
              }

              v87[2] = v98 + 1;
              sub_21D5FBA50(v320, v87 + ((*(v325 + 80) + 32) & ~*(v325 + 80)) + *(v325 + 72) * v98, type metadata accessor for TTRAttachmentInfo);
              v73 = v339;
              goto LABEL_20;
            }

            v89 = v323;
          }

          sub_21D0CF7E0(v90, &qword_27CE5EE48);
          v87 = v92;
LABEL_20:
          v75 += v338;
          if (!--v88)
          {
            a2 = v308;
            v24 = v325;
            v99 = v328;
            goto LABEL_34;
          }
        }
      }
    }
  }

  v99 = MEMORY[0x277D84F90];
  v87 = MEMORY[0x277D84F90];
LABEL_34:
  v100 = v99[2];
  v101 = v327;
  v102 = v302;
  v328 = v99;
  if (v100)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BD8);
    v103 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_21DC08D00;
    if (!v99[2])
    {
      __break(1u);
LABEL_147:
      swift_once();
      goto LABEL_121;
    }

    v87 = v104;
    sub_21D5FBAB8(v99 + v103, v104 + v103, type metadata accessor for TTRAttachmentInfo);
  }

  v334 = [a2 userActivity];
  v332 = v100;
  v105 = v324;
  if (v334)
  {
    v106 = [v334 userInfo];
    if (v106)
    {
      v107 = v106;
      v108 = sub_21DBF9E6C();

      v342[20] = 0x6143657069636552;
      v342[21] = 0xEA00000000006472;
      sub_21DBFBE2C();
      if (*(v108 + 16) && (v109 = sub_21D17EA0C(v342), (v110 & 1) != 0))
      {
        sub_21D0CEB98(*(v108 + 56) + 32 * v109, &v340);
        sub_21D181D3C(v342);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E608);
        if (swift_dynamicCast())
        {
          if (qword_27CE56AB0 != -1)
          {
            swift_once();
          }

          v111 = sub_21DBF84BC();
          v112 = __swift_project_value_buffer(v111, qword_27CE5EDC0);
          sub_21DBF8E0C();
          v338 = v112;
          v113 = sub_21DBF84AC();
          v114 = sub_21DBFAEDC();

          if (os_log_type_enabled(v113, v114))
          {
            v115 = swift_slowAlloc();
            v116 = swift_slowAlloc();
            v342[0] = v116;
            *v115 = 136380675;
            v117 = sub_21DBF9E7C();
            v119 = sub_21D0CDFB4(v117, v118, v342);

            *(v115 + 4) = v119;
            _os_log_impl(&dword_21D0C9000, v113, v114, "TTRExtensionContextExtractor: RecipeCard found in UserInfo: %{private}s)", v115, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v116);
            MEMORY[0x223D46520](v116, -1, -1);
            MEMORY[0x223D46520](v115, -1, -1);
          }

          v121 = v292;
          v120 = v293;
          v122 = objc_opt_self();
          v123 = sub_21DBF9E5C();

          v342[0] = 0;
          v124 = [v122 dataWithJSONObject:v123 options:0 error:v342];

          v125 = v342[0];
          if (v124)
          {
            v126 = sub_21DBF551C();
            v128 = v127;

            sub_21DBF4B7C();
            swift_allocObject();
            sub_21DBF4B6C();
            sub_21D5FB988();
            sub_21DBF4B5C();
            v24 = v325;
            v337 = v126;
            v265 = v128;
            v266 = v291;
            (*(v291 + 56))(v121, 0, 1, v120);
            v267 = v301;
            swift_beginAccess();
            sub_21D5FB9E0(v121, v267);
            swift_beginAccess();
            v268 = v267;
            v269 = v290;
            sub_21D0D3954(v268, v290, &qword_27CE5EDE0);
            v270 = (*(v266 + 48))(v269, 1, v120);
            if (v270 == 1)
            {

              sub_21D17B8A8(v337, v128);
              sub_21D0CF7E0(v269, &qword_27CE5EDE0);
            }

            else
            {
              v271 = v289;
              sub_21D5FBA50(v269, v289, type metadata accessor for TTRSERecipeCard);
              v272 = v288;
              sub_21D5FBAB8(v271, v288, type metadata accessor for TTRSERecipeCard);
              v273 = sub_21DBF84AC();
              v274 = sub_21DBFAEDC();
              if (os_log_type_enabled(v273, v274))
              {
                v275 = swift_slowAlloc();
                v276 = swift_slowAlloc();
                v336 = v273;
                v277 = v272;
                v278 = v276;
                v342[0] = v276;
                *v275 = 136315138;
                v279 = TTRSERecipeCard.description.getter();
                v281 = v280;
                v338 = type metadata accessor for TTRSERecipeCard;
                sub_21D5FBB20(v277, type metadata accessor for TTRSERecipeCard);
                v282 = sub_21D0CDFB4(v279, v281, v342);

                *(v275 + 4) = v282;
                v283 = v336;
                _os_log_impl(&dword_21D0C9000, v336, v274, "TTRExtensionContextExtractor: RecipeCard parsed: %s", v275, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v278);
                MEMORY[0x223D46520](v278, -1, -1);
                v284 = v275;
                v24 = v325;
                MEMORY[0x223D46520](v284, -1, -1);

                sub_21D17B8A8(v337, v265);

                v285 = v289;
                v286 = v338;
              }

              else
              {

                sub_21D17B8A8(v337, v265);

                sub_21D5FBB20(v272, type metadata accessor for TTRSERecipeCard);
                v285 = v271;
                v286 = type metadata accessor for TTRSERecipeCard;
              }

              sub_21D5FBB20(v285, v286);
            }
          }

          else
          {
            v254 = v125;
            v255 = sub_21DBF52DC();

            swift_willThrow();
            v24 = v325;
            v256 = v255;
            v257 = sub_21DBF84AC();
            v258 = sub_21DBFAEBC();

            if (os_log_type_enabled(v257, v258))
            {
              v259 = swift_slowAlloc();
              v260 = swift_slowAlloc();
              v342[0] = v260;
              *v259 = 136315138;
              swift_getErrorValue();
              v261 = sub_21DBFC75C();
              v263 = sub_21D0CDFB4(v261, v262, v342);

              *(v259 + 4) = v263;
              _os_log_impl(&dword_21D0C9000, v257, v258, "TTRExtensionContextExtractor: Error parsing RecipeCard error:%s", v259, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v260);
              MEMORY[0x223D46520](v260, -1, -1);
              v264 = v259;
              v24 = v325;
              MEMORY[0x223D46520](v264, -1, -1);
            }

            else
            {
            }
          }

          v101 = v327;
          v105 = v324;
          v102 = v302;
          goto LABEL_50;
        }
      }

      else
      {

        sub_21D181D3C(v342);
      }

      v24 = v325;
    }
  }

LABEL_50:
  v333 = v87;
  v129 = v304;
  if (v304)
  {
    v130 = v101;
    v131 = v298 + ((*(v102 + 80) + 32) & ~*(v102 + 80));
    v338 = *(v102 + 72);
    v337 = MEMORY[0x277D84F90];
    while (1)
    {
      v133 = v129;
      v134 = v335;
      sub_21D0D3954(v131, v335, &qword_27CE5EE48);
      sub_21D0D3954(v134, v105, &qword_27CE5EE48);
      if ((*(v24 + 48))(v105, 1, v339) == 1)
      {
        sub_21D0CF7E0(v134, &qword_27CE5EE48);
        sub_21D0CF7E0(v105, &qword_27CE5EE48);
      }

      else
      {
        v135 = v105;
        v136 = v316;
        sub_21D5FBA50(v135, v316, type metadata accessor for TTRAttachmentInfo);
        sub_21D5FBAB8(v136, v130, type metadata accessor for TTRAttachmentInfo);
        if (swift_getEnumCaseMultiPayload() >= 4)
        {
          v137 = *v130;
          v138 = [v137 string];
          v139 = sub_21DBFA16C();
          v336 = v140;

          sub_21D5FBB20(v136, type metadata accessor for TTRAttachmentInfo);
          sub_21D0CF7E0(v335, &qword_27CE5EE48);
          v141 = v337;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_21D210A84(0, *(v141 + 2) + 1, 1, v141);
          }

          v105 = v324;
          v143 = *(v141 + 2);
          v142 = *(v141 + 3);
          v337 = v141;
          if (v143 >= v142 >> 1)
          {
            v147 = sub_21D210A84((v142 > 1), v143 + 1, 1, v337);
            v132 = v133;
            v337 = v147;
          }

          else
          {
            v132 = v133;
          }

          v145 = v336;
          v144 = v337;
          *(v337 + 2) = v143 + 1;
          v146 = &v144[16 * v143];
          *(v146 + 4) = v139;
          *(v146 + 5) = v145;
          v130 = v327;
          goto LABEL_54;
        }

        sub_21D5FBB20(v136, type metadata accessor for TTRAttachmentInfo);
        sub_21D0CF7E0(v335, &qword_27CE5EE48);
        v130 = v327;
        sub_21D5FBB20(v327, type metadata accessor for TTRAttachmentInfo);
        v105 = v324;
      }

      v132 = v133;
LABEL_54:
      v131 += v338;
      v129 = v132 - 1;
      if (!v129)
      {
        goto LABEL_65;
      }
    }
  }

  v337 = MEMORY[0x277D84F90];
LABEL_65:
  v148 = v333;
  if (*(v337 + 2))
  {
    v150 = *(v337 + 4);
    v149 = *(v337 + 5);
    sub_21DBF8E0C();
  }

  else
  {
    v150 = 0;
    v149 = 0;
  }

  v151 = v307;
  v152 = v303;
  v153 = v332;

  v154 = v309;
  swift_beginAccess();
  if (!*(v154 + 24))
  {
    v155 = *(v148 + 16);
    if (v155)
    {
      v156 = 0;
      v157 = v148 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
      v158 = *(v325 + 72);
      v159 = v313;
      while (1)
      {
        v160 = v312;
        sub_21D5FBAB8(v157, v312, type metadata accessor for TTRAttachmentInfo);
        sub_21D5FBA50(v160, v159, type metadata accessor for TTRAttachmentInfo);
        LODWORD(v160) = swift_getEnumCaseMultiPayload();
        sub_21D5FBB20(v159, type metadata accessor for TTRAttachmentInfo);
        if (v160 <= 2 && __OFADD__(v156++, 1))
        {
          break;
        }

        v157 += v158;
        if (!--v155)
        {
          goto LABEL_76;
        }
      }

      __break(1u);
LABEL_76:
      v151 = v307;
      v152 = v303;
      if (v156 > 0)
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
        v162 = swift_allocObject();
        v163 = MEMORY[0x277D83B88];
        *(v162 + 16) = xmmword_21DC08D00;
        v164 = MEMORY[0x277D83C10];
        *(v162 + 56) = v163;
        *(v162 + 64) = v164;
        *(v162 + 32) = v156;
        v165 = sub_21DBFA13C();
        v167 = v166;

        v153 = v332;
        goto LABEL_83;
      }
    }

    v153 = v332;
    if (v334)
    {
      v168 = [v334 title];
      if (v168)
      {
        v169 = v168;
        v165 = sub_21DBFA16C();
        v167 = v170;

LABEL_83:
        v171 = v309;
        swift_beginAccess();
        *(v171 + 16) = v165;
        *(v171 + 24) = v167;

        v151 = v307;
      }
    }
  }

  swift_beginAccess();
  if (*(v151 + 24))
  {
LABEL_85:

    goto LABEL_86;
  }

  if (v149)
  {
    swift_beginAccess();
    *(v151 + 16) = v150;
    *(v151 + 24) = v149;
    if (v334)
    {
      sub_21DBF8E0C();
      v185 = [v334 title];
      if (!v185)
      {
        goto LABEL_85;
      }

      v186 = v185;
      v187 = sub_21DBFA16C();
      v189 = v188;

      v190 = v309;
      swift_beginAccess();
      v191 = *(v190 + 24);
      if (v191)
      {
        if (*(v190 + 16) == v150 && v191 == v149)
        {

LABEL_134:
          v253 = v309;
          swift_beginAccess();
          *(v253 + 16) = v187;
          *(v253 + 24) = v189;
          goto LABEL_140;
        }

        v252 = sub_21DBFC64C();

        if (v252)
        {
          goto LABEL_134;
        }
      }

      else
      {
      }

LABEL_140:

      v151 = v307;
    }
  }

LABEL_86:
  v172 = v309;
  swift_beginAccess();
  v173 = *(v172 + 16);
  v174 = *(v172 + 24);
  sub_21DBF8E0C();
  v175 = sub_21D5FB514(v173, v174);
  v177 = v176;

  swift_beginAccess();
  *(v172 + 16) = v175;
  *(v172 + 24) = v177;

  swift_beginAccess();
  v178 = *(v151 + 16);
  v179 = *(v151 + 24);
  sub_21DBF8E0C();
  v180 = sub_21D5FB640(v178, v179);
  v182 = v181;

  swift_beginAccess();
  *(v151 + 16) = v180;
  *(v151 + 24) = v182;

  swift_beginAccess();
  v183 = *(v172 + 24);
  if (!v183)
  {
    v184 = v311;
    if (v182)
    {
      v192 = v309;
      swift_beginAccess();
      *(v192 + 16) = v180;
      *(v192 + 24) = v182;
      swift_beginAccess();
      *(v151 + 16) = 0;
      *(v151 + 24) = 0;
      sub_21DBF8E0C();
    }

    else
    {
      memset(v342, 0, 40);
      v193 = _s15RemindersUICore21TTRLocalizableStringsO6CommonO28defaultTitleForBlankReminder19effectiveParentListSSAA15TTRListProtocol_pSg_tFZ_0(v342);
      v195 = v194;
      sub_21D0CF7E0(v342, &qword_27CE59DC0);
      v196 = v309;
      swift_beginAccess();
      *(v196 + 16) = v193;
      *(v196 + 24) = v195;
    }

    goto LABEL_102;
  }

  v184 = v311;
  if (v182 && (*(v309 + 16) == v180 && v183 == v182 || (sub_21DBFC64C() & 1) != 0))
  {
    swift_beginAccess();
    *(v151 + 16) = 0;
    *(v151 + 24) = 0;
LABEL_102:
  }

  v197 = v310;
  if (v153)
  {
    v198 = v328 + ((*(v325 + 80) + 32) & ~*(v325 + 80));
    v199 = *(v325 + 72);
    v200 = (v184 + 32);
    v201 = MEMORY[0x277D84F90];
    do
    {
      sub_21D5FBAB8(v198, v152, type metadata accessor for TTRAttachmentInfo);
      sub_21D5FBA50(v152, v197, type metadata accessor for TTRAttachmentInfo);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v202 = *v200;
        (*v200)(v314, v197, v315);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_21D212DAC(0, *(v201 + 2) + 1, 1, v201);
        }

        v204 = *(v201 + 2);
        v203 = *(v201 + 3);
        if (v204 >= v203 >> 1)
        {
          v201 = sub_21D212DAC(v203 > 1, v204 + 1, 1, v201);
        }

        *(v201 + 2) = v204 + 1;
        v202(&v201[((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v204], v314, v315);
        v197 = v310;
      }

      else
      {
        sub_21D5FBB20(v197, type metadata accessor for TTRAttachmentInfo);
      }

      v198 += v199;
      --v153;
    }

    while (v153);
  }

  else
  {
    v201 = MEMORY[0x277D84F90];
  }

  if (*(v201 + 2))
  {
    v205 = v311;
    v206 = v306;
    v207 = v315;
    (*(v311 + 16))(v306, &v201[(*(v311 + 80) + 32) & ~*(v311 + 80)], v315);
    v208 = 0;
    v24 = v307;
  }

  else
  {
    v208 = 1;
    v206 = v306;
    v24 = v307;
    v205 = v311;
    v207 = v315;
  }

  (*(v205 + 56))(v206, v208, 1, v207);
  v209 = v334;
  if (!v334)
  {
    goto LABEL_124;
  }

  sub_21D0D8CF0(0, &qword_27CE5EE88);
  v99 = v209;
  v210 = MEMORY[0x223D43AB0]();
  if (v210)
  {
    v211 = v210;

    v212 = v308;
    goto LABEL_125;
  }

  if (qword_27CE56AB0 != -1)
  {
    goto LABEL_147;
  }

LABEL_121:
  v213 = sub_21DBF84BC();
  __swift_project_value_buffer(v213, qword_27CE5EDC0);
  v214 = v99;
  v215 = sub_21DBF84AC();
  v216 = sub_21DBFAEDC();

  if (os_log_type_enabled(v215, v216))
  {
    v217 = swift_slowAlloc();
    v218 = swift_slowAlloc();
    v341[0] = v218;
    *v217 = 136315138;
    v219 = [v214 description];
    v220 = sub_21DBFA16C();
    v222 = v221;

    v223 = sub_21D0CDFB4(v220, v222, v341);

    *(v217 + 4) = v223;
    _os_log_impl(&dword_21D0C9000, v215, v216, "TTRExtensionContextExtractor: discarding currentUserActivity; LSApplicationRecord not found {userActivity: %s}", v217, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v218);
    MEMORY[0x223D46520](v218, -1, -1);
    v224 = v217;
    v24 = v307;
    MEMORY[0x223D46520](v224, -1, -1);
  }

  else
  {
  }

LABEL_124:
  v308 = 0;
LABEL_125:
  v225 = v309;
  swift_beginAccess();
  v227 = *(v225 + 16);
  v226 = *(v225 + 24);
  swift_beginAccess();
  v228 = v24;
  v229 = *(v24 + 16);
  v230 = *(v228 + 24);
  v231 = *(v305 + 32);
  v232 = sub_21DBF509C();
  v233 = v299;
  v234 = &v299[v231];
  v235 = v305;
  (*(*(v232 - 8) + 56))(v234, 1, 1, v232);
  v236 = v301;
  swift_beginAccess();
  sub_21D0D3954(v236, &v233[v235[15]], &qword_27CE5EDE0);
  *v233 = v227;
  *(v233 + 1) = v226;
  v233[16] = 0;
  *(v233 + 3) = v333;
  *(v233 + 4) = v229;
  *(v233 + 5) = v230;
  *&v233[v235[9]] = 0;
  *&v233[v235[10]] = v308;
  v233[v235[11]] = 0;
  *&v233[v235[12]] = xmmword_21DC18EF0;
  v237 = &v233[v235[13]];
  *v237 = 0;
  v237[8] = 1;
  v238 = v300;
  *&v233[v235[14]] = v300;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE80);
  swift_allocObject();
  v239 = v238;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v240 = sub_21DBF824C();
  swift_beginAccess();
  if (*(v225 + 24))
  {

    v241 = v308;
  }

  else
  {
    v241 = v308;
    swift_beginAccess();
    v242 = v334;
    if (*(v228 + 24) || (v243 = v306, (*(v311 + 48))(v306, 1, v315) == 1))
    {
    }

    else
    {
      sub_21D0D8CF0(0, &qword_280D1B900);
      v339 = sub_21DBFB12C();
      v245 = v296;
      sub_21D0D3954(v243, v296, &qword_27CE5EA20);
      v246 = (*(v294 + 80) + 24) & ~*(v294 + 80);
      v247 = (v295 + v246 + 7) & 0xFFFFFFFFFFFFFFF8;
      v248 = (v247 + 15) & 0xFFFFFFFFFFFFFFF8;
      v249 = swift_allocObject();
      *(v249 + 16) = v297;
      sub_21D0D523C(v245, v249 + v246, &qword_27CE5EA20);
      *(v249 + v247) = v240;
      *(v249 + v248) = v333;
      *(v249 + ((v248 + 15) & 0xFFFFFFFFFFFFFFF8)) = v241;
      v241 = v334;

      v250 = v339;
      v251 = sub_21DBF82CC();

      v240 = v251;
    }
  }

  sub_21D0CF7E0(v306, &qword_27CE5EA20);
  return v240;
}

uint64_t sub_21D5F6A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_21D5F7974();
  sub_21D0D3954(a2, v11, &qword_27CE5EA20);
  v13 = sub_21DBF54CC();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v11, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_21D90111C(v11, 1);

    (*(v14 + 8))(v11, v13);
    sub_21DBF817C();

    v16 = sub_21DBF5F0C();
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    type metadata accessor for TTRExtensionContextExtractorResult();

    sub_21DBF8E0C();
    v18 = a5;
    v19 = sub_21DBF81FC();

    return v19;
  }

  return result;
}

uint64_t sub_21D5F6C54(void **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = type metadata accessor for TTRExtensionContextExtractorResult();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (*a1)
  {
    v32 = a3;
    v33 = v4;
    v13 = v12;
    v14 = [v13 title];
    if (v14)
    {
      v15 = v14;
      v16 = sub_21DBFA16C();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = [v13 summary];
    if (v19)
    {
      v20 = v19;
      v21 = sub_21DBFA16C();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = v9[8];
    v25 = sub_21DBF509C();
    (*(*(v25 - 8) + 56))(&v11[v24], 1, 1, v25);
    v26 = v9[15];
    v27 = type metadata accessor for TTRSERecipeCard();
    (*(*(v27 - 8) + 56))(&v11[v26], 1, 1, v27);
    *v11 = v16;
    *(v11 + 1) = v18;
    v11[16] = 0;
    *(v11 + 3) = v32;
    *(v11 + 4) = v21;
    *(v11 + 5) = v23;
    *&v11[v9[9]] = 0;
    *&v11[v9[10]] = a4;
    v11[v9[11]] = 0;
    *&v11[v9[12]] = xmmword_21DC18EF0;
    v28 = &v11[v9[13]];
    *v28 = 0;
    v28[8] = 1;
    *&v11[v9[14]] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE80);
    swift_allocObject();
    v29 = a4;
    sub_21DBF8E0C();
    a2 = sub_21DBF824C();
  }

  else
  {
  }

  return a2;
}

uint64_t sub_21D5F6EBC(void *a1)
{
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v88 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  v89 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v91 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v78 - v14;
  v90 = v16;
  MEMORY[0x28223BE20](v17);
  v92 = &v78 - v18;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0D8CF0(0, &qword_280D1B900);
  *v22 = sub_21DBFB12C();
  (*(v20 + 104))(v22, *MEMORY[0x277D851F0], v19);
  v23 = sub_21DBF9DAC();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v25 = [a1 title];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 string];

      v28 = sub_21DBFA16C();
      v86 = v29;
      v87 = v28;
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v30 = [a1 notes];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 string];

      v33 = sub_21DBFA16C();
      v84 = v34;
      v85 = v33;
    }

    else
    {
      v84 = 0;
      v85 = 0;
    }

    v35 = [a1 dueDateComponents];
    if (v35)
    {
      v36 = v35;
      sub_21DBF4EFC();

      v37 = 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = sub_21DBF509C();
    v39 = 1;
    (*(*(v38 - 8) + 56))(v15, v37, 1, v38);
    sub_21D0D523C(v15, v92, &qword_27CE58D60);
    v40 = [a1 url];
    if (v40)
    {
      v41 = v40;
      sub_21DBF546C();

      v39 = 0;
    }

    (*(v3 + 56))(v10, v39, 1, v2);
    sub_21D0D3954(v10, v7, &qword_27CE5EA20);
    if ((*(v3 + 48))(v7, 1, v2) == 1)
    {
      v83 = MEMORY[0x277D84F90];
    }

    else
    {
      v42 = v88;
      (*(v3 + 32))(v88, v7, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59BD8);
      v43 = *(type metadata accessor for TTRAttachmentInfo() - 8);
      v44 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_21DC08D00;
      (*(v3 + 16))(v45 + v44, v42, v2);
      v83 = v45;
      swift_storeEnumTagMultiPayload();
      (*(v3 + 8))(v42, v2);
    }

    sub_21D0CF7E0(v10, &qword_27CE5EA20);
    v46 = [a1 userActivity];
    if (v46)
    {
      v47 = v46;
      v82 = [objc_allocWithZone(MEMORY[0x277D448F0]) initWithUserActivity_];
    }

    else
    {
      v82 = 0;
    }

    v48 = [a1 location];
    v49 = [a1 locationString];
    if (v49)
    {
      v50 = v49;
      v51 = sub_21DBFA16C();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    MEMORY[0x28223BE20](v49);
    *(&v78 - 4) = v51;
    *(&v78 - 3) = v53;
    *(&v78 - 2) = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE20);
    swift_allocObject();
    v88 = sub_21DBF828C();

    v80 = [a1 wantsExtendedDetailOnlyView];
    v79 = [a1 titleIsGeneratedSuggestion];
    v54 = [a1 siriFoundInAppsData];
    if (v54)
    {
      v55 = v54;
      v81 = sub_21DBF551C();
      v78 = v56;
    }

    else
    {
      v81 = 0;
      v78 = 0xF000000000000000;
    }

    v57 = [a1 location];
    if (v57 || (v57 = [a1 locationString]) != 0)
    {

      v58 = [a1 locationProximity];
      v59 = 0;
    }

    else
    {
      v58 = 0;
      v59 = 1;
    }

    v61 = v91;
    v60 = v92;
    sub_21D0D3954(v92, v91, &qword_27CE58D60);
    v62 = (*(v89 + 80) + 64) & ~*(v89 + 80);
    v63 = (v62 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = (v62 + v90 + 23) & 0xFFFFFFFFFFFFFFF8;
    v65 = swift_allocObject();
    v66 = v86;
    *(v65 + 16) = v87;
    *(v65 + 24) = v66;
    *(v65 + 32) = v79;
    v67 = v84;
    v68 = v85;
    *(v65 + 40) = v83;
    *(v65 + 48) = v68;
    *(v65 + 56) = v67;
    sub_21D0D523C(v61, v65 + v62, &qword_27CE58D60);
    v69 = v65 + v63;
    v71 = v81;
    v70 = v82;
    *v69 = v82;
    *(v69 + 8) = v80;
    v72 = (v65 + v64);
    v73 = v78;
    *v72 = v71;
    v72[1] = v73;
    v74 = v65 + ((v64 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v74 = v58;
    *(v74 + 8) = v59;
    v75 = v70;
    sub_21D5FA9F0(v71, v73);
    v76 = sub_21DBF816C();
    type metadata accessor for TTRExtensionContextExtractorResult();
    v77 = sub_21DBF820C();

    sub_21D1BAF38(v71, v73);
    sub_21D0CF7E0(v60, &qword_27CE58D60);
    return v77;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D5F77EC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10, char a11, uint64_t a12, unint64_t a13, uint64_t a14, char a15)
{
  v20 = *a1;
  v21 = type metadata accessor for TTRExtensionContextExtractorResult();
  sub_21D0D3954(a8, a9 + v21[8], &qword_27CE58D60);
  v22 = v21[15];
  v23 = type metadata accessor for TTRSERecipeCard();
  (*(*(v23 - 8) + 56))(a9 + v22, 1, 1, v23);
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + v21[9]) = v20;
  *(a9 + v21[10]) = a10;
  *(a9 + v21[11]) = a11;
  v24 = (a9 + v21[12]);
  *v24 = a12;
  v24[1] = a13;
  v25 = a9 + v21[13];
  *v25 = a14;
  *(v25 + 8) = a15 & 1;
  *(a9 + v21[14]) = 0;
  v26 = a10;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v27 = v20;
  return sub_21D5FA9F0(a12, a13);
}

id sub_21D5F7974()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CD46E0]) init];
    v4 = *(v0 + 56);
    *(v0 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_21D5F79E0@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EDE8);
  swift_allocObject();
  result = sub_21DBF828C();
  *a1 = result;
  return result;
}

void sub_21D5F7A4C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v34 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_21DBF843C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF83FC();
  sub_21DBF836C();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v15 = sub_21DBFA12C();

  v16 = [a5 hasItemConformingToTypeIdentifier_];

  if (v16)
  {
    sub_21DBF840C();
    sub_21DBF836C();
    v14(v13, v10);
    v17 = sub_21DBFA12C();

    v18 = [a5 hasItemConformingToTypeIdentifier_];

    if (v18)
    {
      sub_21D0D8CF0(0, &qword_27CE5EE60);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = swift_allocObject();
      *(v20 + 16) = v34;
      *(v20 + 24) = a2;
      v39 = sub_21D5FB4EC;
      v40 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v36 = 1107296256;
      v37 = sub_21D5F87C8;
      v38 = &block_descriptor_87;
      v21 = _Block_copy(&aBlock);

      v22 = [a5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v21];
      _Block_release(v21);
    }

    else
    {
      sub_21DBF83CC();
      sub_21DBF836C();
      v14(v13, v10);
      v28 = sub_21DBFA12C();

      v29 = [a5 hasItemConformingToTypeIdentifier_];

      if (v29)
      {
        sub_21DBF83CC();
        sub_21DBF836C();
        v14(v13, v10);
        v30 = sub_21DBFA12C();

        v31 = swift_allocObject();
        *(v31 + 16) = v34;
        *(v31 + 24) = a2;
        v39 = sub_21D5FB4E4;
        v40 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_21D5F87C8;
        v38 = &block_descriptor_81;
        v32 = _Block_copy(&aBlock);

        [a5 loadItemForTypeIdentifier:v30 options:0 completionHandler:v32];
        _Block_release(v32);
      }
    }
  }

  else
  {
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE5EDC0);
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Item does not contain image", v26, 2u);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    v27 = type metadata accessor for TTRAttachmentInfo();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v34(v9);
    sub_21D0CF7E0(v9, &qword_27CE5EE48);
  }
}

uint64_t sub_21D5F7F84(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v44[1] = a4;
  v45 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v44 - v7;
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRAttachmentInfo();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = v44 - v19;
  if (a2)
  {
    v21 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_27CE5EDC0);
    v23 = a2;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v46[0] = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_21DBFC74C();
      v30 = sub_21D0CDFB4(v28, v29, v46);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21D0C9000, v24, v25, "Unable to load image from item provider {error: %s}", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    (*(v14 + 56))(v20, 1, 1, v13);
    v45(v20);

    return sub_21D0CF7E0(v20, &qword_27CE5EE48);
  }

  if (!a1)
  {
    (*(v10 + 56))(v8, 1, 1, v9, v18);
LABEL_11:
    sub_21D0CF7E0(v8, &qword_27CE5EA20);
LABEL_12:
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v34 = sub_21DBF84AC();
    v35 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v46[0] = v37;
      *v36 = 136315138;
      v47 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE50);
      v38 = sub_21DBFA1AC();
      v40 = sub_21D0CDFB4(v38, v39, v46);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_21D0C9000, v34, v35, "unable to convert item to Data %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223D46520](v37, -1, -1);
      MEMORY[0x223D46520](v36, -1, -1);
    }

    (*(v14 + 56))(v20, 1, 1, v13);
    v45(v20);
    return sub_21D0CF7E0(v20, &qword_27CE5EE48);
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    *v16 = v31;
    swift_storeEnumTagMultiPayload();
    sub_21D5FBAB8(v16, v20, type metadata accessor for TTRAttachmentInfo);
    (*(v14 + 56))(v20, 0, 1, v13);
    swift_unknownObjectRetain();
    v45(v20);
    sub_21D0CF7E0(v20, &qword_27CE5EE48);
    return sub_21D5FBB20(v16, type metadata accessor for TTRAttachmentInfo);
  }

  v47 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20);
  if (swift_dynamicCast())
  {
    v41 = v46[0];
    v42 = v46[1];
    *v16 = v46[0];
    v16[1] = v42;
    swift_storeEnumTagMultiPayload();
    sub_21D5FBAB8(v16, v20, type metadata accessor for TTRAttachmentInfo);
    (*(v14 + 56))(v20, 0, 1, v13);
    sub_21D1BAF70(v41, v42);
    v45(v20);
    sub_21D17B8A8(v41, v42);
    sub_21D0CF7E0(v20, &qword_27CE5EE48);
    return sub_21D5FBB20(v16, type metadata accessor for TTRAttachmentInfo);
  }

  v46[0] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20);
  v43 = swift_dynamicCast();
  (*(v10 + 56))(v8, v43 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, v8, v9);
  if ((sub_21DBF532C() & 1) == 0)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_12;
  }

  (*(v10 + 16))(v16, v12, v9);
  swift_storeEnumTagMultiPayload();
  sub_21D5FBAB8(v16, v20, type metadata accessor for TTRAttachmentInfo);
  (*(v14 + 56))(v20, 0, 1, v13);
  v45(v20);
  sub_21D0CF7E0(v20, &qword_27CE5EE48);
  sub_21D5FBB20(v16, type metadata accessor for TTRAttachmentInfo);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21D5F87C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_21D5F8848(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = aBlock - v9;
  v11 = sub_21DBF843C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF83BC();
  sub_21DBF836C();
  (*(v12 + 8))(v14, v11);
  v15 = sub_21DBFA12C();

  LODWORD(v11) = [a5 hasItemConformingToTypeIdentifier_];

  if (v11)
  {
    sub_21D0D8CF0(0, &qword_27CE5EE60);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    aBlock[4] = sub_21D5FB4B4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D5F87C8;
    aBlock[3] = &block_descriptor_75_0;
    v18 = _Block_copy(aBlock);

    v19 = [a5 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v18];
    _Block_release(v18);
  }

  else
  {
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v20 = sub_21DBF84BC();
    __swift_project_value_buffer(v20, qword_27CE5EDC0);
    v21 = sub_21DBF84AC();
    v22 = sub_21DBFAEBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_21D0C9000, v21, v22, "Item does not contain URL", v23, 2u);
      MEMORY[0x223D46520](v23, -1, -1);
    }

    v24 = type metadata accessor for TTRAttachmentInfo();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    a1(v10);
    sub_21D0CF7E0(v10, &qword_27CE5EE48);
  }
}

uint64_t sub_21D5F8BC0(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, const char *a5)
{
  v42 = a5;
  v44 = a4;
  v45 = a3;
  v43 = type metadata accessor for TTRAttachmentInfo();
  v7 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_21DBF54CC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v22 = sub_21DBF84BC();
    __swift_project_value_buffer(v22, qword_27CE5EDC0);
    v23 = a2;
    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEBC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v47 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = sub_21DBFC74C();
      v30 = sub_21D0CDFB4(v28, v29, &v47);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_21D0C9000, v24, v25, v42, v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v26, -1, -1);
    }

    (*(v7 + 56))(v12, 1, 1, v43);
    v45(v12);
  }

  else
  {
    if (a1)
    {
      v47 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE70);
      v31 = swift_dynamicCast();
      (*(v17 + 56))(v15, v31 ^ 1u, 1, v16);
      if ((*(v17 + 48))(v15, 1, v16) != 1)
      {
        (*(v17 + 32))(v20, v15, v16);
        (*(v17 + 16))(v9, v20, v16);
        v32 = v43;
        swift_storeEnumTagMultiPayload();
        sub_21D5FBAB8(v9, v12, type metadata accessor for TTRAttachmentInfo);
        (*(v7 + 56))(v12, 0, 1, v32);
        v45(v12);
        sub_21D0CF7E0(v12, &qword_27CE5EE48);
        sub_21D5FBB20(v9, type metadata accessor for TTRAttachmentInfo);
        return (*(v17 + 8))(v20, v16);
      }
    }

    else
    {
      (*(v17 + 56))(v15, 1, 1, v16, v18);
    }

    sub_21D0CF7E0(v15, &qword_27CE5EA20);
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v35 = sub_21DBF84AC();
    v36 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v46 = a1;
      v47 = v38;
      *v37 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE68);
      v39 = sub_21DBFA1AC();
      v41 = sub_21D0CDFB4(v39, v40, &v47);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_21D0C9000, v35, v36, "unable to convert item to URL %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x223D46520](v38, -1, -1);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    (*(v7 + 56))(v12, 1, 1, v43);
    v45(v12);
  }

  return sub_21D0CF7E0(v12, &qword_27CE5EE48);
}

uint64_t sub_21D5F9240(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for TTRAttachmentInfo();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v42 - v13;
  if (a2)
  {
    v15 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE5EDC0);
    v17 = a2;
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v43 = v8;
      v21 = v20;
      v22 = swift_slowAlloc();
      v42 = a4;
      v23 = a3;
      v24 = v22;
      v45 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v25 = sub_21DBFC74C();
      v27 = sub_21D0CDFB4(v25, v26, &v45);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_21D0C9000, v18, v19, "unable to load URL from item provider {error: %s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v28 = v24;
      a3 = v23;
      MEMORY[0x223D46520](v28, -1, -1);
      v29 = v21;
      v8 = v43;
      MEMORY[0x223D46520](v29, -1, -1);
    }

    (*(v9 + 56))(v14, 1, 1, v8);
    a3(v14);
  }

  else
  {
    if (a1)
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        *v11 = v30;
        swift_storeEnumTagMultiPayload();
        sub_21D5FBAB8(v11, v14, type metadata accessor for TTRAttachmentInfo);
        (*(v9 + 56))(v14, 0, 1, v8);
        swift_unknownObjectRetain();
        a3(v14);
        sub_21D0CF7E0(v14, &qword_27CE5EE48);
        return sub_21D5FBB20(v11, type metadata accessor for TTRAttachmentInfo);
      }
    }

    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v33 = sub_21DBF84AC();
    v34 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v43 = v8;
      v37 = v36;
      v44 = a1;
      v45 = v36;
      *v35 = 136315138;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE50);
      v38 = sub_21DBFA1AC();
      v40 = sub_21D0CDFB4(v38, v39, &v45);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_21D0C9000, v33, v34, "unable to convert item to Attributed String %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      v41 = v37;
      v8 = v43;
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v35, -1, -1);
    }

    (*(v9 + 56))(v14, 1, 1, v8);
    a3(v14);
  }

  return sub_21D0CF7E0(v14, &qword_27CE5EE48);
}

void sub_21D5F972C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(__n128), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33[1] = a7;
  v34 = a8;
  v35 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v33 - v13;
  v15 = sub_21DBF843C();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  a6(v17);
  sub_21DBF836C();
  v20 = *(v16 + 8);
  v20(v19, v15);
  v21 = sub_21DBFA12C();

  v22 = [a5 hasItemConformingToTypeIdentifier_];

  if (v22)
  {
    (a6)();
    sub_21DBF836C();
    v20(v19, v15);
    v23 = sub_21DBFA12C();

    v24 = swift_allocObject();
    v25 = v34;
    *(v24 + 16) = v35;
    *(v24 + 24) = a2;
    aBlock[4] = v25;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D5F87C8;
    aBlock[3] = a9;
    v26 = _Block_copy(aBlock);

    [a5 loadItemForTypeIdentifier:v23 options:0 completionHandler:v26];
    _Block_release(v26);
  }

  else
  {
    v27 = v35;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v28 = sub_21DBF84BC();
    __swift_project_value_buffer(v28, qword_27CE5EDC0);
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21D0C9000, v29, v30, "Item does not contain plain text", v31, 2u);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    v32 = type metadata accessor for TTRAttachmentInfo();
    (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
    v27(v14);
    sub_21D0CF7E0(v14, &qword_27CE5EE48);
  }
}

uint64_t sub_21D5F9ABC(uint64_t a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for TTRAttachmentInfo();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE48);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v44 - v13;
  if (a2)
  {
    v15 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE5EDC0);
    v17 = a2;
    v18 = sub_21DBF84AC();
    v19 = sub_21DBFAEBC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v45 = v8;
      v21 = v20;
      v22 = swift_slowAlloc();
      v44[1] = a4;
      v23 = a3;
      v24 = v22;
      v46 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v25 = sub_21DBFC74C();
      v27 = sub_21D0CDFB4(v25, v26, &v46);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_21D0C9000, v18, v19, "unable to load URL from item provider {error: %s}", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v28 = v24;
      a3 = v23;
      MEMORY[0x223D46520](v28, -1, -1);
      v29 = v21;
      v8 = v45;
      MEMORY[0x223D46520](v29, -1, -1);
    }

    (*(v9 + 56))(v14, 1, 1, v8);
    a3(v14);
  }

  else
  {
    if (a1)
    {
      v47 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE64D20);
      if (swift_dynamicCast())
      {
        v30 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v31 = sub_21DBFA12C();

        v32 = [v30 initWithString_];

        *v11 = v32;
        swift_storeEnumTagMultiPayload();
        sub_21D5FBAB8(v11, v14, type metadata accessor for TTRAttachmentInfo);
        (*(v9 + 56))(v14, 0, 1, v8);
        a3(v14);
        sub_21D0CF7E0(v14, &qword_27CE5EE48);
        return sub_21D5FBB20(v11, type metadata accessor for TTRAttachmentInfo);
      }
    }

    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF84BC();
    __swift_project_value_buffer(v34, qword_27CE5EDC0);
    swift_unknownObjectRetain();
    v35 = sub_21DBF84AC();
    v36 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v8;
      v39 = v38;
      v46 = v38;
      *v37 = 136315138;
      v47 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE50);
      v40 = sub_21DBFA1AC();
      v42 = sub_21D0CDFB4(v40, v41, &v46);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_21D0C9000, v35, v36, "unable to convert item to String %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      v43 = v39;
      v8 = v45;
      MEMORY[0x223D46520](v43, -1, -1);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    (*(v9 + 56))(v14, 1, 1, v8);
    a3(v14);
  }

  return sub_21D0CF7E0(v14, &qword_27CE5EE48);
}

void sub_21D5FA010(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  if (a6)
  {
    if (a7)
    {
      v13 = a7;

      sub_21DBF8E0C();

      sub_21D0D8CF0(0, &qword_280D17760);
      v14 = v13;
      v15 = sub_21DBFB3DC();

      v22[0] = v15;
      a1(v22);

LABEL_6:
      return;
    }

    v17 = objc_allocWithZone(MEMORY[0x277CBFBE8]);

    sub_21DBF8E0C();
    v18 = [v17 init];
    v19 = sub_21DBFA12C();
    v20 = swift_allocObject();
    v20[2] = sub_21D5FBBE4;
    v20[3] = v12;
    v20[4] = a5;
    v20[5] = a6;
    v22[4] = sub_21D5FB3D0;
    v22[5] = v20;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_21D887FEC;
    v22[3] = &block_descriptor_64;
    v21 = _Block_copy(v22);

    [v18 geocodeAddressString:v19 completionHandler:v21];
    _Block_release(v21);
  }

  else
  {

    if (a7)
    {
      sub_21D0D8CF0(0, &qword_280D17760);
      v16 = a7;
      v15 = sub_21DBFB3DC();
      v22[0] = v15;
      a1(v22);

      goto LABEL_6;
    }

    v22[0] = 0;
    a1(v22);
  }
}

void sub_21D5FA290(unint64_t a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5EDC0);
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAE9C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = a3;
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 136315138;
      v29 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
      sub_21DBFC14C();
      v13 = sub_21D0CDFB4(0, 0xE000000000000000, &v29);

      *(v11 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v8, v9, "Geocoding failed: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223D46520](v12, -1, -1);
      v14 = v11;
      a3 = v10;
      MEMORY[0x223D46520](v14, -1, -1);
    }

    v15 = objc_allocWithZone(MEMORY[0x277D44868]);
    v16 = sub_21DBFA12C();
    v17 = [v15 initWithTitle_];

    a3(v17);
    return;
  }

  if (a1)
  {
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
      v24 = a1;
      v25 = sub_21DBFBD7C();
      a1 = v24;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x223D44740](0, a1);
      }

      else
      {
        if (!*(v18 + 16))
        {
          __break(1u);
          return;
        }

        v19 = *(a1 + 32);
      }

      v20 = v19;
      v21 = [v19 name];
      if (v21)
      {
        v22 = v21;
        sub_21DBFA16C();
      }

      sub_21D0D8CF0(0, &qword_280D17760);
      v23 = [v20 location];
      v28 = sub_21DBFB3DC();

      a3(v28);

      goto LABEL_18;
    }
  }

  v26 = objc_allocWithZone(MEMORY[0x277D44868]);
  v27 = sub_21DBFA12C();
  v28 = [v26 initWithTitle_];

  a3(v28);
LABEL_18:
}

uint64_t sub_21D5FA644(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong[5];
    v12 = Strong[6];
    __swift_project_boxed_opaque_existential_1(Strong + 2, v11);
    v13 = swift_allocObject();
    v13[2] = sub_21D5FBBA0;
    v13[3] = v9;
    v13[4] = a6;
    v14 = *(v12 + 8);

    v14(sub_21D5FBBD8, v13, v11, v12);
  }

  else
  {

    v16 = 0;
    return a1(&v16);
  }
}

uint64_t objectdestroy_12Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_21D5FA8E4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_21D5F77EC(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, a2, *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_21D5FA9F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21D1BAF70(a1, a2);
  }

  return a1;
}

void sub_21D5FAA04(void *a1, id a2, void (*a3)(void))
{
  if (a2)
  {
    v5 = a2;
    if (qword_27CE56AB0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE5EDC0);
    v7 = a2;
    v8 = sub_21DBF84AC();
    v9 = sub_21DBFAEBC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v26 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_21DBFC75C();
      v14 = sub_21D0CDFB4(v12, v13, &v26);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_21D0C9000, v8, v9, "fetchCurrentUserActivity failed {error: %s}", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223D46520](v11, -1, -1);
      MEMORY[0x223D46520](v10, -1, -1);
    }

    (a3)(0);
  }

  else if (a1)
  {
    v25 = a1;
    v15 = [v25 activityType];
    sub_21DBFA16C();

    LOBYTE(v15) = sub_21DBFA39C();

    if (v15)
    {
      if (qword_27CE56AB0 != -1)
      {
        swift_once();
      }

      v16 = sub_21DBF84BC();
      __swift_project_value_buffer(v16, qword_27CE5EDC0);
      v25 = v25;
      v17 = sub_21DBF84AC();
      v18 = sub_21DBFAEDC();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v26 = v20;
        *v19 = 136315138;
        v21 = NSUserActivity.ttrDescription.getter();
        v23 = sub_21D0CDFB4(v21, v22, &v26);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_21D0C9000, v17, v18, "Reject NSUserActivity: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x223D46520](v20, -1, -1);
        MEMORY[0x223D46520](v19, -1, -1);
      }

      (a3)(0);
    }

    else
    {
      v24 = [objc_allocWithZone(MEMORY[0x277D448F0]) initWithUserActivity_];
      a3();
    }
  }

  else
  {
    a3();
  }
}

uint64_t TTRExtensionContextExtractor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return v0;
}

uint64_t TTRExtensionContextExtractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRReminderEditor.add(attachmentInfos:)(Swift::OpaquePointer attachmentInfos)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EE30);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v25 - v3);
  v5 = type metadata accessor for TTRUnsavedAttachment(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TTRAttachmentInfo();
  MEMORY[0x28223BE20](v29);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = *(attachmentInfos._rawValue + 2);
  if (v14)
  {
    v15 = attachmentInfos._rawValue + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v28 = (v6 + 56);
    v26 = v6;
    v16 = (v6 + 48);
    v17 = MEMORY[0x277D84F90];
    v27 = *(v11 + 72);
    while (1)
    {
      sub_21D5FBAB8(v15, v13, type metadata accessor for TTRAttachmentInfo);
      sub_21D5FBAB8(v13, v9, type metadata accessor for TTRAttachmentInfo);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
        *v4 = *v9;
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_13;
      }

      sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
      sub_21D5FBB20(v9, type metadata accessor for TTRAttachmentInfo);
      v21 = 1;
LABEL_15:
      (*v28)(v4, v21, 1, v5);
      if ((*v16)(v4, 1, v5) == 1)
      {
        sub_21D0CF7E0(v4, &qword_27CE5EE30);
      }

      else
      {
        sub_21D5FBA50(v4, v30, type metadata accessor for TTRUnsavedAttachment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_21D213B54(0, v17[2] + 1, 1, v17);
        }

        v24 = v17[2];
        v23 = v17[3];
        if (v24 >= v23 >> 1)
        {
          v17 = sub_21D213B54(v23 > 1, v24 + 1, 1, v17);
        }

        v17[2] = v24 + 1;
        sub_21D5FBA50(v30, v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, type metadata accessor for TTRUnsavedAttachment);
      }

      v15 += v27;
      if (!--v14)
      {
        goto LABEL_22;
      }
    }

    if (EnumCaseMultiPayload)
    {
LABEL_13:
      sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
      v22 = sub_21DBF54CC();
      (*(*(v22 - 8) + 32))(v4, v9, v22);
    }

    else
    {
      v19 = *v9;
      v20 = v9[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE38);
      *v4 = v19;
      v4[1] = v20;
      sub_21DBF83FC();
      sub_21D5FBB20(v13, type metadata accessor for TTRAttachmentInfo);
    }

LABEL_14:
    swift_storeEnumTagMultiPayload();
    v21 = 0;
    goto LABEL_15;
  }

  v17 = MEMORY[0x277D84F90];
LABEL_22:
  TTRReminderEditor.add(attachments:)(v17);
}