uint64_t sub_21D82414C(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF6F4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &aBlock[-1] - v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    if (v10)
    {
      sub_21DBF8E0C();
      v15 = 0;
      v16 = 0;
      v17 = v10;
    }

    else
    {
      v18 = *MEMORY[0x277D453D8];
      (*(v4 + 104))(v9, *MEMORY[0x277D453D8], v3);
      (*(v4 + 16))(v6, v9, v3);
      v19 = (*(v4 + 88))(v6, v3);
      if (v19 == *MEMORY[0x277D453E0])
      {
        (*(v4 + 8))(v9, v3);
        (*(v4 + 96))(v6, v3);
        v17 = *v6;
        v11 = *(v6 + 1);
        v12 = *(v6 + 2);
        v15 = *(v6 + 3);
        v16 = *(v6 + 4);
      }

      else
      {
        if (v19 != v18)
        {
          goto LABEL_18;
        }

        (*(v4 + 8))(v9, v3);
        v17 = 0;
        v11 = 0;
        v12 = 0;
        v15 = 0;
        v16 = 0;
      }
    }

    __swift_project_boxed_opaque_existential_1(&v14[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router], *&v14[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v21 = v10;
    if (Strong)
    {
      v22 = [Strong navigationController];
      if (v22)
      {
        v23 = v22;
      }
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v33 = objc_opt_self();
    v24 = sub_21DBFA12C();

    v25 = swift_allocObject();
    v25[2] = v14;
    v25[3] = v17;
    v25[4] = v11;
    v25[5] = v12;
    v25[6] = v15;
    v25[7] = v16;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21D830104;
    *(v26 + 24) = v25;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_157;
    v27 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    v28 = v14;
    v29 = v17;
    sub_21DBF8E0C();

    [v33 withActionName:v24 block:v27];

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(&v28[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v28[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
      v31 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v31 + 40) |= 1uLL;
      *(v31 + 48) = 0;
      v32._object = 0x800000021DC49D80;
      v32._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v32);
    }

    __break(1u);
LABEL_18:
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

void sub_21D8246A0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    sub_21D830110(a2, v23);
    v4 = v21;
    v5 = v22;
    v6 = 0;
  }

  else
  {
    v4 = 0uLL;
    v6 = 2;
    v5 = 0uLL;
  }

  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility;
  v8 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v9 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v10 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 24) = v5;
  v13 = *(v7 + 40);
  *(v7 + 40) = v6;
  sub_21D7A98A0(v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  v23[0] = v3;
  v15 = (a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
  v16 = 1;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) > 1u)
  {
    v16 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) != 2;
  }

  else if (!*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40))
  {
    v16 = *v15;
    v17 = *v15;
  }

  ObjectType = swift_getObjectType();
  v24 = v16;
  v19 = *(v14 + 264);
  v20 = v3;
  v19(v23, &v24, ObjectType, v14);
  sub_21D157878(v24);
}

uint64_t sub_21D8247D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong navigationController];
      if (v11)
      {
        v12 = v11;
      }
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v13 = objc_opt_self();
    v14 = sub_21DBFA12C();

    v15 = swift_allocObject();
    *(v15 + 16) = v8;
    *(v15 + 24) = a2;
    *(v15 + 32) = a3;
    *(v15 + 40) = a4 & 1;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_21D8300F4;
    *(v16 + 24) = v15;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_147_0;
    v17 = _Block_copy(aBlock);
    v18 = v8;
    sub_21DBF8E0C();

    [v13 withActionName:v14 block:{v17, 0x800000021DC506C0}];

    _Block_release(v17);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v18[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v18[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
      v20 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v20 + 40) |= 1uLL;
      *(v20 + 48) = 0;
      v21._object = 0x800000021DC49D80;
      v21._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v21);
    }
  }

  return result;
}

void sub_21D824B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility;
  v8 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v9 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v10 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v13 = *(v7 + 40);
  v14 = 1;
  *(v7 + 40) = 1;
  sub_21DBF8E0C();
  sub_21D7A98A0(v8, v9, v10, v11, v12, v13);
  v15 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  v16 = (a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) > 1u)
  {
    v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) != 2;
  }

  else if (!*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40))
  {
    v14 = *v16;
    v17 = *v16;
  }

  ObjectType = swift_getObjectType();
  v21 = v14;
  (*(v15 + 272))(a2, a3, a4 & 1, &v21, ObjectType, v15);
  v19 = v21;

  sub_21D157878(v19);
}

uint64_t sub_21D824C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 96) = a7;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(v7 + 32) = sub_21DBFA84C();
  *(v7 + 40) = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x2822009F8](sub_21D824D14, v9, v8);
}

uint64_t sub_21D824D14()
{
  v0[8] = *(v0[2] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v0[9] = sub_21DBFA83C();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_21D824DE4;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D824DE4()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D824F20, v1, v0);
}

uint64_t sub_21D824F20()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_21D824FCC;

  return sub_21D591090();
}

uint64_t sub_21D824FCC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D8250EC, v3, v2);
}

uint64_t sub_21D8250EC()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
  v4 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  sub_21D82F2A4(v2, v1, v3, v6);

  v7 = *(v0 + 8);

  return v7();
}

void sub_21D8251CC(char a1)
{
  v4 = *(&v1->isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
  v3 = *(&v1[1].isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
  ObjectType = swift_getObjectType();
  v8 = (*(v3 + 16))(ObjectType, v3);
  v6 = [v8 accountCapabilities];
  v7 = [v6 supportsSubtasks];

  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((&v1->isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(&v1[3].isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router));
    sub_21D81B334(v4, v3, a1 & 1, v1, &off_282ED4F50);
  }
}

void sub_21D8252C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for TTRReminderDetailViewModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21DBF54CC();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v52 - v17;
  v18 = *(a1 + 24);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v54 = v18;
    v21 = [v20 fileURL];
    if (v21)
    {
      v22 = v57;
      v23 = v21;
      sub_21DBF546C();

      sub_21D81D608(v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        (*(v58 + 8))(v22, v63);

        sub_21D0CF7E0(v10, &qword_27CE62270);
        return;
      }

      sub_21D82F96C(v10, v14, type metadata accessor for TTRReminderDetailViewModel);
      v25 = *&v14[*(v11 + 128)];
      if (v25)
      {
        v52 = v1;
        v53 = v14;
        v62 = *(v25 + 16);
        if (v62)
        {
          v26 = 0;
          v27 = (v58 + 56);
          v55 = (v58 + 32);
          v56 = (v58 + 48);
          v28 = (v25 + 56);
          v59 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v26 >= *(v25 + 16))
            {
              __break(1u);
              return;
            }

            v29 = *(v28 - 3);
            v30 = *v28;
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (v31)
            {
              v32 = v31;
              v33 = v25;
              v34 = v29;
              sub_21DBF8E0C();
              v35 = v30;
              v36 = [v32 fileURL];
              if (v36)
              {
                v37 = v61;
                v38 = v36;
                sub_21DBF546C();

                v39 = 0;
              }

              else
              {
                v39 = 1;
                v37 = v61;
              }

              v40 = v39;
              v41 = v63;
              (*v27)(v37, v40, 1, v63);
              sub_21D57690C(v37, v7);
              v25 = v33;
              if ((*v56)(v7, 1, v41) != 1)
              {
                v42 = *v55;
                (*v55)(v60, v7, v63);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v59 = sub_21D212DAC(0, *(v59 + 2) + 1, 1, v59);
                }

                v44 = *(v59 + 2);
                v43 = *(v59 + 3);
                if (v44 >= v43 >> 1)
                {
                  v59 = sub_21D212DAC(v43 > 1, v44 + 1, 1, v59);
                }

                v45 = v58;
                v46 = v59;
                *(v59 + 2) = v44 + 1;
                v42(&v46[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44], v60, v63);
                v25 = v33;
                goto LABEL_13;
              }
            }

            else
            {
              (*v27)(v7, 1, 1, v63);
            }

            sub_21D0CF7E0(v7, &qword_27CE5EA20);
LABEL_13:
            ++v26;
            v28 += 4;
            if (v62 == v26)
            {
              goto LABEL_27;
            }
          }
        }

        v59 = MEMORY[0x277D84F90];
LABEL_27:
        v47 = v57;
        v48 = v59;
        v49 = sub_21D6D8D9C(v57, v59);
        v14 = v53;
        if ((v50 & 1) == 0)
        {
          v51 = v49;
          __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v52 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
          sub_21D81B800(v48, v51);

          (*(v58 + 8))(v47, v63);
          goto LABEL_31;
        }

        (*(v58 + 8))(v47, v63);
      }

      else
      {
        (*(v58 + 8))(v57, v63);
      }

LABEL_31:
      sub_21D82F904(v14, type metadata accessor for TTRReminderDetailViewModel);
      return;
    }

    v24 = v54;
  }
}

uint64_t sub_21D825944()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 80))(ObjectType, v2))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 8);
  v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 16);
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 24);
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 32);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40);
  v22 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40);
  v16 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  sub_21D7A9830(v22, v4, v5, v6, v7, v8);
  sub_21D7A9830(v9, v10, v11, v12, v13, v14);
  LOBYTE(v9) = _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO2eeoiySbAE_AEtFZ_0(&v22, &v16);
  sub_21D7A98A0(v16, v17, v18, v19, v20, v21);
  sub_21D7A98A0(v22, v23, v24, v25, v26, v27);
  if (v9 & 1) == 0 || (sub_21D825A98() & 1) != 0 || (sub_21D825C94())
  {
    return 1;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate);
  }
}

uint64_t sub_21D825A98()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_21D80A708();
    swift_unknownObjectRelease();
    v1 = *(v0 + 32);

    v2 = qword_27CE8EBC8;
    swift_beginAccess();
    if (*&v1[v2])
    {
      sub_21D0D3954(&v1[v2], v11, &qword_27CE5E8E0);

      v3 = *(&v11[0] + 1);
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v11, &qword_27CE5E8E0);
      ObjectType = swift_getObjectType();
      (*(*(v3 + 8) + 32))(v11, ObjectType);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
LABEL_6:
  sub_21D0D3954(v11, &v16, &qword_27CE62670);
  if (v17)
  {
    sub_21D0D0FD0(&v16, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if ((*(v6 + 16))(v5, v6))
    {
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = (*(v8 + 32))(v7, v8);
    }

    else
    {
      v9 = 0;
    }

    sub_21D0CF7E0(v11, &qword_27CE62670);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_21D0CF7E0(v11, &qword_27CE62670);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21D825C94()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v0 = sub_21D80B484();
    swift_unknownObjectRelease();
    v1 = *(v0 + 32);

    v2 = qword_27CE8EBF0;
    swift_beginAccess();
    if (*&v1[v2])
    {
      sub_21D0D3954(&v1[v2], v11, &qword_27CE5E8F8);

      v3 = *(&v11[0] + 1);
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v11, &qword_27CE5E8F8);
      ObjectType = swift_getObjectType();
      (*(v3 + 56))(v11, ObjectType, v3);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
LABEL_6:
  sub_21D0D3954(v11, &v16, &unk_27CE62660);
  if (v17)
  {
    sub_21D0D0FD0(&v16, v13);
    v5 = v14;
    v6 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if ((*(v6 + 8))(v5, v6))
    {
      v7 = v14;
      v8 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v9 = (*(v8 + 16))(v7, v8);
    }

    else
    {
      v9 = 0;
    }

    sub_21D0CF7E0(v11, &unk_27CE62660);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    sub_21D0CF7E0(v11, &unk_27CE62660);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_21D825E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_21DBFA84C();
  *(v5 + 24) = sub_21DBFA83C();
  *(v5 + 41) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_21D1B4BCC;

  return sub_21D825F60(v5 + 40, (v5 + 41));
}

uint64_t sub_21D825F60(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 74) = *a2;
  sub_21DBFA84C();
  *(v3 + 32) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x2822009F8](sub_21D826000, v5, v4);
}

uint64_t sub_21D826000()
{
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  *(v0 + 56) = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  if (*(v1 + v2))
  {

    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 74);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x6574736575716572;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (v8)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x800000021DC62270;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Reminder Detail cancel editing {dismissalState: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 73) = *(v0 + 74);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D5BF194;

    return sub_21D829C04(v0 + 72, (v0 + 73));
  }
}

void sub_21D826274(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  if (!v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState])
  {
    v6 = *a1;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    v11 = v1;
    v12 = (*(v9 + 16))(ObjectType, v9);
    v13 = [v12 objectID];

    *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880);
    *(inited + 48) = v13;
    sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
    sub_21DAEACDC();

    v14 = sub_21DBFA89C();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    sub_21DBFA84C();
    v15 = v11;
    v16 = sub_21DBFA83C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x277D85700];
    *(v17 + 16) = v16;
    *(v17 + 24) = v18;
    *(v17 + 32) = v15;
    *(v17 + 40) = v6;
    sub_21D1B5178(0, 0, v5, &unk_21DC2B670, v17);
  }
}

uint64_t sub_21D826528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_21DBFA84C();
  *(v5 + 24) = sub_21DBFA83C();
  *(v5 + 41) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_21D0EF998;

  return sub_21D8265F8(v5 + 40, (v5 + 41));
}

uint64_t sub_21D8265F8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 74) = *a2;
  sub_21DBFA84C();
  *(v3 + 32) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x2822009F8](sub_21D826698, v5, v4);
}

uint64_t sub_21D826698()
{
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  *(v0 + 56) = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  if (*(v1 + v2))
  {

    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 74);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x6574736575716572;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (v8)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x800000021DC62270;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Reminder Detail commit editing {dismissalState: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 73) = *(v0 + 74);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D5BFB00;

    return sub_21D8295A8(v0 + 72, (v0 + 73));
  }
}

uint64_t sub_21D82690C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationTriggerCancellable) = 0;

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v5 = objc_opt_self();
    v6 = sub_21DBFA12C();

    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v2;
    *(v7 + 32) = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_21D82F8AC;
    *(v8 + 24) = v7;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_87_1;
    v9 = _Block_copy(aBlock);
    v10 = v1;
    v11 = v4;

    [v5 withActionName:v6 block:{v9, 0x800000021DC4FB50}];

    _Block_release(v9);
    LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

    if (v11)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D826BA4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    return (*(v5 + 192))(a1, ObjectType, v5);
  }

  else
  {
    return (*(v5 + 184))(a1, ObjectType, v5);
  }
}

uint64_t sub_21D826C30()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
    v2 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v2 + 48) = 0;
    v3._object = 0x800000021DC49D80;
    v3._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  return result;
}

uint64_t sub_21D826CF4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
    v2 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v2 + 48) = 0;
    v3._object = 0x800000021DC49D80;
    v3._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  return result;
}

void sub_21D826DB0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 >= 2)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_21D0D8CF0(0, &qword_280D17680);
  v7 = v6;
  v8 = [a2 objectID];
  v9 = sub_21DBFB63C();

  if (v9)
  {
    if (v5)
    {
      if (v5 == 1)
      {

        sub_21D0D8CF0(0, &qword_280D1B900);
        v10 = sub_21DBFB12C();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
        sub_21DBF820C();
      }

      v4 = 0;
    }

    else
    {
      v15 = v4;
    }

    if (qword_27CE56C98 != -1)
    {
      swift_once();
    }

    v17 = qword_27CE61920;
    v16 = *algn_27CE61928;
    *a3 = v4;
    a3[1] = v17;
    a3[2] = v16;
    a3[3] = a2;
    sub_21DBF8E0C();

    v18 = a2;
  }

  else
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE62470);
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAECC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21D0C9000, v12, v13, "Thumbnails from attachmentThumbnailsManager are of wrong order", v14, 2u);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

uint64_t sub_21D827060@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (result)
  {
    __swift_project_boxed_opaque_existential_1((result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(result + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
    v4 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v4 + 48) = 0;
    v5._object = 0x800000021DC49D80;
    v5._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_21D827138(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = *a1;
  sub_21DBFA84C();
  *(v2 + 24) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x2822009F8](sub_21D8271D8, v4, v3);
}

uint64_t sub_21D8271D8()
{
  if (*(*(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability) + 34))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 72);
    sub_21DBF516C();
    sub_21DBF516C();
    v2 = sub_21DBFA12C();

    v3 = sub_21DBFA12C();

    v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:{1, 0x800000021DC4D540}];
    *(v0 + 48) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62620);
    v5 = swift_allocObject();
    if (v1)
    {
      *(v5 + 16) = xmmword_21DC08D20;
      v6 = sub_21DBF516C();
      *(v5 + 56) = 1;
      *(v5 + 32) = v6;
      *(v5 + 40) = v7;
      *(v5 + 48) = 0;
      v8 = sub_21DBF516C();
      *(v5 + 88) = 0;
      *(v5 + 64) = v8;
      *(v5 + 72) = v9;
      *(v5 + 80) = 1;
    }

    else
    {
      *(v5 + 16) = xmmword_21DC08D00;
      v12 = sub_21DBF516C();
      *(v5 + 56) = 1;
      *(v5 + 32) = v12;
      *(v5 + 40) = v13;
      *(v5 + 48) = 1;
    }

    *(v0 + 56) = v5;
    __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D8275C0;

    return sub_21D57B138(v4, v5);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(1);
  }
}

uint64_t sub_21D8275C0(char a1)
{
  v2 = *v1;
  *(*v1 + 73) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_21D82770C, v4, v3);
}

uint64_t sub_21D82770C()
{
  v1 = *(v0 + 73);

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t type metadata accessor for TTRIReminderDetailPresenter()
{
  result = qword_27CE62590;
  if (!qword_27CE62590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D827A30()
{
  sub_21D827BEC(319, &unk_27CE625A0, type metadata accessor for TTRHashtagEditorModuleState);
  if (v0 <= 0x3F)
  {
    sub_21D827BEC(319, &qword_27CE621C8, type metadata accessor for TTRReminderDetailViewModel);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D827BEC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D827CFC(uint64_t a1)
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62470);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  return sub_21D454B0C(a1);
}

void sub_21D827E28(char a1, _OWORD *a2)
{
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6[0] = a2[2];
  *(v6 + 9) = *(a2 + 41);
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62470);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  sub_21D456DF4(a1 & 1, v5);
}

uint64_t sub_21D827F28(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE62470);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  return a6(a1 & 1);
}

uint64_t sub_21D82806C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE62470);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  v12[0] = v7;
  v12[1] = v8;
  v13 = v9;
  return a6(v12);
}

uint64_t sub_21D82815C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21D8281E4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D81703C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D828240()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  if (sub_21D825944())
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    v19 = sub_21DBF84AC();
    v6 = sub_21DBFAEDC();
    if (os_log_type_enabled(v19, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v19, v6, "TTRIReminderDetailPresenter: user confirmation is needed for canceling; not auto canceling editing", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    v8 = v19;
  }

  else
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE62470);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "TTRIReminderDetailPresenter: cancel editing because reminder becomes not found", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v13 = sub_21DBFA89C();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_21DBFA84C();
    v14 = v1;
    v15 = sub_21DBFA83C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_21D1B5178(0, 0, v4, &unk_21DC2B5C8, v16);
  }
}

uint64_t sub_21D8284FC()
{
  *(v0 + 16) = sub_21DBFA84C();
  *(v0 + 24) = sub_21DBFA83C();
  *(v0 + 41) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B4BCC;

  return sub_21D825F60(v0 + 40, (v0 + 41));
}

void sub_21D8285C8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability);
  sub_21D458A80(a1);
  *(v3 + 33) = v4 & 1;
  type metadata accessor for TTREarlyAlertUtils();
  static TTREarlyAlertUtils.earlyAlert(from:includeLastUncommittedChange:)(a1, 1, &v6);
  v5 = v7;
  *(v3 + 40) = v6;
  *(v3 + 56) = v5;
  sub_21D453228();
}

uint64_t sub_21D828648()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v1 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v1 + 48) = 0;
  v2._object = 0x800000021DC49D80;
  v2._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
}

void sub_21D8286CC(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a1 setDelegate_];
    *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_prefersHalfPageSheetPresentation) = a2 & 1;
    if ((a2 & 1) != 0 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = v6;
      v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 72);
      sub_21D0D8CF0(0, &unk_27CE62260);
      *(swift_allocObject() + 16) = v8;
      v9 = a1;
      v10 = sub_21DBFB56C();

      [v7 _setWantsBottomAttached_];
      [v7 _setShouldDismissWhenTappedOutside_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_21DC0AA00;
      *(v11 + 32) = v10;
      v12 = objc_opt_self();
      v13 = v10;
      *(v11 + 40) = [v12 largeDetent];
      v14 = sub_21DBFA5DC();

      [v7 setDetents_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_21D828970(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v52 = a5;
  v50 = a4;
  v51 = a3;
  v57 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49[-v7];
  v9 = sub_21DBF66CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-v14];
  v16 = sub_21DBF66BC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v20, a1, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277D45188])
  {
    (*(v17 + 96))(v20, v16);
    (*(v10 + 32))(v15, v20, v9);
    (*(v10 + 16))(v12, v15, v9);
    v22 = (*(v10 + 88))(v12, v9);
    if (v22 == *MEMORY[0x277D451B8])
    {
      goto LABEL_6;
    }

    if (v22 == *MEMORY[0x277D451B0])
    {
      v23 = *&v57[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability];
      sub_21D45340C(1);
      *(v23 + 32) = 0;
      v24 = *(v23 + 16);
      if (v24)
      {
LABEL_5:

        v24(1);
        sub_21D0D0E88(v24);
      }

LABEL_6:
      v25 = objc_opt_self();
      v26 = sub_21DBFA12C();
      [v25 internalErrorWithDebugDescription_];

      swift_willThrow();
      (*(v10 + 8))(v15, v9);
      return v25;
    }

    if (v22 == *MEMORY[0x277D451C0])
    {
      v41 = *&v57[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability];
      sub_21D453F24(1);
      *(v41 + 32) = 1;
      v24 = *(v41 + 16);
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_28:
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v44 = sub_21DBF84BC();
    __swift_project_value_buffer(v44, qword_27CE62470);
    v45 = MEMORY[0x277D84F90];
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21D17716C(v45);
    for (i = "missing case in switch visible"; ; i = "missing case in switch section")
    {
      sub_21DAEAB00(i, 30, 2);
      __break(1u);
LABEL_32:
      if (qword_27CE56D10 != -1)
      {
        swift_once();
      }

      v47 = sub_21DBF84BC();
      __swift_project_value_buffer(v47, qword_27CE62470);
      v48 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v48);
    }
  }

  if (v21 == *MEMORY[0x277D45180])
  {
    v27 = v57;

    v28 = sub_21DBF5FBC();

    if (v28)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_21D82F184;
      *(v30 + 24) = v29;
      v31 = v27;
      v32 = sub_21DBF816C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62678);
      sub_21DBF820C();

      v25 = sub_21DBF81DC();

      return v25;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v21 == *MEMORY[0x277D45190])
  {
    v33 = v57;
    __swift_project_boxed_opaque_existential_1(&v57[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router], *&v57[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24]);
    v35 = *(v33 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
    v34 = *(v33 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    v36 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
    swift_beginAccess();
    sub_21D0D3954(v33 + v36, v8, &unk_27CE622B0);
    ObjectType = swift_getObjectType();
    v38 = (*(v34 + 8))(ObjectType, v34);
    v54 = 0;
    memset(v53, 0, sizeof(v53));
    v55 = xmmword_21DC0A830;
    v56 = 0;
    sub_21D81C504(v35, v34, v8, v33, &off_282ED4F60, v38, v53);

    sub_21D0CF7E0(v8, &unk_27CE622B0);
    v25 = objc_opt_self();
    v39 = sub_21DBFA12C();
    v40 = [v25 internalErrorWithDebugDescription_];
  }

  else if (v21 == *MEMORY[0x277D45198])
  {
    sub_21D81F490(1);
    sub_21D8206E0(v50 & 1);
    v25 = objc_opt_self();
    v39 = sub_21DBFA12C();
    v40 = [v25 internalErrorWithDebugDescription_];
  }

  else if (v21 == *MEMORY[0x277D451A8])
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE62470);
    sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC();

    sub_21D456FFC(v50 & 1);
    v25 = objc_opt_self();
    v39 = sub_21DBFA12C();
    v40 = [v25 internalErrorWithDebugDescription_];
  }

  else if (v21 == *MEMORY[0x277D451A0])
  {
    sub_21D8251CC(v50 & 1);
    v25 = objc_opt_self();
    v39 = sub_21DBFA12C();
    v40 = [v25 internalErrorWithDebugDescription_];
  }

  else
  {
    if (v21 != *MEMORY[0x277D45178])
    {
      goto LABEL_32;
    }

    v25 = objc_opt_self();
    v39 = sub_21DBFA12C();
    v40 = [v25 internalErrorWithDebugDescription_];
  }

  v40;

  swift_willThrow();
  return v25;
}

uint64_t sub_21D8292BC()
{
  v1 = v0;

  v2 = sub_21DBF5FBC();

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21D8304FC;
    *(v5 + 24) = v4;
    v6 = v1;
    v7 = sub_21DBF816C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62678);
    v8 = sub_21DBF820C();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D8293C0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v14 = qword_280D19F88;
  v15 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC66080);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v6 = sub_21DBFA12C();

  v7 = [v5 initWithActivityType_];

  v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  v11 = [v10 objectID];

  *v4 = v11;
  type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  swift_storeEnumTagMultiPayload();
  v12 = v11;
  sub_21D82E57C(v4, v7);

  sub_21D82F904(v4, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload);
  return v7;
}

uint64_t sub_21D8295A8(uint64_t a1, char *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = *a2;
  *(v3 + 81) = *a2;
  *(v3 + 56) = sub_21DBFA84C();
  *(v3 + 64) = sub_21DBFA83C();
  *(v3 + 80) = v4;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_21D829674;

  return sub_21D827138((v3 + 80));
}

uint64_t sub_21D829674(char a1)
{
  *(*v1 + 82) = a1;

  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D8297B8, v3, v2);
}

uint64_t sub_21D8297B8()
{
  v46 = v0;
  v1 = *(v0 + 82);

  if (v1 == 1)
  {
    v2 = *(v0 + 48);
    v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v32 = (*(v3 + 16))(ObjectType, v3);
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_savesOnCommit) == 1)
    {
      if (qword_27CE56D10 != -1)
      {
        swift_once();
      }

      v5 = sub_21DBF84BC();
      __swift_project_value_buffer(v5, qword_27CE62470);
      v6 = v32;
      v7 = sub_21DBF84AC();
      v8 = sub_21DBFAEDC();

      if (os_log_type_enabled(v7, v8))
      {
        v30 = ObjectType;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = [v6 objectID];
        *(v9 + 4) = v11;
        *v10 = v11;
        _os_log_impl(&dword_21D0C9000, v7, v8, "Reminder Detail Save {objectID: %@}", v9, 0xCu);
        sub_21D0CF7E0(v10, &unk_27CE60070);
        MEMORY[0x223D46520](v10, -1, -1);
        v12 = v9;
        ObjectType = v30;
        MEMORY[0x223D46520](v12, -1, -1);
      }

      (*(v3 + 368))(&v40, ObjectType, v3);
      v14 = v40;
      v13 = v41;
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAE9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21D0C9000, v15, v16, "Reminder Detail Save: about to donate reminder update", v17, 2u);
        MEMORY[0x223D46520](v17, -1, -1);
      }

      sub_21DBF60DC();
      v18 = sub_21DBF60CC();
      type metadata accessor for TTRRemindersInteraction();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v20 = v6;
      sub_21D5C4C78(v20, v19);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v22 = *(v0 + 48) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v0 + 81);
      v31 = *(v0 + 48);
      v23 = *(v22 + 8);
      v29 = swift_getObjectType();
      v33 = v14;
      v34 = v13;
      v24 = v14;
      v25 = *(v3 + 64);
      sub_21D82EED8(v24, v13);
      v25(&v35, ObjectType, v3);
      v40 = v35;
      v41 = v36;
      v42 = v37;
      v43 = v38;
      v44 = v39;
      v45 = v28;
      (*(v23 + 32))(v31, &off_282ED5018, &v33, &v40, &v45, v29, v23);
      swift_unknownObjectRelease();

      sub_21D82EF18(v24, v13);
      sub_21D82EF5C(v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1));
      sub_21D82EF18(v33, v34);
    }

    else
    {
      sub_21D82EF18(v14, v13);
    }

    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  **(v0 + 40) = v21;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_21D829C04(uint64_t a1, _BYTE *a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 73) = *a2;
  sub_21DBFA84C();
  *(v3 + 152) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  *(v3 + 160) = v6;
  *(v3 + 168) = v5;

  return MEMORY[0x2822009F8](sub_21D829CE0, v6, v5);
}

uint64_t sub_21D829CE0()
{
  v28 = v0;
  if (sub_21D825944())
  {
    if (*(v0 + 73) == 1)
    {
      v1 = sub_21DBFA12C();
      v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:0];
      *(v0 + 176) = v2;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton);
        v5 = v4;
        swift_unknownObjectRelease();
        if (v4)
        {
          LOBYTE(v26[0]) = 1;
          *(v0 + 16) = v4;
          *(v0 + 24) = 0u;
          *(v0 + 40) = 0u;
          *(v0 + 56) = 64;
          *(v0 + 64) = 0;
          *(v0 + 72) = 1;
          v6 = *(v0 + 32);
          v26[0] = *(v0 + 16);
          v26[1] = v6;
          v27[0] = *(v0 + 48);
          *(v27 + 9) = *(v0 + 57);
          UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v26);
          sub_21D1A9430(v0 + 16);
        }
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(*(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62620);
      v7 = swift_allocObject();
      *(v0 + 184) = v7;
      *(v7 + 16) = xmmword_21DC08D20;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF516C();
      *(v7 + 56) = 1;
      *(v7 + 32) = v8;
      *(v7 + 40) = v9;
      *(v7 + 48) = 2;
      v10 = sub_21DBF516C();
      *(v7 + 88) = 0;
      *(v7 + 64) = v10;
      *(v7 + 72) = v11;
      *(v7 + 80) = 1;
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      *v12 = v0;
      v12[1] = sub_21D82A18C;

      return sub_21D57B138(v2, v7);
    }

    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    sub_21D81D608(v14);
    v16 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
    swift_beginAccess();
    sub_21D0F02F4(v14, v15 + v16, &qword_27CE62270);
    swift_endAccess();
    v17 = *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 8))(ObjectType, v17);
    if ([v19 canUndo])
    {
      do
      {
        [v19 undo];
      }

      while (([v19 canUndo] & 1) != 0);
    }
  }

  else
  {
  }

  v20 = *(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v0 + 73);
    v22 = *(v0 + 136);
    v23 = *(v20 + 8);
    v24 = swift_getObjectType();
    LOBYTE(v26[0]) = v21;
    (*(v23 + 24))(v22, &off_282ED5018, v26, v24, v23);
    swift_unknownObjectRelease();
  }

  **(v0 + 128) = 0;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_21D82A18C(char a1)
{
  v2 = *v1;
  *(*v1 + 74) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_21D82A2D8, v4, v3);
}

uint64_t sub_21D82A2D8()
{
  v18 = v0;
  v1 = *(v0 + 74);
  v2 = *(v0 + 176);

  if (v1 == 2 || (*(v0 + 74) & 1) == 0)
  {
    v14 = 2;
  }

  else
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    sub_21D81D608(v3);
    v5 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
    swift_beginAccess();
    sub_21D0F02F4(v3, v4 + v5, &qword_27CE62270);
    swift_endAccess();
    v6 = *(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(ObjectType, v6);
    if ([v8 canUndo])
    {
      do
      {
        [v8 undo];
      }

      while (([v8 canUndo] & 1) != 0);
    }

    v9 = *(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 73);
      v11 = *(v0 + 136);
      v12 = *(v9 + 8);
      v13 = swift_getObjectType();
      v17 = v10;
      (*(v12 + 24))(v11, &off_282ED5018, &v17, v13, v12);
      swift_unknownObjectRelease();
    }

    v14 = 0;
  }

  **(v0 + 128) = v14;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21D82A500(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D82A56C(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
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

uint64_t sub_21D82A610()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 88))(ObjectType, v1);
}

uint64_t sub_21D82A65C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_21D82A6BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21D82A718(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 352))(a1, a2, ObjectType, v5);
}

uint64_t sub_21D82A780(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D8265F8(a1, a2);
}

uint64_t sub_21D82A828(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D825F60(a1, a2);
}

uint64_t sub_21D82A8D0()
{
  v1 = (*(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper) + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageObserver);
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_21D82A9D0(uint64_t a1, uint64_t a2)
{
  sub_21DBCCF04(a1, a2, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D82AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D82FC78(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor;
  v12 = *(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_editingSessionSharedProperties);
  v13 = swift_allocObject();
  type metadata accessor for TTRReminderDetailEditingSession();
  v18 = *(v4 + v11);
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();

  sub_21DBF56AC();
  sub_21D82F96C(v10, v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v15 = (v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor) = v18;
  *(v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper) = v12;
  v16 = (v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  *v16 = sub_21D82F964;
  v16[1] = v13;
  sub_21DBF8E0C();
  return v14;
}

_BYTE *sub_21D82AC2C(_BYTE *result)
{
  if (*result)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v1 = result;
      __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
      v2 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v2 + 40) |= 1uLL;
      *(v2 + 48) = 0;
      v3._object = 0x800000021DC49D80;
      v3._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
    }
  }

  return result;
}

uint64_t sub_21D82AD18()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v1 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v1 + 40) |= 1uLL;
  *(v1 + 48) = 0;
  v2._object = 0x800000021DC49D80;
  v2._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
}

uint64_t sub_21D82AE20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);

  return a1;
}

uint64_t assignWithCopy for PresenterState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t assignWithTake for PresenterState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresenterState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for PresenterState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D82AFC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D82FC78(a1, &v9 - v4, type metadata accessor for TTRHashtagEditorModuleState);
  v6 = type metadata accessor for TTRHashtagEditorModuleState();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v7, &unk_27CE622B0);
  return swift_endAccess();
}

uint64_t sub_21D82B0EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v24 = v5;
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC09CF0;
    *(v14 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  }

  v15 = a1[3];
  v23[2] = a1[2];
  v23[3] = v15;
  v23[4] = a1[4];
  v16 = a1[1];
  v23[0] = *a1;
  v23[1] = v16;
  sub_21DBF8E0C();
  v17 = TTRParticipantModel.contactHandles.getter();
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  sub_21DBF6A7C();
  v19 = (*(v11 + 88))(v13, v10);
  if (v19 == *MEMORY[0x277D450E0])
  {

    (*(v11 + 96))(v13, v10);
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;

    v21 = sub_21DBF816C();
    sub_21DBF820C();

    return 0;
  }

  if (v19 == *MEMORY[0x277D450E8])
  {

    (*(v11 + 96))(v13, v10);
    return *v13;
  }

  if (v19 == *MEMORY[0x277D450D8])
  {

    (*(v11 + 8))(v13, v10);
    return 0;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D82B400(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DBFC59C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21DBFA69C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_21D82BC80(v7, v8, a1, v4);
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
    return sub_21D82B4F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21D82B4F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 112 * a3);
    v6 = result - a3 + 1;
    v44 = *a4;
    while (2)
    {
      v47 = v5;
      v48 = a3;
      v46 = v6;
      while (1)
      {
        v7 = *v5;
        v8 = v5[2];
        v67 = v5[1];
        v68 = v8;
        v66 = v7;
        v9 = v5[3];
        v10 = v5[4];
        v11 = v5[6];
        v71 = v5[5];
        v72 = v11;
        v69 = v9;
        v70 = v10;
        v12 = *(v5 - 1);
        v14 = *(v5 - 4);
        v13 = *(v5 - 3);
        v78 = *(v5 - 2);
        v79 = v12;
        v76 = v14;
        v77 = v13;
        v15 = *(v5 - 7);
        v16 = *(v5 - 5);
        v74 = *(v5 - 6);
        v75 = v16;
        v73 = v15;
        if (!v66)
        {
          if (!v15)
          {
            result = sub_21D1D9A84(&v73, &v59);
          }

          goto LABEL_36;
        }

        if (!v15)
        {
          result = sub_21D1D9A84(&v73, &v59);
          goto LABEL_5;
        }

        if (v72)
        {
          goto LABEL_5;
        }

        if ((v79 & 1) == 0)
        {
          break;
        }

LABEL_36:
        if (!v4)
        {
          __break(1u);
          return result;
        }

        v33 = v5 - 7;
        v62 = v5[3];
        v63 = v5[4];
        v64 = v5[5];
        v65 = v5[6];
        v59 = *v5;
        v60 = v5[1];
        v61 = v5[2];
        v34 = *(v5 - 6);
        *v5 = *(v5 - 7);
        v5[1] = v34;
        v35 = *(v5 - 1);
        v5[5] = *(v5 - 2);
        v5[6] = v35;
        v36 = *(v5 - 3);
        v5[3] = *(v5 - 4);
        v5[4] = v36;
        v5[2] = *(v5 - 5);
        v37 = v59;
        v38 = v61;
        v33[1] = v60;
        v33[2] = v38;
        *v33 = v37;
        v39 = v62;
        v40 = v63;
        v41 = v65;
        v33[5] = v64;
        v33[6] = v41;
        v33[3] = v39;
        v33[4] = v40;
        if (!v6)
        {
          goto LABEL_5;
        }

        ++v6;
        v5 -= 7;
      }

      v17 = *(&v67 + 1);
      v19 = *(&v74 + 1);
      v18 = v74;
      v55 = v76;
      v56 = v75;
      v57 = *(&v76 + 1);
      v58 = *(&v75 + 1);
      v51 = v77;
      v20 = *(&v78 + 1);
      v50 = v78;
      if (*(&v67 + 1))
      {
        v21 = v67;
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        v22 = v17;
        if (!v19)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = v74;
        v23 = v68;
        v24 = v69;
        v45 = v70;
        v52 = *(&v71 + 1);
        v54 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
        v25 = swift_allocObject();
        v25[1] = xmmword_21DC08D20;
        v25[2] = v23;
        v25[3] = v24;
        v80 = v25;
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
        sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
        v26 = sub_21DBFA41C();

        if (*(v26 + 16))
        {
          *&v59 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
          sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
          v21 = sub_21DBFA07C();
          v22 = v27;

          v4 = v44;
          v19 = *(&v49 + 1);
          v18 = v49;
          if (!*(&v49 + 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v22 = v52;
          v21 = v54;

          v18 = v49;
          if (*(&v45 + 1))
          {
            v21 = v45;
            v22 = sub_21DBF8E0C();
            v4 = v44;
            v19 = *(&v49 + 1);
            if (!*(&v49 + 1))
            {
              goto LABEL_28;
            }
          }

          else
          {
            v4 = v44;
            v19 = *(&v49 + 1);
            if (v52)
            {
              sub_21DBF8E0C();
              if (!*(&v49 + 1))
              {
LABEL_28:
                v53 = v22;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
                v29 = swift_allocObject();
                *(v29 + 16) = xmmword_21DC08D20;
                *(v29 + 32) = v56;
                *(v29 + 40) = v58;
                *(v29 + 48) = v55;
                *(v29 + 56) = v57;
                *&v59 = v29;
                sub_21DBF8E0C();
                sub_21DBF8E0C();
                sub_21DBF8E0C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
                sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
                v30 = sub_21DBFA41C();

                if (*(v30 + 16))
                {
                  *&v59 = v30;
                  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
                  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
                  v18 = sub_21DBFA07C();
                  v20 = v31;
                }

                else
                {

                  if (!*(&v51 + 1))
                  {
                    v22 = v53;
                    if (v20)
                    {
                      sub_21DBF8E0C();
                      v18 = v50;
                    }

                    else
                    {
                      if (qword_280D1BAA8 != -1)
                      {
                        swift_once();
                      }

                      v18 = sub_21DBF516C();
                      v20 = v42;
                    }

                    goto LABEL_33;
                  }

                  v18 = v51;
                  v20 = sub_21DBF8E0C();
                }

                v22 = v53;
LABEL_33:
                if (v21 == v18 && v22 == v20)
                {
                  sub_21DBF8E0C();

                  sub_21D1D9AE0(&v73);
                  sub_21D1D9AE0(&v66);

                  sub_21D1D9AE0(&v73);
                  result = sub_21D1D9AE0(&v66);
LABEL_5:
                  a3 = v48 + 1;
                  v5 = v47 + 7;
                  v6 = v46 - 1;
                  if (v48 + 1 == a2)
                  {
                    return result;
                  }

                  continue;
                }

                v32 = sub_21DBFC64C();
                sub_21DBF8E0C();

                sub_21D1D9AE0(&v73);
                sub_21D1D9AE0(&v66);

                sub_21D1D9AE0(&v73);
                result = sub_21D1D9AE0(&v66);
                if ((v32 & 1) == 0)
                {
                  goto LABEL_5;
                }

                goto LABEL_36;
              }
            }

            else
            {
              if (qword_280D1BAA8 != -1)
              {
                swift_once();
              }

              v21 = sub_21DBF516C();
              v22 = v28;
              if (!*(&v49 + 1))
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      break;
    }

    sub_21DBF8E0C();
    v20 = v19;
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_21D82BC80(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v165 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_180:
    __src = *v165;
    if (!*v165)
    {
      goto LABEL_219;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_182;
    }

    goto LABEL_213;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v8 + 1;
    v182 = v9;
    if (v8 + 1 >= v7)
    {
      v25 = v8;
      goto LABEL_79;
    }

    v11 = *v6;
    v12 = (*v6 + 112 * v10);
    v13 = *v12;
    v14 = v12[2];
    v211 = v12[1];
    v212 = v14;
    v210 = v13;
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[6];
    v215 = v12[5];
    v216 = v17;
    v213 = v15;
    v214 = v16;
    v166 = v8;
    v18 = (v11 + 112 * v8);
    v19 = v18[6];
    v21 = v18[3];
    v20 = v18[4];
    v222 = v18[5];
    v223 = v19;
    v220 = v21;
    v221 = v20;
    v22 = *v18;
    v23 = v18[2];
    v218 = v18[1];
    v219 = v23;
    v217 = v22;
    if (!v210)
    {
      if (!v217)
      {
        result = sub_21D1D9A84(&v217, &v203);
      }

LABEL_14:
      v24 = 1;
      goto LABEL_15;
    }

    *&v201[32] = *(v18 + 40);
    *&v201[48] = *(v18 + 56);
    *&v201[64] = *(v18 + 72);
    *&v201[80] = *(v18 + 11);
    *v201 = *(v18 + 8);
    *&v201[16] = *(v18 + 24);
    if (!v217)
    {
      result = sub_21D1D9A84(&v217, &v203);
      v24 = 0;
      goto LABEL_15;
    }

    if ((v216 & 1) == 0)
    {
      if ((v223 & 1) == 0)
      {
        v199[2] = v213;
        v199[3] = v214;
        v199[4] = v215;
        v199[0] = v211;
        v199[1] = v212;
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        v63 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
        v205 = *&v201[40];
        v206 = *&v201[56];
        v207 = *&v201[72];
        v203 = *&v201[8];
        v204 = *&v201[24];
        v64 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
        if (v63._countAndFlagsBits == v64._countAndFlagsBits && v63._object == v64._object)
        {

          sub_21D1D9AE0(&v217);
          sub_21D1D9AE0(&v210);

          sub_21D1D9AE0(&v217);
          result = sub_21D1D9AE0(&v210);
          v24 = 0;
        }

        else
        {
          v65 = sub_21DBFC64C();

          sub_21D1D9AE0(&v217);
          sub_21D1D9AE0(&v210);
          v24 = v65;

          sub_21D1D9AE0(&v217);
          result = sub_21D1D9AE0(&v210);
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v24 = 0;
LABEL_15:
    v10 = v8 + 2;
    if (v8 + 2 >= v7)
    {
LABEL_63:
      v25 = v166;
      if (v24)
      {
        if (v10 < v166)
        {
          goto LABEL_210;
        }

        goto LABEL_65;
      }

LABEL_78:
      v9 = v182;
      goto LABEL_79;
    }

    v26 = (v11 + 112 * v8 + 224);
    v196 = v24;
    while (1)
    {
      v27 = *v26;
      v28 = v26[2];
      *&v201[16] = v26[1];
      *&v201[32] = v28;
      *v201 = v27;
      v29 = v26[3];
      v30 = v26[4];
      v31 = v26[6];
      *&v201[80] = v26[5];
      v202 = v31;
      *&v201[48] = v29;
      *&v201[64] = v30;
      v32 = *(v26 - 1);
      v34 = *(v26 - 4);
      v33 = *(v26 - 3);
      v208 = *(v26 - 2);
      v209 = v32;
      v206 = v34;
      v207 = v33;
      v35 = *(v26 - 7);
      v36 = *(v26 - 5);
      v204 = *(v26 - 6);
      v205 = v36;
      v203 = v35;
      if (!*v201)
      {
        if (v35)
        {
          if ((v24 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          result = sub_21D1D9A84(&v203, v199);
          if ((v24 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_19;
      }

      if (!v35)
      {
        result = sub_21D1D9A84(&v203, v199);
        if (v24)
        {
          goto LABEL_63;
        }

        goto LABEL_19;
      }

      if (v202)
      {
        if (v24)
        {
          break;
        }

        goto LABEL_19;
      }

      if (v209)
      {
        if ((v24 & 1) == 0)
        {
          v25 = v166;
          goto LABEL_78;
        }

        goto LABEL_19;
      }

      v37 = *&v201[24];
      v38 = *(&v204 + 1);
      v9 = v204;
      v186 = v206;
      v188 = v205;
      v190 = *(&v206 + 1);
      v192 = *(&v205 + 1);
      v179 = v207;
      v39 = *(&v208 + 1);
      v178 = v208;
      if (*&v201[24])
      {
        __src = *&v201[16];
        sub_21D1D9A84(&v203, v199);
        sub_21D1D9A84(v201, v199);
        sub_21D1D9A84(&v203, v199);
        sub_21D1D9A84(v201, v199);
        v40 = v37;
        goto LABEL_39;
      }

      v174 = v204;
      v176 = v10;
      v183 = *(&v208 + 1);
      v194 = *(&v204 + 1);
      v162 = v5;
      v41 = *&v201[32];
      v42 = *&v201[48];
      v172 = *&v201[64];
      v43 = *&v201[88];
      __src = *&v201[80];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
      v44 = swift_allocObject();
      v44[1] = xmmword_21DC08D20;
      v44[2] = v41;
      v44[3] = v42;
      v200 = v44;
      sub_21D1D9A84(&v203, v199);
      sub_21D1D9A84(v201, v199);
      sub_21D1D9A84(&v203, v199);
      sub_21D1D9A84(v201, v199);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
      sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
      v45 = sub_21DBFA41C();

      if (*(v45 + 16))
      {
        *&v199[0] = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
        __src = sub_21DBFA07C();
        v47 = v46;

        v40 = v47;
        v5 = v162;
        v6 = a3;
LABEL_38:
        v9 = v174;
        v10 = v176;
        v38 = v194;
        v39 = v183;
        goto LABEL_39;
      }

      v5 = v162;
      v6 = a3;
      v40 = *(&v172 + 1);
      if (*(&v172 + 1))
      {
        sub_21DBF8E0C();
        __src = v172;
        goto LABEL_38;
      }

      v38 = v194;
      v39 = v183;
      if (v43)
      {
        v40 = v43;
        sub_21DBF8E0C();
        v9 = v174;
      }

      else
      {
        v9 = v174;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        __src = sub_21DBF516C();
        v40 = v55;
      }

LABEL_39:
      if (v38)
      {
        sub_21DBF8E0C();
        v48 = v38;
LABEL_45:
        v52 = __src;
        goto LABEL_46;
      }

      v184 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_21DC08D20;
      *(v49 + 32) = v188;
      *(v49 + 40) = v192;
      *(v49 + 48) = v186;
      *(v49 + 56) = v190;
      *&v199[0] = v49;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
      sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
      v50 = sub_21DBFA41C();

      if (*(v50 + 16))
      {
        *&v199[0] = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
        v9 = sub_21DBFA07C();
        v48 = v51;

        goto LABEL_45;
      }

      v48 = *(&v179 + 1);
      if (*(&v179 + 1))
      {
        sub_21DBF8E0C();
        v9 = v179;
        goto LABEL_45;
      }

      v48 = v184;
      if (v184)
      {
        sub_21DBF8E0C();
        v52 = __src;
        v9 = v178;
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v9 = sub_21DBF516C();
        v48 = v56;
        v52 = __src;
      }

LABEL_46:
      if (v52 != v9 || v40 != v48)
      {
        v9 = v40;
        v53 = sub_21DBFC64C();
        sub_21DBF8E0C();

        sub_21D1D9AE0(&v203);
        sub_21D1D9AE0(v201);

        sub_21D1D9AE0(&v203);
        result = sub_21D1D9AE0(v201);
        v54 = v196 ^ v53;
        v24 = v196;
        if (v54)
        {
          goto LABEL_63;
        }

        goto LABEL_19;
      }

      sub_21DBF8E0C();

      sub_21D1D9AE0(&v203);
      sub_21D1D9AE0(v201);

      sub_21D1D9AE0(&v203);
      result = sub_21D1D9AE0(v201);
      v24 = v196;
      if (v196)
      {
        break;
      }

LABEL_19:
      ++v10;
      v26 += 7;
      if (v7 == v10)
      {
        v10 = v7;
        goto LABEL_63;
      }
    }

    v25 = v166;
    if (v10 < v166)
    {
      goto LABEL_210;
    }

LABEL_65:
    if (v25 >= v10)
    {
      goto LABEL_78;
    }

    v57 = v10;
    v58 = 112 * v10 - 112;
    v59 = 112 * v25;
    v60 = v57;
    v9 = v182;
    do
    {
      if (v25 != --v57)
      {
        v61 = *v6;
        if (!*v6)
        {
          goto LABEL_216;
        }

        v62 = (v61 + v58);
        v206 = *(v61 + v59 + 48);
        v207 = *(v61 + v59 + 64);
        v208 = *(v61 + v59 + 80);
        v209 = *(v61 + v59 + 96);
        v203 = *(v61 + v59);
        v204 = *(v61 + v59 + 16);
        v205 = *(v61 + v59 + 32);
        result = memmove((v61 + v59), (v61 + v58), 0x70uLL);
        v62[3] = v206;
        v62[4] = v207;
        v62[5] = v208;
        v62[6] = v209;
        *v62 = v203;
        v62[1] = v204;
        v62[2] = v205;
      }

      ++v25;
      v58 -= 112;
      v59 += 112;
    }

    while (v25 < v57);
    v10 = v60;
    v25 = v166;
LABEL_79:
    v66 = *(v6 + 8);
    if (v10 >= v66)
    {
      goto LABEL_129;
    }

    if (__OFSUB__(v10, v25))
    {
      goto LABEL_209;
    }

    if (v10 - v25 >= a4)
    {
      goto LABEL_129;
    }

    if (__OFADD__(v25, a4))
    {
      goto LABEL_211;
    }

    if (v25 + a4 < v66)
    {
      v66 = v25 + a4;
    }

    if (v66 < v25)
    {
LABEL_212:
      __break(1u);
LABEL_213:
      result = sub_21D82E300(v9);
      v9 = result;
LABEL_182:
      v155 = v5;
      v156 = (v9 + 16);
      v157 = *(v9 + 16);
      if (v157 < 2)
      {
      }

      while (1)
      {
        v158 = *v6;
        if (!*v6)
        {
          break;
        }

        v159 = v9;
        v5 = (v9 + 16 * v157);
        v9 = *v5;
        v160 = &v156[2 * v157];
        v6 = v160[1];
        sub_21D82D280((v158 + 112 * *v5), (v158 + 112 * *v160), (v158 + 112 * v6), __src);
        if (v155)
        {
        }

        if (v6 < v9)
        {
          goto LABEL_205;
        }

        if (v157 - 2 >= *v156)
        {
          goto LABEL_206;
        }

        *v5 = v9;
        v5[1] = v6;
        v161 = *v156 - v157;
        if (*v156 < v157)
        {
          goto LABEL_207;
        }

        v157 = *v156 - 1;
        result = memmove(v160, v160 + 2, 16 * v161);
        *v156 = v157;
        v6 = a3;
        v9 = v159;
        if (v157 <= 1)
        {
        }
      }

LABEL_217:
      __break(1u);
      break;
    }

    if (v10 == v66)
    {
      goto LABEL_129;
    }

    v169 = v66;
    v163 = v5;
    v67 = *v6;
    v167 = v25;
    v68 = v25 - v10;
    v69 = (*v6 + 112 * v10);
    v70 = v68 + 1;
    v170 = v67;
    while (2)
    {
      v175 = v69;
      v177 = v10;
      v173 = v70;
      while (2)
      {
        v71 = *v69;
        v72 = v69[2];
        v211 = v69[1];
        v212 = v72;
        v210 = v71;
        v73 = v69[3];
        v74 = v69[4];
        v75 = v69[6];
        v215 = v69[5];
        v216 = v75;
        v213 = v73;
        v214 = v74;
        v76 = *(v69 - 1);
        v78 = *(v69 - 4);
        v77 = *(v69 - 3);
        v222 = *(v69 - 2);
        v223 = v76;
        v220 = v78;
        v221 = v77;
        v79 = *(v69 - 7);
        v80 = *(v69 - 5);
        v218 = *(v69 - 6);
        v219 = v80;
        v217 = v79;
        if (!v210)
        {
          if (!v79)
          {
            result = sub_21D1D9A84(&v217, &v203);
          }

          goto LABEL_112;
        }

        if (!v79)
        {
          result = sub_21D1D9A84(&v217, &v203);
          goto LABEL_89;
        }

        if (v216)
        {
          goto LABEL_89;
        }

        if (v223)
        {
LABEL_112:
          if (v67)
          {
            v97 = v69 - 7;
            v206 = v69[3];
            v207 = v69[4];
            v208 = v69[5];
            v209 = v69[6];
            v203 = *v69;
            v204 = v69[1];
            v205 = v69[2];
            v98 = *(v69 - 6);
            *v69 = *(v69 - 7);
            v69[1] = v98;
            v99 = *(v69 - 1);
            v69[5] = *(v69 - 2);
            v69[6] = v99;
            v100 = *(v69 - 3);
            v69[3] = *(v69 - 4);
            v69[4] = v100;
            v69[2] = *(v69 - 5);
            v101 = v203;
            v102 = v205;
            v97[1] = v204;
            v97[2] = v102;
            *v97 = v101;
            v103 = v206;
            v104 = v207;
            v105 = v209;
            v97[5] = v208;
            v97[6] = v105;
            v97[3] = v103;
            v97[4] = v104;
            if (!v70)
            {
              goto LABEL_89;
            }

            ++v70;
            v69 -= 7;
            continue;
          }

          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        break;
      }

      v81 = *(&v211 + 1);
      v82 = *(&v218 + 1);
      v83 = v218;
      v191 = v220;
      v193 = v219;
      v195 = *(&v220 + 1);
      v197 = *(&v219 + 1);
      v185 = *(&v221 + 1);
      v84 = *(&v222 + 1);
      v180 = v222;
      v181 = v221;
      if (*(&v211 + 1))
      {
        v85 = v211;
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        v86 = v81;
        if (v82)
        {
          goto LABEL_97;
        }

LABEL_102:
        __src = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_21DC08D20;
        *(v92 + 32) = v193;
        *(v92 + 40) = v197;
        *(v92 + 48) = v191;
        *(v92 + 56) = v195;
        *&v203 = v92;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
        sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
        v93 = sub_21DBFA41C();

        if (*(v93 + 16))
        {
          *&v203 = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
          sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
          v94 = sub_21DBFA07C();
          v84 = v95;
          v83 = v94;
        }

        else
        {

          if (v185)
          {
            v83 = v181;
            v84 = sub_21DBF8E0C();
          }

          else if (v84)
          {
            sub_21DBF8E0C();
            v83 = v180;
          }

          else
          {
            if (qword_280D1BAA8 != -1)
            {
              swift_once();
            }

            v83 = sub_21DBF516C();
            v84 = v107;
          }
        }
      }

      else
      {
        __src = *(&v218 + 1);
        v87 = v212;
        v88 = v213;
        v171 = v214;
        v187 = *(&v215 + 1);
        v189 = v215;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
        v89 = swift_allocObject();
        v89[1] = xmmword_21DC08D20;
        v89[2] = v87;
        v89[3] = v88;
        *v201 = v89;
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
        sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
        v90 = sub_21DBFA41C();

        if (*(v90 + 16))
        {
          *&v203 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
          sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
          v85 = sub_21DBFA07C();
          v86 = v91;

          v67 = v170;
          v82 = __src;
          if (!__src)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v86 = v187;
          v85 = v189;

          if (*(&v171 + 1))
          {
            v85 = v171;
            v86 = sub_21DBF8E0C();
            v67 = v170;
            v82 = __src;
            if (!__src)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v67 = v170;
            v82 = __src;
            if (v187)
            {
              sub_21DBF8E0C();
              if (!__src)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (qword_280D1BAA8 != -1)
              {
                swift_once();
              }

              v85 = sub_21DBF516C();
              v86 = v106;
              if (!__src)
              {
                goto LABEL_102;
              }
            }
          }
        }

LABEL_97:
        sub_21DBF8E0C();
        v84 = v82;
      }

      if (v85 != v83 || v86 != v84)
      {
        v96 = sub_21DBFC64C();
        sub_21DBF8E0C();

        sub_21D1D9AE0(&v217);
        sub_21D1D9AE0(&v210);

        sub_21D1D9AE0(&v217);
        result = sub_21D1D9AE0(&v210);
        v9 = v182;
        if ((v96 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_112;
      }

      sub_21DBF8E0C();

      sub_21D1D9AE0(&v217);
      sub_21D1D9AE0(&v210);

      sub_21D1D9AE0(&v217);
      result = sub_21D1D9AE0(&v210);
      v9 = v182;
LABEL_89:
      v10 = v177 + 1;
      v69 = v175 + 7;
      v70 = v173 - 1;
      if (v177 + 1 != v169)
      {
        continue;
      }

      break;
    }

    v6 = a3;
    v10 = v169;
    v5 = v163;
    v25 = v167;
LABEL_129:
    if (v10 < v25)
    {
      goto LABEL_208;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v8 = v10;
    if ((result & 1) == 0)
    {
      result = sub_21D210B90(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v109 = *(v9 + 16);
    v108 = *(v9 + 24);
    v110 = v109 + 1;
    if (v109 >= v108 >> 1)
    {
      result = sub_21D210B90((v108 > 1), v109 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v110;
    v111 = v9 + 16 * v109;
    *(v111 + 32) = v25;
    *(v111 + 40) = v8;
    v112 = *v165;
    if (*v165)
    {
      if (v109)
      {
        while (1)
        {
          v113 = v110 - 1;
          if (v110 >= 4)
          {
            break;
          }

          if (v110 == 3)
          {
            v114 = *(v9 + 32);
            v115 = *(v9 + 40);
            v124 = __OFSUB__(v115, v114);
            v116 = v115 - v114;
            v117 = v124;
LABEL_149:
            if (v117)
            {
              goto LABEL_196;
            }

            v130 = (v9 + 16 * v110);
            v132 = *v130;
            v131 = v130[1];
            v133 = __OFSUB__(v131, v132);
            v134 = v131 - v132;
            v135 = v133;
            if (v133)
            {
              goto LABEL_199;
            }

            v136 = (v9 + 32 + 16 * v113);
            v138 = *v136;
            v137 = v136[1];
            v124 = __OFSUB__(v137, v138);
            v139 = v137 - v138;
            if (v124)
            {
              goto LABEL_202;
            }

            if (__OFADD__(v134, v139))
            {
              goto LABEL_203;
            }

            if (v134 + v139 >= v116)
            {
              if (v116 < v139)
              {
                v113 = v110 - 2;
              }

              goto LABEL_170;
            }

            goto LABEL_163;
          }

          v140 = (v9 + 16 * v110);
          v142 = *v140;
          v141 = v140[1];
          v124 = __OFSUB__(v141, v142);
          v134 = v141 - v142;
          v135 = v124;
LABEL_163:
          if (v135)
          {
            goto LABEL_198;
          }

          v143 = v9 + 16 * v113;
          v145 = *(v143 + 32);
          v144 = *(v143 + 40);
          v124 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v124)
          {
            goto LABEL_201;
          }

          if (v146 < v134)
          {
            goto LABEL_3;
          }

LABEL_170:
          v151 = v113 - 1;
          if (v113 - 1 >= v110)
          {
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

          if (!*v6)
          {
            goto LABEL_215;
          }

          v152 = *(v9 + 32 + 16 * v151);
          v153 = *(v9 + 32 + 16 * v113 + 8);
          sub_21D82D280((*v6 + 112 * v152), (*v6 + 112 * *(v9 + 32 + 16 * v113)), (*v6 + 112 * v153), v112);
          if (v5)
          {
          }

          if (v153 < v152)
          {
            goto LABEL_192;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_21D82E300(v9);
          }

          if (v151 >= *(v9 + 16))
          {
            goto LABEL_193;
          }

          v154 = v9 + 16 * v151;
          *(v154 + 32) = v152;
          *(v154 + 40) = v153;
          v224 = v9;
          result = sub_21D82E274(v113);
          v9 = v224;
          v110 = *(v224 + 16);
          if (v110 <= 1)
          {
            goto LABEL_3;
          }
        }

        v118 = v9 + 32 + 16 * v110;
        v119 = *(v118 - 64);
        v120 = *(v118 - 56);
        v124 = __OFSUB__(v120, v119);
        v121 = v120 - v119;
        if (v124)
        {
          goto LABEL_194;
        }

        v123 = *(v118 - 48);
        v122 = *(v118 - 40);
        v124 = __OFSUB__(v122, v123);
        v116 = v122 - v123;
        v117 = v124;
        if (v124)
        {
          goto LABEL_195;
        }

        v125 = (v9 + 16 * v110);
        v127 = *v125;
        v126 = v125[1];
        v124 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v124)
        {
          goto LABEL_197;
        }

        v124 = __OFADD__(v116, v128);
        v129 = v116 + v128;
        if (v124)
        {
          goto LABEL_200;
        }

        if (v129 >= v121)
        {
          v147 = (v9 + 32 + 16 * v113);
          v149 = *v147;
          v148 = v147[1];
          v124 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v124)
          {
            goto LABEL_204;
          }

          if (v116 < v150)
          {
            v113 = v110 - 2;
          }

          goto LABEL_170;
        }

        goto LABEL_149;
      }

LABEL_3:
      v7 = *(v6 + 8);
      if (v8 >= v7)
      {
        goto LABEL_180;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_219:
  __break(1u);
  return result;
}

uint64_t sub_21D82D280(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = (a2 - __dst) / 112;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 112;
  if (v8 >= v10)
  {
    v45 = a2;
    if (__src != a2 || &a2[112 * v10] <= __src)
    {
      memmove(__src, a2, 112 * v10);
    }

    v12 = &v4[7 * v10];
    if (v9 < 112 || v45 <= v6)
    {
      goto LABEL_110;
    }

    v83 = v6;
LABEL_58:
    v88 = v45;
    v46 = v45 - 7;
    v5 -= 112;
    v47 = v12;
    while (1)
    {
      v12 = v47;
      v48 = *(v47 - 112);
      v49 = *(v47 - 80);
      v106 = *(v47 - 96);
      v107 = v49;
      v105 = v48;
      v50 = *(v47 - 64);
      v51 = *(v47 - 48);
      v52 = *(v47 - 16);
      v110 = *(v47 - 32);
      v111 = v52;
      v108 = v50;
      v109 = v51;
      v53 = v46[5];
      v116 = v46[4];
      v117 = v53;
      v118 = v46[6];
      v54 = v46[1];
      v112 = *v46;
      v113 = v54;
      v55 = v46[3];
      v114 = v46[2];
      v115 = v55;
      if (!v105)
      {
        if (!v112)
        {
          sub_21D1D9A84(&v112, v103);
        }

LABEL_101:
        if ((v5 + 112) < v88 || v5 >= v88 || v5 + 112 != v88)
        {
          memmove(v5, v46, 0x70uLL);
        }

        if (v12 <= v4 || (v45 = v46, v46 <= v6))
        {
          v45 = v46;
          goto LABEL_110;
        }

        goto LABEL_58;
      }

      if (v112)
      {
        if ((v111 & 1) == 0)
        {
          if (v118)
          {
            goto LABEL_101;
          }

          v56 = *(&v106 + 1);
          v96 = *(&v114 + 1);
          v90 = v115;
          v92 = v114;
          v94 = *(&v115 + 1);
          v57 = v116;
          v58 = *(&v117 + 1);
          v82 = v117;
          v100 = v113;
          if (*(&v106 + 1))
          {
            v119 = v106;
            v59 = *(&v113 + 1);
            sub_21D1D9A84(&v112, v103);
            sub_21D1D9A84(&v105, v103);
            sub_21D1D9A84(&v112, v103);
            sub_21D1D9A84(&v105, v103);
            v60 = v59;
            v61 = v56;
            if (!v59)
            {
              goto LABEL_81;
            }

LABEL_75:
            v69 = v60;
            sub_21DBF8E0C();
            v70 = v69;
            v71 = v100;
LABEL_86:
            if (v119 == v71 && v61 == v70)
            {
              sub_21DBF8E0C();

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);
            }

            else
            {
              LODWORD(v119) = sub_21DBFC64C();
              sub_21DBF8E0C();

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);
              if (v119)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_90;
          }

          v86 = *(&v117 + 1);
          v98 = *(&v113 + 1);
          v102 = v5;
          v62 = v107;
          v63 = v108;
          v64 = v109;
          v79 = *(&v110 + 1);
          v119 = v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
          v65 = swift_allocObject();
          v65[1] = xmmword_21DC08D20;
          v65[2] = v62;
          v65[3] = v63;
          v104 = v65;
          sub_21D1D9A84(&v112, v103);
          sub_21D1D9A84(&v105, v103);
          sub_21D1D9A84(&v112, v103);
          sub_21D1D9A84(&v105, v103);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
          sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
          v66 = sub_21DBFA41C();

          if (*(v66 + 16))
          {
            v103[0] = v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
            sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
            v119 = sub_21DBFA07C();
            v68 = v67;

            v61 = v68;
            goto LABEL_73;
          }

          v61 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            sub_21DBF8E0C();
            v119 = v64;
LABEL_73:
            v6 = v83;
            v5 = v102;
            v60 = v98;
            v58 = v86;
          }

          else
          {
            v5 = v102;
            v58 = v86;
            if (!v79)
            {
              if (qword_280D1BAA8 != -1)
              {
                swift_once();
              }

              v119 = sub_21DBF516C();
              v61 = v72;
              v6 = v83;
              v60 = v98;
              if (v98)
              {
                goto LABEL_75;
              }

LABEL_81:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
              v73 = swift_allocObject();
              *(v73 + 16) = xmmword_21DC08D20;
              *(v73 + 32) = v92;
              *(v73 + 40) = v96;
              *(v73 + 48) = v90;
              *(v73 + 56) = v94;
              v103[0] = v73;
              sub_21DBF8E0C();
              sub_21DBF8E0C();
              sub_21DBF8E0C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
              sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
              v74 = sub_21DBFA41C();

              if (*(v74 + 16))
              {
                v103[0] = v74;
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
                sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
                v71 = sub_21DBFA07C();
                v70 = v75;
              }

              else
              {

                v70 = *(&v57 + 1);
                if (*(&v57 + 1))
                {
                  sub_21DBF8E0C();
                  v71 = v57;
                }

                else
                {
                  v70 = v58;
                  if (v58)
                  {
                    sub_21DBF8E0C();
                    v71 = v82;
                  }

                  else
                  {
                    if (qword_280D1BAA8 != -1)
                    {
                      swift_once();
                    }

                    v71 = sub_21DBF516C();
                    v70 = v76;
                  }
                }
              }

              v6 = v83;
              goto LABEL_86;
            }

            v61 = v79;
            sub_21DBF8E0C();
            v60 = v98;
            v6 = v83;
          }

          if (!v60)
          {
            goto LABEL_81;
          }

          goto LABEL_75;
        }
      }

      else
      {
        sub_21D1D9A84(&v112, v103);
      }

LABEL_90:
      v47 = v12 - 112;
      if ((v5 + 112) < v12 || v5 >= v12 || v5 + 112 != v12)
      {
        memmove(v5, (v12 - 112), 0x70uLL);
      }

      v5 -= 112;
      if (v47 <= v4)
      {
        v12 -= 112;
        v45 = v88;
        goto LABEL_110;
      }
    }
  }

  if (__src != __dst || &__dst[112 * v8] <= __src)
  {
    memmove(__src, __dst, 112 * v8);
  }

  v12 = &v4[7 * v8];
  if (v7 >= 112 && a2 < v5)
  {
    v13 = a2;
    v101 = v5;
    while (1)
    {
      v14 = *v13;
      v15 = *(v13 + 2);
      v106 = *(v13 + 1);
      v107 = v15;
      v105 = v14;
      v16 = *(v13 + 3);
      v17 = *(v13 + 4);
      v18 = *(v13 + 6);
      v110 = *(v13 + 5);
      v111 = v18;
      v108 = v16;
      v109 = v17;
      v19 = v4[6];
      v21 = v4[3];
      v20 = v4[4];
      v117 = v4[5];
      v118 = v19;
      v115 = v21;
      v116 = v20;
      v22 = *v4;
      v23 = v4[2];
      v113 = v4[1];
      v114 = v23;
      v112 = v22;
      if (!v105)
      {
        if (!v22)
        {
          sub_21D1D9A84(&v112, v103);
        }

        goto LABEL_16;
      }

      if (!v22)
      {
        sub_21D1D9A84(&v112, v103);
        goto LABEL_20;
      }

      if (v111)
      {
        goto LABEL_20;
      }

      if ((v118 & 1) == 0)
      {
        break;
      }

LABEL_16:
      v28 = v13;
      v29 = v6 == v13;
      v13 += 112;
      if (!v29)
      {
        goto LABEL_21;
      }

LABEL_22:
      v6 += 112;
      if (v4 >= v12 || v13 >= v5)
      {
        goto LABEL_108;
      }
    }

    v87 = v13;
    v24 = *(&v106 + 1);
    v25 = *(&v113 + 1);
    v99 = v113;
    v89 = v115;
    v91 = v114;
    v93 = *(&v115 + 1);
    v95 = *(&v114 + 1);
    v81 = v116;
    v26 = *(&v117 + 1);
    v80 = v117;
    if (*(&v106 + 1))
    {
      v119 = v106;
      sub_21D1D9A84(&v112, v103);
      sub_21D1D9A84(&v105, v103);
      sub_21D1D9A84(&v112, v103);
      sub_21D1D9A84(&v105, v103);
      v27 = v24;
      goto LABEL_30;
    }

    v84 = *(&v117 + 1);
    v97 = *(&v113 + 1);
    v30 = v107;
    v31 = v108;
    v32 = v109;
    v85 = *(&v110 + 1);
    v119 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
    v33 = swift_allocObject();
    v33[1] = xmmword_21DC08D20;
    v33[2] = v30;
    v33[3] = v31;
    v104 = v33;
    sub_21D1D9A84(&v112, v103);
    sub_21D1D9A84(&v105, v103);
    sub_21D1D9A84(&v112, v103);
    sub_21D1D9A84(&v105, v103);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
    sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
    v34 = sub_21DBFA41C();

    if (*(v34 + 16))
    {
      v103[0] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
      v119 = sub_21DBFA07C();
      v36 = v35;

      v27 = v36;
    }

    else
    {

      v27 = *(&v32 + 1);
      if (!*(&v32 + 1))
      {
        v5 = v101;
        v25 = v97;
        v26 = v84;
        v27 = v85;
        if (v85)
        {
          sub_21DBF8E0C();
        }

        else
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v119 = sub_21DBF516C();
          v27 = v43;
        }

LABEL_30:
        if (v25)
        {
          sub_21DBF8E0C();
          v37 = v25;
          v38 = v99;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_21DC08D20;
          *(v39 + 32) = v91;
          *(v39 + 40) = v95;
          *(v39 + 48) = v89;
          *(v39 + 56) = v93;
          v103[0] = v39;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90);
          sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90);
          v40 = sub_21DBFA41C();

          if (*(v40 + 16))
          {
            v103[0] = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
            sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
            v38 = sub_21DBFA07C();
            v37 = v41;
          }

          else
          {

            v37 = *(&v81 + 1);
            if (!*(&v81 + 1))
            {
              v5 = v101;
              v37 = v26;
              if (v26)
              {
                sub_21DBF8E0C();
                v38 = v80;
              }

              else
              {
                if (qword_280D1BAA8 != -1)
                {
                  swift_once();
                }

                v38 = sub_21DBF516C();
                v37 = v44;
              }

              goto LABEL_37;
            }

            sub_21DBF8E0C();
            v38 = v81;
          }

          v5 = v101;
        }

LABEL_37:
        if (v119 == v38 && v27 == v37)
        {
          sub_21DBF8E0C();

          sub_21D1D9AE0(&v112);
          sub_21D1D9AE0(&v105);

          sub_21D1D9AE0(&v112);
          sub_21D1D9AE0(&v105);
          v13 = v87;
LABEL_20:
          v28 = v4;
          v29 = v6 == v4;
          v4 += 7;
          if (v29)
          {
            goto LABEL_22;
          }

LABEL_21:
          memmove(v6, v28, 0x70uLL);
          goto LABEL_22;
        }

        v42 = sub_21DBFC64C();
        sub_21DBF8E0C();

        sub_21D1D9AE0(&v112);
        sub_21D1D9AE0(&v105);

        sub_21D1D9AE0(&v112);
        sub_21D1D9AE0(&v105);
        v13 = v87;
        if ((v42 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      sub_21DBF8E0C();
      v119 = v32;
    }

    v5 = v101;
    v25 = v97;
    v26 = v84;
    goto LABEL_30;
  }

LABEL_108:
  v45 = v6;
LABEL_110:
  v77 = (v12 - v4) / 112;
  if (v45 != v4 || v45 >= &v4[7 * v77])
  {
    memmove(v45, v4, 112 * v77);
  }

  return 1;
}

uint64_t sub_21D82E274(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21D82E300(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_21D82E314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59958);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_21D82E4B8(uint64_t a1, char a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_contentSizeObserver] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___addSectionCell] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestionGroup] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestedSection] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___sectionlessSection] = 0;
  v7 = &a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter];
  *v7 = a1;
  v7[1] = &off_282EC7738;
  a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_isPresentedInPopover] = a2;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_initWithStyle_, 2);
}

uint64_t sub_21D82E57C(uint64_t a1, void *a2)
{
  v16 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload(0);
  v17 = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 1));
  sub_21D82FC78(a1, boxed_opaque_existential_0, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload);
  v5 = [a2 activityType];
  v6 = sub_21DBFA16C();
  v8 = v7;

  __swift_project_boxed_opaque_existential_1((v15 + 1), v16);
  swift_getDynamicType();
  (v17[1])(v15);
  if (v6 == TTRUserActivityType.activityType.getter() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_21DBFC64C();

    if ((v11 & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_0(v15 + 1);
    }
  }

  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1((v15 + 1), v16);
  (v13[3])(a2, v12, v13);
  return __swift_destroy_boxed_opaque_existential_0(v15 + 1);
}

uint64_t sub_21D82E6F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0F00D0;

  return sub_21D8284FC();
}

char *sub_21D82E7A8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = a1;
  v65 = MEMORY[0x277D84F90];
  result = sub_21D18EFC4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v65;
    v49 = a4;
    v50 = v8 & 0xC000000000000001;
    a1 = sub_21D0D8CF0(0, &qword_280D17680);
    v10 = v8;
    v11 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v6 - 1;
    v48 = v8;
    while (1)
    {
      v67 = v7;
      if (v50)
      {
        v12 = MEMORY[0x223D44740](v11, v10);
      }

      else
      {
        if (v11 >= *(v46 + 16))
        {
          goto LABEL_28;
        }

        v12 = *(v10 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 objectID];
      v15 = v13;
      TTRParticipantModel.init(sharee:)(v15, &v64.displayName.value._countAndFlagsBits);
      v16 = [v15 objectID];
      v17 = sub_21DBFB63C();

      v63 = v64;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v66 = v64;

      v19 = sub_21D82B0EC(&v66, 0, sub_21D82EE98, v18);
      if (v19)
      {
        v20 = v19;
        v51 = v64;
        v56.firstName = v64.lastName;
        v56.lastName = v64.emailAddress;
        v56.emailAddress = v64.phoneNumber;
        displayName = v64.displayName;
        v56.displayName = v64.firstName;
        v21 = v19;
        sub_21D1D9B34(&v51, &v52);
        TTRParticipantModel.updatingNames(with:)(&v63, v21);

        v53.firstName = v56.firstName;
        v53.lastName = v56.lastName;
        v53.emailAddress = v56.emailAddress;
        v52 = displayName;
        v53.displayName = v56.displayName;
        sub_21D1D9B90(&v52);
        firstName = v64.firstName;
        v56.firstName = v64.lastName;
        v56.lastName = v64.emailAddress;
        v56.emailAddress = v64.phoneNumber;
        v23 = v64.displayName;
      }

      else
      {
        v53.firstName = v64.lastName;
        v53.lastName = v64.emailAddress;
        v53.emailAddress = v64.phoneNumber;
        v52 = v64.displayName;
        v53.displayName = v64.firstName;
        v51 = v64;
        sub_21D1D9B34(&v52, &displayName);
        v20 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v51);
        v56.firstName = v51.lastName;
        v56.lastName = v51.emailAddress;
        v56.emailAddress = v51.phoneNumber;
        v23 = v51.displayName;
        firstName = v51.firstName;
      }

      displayName = v23;
      v56.displayName = firstName;
      sub_21D1D9B90(&displayName);

      v24 = v17 & 1;
      displayName.value._countAndFlagsBits = v14;
      displayName.value._object = v20;
      v56 = v63;
      LOBYTE(v57) = v24;
      *(&v57 + 1) = *v62;
      HIDWORD(v57) = *&v62[3];
      v58 = 0;
      v59 = displayName;
      v60 = v63;
      v61 = v57;
      sub_21D1D9C94(&displayName, &v52);
      v25 = [v15 objectID];
      if (v25)
      {
        v26 = v25;
        if (!v49)
        {
          v52.value._countAndFlagsBits = v14;
          v52.value._object = v20;
          v53 = v63;
          LOBYTE(v54) = v24;
          *(&v54 + 1) = *v62;
          DWORD1(v54) = *&v62[3];
          *(&v54 + 1) = 0;
          sub_21D30DA04(&v52);

          goto LABEL_20;
        }

        sub_21D0D8CF0(0, &qword_280D17880);
        v27 = v49;
        v28 = sub_21DBFB63C();
        v52.value._countAndFlagsBits = v14;
        v52.value._object = v20;
        v53 = v63;
        LOBYTE(v54) = v24;
        *(&v54 + 1) = *v62;
        DWORD1(v54) = *&v62[3];
        *(&v54 + 1) = 0;
        sub_21D30DA04(&v52);

        if ((v28 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v52.value._countAndFlagsBits = v14;
        v52.value._object = v20;
        v53 = v63;
        LOBYTE(v54) = v24;
        *(&v54 + 1) = *v62;
        DWORD1(v54) = *&v62[3];
        *(&v54 + 1) = 0;
        sub_21D30DA04(&v52);
        if (v49)
        {
LABEL_18:

LABEL_20:
          v7 = v67;
          goto LABEL_21;
        }
      }

      v7 = v67;
      v29 = *(a5 + 80);
      v53.emailAddress = *(a5 + 64);
      v53.phoneNumber = v29;
      v54 = *(a5 + 96);
      v30 = *(a5 + 16);
      v52 = *a5;
      v53.displayName = v30;
      v31 = *(a5 + 48);
      v53.firstName = *(a5 + 32);
      v53.lastName = v31;
      v32 = v60.displayName;
      *a5 = v59;
      *(a5 + 16) = v32;
      v33 = v60.firstName;
      lastName = v60.lastName;
      v35 = v61;
      *(a5 + 80) = v60.phoneNumber;
      *(a5 + 96) = v35;
      emailAddress = v60.emailAddress;
      *(a5 + 48) = lastName;
      *(a5 + 64) = emailAddress;
      *(a5 + 32) = v33;
      sub_21D1D9C94(&displayName, &v51);
      sub_21D0CF7E0(&v52, &qword_27CE62638);

LABEL_21:
      v65 = v7;
      a4 = *(v7 + 16);
      v37 = *(v7 + 24);
      v10 = v48;
      if (a4 >= v37 >> 1)
      {
        a1 = sub_21D18EFC4((v37 > 1), a4 + 1, 1);
        v10 = v48;
        v7 = v65;
      }

      *(v7 + 16) = a4 + 1;
      v38 = v7 + 112 * a4;
      v39 = v59;
      v40 = v60.firstName;
      *(v38 + 48) = v60.displayName;
      *(v38 + 64) = v40;
      *(v38 + 32) = v39;
      v41 = v60.lastName;
      v42 = v60.emailAddress;
      v43 = v61;
      *(v38 + 112) = v60.phoneNumber;
      *(v38 + 128) = v43;
      *(v38 + 80) = v41;
      *(v38 + 96) = v42;
      if (v47 == v11)
      {
        return v7;
      }

      if (__OFADD__(++v11, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v44 = a1;
        v6 = sub_21DBFBD7C();
        a1 = v44;
        goto LABEL_3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D82EDA4(char a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v3 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v3 + 40) |= a1 & 1;
  *(v3 + 48) = 0;
  v4._object = 0x800000021DC49D80;
  v4._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D305824();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21D82EED8(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

void sub_21D82EF18(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

void *sub_21D82EF5C(void *result, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 2)
  {
    sub_21D157864(result, a2);

    return sub_21D575DF4(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21D82EFF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_21D82FC78(a1, &v11 - v4, type metadata accessor for TTRHashtagEditorModuleState);
  v6 = type metadata accessor for TTRHashtagEditorModuleState();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v7, &unk_27CE622B0);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v8 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v8 + 40) |= 1uLL;
  *(v8 + 48) = 0;
  v9._object = 0x800000021DC49D80;
  v9._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);
}

uint64_t sub_21D82F1CC(uint64_t a1)
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
  v10[1] = sub_21D0F00D0;

  return sub_21D824C74(a1, v4, v5, v6, v7, v8, v9);
}

void sub_21D82F2A4(void *a1, int a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_21DBF66FC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v16 = Strong, v17 = [Strong navigationController], v16, v17))
  {
    v35 = a3;
    LODWORD(v36) = a2;
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680) + 48);
    *v14 = [a1 objectID];
    v19 = *MEMORY[0x277D45198];
    v20 = sub_21DBF66BC();
    (*(*(v20 - 8) + 104))(&v14[v18], v19, v20);
    v21 = *MEMORY[0x277D45168];
    v22 = sub_21DBF66DC();
    (*(*(v22 - 8) + 104))(&v14[v18], v21, v22);
    (*(v12 + 104))(v14, *MEMORY[0x277D45248], v11);
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE62450);
    sub_21DBF66EC();
    v24 = sub_21DBF54CC();
    (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
    sub_21DAEAF90(0xD000000000000010, 0x800000021DC6CBD0, 0x6E6F697461636F4CLL, 0xEF72656B63695020, v10);
    sub_21D0CF7E0(v10, &qword_27CE5EA20);
    v25 = [a1 saveRequest];
    v26 = [v25 store];

    type metadata accessor for TTRReminderLocationPickerInteractor.ReminderEditor();
    v27 = swift_allocObject();
    v27[2] = a1;
    v27[3] = a4;
    v28 = a4;
    v27[4] = 0;
    v29 = a1;
    v30 = sub_21D581F70(v26, v27, 0, 0, v35, &off_282ED4F78, v28);

    swift_unknownObjectRelease();
    [v17 pushViewController:v30 animated:v36 & 1];

    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE62450);
    v36 = sub_21DBF84AC();
    v32 = sub_21DBFAECC();
    if (os_log_type_enabled(v36, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_21D0C9000, v36, v32, "Failed to get navigation controller -- Failed to show location picker", v33, 2u);
      MEMORY[0x223D46520](v33, -1, -1);
    }

    v34 = v36;
  }
}

uint64_t sub_21D82F798()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 184))(0, ObjectType, v1);
}

uint64_t sub_21D82F7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D81F964(a1, v4, v5, v6);
}

uint64_t sub_21D82F8BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21D82F904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D82F96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D82F9D4(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v3 = objc_opt_self();
  v4 = sub_21DBFA12C();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D82FC18;
  *(v6 + 24) = v5;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_109_0;
  v7 = _Block_copy(aBlock);
  v8 = v1;
  sub_21DBF8E0C();

  [v3 withActionName:v4 block:{v7, 0x800000021DC4FCD0}];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D82FC18()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 320))(v1, ObjectType, v2);
}

uint64_t sub_21D82FC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D82FCE0(void *a1)
{
  v2 = v1;
  sub_21D0D8CF0(0, &unk_27CE626A0);
  v4 = a1;
  v5 = sub_21DBFB4AC();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v6 = objc_opt_self();
  v7 = sub_21DBFA12C();

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D82FF60;
  *(v9 + 24) = v8;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_119_1;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  v12 = v2;

  [v6 withActionName:v7 block:{v10, 0x800000021DC47980}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D82FF60()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 232))(v1, ObjectType, v2);
}

uint64_t sub_21D82FFC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D826528(a1, v4, v5, v6, v7);
}

uint64_t sub_21D830084()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 128))(v1, ObjectType, v2);
}

void *sub_21D830184(void *result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_21D8301D4(uint64_t result)
{
  if (result != 1)
  {
    v2 = result;
    sub_21DBF8E0C();
    v3 = v2;

    return sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D830224()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 184))(v1, ObjectType, v2);
}

uint64_t sub_21D830290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D821B94(a1, v4, v5, v6);
}

uint64_t sub_21D830358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D820D98(a1, v4, v5, v6);
}

uint64_t sub_21D83040C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D820928(a1, v4, v5, v6);
}

id TTRIReminderDetailInCalendarEditingOptions.dueDateOverride.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRIReminderDetailInCalendarEditingOptions.init(dueDateOverride:newUserInterfaceStyleEnabled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

_OWORD *sub_21D8305F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v84 = a5;
  v85 = a4;
  v88 = a3;
  v89 = a2;
  v93 = a1;
  v86 = a6;
  v6 = sub_21DBF9D8C();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRReminderTitleAttributesNoOpInteractor();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B2F0);
  swift_allocObject();
  *(v11 + 16) = sub_21DBF907C();
  v106[3] = v10;
  v106[4] = &protocol witness table for TTRReminderTitleAttributesNoOpInteractor;
  v106[0] = v11;
  type metadata accessor for TTRReminderCellTitleInteractor();
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v83 = v12;
  swift_unknownObjectWeakInit();
  v82 = type metadata accessor for TTRIReminderCellTitleRouter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = v13;
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84FA0];
  v15[5] = MEMORY[0x277D84FA0];
  v15[6] = v16;
  v15[7] = 0;
  sub_21DBF78BC();
  v15[2] = v14;
  v15[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v17 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v17 + 16) = swift_allocObject();
  *(v17 + 24) = 75;
  v15[4] = v17;
  v18 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
  v19 = swift_allocObject();
  v19[1] = vdupq_n_s64(0x4043000000000000uLL);
  v19[2].i64[0] = 0x405C800000000000;
  v19[2].i8[8] = 1;
  v87 = sub_21D0CE468();
  v20 = sub_21DBFB12C();
  sub_21DBF60DC();
  v21 = sub_21DBF60CC();
  v22 = type metadata accessor for TTRThumbnailGenerator();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v24 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v25 = v20;
  v26 = [v24 init];
  *(v23 + 24) = v26;
  [v26 setUnderlyingQueue_];

  *(&v102 + 1) = v22;
  v103 = &protocol witness table for TTRThumbnailGenerator;
  *&v101 = v23;
  type metadata accessor for TTRAttachmentThumbnailsManager();
  v27 = swift_allocObject();
  v27[5] = v18;
  v27[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
  v27[2] = v19;
  v28 = v94;
  v29 = MEMORY[0x277D84F98];
  v27[12] = 0;
  v27[13] = v29;
  v27[14] = v16;
  sub_21D0D0FD0(&v101, (v27 + 7));
  sub_21D1D338C(v93, v28);
  sub_21D0D32E4(v106, &v101);
  type metadata accessor for TTRReminderCellTitleEditingPresenter(0);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v31 = (v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v31 = 0;
  v31[1] = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = v29;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D1D338C(v28, v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item);
  v32 = (v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v32 = v15;
  v32[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  sub_21D0D0FD0(&v101, v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = 1;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = 2;
  swift_beginAccess();
  *(v30 + 40) = v88;
  swift_unknownObjectWeakAssign();
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = v27;
  v33 = v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  sub_21D24BDFC(v28, v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state);
  v34 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v33 + v34[5]) = 0;
  *(v33 + v34[6]) = 0;
  v35 = (v33 + v34[7]);
  *v35 = 0u;
  v35[1] = 0u;
  v36 = (v33 + v34[8]);
  *v36 = 0u;
  v36[1] = 0u;
  *(v33 + v34[9]) = 0;
  *(v33 + v34[10]) = 0;
  *(v33 + v34[11]) = 0;
  v37 = qword_280D155F0;

  v89 = v15;

  if (v37 != -1)
  {
    swift_once();
  }

  if (qword_280D15600)
  {
    v38 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v39 = sub_21DBFA12C();
    v88 = [v38 initWithBundleIdentifier_];
  }

  else
  {
    v88 = [objc_opt_self() currentNotificationCenter];
  }

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v40 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v41 = swift_allocObject();
  v41[3] = 0;
  swift_unknownObjectWeakInit();
  v41[18] = 0;
  swift_beginAccess();
  v41[3] = &off_282EC4F60;
  swift_unknownObjectWeakAssign();
  v42 = type metadata accessor for TTRGeoLocationService();
  v99 = v42;
  v100 = &protocol witness table for TTRGeoLocationService;
  v43 = sub_21DBFB12C();
  v45 = v90;
  v44 = v91;
  *v90 = v43;
  v46 = v92;
  (*(v44 + 104))(v45, *MEMORY[0x277D85200], v92);
  v47 = sub_21DBF9DAC();
  result = (*(v44 + 8))(v45, v46);
  if (v47)
  {
    v92 = v27;
    *&v98 = sub_21D0D7EE0(objc_allocWithZone(v42), 0, 0);
    sub_21D0D0FD0(&v98, (v41 + 4));
    type metadata accessor for TTRNotificationsAccessService();
    v49 = swift_allocObject();
    v49[2] = v40;
    v49[3] = &protocol witness table for REMDaemonUserDefaults;
    v50 = v88;
    v49[4] = v88;
    v41[9] = v49;
    v41[10] = &protocol witness table for TTRNotificationsAccessService;
    v41[11] = v40;
    v41[12] = &protocol witness table for REMDaemonUserDefaults;
    sub_21D0D3954(&v101, &v96, &qword_27CE5E0A0);
    if (v97)
    {
      v51 = v40;
      sub_21D0CF7E0(&v101, &qword_27CE5E0A0);
      sub_21D0D0FD0(&v96, &v98);
    }

    else
    {
      v52 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
      v53 = swift_allocObject();
      v54 = sub_21DBF5EAC();
      swift_allocObject();
      v55 = v40;
      v56 = v50;
      v57 = sub_21DBF5E9C();
      v58 = MEMORY[0x277D44D00];
      v53[5] = v54;
      v53[6] = v58;
      v53[2] = v57;
      v99 = v52;
      v100 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

      *&v98 = v53;
      sub_21D0CF7E0(&v101, &qword_27CE5E0A0);
      if (v97)
      {
        sub_21D0CF7E0(&v96, &qword_27CE5E0A0);
      }
    }

    sub_21D0D0FD0(&v98, (v41 + 13));
    v59 = v94;
    sub_21D1D338C(v93, v94);
    sub_21D0D3954(v104, &v101, &qword_27CE5E0A8);
    v60 = v82;
    v99 = v82;
    v100 = &off_282EC4F50;
    *&v98 = v95;
    type metadata accessor for TTRIReminderCellTitlePresenter();
    v61 = swift_allocObject();
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v60);
    v63 = MEMORY[0x28223BE20](v62);
    v65 = (&v82 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65, v63);
    v67 = *v65;
    v68 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_router];
    *(v68 + 3) = v60;
    *(v68 + 4) = &off_282EC4F50;
    *v68 = v67;
    *(v61 + 3) = 0;
    swift_unknownObjectWeakInit();
    *(v61 + 5) = 0;
    swift_unknownObjectWeakInit();
    *(v61 + 7) = 0;
    swift_unknownObjectWeakInit();
    v69 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
    v70 = type metadata accessor for TTRReminderCellTitleViewModel();
    (*(*(v70 - 8) + 56))(&v61[v69], 1, 1, v70);
    sub_21D24BDFC(v59, &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_item]);
    v71 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_interactor];
    v72 = v83;
    *v71 = v83;
    v71[1] = &protocol witness table for TTRReminderCellTitleInteractor;
    v73 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter];
    *v73 = v30;
    v73[1] = &protocol witness table for TTRReminderCellTitleEditingPresenter;
    v74 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar];
    *v74 = 0;
    *(v74 + 1) = 0;
    v75 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter];
    v76 = v102;
    *v75 = v101;
    *(v75 + 1) = v76;
    *(v75 + 4) = v103;
    *&v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_privacyChecker] = v41;
    v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule] = 2;
    *&v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_returnKeyType] = 0;

    __swift_destroy_boxed_opaque_existential_0(&v98);
    v77 = type metadata accessor for TTRIReminderCellTitleViewController();
    v78 = objc_allocWithZone(v77);

    v80 = sub_21D57816C(v79, v78);
    swift_beginAccess();
    *(v72 + 24) = &off_282EC5918;
    swift_unknownObjectWeakAssign();
    *(v61 + 3) = &off_282EC5640;
    swift_unknownObjectWeakAssign();
    *(v61 + 7) = v84;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v30 + 24) = &off_282EC58C8;
    swift_unknownObjectWeakAssign();
    *(&v102 + 1) = v77;

    *&v101 = v80;

    sub_21D0CF7E0(v104, &qword_27CE5E0A8);
    __swift_destroy_boxed_opaque_existential_0(v106);
    v81 = v86;
    *v86 = v61;
    v81[1] = &off_282EC5888;
    return sub_21D0CF2E8(&v101, v81 + 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D8311E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v42[0] = a4;
  v42[1] = a3;
  v43 = a5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRReminderCellNotesInteractor();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for TTRIReminderCellNotesRouter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84FA0];
  v14[5] = MEMORY[0x277D84FA0];
  v14[6] = v15;
  v14[7] = 0;
  sub_21DBF78BC();
  v14[2] = v13;
  v14[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v16 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v16 + 16) = swift_allocObject();
  *(v16 + 24) = 75;
  v14[4] = v16;
  type metadata accessor for TTRParagraphStyleEditingPresenter();
  v17 = swift_allocObject();
  sub_21D1D338C(a1, v9);
  type metadata accessor for TTRReminderCellNotesEditingPresenter();
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 40) = 0;
  swift_unknownObjectWeakInit();
  v19 = (v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  *v19 = 0;
  v19[1] = 0;
  *(v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v20 = v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  *v20 = 0;
  *(v20 + 24) = 0u;
  *(v20 + 8) = 0u;
  sub_21D24BDFC(v9, v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  v21 = (v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter);
  *v21 = v14;
  v21[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  v22 = (v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter);
  *v22 = v17;
  v22[1] = &protocol witness table for TTRParagraphStyleEditingPresenter;
  swift_beginAccess();
  *(v18 + 40) = a2;
  swift_unknownObjectWeakAssign();
  sub_21D1D338C(a1, v9);
  v44[3] = v11;
  v44[4] = &off_282EC4E18;
  v44[0] = v12;
  type metadata accessor for TTRIReminderCellNotesPresenter();
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v44, v11);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v30 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router);
  v30[3] = v11;
  v30[4] = &off_282EC4E18;
  *v30 = v29;
  *(v23 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 64) = 0;
  swift_unknownObjectWeakInit();
  v31 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  v32 = type metadata accessor for TTRIReminderCellNotesViewModel();
  (*(*(v32 - 8) + 56))(v23 + v31, 1, 1, v32);
  sub_21D24BDFC(v9, v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_item);
  *(v23 + 16) = 1;
  v33 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_interactor);
  *v33 = v10;
  v33[1] = &protocol witness table for TTRReminderCellNotesInteractor;
  v34 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter);
  *v34 = v18;
  v34[1] = &protocol witness table for TTRReminderCellNotesEditingPresenter;
  v35 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  *v35 = 0;
  v35[1] = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) = 2;

  __swift_destroy_boxed_opaque_existential_0(v44);
  v36 = type metadata accessor for TTRIReminderCellNotesViewController();
  v37 = objc_allocWithZone(v36);

  v39 = sub_21D590F80(v38, v37);
  swift_beginAccess();
  *(v10 + 24) = &off_282EC5AB0;
  swift_unknownObjectWeakAssign();
  *(v23 + 32) = &off_282EC56F0;
  swift_unknownObjectWeakAssign();
  *(v23 + 48) = v42[0];
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v18 + 24) = &off_282EC5A70;
  swift_unknownObjectWeakAssign();
  v40 = v43;
  v43[5] = v36;

  v40[2] = v39;
  *v40 = v23;
  v40[1] = &off_282EC5A28;
  return result;
}

id static TTRIReminderDetailAssembly.createPlaceholderViewController()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TTRIReminderDetailAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIReminderDetailAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderDetailAssembly();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRIReminderDetailAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderDetailAssembly();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21D8318E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for TTRIReminderDetailRouter();
  v18 = &off_282ED4DA8;
  *&v16 = a2;
  type metadata accessor for TTRIReminderDetailDueDatePresenterCapability();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  *(v8 + 34) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 2;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v9 = qword_280D1AA18;
  type metadata accessor for TTRTimeZoneOverrideMenuPresenterCapability();
  v10 = swift_allocObject();
  v14 = type metadata accessor for TTRUserDefaults();
  v15 = &protocol witness table for TTRUserDefaults;
  *&v13 = v9;
  sub_21D0D0FD0(&v13, (v10 + 2));
  v10[7] = sub_21D4C4CA0;
  v10[8] = 0;
  v10[9] = sub_21D8B7CAC;
  v10[10] = 0;
  *(v8 + 136) = v10;
  *(v8 + 64) = a1;
  *(v8 + 72) = &protocol witness table for TTRReminderDetailInteractor;
  sub_21D0D0FD0(&v16, v8 + 80);
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v11 = v9;
  return v8;
}

uint64_t sub_21D831A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, __int128 *a7, uint64_t *a8, __int128 *a9)
{
  v233 = a6;
  v234 = a3;
  LODWORD(v232) = a5;
  v235 = a2;
  v13 = sub_21DBF9D8C();
  v249 = *(v13 - 1);
  v250 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a7[3];
  v277[2] = a7[2];
  v277[3] = v16;
  v17 = a7[4];
  v18 = a7[1];
  v277[0] = *a7;
  v277[1] = v18;
  v19 = *a9;
  v20 = a9[1];
  v277[4] = v17;
  v278[0] = v19;
  v21 = a9[2];
  v22 = a9[3];
  v278[1] = v20;
  v278[2] = v21;
  v23 = *a1;
  v24 = *(a1 + 8);
  v243 = *a4;
  LODWORD(a1) = *(a4 + 8);
  v25 = *a8;
  v26 = a8[1];
  v27 = a8[3];
  v240 = a8[2];
  v241 = v26;
  v238 = v25;
  v239 = v27;
  v237 = a8[4];
  v278[3] = v22;
  v28 = [v23 saveRequest];
  v247 = [v28 store];

  v29 = objc_allocWithZone(TTRUndoManager);
  v30 = v24;
  v31 = sub_21DBFA12C();
  v32 = [v29 initWithDebugIdentifier_];

  v33 = 0;
  v34 = a7[3];
  v271 = a7[2];
  v272 = v34;
  v273 = a7[4];
  v36 = *a7;
  v35 = a7[1];
  v261[0] = v23;
  v261[1] = v30;
  v269 = v36;
  v270 = v35;
  v37 = a9[1];
  v265 = *a9;
  v266 = v37;
  v38 = a9[2];
  v39 = a9[3];
  v242 = a1;
  v267 = v38;
  v268 = v39;
  if ((a1 & 0xC0) == 0x40)
  {
    v40 = v243;
    if (v243)
    {
      v41 = v243;
      v33 = v40;
    }

    else
    {
      v33 = 1;
    }
  }

  v264[0] = v33;
  type metadata accessor for TTRReminderDetailInteractor();
  swift_allocObject();

  v42 = v32;
  v43 = v23;
  sub_21D833B94(v277, &v252);
  sub_21D0D3954(v278, &v252, &qword_27CE59DD8);
  v251 = TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(v261, v42, &v269, &v265, v264);
  sub_21D0CE468();
  *v15 = sub_21DBFB12C();
  v45 = v249;
  v44 = v250;
  (*(v249 + 104))(v15, *MEMORY[0x277D85200], v250);
  v46 = sub_21DBF9DAC();
  (*(v45 + 8))(v15, v44);
  if (v46)
  {
    v230 = v42;
    v226 = type metadata accessor for TTRGeoLocationService();
    v47 = sub_21D0D7EE0(objc_allocWithZone(v226), 0, 0);
    sub_21DBF60DC();
    v48 = sub_21DBF60BC();
    sub_21DBFB12C();
    v49 = sub_21DBF633C();
    swift_allocObject();
    v231 = v48;
    v50 = sub_21DBF62FC();

    v51 = sub_21DBFB12C();
    type metadata accessor for TTRParticipantAvatarProvider();
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D44FA8];
    *(v52 + 40) = v49;
    *(v52 + 48) = v53;
    *(v52 + 16) = v50;
    *(v52 + 88) = 0u;
    *(v52 + 104) = 0u;
    *(v52 + 120) = 0;
    *(v52 + 56) = sub_21D833C04;
    *(v52 + 64) = 0;
    *(v52 + 72) = 0;
    *(v52 + 80) = v51;
    v248 = v52;
    type metadata accessor for TTRReminderLocationOptionsProvider();
    v54 = swift_allocObject();

    v55 = v247;
    v56 = v47;
    v57 = sub_21D5A4408(v55, v50, v56, v54);
    v229 = v55;

    type metadata accessor for TTRTimeZoneProvider();
    v58 = swift_allocObject();
    v58[2] = 0;
    sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708);
    swift_allocObject();
    v59 = sub_21DBF6B5C();
    v247 = v58;
    v58[2] = v59;

    type metadata accessor for TTRLocationQuickPicksInteractor();
    v60 = swift_allocObject();
    v61 = v56;

    v250 = v61;
    v228 = v57;
    v236 = sub_21D5A3CE4(v61, v57, v60);
    v223 = type metadata accessor for TTRIReminderDetailRouter();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v62 + 32) = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for TTRIReminderDetailDueDateRouterCapability();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v63 + 24) = 0x7265646E696D6552;
    *(v63 + 32) = 0xEF6C696174654420;
    v246 = v62;
    *(v62 + 40) = v63;
    v64 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
    v65 = swift_allocObject();
    __asm { FMOV            V0.2D, #29.0 }

    *(v65 + 16) = _Q0;
    *(v65 + 32) = 0x4059000000000000;
    *(v65 + 40) = 1;
    v71 = sub_21DBFB12C();
    v72 = sub_21DBF60CC();
    v73 = type metadata accessor for TTRThumbnailGenerator();
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    v75 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    v76 = v71;
    v77 = [v75 init];
    *(v74 + 24) = v77;
    [v77 setUnderlyingQueue_];

    *&v271 = &protocol witness table for TTRThumbnailGenerator;
    *(&v270 + 1) = v73;
    *&v269 = v74;
    type metadata accessor for TTRAttachmentThumbnailsManager();
    v78 = swift_allocObject();
    v78[5] = v64;
    v78[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v79 = MEMORY[0x277D84F98];
    v78[2] = v65;
    v78[12] = 0;
    v78[13] = v79;
    v78[14] = MEMORY[0x277D84FA0];
    v245 = v78;
    sub_21D0D0FD0(&v269, (v78 + 7));
    *&v271 = MEMORY[0x277D44FA8];
    *(&v270 + 1) = v49;
    *&v269 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_21DC09CF0;
    v81 = objc_opt_self();
    v249 = v50;

    *(v80 + 32) = [v81 descriptorForRequiredKeys];
    type metadata accessor for TTRUserActivityMetadataInterator();
    swift_allocObject();
    v244 = TTRUserActivityMetadataInterator.init(contactsProvider:contactKeys:)(&v269, v80);
    if (qword_280D155F0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_7:
  if (qword_280D15600)
  {
    v82 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v83 = sub_21DBFA12C();
    v84 = [v82 initWithBundleIdentifier_];
  }

  else
  {
    v84 = [objc_opt_self() currentNotificationCenter];
  }

  *&v271 = 0;
  v269 = 0u;
  v270 = 0u;
  v85 = objc_opt_self();
  v86 = v250;
  v87 = [v85 daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v88 = swift_allocObject();
  v88[3] = 0;
  swift_unknownObjectWeakInit();
  v88[18] = 0;
  swift_beginAccess();
  v88[3] = &off_282ED4D98;
  swift_unknownObjectWeakAssign();
  v88[4] = v86;
  v225 = v88 + 4;
  v88[7] = v226;
  v88[8] = &protocol witness table for TTRGeoLocationService;
  type metadata accessor for TTRNotificationsAccessService();
  v89 = swift_allocObject();
  v89[2] = v87;
  v89[3] = &protocol witness table for REMDaemonUserDefaults;
  v89[4] = v84;
  v88[9] = v89;
  v88[10] = &protocol witness table for TTRNotificationsAccessService;
  v88[11] = v87;
  v88[12] = &protocol witness table for REMDaemonUserDefaults;
  v250 = v88;
  sub_21D0D3954(&v269, &v265, &qword_27CE5E0A0);
  v227 = v86;
  if (*(&v266 + 1))
  {
    v90 = v87;
    sub_21D0CF7E0(&v269, &qword_27CE5E0A0);
    sub_21D0D0FD0(&v265, &v252);
  }

  else
  {
    v91 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
    v92 = swift_allocObject();
    v93 = sub_21DBF5EAC();
    swift_allocObject();
    v94 = v87;
    v95 = v86;
    v96 = v94;
    v97 = v84;
    v98 = sub_21DBF5E9C();
    v99 = MEMORY[0x277D44D00];
    v92[5] = v93;
    v92[6] = v99;
    v92[2] = v98;
    *(&v253 + 1) = v91;
    *&v254 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

    *&v252 = v92;
    sub_21D0CF7E0(&v269, &qword_27CE5E0A0);
    if (*(&v266 + 1))
    {
      sub_21D0CF7E0(&v265, &qword_27CE5E0A0);
    }
  }

  sub_21D0D0FD0(&v252, (v250 + 13));
  *&v267 = &off_282ED4DD0;
  v100 = v223;
  *(&v266 + 1) = v223;
  *&v265 = v246;
  v224 = type metadata accessor for TTRIReminderDetailPresenter();
  v101 = objc_allocWithZone(v224);
  v102 = __swift_mutable_project_boxed_opaque_existential_1(&v265, *(&v266 + 1));
  v226 = &v223;
  v103 = MEMORY[0x28223BE20](v102);
  v105 = (&v223 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105, v103);
  v107 = *v105;
  v263 = &off_282ED4DD0;
  v262 = v100;
  v261[0] = v107;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v108 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleState;
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v109 = v243;
  v110 = v242;
  sub_21D8335E8(v243, v242);

  v111 = v236;

  v112 = v248;

  v113 = v247;

  v114 = v245;

  sub_21D8301D4(v238);
  *&v101[v108] = sub_21D0D852C(0x7265646E696D6552, 0xEF736C6961746544);
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_deferredUpdatesCancellable] = 0;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationTriggerCancellable] = 0;
  v115 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
  v116 = type metadata accessor for TTRHashtagEditorModuleState();
  (*(*(v116 - 8) + 56))(&v101[v115], 1, 1, v116);
  v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate] = 0;
  v117 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_editingSessionSharedProperties;
  type metadata accessor for TTRRemindersListEditingSessionPropertiesSharingWrapper();
  v118 = swift_allocObject();
  v119 = MEMORY[0x277D84F98];
  *(v118 + 16) = MEMORY[0x277D84F98];
  *&v101[v117] = v118;
  v120 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
  *v120 = 0u;
  *(v120 + 1) = 0u;
  *(v120 + 4) = 0;
  v120[40] = -1;
  v121 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility];
  *v121 = 0u;
  *(v121 + 1) = 0u;
  *(v121 + 4) = 0;
  v121[40] = -1;
  v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState] = 0;
  v122 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
  v123 = type metadata accessor for TTRReminderDetailViewModel(0);
  (*(*(v123 - 8) + 56))(&v101[v122], 1, 1, v123);
  *&v269 = v109;
  BYTE8(v269) = v110;
  v124 = sub_21D257A70(&v269);
  v125 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration];
  *v125 = v124 & 1;
  v125[1] = BYTE1(v124);
  v125[2] = BYTE2(v124) & 1;
  v125[3] = BYTE3(v124) & 1;
  v125[4] = BYTE4(v124) & 1;
  *(v125 + 1) = v126;
  *(v125 + 2) = v127;
  v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_savesOnCommit] = v232 & 1;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_itemCount] = v233;
  v128 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor];
  *v128 = v251;
  v128[1] = &protocol witness table for TTRReminderDetailInteractor;
  v129 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor];
  *v129 = v111;
  v129[1] = &protocol witness table for TTRLocationQuickPicksInteractor;
  sub_21D0D32E4(v261, &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router]);
  v130 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellTitleModule];
  *v130 = sub_21D8305F0;
  v130[1] = 0;
  v131 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellNotesModule];
  *v131 = sub_21D8311E0;
  v131[1] = 0;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_contactsProvider] = v249;
  type metadata accessor for TTRIAssigneeOptionMenuImageProvider();
  v132 = swift_allocObject();
  v133 = MEMORY[0x277D84F90];
  v132[3] = MEMORY[0x277D84F90];
  v132[4] = v119;
  v132[2] = v112;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_assigneeMenuItemAvatarProvider] = v132;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_timeZoneProvider] = v113;
  v134 = v250;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker] = v250;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentThumbnailsManager] = v114;
  v135 = objc_allocWithZone(type metadata accessor for TTRIAttachmentImportingController());

  v136 = [v135 init];
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentImportingController] = v136;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper();
  swift_allocObject();
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper] = sub_21DBCEC2C(v133);
  v137 = type metadata accessor for TTRReminderDetailDisplayUpdater();
  v138 = swift_allocObject();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626B8);
  swift_allocObject();
  *(v138 + 16) = sub_21DBF907C();
  *(v138 + 24) = 0;
  v139 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater];
  v139[3] = v137;
  v139[4] = &off_282EAC500;
  *v139 = v138;
  v140 = __swift_project_boxed_opaque_existential_1(v261, v262);
  v141 = MEMORY[0x28223BE20](v140);
  v143 = (&v223 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v144 + 16))(v143, v141);
  v145 = *v143;

  v146 = sub_21D8318E0(v251, v145, v134, v113);
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability] = v146;
  *&v271 = &off_282EAC4F0;
  *(&v270 + 1) = v137;
  *&v269 = v138;
  v223 = v138;
  type metadata accessor for TTRReminderDetailUserActivityPresenterCapability();
  v147 = swift_allocObject();
  v148 = __swift_mutable_project_boxed_opaque_existential_1(&v269, v137);
  v149 = MEMORY[0x28223BE20](v148);
  v151 = (&v223 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v152 + 16))(v151, v149);
  v153 = *v151;
  v147[7] = v137;
  v147[8] = &off_282EAC4F0;
  v147[4] = v153;
  v147[2] = v244;
  v147[3] = &protocol witness table for TTRUserActivityMetadataInterator;

  __swift_destroy_boxed_opaque_existential_0(&v269);
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_userActivityCapability] = v147;
  v154 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state];
  *v154 = v146;
  *(v154 + 4) = 0;
  v154[10] = 0;
  v155 = v225;
  swift_beginAccess();
  v156 = v134[7];
  v157 = v134[8];
  v158 = __swift_project_boxed_opaque_existential_1(v155, v156);
  v225 = &v223;
  v159 = *(v156 - 8);
  v160 = MEMORY[0x28223BE20](v158);
  v162 = &v223 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v159 + 16))(v162, v160);
  v163 = *(v157 + 96);

  v233 = v147;

  v164 = v157;
  v165 = v223;
  v166 = v163(v156, v164);
  (*(v159 + 8))(v162, v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720);
  v167 = swift_allocObject();
  *(v167 + 16) = 2;
  *(v167 + 40) = 0u;
  *(v167 + 56) = 0u;
  *(v167 + 24) = 0;
  *(v167 + 32) = v166;
  swift_beginAccess();
  *(v167 + 16) = 0;
  v168 = v224;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_observerForShouldShowAsUnauthorizedForPreciseLocation] = v167;
  v260.receiver = v101;
  v260.super_class = v168;
  v169 = objc_msgSendSuper2(&v260, sel_init);
  v170 = *&v169[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentImportingController] + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  *(v170 + 8) = &off_282ED4F88;
  swift_unknownObjectWeakAssign();
  v171 = *&v169[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper];
  swift_beginAccess();
  *(v171 + 24) = &off_282ED4FA0;
  swift_unknownObjectWeakAssign();
  *&v269 = *(v165 + 16);
  sub_21D0D0F1C(&qword_27CE626C0, &qword_27CE626B8);
  v172 = v169;
  *&v269 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626C8);
  sub_21D0D0F1C(&qword_27CE626D0, &qword_27CE626C8);
  v173 = sub_21DBF91AC();

  *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_deferredUpdatesCancellable] = v173;

  v174 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v175 = *(v146 + 16);
  v176 = *(v146 + 24);
  *(v146 + 16) = sub_21D833BF0;
  *(v146 + 24) = v174;

  sub_21D0EC9F4(v175, v176);

  v177 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21D59F07C(sub_21D5BB894, 0, sub_21D833BF8, v177);
  v178 = v238;

  if (v178 == 1)
  {
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v185 = v240;
    v184 = v241;
    v186 = v239;
    v187 = v237;
    v188 = -1;
  }

  else if (v178)
  {
    v185 = v240;
    v184 = v241;
    v186 = v239;
    v187 = v237;
    sub_21D8301D4(v178);
    v188 = 0;
    v179 = v178;
    v180 = v184;
    v181 = v185;
    v182 = v186;
    v183 = v187;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v188 = 2;
    v185 = v240;
    v184 = v241;
    v186 = v239;
    v187 = v237;
  }

  v189 = &v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
  v190 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
  v191 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8];
  v192 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16];
  v193 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24];
  v194 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32];
  *v189 = v179;
  *(v189 + 1) = v180;
  *(v189 + 2) = v181;
  *(v189 + 3) = v182;
  *(v189 + 4) = v183;
  v195 = v189[40];
  v189[40] = v188;
  sub_21D7A98A0(v190, v191, v192, v193, v194, v195);
  if (v178 == 1)
  {
    v178 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v196 = -1;
  }

  else if (v178)
  {
    v196 = 0;
  }

  else
  {
    sub_21D830184(0);
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v196 = 2;
  }

  v197 = &v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility];
  v198 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility];
  v199 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 8];
  v200 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 16];
  v201 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 24];
  v202 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 32];
  *v197 = v178;
  *(v197 + 1) = v184;
  *(v197 + 2) = v185;
  *(v197 + 3) = v186;
  *(v197 + 4) = v187;
  v203 = v197[40];
  v197[40] = v196;
  sub_21D7A98A0(v198, v199, v200, v201, v202, v203);
  v204 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleState];

  sub_21D11DB30(2, v204);

  __swift_destroy_boxed_opaque_existential_0(v261);
  __swift_destroy_boxed_opaque_existential_0(&v265);
  type metadata accessor for TTRIReminderDetailViewController();
  v205 = v243;
  *&v269 = v243;
  v206 = v242;
  BYTE8(v269) = v242;
  v207 = v172;
  sub_21D8335E8(v205, v206);
  v208 = v207;
  sub_21DA93F7C(&v269, &v253 + 8);
  *&v252 = v208;
  *(&v252 + 1) = &off_282ED5178;
  v209 = v230;
  *&v253 = v230;
  v273 = v256;
  v274 = v257;
  v275 = v258;
  v276 = v259;
  v271 = v254;
  v272 = v255;
  v269 = v252;
  v270 = v253;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v211 = objc_opt_self();
  v212 = v209;
  v213 = v208;
  v214 = [v211 bundleForClass_];
  v215 = sub_21DBFA12C();
  v216 = [objc_opt_self() storyboardWithName:v215 bundle:v214];

  v217 = sub_21D5A4624(v216, 0xD000000000000020, 0x800000021DC6D3F0, &v269);
  sub_21D81A2B0(&v252);

  v218 = v213;
  TTRReminderDetailInteractor.delegate.setter(v172, &off_282ED50B0);
  v219 = v236;
  swift_beginAccess();
  v219[3] = &off_282ED50A0;
  swift_unknownObjectWeakAssign();
  *&v218[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_delegate + 8] = &off_282ED4748;
  swift_unknownObjectWeakAssign();
  v220 = &v218[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate];
  swift_beginAccess();
  *(v220 + 1) = v234;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();

  swift_unknownObjectWeakAssign();

  return v217;
}

uint64_t assignWithCopy for TTRIReminderDetailInCalendarEditingOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailInCalendarEditingOptions(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailInCalendarEditingOptions(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailInCalendarEditingOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_21D8335E8(id result, char a2)
{
  if ((a2 & 0xC0) == 0x40)
  {
    return result;
  }

  return result;
}

uint64_t assignWithCopy for TTRIReminderDetailStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D8335E8(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D257D78(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D257D78(v4, v5);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_21D833748(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21D833774(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t dispatch thunk of TTRIReminderDetailModuleInterface.commitEditing(dismissalState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 120) + **(a4 + 120));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRIReminderDetailModuleInterface.cancelEditing(dismissalState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 128) + **(a4 + 128));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D1B795C;

  return v11(a1, a2, a3, a4);
}

void sub_21D833C14(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  sub_21D0DB414(a1, v10);
  if (v11)
  {
    sub_21D83405C();
    if (swift_dynamicCast())
    {

      *a5 = a2;
      *(a5 + 8) = a3;
      *(a5 + 16) = 0;
      *a4 = 1;
    }
  }

  else
  {
    sub_21D1A8418(v10);
  }
}

id _s15RemindersUICore41TTRInlineButtonAttachmentTextViewDelegatePAAE35ttrAccessibilityAttributedLabelWith_020replacementStringForD0So012NSAttributedO0CAG_SStF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v24 = 0;
  v25 = 0;
  v26 = 1;
  v5 = *MEMORY[0x277D74060];
  v6 = v4;
  v7 = [v6 string];
  v8 = sub_21DBFA16C();
  v10 = v9;

  v11 = MEMORY[0x223D42B30](v8, v10);

  v12 = swift_allocObject();
  *(v12 + 16) = &v24;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21D834054;
  *(v13 + 24) = v12;
  aBlock[4] = sub_21D24B3B4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A6068;
  aBlock[3] = &block_descriptor_95;
  v14 = _Block_copy(aBlock);

  [v6 enumerateAttribute:v5 inRange:0 options:v11 usingBlock:{0, v14}];

  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    swift_once();
LABEL_7:
    v20 = qword_280D177B0;
    v21 = sub_21DBFA7AC();
    [v6 addAttribute:v20 value:v21 range:{isEscapingClosureAtFileLocation, a3}];

    return v6;
  }

  if (v26 != 1)
  {
    isEscapingClosureAtFileLocation = v24;
    v16 = v25;
    v17 = [v6 string];
    if (!v17)
    {
      sub_21DBFA16C();
      v17 = sub_21DBFA12C();
    }

    v18 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

    v6 = v18;
    v19 = sub_21DBFA12C();
    [v6 replaceCharactersInRange:isEscapingClosureAtFileLocation withString:{v16, v19}];

    a3 = sub_21DBFA28C();
    if (qword_280D177A8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  return v6;
}

unint64_t sub_21D83405C()
{
  result = qword_27CE626D8;
  if (!qword_27CE626D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE626D8);
  }

  return result;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.withPriority(_:)(__C::UILayoutPriority a1)
{
  [v1 setPriority_];

  return v3;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.withIdentifier(_:)(Swift::String a1)
{
  v1 = sub_21DBFA12C();
  [v3 setIdentifier_];

  return v3;
}

NSLayoutConstraint __swiftcall NSLayoutConstraint.store(in:)(NSLayoutConstraint_optional *in)
{
  in->value.super.isa = v1;
  v3 = v1;

  return v3;
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.__allocating_init(store:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 32) = 2;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 33) = a3;
  return result;
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.init(store:backgroundQueue:ignoresSeachText:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = 2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 33) = a3;
  return v3;
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t TTRReminderLocationPickerVehicleItemProvider.items(matching:location:)(uint64_t a1, unint64_t a2)
{
  if ((*(v2 + 33) & 1) == 0)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      goto LABEL_7;
    }
  }

  if (*(v2 + 32) == 2)
  {

    sub_21DBF82DC();

    sub_21D0CE468();
    v4 = sub_21DBFB12C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626E0);
    v5 = sub_21DBF820C();

    return v5;
  }

  else
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE644A0);
    swift_allocObject();
    return sub_21DBF824C();
  }
}

id sub_21D8343BC@<X0>(_BYTE *a1@<X8>)
{
  result = [*(v1 + 16) everConnectedToCar];
  *a1 = result;
  return result;
}

unsigned __int8 *sub_21D8343F8@<X0>(unsigned __int8 *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *(v2 + 32) = v3;
  if (v3)
  {
    v4 = &unk_282EA7B58;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *a2 = v4;
  return result;
}

uint64_t sub_21D834494()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE626E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE626E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D834568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRListType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TTRUndoNavigationRequest.reminderIDs.getter()
{
  type metadata accessor for TTRUndoNavigationRequest();

  return sub_21DBF8E0C();
}

uint64_t type metadata accessor for TTRUndoNavigationRequest()
{
  result = qword_27CE62700;
  if (!qword_27CE62700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRUndoNavigationRequest.navigationSpecifier.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_21DBF667C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TTRUndoNavigationRequest();
  v12 = sub_21D198698(*(v2 + *(v11 + 20)));
  sub_21D834568(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {

      v28 = sub_21DBF66FC();
      (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
      v29 = sub_21DBF6C1C();
      return (*(*(v29 - 8) + 8))(v10, v29);
    }

    else
    {

      sub_21D8375BC(v10, type metadata accessor for TTRListType);
      v19 = sub_21DBF66FC();
      return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v21 = *v10;
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *a1 = v21;
      *&a1[v22] = v12;
      v23 = *MEMORY[0x277D45148];
      v24 = sub_21DBF668C();
      (*(*(v24 - 8) + 104))(&a1[v22], v23, v24);
      v18 = MEMORY[0x277D451F8];
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v10;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0) + 48);
      *a1 = v14;
      *&a1[v15] = v12;
      v16 = *MEMORY[0x277D45148];
      v17 = sub_21DBF668C();
      (*(*(v17 - 8) + 104))(&a1[v15], v16, v17);
      v18 = MEMORY[0x277D451D8];
LABEL_8:
      v25 = *v18;
      v26 = sub_21DBF66FC();
      v27 = *(v26 - 8);
      (*(v27 + 104))(a1, v25, v26);
      return (*(v27 + 56))(a1, 0, 1, v26);
    }

    v32 = *v10;
    *v7 = v12;
    (*(v5 + 104))(v7, *MEMORY[0x277D45130], v4);
    REMNavigationSpecifier.init(predefinedSmartListType:pathSpecifier:)(&v32, v7, a1);
    v30 = sub_21DBF66FC();
    return (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
  }
}

unint64_t TTRUndoNavigationRequest.description.getter()
{
  sub_21DBFBEEC();

  v0 = TTRListType.description.getter();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](0x646E696D6572202CLL, 0xEF203A7344497265);
  type metadata accessor for TTRUndoNavigationRequest();
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
  v1 = sub_21DBFAABC();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0xD000000000000023;
}

void (*TTRUndoNavigationPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRUndoNavigationPresenterCapability.__allocating_init(undoManager:)(void *a1)
{
  v2 = swift_allocObject();
  TTRUndoNavigationPresenterCapability.init(undoManager:)(a1);
  return v2;
}

uint64_t sub_21D834CE0(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (!*(v1 + 56))
  {
    if (qword_27CE56D18 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE626E8);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAE9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRUndoNavigationPresenterCapability: prepare for batch processing", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    *(v2 + 56) = MEMORY[0x277D84F90];

    v8._object = 0x800000021DC6D570;
    v8._countAndFlagsBits = 0xD00000000000001CLL;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v8);
  }

  swift_beginAccess();
  if (*(v2 + 56))
  {
    sub_21D836704(a1, v18);
    v9 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 56) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_21D214CE8(0, *(v9 + 2) + 1, 1, v9);
      *(v2 + 56) = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_21D214CE8((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[64 * v12];
    v14 = v18[0];
    v15 = v18[1];
    v16 = v18[3];
    *(v13 + 4) = v18[2];
    *(v13 + 5) = v16;
    *(v13 + 2) = v14;
    *(v13 + 3) = v15;
    *(v2 + 56) = v9;
  }

  return swift_endAccess();
}

uint64_t sub_21D834ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v75 - v3;
  v5 = type metadata accessor for TTRListType(0);
  v80 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v76 = v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = v75 - v8;
  v75[1] = v9;
  MEMORY[0x28223BE20](v10);
  v83 = v75 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AD0);
  v84 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v75[0] = v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v86 = v75 - v14;
  MEMORY[0x28223BE20](v15);
  v85 = v75 - v16;
  MEMORY[0x28223BE20](v17);
  v82 = v75 - v18;
  MEMORY[0x28223BE20](v19);
  v87 = v75 - v20;
  if (qword_27CE56D18 != -1)
  {
    swift_once();
  }

  v21 = sub_21DBF84BC();
  v78 = __swift_project_value_buffer(v21, qword_27CE626E8);
  v22 = sub_21DBF84AC();
  v23 = sub_21DBFAE9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21D0C9000, v22, v23, "TTRUndoNavigationPresenterCapability: perform batch processing", v24, 2u);
    MEMORY[0x223D46520](v24, -1, -1);
  }

  v25 = *(a1 + 16);
  if (v25)
  {
    v26 = a1 + 32;
    v27 = (v80 + 56);
    v28 = (v80 + 48);
    v29 = MEMORY[0x277D84F90];
    v81 = v5;
    while (1)
    {
      sub_21D836704(v26, &v90);
      sub_21D0D3954(&v90 + 8, v89, &qword_27CE5BDD0);
      if (v89[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD8);
        v30 = swift_dynamicCast();
        (*v27)(v4, v30 ^ 1u, 1, v5);
        if ((*v28)(v4, 1, v5) != 1)
        {
          v31 = v83;
          sub_21D5FBFB8(v4, v83);
          v32 = v82;
          v33 = (v82 + *(v88 + 48));
          sub_21D5FBFB8(v31, v82);
          v34 = v91;
          *v33 = v90;
          v33[1] = v34;
          v35 = v93;
          v33[2] = v92;
          v33[3] = v35;
          sub_21D836760(v32, v87);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_21D212C2C(0, v29[2] + 1, 1, v29);
          }

          v37 = v29[2];
          v36 = v29[3];
          if (v37 >= v36 >> 1)
          {
            v29 = sub_21D212C2C(v36 > 1, v37 + 1, 1, v29);
          }

          v5 = v81;
          v29[2] = v37 + 1;
          sub_21D836760(v87, v29 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v37);
          goto LABEL_9;
        }
      }

      else
      {
        sub_21D0CF7E0(v89, &qword_27CE5BDD0);
        (*v27)(v4, 1, 1, v5);
      }

      sub_21D3DDF7C(&v90);
      sub_21D0CF7E0(v4, &qword_27CE650E0);
LABEL_9:
      v26 += 64;
      if (!--v25)
      {
        goto LABEL_18;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_18:
  v38 = v29[2];
  if (!v38)
  {
  }

  v40 = v84;
  v39 = v85;
  v41 = v29 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
  sub_21D0D3954(v41, v85, &qword_27CE59AD0);
  v42 = *(v88 + 48);
  v43 = v79;
  sub_21D5FBFB8(v39, v79);
  result = sub_21D3DDF7C(v39 + v42);
  if (v29[2] < v38)
  {
    __break(1u);
  }

  else
  {
    sub_21DBF8E0C();
    v45 = 1;
    while (v38 != v45)
    {
      v46 = v86;
      sub_21D0D3954(v41 + *(v40 + 72) * v45++, v86, &qword_27CE59AD0);
      v47 = _s15RemindersUICore11TTRListTypeO2eeoiySbAC_ACtFZ_0(v46, v43);
      sub_21D0CF7E0(v46, &qword_27CE59AD0);
      if ((v47 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();
        v48 = sub_21DBF84AC();
        v49 = sub_21DBFAE9C();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_21D0C9000, v48, v49, "TTRUndoNavigationPresenterCapability: multiple list types, skip navigation", v50, 2u);
          MEMORY[0x223D46520](v50, -1, -1);
        }

        return sub_21D8375BC(v43, type metadata accessor for TTRListType);
      }
    }

    v51 = v29[2];
    if (v51)
    {
      v89[0] = MEMORY[0x277D84F90];
      sub_21D18EE64(0, v51, 0);
      v52 = v89[0];
      v53 = *(v40 + 72);
      v54 = v75[0];
      do
      {
        v55 = v85;
        sub_21D0D3954(v41, v85, &qword_27CE59AD0);
        sub_21D836760(v55, v54);
        v56 = (v54 + *(v88 + 48));
        v57 = v56[1];
        v90 = *v56;
        v91 = v57;
        v58 = v56[3];
        v92 = v56[2];
        v93 = v58;
        sub_21D8375BC(v54, type metadata accessor for TTRListType);
        v89[0] = v52;
        v60 = *(v52 + 16);
        v59 = *(v52 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_21D18EE64((v59 > 1), v60 + 1, 1);
          v54 = v75[0];
          v52 = v89[0];
        }

        *(v52 + 16) = v60 + 1;
        v61 = (v52 + (v60 << 6));
        v62 = v90;
        v63 = v91;
        v64 = v93;
        v61[4] = v92;
        v61[5] = v64;
        v61[2] = v62;
        v61[3] = v63;
        v41 += v53;
        --v51;
      }

      while (v51);

      v43 = v79;
    }

    else
    {

      v52 = MEMORY[0x277D84F90];
    }

    sub_21DBF8E0C();
    v65 = sub_21DBF84AC();
    v66 = sub_21DBFAEAC();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 134217984;
      *(v67 + 4) = *(v52 + 16);

      _os_log_impl(&dword_21D0C9000, v65, v66, "TTRUndoNavigationPresenterCapability: collecting reminderIDs from notifications {count: %ld}", v67, 0xCu);
      MEMORY[0x223D46520](v67, -1, -1);
    }

    else
    {
    }

    v68 = sub_21D8367D0(v52);

    *&v90 = v68;
    v69 = swift_allocObject();
    v70 = v77;
    swift_weakInit();
    v71 = v76;
    sub_21D834568(v43, v76);
    v72 = (*(v80 + 80) + 24) & ~*(v80 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v69;
    sub_21D5FBFB8(v71, v73 + v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62710);
    sub_21D0D0F1C(&qword_27CE62718, &qword_27CE62710);
    v74 = sub_21DBF93CC();

    sub_21D8375BC(v43, type metadata accessor for TTRListType);
    *(v70 + 48) = v74;
  }

  return result;
}

uint64_t sub_21D8358F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRUndoNavigationRequest();
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRListType(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (qword_27CE56D18 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE626E8);
    sub_21D834568(a3, v10);
    sub_21DBF8E0C();
    v15 = sub_21DBF84AC();
    v16 = sub_21DBFAEDC();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = v5;
      v18 = v17;
      v19 = swift_slowAlloc();
      v33[0] = v19;
      *v18 = 136315394;
      v20 = TTRListType.description.getter();
      v32 = a3;
      v22 = v21;
      sub_21D8375BC(v10, type metadata accessor for TTRListType);
      v23 = sub_21D0CDFB4(v20, v22, v33);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      sub_21D0D8CF0(0, &qword_280D17880);
      sub_21D0D65DC(&qword_280D17870, &qword_280D17880);
      v24 = sub_21DBFAABC();
      v26 = sub_21D0CDFB4(v24, v25, v33);

      *(v18 + 14) = v26;
      a3 = v32;
      _os_log_impl(&dword_21D0C9000, v15, v16, "TTRUndoNavigationPresenterCapability: propose navigation {listType: %s, reminderIDs: %s}", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v19, -1, -1);
      v27 = v18;
      v5 = v31;
      MEMORY[0x223D46520](v27, -1, -1);
    }

    else
    {

      sub_21D8375BC(v10, type metadata accessor for TTRListType);
    }

    sub_21D834568(a3, v7);
    *&v7[*(v5 + 20)] = v11;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v13 + 24);
      ObjectType = swift_getObjectType();
      v30 = *(v28 + 8);
      sub_21DBF8E0C();
      v30(v13, v7, ObjectType, v28);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_21DBF8E0C();
    }

    return sub_21D8375BC(v7, type metadata accessor for TTRUndoNavigationRequest);
  }

  return result;
}

uint64_t sub_21D835CBC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21DBF8E0C();
  v4 = sub_21DBF8E0C();
  v5 = sub_21D99EEB0(v4, v3);

  *a2 = v5;
  return result;
}

uint64_t TTRUndoNavigationPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);

  return v0;
}

uint64_t TTRUndoNavigationPresenterCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TTRUndoNavigationPresenterCapability.deferredActionPerform(_:reason:)()
{
  result = swift_beginAccess();
  v2 = *(v0 + 56);
  if (v2)
  {
    *(v0 + 56) = 0;
    sub_21D834ED4(v2);
  }

  return result;
}

uint64_t sub_21D835E00()
{
  result = swift_beginAccess();
  v2 = *(v0 + 56);
  if (v2)
  {
    *(v0 + 56) = 0;
    sub_21D834ED4(v2);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRListType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v14 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v15 = v14;
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_6;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v12 = sub_21DBF6C1C();
          (*(*(v12 - 8) + 16))(a1, a2, v12);
          swift_storeEnumTagMultiPayload();
          goto LABEL_15;
        case 4:
          v13 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v13;
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_15;
        case 5:
LABEL_6:
          v9 = *a2;
          *a1 = *a2;
          v10 = v9;
          swift_storeEnumTagMultiPayload();
LABEL_15:
          *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
          sub_21DBF8E0C();
          return a1;
      }
    }

    memcpy(a1, a2, *(*(v7 - 8) + 64));
    goto LABEL_15;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

uint64_t destroy for TTRUndoNavigationRequest(id *a1)
{
  type metadata accessor for TTRListType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  switch(EnumCaseMultiPayload)
  {
    case 3:
      v3 = sub_21DBF6C1C();
      (*(*(v3 - 8) + 8))(a1, v3);
      break;
    case 4:

      break;
    case 5:
LABEL_7:

      break;
  }

LABEL_10:
}

void *initializeWithCopy for TTRUndoNavigationRequest(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v13 = v12;
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      goto LABEL_5;
    }

LABEL_12:
    memcpy(a1, a2, *(*(v6 - 8) + 64));
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v10 = sub_21DBF6C1C();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v11 = a2[1];
    *a1 = *a2;
    a1[1] = v11;
    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_12;
  }

LABEL_5:
  v8 = *a2;
  *a1 = *a2;
  v9 = v8;
  swift_storeEnumTagMultiPayload();
LABEL_13:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  sub_21DBF8E0C();
  return a1;
}

char *assignWithCopy for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D8375BC(a1, type metadata accessor for TTRListType);
    v6 = type metadata accessor for TTRListType(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        v11 = *a2;
        *a1 = *a2;
        a1[8] = a2[8];
        v12 = v11;
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }

      if (EnumCaseMultiPayload == 1)
      {
LABEL_6:
        v8 = *a2;
        *a1 = *a2;
        v9 = v8;
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 3:
          v10 = sub_21DBF6C1C();
          (*(*(v10 - 8) + 16))(a1, a2, v10);
          swift_storeEnumTagMultiPayload();
          goto LABEL_14;
        case 4:
          *a1 = *a2;
          *(a1 + 1) = *(a2 + 1);
          sub_21DBF8E0C();
          swift_storeEnumTagMultiPayload();
          goto LABEL_14;
        case 5:
          goto LABEL_6;
      }
    }

    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

LABEL_14:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  sub_21DBF8E0C();

  return a1;
}

char *initializeWithTake for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRListType(0);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = sub_21DBF6C1C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a1, a2, *(*(v6 - 8) + 64));
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  return a1;
}

char *assignWithTake for TTRUndoNavigationRequest(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D8375BC(a1, type metadata accessor for TTRListType);
    v6 = type metadata accessor for TTRListType(0);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v7 = sub_21DBF6C1C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a1, a2, *(*(v6 - 8) + 64));
    }
  }

  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];

  return a1;
}

uint64_t sub_21D836630()
{
  result = type metadata accessor for TTRListType(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D836760(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_21D8367D0(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62720);
  v2 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62728);
  v4 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v50 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62730);
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62738);
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v50 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B310);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v50 - v13;
  v58 = sub_21DBFBA3C();
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v51 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62740);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v52 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62748);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - v18;
  v82 = MEMORY[0x277D84FA0];
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58FF8);
  sub_21DBF90EC();
  sub_21D0D0F1C(&qword_27CE62750, &qword_27CE62748);
  v20 = sub_21DBF920C();
  (*(v17 + 8))(v19, v16);
  v70 = *(a1 + 16);
  if (v70)
  {
    v69 = a1 + 32;
    v63 = (v4 + 8);
    v62 = (v6 + 8);
    v59 = (v2 + 8);
    v68 = (v8 + 8);

    v21 = 0;
    v22 = MEMORY[0x277D84F90];
    v50 = v20;
    while (1)
    {
      sub_21D836704(v69 + (v21 << 6), &v82);
      v75 = v20;
      v80 = v22;
      v81 = v20;
      v35 = *(v83 + 16);
      if (v35)
      {
        v36 = v83 + 32;
        v37 = v22;
        do
        {
          sub_21D22BFF0(v36, &v78);
          sub_21D0CEB98(v79, v77);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A630);
          if (swift_dynamicCast() && (v38 = v76, v38 == sub_21D0D8CF0(0, &qword_280D17860)))
          {
            sub_21D0CEB98(&v78, v77);
            sub_21D22C04C(&v78);
            sub_21D0D8CF0(0, &qword_280D17880);
            v39 = swift_dynamicCast();
            if (v39)
            {
              MEMORY[0x223D42D80](v39);
              if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_21DBFA63C();
                v22 = MEMORY[0x277D84F90];
              }

              sub_21DBFA6CC();
              v37 = v80;
            }
          }

          else
          {
            sub_21D22C04C(&v78);
          }

          v36 += 64;
          --v35;
        }

        while (v35);
      }

      else
      {
        v37 = v22;
      }

      if (v37 >> 62)
      {
        if (!sub_21DBFBD7C())
        {
          goto LABEL_19;
        }
      }

      else if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:

        v78 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
        v40 = v60;
        sub_21DBF90EC();
        sub_21D0D0F1C(&qword_27CE62798, &qword_27CE62720);
        v41 = v61;
        v28 = sub_21DBF920C();
        (*v59)(v40, v41);
        goto LABEL_5;
      }

      v78 = v84;
      *(swift_allocObject() + 16) = v37;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62758);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
      sub_21D0D0F1C(&qword_27CE62760, &qword_27CE62758);
      v74 = v21;
      v23 = v66;
      sub_21DBF927C();

      v78 = v22;
      sub_21D0D0F1C(&qword_27CE62768, &qword_27CE62728);
      v24 = v64;
      v25 = v67;
      sub_21DBF922C();
      v26 = v23;
      v21 = v74;
      (*v63)(v26, v25);
      sub_21D0D0F1C(&qword_27CE62770, &qword_27CE62730);
      v27 = v65;
      v28 = sub_21DBF920C();
      (*v62)(v24, v27);
LABEL_5:
      v78 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62710);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62778);
      sub_21D0D0F1C(&qword_27CE62718, &qword_27CE62710);
      sub_21D0D0F1C(&qword_27CE62780, &qword_27CE62778);
      v29 = v72;
      sub_21DBF925C();

      sub_21D0D0F1C(&qword_27CE62788, &qword_27CE62738);
      v30 = v21 + 1;
      v31 = v73;
      v32 = sub_21DBF920C();

      v33 = v31;
      v21 = v30;
      (*v68)(v29, v33);
      sub_21D3DDF7C(&v82);
      v20 = v32;
      v34 = v30 == v70;
      v22 = MEMORY[0x277D84F90];
      if (v34)
      {
        v82 = v32;
        v42 = v51;
        sub_21DBFBA1C();
        v43 = v53;
        v44 = v54;
        (*(v53 + 56))(v54, 1, 1, v58);
        v75 = [objc_opt_self() mainRunLoop];
        v78 = v75;
        v45 = sub_21DBFBA0C();
        v46 = v56;
        (*(*(v45 - 8) + 56))(v56, 1, 1, v45);
        sub_21D0D8CF0(0, &qword_280D17650);
        sub_21D0D65DC(&qword_280D17660, &qword_280D17650);
        v47 = v52;
        sub_21DBF92BC();
        sub_21D0CF7E0(v46, &qword_27CE5A0F0);

        sub_21D0CF7E0(v44, &qword_27CE5B310);
        (*(v43 + 8))(v42, v58);
        sub_21D0D0F1C(&qword_27CE62790, &qword_27CE62740);
        v48 = v57;
        v20 = sub_21DBF920C();

        (*(v55 + 8))(v47, v48);
        return v20;
      }
    }
  }

  return v20;
}

uint64_t sub_21D837548(uint64_t *a1)
{
  v3 = *(type metadata accessor for TTRListType(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_21D8358F0(a1, v4, v5);
}

uint64_t sub_21D8375BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D83761C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE627A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE627A0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.itemClusters.getter@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 16);
  return sub_21DBF8E0C();
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.itemClusters.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 16) = v2;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.__allocating_init(topLevelItemSpacing:subtaskSpacing:)(double a1, double a2)
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  *(result + 24) = a1;
  *(result + 32) = a2;
  return result;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.init(topLevelItemSpacing:subtaskSpacing:)(double a1, double a2)
{
  result = v2;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

CGSize __swiftcall TTRBoardColumnCollectionViewLayoutHelper.collectionViewContentSize(baseSize:)(CGSize baseSize)
{
  height = baseSize.height;
  width = baseSize.width;
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v4 + 16);
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = 0;
    v9 = (v4 + 48);
    while (1)
    {
      v10 = *v9;
      v9 += 3;
      v11 = v10 - 1;
      if (__OFSUB__(v10, 1))
      {
        break;
      }

      v12 = __OFADD__(v8, v11);
      v8 += v11;
      if (v12)
      {
        goto LABEL_11;
      }

      if (!--v5)
      {
        v7 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:
    v7 = height - (*(v1 + 24) - *(v1 + 32)) * v7;
    if (v7 < 0.0)
    {
      v7 = 0.0;
    }

    v6 = width;
  }

  result.height = v7;
  result.width = v6;
  return result;
}

uint64_t sub_21D837900(char *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  v10[2] = a3;
  sub_21DBF8E0C();
  sub_21D2566E4(0, sub_21D83A3DC, v10, v6);

  v10[4] = *(a2 + 16);
  sub_21DBF8E0C();
  TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(v11);

  v7 = qword_21DC2BB58[v11[0]];
  [a1 frame];
  [a1 setFrame_];
  v8 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
  result = swift_beginAccess();
  *&a1[v8] = v7;
  return result;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.layoutAttributesForElements(in:baseLayoutAttributesForElementsInRect:)(uint64_t (*a1)(double, double, double, double), CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v7 = a5;
  Width = a4;
  v9 = a3;
  v10 = a2;
  v11 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84FA0];
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = a1(v10, v9, Width, v7);
    v14 = v13 ? v13 : v11;
    v15 = sub_21D837B98(v14, &v25, v5, &v26, a2, a3, a4, a5);
    v17 = v16;
    v18 = v15;

    if ((v17 & 1) == 0 || v18 <= 0.0)
    {
      break;
    }

    v27.origin.x = v10;
    v27.origin.y = v9;
    v27.size.width = Width;
    v27.size.height = v7;
    MinX = CGRectGetMinX(v27);
    v28.origin.x = v10;
    v28.origin.y = v9;
    v28.size.width = Width;
    v28.size.height = v7;
    MaxY = CGRectGetMaxY(v28);
    v29.origin.x = v10;
    v29.origin.y = v9;
    v29.size.width = Width;
    v29.size.height = v7;
    Width = CGRectGetWidth(v29);
    v10 = MinX;
    v9 = MaxY;
    v7 = v18;
  }

  swift_beginAccess();
  return v26;
}

double sub_21D837B98(unint64_t a1, id *a2, uint64_t a3, void *a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v129 = a4;
  v128 = a3;
  v144 = a2;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v160);
  v14 = &v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v125 - v16;
  v18 = sub_21DBF5D5C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v125 = &v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v149 = &v125 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v125 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v133 = &v125 - v27;
  MEMORY[0x28223BE20](v28);
  v153 = &v125 - v29;
  MEMORY[0x28223BE20](v30);
  v139 = &v125 - v31;
  MEMORY[0x28223BE20](v32);
  v142 = &v125 - v33;
  v156 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  v134 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v159 = &v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v132 = &v125 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v125 - v38;
  MEMORY[0x28223BE20](v40);
  v157 = &v125 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = &v125 - v43;
  if (a1 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
  {
    v138 = a1 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v46 = a1;
    v130 = 0;
    v131 = 0;
    v127 = a1 & 0xFFFFFFFFFFFFFF8;
    v126 = a1 + 32;
    v135 = (v19 + 56);
    v161 = (v19 + 48);
    v148 = (v19 + 32);
    v154 = (v19 + 8);
    v19 = 0;
    v47 = 0.0;
    v137 = a1;
    v145 = v17;
    v150 = v25;
    a1 = v139;
    v158 = v39;
    v152 = v44;
    v136 = i;
    while (1)
    {
      if (v138)
      {
        v48 = MEMORY[0x223D44740](v19, v46);
        v49 = __OFADD__(v19++, 1);
        if (v49)
        {
          break;
        }

        goto LABEL_10;
      }

      if (v19 >= *(v127 + 16))
      {
        goto LABEL_82;
      }

      v48 = *(v126 + 8 * v19);
      v49 = __OFADD__(v19++, 1);
      if (v49)
      {
        break;
      }

LABEL_10:
      v141 = v19;
      v50 = v48;
      v51 = [v48 indexPath];
      v52 = v142;
      sub_21DBF5CAC();

      (*v135)(v52, 0, 1, v18);
      v147 = [v50 representedElementCategory];
      v140 = v50;
      v53 = [v50 representedElementKind];
      if (v53)
      {
        v54 = v53;
        v55 = sub_21DBFA16C();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      sub_21D1B1EE8(v142, v44);
      v58 = v156;
      *&v44[*(v156 + 20)] = v147;
      v59 = &v44[*(v58 + 24)];
      *v59 = v55;
      v59[1] = v57;
      v146 = v57;
      v60 = *v144;
      if (*(*v144 + 2))
      {
        sub_21DBFC7DC();
        sub_21D1B1F58(v44, a1);
        v61 = *v161;
        if ((*v161)(a1, 1, v18) == 1)
        {
          sub_21DBFC7FC();
          sub_21DBF8E0C();
        }

        else
        {
          v62 = a1;
          v63 = v149;
          (*v148)(v149, v62, v18);
          sub_21DBFC7FC();
          sub_21D83A394(&qword_280D17160, MEMORY[0x277CC9AF8]);
          sub_21DBF8E0C();
          sub_21DBFA00C();
          (*v154)(v63, v18);
        }

        MEMORY[0x223D44FA0](v147);
        v64 = v146;
        v143 = v55;
        if (v146)
        {
          sub_21DBFC7FC();
          sub_21DBFA27C();
        }

        else
        {
          sub_21DBFC7FC();
        }

        v65 = sub_21DBFC82C();
        v66 = v60 + 56;
        v67 = -1 << v60[32];
        v68 = v65 & ~v67;
        if ((*&v60[((v68 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v68))
        {
          v151 = ~v67;
          v155 = *(v134 + 72);
          v69 = v157;
          do
          {
            v70 = v60;
            sub_21D8396D8(*(v60 + 6) + v155 * v68, v69);
            v71 = v69;
            v72 = *(v160 + 48);
            sub_21D1B1F58(v71, v17);
            sub_21D1B1F58(v152, &v17[v72]);
            if (v61(v17, 1, v18) == 1)
            {
              if (v61(&v17[v72], 1, v18) != 1)
              {
                goto LABEL_23;
              }

              sub_21D0CF7E0(v17, &unk_27CE58E70);
            }

            else
            {
              sub_21D1B1F58(v17, v153);
              if (v61(&v17[v72], 1, v18) == 1)
              {
                (*v154)(v153, v18);
LABEL_23:
                sub_21D0CF7E0(v17, &qword_27CE5DBF8);
                goto LABEL_24;
              }

              v73 = v149;
              (*v148)(v149, &v17[v72], v18);
              sub_21D83A394(&qword_280D17150, MEMORY[0x277CC9AF8]);
              v74 = sub_21DBFA10C();
              v75 = *v154;
              (*v154)(v73, v18);
              v75(v153, v18);
              v64 = v146;
              v17 = v145;
              sub_21D0CF7E0(v145, &unk_27CE58E70);
              v60 = v70;
              if ((v74 & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            if (*(v157 + *(v156 + 20)) == v147)
            {
              v76 = (v157 + *(v156 + 24));
              v77 = v76[1];
              if (v77)
              {
                if (v64)
                {
                  v78 = *v76 == v143 && v77 == v64;
                  if (v78 || (sub_21DBFC64C() & 1) != 0)
                  {
LABEL_40:

                    sub_21D83973C(v157);
                    v44 = v152;
                    sub_21D83973C(v152);
                    v46 = v137;
                    v25 = v150;
                    a1 = v139;
                    v39 = v158;
                    v79 = v136;
                    goto LABEL_79;
                  }
                }
              }

              else if (!v64)
              {
                goto LABEL_40;
              }
            }

LABEL_24:
            v69 = v157;
            sub_21D83973C(v157);
            v68 = (v68 + 1) & v151;
          }

          while (((*&v66[(v68 >> 3) & 0xFFFFFFFFFFFFFF8] >> v68) & 1) != 0);
        }

        v25 = v150;
        v39 = v158;
        v44 = v152;
      }

      v163 = v140;
      v80 = v140;
      v81 = [v80 representedElementCategory];
      v140 = v80;
      if (!v81)
      {
        v82 = [v80 indexPath];
        v83 = v125;
        sub_21DBF5CAC();

        v84 = v128;
        v85 = *(v128 + 16);
        MEMORY[0x28223BE20](v86);
        *(&v125 - 2) = v83;
        sub_21DBF8E0C();
        v87 = v131;
        v88 = sub_21D2566E4(0, sub_21D2566C8, (&v125 - 4), v85);
        v131 = v87;
        v25 = v150;

        v89 = (*(v84 + 24) - *(v84 + 32)) * v88;
        v164 = *(v84 + 16);
        sub_21DBF8E0C();
        TTRBoardColumnItemClusterCollection.positionInCluster(forItemAt:)(v162);

        if (v47 <= v89)
        {
          v47 = v89;
        }

        v90 = v83;
        v44 = v152;
        (*v154)(v90, v18);
      }

      sub_21D8396D8(v44, v39);
      v91 = v144;
      swift_beginAccess();
      v147 = *v91;
      sub_21DBFC7DC();
      v92 = v133;
      sub_21D1B1F58(v39, v133);
      v93 = *v161;
      if ((*v161)(v92, 1, v18) == 1)
      {
        sub_21DBFC7FC();
      }

      else
      {
        v94 = v92;
        v95 = v149;
        (*v148)(v149, v94, v18);
        sub_21DBFC7FC();
        sub_21D83A394(&qword_280D17160, MEMORY[0x277CC9AF8]);
        sub_21DBFA00C();
        (*v154)(v95, v18);
      }

      v96 = v156;
      v151 = *&v39[*(v156 + 20)];
      MEMORY[0x223D44FA0]();
      v97 = &v39[*(v96 + 24)];
      v98 = *v97;
      v99 = *(v97 + 1);
      sub_21DBFC7FC();
      if (v99)
      {
        sub_21DBFA27C();
      }

      v100 = v147;
      v101 = sub_21DBFC82C();
      v102 = v100 + 56;
      v103 = -1 << v100[32];
      v104 = v101 & ~v103;
      if ((*&v100[((v104 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v104))
      {
        v146 = v99;
        v143 = v98;
        v155 = ~v103;
        v105 = *(v134 + 72);
        v106 = v159;
        do
        {
          sub_21D8396D8(*(v100 + 6) + v105 * v104, v106);
          v107 = v106;
          v108 = *(v160 + 48);
          sub_21D1B1F58(v107, v14);
          sub_21D1B1F58(v158, &v14[v108]);
          if (v93(v14, 1, v18) == 1)
          {
            if (v93(&v14[v108], 1, v18) != 1)
            {
              goto LABEL_54;
            }

            sub_21D0CF7E0(v14, &unk_27CE58E70);
          }

          else
          {
            sub_21D1B1F58(v14, v25);
            if (v93(&v14[v108], 1, v18) == 1)
            {
              (*v154)(v25, v18);
LABEL_54:
              sub_21D0CF7E0(v14, &qword_27CE5DBF8);
              goto LABEL_55;
            }

            v109 = v149;
            (*v148)(v149, &v14[v108], v18);
            sub_21D83A394(&qword_280D17150, MEMORY[0x277CC9AF8]);
            v110 = sub_21DBFA10C();
            v111 = *v154;
            v112 = v109;
            v25 = v150;
            (*v154)(v112, v18);
            v111(v25, v18);
            v100 = v147;
            sub_21D0CF7E0(v14, &unk_27CE58E70);
            if ((v110 & 1) == 0)
            {
              goto LABEL_55;
            }
          }

          if (*(v159 + *(v156 + 20)) == v151)
          {
            v113 = (v159 + *(v156 + 24));
            v114 = v113[1];
            if (v114)
            {
              if (v146)
              {
                v115 = *v113 == v143 && v114 == v146;
                if (v115 || (sub_21DBFC64C() & 1) != 0)
                {
LABEL_71:
                  sub_21D83973C(v159);
                  v39 = v158;
                  goto LABEL_73;
                }
              }
            }

            else if (!v146)
            {
              goto LABEL_71;
            }
          }

LABEL_55:
          v106 = v159;
          sub_21D83973C(v159);
          v104 = (v104 + 1) & v155;
        }

        while (((*&v102[(v104 >> 3) & 0xFFFFFFFFFFFFFF8] >> v104) & 1) != 0);
      }

      v116 = v144;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v158;
      v118 = v132;
      sub_21D8396D8(v158, v132);
      v164 = *v116;
      *v116 = 0x8000000000000000;
      v119 = isUniquelyReferenced_nonNull_native;
      v25 = v150;
      sub_21D9AFAA4(v118, v104, v119);
      *v116 = v164;
LABEL_73:
      sub_21D83973C(v39);
      swift_endAccess();
      v120 = v163;
      v17 = v145;
      v44 = v152;
      v79 = v136;
      if (v163)
      {
        v121 = v129;
        swift_beginAccess();
        v122 = v120;
        MEMORY[0x223D42D80]();
        if (*((*v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();

        v130 = 1;
        v123 = v122;
        v25 = v150;
      }

      else
      {
        v123 = v140;
      }

      sub_21D83973C(v44);

      v46 = v137;
      a1 = v139;
LABEL_79:
      v19 = v141;
      if (v141 == v79)
      {
        return v47;
      }
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v130 = 0;
  return 0.0;
}

uint64_t TTRBoardColumnCollectionViewLayoutHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D838EC4()
{
  v1 = v0;
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_21D1B1F58(v1, &v11 - v7);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_21DBFC7FC();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_21DBFC7FC();
    sub_21D83A394(&qword_280D17160, MEMORY[0x277CC9AF8]);
    sub_21DBFA00C();
    (*(v3 + 8))(v5, v2);
  }

  v9 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  MEMORY[0x223D44FA0](*(v1 + *(v9 + 20)));
  if (!*(v1 + *(v9 + 24) + 8))
  {
    return sub_21DBFC7FC();
  }

  sub_21DBFC7FC();
  return sub_21DBFA27C();
}

uint64_t sub_21D8390EC()
{
  sub_21DBFC7DC();
  sub_21D838EC4();
  return sub_21DBFC82C();
}

uint64_t sub_21D839130()
{
  sub_21DBFC7DC();
  sub_21D838EC4();
  return sub_21DBFC82C();
}

uint64_t sub_21D839170(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF5D5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DBF8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - v12;
  v15 = *(v14 + 56);
  sub_21D1B1F58(a1, &v26 - v12);
  sub_21D1B1F58(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21D1B1F58(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_21D83A394(&qword_280D17150, MEMORY[0x277CC9AF8]);
      v17 = sub_21DBFA10C();
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_21D0CF7E0(v13, &unk_27CE58E70);
      if ((v17 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE5DBF8);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v13, &unk_27CE58E70);
LABEL_8:
  v19 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  if (*(a1 + *(v19 + 20)) == *(a2 + *(v19 + 20)))
  {
    v20 = *(v19 + 24);
    v21 = (a1 + v20);
    v22 = *(a1 + v20 + 8);
    v23 = (a2 + v20);
    v24 = v23[1];
    if (v22)
    {
      if (v24 && (*v21 == *v23 && v22 == v24 || (sub_21DBFC64C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v24)
    {
      return 1;
    }
  }

  return 0;
}

id sub_21D8394C8(void *a1, void (*a2)())
{
  [a1 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  type metadata accessor for TTRBoardColumnItemLayoutAttributes();
  if (swift_dynamicCast())
  {
    a2();
    return v9;
  }

  else
  {
    if (qword_27CE56D20 != -1)
    {
      swift_once();
    }

    v4 = sub_21DBF84BC();
    __swift_project_value_buffer(v4, qword_27CE627A0);
    v5 = sub_21DBF84AC();
    v6 = sub_21DBFAECC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v5, v6, "TTRBoardColumnCollectionViewLayoutHelper: failed to modify attributes", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    return a1;
  }
}

uint64_t type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID()
{
  result = qword_27CE627B8;
  if (!qword_27CE627B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8396D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D83973C(uint64_t a1)
{
  v2 = type metadata accessor for TTRBoardColumnCollectionViewLayoutHelper.AttributeID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_21D839798(void *a1, uint64_t a2, void **a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  [a1 copy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  type metadata accessor for TTRBoardColumnItemLayoutAttributes();
  if (swift_dynamicCast())
  {
    [v25 frame];
    [v25 setFrame_];
    v15 = OBJC_IVAR____TtC15RemindersUICore34TTRBoardColumnItemLayoutAttributes_backgroundRoundedCorners;
    swift_beginAccess();
    *&v25[v15] = a2;
    if (a4 == 0.0 || ([v25 frame], v28.origin.x = a5, v28.origin.y = a6, v28.size.width = a7, v28.size.height = a8, CGRectIntersectsRect(v27, v28)))
    {
      v16 = *a3;
      *a3 = v25;
      v17 = v25;

      return v17;
    }

    else
    {
      v23 = *a3;
      *a3 = 0;

      return v25;
    }
  }

  else
  {
    if (qword_27CE56D20 != -1)
    {
      swift_once();
    }

    v19 = sub_21DBF84BC();
    __swift_project_value_buffer(v19, qword_27CE627A0);
    v20 = sub_21DBF84AC();
    v21 = sub_21DBFAECC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_21D0C9000, v20, v21, "TTRBoardColumnCollectionViewLayoutHelper: failed to modify attributes", v22, 2u);
      MEMORY[0x223D46520](v22, -1, -1);
    }

    return a1;
  }
}

uint64_t *sub_21D8399E0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF5D5C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 16))(a1, a2, v7);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    v11 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    v12 = (a1 + v11);
    v13 = (a2 + v11);
    v14 = v13[1];
    *v12 = *v13;
    v12[1] = v14;
    sub_21DBF8E0C();
  }

  return a1;
}

uint64_t sub_21D839B70(uint64_t a1)
{
  v2 = sub_21DBF5D5C();
  v3 = *(v2 - 8);
  if (!(*(v3 + 48))(a1, 1, v2))
  {
    (*(v3 + 8))(a1, v2);
  }
}

char *sub_21D839C40(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *(v11 + 1);
  *v10 = *v11;
  *(v10 + 1) = v12;
  sub_21DBF8E0C();
  return a1;
}

char *sub_21D839D84(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 16))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v12 = *(a3 + 24);
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);
  sub_21DBF8E0C();

  return a1;
}

char *sub_21D839F44(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  v9 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  *&a1[v9] = *&a2[v9];
  return a1;
}

char *sub_21D83A07C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_21DBF5D5C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      goto LABEL_7;
    }

    (*(v7 + 8))(a1, v6);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE58E70);
    memcpy(a1, a2, *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(v7 + 32))(a1, a2, v6);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  v12 = *(a3 + 24);
  *&a1[*(a3 + 20)] = *&a2[*(a3 + 20)];
  v13 = &a1[v12];
  v14 = &a2[v12];
  v16 = *v14;
  v15 = *(v14 + 1);
  *v13 = v16;
  *(v13 + 1) = v15;

  return a1;
}

void sub_21D83A250()
{
  sub_21D83A2F4();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_21D83A2F4()
{
  if (!qword_27CE61428)
  {
    sub_21DBF5D5C();
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE61428);
    }
  }
}

uint64_t sub_21D83A394(unint64_t *a1, void (*a2)(uint64_t))
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

void LSApplicationWorkspace.open(universalLink:)(uint64_t a1)
{
  v2 = v1;
  v41[11] = *MEMORY[0x277D85DE8];
  v4 = sub_21DBF54CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12 + 32;
  MEMORY[0x28223BE20](v14);
  v16 = v41 - v15 + 32;
  v17 = sub_21DBF53FC();
  v18 = [v1 URLOverrideForURL_];

  if (v18)
  {
    sub_21DBF546C();

    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_21D57690C(v13, v16);
  sub_21D3050B8(v16, v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_21DBF53FC();
    (*(v5 + 8))(v10, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = sub_21DBFA16C();
  *(inited + 72) = MEMORY[0x277D83B88];
  *(inited + 40) = v21;
  *(inited + 48) = 1;
  sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0);
  v22 = sub_21DBF9E5C();

  v41[0] = 0;
  v23 = [v2 openURL:v19 withOptions:v22 error:v41];

  if (v23)
  {
    v24 = v41[0];
    sub_21D0CF7E0(v16, &qword_27CE5EA20);
  }

  else
  {
    v25 = v41[0];
    v26 = sub_21DBF52DC();

    swift_willThrow();
    sub_21D0CF7E0(v16, &qword_27CE5EA20);
    if (qword_27CE56D28 != -1)
    {
      swift_once();
    }

    v27 = sub_21DBF84BC();
    __swift_project_value_buffer(v27, qword_27CE627D0);
    (*(v5 + 16))(v7, a1, v4);
    v28 = v26;
    v29 = sub_21DBF84AC();
    v30 = sub_21DBFAEBC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v41[0] = v32;
      *v31 = 136315394;
      v33 = sub_21DBF535C();
      v35 = v34;
      (*(v5 + 8))(v7, v4);
      v36 = sub_21D0CDFB4(v33, v35, v41);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2080;
      swift_getErrorValue();
      v37 = sub_21DBFC74C();
      v39 = sub_21D0CDFB4(v37, v38, v41);

      *(v31 + 14) = v39;
      _os_log_impl(&dword_21D0C9000, v29, v30, "Error launching URL via LSApplicationWorkspace {url: %s, error: %s}", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v32, -1, -1);
      MEMORY[0x223D46520](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_21D83A994()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE627D0);
  v1 = __swift_project_value_buffer(v0, qword_27CE627D0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D83AA5C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE627E8);
  v1 = __swift_project_value_buffer(v0, qword_27CE627E8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D83AB24@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v46 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v46);
  v3 = v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_21DBF4CAC();
  v41 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v44 = ObjectType;
  v45 = v9(ObjectType, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v40[1] = v6;
  v11 = (Strong + OBJC_IVAR____TtC15RemindersUICore31TTRIQuickReminderViewController_titleModule);
  swift_beginAccess();
  v12 = *v11;
  if (!*v11)
  {
    swift_unknownObjectRelease();
LABEL_6:
    v43 = 0;
    v22 = v45;
    goto LABEL_8;
  }

  v40[0] = v9;
  v13 = v11[1];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v14 = swift_getObjectType();
  v15 = *(v13 + 8);
  v16 = *(v15 + 32);
  swift_unknownObjectRetain();
  v16(&v50, v14, v15);
  v43 = v12;
  swift_unknownObjectRelease();
  sub_21D0D0FD0(&v50, v52);
  v17 = v53;
  v18 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  if ((*(v18 + 16))(v17, v18))
  {
    v19 = v53;
    v20 = v54;
    __swift_project_boxed_opaque_existential_1(v52, v53);
    v21 = (*(v20 + 40))(v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v52);
    v22 = v45;
    v9 = v40[0];
    goto LABEL_13;
  }

  __swift_destroy_boxed_opaque_existential_0(v52);
  v22 = v45;
  v9 = v40[0];
LABEL_8:
  v23 = [v22 titleAsString];
  if (v23)
  {
    v24 = v23;
    v25 = sub_21DBFA16C();
    v27 = v26;

    v52[0] = v25;
    v52[1] = v27;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v28 = sub_21DBFBB3C();
    v30 = v29;
    (*(v41 + 8))(v5, v42);

    v31 = HIBYTE(v30) & 0xF;
    if ((v30 & 0x2000000000000000) == 0)
    {
      v31 = v28 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v31 != 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:
  v32 = v44;
  v33 = v9(v44, v7);
  v34 = [v33 objectID];

  v35 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
  v36 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  (*(*(v36 - 8) + 56))(&v3[v35], 1, 1, v36);
  *v3 = v34;
  swift_storeEnumTagMultiPayload();
  (*(v7 + 56))(&v50, v32, v7);
  v37 = v50;
  v38 = v51;
  v48 = v50;
  v49 = v51;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v52);

  sub_21D49351C(v3, v22, v52, v21 & 1, v47);
  return swift_unknownObjectRelease();
}

uint64_t sub_21D83AF98()
{
  v1 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v3 = *(v0 + 160);
  v23 = v3;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62828);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC08D00;
  v8 = *(v0 + 56);
  v24 = v0;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 56);

  v10(&v28, ObjectType, v8);
  v11 = v28;
  v12 = v29;
  v13 = v30;
  v25 = v28;
  v26 = v29;
  v27 = v30;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v31);

  v14 = v32;
  if (v32)
  {
    v15 = v33;
    __swift_project_boxed_opaque_existential_1(v31, v32);
    *(v7 + 32) = (*(v15 + 8))(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    sub_21D0CF7E0(v31, &qword_27CE59DC0);
    *(v7 + 32) = 0;
  }

  v31[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62830);
  sub_21D0D8CF0(0, &qword_280D17880);
  sub_21D0D0F1C(&qword_27CE62838, &qword_27CE62830);
  v16 = sub_21DBFA41C();

  v17 = sub_21D19ED08(v16);

  v18 = swift_allocObject();
  swift_weakInit();
  sub_21D10589C(v23, v6, type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration.AccountFetchingOption);
  *&v6[v4[5]] = v17;
  *&v6[v4[6]] = 0;
  v6[v4[7]] = 0;
  v19 = &v6[v4[8]];
  *v19 = sub_21D83EC38;
  v19[1] = v18;
  v20 = static TTRIListPickerContextualMenuAssembly.makeListPickerContextMenu(configuration:)(v6);
  sub_21D83EC40(v6, type metadata accessor for TTRIListPickerContextualMenuAssembly.ListPickerContextMenuConfiguration);
  return v20;
}

uint64_t sub_21D83B2CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = v1;
    v5 = v2;
    sub_21D83B340(&v4);
  }

  return result;
}

uint64_t sub_21D83B340(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_27CE56D30 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE627E8);
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong viewIfLoaded];
    if (v7)
    {
      v8 = v7;
      v9 = UIView.firstResponderDescendant.getter();

      if (v9)
      {
        [v9 resignFirstResponder];
      }
    }

    swift_unknownObjectRelease();
  }

  v10 = *(v2 + 56);
  ObjectType = swift_getObjectType();
  v13 = v3;
  v14 = v4;
  return (*(v10 + 104))(&v13, ObjectType, v10);
}

uint64_t sub_21D83B488()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17[-v2];
  v4 = *(v0 + 56);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 displayDate];

  if (v7)
  {
    v8 = [v7 date];

    sub_21DBF55FC();
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 56))(v3, 0, 1, v9);
  }

  else
  {
    v10 = sub_21DBF563C();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  }

  v11 = sub_21D850FD8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v11;
  *(inited + 40) = 1;
  v13 = sub_21D179554(inited);
  swift_setDeallocating();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = sub_21D1DFDD4(v13, sub_21D83EA2C, v14);

  return v15;
}

uint64_t sub_21D83B6A4(int a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21D83B704(a1);
  }

  return result;
}

uint64_t sub_21D83B704(int a1)
{
  v3 = type metadata accessor for TTRDateChangeType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v30 = v3;
  v16 = *(qword_280D1AA18 + OBJC_IVAR____TtC15RemindersUICore15TTRUserDefaults_userDefaults);
  if (v16)
  {
    v17 = sub_21DBFA12C();

    v18 = sub_21DBFA12C();
    [v16 setObject:v17 forKey:v18];
  }

  else
  {
  }

  if (a1 > 3u)
  {

    return sub_21D83C720();
  }

  else
  {
    v19 = *(v1 + 56);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 16))(ObjectType, v19);
    v22 = [v21 displayDate];

    if (v22)
    {
      v23 = [v22 dateComponentsRepresentation];

      sub_21DBF4EFC();
      v24 = sub_21DBF509C();
      (*(*(v24 - 8) + 56))(v9, 0, 1, v24);
    }

    else
    {
      v26 = sub_21DBF509C();
      (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
    }

    v27 = v30;
    sub_21D0CF7E0(v9, &qword_27CE58D60);
    sub_21D84FE54(a1, v15);
    sub_21D83EA34(v15, v12);
    if ((*(v4 + 48))(v12, 1, v27) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE58D78);
      v28 = v12;
    }

    else
    {
      sub_21D10589C(v12, v6, type metadata accessor for TTRDateChangeType);
      sub_21D83C904(v6);
      sub_21D83EC40(v6, type metadata accessor for TTRDateChangeType);
      v28 = v15;
    }

    return sub_21D0CF7E0(v28, &qword_27CE58D78);
  }
}