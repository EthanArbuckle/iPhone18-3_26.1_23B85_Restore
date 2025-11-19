uint64_t sub_21D6BADFC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  a1(a3);
  swift_beginAccess();
  v3 = sub_21DBF8E0C();
  sub_21D6BAE74(v3);
}

void sub_21D6BAE74(uint64_t a1)
{
  if (*(a1 + 16) < 5uLL)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    v21 = sub_21DBFBD7C();
LABEL_37:

    if (v1 != v21)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  swift_beginAccess();
  v1 = 0;
  v4 = 0;
  v5 = 4;
  __asm { FMOV            V0.2D, #-1.0 }

  v26 = _Q0;
  do
  {
    v11 = *(v2 + 40);
    if (v4 >= v11[2])
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    sub_21D0D3954(&v11[v5], v33, &unk_27CE5F120);
    sub_21D0D3954(a1 + v5 * 8, v32, &qword_27CE59C80);
    if (*&v32[0])
    {
      if (*&v32[0] == 1)
      {
        if (v33[0])
        {
          _VF = __OFADD__(v1++, 1);
          if (_VF)
          {
            goto LABEL_49;
          }
        }

        goto LABEL_32;
      }

      *v28 = v32[0];
      v29 = v32[1];
      v30 = v32[2];
      v31 = v32[3];
      v14 = *&v32[0];
      sub_21D442E0C(v28, v27);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_21D256CCC(v11);
        *(v2 + 40) = v11;
      }

      if (v4 >= v11[2])
      {
        goto LABEL_47;
      }

      sub_21D0F02F4(v27, &v11[v5], &unk_27CE5F120);
      *(v2 + 40) = v11;
      swift_endAccess();
      sub_21D0D3954(v33, v27, &unk_27CE5F120);
      if (*&v27[0])
      {
        v16 = *&v27[0];
        sub_21D442500(v27);
        if (v14 == v16)
        {
          [v16 setHidden_];
        }

        else
        {
          if (v1 < 0)
          {
            goto LABEL_52;
          }

          [*(v2 + 16) ttr:v1 replaceArrangedSubviewAtIndex:v14 withView:?];
          [v16 removeFromSuperview];
        }

        _VF = __OFADD__(v1++, 1);
        if (_VF)
        {
          goto LABEL_48;
        }
      }

      else
      {
        sub_21D0CF7E0(v27, &unk_27CE5F120);
        if (v1 < 0)
        {
          goto LABEL_53;
        }

        [*(v2 + 16) ttr:v14 insertArrangedSubview:v1 atIndex:?];
        _VF = __OFADD__(v1++, 1);
        if (_VF)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      sub_21D0D3954(v33, v27, &unk_27CE5F120);
      if (!*&v27[0])
      {
        sub_21D0CF7E0(v33, &unk_27CE5F120);
        v17 = v27;
        goto LABEL_33;
      }

      *v28 = v27[0];
      v29 = v27[1];
      v30 = v27[2];
      v31 = v27[3];
      [*&v27[0] setHidden_];
      v29 = v26;
      sub_21D442E0C(v28, v27);
      swift_beginAccess();
      v12 = *(v2 + 40);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v12;
      if ((v13 & 1) == 0)
      {
        v12 = sub_21D256CCC(v12);
        *(v2 + 40) = v12;
      }

      if (v4 >= v12[2])
      {
        goto LABEL_50;
      }

      sub_21D0F02F4(v27, &v12[v5], &unk_27CE5F120);
      *(v2 + 40) = v12;
      swift_endAccess();
      _VF = __OFADD__(v1++, 1);
      if (_VF)
      {
        goto LABEL_51;
      }
    }

    sub_21D442500(v28);
LABEL_32:
    v17 = v33;
LABEL_33:
    sub_21D0CF7E0(v17, &unk_27CE5F120);
    v5 += 8;
    ++v4;
  }

  while (v5 != 44);
  v18 = [*(v2 + 16) arrangedSubviews];
  if (v18)
  {
    v19 = v18;
    sub_21D0D8CF0(0, &qword_280D176A0);
    v20 = sub_21DBFA5EC();

    if (v20 >> 62)
    {
      goto LABEL_55;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_37;
  }

  if (!v1)
  {
    goto LABEL_45;
  }

LABEL_40:
  if (qword_27CE56758 != -1)
  {
    swift_once();
  }

  v22 = sub_21DBF84BC();
  __swift_project_value_buffer(v22, qword_27CE5C430);
  v23 = sub_21DBF84AC();
  v24 = sub_21DBFAECC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_21D0C9000, v23, v24, "arrangedSubviews gets mutated unexpectedly", v25, 2u);
    MEMORY[0x223D46520](v25, -1, -1);
  }

LABEL_45:
  sub_21D6BB340();
}

void sub_21D6BB340()
{
  v1 = *(v0 + 16);
  v2 = [v1 axis];
  if (v2)
  {
    if (v2 != 1)
    {
LABEL_34:
      if (qword_27CE56758 != -1)
      {
        swift_once();
      }

      v19 = sub_21DBF84BC();
      __swift_project_value_buffer(v19, qword_27CE5C430);
      v20 = MEMORY[0x277D84F90];
      sub_21D17716C(MEMORY[0x277D84F90]);
      sub_21D17716C(v20);
      sub_21DAEAB00("Unknown axis", 12, 2);
      __break(1u);
      return;
    }

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  swift_beginAccess();
  v3 = 0;
  for (i = 32; i != 352; i += 64)
  {
    v5 = *(v0 + 40);
    if (v3 >= *(v5 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_21D0D3954(v5 + i, &v30, &unk_27CE5F120);
    if (v30)
    {
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = v33;
      v6 = v30;
      if ([v30 isHidden])
      {
        sub_21D442500(&v34);
      }

      else
      {
        sub_21D0D3954(&v26, &v30, &unk_27CE5F120);
        if (v30)
        {
          sub_21D0CF7E0(&v30, &unk_27CE5F120);
        }

        else
        {
          sub_21D0CF7E0(&v26, &unk_27CE5F120);
          sub_21D0CF7E0(&v30, &unk_27CE5F120);
          sub_21D442E0C(&v34, &v26);
        }

        sub_21D0D3954(&v22, &v30, &unk_27CE5F120);
        if (v30)
        {
          v7 = v30;
          sub_21D442500(&v30);
          [v1 setCustomSpacing:v7 afterView:*&v35];
        }

        else
        {
          sub_21D0CF7E0(&v30, &unk_27CE5F120);
        }

        [v1 setAlignment:*(&v34 + 1) forView:v6 inAxis:{v21, v21}];
        sub_21D0CF7E0(&v22, &unk_27CE5F120);
        v22 = v34;
        v23 = v35;
        v24 = v36;
        v25 = v37;
      }
    }

    else
    {
      sub_21D0CF7E0(&v30, &unk_27CE5F120);
    }

    ++v3;
  }

  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = v29;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  if ([v1 isLayoutMarginsRelativeArrangement])
  {
    [v1 directionalLayoutMargins];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_21D0D3954(&v34, &v26, &unk_27CE5F120);
    if (v26 && (v16 = *&v27, sub_21D442500(&v26), sub_21D0D3954(&v30, &v26, &unk_27CE5F120), v26))
    {
      v17 = *(&v27 + 1);
      sub_21D442500(&v26);
      v18 = [v1 axis];
      if (v18)
      {
        if (v18 != 1)
        {
          goto LABEL_34;
        }

        swift_beginAccess();
        if (*(v0 + 24))
        {
          v9 = v16;
        }

        swift_beginAccess();
        v13 = v17 - *(v0 + 32);
      }

      else
      {
        swift_beginAccess();
        if (*(v0 + 24))
        {
          v11 = v16;
        }

        swift_beginAccess();
        v15 = v17 - *(v0 + 32);
      }
    }

    else
    {
      sub_21D0CF7E0(&v26, &unk_27CE5F120);
    }

    [v1 setDirectionalLayoutMargins_];
  }

  sub_21D0CF7E0(&v30, &unk_27CE5F120);
  sub_21D0CF7E0(&v34, &unk_27CE5F120);
}

uint64_t sub_21D6BB7D0(uint64_t result)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16) <= result)
  {
    __break(1u);
    return result;
  }

  sub_21D0D3954(v2 + (result << 6) + 32, v4, &unk_27CE5F120);
  if (v4[0])
  {
    v3 = v4[0];
    sub_21D442500(v4);
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_21D0CF7E0(v4, &unk_27CE5F120);
  }

  return 0;
}

uint64_t sub_21D6BB884(uint64_t result, void (*a2)(void))
{
  v3 = *(v2 + 16);
  if (*(v3 + 16) <= result)
  {
    __break(1u);
    return result;
  }

  sub_21D0D3954(v3 + (result << 6) + 32, v6, &unk_27CE5F120);
  if (v6[0])
  {
    v5 = v6[0];
    sub_21D442500(v6);
    a2(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_21D0CF7E0(v6, &unk_27CE5F120);
  }

  return 0;
}

void sub_21D6BB93C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    sub_21D0D3954(v2 + 32, v9, &unk_27CE5F120);
    v3 = v9[0];
    if (v9[0])
    {

      v4 = v3;
      sub_21D0CF7E0(v9, &unk_27CE5F120);
      v5 = [v4 isHidden];

      if ((v5 & 1) != 0 || (v6 = v0 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate, !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v7 = *(v6 + 8);
        ObjectType = swift_getObjectType();
        (*(v7 + 8))(v0, v4, ObjectType, v7);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_21D0CF7E0(v9, &unk_27CE5F120);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21D6BBA84(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v17, &v1[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel], sizeof(v17));
  memcpy(__srca, &v1[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel], 0x110uLL);
  memcpy(&__srca[34], __src, 0x110uLL);
  memcpy(v18, &v1[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel], sizeof(v18));
  if (sub_21D6BF934(v18) == 1)
  {
    memcpy(v13, __src, 0x110uLL);
    if (sub_21D6BF934(v13) == 1)
    {
      memcpy(v14, __srca, sizeof(v14));
      sub_21D0D3954(v17, v12, &unk_27CE5F320);
      sub_21D0D3954(__dst, v12, &unk_27CE5F320);
      return sub_21D0CF7E0(v14, &unk_27CE5F320);
    }

    sub_21D0D3954(v17, v14, &unk_27CE5F320);
    sub_21D0D3954(__dst, v14, &unk_27CE5F320);
  }

  else
  {
    memcpy(v14, __srca, sizeof(v14));
    memcpy(v12, __srca, sizeof(v12));
    memcpy(v13, __src, 0x110uLL);
    if (sub_21D6BF934(v13) != 1)
    {
      memcpy(v11, __src, sizeof(v11));
      sub_21D0D3954(v17, v10, &unk_27CE5F320);
      sub_21D0D3954(__dst, v10, &unk_27CE5F320);
      sub_21D0D3954(v14, v10, &unk_27CE5F320);
      v8 = sub_21D6BF0C0(v12, v11);
      memcpy(v9, v11, sizeof(v9));
      sub_21D6399B4(v9);
      memcpy(v10, v12, sizeof(v10));
      sub_21D6399B4(v10);
      memcpy(v11, __srca, sizeof(v11));
      result = sub_21D0CF7E0(v11, &unk_27CE5F320);
      if (v8)
      {
        return result;
      }

      goto LABEL_8;
    }

    memcpy(v11, __srca, sizeof(v11));
    sub_21D0D3954(v17, v10, &unk_27CE5F320);
    sub_21D0D3954(__dst, v10, &unk_27CE5F320);
    sub_21D0D3954(v14, v10, &unk_27CE5F320);
    sub_21D6399B4(v11);
  }

  memcpy(v13, __srca, sizeof(v13));
  sub_21D0CF7E0(v13, &qword_27CE5FF70);
LABEL_8:
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21D6BF958;
  *(v5 + 24) = v4;
  __srca[4] = sub_21D0E6070;
  __srca[5] = v5;
  __srca[0] = MEMORY[0x277D85DD0];
  __srca[1] = 1107296256;
  __srca[2] = sub_21D0E6204;
  __srca[3] = &block_descriptor_77;
  v6 = _Block_copy(__srca);
  v7 = v1;

  [v7 performBatchUpdates_];
  _Block_release(v6);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

id sub_21D6BBE98(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel;
  sub_21D6BF8E0(__src);
  memcpy(&v5[v11], __src, 0x110uLL);
  type metadata accessor for MainStackView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackView] = v12;
  v13 = v12;
  [v13 setAxis_];
  [v13 setDistribution_];
  [v13 setAlignment_];
  v14 = *MEMORY[0x277D75060];
  v15 = *(MEMORY[0x277D75060] + 8);
  v16 = *(MEMORY[0x277D75060] + 16);
  v17 = *(MEMORY[0x277D75060] + 24);
  v18 = v13;
  [v18 setDirectionalLayoutMargins_];
  [v18 setLayoutMarginsRelativeArrangement_];
  [v18 setPreservesSuperviewLayoutMargins_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FF68);
  swift_allocObject();
  v19 = sub_21D6BA990(v18);
  *&v5[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator] = v19;
  swift_beginAccess();
  v20 = *(v19 + 24);
  *(v19 + 24) = 0;
  if (v20 == 1)
  {

    sub_21D6BB340();
  }

  v25.receiver = v5;
  v25.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v21 setLayoutMarginsRelativeArrangement_];
  [v21 setPreservesSuperviewLayoutMargins_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21DC09CF0;
  *(v22 + 32) = v18;
  sub_21D0D8CF0(0, &qword_280D176A0);
  v23 = sub_21DBFA5DC();

  [v21 setArrangedSubviews_];

  return v21;
}

uint64_t sub_21D6BC22C()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackPopulator];
  v3 = v0;

  sub_21D442E44(2u, v2, v3);

  v4 = *&v0[v1];
  result = swift_beginAccess();
  v6 = *(v4 + 40);
  if (*(v6 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0D3954(v6 + 160, v9, &unk_27CE5F120);
    v7 = v9[0];
    if (v9[0])
    {
      v8 = v9[0];
    }

    sub_21D0CF7E0(v9, &unk_27CE5F120);
    return v7;
  }

  return result;
}

unint64_t sub_21D6BC3DC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21D6BF8D0(*a1);
  *a2 = result;
  return result;
}

id sub_21D6BC658()
{
  type metadata accessor for TTRIRemindersListCellInfoButton();
  v1 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v2 = [objc_opt_self() configurationWithScale_];
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v1 setImage:v4 forState:0];
  v5 = qword_280D167B0;
  v6 = v1;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBFA12C();
  [v6 setAccessibilityLabel_];

  LODWORD(v8) = 1148846080;
  [v6 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v8}];
  [v6 setCustomAlignmentRectInsets_];
  [v6 addTarget:v0 action:sel_infoButtonAction_ forControlEvents:0x2000];
  return v6;
}

uint64_t sub_21D6BC820()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel);
  memcpy(v115, v2, sizeof(v115));
  v3 = sub_21D6BF934(v115) == 1 || (v2[3] & 1) == 0;
  memcpy(v114, v2, sizeof(v114));
  if (sub_21D6BF934(v114) == 1 || (v4 = *v2, v4 == 3))
  {
    v4 = 0;
  }

  memcpy(v113, v2, sizeof(v113));
  if (sub_21D6BF934(v113) == 1 || !*(v2 + 2) || !v4)
  {
    v112 = 0;
    v111 = 0;
    v7 = 2;
LABEL_15:
    v110 = v7;
    goto LABEL_16;
  }

  if (v4 != 1)
  {
    v112 = 0;
    v111 = 0;
    v7 = 1;
    goto LABEL_15;
  }

  memcpy(v109, v2, 0x110uLL);
  if (sub_21D6BF934(v109) == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = *(v2 + 1);
    v6 = *(v2 + 2);
    sub_21DBF8E0C();
  }

  v111 = v5;
  v112 = v6;
  v110 = 0;
LABEL_16:
  v8 = *v2;
  v9 = v2[1];
  v10 = v2[2];
  memcpy(&v109[3], v2 + 3, 0x10DuLL);
  v109[0] = v8;
  v109[1] = v9;
  v109[2] = v10;
  if (sub_21D6BF934(v109) == 1)
  {
    if (v3)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if ((v9 & 1) != 0 || (v10 & 1) != 0 || !v3)
  {
LABEL_22:

    v112 = 0;
    v111 = 0;
    v110 = 2;
  }

LABEL_23:
  v107 = 1;
  memcpy(v108, v2, sizeof(v108));
  if (sub_21D6BF934(v108) != 1 && (v108[24] & 0xFE) != 2)
  {
    v107 = (v108[24] & 1) == 0;
  }

  v105 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  memcpy(v106, v2, 0x110uLL);
  v11 = sub_21D6BF934(v106);
  if (v11 != 1)
  {
    v12 = *(v2 + 13);
    v13 = *(v2 + 15);
    v81 = *(v2 + 14);
    v82 = v13;
    v14 = *(v2 + 9);
    v15 = *(v2 + 11);
    v77 = *(v2 + 10);
    v78 = v15;
    v16 = *(v2 + 11);
    v17 = *(v2 + 13);
    v79 = *(v2 + 12);
    v80 = v17;
    v18 = *(v2 + 5);
    v19 = *(v2 + 7);
    v73 = *(v2 + 6);
    v74 = v19;
    v20 = *(v2 + 7);
    v21 = *(v2 + 9);
    v75 = *(v2 + 8);
    v76 = v21;
    v22 = *(v2 + 3);
    v69 = *(v2 + 2);
    v70 = v22;
    v23 = *(v2 + 5);
    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    v71 = *(v2 + 4);
    v72 = v23;
    v26 = *(v2 + 15);
    v96 = v81;
    v97 = v26;
    v92 = v77;
    v93 = v16;
    v94 = v79;
    v95 = v12;
    v88 = v73;
    v89 = v20;
    v90 = v75;
    v91 = v14;
    v84 = v25;
    v85 = v24;
    v83 = *(v2 + 32);
    v98 = *(v2 + 32);
    v86 = v71;
    v87 = v18;
    v11 = sub_21D4B9498(&v84);
    if (v11 != 1 && (v98 & 1) != 0)
    {
      v65 = v94;
      v66 = v95;
      v67 = v96;
      v68 = v97;
      v61 = v90;
      v62 = v91;
      v63 = v92;
      v64 = v93;
      v57 = v86;
      v58 = v87;
      v59 = v88;
      v60 = v89;
      v55 = v84;
      v56 = v85;
      if (sub_21D157494(&v55) == 1)
      {
        v52 = v81;
        v53 = v82;
        v54 = v83;
        v48 = v77;
        v49 = v78;
        v50 = v79;
        v51 = v80;
        v44 = v73;
        v45 = v74;
        v46 = v75;
        v47 = v76;
        v40 = v69;
        v41 = v70;
        v42 = v71;
        v43 = v72;
        sub_21D6BF990(&v40, &v39);
        v27 = 0;
        v28 = 0;
        memset(v38, 0, sizeof(v38));
        v37 = 0u;
        v35 = 0u;
        memset(v36, 0, sizeof(v36));
      }

      else
      {
        v38[0] = v56;
        v38[1] = v55;
        v36[1] = v58;
        v37 = v57;
        v35 = v60;
        v36[0] = v59;
        v28 = *(&v61 + 1);
        v27 = v61;
        sub_21D1D9C94(&v55, &v40);
      }

      v44 = v103;
      v45 = v104;
      v46 = v105;
      v40 = v99;
      v41 = v100;
      v42 = v101;
      v43 = v102;
      v11 = sub_21D0CF7E0(&v40, &qword_27CE5FF78);
      v99 = v38[1];
      v100 = v38[0];
      v101 = v37;
      v102 = v36[1];
      v103 = v36[0];
      v104 = v35;
      *&v105 = v27;
      *(&v105 + 1) = v28;
    }
  }

  MEMORY[0x28223BE20](v11);
  v31[2] = v1;
  v31[3] = &v99;
  v31[4] = &v107;
  v32 = v3;
  v33 = &v111;
  v34 = &v110;

  sub_21D6BAA84(sub_21D6BF97C, v31);

  v29 = *(v1 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackView);
  [v29 directionalLayoutMargins];
  [v29 setDirectionalLayoutMargins_];
  v88 = v103;
  v89 = v104;
  v90 = v105;
  v84 = v99;
  v85 = v100;
  v86 = v101;
  v87 = v102;
  sub_21D0CF7E0(&v84, &qword_27CE5FF78);
}

uint64_t sub_21D6BCD70(uint64_t a1, uint64_t a2, _OWORD *a3, char *a4, char a5, uint64_t *a6, unsigned __int8 *a7)
{
  v12 = a3[3];
  v13 = a3[5];
  v32 = a3[4];
  v33 = v13;
  v14 = a3[5];
  v34 = a3[6];
  v15 = a3[1];
  v29[0] = *a3;
  v29[1] = v15;
  v16 = a3[3];
  v18 = *a3;
  v17 = a3[1];
  v30 = a3[2];
  v31 = v16;
  v26 = v32;
  v27 = v14;
  v28 = a3[6];
  v22 = v18;
  v23 = v17;
  v24 = v30;
  v25 = v12;
  sub_21D0D3954(v29, v35, &qword_27CE5FF78);
  sub_21D6BCEC0(a1, &v22);
  v35[4] = v26;
  v35[5] = v27;
  v35[6] = v28;
  v35[0] = v22;
  v35[1] = v23;
  v35[2] = v24;
  v35[3] = v25;
  sub_21D0CF7E0(v35, &qword_27CE5FF78);
  sub_21D6BF9F8(a1, *a4);
  sub_21D6BD138(a1, a5);
  v19 = *a6;
  v20 = a6[1];
  sub_21DBF8E0C();
  sub_21D6BFBA0(a1, v19, v20);

  return sub_21D6BD34C(a1, *a7, a6[1] != 0);
}

uint64_t sub_21D6BCEC0(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  v23[0] = *a2;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[2];
  v23[3] = a2[3];
  v23[4] = v5;
  v8 = a2[6];
  v23[5] = v6;
  v24 = v8;
  v23[1] = v4;
  v23[2] = v7;
  if (*&v23[0])
  {
    v9 = *(&v24 + 1);
    v10 = *&v23[0];
    v11 = *(&v23[0] + 1);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v12 = sub_21D6BB884(0, type metadata accessor for TTRIRemindersListCellAssigneeView);
    if (!v12)
    {
      v12 = sub_21D6BDAB4(v2);
    }

    v13 = v12;
    v14 = v11;
    TTRIRemindersListCellAssigneeView.contact.setter(*(&v23[0] + 1));
    memset(v19, 0, sizeof(v19));
    sub_21D0D3954(v19, v22, &qword_27CE5C690);
    *&v20 = v13;
    *(&v20 + 1) = -1;
    v21 = xmmword_21DC20200;
    swift_beginAccess();
    v15 = *(a1 + 24);
    v16 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v15;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v15[2])
      {
LABEL_6:
        sub_21D0F02F4(&v20, (v15 + 4), &qword_27CE59C80);
        *(a1 + 24) = v15;
        swift_endAccess();

        sub_21D0CF7E0(v23, &qword_27CE5FF78);
        return sub_21D0CF7E0(v19, &qword_27CE5C690);
      }
    }

    else
    {
      v15 = sub_21D256CE0(v15);
      *(a1 + 24) = v15;
      if (v15[2])
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_13:
    result = sub_21D256CE0(v16);
    v16 = result;
    *(a1 + 24) = result;
    if (!*(result + 16))
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  swift_beginAccess();
  v16 = *(a1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v16;
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v16[2])
  {
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_9:
  sub_21D0F02F4(&v20, (v16 + 4), &qword_27CE59C80);
  *(a1 + 24) = v16;
  return swift_endAccess();
}

uint64_t sub_21D6BD138(uint64_t a1, char a2)
{
  if (a2)
  {
    memset(__dst, 0, 64);
    swift_beginAccess();
    v5 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_21D256CE0(v5);
      *(a1 + 24) = v5;
    }

    if (v5[2] >= 3uLL)
    {
      sub_21D0F02F4(__dst, (v5 + 20), &qword_27CE59C80);
      *(a1 + 24) = v5;
      return swift_endAccess();
    }

    __break(1u);
  }

  else
  {
    v8 = v2;
    v9 = sub_21D6BB7D0(2);
    if (!v9)
    {
      v9 = sub_21D6BC658();
    }

    v10 = v9;
    v11 = (v8 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel);
    memcpy(__dst, v11, sizeof(__dst));
    if (sub_21D6BF934(__dst) == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11[33];
    }

    [v10 setTintColor_];

    memset(v16, 0, sizeof(v16));
    sub_21D0D3954(v16, &v15, &qword_27CE5C690);
    v13[0] = v10;
    v13[1] = -1;
    v14 = xmmword_21DC20200;
    swift_beginAccess();
    v3 = *(a1 + 24);
    v5 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v3;
    if (result)
    {
      goto LABEL_12;
    }
  }

  result = sub_21D256CE0(v3);
  v3 = result;
  *(a1 + 24) = result;
LABEL_12:
  if (v3[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0F02F4(v13, (v3 + 20), &qword_27CE59C80);
    *(a1 + 24) = v3;
    swift_endAccess();

    return sub_21D0CF7E0(v16, &qword_27CE5C690);
  }

  return result;
}

uint64_t sub_21D6BD34C(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v8 = sub_21DBFB95C();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_21DBF604C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = 16.0;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D44DA0], v9);
  v14 = sub_21DBF603C();
  (*(v10 + 8))(v12, v9);
  v15 = a2 == 2;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (a2 == 2)
  {
    memset(v56, 0, 64);
    swift_beginAccess();
    v16 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_21D256CE0(v16);
      *(a1 + 24) = v16;
    }

    v18 = v16[2];
    v15 = v18 == 5;
    if (v18 >= 5)
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_11:
    if (!v15)
    {
      v22 = sub_21D6BB884(4, type metadata accessor for TTRIRemindersListDisclosureView);
      if (v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = [objc_allocWithZone(type metadata accessor for TTRIRemindersListDisclosureView()) init];
        v26 = &v23[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate];
        swift_beginAccess();
        *(v26 + 1) = &off_282ECCC90;
        swift_unknownObjectWeakAssign();
        [v23 setCustomAlignmentRectInsets_];
      }

      v27 = (v4 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel);
      memcpy(v56, v27, sizeof(v56));
      v28 = sub_21D6BF934(v56);
      HIDWORD(v44) = a2;
      if (v28 == 1)
      {
        v29 = 0;
      }

      else
      {
        v29 = v27[33];
      }

      v30 = type metadata accessor for TTRIRemindersListDisclosureView();
      v55.receiver = v23;
      v55.super_class = v30;
      objc_msgSendSuper2(&v55, sel_setTintColor_, v29);
      v31 = *&v23[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed];
      v54.receiver = v23;
      v54.super_class = v30;
      v32 = objc_msgSendSuper2(&v54, sel_tintColor);
      [v31 setTintColor_];

      v33 = *&v23[OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded];
      v53.receiver = v23;
      v53.super_class = v30;
      v34 = objc_msgSendSuper2(&v53, sel_tintColor);
      [v33 setTintColor_];

      v35 = OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_isExpanded;
      swift_beginAccess();
      v23[v35] = BYTE4(v44) & 1;
      sub_21D55CE2C();
      memset(v52, 0, 32);
      sub_21D0D3954(v52, &v51, &qword_27CE5C690);
      *&v49 = v23;
      *(&v49 + 1) = -1;
      v50 = *&v13;
      swift_beginAccess();
      v36 = *(a1 + 24);
      v37 = v23;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 24) = v36;
      if ((v38 & 1) == 0)
      {
        v36 = sub_21D256CE0(v36);
        *(a1 + 24) = v36;
      }

      if (v36[2] >= 5uLL)
      {
        sub_21D0F02F4(&v49, (v36 + 36), &qword_27CE59C80);
        *(a1 + 24) = v36;
        swift_endAccess();

        v39 = v52;
        return sub_21D0CF7E0(v39, &qword_27CE5C690);
      }

      __break(1u);
      goto LABEL_45;
    }

    memset(v56, 0, 64);
    swift_beginAccess();
    v16 = *(a1 + 24);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v16;
    if ((v19 & 1) == 0)
    {
      v16 = sub_21D256CE0(v16);
      *(a1 + 24) = v16;
    }

    if (v16[2] < 5uLL)
    {
      __break(1u);
LABEL_43:
      swift_once();
      goto LABEL_23;
    }

LABEL_16:
    sub_21D0F02F4(v56, (v16 + 36), &qword_27CE59C80);
    *(a1 + 24) = v16;
    return swift_endAccess();
  }

  v21 = sub_21D6BB884(4, type metadata accessor for TTRIOutlineDisclosureButton);
  if (v21)
  {
    v16 = v21;
  }

  else
  {
    type metadata accessor for TTRIOutlineDisclosureButton();
    static UIButton.Configuration.outlineDisclosure()();
    v16 = sub_21DBFB96C();
    [v16 addTarget:v4 action:sel_subtaskDisclosureAction_ forControlEvents:0x2000];
    [v16 setCustomAlignmentRectInsets_];
  }

  if (qword_280D17218 != -1)
  {
    goto LABEL_43;
  }

LABEL_23:
  swift_beginAccess();
  if ((byte_280D17220 & 1) == 0)
  {
    v24 = (v4 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel);
    memcpy(v56, v24, sizeof(v56));
    if (sub_21D6BF934(v56) == 1)
    {
      v25 = 0;
    }

    else
    {
      v25 = v24[33];
    }

    v40 = v16;
    [v40 setTintColor_];
  }

  v41 = type metadata accessor for TTRIOutlineDisclosureButton();
  v48.receiver = v16;
  v48.super_class = v41;
  v42 = objc_msgSendSuper2(&v48, sel_isSelected);
  v47.receiver = v16;
  v47.super_class = v41;
  objc_msgSendSuper2(&v47, sel_setSelected_, a2 & 1);
  v46.receiver = v16;
  v46.super_class = v41;
  if (v42 != objc_msgSendSuper2(&v46, sel_isSelected))
  {
    v45.receiver = v16;
    v45.super_class = v41;
    v43 = objc_msgSendSuper2(&v45, sel_isSelected);
    sub_21D30281C(v43);
  }

  v49 = 0u;
  v50 = 0u;
  sub_21D0D3954(&v49, &v56[2], &qword_27CE5C690);
  *&v56[0] = v16;
  *(&v56[0] + 1) = -1;
  v56[1] = *&v13;
  swift_beginAccess();
  v36 = *(a1 + 24);
  v37 = v16;
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v36;
  if ((result & 1) == 0)
  {
LABEL_45:
    result = sub_21D256CE0(v36);
    v36 = result;
    *(a1 + 24) = result;
  }

  if (v36[2] >= 5uLL)
  {
    sub_21D0F02F4(v56, (v36 + 36), &qword_27CE59C80);
    *(a1 + 24) = v36;
    swift_endAccess();

    v39 = &v49;
    return sub_21D0CF7E0(v39, &qword_27CE5C690);
  }

  __break(1u);
  return result;
}

id sub_21D6BDAB4(uint64_t a1)
{
  type metadata accessor for TTRIRemindersListCellAssigneeView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  LODWORD(v3) = 1148846080;
  [v2 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v3}];
  [v2 setCustomAlignmentRectInsets_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:a1 action:sel_assigneeViewAction_];
  [v4 setNumberOfTouchesRequired_];
  [v2 addGestureRecognizer_];

  return v2;
}

id sub_21D6BDB94()
{
  if (qword_280D17A20 != -1)
  {
    swift_once();
  }

  v0 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  v1 = *MEMORY[0x277CEC620];
  v2 = *(MEMORY[0x277CEC620] + 8);
  v3 = v0;
  LODWORD(v4) = 1148846080;
  [v3 setLayoutSize:v1 withContentPriority:{v2, v4}];
  [v3 setAccessibilityIgnoresInvertColors_];

  if (qword_280D16948 != -1)
  {
    swift_once();
  }

  [v3 setTintColor_];
  [v3 setCustomAlignmentRectInsets_];
  return v3;
}

id sub_21D6BDCC4()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v1 = sub_21D900614(1);
  [v0 setFont_];

  v2 = [objc_opt_self() secondaryLabelColor];
  [v0 setTextColor_];

  [v0 setAdjustsFontForContentSizeCategory_];
  LODWORD(v3) = 1148846080;
  [v0 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v3}];
  return v0;
}

uint64_t sub_21D6BDE00()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate);
  memcpy(v2, (v0 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel), sizeof(v2));
  sub_21D0CF7E0(v2, &unk_27CE5F320);
}

uint64_t sub_21D6BDF30()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 24))(v0, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_21D6BE004()
{
  v1 = [v0 visibleArrangedSubviews];
  if (v1)
  {
    v2 = v1;
    sub_21D0D8CF0(0, &qword_280D176A0);
    v3 = sub_21DBFA5EC();

    if (v3 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21DBFBD7C())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x223D44740](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          return v7;
        }

        ++v5;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return v10;
}

void destroy for TTRIRemindersListReminderCellAccessoryStackViewModel(uint64_t a1)
{

  v2 = *(a1 + 32);
  if (v2 >= 2)
  {

    v3 = *(a1 + 144);
    if (v3)
    {
    }
  }

  v4 = *(a1 + 264);
}

uint64_t initializeWithCopy for TTRIRemindersListReminderCellAccessoryStackViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  v5 = a2 + 32;
  v6 = *(a2 + 32);
  sub_21DBF8E0C();
  if (!v6)
  {
    v14 = *(v5 + 176);
    *(a1 + 192) = *(v5 + 160);
    *(a1 + 208) = v14;
    v15 = *(v5 + 208);
    *(a1 + 224) = *(v5 + 192);
    *(a1 + 240) = v15;
    v16 = *(v5 + 112);
    *(a1 + 128) = *(v5 + 96);
    *(a1 + 144) = v16;
    v17 = *(v5 + 144);
    *(a1 + 160) = *(v5 + 128);
    *(a1 + 176) = v17;
    v18 = *(v5 + 48);
    *(a1 + 64) = *(v5 + 32);
    *(a1 + 80) = v18;
    v19 = *(v5 + 80);
    *(a1 + 96) = *(v5 + 64);
    *(a1 + 112) = v19;
    v20 = *(v5 + 16);
    *(a1 + 32) = *v5;
    *(a1 + 48) = v20;
LABEL_8:
    *(a1 + 256) = *(a2 + 256);
    goto LABEL_9;
  }

  if (v6 != 1)
  {
    v21 = *(a2 + 48);
    v55 = *(a2 + 40);
    *(a1 + 32) = v6;
    *(a1 + 40) = v55;
    v23 = *(a2 + 56);
    v22 = *(a2 + 64);
    *(a1 + 48) = v21;
    *(a1 + 56) = v23;
    v25 = *(a2 + 72);
    v24 = *(a2 + 80);
    *(a1 + 64) = v22;
    *(a1 + 72) = v25;
    v27 = *(a2 + 88);
    v26 = *(a2 + 96);
    *(a1 + 80) = v24;
    *(a1 + 88) = v27;
    v28 = *(a2 + 104);
    *(a1 + 96) = v26;
    *(a1 + 104) = v28;
    v56 = *(a2 + 144);
    v29 = *(a2 + 120);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = v29;
    *(a1 + 128) = *(a2 + 128);
    v30 = *(a2 + 136);
    *(a1 + 136) = v30;
    v31 = v6;
    v32 = v55;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v33 = v30;
    if (v56)
    {
      v35 = *(a2 + 152);
      v34 = *(a2 + 160);
      *(a1 + 144) = v56;
      *(a1 + 152) = v35;
      v37 = *(a2 + 168);
      v36 = *(a2 + 176);
      *(a1 + 160) = v34;
      *(a1 + 168) = v37;
      v39 = *(a2 + 184);
      v38 = *(a2 + 192);
      *(a1 + 176) = v36;
      *(a1 + 184) = v39;
      v41 = *(a2 + 200);
      v40 = *(a2 + 208);
      *(a1 + 192) = v38;
      *(a1 + 200) = v41;
      v43 = *(a2 + 216);
      v42 = *(a2 + 224);
      *(a1 + 208) = v40;
      *(a1 + 216) = v43;
      v44 = *(a2 + 232);
      *(a1 + 224) = v42;
      *(a1 + 232) = v44;
      *(a1 + 240) = *(a2 + 240);
      v45 = *(a2 + 248);
      *(a1 + 248) = v45;
      v46 = v56;
      v47 = v35;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v48 = v45;
    }

    else
    {
      v49 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v49;
      *(a1 + 240) = *(a2 + 240);
      v50 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v50;
      v51 = *(a2 + 192);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v51;
    }

    goto LABEL_8;
  }

  v7 = *(v5 + 208);
  *(a1 + 224) = *(v5 + 192);
  *(a1 + 240) = v7;
  *(a1 + 256) = *(v5 + 224);
  v8 = *(v5 + 144);
  *(a1 + 160) = *(v5 + 128);
  *(a1 + 176) = v8;
  v9 = *(v5 + 176);
  *(a1 + 192) = *(v5 + 160);
  *(a1 + 208) = v9;
  v10 = *(v5 + 80);
  *(a1 + 96) = *(v5 + 64);
  *(a1 + 112) = v10;
  v11 = *(v5 + 112);
  *(a1 + 128) = *(v5 + 96);
  *(a1 + 144) = v11;
  v12 = *(v5 + 16);
  *(a1 + 32) = *v5;
  *(a1 + 48) = v12;
  v13 = *(v5 + 48);
  *(a1 + 64) = *(v5 + 32);
  *(a1 + 80) = v13;
LABEL_9:
  v52 = *(a2 + 264);
  *(a1 + 264) = v52;
  v53 = v52;
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListReminderCellAccessoryStackViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  v4 = (a1 + 32);
  v5 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  v7 = (a2 + 32);
  v6 = *(a2 + 32);
  if (v5 != 1)
  {
    if (v6 == 1)
    {
      sub_21D30DAAC(a1 + 32);
      v20 = *(a2 + 48);
      v19 = *(a2 + 64);
      *v4 = *v7;
      *(a1 + 48) = v20;
      *(a1 + 64) = v19;
      v21 = *(a2 + 128);
      v23 = *(a2 + 80);
      v22 = *(a2 + 96);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v21;
      *(a1 + 80) = v23;
      *(a1 + 96) = v22;
      v24 = *(a2 + 192);
      v26 = *(a2 + 144);
      v25 = *(a2 + 160);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 192) = v24;
      *(a1 + 144) = v26;
      *(a1 + 160) = v25;
      v28 = *(a2 + 224);
      v27 = *(a2 + 240);
      v29 = *(a2 + 208);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 224) = v28;
      *(a1 + 240) = v27;
      *(a1 + 208) = v29;
      goto LABEL_24;
    }

    if (v5)
    {
      if (!v6)
      {
        sub_21D30DA58(a1 + 32);
        v73 = *(a2 + 48);
        *v4 = *v7;
        *(a1 + 48) = v73;
        v74 = *(a2 + 112);
        v76 = *(a2 + 64);
        v75 = *(a2 + 80);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 112) = v74;
        *(a1 + 64) = v76;
        *(a1 + 80) = v75;
        v77 = *(a2 + 176);
        v79 = *(a2 + 128);
        v78 = *(a2 + 144);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v77;
        *(a1 + 128) = v79;
        *(a1 + 144) = v78;
        v80 = *(a2 + 240);
        v82 = *(a2 + 192);
        v81 = *(a2 + 208);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 240) = v80;
        *(a1 + 192) = v82;
        *(a1 + 208) = v81;
        goto LABEL_23;
      }

      *(a1 + 32) = v6;
      v30 = v6;

      v31 = *(a1 + 40);
      v32 = *(a2 + 40);
      *(a1 + 40) = v32;
      v33 = v32;

      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      sub_21DBF8E0C();

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      sub_21DBF8E0C();

      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      sub_21DBF8E0C();

      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      sub_21DBF8E0C();

      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      sub_21DBF8E0C();

      *(a1 + 128) = *(a2 + 128);
      v34 = *(a1 + 136);
      v35 = *(a2 + 136);
      *(a1 + 136) = v35;
      v36 = v35;

      v37 = (a1 + 144);
      v38 = *(a1 + 144);
      v40 = (a2 + 144);
      v39 = *(a2 + 144);
      if (v38)
      {
        if (v39)
        {
          *(a1 + 144) = v39;
          v41 = v39;

          v42 = *(a1 + 152);
          v43 = *(a2 + 152);
          *(a1 + 152) = v43;
          v44 = v43;

          *(a1 + 160) = *(a2 + 160);
          *(a1 + 168) = *(a2 + 168);
          sub_21DBF8E0C();

          *(a1 + 176) = *(a2 + 176);
          *(a1 + 184) = *(a2 + 184);
          sub_21DBF8E0C();

          *(a1 + 192) = *(a2 + 192);
          *(a1 + 200) = *(a2 + 200);
          sub_21DBF8E0C();

          *(a1 + 208) = *(a2 + 208);
          *(a1 + 216) = *(a2 + 216);
          sub_21DBF8E0C();

          *(a1 + 224) = *(a2 + 224);
          *(a1 + 232) = *(a2 + 232);
          sub_21DBF8E0C();

          *(a1 + 240) = *(a2 + 240);
          v45 = *(a1 + 248);
          v46 = *(a2 + 248);
          *(a1 + 248) = v46;
          v47 = v46;
        }

        else
        {
          sub_21D30DA04(a1 + 144);
          v85 = *(a2 + 160);
          v84 = *(a2 + 176);
          *v37 = *v40;
          *(a1 + 160) = v85;
          *(a1 + 176) = v84;
          v86 = *(a2 + 240);
          v88 = *(a2 + 192);
          v87 = *(a2 + 208);
          *(a1 + 224) = *(a2 + 224);
          *(a1 + 240) = v86;
          *(a1 + 192) = v88;
          *(a1 + 208) = v87;
        }

        goto LABEL_23;
      }

      if (!v39)
      {
        v89 = *v40;
        v90 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v90;
        *v37 = v89;
        v91 = *(a2 + 192);
        v92 = *(a2 + 208);
        v93 = *(a2 + 240);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 240) = v93;
        *(a1 + 192) = v91;
        *(a1 + 208) = v92;
        goto LABEL_23;
      }

      *(a1 + 144) = v39;
      v53 = *(a2 + 152);
      *(a1 + 152) = v53;
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v54 = *(a2 + 248);
      *(a1 + 248) = v54;
      v83 = v39;
LABEL_15:
      v56 = v53;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v57 = v54;
LABEL_23:
      *(a1 + 256) = *(a2 + 256);
      goto LABEL_24;
    }

    if (v6)
    {
LABEL_13:
      *(a1 + 32) = v6;
      v48 = *(a2 + 40);
      *(a1 + 40) = v48;
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 128) = *(a2 + 128);
      v49 = *(a2 + 136);
      *(a1 + 136) = v49;
      v98 = *(a2 + 144);
      v50 = v6;
      v51 = v48;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v52 = v49;
      if (!v98)
      {
        v68 = *(a2 + 144);
        v69 = *(a2 + 176);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 176) = v69;
        *(a1 + 144) = v68;
        v70 = *(a2 + 192);
        v71 = *(a2 + 208);
        v72 = *(a2 + 240);
        *(a1 + 224) = *(a2 + 224);
        *(a1 + 240) = v72;
        *(a1 + 192) = v70;
        *(a1 + 208) = v71;
        goto LABEL_23;
      }

      *(a1 + 144) = v98;
      v53 = *(a2 + 152);
      *(a1 + 152) = v53;
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v54 = *(a2 + 248);
      *(a1 + 248) = v54;
      v55 = v98;
      goto LABEL_15;
    }

LABEL_16:
    v58 = *(a2 + 48);
    *v4 = *v7;
    *(a1 + 48) = v58;
    v59 = *(a2 + 64);
    v60 = *(a2 + 80);
    v61 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v61;
    *(a1 + 64) = v59;
    *(a1 + 80) = v60;
    v62 = *(a2 + 128);
    v63 = *(a2 + 144);
    v64 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v64;
    *(a1 + 128) = v62;
    *(a1 + 144) = v63;
    v65 = *(a2 + 192);
    v66 = *(a2 + 208);
    v67 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v67;
    *(a1 + 192) = v65;
    *(a1 + 208) = v66;
    goto LABEL_23;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    goto LABEL_13;
  }

  v8 = *v7;
  v9 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v9;
  *v4 = v8;
  v10 = *(a2 + 80);
  v11 = *(a2 + 96);
  v12 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v12;
  *(a1 + 80) = v10;
  *(a1 + 96) = v11;
  v13 = *(a2 + 144);
  v14 = *(a2 + 160);
  v15 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v15;
  *(a1 + 144) = v13;
  *(a1 + 160) = v14;
  v16 = *(a2 + 208);
  v17 = *(a2 + 224);
  v18 = *(a2 + 240);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 224) = v17;
  *(a1 + 240) = v18;
  *(a1 + 208) = v16;
LABEL_24:
  v94 = *(a1 + 264);
  v95 = *(a2 + 264);
  *(a1 + 264) = v95;
  v96 = v95;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListReminderCellAccessoryStackViewModel(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v6 = (a2 + 32);
  v5 = *(a2 + 32);
  v8 = (a1 + 32);
  v7 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);
  if (v7 == 1)
  {
    goto LABEL_4;
  }

  if (v5 != 1)
  {
    if (v7)
    {
      if (v5)
      {
        *(a1 + 32) = v5;

        v16 = *(a1 + 40);
        *(a1 + 40) = *(a2 + 40);

        v17 = *(a2 + 56);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = v17;

        v18 = *(a2 + 72);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = v18;

        v19 = *(a2 + 88);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = v19;

        v20 = *(a2 + 104);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = v20;

        v21 = *(a2 + 120);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = v21;

        *(a1 + 128) = *(a2 + 128);
        v22 = *(a1 + 136);
        *(a1 + 136) = *(a2 + 136);

        v23 = *(a1 + 144);
        v24 = *(a2 + 144);
        if (v23)
        {
          if (v24)
          {
            *(a1 + 144) = v24;

            v25 = *(a1 + 152);
            *(a1 + 152) = *(a2 + 152);

            v26 = *(a2 + 168);
            *(a1 + 160) = *(a2 + 160);
            *(a1 + 168) = v26;

            v27 = *(a2 + 184);
            *(a1 + 176) = *(a2 + 176);
            *(a1 + 184) = v27;

            v28 = *(a2 + 200);
            *(a1 + 192) = *(a2 + 192);
            *(a1 + 200) = v28;

            v29 = *(a2 + 216);
            *(a1 + 208) = *(a2 + 208);
            *(a1 + 216) = v29;

            v30 = *(a2 + 232);
            *(a1 + 224) = *(a2 + 224);
            *(a1 + 232) = v30;

            *(a1 + 240) = *(a2 + 240);
            v31 = *(a1 + 248);
            *(a1 + 248) = *(a2 + 248);

LABEL_14:
            *(a1 + 256) = *(a2 + 256);
            goto LABEL_15;
          }

          sub_21D30DA04(a1 + 144);
        }

        v39 = *(a2 + 224);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 224) = v39;
        *(a1 + 240) = *(a2 + 240);
        v40 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v40;
        v41 = *(a2 + 192);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 192) = v41;
        goto LABEL_14;
      }

      sub_21D30DA58(a1 + 32);
    }

    v32 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v32;
    v33 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v33;
    v34 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v34;
    v35 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v35;
    v36 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v36;
    v37 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v37;
    v38 = *(a2 + 48);
    *v8 = *v6;
    *(a1 + 48) = v38;
    goto LABEL_14;
  }

  sub_21D30DAAC(a1 + 32);
LABEL_4:
  v9 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v9;
  *(a1 + 256) = *(a2 + 256);
  v10 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  v12 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v12;
  v13 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v13;
  v14 = *(a2 + 48);
  *v8 = *v6;
  *(a1 + 48) = v14;
  v15 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v15;
LABEL_15:
  v42 = *(a1 + 264);
  *(a1 + 264) = *(a2 + 264);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListReminderCellAccessoryStackViewModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
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

uint64_t storeEnumTagSinglePayload for TTRIRemindersListReminderCellAccessoryStackViewModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_21D6BF004()
{
  result = qword_27CE5FF48;
  if (!qword_27CE5FF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5FF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5FF48);
  }

  return result;
}

unint64_t sub_21D6BF06C()
{
  result = qword_27CE5FF58;
  if (!qword_27CE5FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5FF58);
  }

  return result;
}

uint64_t sub_21D6BF0C0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = a1[24];
  v9 = *(a1 + 15);
  v183[12] = *(a1 + 14);
  v183[13] = v9;
  v10 = *(a1 + 33);
  v184 = *(a1 + 32);
  v11 = *(a1 + 11);
  v183[8] = *(a1 + 10);
  v183[9] = v11;
  v12 = *(a1 + 12);
  v183[11] = *(a1 + 13);
  v183[10] = v12;
  v13 = *(a1 + 7);
  v183[4] = *(a1 + 6);
  v183[5] = v13;
  v14 = *(a1 + 8);
  v183[7] = *(a1 + 9);
  v183[6] = v14;
  v15 = *(a1 + 3);
  v183[0] = *(a1 + 2);
  v183[1] = v15;
  v16 = *(a1 + 4);
  v183[3] = *(a1 + 5);
  v183[2] = v16;
  v17 = *a2;
  v18 = a2[1];
  v19 = a2[2];
  v20 = a2[3];
  v21 = *(a2 + 1);
  v22 = *(a2 + 2);
  v23 = *(a2 + 33);
  v186 = *(a2 + 32);
  v24 = a2[24];
  v25 = *(a2 + 15);
  v185[12] = *(a2 + 14);
  v185[13] = v25;
  v26 = *(a2 + 11);
  v185[8] = *(a2 + 10);
  v185[9] = v26;
  v27 = *(a2 + 12);
  v185[11] = *(a2 + 13);
  v185[10] = v27;
  v28 = *(a2 + 7);
  v185[4] = *(a2 + 6);
  v185[5] = v28;
  v29 = *(a2 + 8);
  v185[7] = *(a2 + 9);
  v185[6] = v29;
  v30 = *(a2 + 3);
  v185[0] = *(a2 + 2);
  v185[1] = v30;
  v31 = *(a2 + 4);
  v185[3] = *(a2 + 5);
  v185[2] = v31;
  if (v2 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }

    v32 = 0;
    if (v3 != v18)
    {
      return v32;
    }
  }

  else
  {
    if (v17 == 3)
    {
      return 0;
    }

    v32 = 0;
    if (v2 != v17 || ((v3 ^ v18) & 1) != 0)
    {
      return v32;
    }
  }

  if (((v4 ^ v19) & 1) == 0 && ((v5 ^ v20) & 1) == 0)
  {
    if (v7)
    {
      if (!v22)
      {
        return 0;
      }

      if (v6 != v21 || v7 != v22)
      {
        v34 = a1;
        v35 = a2;
        v36 = sub_21DBFC64C();
        a2 = v35;
        v37 = v36;
        a1 = v34;
        if ((v37 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v22)
    {
      return 0;
    }

    if (v8 == 3)
    {
      if (v24 != 3)
      {
        return 0;
      }

      goto LABEL_21;
    }

    if (v24 == 3)
    {
      return 0;
    }

    if (v8 == 2)
    {
      if (v24 != 2)
      {
        return 0;
      }

      goto LABEL_21;
    }

    v32 = 0;
    if (v24 != 2 && ((v24 ^ v8) & 1) == 0)
    {
LABEL_21:
      v38 = *(a1 + 13);
      v39 = *(a1 + 15);
      __src[12] = *(a1 + 14);
      __src[13] = v39;
      v40 = *(a1 + 9);
      v41 = *(a1 + 11);
      __src[8] = *(a1 + 10);
      __src[9] = v41;
      v43 = *(a1 + 11);
      v42 = *(a1 + 12);
      v44 = v42;
      __src[11] = *(a1 + 13);
      __src[10] = v42;
      v45 = *(a1 + 5);
      v46 = *(a1 + 7);
      __src[4] = *(a1 + 6);
      __src[5] = v46;
      v48 = *(a1 + 7);
      v47 = *(a1 + 8);
      v49 = v47;
      __src[7] = *(a1 + 9);
      __src[6] = v47;
      v50 = *(a1 + 3);
      __src[0] = *(a1 + 2);
      __src[1] = v50;
      v51 = *(a1 + 4);
      v53 = *(a1 + 2);
      v52 = *(a1 + 3);
      v54 = v51;
      __src[3] = *(a1 + 5);
      __src[2] = v51;
      v55 = *(a2 + 15);
      *(&__src[26] + 8) = *(a2 + 14);
      *(&__src[27] + 8) = v55;
      v56 = *(a2 + 11);
      *(&__src[22] + 8) = *(a2 + 10);
      *(&__src[23] + 8) = v56;
      v57 = *(a2 + 13);
      *(&__src[24] + 8) = *(a2 + 12);
      *(&__src[25] + 8) = v57;
      v58 = *(a2 + 7);
      *(&__src[18] + 8) = *(a2 + 6);
      *(&__src[19] + 8) = v58;
      v59 = *(a2 + 9);
      *(&__src[20] + 8) = *(a2 + 8);
      *(&__src[21] + 8) = v59;
      v60 = *(a2 + 5);
      *(&__src[16] + 8) = *(a2 + 4);
      *(&__src[17] + 8) = v60;
      v61 = *(a2 + 3);
      *(&__src[14] + 8) = *(a2 + 2);
      *(&__src[15] + 8) = v61;
      v62 = *(a1 + 15);
      v181[12] = __src[12];
      v181[13] = v62;
      v181[8] = __src[8];
      v181[9] = v43;
      v181[11] = v38;
      v181[10] = v44;
      v181[4] = __src[4];
      v181[5] = v48;
      v181[7] = v40;
      v181[6] = v49;
      v181[0] = v53;
      v181[1] = v52;
      v63 = a2;
      v64 = *(a2 + 32);
      *&__src[14] = *(a1 + 32);
      *(&__src[28] + 1) = v64;
      v65 = a1;
      v182 = *(a1 + 32);
      v181[3] = v45;
      v181[2] = v54;
      if (sub_21D4B9498(v181) == 1)
      {
        v66 = *(v63 + 15);
        __dst[12] = *(v63 + 14);
        __dst[13] = v66;
        *&__dst[14] = *(v63 + 32);
        v67 = *(v63 + 11);
        __dst[8] = *(v63 + 10);
        __dst[9] = v67;
        v68 = *(v63 + 12);
        __dst[11] = *(v63 + 13);
        __dst[10] = v68;
        v69 = *(v63 + 6);
        __dst[5] = *(v63 + 7);
        v70 = *(v63 + 8);
        __dst[7] = *(v63 + 9);
        __dst[6] = v70;
        v71 = *(v63 + 3);
        __dst[0] = *(v63 + 2);
        __dst[1] = v71;
        v72 = *(v63 + 4);
        __dst[3] = *(v63 + 5);
        __dst[4] = v69;
        __dst[2] = v72;
        if (sub_21D4B9498(__dst) == 1)
        {
          v73 = *(v65 + 15);
          v177 = *(v65 + 14);
          v178 = v73;
          v179 = *(v65 + 32);
          v74 = *(v65 + 11);
          v173 = *(v65 + 10);
          v174 = v74;
          v75 = *(v65 + 12);
          v176 = *(v65 + 13);
          v175 = v75;
          v76 = *(v65 + 7);
          v169 = *(v65 + 6);
          v170 = v76;
          v77 = *(v65 + 8);
          v172 = *(v65 + 9);
          v171 = v77;
          v78 = *(v65 + 3);
          v165 = *(v65 + 2);
          v166 = v78;
          v79 = *(v65 + 4);
          v168 = *(v65 + 5);
          v167 = v79;
          sub_21D0D3954(v183, &v149, &unk_27CE5FB50);
          sub_21D0D3954(v185, &v149, &unk_27CE5FB50);
          sub_21D0CF7E0(&v165, &unk_27CE5FB50);
          goto LABEL_36;
        }

        sub_21D0D3954(v183, &v165, &unk_27CE5FB50);
        sub_21D0D3954(v185, &v165, &unk_27CE5FB50);
        goto LABEL_34;
      }

      v80 = *(v65 + 13);
      v81 = *(v65 + 15);
      v177 = *(v65 + 14);
      v178 = v81;
      v82 = *(v65 + 9);
      v83 = *(v65 + 11);
      v173 = *(v65 + 10);
      v174 = v83;
      v85 = *(v65 + 11);
      v84 = *(v65 + 12);
      v86 = v84;
      v176 = *(v65 + 13);
      v175 = v84;
      v87 = *(v65 + 5);
      v88 = *(v65 + 7);
      v169 = *(v65 + 6);
      v170 = v88;
      v90 = *(v65 + 7);
      v89 = *(v65 + 8);
      v91 = v89;
      v172 = *(v65 + 9);
      v171 = v89;
      v92 = *(v65 + 3);
      v165 = *(v65 + 2);
      v166 = v92;
      v93 = *(v65 + 4);
      v95 = *(v65 + 2);
      v94 = *(v65 + 3);
      v96 = v93;
      v168 = *(v65 + 5);
      v167 = v93;
      v97 = *(v65 + 15);
      v161 = v177;
      v162 = v97;
      v157 = v173;
      v158 = v85;
      v159 = v86;
      v160 = v80;
      v153 = v169;
      v154 = v90;
      v155 = v91;
      v156 = v82;
      v149 = v95;
      v150 = v94;
      v179 = *(v65 + 32);
      v163 = *(v65 + 32);
      v151 = v96;
      v152 = v87;
      v98 = *(v63 + 15);
      __dst[12] = *(v63 + 14);
      __dst[13] = v98;
      *&__dst[14] = *(v63 + 32);
      v99 = *(v63 + 11);
      __dst[8] = *(v63 + 10);
      __dst[9] = v99;
      v100 = *(v63 + 12);
      __dst[11] = *(v63 + 13);
      __dst[10] = v100;
      v101 = *(v63 + 6);
      __dst[5] = *(v63 + 7);
      v102 = *(v63 + 8);
      __dst[7] = *(v63 + 9);
      __dst[6] = v102;
      v103 = *(v63 + 3);
      __dst[0] = *(v63 + 2);
      __dst[1] = v103;
      v104 = *(v63 + 4);
      __dst[3] = *(v63 + 5);
      __dst[4] = v101;
      __dst[2] = v104;
      if (sub_21D4B9498(__dst) == 1)
      {
        v105 = *(v65 + 15);
        v146 = *(v65 + 14);
        v147 = v105;
        v148 = *(v65 + 32);
        v106 = *(v65 + 11);
        v142 = *(v65 + 10);
        v143 = v106;
        v107 = *(v65 + 13);
        v144 = *(v65 + 12);
        v145 = v107;
        v108 = *(v65 + 7);
        v138 = *(v65 + 6);
        v139 = v108;
        v109 = *(v65 + 9);
        v140 = *(v65 + 8);
        v141 = v109;
        v110 = *(v65 + 3);
        v134 = *(v65 + 2);
        v135 = v110;
        v111 = *(v65 + 5);
        v136 = *(v65 + 4);
        v137 = v111;
        sub_21D0D3954(v183, v132, &unk_27CE5FB50);
        sub_21D0D3954(v185, v132, &unk_27CE5FB50);
        sub_21D0D3954(&v165, v132, &unk_27CE5FB50);
        sub_21D30DAAC(&v134);
LABEL_34:
        memcpy(__dst, __src, sizeof(__dst));
        sub_21D0CF7E0(__dst, &qword_27CE5FF60);
        return 0;
      }

      v112 = *(v63 + 15);
      v146 = *(v63 + 14);
      v147 = v112;
      v148 = *(v63 + 32);
      v113 = *(v63 + 11);
      v142 = *(v63 + 10);
      v143 = v113;
      v114 = *(v63 + 13);
      v144 = *(v63 + 12);
      v145 = v114;
      v115 = *(v63 + 7);
      v138 = *(v63 + 6);
      v139 = v115;
      v116 = *(v63 + 9);
      v140 = *(v63 + 8);
      v141 = v116;
      v117 = *(v63 + 3);
      v134 = *(v63 + 2);
      v135 = v117;
      v118 = *(v63 + 5);
      v136 = *(v63 + 4);
      v137 = v118;
      sub_21D0D3954(v183, v132, &unk_27CE5FB50);
      sub_21D0D3954(v185, v132, &unk_27CE5FB50);
      sub_21D0D3954(&v165, v132, &unk_27CE5FB50);
      v119 = _s15RemindersUICore25TTRRemindersListViewModelC14AssignmentDataV2eeoiySbAE_AEtFZ_0(&v149, &v134);
      v130[12] = v146;
      v130[13] = v147;
      v131 = v148;
      v130[8] = v142;
      v130[9] = v143;
      v130[10] = v144;
      v130[11] = v145;
      v130[4] = v138;
      v130[5] = v139;
      v130[6] = v140;
      v130[7] = v141;
      v130[0] = v134;
      v130[1] = v135;
      v130[2] = v136;
      v130[3] = v137;
      sub_21D30DAAC(v130);
      v132[12] = v161;
      v132[13] = v162;
      v133 = v163;
      v132[8] = v157;
      v132[9] = v158;
      v132[10] = v159;
      v132[11] = v160;
      v132[4] = v153;
      v132[5] = v154;
      v132[6] = v155;
      v132[7] = v156;
      v132[0] = v149;
      v132[1] = v150;
      v132[2] = v151;
      v132[3] = v152;
      sub_21D30DAAC(v132);
      v120 = *(v65 + 15);
      v146 = *(v65 + 14);
      v147 = v120;
      v148 = *(v65 + 32);
      v121 = *(v65 + 11);
      v142 = *(v65 + 10);
      v143 = v121;
      v122 = *(v65 + 13);
      v144 = *(v65 + 12);
      v145 = v122;
      v123 = *(v65 + 7);
      v138 = *(v65 + 6);
      v139 = v123;
      v124 = *(v65 + 9);
      v140 = *(v65 + 8);
      v141 = v124;
      v125 = *(v65 + 3);
      v134 = *(v65 + 2);
      v135 = v125;
      v126 = *(v65 + 5);
      v136 = *(v65 + 4);
      v137 = v126;
      sub_21D0CF7E0(&v134, &unk_27CE5FB50);
      if (v119)
      {
LABEL_36:
        if (v10)
        {
          if (v23)
          {
            sub_21D0D8CF0(0, &qword_280D1B8F0);
            v127 = v23;
            v128 = v10;
            v129 = sub_21DBFB63C();

            if (v129)
            {
              return 1;
            }
          }
        }

        else if (!v23)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return v32;
}

unint64_t sub_21D6BF8D0(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

double sub_21D6BF8E0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0;
  return result;
}

uint64_t sub_21D6BF934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21D6BF9F8(uint64_t a1, char a2)
{
  if (a2)
  {
    memset(v11, 0, sizeof(v11));
    v9 = 0u;
    v10 = 0u;
    swift_beginAccess();
    v4 = *(a1 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v4;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_21D256CE0(v4);
      *(a1 + 24) = v4;
    }

    if (v4[2] >= 2uLL)
    {
      sub_21D0F02F4(&v9, (v4 + 12), &qword_27CE59C80);
      *(a1 + 24) = v4;
      return swift_endAccess();
    }

    __break(1u);
  }

  else
  {
    v7 = sub_21D6BB7D0(1);
    if (!v7)
    {
      v7 = sub_21D6BDB94();
    }

    v8 = v7;
    memset(v12, 0, sizeof(v12));
    sub_21D0D3954(v12, v11, &qword_27CE5C690);
    *&v9 = v8;
    *(&v9 + 1) = -1;
    v10 = xmmword_21DC20200;
    swift_beginAccess();
    v2 = *(a1 + 24);
    v4 = v8;
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v2;
    if (result)
    {
      goto LABEL_9;
    }
  }

  result = sub_21D256CE0(v2);
  v2 = result;
  *(a1 + 24) = result;
LABEL_9:
  if (v2[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0F02F4(&v9, (v2 + 12), &qword_27CE59C80);
    *(a1 + 24) = v2;
    swift_endAccess();

    return sub_21D0CF7E0(v12, &qword_27CE5C690);
  }

  return result;
}

uint64_t sub_21D6BFBA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_21D6BB7D0(3);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
LABEL_3:
      v7 = sub_21DBFA12C();
      [v6 setText_];

      LODWORD(v8) = 1148846080;
      [v6 setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:{*(MEMORY[0x277CEC620] + 8), v8}];
      v9 = 16.0;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_21D6BDCC4();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v10 = sub_21DBFA12C();
  [v6 setText_];

  LODWORD(v11) = 1148846080;
  [v6 setLayoutSize:1.0 withContentPriority:{*MEMORY[0x277CEC618], v11}];
  v9 = 0.0;
LABEL_6:
  memset(v17, 0, sizeof(v17));
  sub_21D0D3954(v17, &v16, &qword_27CE5C690);
  v15[0] = v6;
  v15[1] = -1;
  *&v15[2] = v9;
  v15[3] = 0;
  swift_beginAccess();
  v12 = *(a1 + 24);
  v13 = v6;
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 24) = v12;
  if ((result & 1) == 0)
  {
    result = sub_21D256CE0(v12);
    v12 = result;
    *(a1 + 24) = result;
  }

  if (v12[2] < 4uLL)
  {
    __break(1u);
  }

  else
  {
    sub_21D0F02F4(v15, (v12 + 28), &qword_27CE59C80);
    *(a1 + 24) = v12;
    swift_endAccess();

    return sub_21D0CF7E0(v17, &qword_27CE5C690);
  }

  return result;
}

uint64_t sub_21D6BFD90(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels];
  *&v1[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels] = a1;
  v3 = sub_21DBF8E0C();
  sub_21D1D881C(v3, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_stackView];
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21D6C156C;
    *(v9 + 24) = v8;
    v13[4] = sub_21D0E622C;
    v13[5] = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_21D0E6204;
    v13[3] = &block_descriptor_14_2;
    v10 = _Block_copy(v13);
    v11 = v1;

    [v7 performBatchUpdates_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D6BFF24(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (!(*v1 >> 62))
  {
    v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = -v2;
    if (!__OFSUB__(0, v2))
    {
      goto LABEL_5;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = result;
  v2 = sub_21DBFBD7C();
  result = v6;
  v3 = -v2;
  if (__OFSUB__(0, v2))
  {
    goto LABEL_19;
  }

LABEL_5:
  v4 = -result;
  if (v3 <= 0 && v3 > v4)
  {
    goto LABEL_22;
  }

  result = v2 - result;
  if (__OFADD__(v2, v4))
  {
    goto LABEL_20;
  }

  if (v2 < result)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  return sub_21DBD1A58(result, v2);
}

uint64_t sub_21D6BFFDC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FF90);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FF90);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D6C00A4()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_stackView];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21D6C1564;
  *(v3 + 24) = v2;
  v8[4] = sub_21D0E6070;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D0E6204;
  v8[3] = &block_descriptor_78;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performBatchUpdates_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_21D6C0200()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_attachmentsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_imageViews] = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CEC638]);
  sub_21D0D8CF0(0, &qword_280D176A0);
  v4 = sub_21DBFA5DC();
  v5 = [v3 initWithArrangedSubviews_];

  [v5 setAxis_];
  [v5 setDistribution_];
  [v5 setAlignment_];
  [v5 setSpacing_];
  *&v0[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_stackView] = v5;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  v6 = v5;
  v7 = objc_msgSendSuper2(&v10, sel_initWithDocumentView_, v6);
  [v7 setContentInsetAdjustmentBehavior_];
  [v7 setHorizontalAlignment_];
  [v7 setVerticalAlignment_];
  [v7 setCanScrollDocumentViewVertically_];
  [v7 setCanScrollDocumentViewHorizontally_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel_didTapImage_];
  [v7 addGestureRecognizer_];

  return v7;
}

uint64_t sub_21D6C0424(uint64_t a1)
{
  v1 = a1;
  v2 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels;
  v3 = *(*(a1 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels) + 16);
  v4 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_imageViews;
  swift_beginAccess();
  v5 = *&v4[v1];
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  if (v3 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    v3 = *(*(v1 + v2) + 16);
    v19 = *&v4[v1];
    v45 = v2;
    if (!(v19 >> 62))
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v3)
      {
        goto LABEL_30;
      }

LABEL_18:
      v20 = *(*(v1 + v45) + 16);
      v21 = *&v4[v1];
      if (v21 >> 62)
      {
        goto LABEL_50;
      }

      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v23 = v20 - result;
      if (!__OFSUB__(v20, result))
      {
        goto LABEL_20;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }
  }

  else
  {
    while (1)
    {
      v6 = *&v4[v1];
      v7 = v6 >> 62 ? sub_21DBFBD7C() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = *(*(v1 + v2) + 16);
      v9 = v7 - v8;
      if (__OFSUB__(v7, v8))
      {
        break;
      }

      v10 = *&v4[v1];
      sub_21DBF8E0C();
      v3 = sub_21D6C126C(v9, v10);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      if (v16 >> 1 == v14)
      {
LABEL_12:
        v45 = v2;
        swift_unknownObjectRelease();
        swift_beginAccess();
        sub_21D6BFF24(v9);
        swift_endAccess();
        goto LABEL_30;
      }

      v17 = v16 >> 1;
      while (!__OFSUB__(v17--, 1))
      {
        if (v17 < v14 || v17 >= (v16 >> 1))
        {
          goto LABEL_14;
        }

        [*(v12 + 8 * v17) removeFromSuperview];
        if (v17 == v14)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      if (v3 >= sub_21DBFBD7C())
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  if (sub_21DBFBD7C() < v3)
  {
    goto LABEL_18;
  }

LABEL_30:
  while (1)
  {
    v20 = *(v1 + v45);
    v1 = *&v4[v1];
    v33 = *(v20 + 16);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    if (!v33)
    {
      break;
    }

    v34 = 0;
    if (v1 < 0)
    {
      v35 = v1;
    }

    else
    {
      v35 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v44 = v35;
    v45 = v1 & 0xC000000000000001;
    v36 = (v20 + 40);
    while (v34 < *(v20 + 16))
    {
      v37 = *(v36 - 1);
      v4 = *v36;
      if (v1 >> 62)
      {
        if (v34 == sub_21DBFBD7C())
        {
LABEL_46:

          goto LABEL_47;
        }
      }

      else if (v34 == *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      if (v45)
      {
        v39 = v37;
        v43 = v4;
        v41 = MEMORY[0x223D44740](v34, v1);
      }

      else
      {
        if (v34 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v38 = *(v1 + 8 * v34 + 32);
        v39 = v37;
        v40 = v4;
        v41 = v38;
      }

      v42 = v41;
      ++v34;
      [v41 setImage_];

      v36 += 2;
      if (v33 == v34)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    result = sub_21DBFBD7C();
    v23 = v20 - result;
    if (__OFSUB__(v20, result))
    {
      goto LABEL_52;
    }

LABEL_20:
    if (v23 < 0)
    {
      goto LABEL_53;
    }

    if (v23)
    {
      type metadata accessor for TTRIRemindersListImageAttachmentsHiddenByAlphaImageView();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v25 = *(v1 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_stackView);
      v26 = *MEMORY[0x277CDA138];
      do
      {
        v27 = [objc_allocWithZone(ObjCClassFromMetadata) init];
        v28 = [v27 layer];
        [v28 setCornerCurve_];

        v29 = [v27 layer];
        [v29 setCornerRadius_];

        v30 = [v27 layer];
        [v30 setMasksToBounds_];

        [v27 setContentMode_];
        [v27 setAccessibilityIgnoresInvertColors_];

        LODWORD(v31) = 1148846080;
        [v27 setLayoutSize:34.0 withContentPriority:{34.0, v31}];
        swift_beginAccess();
        v32 = v27;
        MEMORY[0x223D42D80]();
        if (*((*&v4[v1] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v4[v1] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        swift_endAccess();
        [v25 addArrangedSubview_];

        --v23;
      }

      while (v23);
    }
  }

LABEL_47:
}

void sub_21D6C0920(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_imageViews;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v17 = v1;
  if (v4 >> 62)
  {
LABEL_21:
    v5 = sub_21DBFBD7C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (v5)
  {
    v6 = 0;
    v7 = 40;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      [a1 locationInView_];
      if ([v9 pointInside:0 withEvent:?])
      {
        break;
      }

      v7 += 16;
      ++v6;
      if (v10 == v5)
      {
        goto LABEL_13;
      }
    }

    v11 = v17 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_attachmentsDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v17 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels);
      if (v6 >= *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v13 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = *(v12 + v7);
        v15(v17, v16, ObjectType, v13);

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_21D6C0C84(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_imageViews;
  swift_beginAccess();
  v6 = *&v2[v5];
  if (v6 >> 62)
  {
    goto LABEL_23;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return 0;
  }

LABEL_3:
  v23 = v5;
  sub_21DBF8E0C();
  v8 = 40;
  for (i = 4; ; ++i)
  {
    v5 = i - 4;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223D44740](i - 4, v6);
    }

    else
    {
      if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v10 = *(v6 + 8 * i);
    }

    v11 = v10;
    v12 = [v10 image];
    if (v12)
    {
      break;
    }

    v14 = i - 3;
    if (__OFADD__(v5, 1))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v7 = sub_21DBFBD7C();
      if (!v7)
      {
        return 0;
      }

      goto LABEL_3;
    }

LABEL_14:
    v8 += 16;
    if (v14 == v7)
    {

      return 0;
    }
  }

  [v2 convertPoint:v11 toCoordinateSpace:{a1, a2}];
  v13 = [v11 pointInside:0 withEvent:?];

  if ((v13 & 1) == 0)
  {
    v14 = i - 3;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  v15 = *&v2[OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels];
  if (v5 >= *(v15 + 16))
  {
    return 0;
  }

  v16 = *(v15 + v8);
  result = swift_beginAccess();
  v18 = *&v2[v23];
  if ((v18 & 0xC000000000000001) != 0)
  {
    v22 = v16;
    MEMORY[0x223D44740](i - 4, v18);
    goto LABEL_20;
  }

  if (v5 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v18 + 8 * i);
    v20 = v16;
    v21 = v19;
LABEL_20:
    swift_endAccess();
    return v16;
  }

  __break(1u);
  return result;
}

id sub_21D6C0EA8()
{
  type metadata accessor for TTRIQuickLookImageAttachmentPreviewItem();
  if (!swift_dynamicCastClass())
  {
    if (qword_27CE56BA0 != -1)
    {
LABEL_19:
      swift_once();
    }

    v10 = sub_21DBF84BC();
    __swift_project_value_buffer(v10, qword_27CE5FF90);
    swift_unknownObjectRetain();
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27[0] = v14;
      *v13 = 136315138;
      swift_getObjectType();
      v15 = sub_21DBFC8EC();
      v17 = sub_21D0CDFB4(v15, v16, v27);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRIRemindersListLargeImageAttachmentsView: unsupported QLPreviewItem type {type: %s}", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    return 0;
  }

  v26 = v0;
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_viewModels);
  v2 = *(v1 + 16);
  swift_unknownObjectRetain();
  sub_21DBF8E0C();
  if (!v2)
  {
LABEL_7:
    swift_unknownObjectRelease();

    return 0;
  }

  v3 = 0;
  v4 = (v1 + 40);
  while (1)
  {
    if (v3 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    v5 = *(v4 - 1);
    v6 = *v4;
    sub_21D0D8CF0(0, &qword_280D17680);
    v7 = v5;
    v8 = v6;
    v9 = sub_21DBFB63C();

    if (v9)
    {
      break;
    }

    ++v3;
    v4 += 2;
    if (v2 == v3)
    {
      goto LABEL_7;
    }
  }

  v18 = OBJC_IVAR____TtC15RemindersUICore42TTRIRemindersListSmallImageAttachmentsView_imageViews;
  v19 = v26;
  swift_beginAccess();
  v20 = *(v26 + v18);
  if (!(v20 >> 62))
  {
    if (v3 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        v21 = swift_beginAccess();
        v22 = *(v19 + v18);
        if ((v22 & 0xC000000000000001) != 0)
        {
          goto LABEL_22;
        }

        if (v3 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v22 + 8 * v3 + 32);
          goto LABEL_17;
        }

        __break(1u);
LABEL_24:
        v19 = v26;
      }

      while (v3 < v21);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v21 = sub_21DBFBD7C();
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_22:
  v23 = MEMORY[0x223D44740](v3);
LABEL_17:
  v24 = v23;
  swift_endAccess();
  swift_unknownObjectRelease();
  return v24;
}

uint64_t sub_21D6C126C(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v10 = result;
    v4 = sub_21DBFBD7C();
    result = v10;
    v5 = -v4;
    if (!__OFSUB__(0, v4))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = a2;
  v3 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5 = -v4;
  if (__OFSUB__(0, v4))
  {
    goto LABEL_32;
  }

LABEL_4:
  v6 = -result;
  if (v5 > 0 || v5 <= v6)
  {
    v7 = v4 - result;
    if (__OFADD__(v4, v6))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v4 < v7)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v4 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = 0;
    if (!v3)
    {
LABEL_8:
      result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = sub_21DBFBD7C();
LABEL_13:
  if (result < v7)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v7 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v3)
  {
    result = sub_21DBFBD7C();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v4)
  {
    goto LABEL_35;
  }

  if (v4 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v2 & 0xC000000000000001) == 0 || v7 == v4)
  {
    sub_21DBF8E0C();
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v7 < v4)
  {
    sub_21D0D8CF0(0, &qword_280D0C328);
    sub_21DBF8E0C();
    v8 = v7;
    do
    {
      v9 = v8 + 1;
      sub_21DBFBF6C();
      v8 = v9;
    }

    while (v4 != v9);
    if (!v3)
    {
      return v2 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return sub_21DBFC3BC();
  }

LABEL_40:
  __break(1u);
  return result;
}

void *sub_21D6C142C(uint64_t a1, double *a2)
{
  v3 = sub_21D6C0EA8();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 image];
  if (v5)
  {
    v6 = v5;
    [v5 size];
    v8 = v7;
    v10 = v9;

    [v4 bounds];
    v15 = v13;
    v16 = v14;
    v17 = v13 / v8;
    v18 = v14 / v10;
    if (v13 / v8 >= v14 / v10)
    {
      v20 = v14;
      v19 = v13;
      if (v18 < v17)
      {
        v20 = v10 * v17;
        v19 = v13;
      }
    }

    else
    {
      v19 = v8 * v18;
      v20 = v14;
    }

    v22 = v11;
    v23 = v12;
    MidX = CGRectGetMidX(*&v11);
    v27.origin.x = v22;
    v27.origin.y = v23;
    v27.size.width = v15;
    v27.size.height = v16;
    MidY = CGRectGetMidY(v27);
    *a2 = MidX - v19 * 0.5;
    a2[1] = MidY - v20 * 0.5;
    a2[2] = v19;
    a2[3] = v20;
    v21 = v4;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id TTRIRemindersListReminderCellLinkView.__allocating_init(url:attachmentID:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v6[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] = 0;
  *&v6[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID] = a2;
  v7 = a2;
  v8 = sub_21DBF53FC();
  v12.receiver = v6;
  v12.super_class = v3;
  v9 = objc_msgSendSuper2(&v12, sel_initWithURL_, v8);

  v10 = sub_21DBF54CC();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

id TTRIRemindersListReminderCellLinkView.init(url:attachmentID:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v3[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata] = 0;
  *&v3[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID] = a2;
  v5 = a2;
  v6 = sub_21DBF53FC();
  v10.receiver = v3;
  v10.super_class = type metadata accessor for TTRIRemindersListReminderCellLinkView();
  v7 = objc_msgSendSuper2(&v10, sel_initWithURL_, v6);

  v8 = sub_21DBF54CC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id sub_21D6C173C(id result)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata;
  if ((*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_didSetLoadedMetadata) & 1) == 0)
  {
    result = [v1 setMetadata_];
    *(v1 + v2) = 1;
  }

  return result;
}

id TTRIRemindersListReminderCellLinkView.__allocating_init(metadata:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithMetadata_];

  return v3;
}

id TTRIRemindersListReminderCellLinkView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRIRemindersListReminderCellLinkView.__allocating_init(presentationProperties:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithPresentationProperties_];
  swift_unknownObjectRelease();
  return v2;
}

id TTRIRemindersListReminderCellLinkView.__allocating_init(presentationProperties:url:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21DBF54CC();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    v8 = sub_21DBF53FC();
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithPresentationProperties:a1 URL:v8];
  swift_unknownObjectRelease();

  return v9;
}

id TTRIRemindersListReminderCellLinkView.__allocating_init(metadataLoadedFrom:)(uint64_t a1)
{
  return sub_21D6C1DAC(a1, MEMORY[0x277CC9228], &selRef_initWithMetadataLoadedFromURL_, MEMORY[0x277CC9260]);
}

{
  return sub_21D6C1DAC(a1, MEMORY[0x277CC8668], &selRef_initWithMetadataLoadedFromRequest_, MEMORY[0x277CC8678]);
}

id sub_21D6C1DAC(uint64_t a1, uint64_t (*a2)(void), SEL *a3, uint64_t (*a4)(void))
{
  v9 = objc_allocWithZone(v4);
  v10 = a2();
  v11 = [v9 *a3];

  v12 = a4(0);
  (*(*(v12 - 8) + 8))(a1, v12);
  return v11;
}

void TTRIRemindersListReminderCellLinkView.init(metadataLoadedFrom:)()
{
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

{
  TTRIRemindersListReminderCellLinkView.init(metadataLoadedFrom:)();
}

void sub_21D6C1EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t, __n128))
{
  v7 = a4(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  a5(a3, v8);
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

id TTRIRemindersListReminderCellLinkView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListReminderCellLinkView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *TTRIRemindersListReminderCellLinkView.attachmentAndView(at:)()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
  v2 = v1;
  v3 = v0;
  return v1;
}

void *sub_21D6C1FD4()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView_attachmentID];
  v2 = v1;
  v3 = v0;
  return v1;
}

id TTRIReminderTitleTextView.init(isForUseInNUIContainerView:lineIndexWhereClippingBegins:hashtagTokenEditingBehavior:usesLegacyTextKit1:)(int a1, uint64_t a2, int a3, unsigned __int8 *a4, int a5)
{
  v6 = v5;
  v66 = a5;
  v71 = a3;
  v70 = a2;
  v69 = a1;
  v73 = sub_21DBF873C();
  MEMORY[0x28223BE20](v73);
  v72 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = *a4;
  v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection] = 0;
  *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport] = 0;
  v9 = &v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions];
  v10 = MEMORY[0x277D84F90];
  v11 = sub_21D177598(MEMORY[0x277D84F90]);
  *v9 = v10;
  v9[1] = v11;
  *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestions] = v10;
  v12 = &v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestionType];
  *v12 = 0;
  v12[1] = 0;
  v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization] = 0;
  v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustSelectionToSelectToken] = 0;
  v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustInternalTypingAttributes] = 0;
  v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter] = 0;
  v13 = &v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState];
  *v13 = 514;
  v13[2] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E530);
  inited = swift_initStackObject();
  v68 = xmmword_21DC08D20;
  *(inited + 16) = xmmword_21DC08D20;
  v15 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 labelColor];
  v19 = *MEMORY[0x277D740A8];
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v20 = qword_280D176B8;
  v21 = v19;
  if (v20 != -1)
  {
    swift_once();
  }

  *(inited + 56) = sub_21D900614(1);
  v65 = sub_21D177570(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F310);
  swift_arrayDestroy();
  v22 = swift_initStackObject();
  v74 = xmmword_21DC08D00;
  *(v22 + 16) = xmmword_21DC08D00;
  *(v22 + 32) = v17;
  v23 = v17;
  *(v22 + 40) = [v16 secondaryLabelColor];
  v64 = sub_21D177570(v22);
  swift_setDeallocating();
  sub_21D0CF7E0(v22 + 32, &unk_27CE5F310);
  v24 = swift_initStackObject();
  *(v24 + 16) = v74;
  *(v24 + 32) = v23;
  v25 = qword_280D173E8;
  v26 = v23;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = qword_280D173F0;
  *(v24 + 40) = qword_280D173F0;
  v28 = v27;
  v63 = sub_21D177570(v24);
  swift_setDeallocating();
  sub_21D0CF7E0(v24 + 32, &unk_27CE5F310);
  v29 = swift_initStackObject();
  *(v29 + 16) = v74;
  *(v29 + 32) = v26;
  v30 = v26;
  *(v29 + 40) = [v16 secondaryLabelColor];
  v62 = sub_21D177570(v29);
  swift_setDeallocating();
  sub_21D0CF7E0(v29 + 32, &unk_27CE5F310);
  v31 = swift_initStackObject();
  *(v31 + 16) = v74;
  *(v31 + 32) = v30;
  v32 = v30;
  *(v31 + 40) = [v16 linkColor];
  v33 = sub_21D177570(v31);
  swift_setDeallocating();
  sub_21D0CF7E0(v31 + 32, &unk_27CE5F310);
  if (qword_280D0F940 != -1)
  {
    swift_once();
  }

  v34 = qword_280D0F948;
  v35 = swift_initStackObject();
  *(v35 + 16) = v74;
  *(v35 + 32) = v32;
  sub_21DBF8E0C();
  *(v35 + 40) = [v16 magentaColor];
  v36 = sub_21D177570(v35);
  swift_setDeallocating();
  sub_21D0CF7E0(v35 + 32, &unk_27CE5F310);
  v37 = type metadata accessor for TTRReminderTextStorage();
  v38 = objc_allocWithZone(v37);
  v39 = v64;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles] = v65;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_uncommittedHashtagTextStyles] = v39;
  v40 = v62;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles] = v63;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_foreignHashtagTextStyles] = v40;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_harvestedResultTextStyles] = v33;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility] = v34;
  *&v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_nonEditableTextStyles] = v36;
  v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_debug_highlightNonEditableTexts] = 0;
  v38[OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent] = 0;
  v76.receiver = v38;
  v76.super_class = v37;
  v41 = objc_msgSendSuper2(&v76, sel_init);
  v42 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v42 setWidthTracksTextView_];
  if (v66)
  {
    v43 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
    [v43 addTextContainer_];
    [v41 addLayoutManager_];
  }

  else
  {
    v44 = [objc_allocWithZone(MEMORY[0x277D742A8]) init];
    [v44 setResolvesNaturalAlignmentWithBaseWritingDirection_];
    v43 = [objc_allocWithZone(MEMORY[0x277D74280]) init];
    [v44 setTextContainer_];
    [v43 addTextLayoutManager_];
    [v43 setTextStorage_];
  }

  *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage] = v41;
  type metadata accessor for TTRHashtagTokenTextInteraction();
  v45 = swift_allocObject();
  type metadata accessor for HashtagTokenEditor();
  v46 = swift_allocObject();
  *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_tokenInteraction] = v45;
  *(v45 + 24) = v46;
  v47 = &v6[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_lineIndexWhereClippingBegins];
  *v47 = 0;
  v47[8] = 1;
  *&v6[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_textStorageObserver] = 0;
  *(v45 + 16) = v67;
  v6[OBJC_IVAR____TtC15RemindersUICore21TTRIExpandingTextView_isForUseInNUIContainerView] = v69 & 1;
  swift_beginAccess();
  *v47 = v70;
  v47[8] = v71 & 1;
  v48 = type metadata accessor for TTRIExpandingTextView();
  v75.receiver = v6;
  v75.super_class = v48;
  v49 = v41;
  v50 = v42;
  v51 = objc_msgSendSuper2(&v75, sel_initWithFrame_textContainer_, v50, 0.0, 0.0, 0.0, 0.0);
  sub_21DACAE40();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
  v52 = swift_initStackObject();
  *(v52 + 16) = v68;
  *(v52 + 32) = v32;
  v53 = v51;
  v54 = [v16 linkColor];
  v55 = sub_21D0D8CF0(0, &qword_280D1B8F0);
  *(v52 + 40) = v54;
  v56 = *MEMORY[0x277D741F0];
  *(v52 + 64) = v55;
  *(v52 + 72) = v56;
  *(v52 + 104) = MEMORY[0x277D83B88];
  *(v52 + 80) = 1;
  v57 = v56;
  sub_21D11274C(v52);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2C0);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_21D6C9CCC(&qword_280D17790, type metadata accessor for Key);
  v58 = sub_21DBF9E5C();

  [v53 setLinkTextAttributes_];

  v59 = [objc_opt_self() defaultCenter];
  [v59 removeObserver:v53 name:*MEMORY[0x277D76BA8] object:0];

  sub_21DBFB5AC();
  sub_21DBF861C();
  sub_21DBFB5BC();

  return v53;
}

id sub_21D6C2AE0()
{
  result = [v0 delegate];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v2;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t (*sub_21D6C2B58(void *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = [v1 delegate];
  v4 = v3;
  if (v3)
  {
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {
      swift_unknownObjectRelease();
      v4 = 0;
      v3 = 0;
    }
  }

  *a1 = v4;
  a1[1] = v3;
  return sub_21D6C2BF0;
}

uint64_t sub_21D6C2BF0(uint64_t a1)
{
  [*(a1 + 16) setDelegate_];

  return swift_unknownObjectRelease();
}

id sub_21D6C2C3C@<X0>(_BYTE *a1@<X8>)
{
  result = [v1 isEditing];
  *a1 = result;
  return result;
}

uint64_t sub_21D6C2C70()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage);
  v2 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = sub_21D10FE34(*MEMORY[0x277D740A8]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v8 = result;
      v9 = v6;
      return v8;
    }
  }

  else
  {
    swift_endAccess();
    return 0;
  }

  return result;
}

uint64_t sub_21D6C2D28()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_21D6C2D6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport);
  if (!v1)
  {
    return 0;
  }

  v2 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
  swift_beginAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
  v4 = 1;
  if ((*(*(v3 - 8) + 48))(v1 + v2, 1, v3))
  {
    return 0;
  }

  return v4;
}

void sub_21D6C2E1C(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
    v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
    swift_beginAccess();
    v5 = *(v3 + v4);
    if (*(v5 + 16) && (v6 = sub_21D10FE34(*MEMORY[0x277D740C0]), (v7 & 1) != 0))
    {
      v8 = *(*(v5 + 56) + 8 * v6);
      swift_endAccess();
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      v10 = v8;
      v11 = v10;
      if (v9)
      {
        v11 = v10;
LABEL_12:
        v13 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport;
        v14 = *&v2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport];
        if (v14)
        {
          v15 = *&v2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport];
        }

        else
        {
          v16 = objc_allocWithZone(type metadata accessor for TTRITextViewAnimationSupport(0));
          v17 = v2;
          v18 = sub_21DA905E4();

          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v20 = &v18[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater];
          v21 = *&v18[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater];
          v22 = *&v18[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater + 8];
          *v20 = sub_21D6C9184;
          v20[1] = v19;

          sub_21D0EC9F4(v21, v22);

          v23 = *&v2[v13];
          *&v2[v13] = v18;
          v15 = v18;

          v14 = 0;
        }

        v24 = v14;
        sub_21DA8DC6C(v9);

        return;
      }
    }

    else
    {
      swift_endAccess();
      v11 = 0;
    }

    v9 = [objc_opt_self() labelColor];
    goto LABEL_12;
  }

  v12 = *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport];
  if (v12)
  {
    v25 = v12;
    sub_21DA8E08C();
  }
}

void (*sub_21D6C3040(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
    v8 = (*(*(v7 - 8) + 48))(v5 + v6, 1, v7) == 0;
  }

  else
  {
    v8 = 0;
  }

  *(v4 + 32) = v8;
  return sub_21D6C3138;
}

void sub_21D6C3138(uint64_t a1)
{
  v1 = *a1;
  sub_21D6C2E1C(*(*a1 + 32));

  free(v1);
}

id sub_21D6C319C(char a1)
{
  v2 = a1 & 1;
  result = [v1 allowsEditingTextAttributes];
  if (result != v2)
  {

    return [v1 setAllowsEditingTextAttributes_];
  }

  return result;
}

id (*sub_21D6C3200(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 allowsEditingTextAttributes];
  return sub_21D6C3254;
}

id sub_21D6C3254(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  result = [*a1 allowsEditingTextAttributes];
  if (v2 != result)
  {

    return [v1 setAllowsEditingTextAttributes_];
  }

  return result;
}

void sub_21D6C32BC()
{
  v1 = v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter];
  v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter] = 1;
  if (v1 != 1)
  {
    [v0 setAutocapitalizationType_];

    [v0 reloadInputViews];
  }
}

uint64_t sub_21D6C3324(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = [*(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage) string];
  v6 = sub_21DBFA16C();
  v8 = v7;

  TTRReminderCellTextHighlights.rebased(forCurrentText:)(v6, v8, v12);

  sub_21D98115C(v12[2]);

  sub_21D6C4EA8(a2);
  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions);
  if (v9 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D0C2B0);
    sub_21DBF8E0C();
    v10 = sub_21DBFC33C();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D0C2B0);
    v10 = v9;
  }

  sub_21D6C5B68(v10);
}

void sub_21D6C34A0()
{
  sub_21D98115C(MEMORY[0x277D84FA0]);
  v0 = MEMORY[0x277D84F90];

  sub_21D6C4EA8(v0);
}

void sub_21D6C3508(RemindersUICore::TTRReminderCellStyleAttributeUpdate a1@<0:X0, 8:X1, 16:X2>)
{
  v1 = *(a1.rangeToChange.location + 16);
  v2 = *a1.rangeToChange.location;
  v3 = v1;
  a1.rangeToChange.location = &v2;
  TTRReminderTextStorage.applyStyleAttributeUpdate(_:)(a1);
}

uint64_t sub_21D6C3568(__int128 *a1, uint64_t (*a2)(__int128 *))
{
  v2 = *(a1 + 2);
  v4 = *a1;
  v5 = v2;
  return a2(&v4);
}

uint64_t sub_21D6C35B4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage);
  v4 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_21DBF8E0C();
  v7 = v5;
  sub_21D980810(&v7);
}

void sub_21D6C3634()
{
  v1 = [v0 textStorage];
  NSMutableAttributedString.clearLinks()();
}

id sub_21D6C3690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = *(v4 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage);
  [v7 beginEditing];
  v8 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  v37 = *&v7[v8];
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60058);
  sub_21DBF9EBC();
  v9 = *&v7[v8];
  *&v7[v8] = v37;
  v10 = sub_21DBF8E0C();
  sub_21D37135C(v10, v9);
  LOBYTE(v8) = v11;

  if ((v8 & 1) == 0)
  {
    v12 = [v7 string];
    v13 = sub_21DBFA16C();
    v15 = v14;

    v16 = MEMORY[0x223D42B30](v13, v15);

    [v7 edited:1 range:0 changeInLength:{v16, 0}];
  }

  v17 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_committedHashtagTextStyles;
  swift_beginAccess();
  v36 = *&v7[v17];
  sub_21DBF8E0C();
  sub_21DBF9EBC();
  v18 = *&v7[v17];
  *&v7[v17] = v36;
  v19 = sub_21DBF8E0C();
  sub_21D37135C(v19, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    v22 = [v7 string];
    v23 = sub_21DBFA16C();
    v25 = v24;

    v26 = MEMORY[0x223D42B30](v23, v25);

    [v7 edited:1 range:0 changeInLength:{v26, 0}];
  }

  v27 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v28 = *&v7[v27];
  *&v7[v27] = v6;
  sub_21DBF8E0C();
  if (v6)
  {
    if (v28)
    {
      swift_bridgeObjectRetain_n();
      sub_21DBF8E0C();
      v29 = sub_21D3220EC(v6, v28);

      swift_bridgeObjectRelease_n();
      if (v29)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (!v28)
  {

    goto LABEL_12;
  }

LABEL_11:
  v30 = [v7 string];
  v31 = sub_21DBFA16C();
  v33 = v32;

  v34 = MEMORY[0x223D42B30](v31, v33);

  [v7 edited:1 range:0 changeInLength:{v34, 0}];
LABEL_12:

  [v7 setAttributedString_];
  return [v7 endEditing];
}

id sub_21D6C39DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
  v3 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_baseTextStyles;
  swift_beginAccess();
  if (!*(*(v2 + v3) + 16))
  {
    return swift_endAccess();
  }

  sub_21D10FE34(*MEMORY[0x277D740A8]);
  if ((v4 & 1) == 0)
  {
    return swift_endAccess();
  }

  swift_endAccess();
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [v1 setFont_];
  }

  return result;
}

void sub_21D6C3AA4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
    if (!(*(*(v3 - 8) + 48))(&v1[v2], 1, v3))
    {
      v4 = v1;
      sub_21DA8E08C();

      sub_21D6C2E1C(1);
    }
  }
}

id sub_21D6C3B6C(id result)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization;
  if ((*(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization) & 1) == 0)
  {
    if (result)
    {
      v3 = 0;
    }

    else
    {
      result = [v1 _textInputSource];
      v3 = result == 3;
    }

    *(v1 + v2) = v3;
  }

  return result;
}

void sub_21D6C3BC0()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization;
  if (v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization] != 1)
  {
    return;
  }

  v2 = [v0 markedTextRange];
  if (v2)
  {
    goto LABEL_3;
  }

  v0[v1] = 0;
  v3 = [v0 attributedText];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 string];

  v6 = sub_21DBFA16C();
  v8 = v7;

  v9 = sub_21D1954D0(v6, v8);
  v11 = v10;

  if (v11)
  {
    if (sub_21DBFA02C())
    {
      sub_21DBFA01C();
      v12 = [v0 textStorage];
      [v12 beginEditing];

      v13 = [v0 textStorage];
      v14 = MEMORY[0x223D42B30](v9, v11);

      v15 = sub_21DBFA12C();

      [v13 replaceCharactersInRange:0 withString:{v14, v15}];

      v16 = [v0 textStorage];
      [v16 endEditing];
      v2 = v16;
LABEL_3:

      return;
    }
  }
}

void sub_21D6C3DE8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = [v1 selectedRange];
    v5 = v4;
    v6 = [v1 textStorage];
    v7.location = v3;
    v7.length = v5;
    v8 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v7, v6);

    if (v8.location != v3 || v8.length != v5)
    {
      [v1 setSelectedRange_];
    }
  }

  if ([v1 allowsEditingTextAttributes])
  {
    v11 = 0;
    v12 = 0;
    sub_21D6C5278(&v11);
    sub_21D6C543C();
  }

  v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter) = 0;
  if (v10)
  {
    [v1 setAutocapitalizationType_];
    [v1 reloadInputViews];
  }
}

void sub_21D6C3F28()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = [v1 selectedRange];
    v5 = v4;
    v6 = [v1 textStorage];
    v7.location = v3;
    v7.length = v5;
    v8 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v7, v6);

    if (v8.location != v3 || v8.length != v5)
    {
      [v1 setSelectedRange_];
    }
  }
}

id sub_21D6C4004(NSUInteger a1, int64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage);
  result = sub_21DBF4B4C();
  if (result != a1 && a2 > 0)
  {
    sub_21D7BF51C(v5, a1, a2);
    sub_21DBFC10C();
    while (1)
    {
      sub_21DBFC42C();
      if (v10)
      {
        break;
      }

      if (v8 == a1 && v9 == a2)
      {

        return [v5 rem:a1 removeHashtagInRange:a2];
      }
    }
  }

  return result;
}

uint64_t sub_21D6C40EC(NSUInteger a1, int64_t a2, unint64_t a3)
{
  v4 = a3;
  v93 = a3;
  v7 = *(v3 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage);
  v8 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  *&v90 = *&v7[v8];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  TTRHashtagTokenTextInteraction.hashtagTokenMenuItem(forSelectedRange:in:hashtagVisibility:)(a1, a2, v7, &v90, &v92);

  v9 = v92;
  if (v92 != 4)
  {
    v10 = sub_21DBFA12C();
    v11 = [objc_opt_self() _systemImageNamed_];

    sub_21D0D8CF0(0, &qword_280D0C1D0);
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        if (qword_280D1BAA8 != -1)
        {
          goto LABEL_90;
        }
      }

      else if (qword_280D1BAA8 != -1)
      {
        goto LABEL_90;
      }
    }

    else if (v9)
    {
      if (qword_280D1BAA8 != -1)
      {
        goto LABEL_90;
      }
    }

    else if (qword_280D1BAA8 != -1)
    {
      goto LABEL_90;
    }

LABEL_12:
    sub_21DBF516C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = v11;
    v13 = sub_21DBFB77C();
    MEMORY[0x223D42D80](v13, v14, v15, v16, v17);
    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    v4 = v93;
  }

  v11 = (v4 >> 62);
  if (v4 >> 62)
  {
    goto LABEL_85;
  }

  v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_17:
    v19 = v4 & 0xC000000000000001;
    v87 = v4;
    v81 = v11;
    v82 = v4 & 0xFFFFFFFFFFFFFF8;
    v20 = 4;
    do
    {
      v4 = v20 - 4;
      if (v19)
      {
        v21 = MEMORY[0x223D44740](v20 - 4, v87);
      }

      else
      {
        if (v4 >= *(v82 + 16))
        {
          goto LABEL_84;
        }

        v21 = *(v87 + 8 * v20);
      }

      v22 = v21;
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v88 = v20 - 4;
        v89 = v20;
        v24 = [v23 identifier];
        v11 = sub_21DBFA16C();
        v26 = v25;
        if (v11 == sub_21DBFA16C() && v26 == v27)
        {

          v4 = v20 - 4;
LABEL_35:
          if (v19)
          {
            v30 = MEMORY[0x223D44740](v4, v87);
            goto LABEL_39;
          }

          if (v4 < *(v82 + 16))
          {
            v30 = *(v87 + 8 * v20);
LABEL_39:
            v31 = v30;
            objc_opt_self();
            v32 = swift_dynamicCastObjCClass();
            if (!v32)
            {

              break;
            }

            v78 = v31;
            v79 = v32;
            v33 = [v32 children];
            sub_21D0D8CF0(0, &qword_27CE5DE90);
            v4 = sub_21DBFA5EC();

            if (qword_280D1BAA8 != -1)
            {
              swift_once();
            }

            sub_21DBF516C();
            sub_21D0D8CF0(0, &qword_27CE60060);
            v90 = 0u;
            v91 = 0u;
            sub_21DBF8E0C();
            v34 = MEMORY[0x277D84F90];
            v35 = sub_21DBFAE7C();
            sub_21DBF516C();
            v90 = 0u;
            v91 = 0u;
            sub_21DBF8E0C();
            v36 = sub_21DBFAE7C();
            v37 = sub_21DBF516C();
            v39 = v38;
            v90 = 0u;
            v91 = 0u;
            sub_21DBF8E0C();
            v73 = 0;
            v74 = 0;
            v71 = v37;
            v72 = v39;
            v70 = v34;
            v11 = sub_21DBFAE7C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_21DC0BFD0;
            *(inited + 32) = v35;
            v85 = inited + 32;
            *(inited + 40) = v36;
            *(inited + 48) = v11;
            *&v90 = v34;
            v80 = inited;
            v83 = inited & 0xFFFFFFFFFFFFFF8;
            v84 = inited & 0xC000000000000001;
            v41 = v4 & 0xFFFFFFFFFFFFFF8;
            v42 = v4 & 0xC000000000000001;
            v77 = v35;
            v76 = v36;
            v75 = v11;
            v46 = 0;
            v47 = v4;
LABEL_45:
            v86 = v46;
            if (v84)
            {
              v48 = MEMORY[0x223D44740](v46, v80, v43, v44, v45);
            }

            else
            {
              if (v46 >= *(v83 + 16))
              {
                goto LABEL_83;
              }

              v48 = *(v85 + 8 * v46);
            }

            v49 = v48;
            if (!(v47 >> 62))
            {
              v50 = *(v41 + 16);
              if (v50)
              {
                goto LABEL_50;
              }

              goto LABEL_43;
            }

            v50 = sub_21DBFBD7C();
            if (!v50)
            {
LABEL_43:
              sub_21DBFBFEC();
              v11 = *(v90 + 16);
              sub_21DBFC03C();
              sub_21DBFC04C();
              sub_21DBFBFFC();
LABEL_44:
              v46 = v86 + 1;
              if (v86 == 2)
              {
                swift_setDeallocating();
                swift_arrayDestroy();
                v57 = v90;
                *&v90 = v47;
                sub_21DBF8E0C();
                if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
                {
                  goto LABEL_88;
                }

                sub_21DBFC65C();
                v58 = v57;
                v60 = v87;
                v59 = v88;
                v61 = v89;
                for (i = v82; ; i = v82)
                {

                  sub_21D562EE8(v58);
                  v63 = sub_21DBFA5DC();

                  v64 = [v79 menuByReplacingChildren_];

                  v65 = v64;
                  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
                  if (v81 || !isUniquelyReferenced_nonNull_bridgeObject)
                  {
                    v67 = sub_21D256E5C(v60);

                    i = v67 & 0xFFFFFFFFFFFFFF8;
                  }

                  else
                  {
                  }

                  if (v59 < *(i + 16))
                  {
                    break;
                  }

                  __break(1u);
LABEL_88:
                  v58 = sub_21DBFC33C();

                  v60 = v87;
                  v59 = v88;
                  v61 = v89;
                }

                v68 = *(i + 8 * v61);
                *(i + 8 * v61) = v65;

                break;
              }

              goto LABEL_45;
            }

LABEL_50:
            v51 = 0;
LABEL_53:
            if (v42)
            {
              v52 = MEMORY[0x223D44740](v51, v47);
            }

            else
            {
              if (v51 >= *(v41 + 16))
              {
                goto LABEL_81;
              }

              v52 = *(v47 + 8 * v51 + 32);
            }

            v53 = v52;
            v4 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              v18 = sub_21DBFBD7C();
              if (!v18)
              {
                break;
              }

              goto LABEL_17;
            }

            objc_opt_self();
            v54 = swift_dynamicCastObjCClass();
            if (!v54)
            {
              goto LABEL_51;
            }

            v55 = [v54 action];
            v56 = [v49 action];
            v11 = v56;
            if (!v55)
            {

              if (!v11)
              {
LABEL_65:

                goto LABEL_44;
              }

              goto LABEL_52;
            }

            if (v56)
            {
              v11 = sub_21DBF5D6C();

              if (v11)
              {
                goto LABEL_65;
              }
            }

            else
            {
LABEL_51:
            }

LABEL_52:
            ++v51;
            if (v4 == v50)
            {
              goto LABEL_43;
            }

            goto LABEL_53;
          }

          __break(1u);
LABEL_90:
          swift_once();
          goto LABEL_12;
        }

        v11 = sub_21DBFC64C();

        v4 = v20 - 4;
        if (v11)
        {
          goto LABEL_35;
        }

        v29 = v20 - 3;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_82;
        }
      }

      else
      {

        v29 = v20 - 3;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_82;
        }
      }

      ++v20;
    }

    while (v29 != v18);
  }

  sub_21D0D8CF0(0, &qword_280D0C1F0);
  return sub_21DBFB58C();
}

id sub_21D6C4DC8(uint64_t a1, uint64_t a2)
{
  result = [v2 delegate];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 selectedRange];
      (*(v7 + 72))(v2, a2, v8, v9, ObjectType, v7);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D6C4EA8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21DBF56BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v21 = v1;
    v26 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v13 = a1 + 32;
    v22 = (v5 + 16);
    v14 = MEMORY[0x277D84F98];
    do
    {
      sub_21DBF56AC();
      (*v22)(v7, v10, v4);
      sub_21D1D9BE4(v13, v25);
      v15 = objc_allocWithZone(type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion());
      TTRIReminderTitleTextViewCustomTextSuggestion.init(textEditingSuggestionUUID:suggestion:)(v7, v25);
      sub_21D1D9BE4(v13, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v14;
      sub_21D4789AC(v25, v10, isUniquelyReferenced_nonNull_native);
      v14 = v24;
      (*(v5 + 8))(v10, v4);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v13 += 192;
      --v11;
    }

    while (v11);
    v12 = v26;
    v2 = v21;
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v17 = &v2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions];
  *v17 = v12;
  *(v17 + 1) = v14;

  if ([v2 inputDelegate])
  {
    v23 = &unk_282F93300;
    v18 = swift_dynamicCastObjCProtocolConditional();
    if (v18)
    {
      v19 = v18;
      if (*v17 >> 62)
      {
        sub_21D0D8CF0(0, &qword_280D0C2B0);
        sub_21DBF8E0C();
        sub_21DBFC33C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_280D0C2B0);
      }

      sub_21D0D8CF0(0, &qword_280D0C2B0);
      v20 = sub_21DBFA5DC();

      [v19 setSuggestions_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_21D6C5220@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState;
  result = swift_beginAccess();
  v5 = *(v3 + 2);
  *a1 = *v3;
  *(a1 + 2) = v5;
  return result;
}

id sub_21D6C5278(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  v9 = v5[2];
  *v5 = v2;
  v5[1] = v3;
  v5[2] = v4;
  if (v2 != v7 || v3 != v8 || v4 != v9)
  {
    v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustInternalTypingAttributes] = 1;
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*sub_21D6C5320(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = v1 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState;
  swift_beginAccess();
  v6 = *(v5 + 2);
  *(v4 + 32) = *v5;
  *(v4 + 34) = v6;
  return sub_21D6C53C0;
}

void sub_21D6C53C0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 33);
  v4 = *(*a1 + 34);
  if (a2)
  {
    v6[0] = *(*a1 + 32);
    v6[1] = v3;
    v6[2] = v4;
    v5 = v6;
  }

  else
  {
    v7[0] = *(*a1 + 32);
    v7[1] = v3;
    v7[2] = v4;
    v5 = v7;
  }

  sub_21D6C5278(v5);

  free(v2);
}

void sub_21D6C543C()
{
  v1 = v0;
  if ([v0 allowsEditingTextAttributes])
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
    swift_beginAccess();
    if ((v1[v2] & 1) == 0)
    {
      v3 = [v1 selectedRange];
      v5 = v4;
      v6 = [v1 attributedText];
      if (v6)
      {
        v7 = v6;
        v8 = [v1 typingAttributes];
        type metadata accessor for Key(0);
        sub_21D6C9CCC(&qword_280D17790, type metadata accessor for Key);
        v9 = sub_21DBF9E6C();

        v10 = &v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState];
        swift_beginAccess();
        v11 = v10[2];
        v13 = *v10;
        v14 = v11;
        TTRReminderTextStorage.typingAttributesFilteringInternalStyles(for:in:currentTypingAttributes:styleTypingAttributeState:)(v3, v5, v7, v9, &v13);

        v12 = sub_21DBF9E5C();

        [v1 setTypingAttributes_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_21D6C5618()
{
  v1 = v0;
  v2 = [v0 selectedRange];
  v4 = v3;
  v5 = [v0 textStorage];
  v6.location = v2;
  v6.length = v4;
  v7 = TTRHashtagTokenTextInteraction.removeTokenAttribute(in:range:)(v5, v6);

  if (v7)
  {
    v8 = [v1 textStorage];
    v9 = [v8 string];

    sub_21DBFA16C();
    sub_21D7C19D4(v2, v4, v21);

    if ((v22 & 1) == 0)
    {
      v10 = v21[2];
      v11 = v21[3];
      v13 = v21[0];
      v12 = v21[1];
      v14 = [v1 beginningOfDocument];
      v20 = [v1 positionFromPosition:v14 offset:v13];

      if (v20)
      {
        v15 = [v1 positionFromPosition:v20 offset:v12];
        if (v15)
        {
          v16 = v15;
          v17 = [v1 textRangeFromPosition:v20 toPosition:v15];

          if (!v17)
          {
            return;
          }

          v18 = sub_21DBFA12C();
          [v1 replaceRange:v17 withText:v18];

          [v1 setSelectedRange_];
          v19 = v17;
        }

        else
        {
          v19 = v20;
        }
      }
    }
  }
}

void sub_21D6C5844()
{
  v1 = v0;
  [v0 deleteBackward];
  v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
  swift_beginAccess();
  if ((*(v1 + v2) & 1) == 0)
  {
    v3 = [v1 selectedRange];
    v5 = v4;
    v6 = [v1 textStorage];
    v7.location = v3;
    v7.length = v5;
    v8 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v7, v6);

    if (v8.location != v3 || v8.length != v5)
    {
      [v1 setSelectedRange_];
    }
  }
}

id sub_21D6C5930()
{
  result = [v0 delegate];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      v4 = v3;
      v5 = [v0 selectedRange];
      v7 = (*(v4 + 32))(v0, v5, v6, ObjectType, v4);
      v9 = v8;
      result = swift_unknownObjectRelease();
      if (v9)
      {
        v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
        v11 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
        swift_beginAccess();
        v12 = *(v10 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        *(inited + 32) = v7;
        *(inited + 40) = v9;
        sub_21DBF8E0C();
        v14 = sub_21D1CDB50(inited);
        swift_setDeallocating();
        sub_21D6C9C70(inited + 32);
        if (v12)
        {
          if (*(v14 + 16) <= *(v12 + 16) >> 3)
          {
            v17 = v12;
            sub_21DBF8E0C();
            sub_21D9F86E8(v14);

            v15 = v12;
          }

          else
          {
            sub_21DBF8E0C();
            v15 = sub_21D9F8D40(v14, v12);
          }
        }

        else
        {

          v15 = 0;
        }

        v16 = *(v10 + v11);
        *(v10 + v11) = v15;
        v17 = v16;
        sub_21D980810(&v17);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void *sub_21D6C5B68(unint64_t a1)
{
  v3 = sub_21DBF9D2C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v96 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v95 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v94 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21DBF9D7C();
  v93 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v91 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v91 - v10;
  v100 = a1 >> 62;
  if (a1 >> 62)
  {
    v11 = sub_21DBFBD7C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = MEMORY[0x277D84F90];
  v98 = v4;
  v99 = v3;
  v97 = v6;
  if (v11)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    v13 = sub_21D18E850(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_69;
    }

    v14 = 0;
    v12 = aBlock[0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D44740](v14, a1);
      }

      else
      {
        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 headerText];
      if (v17)
      {
        v18 = v17;
        v19 = sub_21DBFA16C();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      aBlock[0] = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21D18E850((v22 > 1), v23 + 1, 1);
        v12 = aBlock[0];
      }

      ++v14;
      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v11 != v14);
  }

  v102 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestions;
  v25 = *(v103 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestions);
  if (v25 >> 62)
  {
    v89 = *(v103 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestions);
    v1 = sub_21DBFBD7C();
    v25 = v89;
  }

  else
  {
    v1 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v26 = MEMORY[0x277D84F90];
  v104 = a1;
  if (!v1)
  {
    goto LABEL_30;
  }

  aBlock[0] = MEMORY[0x277D84F90];
  v27 = v25;
  sub_21DBF8E0C();
  v13 = sub_21D18E850(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    v90 = v13;
    v57 = sub_21DBFBD7C();
    v13 = v90;
    goto LABEL_45;
  }

  v28 = 0;
  v26 = aBlock[0];
  v29 = v27;
  v105 = (v27 & 0xC000000000000001);
  v30 = v27;
  do
  {
    if (v105)
    {
      v31 = MEMORY[0x223D44740](v28, v29);
    }

    else
    {
      v31 = *(v29 + 8 * v28 + 32);
    }

    v32 = v31;
    v33 = v1;
    v34 = v11;
    v35 = [v31 headerText];
    if (v35)
    {
      v36 = v35;
      v37 = sub_21DBFA16C();
      v39 = v38;
    }

    else
    {

      v37 = 0;
      v39 = 0;
    }

    aBlock[0] = v26;
    v41 = *(v26 + 16);
    v40 = *(v26 + 24);
    if (v41 >= v40 >> 1)
    {
      sub_21D18E850((v40 > 1), v41 + 1, 1);
      v26 = aBlock[0];
    }

    ++v28;
    *(v26 + 16) = v41 + 1;
    v42 = v26 + 16 * v41;
    *(v42 + 32) = v37;
    *(v42 + 40) = v39;
    v1 = v33;
    v11 = v34;
    v29 = v30;
  }

  while (v33 != v28);

  a1 = v104;
LABEL_30:
  v43 = sub_21D1D7BA0(v12, v26);

  if ((v43 & 1) == 0)
  {
    goto LABEL_60;
  }

  v12 = MEMORY[0x277D84F90];
  v1 = &selRef_setDisplayText_;
  if (v11)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    result = sub_21D18E850(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
      goto LABEL_72;
    }

    v45 = 0;
    v12 = aBlock[0];
    v46 = a1 & 0xC000000000000001;
    do
    {
      if (v46)
      {
        v47 = MEMORY[0x223D44740](v45, v104);
      }

      else
      {
        v47 = *(v104 + 8 * v45 + 32);
      }

      v48 = v47;
      v49 = [v47 displayText];
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

      aBlock[0] = v12;
      v55 = *(v12 + 16);
      v54 = *(v12 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_21D18E850((v54 > 1), v55 + 1, 1);
        v12 = aBlock[0];
      }

      ++v45;
      *(v12 + 16) = v55 + 1;
      v56 = v12 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v53;
    }

    while (v11 != v45);
  }

  v13 = *(v103 + v102);
  if (v13 >> 62)
  {
    goto LABEL_70;
  }

  v57 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  v58 = MEMORY[0x277D84F90];
  if (!v57)
  {
    goto LABEL_58;
  }

  aBlock[0] = MEMORY[0x277D84F90];
  v59 = v13;
  sub_21DBF8E0C();
  result = sub_21D18E850(0, v57 & ~(v57 >> 63), 0);
  if ((v57 & 0x8000000000000000) == 0)
  {
    v60 = 0;
    v58 = aBlock[0];
    v61 = v59;
    v105 = (v59 & 0xC000000000000001);
    v62 = v59;
    do
    {
      if (v105)
      {
        v63 = MEMORY[0x223D44740](v60, v61);
      }

      else
      {
        v63 = *(v61 + 8 * v60 + 32);
      }

      v64 = v63;
      v65 = v1;
      v66 = [v63 *(v1 + 704)];
      if (v66)
      {
        v67 = v66;
        v68 = sub_21DBFA16C();
        v70 = v69;
      }

      else
      {

        v68 = 0;
        v70 = 0;
      }

      aBlock[0] = v58;
      v72 = *(v58 + 16);
      v71 = *(v58 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_21D18E850((v71 > 1), v72 + 1, 1);
        v58 = aBlock[0];
      }

      ++v60;
      *(v58 + 16) = v72 + 1;
      v73 = v58 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      v1 = v65;
      v61 = v62;
    }

    while (v57 != v60);

LABEL_58:
    v74 = sub_21D1D7BA0(v12, v58);

    a1 = v104;
    if (v74)
    {
      *(v103 + v102) = v104;
LABEL_65:

      return sub_21DBF8E0C();
    }

LABEL_60:
    if (v100)
    {
      if (sub_21DBFBD7C())
      {
        goto LABEL_62;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_62:
      sub_21D0D8CF0(0, &qword_280D1B900);
      v75 = sub_21DBFB12C();
      v76 = v91;
      sub_21DBF9D6C();
      v77 = v92;
      sub_21DBF9D9C();
      v105 = *(v93 + 8);
      v105(v76, v101);
      v78 = swift_allocObject();
      v79 = v103;
      swift_unknownObjectWeakInit();
      v80 = swift_allocObject();
      *(v80 + 16) = v78;
      *(v80 + 24) = a1;
      aBlock[4] = sub_21D6C9D14;
      aBlock[5] = v80;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_58_0;
      v81 = _Block_copy(aBlock);
      sub_21DBF8E0C();

      v82 = v94;
      sub_21DBF9D4C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21D6C9CCC(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0CD8F0();
      v83 = v96;
      v84 = v99;
      sub_21DBFBCBC();
      MEMORY[0x223D43880](v77, v82, v83, v81);
      v85 = v81;
      v86 = v104;
      _Block_release(v85);

      (*(v98 + 8))(v83, v84);
      (*(v95 + 8))(v82, v97);
      v105(v77, v101);
      *(v79 + v102) = v86;
      goto LABEL_65;
    }

    v87 = v103;
    v88 = (v103 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestionType);
    *v88 = 0;
    v88[1] = 0;

    *(v87 + v102) = a1;
    goto LABEL_65;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t sub_21D6C6504()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5FFE0);
  v1 = __swift_project_value_buffer(v0, qword_27CE5FFE0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_21D6C65D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 delegate];
  v4 = result;
  if (result)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      swift_unknownObjectRelease();
      v4 = 0;
      result = 0;
    }
  }

  *a2 = v4;
  a2[1] = result;
  return result;
}

void *sub_21D6C6658@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(*result + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport);
  if (v3)
  {
    v4 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528);
    result = (*(*(v5 - 8) + 48))(v3 + v4, 1, v5);
    v6 = result == 0;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

id TTRIReminderTitleTextView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_21D6C6784()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();

    [v1 deleteBackward];
    v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
    swift_beginAccess();
    if ((*(v1 + v2) & 1) == 0)
    {
      v3 = [v1 selectedRange];
      v5 = v4;
      v6 = [v1 textStorage];
      v7.location = v3;
      v7.length = v5;
      v8 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v7, v6);

      if (v8.location != v3 || v8.length != v5)
      {
        [v1 setSelectedRange_];
      }
    }
  }
}

uint64_t sub_21D6C68B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for TTRIReminderTitleTextView();
    }

    else
    {
      v8[1] = 0;
      v8[2] = 0;
    }

    v8[0] = v7;
    v8[3] = Strong;
    a3();

    return sub_21D0CF7E0(v8, &qword_27CE5C690);
  }

  return result;
}

uint64_t sub_21D6C696C()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = Strong;
    if (Strong)
    {
      Strong = type metadata accessor for TTRIReminderTitleTextView();
    }

    else
    {
      v9[1] = 0;
      v9[2] = 0;
    }

    v9[0] = v3;
    v9[3] = Strong;
    if ([v1 delegate])
    {
      ObjectType = swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      if (v5)
      {
        v6 = v5;
        v7 = [v1 selectedRange];
        (*(v6 + 40))(v1, v7, v8, ObjectType, v6);
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return sub_21D0CF7E0(v9, &qword_27CE5C690);
  }

  return result;
}

uint64_t sub_21D6C6ABC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v7 = a1;
  }

  if ([a1 delegate])
  {
    ObjectType = swift_getObjectType();
    v9 = swift_conformsToProtocol2();
    if (v9)
    {
      v10 = v9;
      v11 = [a1 selectedRange];
      (*(v10 + 72))(a1, a4, v11, v12, ObjectType, v10);
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return sub_21D0CF7E0(&v14, &qword_27CE5C690);
}

uint64_t sub_21D6C6CB4()
{
  v1 = sub_21DBF9D2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D8CF0(0, &qword_280D1B900);
  v9 = sub_21DBFB12C();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_21D6C9CC4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_79;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D6C9CCC(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0CD8F0();
  sub_21DBFBCBC();
  MEMORY[0x223D438F0](0, v8, v4, v11);
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_21D6C6F78(char *a1)
{
  if ([a1 inputDelegate])
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2)
    {
      v3 = v2;
      if (*&a1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions] >> 62)
      {
        sub_21D0D8CF0(0, &qword_280D0C2B0);
        sub_21DBF8E0C();
        sub_21DBFC33C();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        sub_21DBFC65C();
        sub_21D0D8CF0(0, &qword_280D0C2B0);
      }

      sub_21D0D8CF0(0, &qword_280D0C2B0);
      v4 = sub_21DBFA5DC();

      [v3 setSuggestions_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_21D6C71A8(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions + 8];
  type metadata accessor for TTRIReminderTitleTextViewCustomTextSuggestion();
  v4 = swift_dynamicCastClass();
  if (v4 && *(v3 + 16))
  {
    v5 = v4;
    v6 = v1;
    v7 = OBJC_IVAR___TTRIReminderTitleTextViewCustomTextSuggestion_textEditingSuggestionUUID;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v8 = a1;
    v9 = sub_21D0F55D0(v5 + v7);
    if (v10)
    {
      sub_21D1D9BE4(*(v3 + 56) + 192 * v9, &v20);

      if (*(&v21 + 1))
      {
        v32[8] = v28;
        v32[9] = v29;
        v32[10] = v30;
        v32[11] = v31;
        v32[4] = v24;
        v32[5] = v25;
        v32[6] = v26;
        v32[7] = v27;
        v32[0] = v20;
        v32[1] = v21;
        v32[2] = v22;
        v32[3] = v23;
        if ([v6 delegate])
        {
          ObjectType = swift_getObjectType();
          v12 = swift_conformsToProtocol2();
          if (v12)
          {
            (*(v12 + 8))(v6, v32, ObjectType, v12);
          }

          swift_unknownObjectRelease();
        }

        sub_21D1D9C40(v32);
        return;
      }
    }

    else
    {

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
    }
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
  }

  sub_21D0CF7E0(&v20, &qword_27CE60068);
  if (qword_27CE56BA8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  __swift_project_value_buffer(v13, qword_27CE5FFE0);
  v14 = a1;
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAEBC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v14;
    *v18 = a1;
    v19 = v14;
    _os_log_impl(&dword_21D0C9000, v15, v16, "TTRIReminderTitleTextView: failed to lookup textEditingSuggestion {textSuggestion: %@}", v17, 0xCu);
    sub_21D0CF7E0(v18, &unk_27CE60070);
    MEMORY[0x223D46520](v18, -1, -1);
    MEMORY[0x223D46520](v17, -1, -1);
  }
}

void sub_21D6C751C(uint64_t a1)
{
  v2 = v1;
  if (![v1 delegate])
  {
LABEL_7:
    sub_21D0DB414(a1, v22);
    v13 = v23;
    if (v23)
    {
      v14 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v15 = *(v13 - 8);
      v16 = MEMORY[0x28223BE20](v14);
      v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = sub_21DBFC62C();
      (*(v15 + 8))(v18, v13);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for TTRIReminderTitleTextView();
    v21.receiver = v2;
    v21.super_class = v20;
    objc_msgSendSuper2(&v21, sel_copy_, v19);
    swift_unknownObjectRelease();
    return;
  }

  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v1 attributedText];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  ObjectType = swift_getObjectType();
  v9 = [v1 selectedRange];
  v11 = [v7 attributedSubstringFromRange_];

  v12 = (*(v5 + 16))(v1, a1, v11, ObjectType, v5);
  swift_unknownObjectRelease();

  if ((v12 & 1) == 0)
  {
    goto LABEL_7;
  }
}

uint64_t sub_21D6C777C(uint64_t a1)
{
  v2 = v1;
  if ([v1 delegate])
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v5;
      v7 = [v1 selectedRange];
      v9 = (*(v6 + 24))(v1, a1, v7, v8, ObjectType, v6);
      result = swift_unknownObjectRelease();
      if (v9)
      {
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_21D0DB414(a1, v20);
  v11 = v21;
  if (v21)
  {
    v12 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x28223BE20](v12);
    v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_21DBFC62C();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for TTRIReminderTitleTextView();
  v19.receiver = v2;
  v19.super_class = v18;
  objc_msgSendSuper2(&v19, sel_paste_, v17);
  return swift_unknownObjectRelease();
}

uint64_t sub_21D6C7980(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_21D0CF7E0(v9, &qword_27CE5C690);
}

id sub_21D6C7D64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v2 selectedRange];
  v8 = v7;
  v9 = *&v2[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage];
  v10 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_hashtagVisibility;
  swift_beginAccess();
  v44[0] = *&v9[v10];
  sub_21DBF8E0C();
  TTRHashtagTokenTextInteraction.hashtagTokenMenuItem(forSelectedRange:in:hashtagVisibility:)(v6, v8, v9, v44, &v46);

  v11 = v46;
  if (sub_21DBF5D6C() & 1) != 0 || (sub_21DBF5D6C() & 1) != 0 || (sub_21DBF5D6C())
  {
    return [v2 allowsEditingTextAttributes];
  }

  if ((sub_21DBF5D6C() & 1) == 0 && (sub_21DBF5D6C() & 1) == 0 && (sub_21DBF5D6C() & 1) == 0)
  {
    if (sub_21DBF5D6C() & 1) != 0 || (sub_21DBF5D6C() & 1) != 0 || (sub_21DBF5D6C())
    {
      sub_21D0DB414(a2, v44);
      v13 = v45;
      if (v45)
      {
        v14 = __swift_project_boxed_opaque_existential_1(v44, v45);
        v15 = *(v13 - 8);
        v16 = MEMORY[0x28223BE20](v14);
        v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v15 + 16))(v18, v16);
        v19 = sub_21DBFC62C();
        (*(v15 + 8))(v18, v13);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        v19 = 0;
      }

      v20 = type metadata accessor for TTRIReminderTitleTextView();
      v21 = objc_msgSendSuper2(&v41, sel_canPerformAction_withSender_, a1, v19, v3, v20, v42.receiver, v42.super_class, v43.receiver, v43.super_class, v44[0]);
LABEL_19:
      v22 = v21;
      swift_unknownObjectRelease();
      return v22;
    }

    if (sub_21DBF5D6C())
    {
      v23 = [objc_opt_self() generalPasteboard];
      v24 = [v23 hasImages];

      if (!v24 || v11 != 4)
      {
        sub_21D0DB414(a2, v44);
        v25 = v45;
        if (v45)
        {
          v26 = __swift_project_boxed_opaque_existential_1(v44, v45);
          v27 = *(v25 - 8);
          v28 = MEMORY[0x28223BE20](v26);
          v30 = &v41 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v27 + 16))(v30, v28);
          v31 = sub_21DBFC62C();
          (*(v27 + 8))(v30, v25);
          __swift_destroy_boxed_opaque_existential_0(v44);
        }

        else
        {
          v31 = 0;
        }

        v39 = type metadata accessor for TTRIReminderTitleTextView();
        v21 = objc_msgSendSuper2(&v42, sel_canPerformAction_withSender_, a1, v31, v41.receiver, v41.super_class, v3, v39, v43.receiver, v43.super_class, v44[0]);
        goto LABEL_19;
      }
    }

    else if (v11 == 4)
    {
      sub_21D0DB414(a2, v44);
      v32 = v45;
      if (v45)
      {
        v33 = __swift_project_boxed_opaque_existential_1(v44, v45);
        v34 = *(v32 - 8);
        v35 = MEMORY[0x28223BE20](v33);
        v37 = &v41 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v37, v35);
        v38 = sub_21DBFC62C();
        (*(v34 + 8))(v37, v32);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        v38 = 0;
      }

      v40 = type metadata accessor for TTRIReminderTitleTextView();
      v21 = objc_msgSendSuper2(&v43, sel_canPerformAction_withSender_, a1, v38, v41.receiver, v41.super_class, v42.receiver, v42.super_class, v3, v40, v44[0]);
      goto LABEL_19;
    }

    return 0;
  }

  LODWORD(result) = [v2 allowsEditingTextAttributes];
  if (v11 == 4)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21D6C8338(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for TTRIReminderTitleTextView();
  objc_msgSendSuper2(&v4, sel_validateCommand_, a1);
  [a1 action];
  if (sub_21DBF5D6C() & 1) != 0 || (sub_21DBF5D6C() & 1) != 0 || (result = sub_21DBF5D6C(), (result))
  {
    result = [v1 allowsEditingTextAttributes];
    if (result)
    {
      return [a1 setAttributes_];
    }
  }

  return result;
}

void sub_21D6C85A0()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustSelectionToSelectToken] == 1)
  {
    v0[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustSelectionToSelectToken] = 0;
    v2 = OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection;
    swift_beginAccess();
    if ((v1[v2] & 1) == 0)
    {
      v3 = [v1 selectedRange];
      v5 = v4;
      v6 = [v1 textStorage];
      v7.location = v3;
      v7.length = v5;
      v8 = TTRHashtagTokenTextInteraction.adjustSelection(_:in:)(v7, v6);

      if (v8.location != v3 || v8.length != v5)
      {
        [v1 setSelectedRange_];
      }
    }
  }

  if (v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustInternalTypingAttributes] == 1)
  {
    v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustInternalTypingAttributes] = 0;
    sub_21D6C543C();
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for TTRIReminderTitleTextView();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
  v10 = *&v1[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport];
  if (v10)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *&v10[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView];
      if (v13)
      {
        v14 = v10;
        v15 = v13;
        [v12 bounds];
        [v15 setFrame_];

        v12 = v14;
      }
    }
  }
}

void sub_21D6C8A24(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_reminderTextStorage);

    v5 = OBJC_IVAR____TtC15RemindersUICore22TTRReminderTextStorage_showsAsTransparent;
    swift_beginAccess();
    v6 = v4[v5];
    v4[v5] = (a1 & 1) == 0;
    if (v6 == (a1 & 1))
    {
      v7 = [v4 string];
      v8 = sub_21DBFA16C();
      v10 = v9;

      v11 = MEMORY[0x223D42B30](v8, v10);

      [v4 edited:1 range:0 changeInLength:{v11, 0}];
    }
  }
}

uint64_t sub_21D6C8B70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_21D0CF7E0(v9, &qword_27CE5C690);
}

void sub_21D6C8D2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (a2 >> 62)
    {
      if (a2 < 0)
      {
        v2 = a2;
      }

      else
      {
        v2 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_21DBFBD7C() != 1 || !sub_21DBFBD7C())
      {
        goto LABEL_21;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
    {
      goto LABEL_21;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x223D44740](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_28;
      }

      v7 = *(a2 + 32);
    }

    v8 = v7;
    v9 = [v7 headerText];

    if (v9)
    {
      a2 = sub_21DBFA16C();
      v2 = v10;

      v3 = &v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestionType];
      v11 = *&v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestionType + 8];
      if (v11 && (*v3 == a2 && v11 == v2 || (sub_21DBFC64C() & 1) != 0))
      {
        v12 = qword_280D16838;
        sub_21DBF8E0C();
        if (v12 == -1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v13 = qword_280D16820;
        sub_21DBF8E0C();
        if (v13 == -1)
        {
LABEL_15:
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
          v14 = swift_allocObject();
          *(v14 + 16) = xmmword_21DC08D00;
          *(v14 + 56) = MEMORY[0x277D837D0];
          *(v14 + 64) = sub_21D17A884();
          *(v14 + 32) = a2;
          *(v14 + 40) = v2;
          sub_21DBFA13C();

          *v3 = a2;
          v3[1] = v2;

LABEL_24:
          v16 = *MEMORY[0x277D76438];
          v17 = sub_21DBFA12C();

          UIAccessibilityPostNotification(v16, v17);

          return;
        }
      }

LABEL_28:
      swift_once();
      goto LABEL_15;
    }

LABEL_21:
    v15 = &v6[OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestionType];
    *v15 = 0;
    *(v15 + 1) = 0;

    if (qword_27CE573B0 != -1)
    {
      swift_once();
    }

    sub_21DBF8E0C();
    goto LABEL_24;
  }
}

uint64_t sub_21D6C901C()
{
}

id TTRIReminderTitleTextView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderTitleTextView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s15RemindersUICore25TTRIReminderTitleTextViewC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_isChangingSelection) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_animationSupport) = 0;
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_suggestions);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21D177598(MEMORY[0x277D84F90]);
  *v1 = v2;
  v1[1] = v3;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestions) = v2;
  v4 = (v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_ttrAccessibilityPreviousTextSuggestionType);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_firstCharNeedsCapitalization) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustSelectionToSelectToken) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_needsAdjustInternalTypingAttributes) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_wantsCapitalizeNextCharacter) = 0;
  v5 = v0 + OBJC_IVAR____TtC15RemindersUICore25TTRIReminderTitleTextView_styleTypingAttributeState;
  *v5 = 514;
  *(v5 + 2) = 2;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t sub_21D6C9CCC(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall TTRIRemindersListReminderCellAccessibilityElementContaining.ttriCreateReminderAccessibilityElement()()
{
  v3 = v1;
  v4 = v0;
  v5 = objc_allocWithZone(type metadata accessor for TTRIRemindersListReminderCellAccessibilityElement());
  v6 = v2;
  v7 = [v5 initWithAccessibilityContainer_];

  swift_unknownObjectRelease();
  (*(v3 + 16))(v7, v4, v3);
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter()
{
  sub_21D6CA954(v23);
  v1 = v23[0];

  if ((v1 & 0x80000000) == 0)
  {
    sub_21D6CA954(v20 + 1);
    v2 = BYTE1(v20[0]);

    return sub_21D6CAEA4((v2 < 0x40) & (v2 ^ 1));
  }

  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = (*(v5 + 88))(ObjectType, v5);
    }

    else
    {
      v6 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  if ([v0 accessibilityContainer])
  {
    v7 = swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = (*(v8 + 80))(v7, v8);
      v11 = v10;
      swift_unknownObjectRelease();
      goto LABEL_14;
    }

    swift_unknownObjectRelease();
  }

  v9 = 0;
  v11 = 0;
LABEL_14:
  if (![v0 accessibilityContainer])
  {
LABEL_20:
    v16 = 2;
    goto LABEL_21;
  }

  v12 = swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (!v13)
  {
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  (*(v13 + 32))(v20 + 1, v12, v13);
  swift_unknownObjectRelease();
  v14 = v21;
  if (!v21)
  {
    sub_21D0CF7E0(v20 + 1, &unk_27CE5FAE0);
    goto LABEL_20;
  }

  v15 = v22;
  __swift_project_boxed_opaque_existential_1((v20 + 1), v21);
  (*(v15 + 320))(v20, v14, v15);
  v16 = v20[0];
  __swift_destroy_boxed_opaque_existential_0(v20 + 1);
LABEL_21:
  BYTE1(v20[0]) = v16;
  _s15RemindersUICore15TTRAccesibilityO0A4ListO5LabelO015placeholderCellE009isGroceryD011sectionName0J4TypeSSSb_SSSgAC013SectionHeaderL0OSgtFZ_0(v6 & 1, v9, v11, v20 + 1);

  v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v18 = sub_21DBFA12C();

  v19 = [v17 initWithString_];

  return v19;
}

id TTRIRemindersListReminderCellAccessibilityElementContaining.moveToSuggestedSectionAccessibilityAction(viewModel:image:mainHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 288))(&v22, v8, v9);
  v10 = v23;
  if (v23 < 2)
  {
    return 0;
  }

  v12 = v25;
  if (v25)
  {
    v13 = v24;

    v10 = v12;
  }

  else
  {
    v13 = v22;
  }

  if (qword_27CE57390 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC08D00;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_21D17A884();
  *(v14 + 32) = v13;
  *(v14 + 40) = v10;
  sub_21DBF8E0C();
  sub_21DBFA13C();

  sub_21D0D32E4(a1, v21);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  sub_21D0D0FD0(v21, (v15 + 4));
  v15[9] = v13;
  v15[10] = v10;
  v16 = objc_allocWithZone(MEMORY[0x277D75088]);

  v17 = sub_21DBFA12C();

  aBlock[4] = sub_21D6393D8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D1A62AC;
  aBlock[3] = &block_descriptor_80;
  v18 = _Block_copy(aBlock);
  v19 = [v16 initWithName:v17 image:a2 actionHandler:v18];

  _Block_release(v18);

  return v19;
}

id TTRIRemindersListReminderCellAccessibilityElement.__allocating_init(accessibilityContainer:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [v3 initWithAccessibilityContainer_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v4;
}

uint64_t sub_21D6CA3AC(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v8 = sub_21DBF9D2C();
  v48 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF9D5C();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_21DBF9D7C();
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v20 = a2(v17);
  if (v20)
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
    v22 = a4[3];
    v21 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v22);
    v23 = (*(v21 + 32))(v22, v21);
    if (v23)
    {
      v42 = v8;
      v24 = v23;
      v25 = [v23 string];

      v41 = sub_21DBFA16C();
      v27 = v26;

      if (qword_27CE57498 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_21DC08D20;
      v29 = MEMORY[0x277D837D0];
      *(v28 + 56) = MEMORY[0x277D837D0];
      v30 = sub_21D17A884();
      *(v28 + 32) = v41;
      *(v28 + 40) = v27;
      *(v28 + 96) = v29;
      *(v28 + 104) = v30;
      v31 = v43;
      *(v28 + 64) = v30;
      *(v28 + 72) = v31;
      *(v28 + 80) = v44;
      sub_21DBF8E0C();
      v32 = sub_21DBFA13C();
      v34 = v33;

      sub_21D0D8CF0(0, &qword_280D1B900);
      v44 = sub_21DBFB12C();
      sub_21DBF9D6C();
      sub_21DBF9D9C();
      v45 = *(v45 + 8);
      (v45)(v15, v49);
      v35 = swift_allocObject();
      *(v35 + 16) = v32;
      *(v35 + 24) = v34;
      aBlock[4] = sub_21D539A88;
      aBlock[5] = v35;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_21D0D74FC;
      aBlock[3] = &block_descriptor_9_1;
      v36 = _Block_copy(aBlock);

      sub_21DBF9D4C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_21D0F1D88(&qword_280D1B920, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
      sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
      v37 = v42;
      sub_21DBFBCBC();
      v38 = v44;
      MEMORY[0x223D43880](v19, v13, v10, v36);
      _Block_release(v36);

      (*(v48 + 8))(v10, v37);
      (*(v46 + 8))(v13, v47);
      (v45)(v19, v49);
    }
  }

  return v20 & 1;
}

id TTRIRemindersListReminderCellAccessibilityElement.cell.getter()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    v2 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v2;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21D6CA954@<X0>(uint64_t a1@<X8>)
{
  if ([v1 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v4 = swift_conformsToProtocol2();
    if (v4)
    {
      (*(v4 + 32))(v23, ObjectType, v4);
      swift_unknownObjectRelease();
      v5 = v24;
      if (v24)
      {
        v6 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v6 + 16))(v20, v5, v6);
        v7 = v20[0];
        v8 = BYTE1(v20[0]);
        LOBYTE(v6) = BYTE2(v20[0]);
        v9 = v20[1];
        v10 = v20[2];
        v11 = v21;
        v12 = v22;
        result = __swift_destroy_boxed_opaque_existential_0(v23);
        *a1 = v7;
        *(a1 + 1) = v8;
        *(a1 + 2) = v6;
        *(a1 + 8) = v9;
        *(a1 + 16) = v10;
        *(a1 + 24) = v11;
        *(a1 + 25) = v12;
        return result;
      }

      sub_21D0CF7E0(v23, &unk_27CE5FAE0);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_280D15938 != -1)
  {
    swift_once();
  }

  v14 = HIBYTE(word_280D15940);
  v15 = byte_280D15942;
  v17 = qword_280D15948;
  v16 = qword_280D15950;
  v18 = word_280D15958;
  v19 = HIBYTE(word_280D15958);
  *a1 = word_280D15940;
  *(a1 + 1) = v14;
  *(a1 + 2) = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v16;
  *(a1 + 24) = v18;
  *(a1 + 25) = v19;
  return sub_21DBF8E0C();
}

uint64_t sub_21D6CAB08()
{
  v1 = [v0 accessibilityContainer];
  v2 = MEMORY[0x277D84FA0];
  if (!v1)
  {
    return v2;
  }

  ObjectType = swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (!v4)
  {
    swift_unknownObjectRelease();
    return v2;
  }

  (*(v4 + 32))(&v26, ObjectType, v4);
  if (!v27)
  {
    swift_unknownObjectRelease();
    sub_21D0CF7E0(&v26, &unk_27CE5FAE0);
    return v2;
  }

  sub_21D0D0FD0(&v26, v28);
  *&v26 = v2;
  v5 = v29;
  v6 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if ((*(v6 + 40))(v5, v6))
  {
    sub_21D29D4CC(&v25, 0);
  }

  v7 = v29;
  v8 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if ((*(v8 + 184))(v7, v8))
  {
    v9 = v29;
    v10 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v10 + 176))(&v25, v9, v10);
    if (v25 != 2 && (v25 & 1) != 0)
    {
      sub_21D29D4CC(&v24, 2);
    }
  }

  v11 = v29;
  v12 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v13 = (*(v12 + 192))(v11, v12);
  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = 4;
      goto LABEL_25;
    }

    if (v13 == 3)
    {
      v14 = 5;
      goto LABEL_25;
    }

LABEL_19:
    if (qword_280D1B930 != -1)
    {
      swift_once();
    }

    v15 = sub_21DBF84BC();
    __swift_project_value_buffer(v15, qword_280D21CC8);
    v16 = sub_21DBF84AC();
    v17 = sub_21DBFAEBC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21D0C9000, v16, v17, "unknown priority level", v18, 2u);
      MEMORY[0x223D46520](v18, -1, -1);
    }

    goto LABEL_26;
  }

  if (!v13)
  {
    goto LABEL_26;
  }

  if (v13 != 1)
  {
    goto LABEL_19;
  }

  v14 = 3;
LABEL_25:
  sub_21D29D4CC(&v25, v14);
LABEL_26:
  v19 = v29;
  v20 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  (*(v20 + 136))(&v25, v19, v20);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    sub_21D29D4CC(&v25, 6);
  }

  v21 = v29;
  v22 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if ((*(v22 + 72))(v21, v22))
  {
    sub_21D29D4CC(&v25, 7);
  }

  swift_unknownObjectRelease();
  v2 = v26;
  __swift_destroy_boxed_opaque_existential_0(v28);
  return v2;
}

id sub_21D6CAEA4(char a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v5 = sub_21DBFA12C();
  v6 = [v4 initWithString_];

  v7 = sub_21D6CAB08();
  if (sub_21D22D5B8(6, v7))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF516C();
    sub_21D6CB938(v8, v9, 0, v6, v2);
  }

  v10 = sub_21D6CBB8C();
  sub_21D6CB938(v10, v11, 0, v6, v2);

  if (a1)
  {
    if (sub_21D22D5B8(0, v7))
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_10:
      v12 = sub_21DBF516C();
      sub_21D6CB938(v12, v13, 1, v6, v2);

      goto LABEL_11;
    }

    swift_once();
    goto LABEL_10;
  }

LABEL_11:
  v14 = sub_21D6CBD1C();
  sub_21D6CB938(v14, v15, 0, v6, v2);

  v16 = &selRef_setDisplayText_;
  if ([v2 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v18 = swift_conformsToProtocol2();
    if (v18)
    {
      (*(v18 + 32))(v69, ObjectType, v18);
      swift_unknownObjectRelease();
      v19 = v70;
      if (v70)
      {
        v20 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v21 = *(v20 + 232);
        v22 = v20;
        v16 = &selRef_setDisplayText_;
        v21(v67, v19, v22);
        v24 = v67[0];
        v23 = v67[1];
        v25 = v68;
        __swift_destroy_boxed_opaque_existential_0(v69);
        if (v23)
        {
          if (v25)
          {
            if (qword_280D1BAA8 != -1)
            {
              swift_once();
            }

            sub_21DBF516C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
            v26 = swift_allocObject();
            *(v26 + 16) = xmmword_21DC08D00;
            *(v26 + 56) = MEMORY[0x277D837D0];
            *(v26 + 64) = sub_21D17A884();
            *(v26 + 32) = v24;
            *(v26 + 40) = v23;
            v27 = sub_21DBFA17C();
            v29 = v28;

            sub_21D6CB938(v27, v29, 0, v6, v2);

            v16 = &selRef_setDisplayText_;
          }

          else
          {
          }
        }
      }

      else
      {
        sub_21D0CF7E0(v69, &unk_27CE5FAE0);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v30 = sub_21D6CC27C();
  sub_21D6CB938(v30, v31, 0, v6, v2);

  v32 = sub_21D6CC574();
  sub_21D6CB938(v32, v33, 0, v6, v2);

  if (sub_21D22D5B8(7, v7))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v34 = sub_21DBF516C();
    sub_21D6CB938(v34, v35, 1, v6, v2);
  }

  v36 = sub_21D6CC68C();
  sub_21D6CB938(v36, v37, 0, v6, v2);

  v38 = sub_21D6CC7E0();
  sub_21D6CB938(v38, v39, 0, v6, v2);

  v40 = sub_21D6CC92C();
  sub_21D6CB938(v40, v41, 1, v6, v2);

  v42 = sub_21D6CCD74();
  sub_21D6CB938(v42, v43, 1, v6, v2);

  v44 = sub_21D6CCF50();
  sub_21D6CB938(v44, v45, 0, v6, v2);

  if (sub_21D22D5B8(2, v7))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v46 = sub_21DBF516C();
    sub_21D6CB938(v46, v47, 0, v6, v2);
  }

  if (sub_21D22D5B8(3, v7))
  {

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (sub_21D22D5B8(4, v7))
  {

    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  v48 = sub_21D22D5B8(5, v7);

  if ((v48 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_50:
    swift_once();
  }

LABEL_38:
  v49 = sub_21DBF516C();
  sub_21D6CB938(v49, v50, 0, v6, v2);

LABEL_39:
  v51 = sub_21D6CD25C();
  sub_21D6CB938(v51, v52, 1, v6, v2);

  v53 = sub_21D6CD5A8();
  sub_21D6CB938(v53, v54, 0, v6, v2);

  v55 = sub_21D6CD74C();
  sub_21D6CB938(v55, v56, 0, v6, v2);

  if ([v2 v16[89]])
  {
    v57 = swift_getObjectType();
    v58 = swift_conformsToProtocol2();
    if (v58)
    {
      (*(v58 + 32))(v69, v57, v58);
      swift_unknownObjectRelease();
      v59 = v70;
      if (v70)
      {
        v60 = v71;
        __swift_project_boxed_opaque_existential_1(v69, v70);
        v61 = (*(v60 + 56))(v59, v60);
        v63 = v62;
        __swift_destroy_boxed_opaque_existential_0(v69);
        if (v63)
        {
          sub_21D6CB938(v61, v63, 0, v6, v2);
        }
      }

      else
      {
        sub_21D0CF7E0(v69, &unk_27CE5FAE0);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v64 = sub_21D6CD988();
  sub_21D6CB938(v64, v65, 0, v6, v2);

  return v6;
}

void sub_21D6CB938(uint64_t a1, unint64_t a2, char a3, id a4, uint64_t a5)
{
  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v9 = [a4 string];
      v10 = sub_21DBFA16C();
      v12 = v11;

      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        [a4 appendAttributedString_];
      }

      if (a3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        if (qword_280D177A8 != -1)
        {
          swift_once();
        }

        v15 = qword_280D177B0;
        *(inited + 32) = qword_280D177B0;
        *(inited + 64) = MEMORY[0x277D839B0];
        *(inited + 40) = 1;
        v16 = v15;
        sub_21D11274C(inited);
        swift_setDeallocating();
        sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0);
      }

      else
      {
        sub_21D11274C(MEMORY[0x277D84F90]);
      }

      v17 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v18 = sub_21DBFA12C();
      type metadata accessor for Key(0);
      sub_21D0F1D88(&qword_280D17790, type metadata accessor for Key);
      v19 = sub_21DBF9E5C();

      v20 = [v17 initWithString:v18 attributes:v19];

      [a4 appendAttributedString_];
    }
  }
}

uint64_t sub_21D6CBB8C()
{
  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 32))(v10, ObjectType, v2);
      swift_unknownObjectRelease();
      v3 = v11;
      if (v11)
      {
        v4 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v5 = (*(v4 + 32))(v3, v4);
        if (v5)
        {
          v6 = v5;
          v7 = [v5 string];

          v8 = sub_21DBFA16C();
          __swift_destroy_boxed_opaque_existential_0(v10);
          return v8;
        }

        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        sub_21D0CF7E0(v10, &unk_27CE5FAE0);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if (qword_280D1AA28 != -1)
  {
    swift_once();
  }

  v8 = qword_280D1AA30;
  sub_21DBF8E0C();
  return v8;
}

uint64_t sub_21D6CBD1C()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v111, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v112;
  if (!v112)
  {
    v14 = &unk_27CE5FAE0;
    v15 = v111;
LABEL_12:
    sub_21D0CF7E0(v15, v14);
    return 0;
  }

  v4 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  (*(v4 + 264))(&v81, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v111);
  v108 = v93;
  v109 = v94;
  v110 = v95;
  v104 = v89;
  v105 = v90;
  v107 = v92;
  v106 = v91;
  v100 = v85;
  v101 = v86;
  v103 = v88;
  v102 = v87;
  v96 = v81;
  v97 = v82;
  v99 = v84;
  v98 = v83;
  if (sub_21D4B9498(&v96) == 1)
  {
    return 0;
  }

  if ((v110 & 2) == 0)
  {
    v69 = v106;
    v70 = v107;
    v71 = v108;
    v72 = v109;
    v65 = v102;
    v66 = v103;
    v67 = v104;
    v68 = v105;
    v61 = v98;
    v62 = v99;
    v63 = v100;
    v64 = v101;
    v59 = v96;
    v60 = v97;
    if (sub_21D157494(&v59) != 1)
    {
      v5 = *(&v65 + 1);
      v6 = v65;
      v7 = *(&v59 + 1);
      v8 = v59;
      v10 = v63;
      v9 = v64;
      v12 = v61;
      v11 = v62;
      v13 = v60;
      v78 = v70;
      v79 = v71;
      v80 = v72;
      v74 = v66;
      v75 = v67;
      v76 = v68;
      v77 = v69;
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v69 = v106;
  v70 = v107;
  v71 = v108;
  v72 = v109;
  v65 = v102;
  v66 = v103;
  v67 = v104;
  v68 = v105;
  v61 = v98;
  v62 = v99;
  v63 = v100;
  v64 = v101;
  v59 = v96;
  v60 = v97;
  if (sub_21D157494(&v59) == 1)
  {
LABEL_11:
    v14 = &unk_27CE5FB50;
    v15 = &v81;
    goto LABEL_12;
  }

  v41 = v70;
  v42 = v71;
  v43 = v72;
  v37 = v66;
  v38 = v67;
  v39 = v68;
  v40 = v69;
  v17 = v66;
  if (v66)
  {
    v34 = v69;
    v35 = v70;
    v36 = v71;
    v32 = v67;
    v33 = v68;
    sub_21D1D9B34(&v38, &v44);
    v18 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
    countAndFlagsBits = v18._countAndFlagsBits;
    object = v18._object;
    v46 = v34;
    v47 = v35;
    v48 = v36;
    v44 = v32;
    v45 = v33;
    sub_21D1D9B90(&v44);
    v17 = v72;
  }

  else
  {
    countAndFlagsBits = 0;
    object = 0;
  }

  v21 = sub_21DACF058(v65, v17 & 1, countAndFlagsBits, object);
  v23 = v22;

  if (v23)
  {
    sub_21D0CF7E0(&v81, &unk_27CE5FB50);
    return v21;
  }

  v7 = *(&v96 + 1);
  v8 = v96;
  v12 = v98;
  v13 = v97;
  v10 = v100;
  v11 = v99;
  v9 = v101;
  v5 = *(&v102 + 1);
  v78 = v107;
  v79 = v108;
  v80 = v109;
  v74 = v103;
  v75 = v104;
  v76 = v105;
  v77 = v106;
  v6 = v102;
LABEL_20:
  v27 = v12;
  v28 = v13;
  v29 = v10;
  v30 = v11;
  v31 = v9;
  *&v44 = v8;
  *(&v44 + 1) = v7;
  v45 = v13;
  v46 = v12;
  v47 = v11;
  v48 = v10;
  v49 = v9;
  v50 = v6 & 1;
  v51 = v5;
  v56 = v78;
  v57 = v79;
  v58 = v80;
  v52 = v74;
  v53 = v75;
  v54 = v76;
  v55 = v77;
  v71 = v93;
  v72 = v94;
  v73 = v95;
  v67 = v89;
  v68 = v90;
  v69 = v91;
  v70 = v92;
  v63 = v85;
  v64 = v86;
  v65 = v87;
  v66 = v88;
  v59 = v81;
  v60 = v82;
  v61 = v83;
  v62 = v84;
  sub_21D6BF990(&v59, &v37);
  if (qword_27CE57410 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21DC08D00;
  v37 = v28;
  v38 = v27;
  v39 = v30;
  v40 = v29;
  v41 = v31;
  v25 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_21D17A884();
  *(v24 + 32) = v25;
  v26 = sub_21DBFA17C();
  sub_21D30DA58(&v44);
  sub_21D0CF7E0(&v81, &unk_27CE5FB50);
  return v26;
}

uint64_t sub_21D6CC27C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-1] - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.DisplayDate(0);
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 accessibilityContainer])
  {
    goto LABEL_11;
  }

  ObjectType = swift_getObjectType();
  v10 = swift_conformsToProtocol2();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_11:
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_12;
  }

  (*(v10 + 32))(v21, ObjectType, v10);
  swift_unknownObjectRelease();
  v11 = v22;
  if (!v22)
  {
    sub_21D0CF7E0(v21, &unk_27CE5FAE0);
    goto LABEL_11;
  }

  v12 = v23;
  __swift_project_boxed_opaque_existential_1(v21, v22);
  (*(v12 + 64))(v11, v12);
  __swift_destroy_boxed_opaque_existential_0(v21);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_12:
    sub_21D0CF7E0(v3, &unk_27CE5F2B0);
    return 0;
  }

  sub_21D3DA2C4(v3, v8);
  v13 = [objc_opt_self() currentRequest];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 technology];

    LOBYTE(v14) = AXTechnology.ttrShouldUseSpeakableStrings.getter();
    v16 = 16;
    if ((v14 & 1) == 0)
    {
      v16 = 0;
    }

    v17 = &v8[v16];
  }

  else
  {
    v17 = v8;
  }

  v19 = *v17;
  sub_21DBF8E0C();
  sub_21D6D14FC(v8, type metadata accessor for TTRRemindersListViewModel.DisplayDate);
  return v19;
}

id sub_21D6CC574()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v7, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v8;
      if (v8)
      {
        v5 = v9;
        __swift_project_boxed_opaque_existential_1(v7, v8);
        v6 = (*(v5 + 88))(v4, v5);
        __swift_destroy_boxed_opaque_existential_0(v7);
        return v6;
      }

      sub_21D0CF7E0(v7, &unk_27CE5FAE0);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_21D6CC68C()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v10, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v11;
      if (v11)
      {
        v5 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v6 = (*(v5 + 112))(v4, v5);
        if (v6)
        {
          v7 = v6;
          v8 = [v6 string];

          v9 = sub_21DBFA16C();
          __swift_destroy_boxed_opaque_existential_0(v10);
          return v9;
        }

        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        sub_21D0CF7E0(v10, &unk_27CE5FAE0);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

id sub_21D6CC7E0()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v8, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v9;
      if (v9)
      {
        v5 = v10;
        __swift_project_boxed_opaque_existential_1(v8, v9);
        (*(v5 + 272))(&v7, v4, v5);
        v11.value = 5;
        v11.is_nil = 0;
        countAndFlagsBits = TTRReminderHashtagData.ttrAccessibilityTagSummary(withTagLimit:)(v11)._countAndFlagsBits;

        __swift_destroy_boxed_opaque_existential_0(v8);
        return countAndFlagsBits;
      }

      sub_21D0CF7E0(v8, &unk_27CE5FAE0);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_21D6CC92C()
{
  v1 = v0;
  if ([v0 accessibilityContainer])
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
      (*(v3 + 32))(v45, ObjectType, v3);
      swift_unknownObjectRelease();
      v4 = v46;
      if (v46)
      {
        v5 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v5 + 104))(&v38, v4, v5);
        v7 = v38;
        v6 = v39;
        v9 = v40;
        v8 = v41;
        v11 = v42;
        v10 = v43;
        v12 = v44;
        __swift_destroy_boxed_opaque_existential_0(v45);
        if (v8)
        {
          if (v12)
          {
            v37 = v6;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
            v13 = swift_allocObject();
            *(v13 + 16) = xmmword_21DC08D00;
            *(v13 + 56) = MEMORY[0x277D837D0];
            *(v13 + 64) = sub_21D17A884();
            *(v13 + 32) = v11;
            *(v13 + 40) = v10;
            sub_21DBF8E0C();
            v14 = sub_21DBFA17C();
            v16 = v15;
            if (qword_280D1AA40 != -1)
            {
              v36 = v14;
              swift_once();
              v14 = v36;
            }

            v18 = qword_280D1AA48;
            v17 = *algn_280D1AA50;
            v38 = v14;
            v39 = v16;
            sub_21DBF8E0C();
            MEMORY[0x223D42AA0](v18, v17);

            v19 = v38;
            v20 = v39;
            if (qword_27CE57548 != -1)
            {
              swift_once();
            }

            v21 = qword_27CE67180;
            v22 = *algn_27CE67188;
            v38 = v19;
            v39 = v20;
            sub_21DBF8E0C();
            MEMORY[0x223D42AA0](v21, v22);

            sub_21D4B94BC(v7, v37, v9, v8);
            return v38;
          }

          sub_21D4B94BC(v7, v6, v9, v8);
        }
      }

      else
      {
        sub_21D0CF7E0(v45, &unk_27CE5FAE0);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  if ([v1 accessibilityContainer])
  {
    v24 = swift_getObjectType();
    v25 = swift_conformsToProtocol2();
    if (v25)
    {
      (*(v25 + 32))(v45, v24, v25);
      swift_unknownObjectRelease();
      v26 = v46;
      if (v46)
      {
        v27 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        (*(v27 + 104))(&v38, v26, v27);
        v28 = v41;
        if (v41)
        {
          v30 = v42;
          v29 = v43;
          v32 = v39;
          v31 = v40;
          v33 = v38;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_21DC08D00;
          *(v34 + 56) = MEMORY[0x277D837D0];
          *(v34 + 64) = sub_21D17A884();
          *(v34 + 32) = v30;
          *(v34 + 40) = v29;
          sub_21DBF8E0C();
          v35 = sub_21DBFA17C();
          sub_21D4B94BC(v33, v32, v31, v28);
          __swift_destroy_boxed_opaque_existential_0(v45);
          return v35;
        }

        __swift_destroy_boxed_opaque_existential_0(v45);
      }

      else
      {
        sub_21D0CF7E0(v45, &unk_27CE5FAE0);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return 0;
}

uint64_t sub_21D6CCD74()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v13, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v14;
  if (!v14)
  {
    sub_21D0CF7E0(v13, &unk_27CE5FAE0);
    return 0;
  }

  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v4 + 248))(&v10, v3, v4);
  v5 = v11;
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
    return 0;
  }

  v6 = v10;
  v7 = v12;
  sub_21DBF8E0C();
  sub_21D1576C8(v6, v5, v7);
  __swift_destroy_boxed_opaque_existential_0(v13);
  if (qword_27CE573F8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21DC08D00;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_21D17A884();
  *(v8 + 32) = v6;
  *(v8 + 40) = v5;
  return sub_21DBFA17C();
}

id sub_21D6CCF50()
{
  result = [v0 accessibilityContainer];
  if (result)
  {
    swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      v3 = v2;
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 32);
      v5((v18 + 1), ObjectType, v3);
      v6 = v19;
      if (!v19)
      {
        goto LABEL_14;
      }

      v7 = v20;
      __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
      v8 = (*(v7 + 160))(v6, v7);
      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0(v18 + 1);
      if ((v10 & 1) == 0)
      {
        v5((v18 + 1), ObjectType, v3);
        v11 = v19;
        if (v19)
        {
          v12 = v20;
          __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
          (*(v12 + 176))(v18, v11, v12);
          v13 = LOBYTE(v18[0]);
          __swift_destroy_boxed_opaque_existential_0(v18 + 1);
          if (v13 != 2 && v8 > 0)
          {
            if ((v13 & 1) == 0)
            {
              if (qword_27CE573E8 == -1)
              {
                goto LABEL_20;
              }

              goto LABEL_21;
            }

            (*(v3 + 72))(v18 + 1, ObjectType, v3);
            if (BYTE1(v18[0]))
            {
              if (BYTE1(v18[0]) == 1)
              {
                if (qword_27CE573E0 == -1)
                {
                  goto LABEL_20;
                }
              }

              else if (qword_27CE573D8 == -1)
              {
LABEL_20:
                sub_21DBF8E0C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
                v14 = swift_allocObject();
                v15 = MEMORY[0x277D83B88];
                *(v14 + 16) = xmmword_21DC08D00;
                v16 = MEMORY[0x277D83C10];
                *(v14 + 56) = v15;
                *(v14 + 64) = v16;
                *(v14 + 32) = v8;
                v17 = sub_21DBFA17C();

                swift_unknownObjectRelease();
                return v17;
              }

LABEL_21:
              swift_once();
              goto LABEL_20;
            }
          }

          goto LABEL_13;
        }

LABEL_14:
        swift_unknownObjectRelease();
        sub_21D0CF7E0(v18 + 1, &unk_27CE5FAE0);
        return 0;
      }
    }

LABEL_13:
    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

uint64_t sub_21D6CD25C()
{
  v25 = type metadata accessor for TTRRemindersListViewModel.LinkAttachment(0);
  v1 = *(v25 - 8);
  *&v2 = MEMORY[0x28223BE20](v25).n128_u64[0];
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v6 + 32))(v26, ObjectType, v6);
  swift_unknownObjectRelease();
  v7 = v27;
  if (!v27)
  {
    sub_21D0CF7E0(v26, &unk_27CE5FAE0);
    return 0;
  }

  v8 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v9 = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_0(v26);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    return 0;
  }

  v26[0] = MEMORY[0x277D84F90];
  sub_21D18E678(0, v10, 0);
  v11 = v26[0];
  v12 = *(v1 + 80);
  v24[1] = v9;
  v13 = v9 + ((v12 + 32) & ~v12);
  v14 = *(v1 + 72);
  do
  {
    sub_21D6D1498(v13, v4);
    v15 = sub_21DBF53EC();
    if (!v16)
    {
      v15 = sub_21DBF535C();
    }

    v17 = v15;
    v18 = v16;
    sub_21D6D14FC(v4, type metadata accessor for TTRRemindersListViewModel.LinkAttachment);
    v26[0] = v11;
    v20 = *(v11 + 16);
    v19 = *(v11 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21D18E678((v19 > 1), v20 + 1, 1);
      v11 = v26[0];
    }

    *(v11 + 16) = v20 + 1;
    v21 = v11 + 16 * v20;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18;
    v13 += v14;
    --v10;
  }

  while (v10);

  v26[0] = v11;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v22 = sub_21DBFA07C();

  return v22;
}

uint64_t sub_21D6CD5A8()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v10, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v11;
  if (!v11)
  {
    sub_21D0CF7E0(v10, &unk_27CE5FAE0);
    return 0;
  }

  v4 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v5 = (*(v4 + 152))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v10);
  if (v5 < 1)
  {
    return 0;
  }

  if (qword_280D1AB10 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D83B88];
  *(v6 + 16) = xmmword_21DC08D00;
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = v5;
  return sub_21DBFA17C();
}

uint64_t sub_21D6CD74C()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v15, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v16;
  if (!v16)
  {
    sub_21D0CF7E0(v15, &unk_27CE5FAE0);
    return 0;
  }

  v4 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v4 + 240))(v14, v3, v4);
  v6 = v14[0];
  v5 = v14[1];
  v7 = v14[2];
  __swift_destroy_boxed_opaque_existential_0(v15);
  if (!v6)
  {
    return 0;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v7;
  }

  else
  {
    if (qword_27CE572D8 != -1)
    {
      swift_once();
    }

    v8 = qword_27CE66D00;
    v9 = *algn_27CE66D08;
    sub_21DBF8E0C();
  }

  v11 = qword_27CE57400;
  sub_21DBF8E0C();
  if (v11 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21DC08D00;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_21D17A884();
  *(v12 + 32) = v8;
  *(v12 + 40) = v9;
  v13 = sub_21DBFA17C();
  sub_21D6388A4(v6);
  return v13;
}

id sub_21D6CD988()
{
  result = [objc_opt_self() currentRequest];
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = [result technology];

  LOBYTE(v2) = AXTechnology.ttrShouldProvideAdditionalContext.getter();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  result = [v0 accessibilityContainer];
  if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (!v5)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = (*(v5 + 80))(ObjectType, v5);
  v8 = v7;
  swift_unknownObjectRelease();
  if (!v8)
  {
    return 0;
  }

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    return 0;
  }

  if (qword_27CE57408 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21DC08D00;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_21D17A884();
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  v11 = sub_21DBFA13C();

  return v11;
}

uint64_t sub_21D6CDB64()
{
  if (![v0 accessibilityContainer])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v2 = swift_conformsToProtocol2();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  (*(v2 + 32))(v11, ObjectType, v2);
  swift_unknownObjectRelease();
  v3 = v12;
  if (!v12)
  {
    sub_21D0CF7E0(v11, &unk_27CE5FAE0);
    return 0;
  }

  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v4 + 288))(v10, v3, v4);
  v5 = v10[0];
  v6 = v10[1];
  v7 = v10[2];
  v8 = v10[3];
  __swift_destroy_boxed_opaque_existential_0(v11);
  if (v6 < 2)
  {
    return 0;
  }

  if (!v8)
  {
    return v5;
  }

  return v7;
}

double TTRIRemindersListReminderCellAccessibilityElement.accessibilityFrame.getter()
{
  v1 = [v0 accessibilityContainer];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      [v3 accessibilityFrame];
      v2 = v4;
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityFrame.modify(void *a1))(void, void, void)
{
  v3 = [v1 accessibilityContainer];
  v4 = 0;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  [v5 accessibilityFrame];
  v4 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = v4;
  a1[1] = v8;
  a1[2] = v10;
  a1[3] = v12;
  return nullsub_1;
}

double TTRIRemindersListReminderCellAccessibilityElement.accessibilityActivationPoint.getter()
{
  v1 = [v0 accessibilityContainer];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      [v3 accessibilityActivationPoint];
      v2 = v4;
    }

    swift_unknownObjectRelease();
  }

  return v2;
}

uint64_t (*TTRIRemindersListReminderCellAccessibilityElement.accessibilityActivationPoint.modify(void *a1))(void, void, void)
{
  v3 = [v1 accessibilityContainer];
  v4 = 0;
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = v3;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  [v5 accessibilityActivationPoint];
  v4 = v6;
  v8 = v7;
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = v4;
  a1[1] = v8;
  return nullsub_1;
}

uint64_t TTRIRemindersListReminderCellAccessibilityElement.accessibilityUserInputLabels.getter()
{
  sub_21D6CA954(v11);
  v1 = v11[0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D00;
  if (v1 < 0)
  {
    if ([v0 accessibilityContainer])
    {
      ObjectType = swift_getObjectType();
      v7 = swift_conformsToProtocol2();
      if (v7)
      {
        v8 = (*(v7 + 88))(ObjectType, v7);
        swift_unknownObjectRelease();
        if (v8)
        {
          if (qword_27CE572F8 != -1)
          {
            swift_once();
          }

          v9 = &qword_27CE66D30;
LABEL_13:
          v3 = *v9;
          v5 = sub_21DBF8E0C();
          goto LABEL_14;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (qword_27CE572E8 != -1)
    {
      swift_once();
    }

    v9 = &qword_27CE66D10;
    goto LABEL_13;
  }

  v3 = sub_21D6CBB8C();
  v5 = v4;
LABEL_14:
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  return v2;
}

unint64_t TTRIRemindersListReminderCellAccessibilityElement.accessibilityTraits.getter()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v13, sel_accessibilityTraits);
  v2 = *MEMORY[0x277D765D0];
  if ((*MEMORY[0x277D765D0] & ~v1) == 0)
  {
    v2 = 0;
  }

  v3 = v2 | v1;
  sub_21D6CA954(v12);
  v4 = v12[0];

  if (v4 < 0)
  {
    v5 = *MEMORY[0x277D76548];
    if ((*MEMORY[0x277D76548] & ~v3) == 0)
    {
      v5 = 0;
    }

    v3 |= v5;
  }

  if (![v0 accessibilityContainer])
  {
    goto LABEL_16;
  }

  ObjectType = swift_getObjectType();
  v7 = swift_conformsToProtocol2();
  if (!v7 || (v8 = v7, ((*(v7 + 40))(ObjectType, v7) & 1) == 0) || ((*(v8 + 48))(ObjectType, v8) & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_16:
    if ((*MEMORY[0x277D76598] & v3) != 0)
    {
      return v3 & ~*MEMORY[0x277D76598];
    }

    else
    {
      return v3;
    }
  }

  v9 = *MEMORY[0x277D76598];
  swift_unknownObjectRelease();
  if ((v9 & ~v3) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v3;
}

id TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.getter()
{
  v1 = v0;
  result = [v0 accessibilityContainer];
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (!v3)
  {
LABEL_5:
    swift_unknownObjectRelease();
    return 0;
  }

  v4 = v3;
  ObjectType = swift_getObjectType();
  v87 = *(v4 + 32);
  v87(&v119, ObjectType, v4);
  v6 = *(&v120 + 1);
  if (*(&v120 + 1))
  {
    v7 = ObjectType;
    v8 = v121;
    __swift_project_boxed_opaque_existential_1(&v119, *(&v120 + 1));
    v9 = *(v8 + 16);
    v10 = v8;
    ObjectType = v7;
    v9(&v104, v6, v10);
    v11 = BYTE9(v105);

    __swift_destroy_boxed_opaque_existential_0(&v119);
    if (v11 != 1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_21D0CF7E0(&v119, &unk_27CE5FAE0);
  }

  v137 = MEMORY[0x277D84F90];
  v12 = *(v4 + 40);
  v85 = ObjectType;
  if ((v12(ObjectType, v4) & 1) != 0 && ((*(v4 + 56))(ObjectType, v4) & 1) == 0)
  {
    if ((*(v4 + 48))(ObjectType, v4))
    {
      if (qword_27CE56BD8 != -1)
      {
        swift_once();
      }

      v23 = &qword_27CE601A0;
    }

    else
    {
      if (qword_27CE56BD0 != -1)
      {
        swift_once();
      }

      v23 = &qword_27CE60190;
    }

    v29 = *v23;
    v28 = v23[1];
    sub_21DBF8E0C();
    v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v31 = *(v14 + 2);
    v30 = *(v14 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v14 = sub_21D210A84((v30 > 1), v31 + 1, 1, v14);
    }

    LODWORD(v13) = 0;
    goto LABEL_55;
  }

  if (v12(ObjectType, v4))
  {
    LODWORD(v13) = 0;
    v14 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v15 = sub_21D6CDB64();
  v83 = v16 != 0;
  if (v16)
  {
    v17 = v15;
    v18 = v16;
    v19 = sub_21D2142F8(0, 1, 1, MEMORY[0x277D84F90]);
    v21 = *(v19 + 2);
    v20 = *(v19 + 3);
    if (v21 >= v20 >> 1)
    {
      v19 = sub_21D2142F8((v20 > 1), v21 + 1, 1, v19);
    }

    *(v19 + 2) = v21 + 1;
    v22 = &v19[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v18;
    v137 = v19;
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  sub_21D6CA954(&v119);
  v24 = v119;

  LODWORD(v13) = v83;
  if (v24 >> 6)
  {
    if (v24 >> 6 == 1)
    {
      if (v24)
      {
        if (qword_27CE56BC8 != -1)
        {
          swift_once();
        }

        v25 = &qword_27CE60180;
      }

      else
      {
        if (qword_27CE56BC0 != -1)
        {
          swift_once();
        }

        v25 = &qword_27CE60170;
      }

LABEL_53:
      v29 = *v25;
      v28 = v25[1];
      sub_21DBF8E0C();
      v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
      v31 = *(v14 + 2);
      v36 = *(v14 + 3);
      v32 = v31 + 1;
      if (v31 >= v36 >> 1)
      {
        v14 = sub_21D210A84((v36 > 1), v31 + 1, 1, v14);
      }

LABEL_55:
      *(v14 + 2) = v32;
      v37 = &v14[16 * v31];
      *(v37 + 4) = v29;
      *(v37 + 5) = v28;
      goto LABEL_56;
    }

    if ([v1 accessibilityContainer])
    {
      v33 = swift_getObjectType();
      v34 = swift_conformsToProtocol2();
      if (v34)
      {
        v35 = (*(v34 + 88))(v33, v34);
        swift_unknownObjectRelease();
        if (v35)
        {
          if (qword_27CE56BE8 != -1)
          {
            swift_once();
          }

          v25 = &qword_27CE601C0;
          goto LABEL_53;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    if (qword_27CE56BE0 != -1)
    {
      swift_once();
    }

    v25 = &qword_27CE601B0;
    goto LABEL_53;
  }

  if ((v24 & 1) != 0 || (sub_21D6CA954(&v104), v26 = BYTE2(v104), , v26 != 1))
  {
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    if ((*(v4 + 64))(v85, v4))
    {
      if (qword_27CE56BB8 != -1)
      {
        swift_once();
      }

      v27 = &qword_27CE60160;
    }

    else
    {
      if (qword_27CE56BB0 != -1)
      {
        swift_once();
      }

      v27 = &qword_27CE60150;
    }

    v72 = *v27;
    v71 = v27[1];
    sub_21DBF8E0C();
    v14 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v74 = *(v14 + 2);
    v73 = *(v14 + 3);
    if (v74 >= v73 >> 1)
    {
      v14 = sub_21D210A84((v73 > 1), v74 + 1, 1, v14);
    }

    *(v14 + 2) = v74 + 1;
    v75 = &v14[16 * v74];
    *(v75 + 4) = v72;
    *(v75 + 5) = v71;
    LODWORD(v13) = v83;
  }

  (*(v4 + 72))(&v104, v85, v4);
  if (v104 == 1)
  {
    v76 = &unk_282EA75F8;
LABEL_126:
    sub_21D563124(v76);
    LODWORD(v13) = 1;
    goto LABEL_56;
  }

  sub_21D6CD25C();
  if (v77)
  {

    v76 = &unk_282EA7638;
    goto LABEL_126;
  }

  sub_21D6CD5A8();
  if (v78)
  {

    v76 = &unk_282EA7678;
    goto LABEL_126;
  }

  sub_21D6CA954(&v104);
  v79 = BYTE2(v104);

  if (v79 == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_21D2142F8(0, *(v19 + 2) + 1, 1, v19);
    }

    v81 = *(v19 + 2);
    v80 = *(v19 + 3);
    if (v81 >= v80 >> 1)
    {
      v19 = sub_21D2142F8((v80 > 1), v81 + 1, 1, v19);
    }

    *(v19 + 2) = v81 + 1;
    v82 = &v19[16 * v81];
    *(v82 + 4) = 0;
    *(v82 + 5) = 0;
    v137 = v19;
  }

LABEL_56:
  sub_21D6CA954(&v119);
  v38 = BYTE2(v119);

  if (v38 != 1)
  {
    goto LABEL_87;
  }

  v84 = v13;
  v39 = v137;
  v13 = *(v137 + 16);
  if (v13)
  {
    v40 = 0;
    v41 = 0;
    while (*(v137 + v40 + 40))
    {
      ++v41;
      v40 += 16;
      if (v13 == v41)
      {
        goto LABEL_61;
      }
    }

    v42 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_65;
    }

    while (v42 != v13)
    {
      if (v42 >= v13)
      {
        __break(1u);
        goto LABEL_134;
      }

      v46 = *&v39[v40 + 56];
      if (v46)
      {
        if (v42 != v41)
        {
          v86 = *&v39[v40 + 48];
          if (v41 >= v13)
          {
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v47 = &v39[16 * v41 + 32];
          v38 = *v47;
          v13 = v47[1];
          sub_21D6D1380(*v47, v13);
          sub_21D6D1380(v86, v46);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_21D256D80(v39);
          }

          v48 = &v39[16 * v41];
          v49 = *(v48 + 4);
          v50 = *(v48 + 5);
          *(v48 + 2) = v86;
          sub_21D6D1394(v49, v50);
          if (v42 >= *(v39 + 2))
          {
            goto LABEL_136;
          }

LABEL_65:
          v43 = &v39[v40];
          v44 = *&v39[v40 + 48];
          v45 = *&v39[v40 + 56];
          *(v43 + 6) = v38;
          *(v43 + 7) = v13;
          sub_21D6D1394(v44, v45);
          v13 = *(v39 + 2);
        }

        ++v41;
      }

      ++v42;
      v40 += 16;
    }

    if (v13 < v41)
    {
      goto LABEL_139;
    }

    if (v41 < 0)
    {
      goto LABEL_140;
    }
  }

  else
  {
LABEL_61:
    v41 = *(v137 + 16);
  }

  v38 = v41;
  if (__OFADD__(v13, v41 - v13))
  {
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v137 = v39;
  if (!isUniquelyReferenced_nonNull_native || v41 > *(v39 + 3) >> 1)
  {
    if (v13 <= v41)
    {
      v52 = v41;
    }

    else
    {
      v52 = v13;
    }

    v39 = sub_21D2142F8(isUniquelyReferenced_nonNull_native, v52, 1, v39);
    v137 = v39;
  }

  sub_21D5068C8(v41, v13, 0);
  v137 = v39;
  LODWORD(v13) = v84;
LABEL_87:
  v87(v134, v85, v4);
  v53 = v135;
  if (v135)
  {
    v54 = v136;
    __swift_project_boxed_opaque_existential_1(v134, v135);
    (*(v54 + 264))(&v104, v53, v54);
    __swift_destroy_boxed_opaque_existential_0(v134);
    v131 = v116;
    v132 = v117;
    v133 = v118;
    v127 = v112;
    v128 = v113;
    v129 = v114;
    v130 = v115;
    v123 = v108;
    v124 = v109;
    v125 = v110;
    v126 = v111;
    v119 = v104;
    v120 = v105;
    v121 = v106;
    v122 = v107;
    if (sub_21D4B9498(&v119) != 1)
    {
      if ((v133 & 2) != 0)
      {
        v100 = v129;
        v101 = v130;
        v102 = v131;
        v103 = v132;
        v96 = v125;
        v97 = v126;
        v98 = v127;
        v99 = v128;
        v95[2] = v121;
        v95[3] = v122;
        v95[4] = v123;
        v95[5] = v124;
        v95[0] = v119;
        v95[1] = v120;
        if (sub_21D157494(v95) != 1)
        {
          v94[3] = v101;
          v94[4] = v102;
          v94[5] = v103;
          v93[5] = v97;
          v94[0] = v98;
          v94[1] = v99;
          v94[2] = v100;
          v55 = v97;
          if (v97)
          {
            v90 = v100;
            v91 = v101;
            v92 = v102;
            v88 = v98;
            v89 = v99;
            sub_21D1D9B34(v94, v93);
            v56 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(1);
            countAndFlagsBits = v56._countAndFlagsBits;
            object = v56._object;
            v93[2] = v90;
            v93[3] = v91;
            v93[4] = v92;
            v93[0] = v88;
            v93[1] = v89;
            sub_21D1D9B90(v93);
            v55 = v103;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0;
          }

          sub_21DACF058(v96, v55 & 1, countAndFlagsBits, object);
          v60 = v59;

          if (v60)
          {
            sub_21D0CF7E0(&v104, &unk_27CE5FB50);

            goto LABEL_101;
          }
        }
      }

      v38 = v137;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_98:
        v62 = *(v38 + 16);
        v61 = *(v38 + 24);
        if (v62 >= v61 >> 1)
        {
          v38 = sub_21D2142F8((v61 > 1), v62 + 1, 1, v38);
        }

        sub_21D0CF7E0(&v104, &unk_27CE5FB50);
        *(v38 + 16) = v62 + 1;
        *(v38 + 16 * v62 + 32) = xmmword_21DC22F10;
        v137 = v38;
        goto LABEL_101;
      }

LABEL_141:
      v38 = sub_21D2142F8(0, *(v38 + 16) + 1, 1, v38);
      goto LABEL_98;
    }
  }

  else
  {
    sub_21D0CF7E0(v134, &unk_27CE5FAE0);
  }

LABEL_101:
  v63 = v137;
  if (v13)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_21D2142F8(0, *(v63 + 2) + 1, 1, v63);
    }

    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_21D2142F8((v64 > 1), v65 + 1, 1, v63);
    }

    *(v63 + 2) = v65 + 1;
    *&v63[16 * v65 + 32] = xmmword_21DC19C40;
    v137 = v63;
  }

  v4 = sub_21D6D0CD4(v63);
  v42 = v66;

  if (v42)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v14 = sub_21D210A84(0, *(v14 + 2) + 1, 1, v14);
    }

    v68 = *(v14 + 2);
    v67 = *(v14 + 3);
    if (v68 >= v67 >> 1)
    {
      v14 = sub_21D210A84((v67 > 1), v68 + 1, 1, v14);
    }

    *(v14 + 2) = v68 + 1;
    v69 = &v14[16 * v68];
    *(v69 + 4) = v4;
    *(v69 + 5) = v42;
  }

  *&v119 = v14;
  if (qword_280D1AA40 != -1)
  {
LABEL_134:
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630);
  v70 = sub_21DBFA07C();

  swift_unknownObjectRelease();
  return v70;
}