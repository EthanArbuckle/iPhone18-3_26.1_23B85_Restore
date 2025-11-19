void sub_21D5334D0()
{
  v1 = *(v0 + 192);
  v2 = (v1 + 40);
  v3 = -*(v1 + 16);
  v4 = -1;
  do
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      break;
    }

    if (++v4 >= *(v1 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v2 + 2;
    v7 = *v2;
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 32);
    swift_unknownObjectRetain();
    LOBYTE(v7) = v9(ObjectType, v7);
    swift_unknownObjectRelease();
    v2 = v6;
  }

  while ((v7 & 1) != 0);

  TTRITableSection.isHidden.setter(v5 == -1);
}

uint64_t sub_21D5335B4()
{
  v0 = sub_21D52E6EC();
  swift_beginAccess();
  v1 = *(v0 + 200);

  v2 = sub_21D52E3C4();
  if (v1 == 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v10 = 0;
    memset(v9, 0, 24);
  }

  else
  {
    v10 = 0;
    v6 = 0x4010000000000000;
    v5 = sub_21D537CD0;
    v4 = sub_21D537CCC;
    v3 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  v9[3] = v3;
  v9[4] = v4;
  v9[5] = 0;
  v9[6] = v5;
  v9[7] = 0;
  v9[8] = v6;
  swift_beginAccess();
  sub_21D0D3954(v2 + 112, v8, &qword_27CE5E690);
  swift_beginAccess();
  sub_21D537CD4(v9, v2 + 112);
  swift_endAccess();
  sub_21DBEE154(v8);

  sub_21D0CF7E0(v8, &qword_27CE5E690);
  return sub_21D0CF7E0(v9, &qword_27CE5E690);
}

void sub_21D533708()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v1 = [Strong viewIfLoaded];
    if (v1)
    {
      v2 = v1;
      v3 = UIView.firstResponderDescendant.getter();

      if (v3)
      {
        [v3 resignFirstResponder];
      }
    }
  }
}

uint64_t sub_21D5337A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  type metadata accessor for TTREarlyAlertUtils();
  v40.i64[0] = v5;
  v40.i64[1] = v6;
  LOBYTE(v41) = v7;
  static TTREarlyAlertUtils.earlyAlertOptions(for:isAllDay:)(&v40, a2, &v49);
  v24 = v50;
  v25 = *(&v49 + 1);
  v23 = BYTE8(v50);
  v8 = v51;
  LOBYTE(v6) = v52;
  v9 = *(sub_21D52E74C() + 32);

  v10 = v9 + *((*MEMORY[0x277D85000] & *v9) + 0x78);
  swift_beginAccess();
  v40 = *v10;
  v11 = *(v10 + 1);
  v12 = *(v10 + 2);
  v13 = *(v10 + 4);
  v43 = *(v10 + 3);
  v44 = v13;
  v41 = v11;
  v42 = v12;
  v14 = *(v10 + 5);
  v15 = *(v10 + 6);
  v16 = *(v10 + 7);
  v48 = *(v10 + 64);
  v46 = v15;
  v47 = v16;
  v45 = v14;
  v30 = *(v10 + 4);
  v31 = *(v10 + 5);
  v32 = *(v10 + 12);
  v26 = *v10;
  v27 = *(v10 + 1);
  v28 = *(v10 + 2);
  v29 = *(v10 + 3);
  v17 = HIBYTE(v48);
  sub_21D0D3954(&v40, &v49, &qword_27CE5D9C8);

  v49 = v8;
  LOBYTE(v50) = v6;
  v18 = sub_21DBF8E0C();
  v19 = sub_21D538A94(v18, &v49);

  swift_bridgeObjectRelease_n();
  v20 = *(*(v3 + 120) + 32);
  v33[0] = v26;
  v33[1] = v27;
  v33[4] = v30;
  v33[5] = v31;
  v33[2] = v28;
  v33[3] = v29;
  v34 = v32;
  v35 = v19;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v17;
  v21 = v20;
  sub_21D0D3954(v33, &v49, &qword_27CE5D9C8);
  sub_21D5C7058(v33);

  v53 = v30;
  v54 = v31;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v52 = v29;
  v55 = v32;
  v56 = v19;
  v57 = v25;
  v58 = v24;
  v59 = v23;
  v60 = v17;
  return sub_21D0CF7E0(&v49, &qword_27CE5D9C8);
}

void sub_21D5339EC(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16960 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16968;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

uint64_t sub_21D533ADC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_21D533708();
    v2 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 16);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D533B84(uint64_t a1)
{
  v1 = *(a1 + 120);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_21D533708();
    v4 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);
    swift_unknownObjectRetain();
    v6(v1, ObjectType, v4);
    swift_unknownObjectRelease();
    if (v1)
    {
      if (qword_27CE57188 != -1)
      {
        swift_once();
      }

      v7 = &qword_27CE66AD0;
    }

    else
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v7 = &qword_27CE66AE0;
    }

    v8 = *v7;
    v9 = v7[1];
    sub_21DBF8E0C();
    sub_21D5396B4(v8, v9);
  }

  return result;
}

uint64_t sub_21D533CD4()
{
  v0 = type metadata accessor for TTRICalendarPickerCellContentState(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v11[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF5C3C();
  v3 = objc_allocWithZone(type metadata accessor for TTRICalendarPickerCellContent(0));
  v4 = TTRICalendarPickerCellContent.init(state:)(v2);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = (v4 + qword_27CE8ED38);
  swift_beginAccess();
  v7 = *v6;
  *v6 = sub_21D539A90;
  v6[1] = v5;

  sub_21D0D0E88(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A748);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 1;
  *(v8 + 49) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 32) = v4;
  *(v8 + 40) = 0;
  v9 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70);
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t sub_21D533EA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C668);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_21D533708();
    v7 = *(sub_21D52E528() + 32);

    v8 = v7 + *((*MEMORY[0x277D85000] & *v7) + 0x78);
    swift_beginAccess();
    v9 = v8[120];

    v10 = *(v6 + 48);
    ObjectType = swift_getObjectType();
    v12 = sub_21DBF563C();
    (*(*(v12 - 8) + 16))(v4, a1, v12);
    v13 = type metadata accessor for TTRIReminderDetailDueDateModificationInput();
    v4[*(v13 + 20)] = (v9 & 1) == 0;
    v4[*(v13 + 24)] = 0;
    (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
    (*(v10 + 48))(v4, ObjectType, v10);
    sub_21D0CF7E0(v4, &qword_27CE5C668);
  }

  return result;
}

uint64_t sub_21D5340AC(uint64_t a1, void (*a2)(void *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(v32);
  v28 = v32[1];
  v29 = v32[0];
  v26 = v32[3];
  v27 = v32[2];
  v6 = v33;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF516C();
  v9 = v8;
  memset(v34, 0, 24);
  v34[3] = 0x1FFFFFFFELL;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  sub_21D0CF7E0(v34, &unk_27CE5EA00);
  v10 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v11 = (v10 + qword_27CE654C0);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v10 + qword_27CE654C8);
  *v12 = 0;
  v12[1] = 0;
  v13 = MEMORY[0x277D85000];
  *(v10 + *((*MEMORY[0x277D85000] & *v10) + 0x68)) = 0;
  *(v10 + *((*v13 & *v10) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + *((*v13 & *v10) + 0x90)) = 0;
  v14 = v10 + *((*v13 & *v10) + 0x78);
  *v14 = v29;
  *(v14 + 1) = v28;
  *(v14 + 2) = v27;
  *(v14 + 3) = v26;
  v14[64] = v6;
  *(v14 + 65) = v38[0];
  *(v14 + 17) = *(v38 + 3);
  *(v14 + 9) = v7;
  *(v14 + 10) = v9;
  *(v14 + 88) = 0u;
  *(v14 + 104) = 0u;
  *(v14 + 118) = 0;
  *(v10 + *((*v13 & *v10) + 0x80)) = 0;
  v15 = (v10 + *((*v13 & *v10) + 0x88));
  *v15 = 0x6543686374697753;
  v15[1] = 0xEA00000000006C6CLL;
  v31.receiver = v10;
  v31.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0);
  v16 = objc_msgSendSuper2(&v31, sel_init, 0x800000021DC547E0);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + qword_27CE654C0);
  swift_beginAccess();
  v19 = *v18;
  *v18 = a4;
  v18[1] = v17;

  sub_21D0D0E88(v19);

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = (v16 + qword_27CE654C8);
  swift_beginAccess();
  v22 = *v21;
  *v21 = a5;
  v21[1] = v20;

  sub_21D0D0E88(v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 48) = 1;
  *(v23 + 49) = 0;
  *(v23 + 56) = 0;
  *(v23 + 64) = 0;
  *(v23 + 72) = 1;
  *(v23 + 32) = v16;
  *(v23 + 40) = 0;
  v24 = v16 + *((*v13 & *v16) + 0x70);
  swift_beginAccess();
  *(v24 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v23;
}

void sub_21D5344DC(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    v5 = sub_21DBFA12C();
    v6 = [objc_opt_self() _systemImageNamed_];

    if (qword_280D16918 != -1)
    {
      swift_once();
    }

    v7 = qword_280D16920;
    *a1 = v6;
    *(a1 + 8) = 0;
    *(a1 + 16) = v7;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v8 = v7;
  }
}

uint64_t sub_21D534614()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_21D533708();
    v2 = *(v1 + 48);
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 24);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D5346BC(uint64_t a1)
{
  v1 = *(a1 + 120);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_21D533708();
    v4 = *(v3 + 48);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 40);
    swift_unknownObjectRetain();
    v6(v1, ObjectType, v4);
    swift_unknownObjectRelease();
    if (v1)
    {
      if (qword_27CE57188 != -1)
      {
        swift_once();
      }

      v7 = &qword_27CE66AD0;
    }

    else
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v7 = &qword_27CE66AE0;
    }

    v8 = *v7;
    v9 = v7[1];
    sub_21DBF8E0C();
    sub_21D5396B4(v8, v9);
  }

  return result;
}

uint64_t sub_21D53480C()
{
  v0 = type metadata accessor for TTRIDatePickerCellContentState(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF5C3C();
  *&v3[*(v1 + 32)] = 0;
  *&v3[*(v1 + 36)] = 1;
  v4 = objc_allocWithZone(type metadata accessor for TTRIDatePickerCellContent(0));
  v5 = TTRIDatePickerCellContent.init(state:)(v3);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = (v5 + qword_27CE8EAB0);
  swift_beginAccess();
  v8 = *v7;
  *v7 = sub_21D53969C;
  v7[1] = v6;

  sub_21D0D0E88(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D990);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 1;
  *(v9 + 49) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  v10 = v5 + *((*MEMORY[0x277D85000] & *v5) + 0x70);
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t sub_21D5349F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C668);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_21D52E5CC();
    swift_beginAccess();
    if (*(v7 + 49))
    {
    }

    else
    {
      if ((*(*(v7 + 32) + qword_27CE60838) & 1) == 0)
      {
        sub_21D533708();
      }

      v8 = *(v6 + 48);
      ObjectType = swift_getObjectType();
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 16))(v4, a1, v10);
      v11 = type metadata accessor for TTRIReminderDetailDueDateModificationInput();
      v4[*(v11 + 20)] = 0;
      v4[*(v11 + 24)] = 1;
      (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
      (*(v8 + 48))(v4, ObjectType, v8);

      sub_21D0CF7E0(v4, &qword_27CE5C668);
    }
  }

  return result;
}

uint64_t sub_21D534BE0()
{
  sub_21D534FAC(v22);
  v19 = v22[1];
  v20 = v22[0];
  v17 = v22[3];
  v18 = v22[2];
  v0 = v23;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  memset(v24, 0, 24);
  v24[3] = 0x1FFFFFFFELL;
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  sub_21D0CF7E0(v24, &unk_27CE5EA00);
  v4 = objc_allocWithZone(type metadata accessor for TTRIToggleCellContent(0));
  v5 = (v4 + qword_27CE654C0);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v4 + qword_27CE654C8);
  *v6 = 0;
  v6[1] = 0;
  v7 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v7 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v7 & *v4) + 0x90)) = 0;
  v8 = v4 + *((*v7 & *v4) + 0x78);
  *v8 = v20;
  *(v8 + 1) = v19;
  *(v8 + 2) = v18;
  *(v8 + 3) = v17;
  v8[64] = v0;
  *(v8 + 65) = *v28;
  *(v8 + 17) = *&v28[3];
  *(v8 + 9) = v1;
  *(v8 + 10) = v3;
  *(v8 + 88) = 0u;
  *(v8 + 104) = 0u;
  *(v8 + 118) = 0;
  *(v4 + *((*v7 & *v4) + 0x80)) = 0;
  v9 = (v4 + *((*v7 & *v4) + 0x88));
  *v9 = 0x6543686374697753;
  v9[1] = 0xEA00000000006C6CLL;
  v21.receiver = v4;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0);
  v10 = objc_msgSendSuper2(&v21, sel_init, 0x800000021DC547E0);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = (v10 + qword_27CE654C8);
  swift_beginAccess();
  v13 = *v12;
  *v12 = sub_21D53968C;
  v12[1] = v11;

  sub_21D0D0E88(v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D980);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = 1;
  *(v14 + 49) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 1;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  v15 = v10 + *((*v7 & *v10) + 0x70);
  swift_beginAccess();
  *(v15 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v14;
}

void sub_21D534FAC(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16948 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16950;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

uint64_t sub_21D5350A0(uint64_t a1)
{
  v1 = *(a1 + 120);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 56);
    swift_unknownObjectRetain();
    v5(v1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D535150()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  sub_21D535420(&v16);
  v15[0] = v0;
  v15[1] = v2;
  v15[2] = 0;
  v15[3] = 0xE000000000000000;
  v3 = objc_allocWithZone(type metadata accessor for TTRITimeZoneCellContent(0));
  v4 = sub_21DA87D30(0, 0x656E6F5A656D6954, 0xEC0000006C6C6543, 1, v15);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = MEMORY[0x277D85000];
  v9 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0x108));
  swift_beginAccess();
  v10 = *v9;
  *v9 = sub_21D539694;
  v9[1] = v7;
  v11 = v4;

  sub_21D0D0E88(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D988);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 48) = 1;
  *(v12 + 49) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = v11 + *((*v8 & *v11) + 0x70);
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v12;
}

void sub_21D535420(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64) == 1)
  {
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0x80;
  }

  else
  {
    if (qword_280D16918 != -1)
    {
      swift_once();
    }

    v5 = qword_280D16920;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
    *(a1 + 64) = 0;

    v6 = v5;
  }
}

uint64_t sub_21D53550C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 64);
      swift_unknownObjectRetain();
      v6(1, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D5355F0()
{
  type metadata accessor for TTREarlyAlertUtils();
  v32 = 0uLL;
  LOBYTE(v33) = 0;
  static TTREarlyAlertUtils.earlyAlertOptions(for:isAllDay:)(&v32, 1, &v19);
  v19 = v21;
  LOBYTE(v20) = v22;
  v0 = sub_21DBF8E0C();
  v1 = sub_21D538A94(v0, &v19);
  swift_bridgeObjectRelease_n();
  sub_21D535908(&v19);
  v17 = v20;
  v18 = v19;
  v15 = v22;
  v16 = v21;
  v2 = v23;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v3 = sub_21DBF516C();
  v5 = v4;
  v32 = 0uLL;
  v33 = 0;
  v34 = 0x1FFFFFFFELL;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  sub_21D0CF7E0(&v32, &unk_27CE5EA00);
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v2;
  v24 = v3;
  v25 = v5;
  v26 = 0;
  v27 = 0;
  v29 = 0;
  v30 = 0;
  v28 = v1;
  v31 = 0;
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9B0));
  v7 = sub_21D537D44(&v19, 0, 0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = MEMORY[0x277D85000];
  v10 = (v7 + *((*MEMORY[0x277D85000] & *v7) + 0x100));
  swift_beginAccess();
  v11 = *v10;
  *v10 = sub_21D539B28;
  v10[1] = v8;

  sub_21D0D0E88(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9B8);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v12 + 48) = 1;
  *(v12 + 49) = 0;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 32) = v7;
  *(v12 + 40) = 0;
  v13 = v7 + *((*v9 & *v7) + 0x70);
  swift_beginAccess();
  *(v13 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v12;
}

id sub_21D535908@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = 0;
    v6 = 0x80;
  }

  else
  {
    v7 = sub_21DBFA12C();
    v4 = [objc_opt_self() _systemImageNamed_];

    result = [objc_opt_self() ttr_systemPurpleColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D535A04(uint64_t a1)
{
  v1 = *(a1 + 112);
  v2 = *(a1 + 120);
  v3 = *(a1 + 128);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(result + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v14, ObjectType, v6);
    v8 = v15;
    v9 = *(v5 + 48);
    v10 = swift_getObjectType();
    v14[0] = v1;
    v14[1] = v2;
    v15 = v3;
    (*(v9 + 120))(v14, v10, v9);
    if (v3)
    {
      if ((v8 & 1) == 0)
      {
        if (qword_27CE57188 != -1)
        {
          swift_once();
        }

        v11 = &qword_27CE66AD0;
LABEL_11:
        v12 = *v11;
        v13 = v11[1];
        sub_21DBF8E0C();
        sub_21D5396B4(v12, v13);
      }
    }

    else if (v8)
    {
      if (qword_27CE57190 != -1)
      {
        swift_once();
      }

      v11 = &qword_27CE66AE0;
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_21D535B78()
{
  memset(v28, 0, 24);
  v28[3] = 0x1FFFFFFFELL;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_21D0CF7E0(v28, &unk_27CE5EA00);
  memset(v10, 0, 24);
  v10[3] = 0x1FFFFFFFELL;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  v15 = 0xE000000000000000;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0xE000000000000000;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 2;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v0 = objc_allocWithZone(type metadata accessor for TTRIDetailCellContent(0));
  v1 = sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v10);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = MEMORY[0x277D85000];
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x108));
  swift_beginAccess();
  v5 = *v4;
  *v4 = sub_21D539B20;
  v4[1] = v2;
  v6 = v1;

  sub_21D0D0E88(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A750);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 48) = 1;
  *(v7 + 49) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 1;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  v8 = v6 + *((*v3 & *v6) + 0x70);
  swift_beginAccess();
  *(v8 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v7;
}

uint64_t sub_21D535DB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 112);
    swift_unknownObjectRetain();
    v3(ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D535E50()
{
  v0 = *(sub_21D52E528() + 32);

  v1 = MEMORY[0x277D85000];
  v2 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  LODWORD(v2) = v2[120];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v12[0] = -1;
  v12[1] = v3;
  v13 = 1;
  v4 = objc_allocWithZone(type metadata accessor for TTRIIntervalPickerCellContent(0));
  v5 = sub_21D978F60(v12);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = (v5 + qword_27CE64228);
  v8 = *(v5 + qword_27CE64228);
  *v7 = sub_21D539B18;
  v7[1] = v6;

  sub_21D0D0E88(v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9A8);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 48) = 1;
  *(v9 + 49) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  *(v9 + 72) = 1;
  *(v9 + 32) = v5;
  *(v9 + 40) = 0;
  v10 = v5 + *((*v1 & *v5) + 0x70);
  swift_beginAccess();
  *(v10 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t sub_21D536020(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 48);
    ObjectType = swift_getObjectType();
    v7[0] = v1;
    v7[1] = v2;
    v8 = v3;
    (*(v5 + 128))(v7, ObjectType, v5);
  }

  return result;
}

id sub_21D5360C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBFA12C();
  v4 = [objc_opt_self() _systemImageNamed_];

  if (*(v1 + 64))
  {
    result = 0;
    v6 = 0x80;
  }

  else
  {
    result = [objc_opt_self() tertiaryLabelColor];
    v6 = 0;
  }

  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 64) = v6;
  return result;
}

uint64_t sub_21D536170()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 88);
    swift_unknownObjectRetain();
    v3(1, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D536214()
{
  sub_21D5360C0(&v18);
  v16 = v19;
  v17 = v18;
  v14 = v21;
  v15 = v20;
  v0 = v22;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF516C();
  v3 = v2;
  v4 = sub_21D538F58(1);
  memset(v30, 0, 24);
  v30[3] = 0x1FFFFFFFELL;
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  sub_21D0CF7E0(v30, &unk_27CE5EA00);
  v19 = v16;
  v18 = v17;
  v21 = v14;
  v20 = v15;
  v22 = v0;
  v23 = v1;
  v24 = v3;
  v25 = 0;
  v26 = 0;
  v27 = v4;
  v28 = 0;
  v29 = 0;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D960));
  v6 = sub_21D538174(&v18, 0, 0, &qword_27CE5D970);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = MEMORY[0x277D85000];
  v9 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x100));
  swift_beginAccess();
  v10 = *v9;
  *v9 = sub_21D5395B4;
  v9[1] = v7;

  sub_21D0D0E88(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D968);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 48) = 1;
  *(v11 + 49) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  *(v11 + 32) = v6;
  *(v11 + 40) = 0;
  v12 = v6 + *((*v8 & *v6) + 0x70);
  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v11;
}

uint64_t sub_21D5364EC(uint64_t a1)
{
  v1 = *(a1 + 112);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 48);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 72);
    swift_unknownObjectRetain();
    v5(v1, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D53659C()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v0 = sub_21DBF516C();
  v2 = v1;
  v3 = [objc_opt_self() secondaryLabelColor];
  memset(v34, 0, 24);
  v34[3] = 0x1FFFFFFFELL;
  v35 = 0u;
  v36 = 0u;
  v37 = 0;
  sub_21D0CF7E0(v34, &unk_27CE5EA00);
  memset(v16, 0, 24);
  v16[3] = 0x1FFFFFFFELL;
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = v0;
  v21 = v2;
  v22 = v3;
  v23 = 0;
  v24 = 0;
  v25 = 0xE000000000000000;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v4 = objc_allocWithZone(type metadata accessor for TTRIDetailDisclosureCellContent(0));
  v5 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, v16);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = MEMORY[0x277D85000];
  v10 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  swift_beginAccess();
  v11 = *v10;
  *v10 = sub_21D5395AC;
  v10[1] = v8;
  v12 = v5;

  sub_21D0D0E88(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + 48) = 1;
  *(v13 + 49) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = v12 + *((*v9 & *v12) + 0x70);
  swift_beginAccess();
  *(v14 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v13;
}

uint64_t sub_21D5368EC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong viewIfLoaded];
      if (v4)
      {
        v5 = v4;
        v6 = UIView.firstResponderDescendant.getter();

        if (v6)
        {
          [v6 resignFirstResponder];
        }
      }
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v1 + 56);
      v9 = *((*MEMORY[0x277D85000] & *v7) + 0x68);
      v10 = v7;
      swift_beginAccess();
      v11 = *&v10[v9];
      v12 = v11;
      static TTRIPopoverAnchor.trailingPortion(in:permittedArrowDirections:)(v11, v8, 0, v17);

      v15[1] = v17[1];
      v16[0] = v18[0];
      *(v16 + 9) = *(v18 + 9);
      v15[0] = v17[0];
      v13 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      (*(v13 + 96))(1, v17, ObjectType, v13);

      return sub_21D0CF7E0(v15, &qword_27CE5D558);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21D536AA0()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v1 = sub_21D536AFC();
    *(v0 + 168) = v1;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  return v1;
}

uint64_t sub_21D536AFC()
{
  v18 = MEMORY[0x277D84F90];
  sub_21D18F1B0(0, 2, 0);
  v0 = v18;
  v1 = byte_282EA6FA0;
  if (byte_282EA6FA0)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF516C();
  v5 = *(v18 + 16);
  v4 = *(v18 + 24);
  if (v5 >= v4 >> 1)
  {
    v17 = v2;
    v14 = v3;
    sub_21D18F1B0((v4 > 1), v5 + 1, 1);
    v2 = v17;
    v3 = v14;
    v0 = v18;
  }

  *(v0 + 16) = v5 + 1;
  v6 = (v0 + 48 * v5);
  v6[4] = v2;
  v6[5] = v3;
  v6[6] = 0;
  v6[7] = v1;
  v6[8] = 0;
  v6[9] = 0;
  v7 = byte_282EA6FA1;
  if (byte_282EA6FA1)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }
  }

  else if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF516C();
  v19 = v0;
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);
  if (v11 >= v10 >> 1)
  {
    v15 = v8;
    v16 = v9;
    sub_21D18F1B0((v10 > 1), v11 + 1, 1);
    v9 = v16;
    v8 = v15;
    v0 = v19;
  }

  *(v0 + 16) = v11 + 1;
  v12 = (v0 + 48 * v11);
  v12[4] = v8;
  v12[5] = v9;
  v12[6] = 0;
  v12[7] = v7;
  v12[8] = 0;
  v12[9] = 0;
  return v0;
}

uint64_t sub_21D536E58()
{
  sub_21D537070(&v11);
  v0 = v12;
  v1 = sub_21D536AA0();
  memset(v19, 0, 24);
  v19[3] = 0x1FFFFFFFELL;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  sub_21D0CF7E0(v19, &unk_27CE5EA00);
  v12 = v0;
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = 0;
  v16 = 0;
  v17 = v1;
  v18 = 0;
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D938));
  v3 = sub_21D537F48(&v11, 0, 0);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = MEMORY[0x277D85000];
  v6 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0x100));
  swift_beginAccess();
  v7 = *v6;
  *v6 = sub_21D5395A4;
  v6[1] = v4;

  sub_21D0D0E88(v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D940);
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 48) = 1;
  *(v8 + 49) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 32) = v3;
  *(v8 + 40) = 0;
  v9 = v3 + *((*v5 & *v3) + 0x70);
  swift_beginAccess();
  *(v9 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v8;
}

uint64_t sub_21D537070@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 216);
  v4 = *(v1 + 248);
  v25[2] = *(v1 + 232);
  v25[3] = v4;
  v5 = *(v1 + 264);
  v26 = *(v1 + 264);
  v25[0] = *(v1 + 200);
  v25[1] = v3;
  if (*(&v3 + 1) >> 1 == 4294967294 && v5 < 2)
  {
    if (*(v1 + 64) == 1)
    {
      v6 = sub_21DBFA12C();
      v7 = [objc_opt_self() _systemImageNamed_];

      v8 = 0;
      v9 = 0x80;
    }

    else
    {
      v7 = 0;
      v9 = 0;
      v23 = 0u;
      v22 = 0u;
      v8 = 0x1FFFFFFFELL;
    }

    v20 = v7;
    *&v21 = 0;
    *(&v21 + 1) = v8;
    v11 = *(v1 + 216);
    v12 = *(v1 + 248);
    v18[2] = *(v1 + 232);
    v18[3] = v12;
    v18[0] = *(v1 + 200);
    v18[1] = v11;
    *(v1 + 216) = v21;
    v13 = v23;
    *(v1 + 232) = v22;
    *(v1 + 248) = v13;
    v24 = v9;
    v19 = *(v1 + 264);
    *(v1 + 264) = v9;
    *(v1 + 200) = v7;
    sub_21D0D3954(&v20, v17, &unk_27CE5EA00);
    sub_21D0CF7E0(v18, &qword_27CE5D950);
    v14 = v23;
    *(a1 + 32) = v22;
    *(a1 + 48) = v14;
    *(a1 + 64) = v24;
    v15 = v21;
    *a1 = v20;
    *(a1 + 16) = v15;
  }

  else
  {
    *a1 = *(v1 + 200);
    *(a1 + 16) = *(v1 + 216);
    *(a1 + 24) = *(&v3 + 1);
    v10 = *(v1 + 248);
    *(a1 + 32) = *(v1 + 232);
    *(a1 + 48) = v10;
    *(a1 + 64) = v5;
  }

  return sub_21D0D3954(v25, &v20, &qword_27CE5D950);
}

uint64_t sub_21D53723C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = *(a1 + 112);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 48);
    ObjectType = swift_getObjectType();
    if (v5)
    {
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      v9 = type metadata accessor for TTRRecurrenceEndModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
    }

    else
    {
      v10 = type metadata accessor for TTRRecurrenceEndModel(0);
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    }

    (*(v7 + 80))(v4, ObjectType, v7);
    sub_21D0CF7E0(v4, &unk_27CE62610);
  }

  return result;
}

uint64_t sub_21D5373D4()
{
  v0 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  v1 = v0 - 8;
  MEMORY[0x28223BE20](v0);
  v3 = &v14[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0x1FFFFFFFELL;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3[64] = 0;
  v16 = 0;
  v4 = *(v3 + 3);
  v15[2] = *(v3 + 2);
  v15[3] = v4;
  v5 = *(v3 + 1);
  v15[0] = *v3;
  v15[1] = v5;
  sub_21D0CF7E0(v15, &unk_27CE5EA00);
  *v3 = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *(v3 + 3) = 0x1FFFFFFFELL;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  v3[64] = 0;
  *(v3 + 9) = 0;
  *(v3 + 10) = 0xE000000000000000;
  *&v3[*(v1 + 36)] = 1;
  v6 = objc_allocWithZone(type metadata accessor for TTRITitledDatePickerCellContent(0));
  v7 = TTRITitledDatePickerCellContent.init(state:)(v3);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = (v7 + qword_27CE8EC48);
  swift_beginAccess();
  v10 = *v9;
  *v9 = sub_21D53959C;
  v9[1] = v8;

  sub_21D0D0E88(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D930);
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 48) = 1;
  *(v11 + 49) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 1;
  *(v11 + 32) = v7;
  *(v11 + 40) = 0;
  v12 = v7 + *((*MEMORY[0x277D85000] & *v7) + 0x70);
  swift_beginAccess();
  *(v12 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v11;
}

uint64_t sub_21D537608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);
    ObjectType = swift_getObjectType();
    v8 = *(type metadata accessor for TTRITitledDatePickerCellContentState(0) + 24);
    v9 = sub_21DBF563C();
    (*(*(v9 - 8) + 16))(v4, a1 + v8, v9);
    v10 = type metadata accessor for TTRRecurrenceEndModel(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
    (*(v6 + 80))(v4, ObjectType, v6);
    sub_21D0CF7E0(v4, &unk_27CE62610);
  }

  return result;
}

uint64_t sub_21D5377AC(uint64_t a1, void (*a2)(__int128 *__return_ptr), uint64_t a3, uint64_t a4, uint64_t a5)
{
  a2(&v25);
  v23 = v26;
  v24 = v25;
  v21 = v28;
  v22 = v27;
  v6 = v29;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF516C();
  v9 = v8;
  memset(v44, 0, 24);
  v44[3] = 0x1FFFFFFFELL;
  v45 = 0u;
  v46 = 0u;
  v47 = 0;
  sub_21D0CF7E0(v44, &unk_27CE5EA00);
  v25 = v24;
  v26 = v23;
  v27 = v22;
  v28 = v21;
  v29 = v6;
  v30 = v7;
  v31 = v9;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0xE000000000000000;
  v37 = 0;
  v38 = 0;
  v36 = 0;
  v39 = 2;
  v10 = type metadata accessor for TTRIDetailDisclosureCellContent(0);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v11 = objc_allocWithZone(v10);
  v12 = sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, &v25);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = MEMORY[0x277D85000];
  v15 = (v12 + *((*MEMORY[0x277D85000] & *v12) + 0x108));
  swift_beginAccess();
  v16 = *v15;
  *v15 = a5;
  v15[1] = v13;
  v17 = v12;

  sub_21D0D0E88(v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D958);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 48) = 1;
  *(v18 + 49) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 1;
  *(v18 + 32) = v17;
  *(v18 + 40) = 0;
  v19 = v17 + *((*v14 & *v17) + 0x70);
  swift_beginAccess();
  *(v19 + 1) = &protocol witness table for TTRITableCell<A>;
  swift_unknownObjectWeakAssign();
  return v18;
}

uint64_t sub_21D537A9C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 104);
    swift_unknownObjectRetain();
    v3(1, ObjectType, v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D537B40()
{
  v0 = *MEMORY[0x277D76438];
  v1 = sub_21DBFA12C();
  UIAccessibilityPostNotification(v0, v1);
}

uint64_t sub_21D537B98()
{
  MEMORY[0x223D46650](v0 + 16);

  swift_unknownObjectRelease();

  sub_21D539D7C(*(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264));
  return v0;
}

uint64_t sub_21D537C74()
{
  sub_21D537B98();

  return swift_deallocClassInstance();
}

uint64_t sub_21D537CD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E690);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21D537D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  v9 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x100));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *((*v8 & *v3) + 0x108));
  *v11 = a2;
  v11[1] = a3;
  v23 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA1AC();
  v14 = v13;
  *(v3 + *((*v8 & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v15 = v3 + *((*v8 & *v3) + 0x78);
  v16 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v16;
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v17;
  *(v15 + 64) = *(a1 + 128);
  v18 = *(a1 + 112);
  *(v15 + 6) = *(a1 + 96);
  *(v15 + 7) = v18;
  v19 = *(a1 + 80);
  *(v15 + 4) = *(a1 + 64);
  *(v15 + 5) = v19;
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v20 = (v3 + *((*v8 & *v3) + 0x88));
  *v20 = v12;
  v20[1] = v14;
  v22.receiver = v3;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9C0);
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21D537F48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  v9 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x100));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *((*v8 & *v3) + 0x108));
  *v11 = a2;
  v11[1] = a3;
  v22 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA1AC();
  v14 = v13;
  *(v3 + *((*v8 & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v15 = v3 + *((*v8 & *v3) + 0x78);
  v16 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v16;
  v17 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v17;
  *(v15 + 56) = *(a1 + 112);
  v18 = *(a1 + 96);
  *(v15 + 5) = *(a1 + 80);
  *(v15 + 6) = v18;
  *(v15 + 4) = *(a1 + 64);
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v19 = (v3 + *((*v8 & *v3) + 0x88));
  *v19 = v12;
  v19[1] = v14;
  v21.receiver = v3;
  v21.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D948);
  return objc_msgSendSuper2(&v21, sel_init);
}

id sub_21D538174(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x277D85000];
  v11 = (v4 + *((*MEMORY[0x277D85000] & *v4) + 0xF8));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + *((*v10 & *v4) + 0x100));
  *v12 = 0;
  v12[1] = 0;
  v13 = (v4 + *((*v10 & *v4) + 0x108));
  *v13 = a2;
  v13[1] = a3;
  v24 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v14 = sub_21DBFA1AC();
  v16 = v15;
  *(v4 + *((*v10 & *v4) + 0x68)) = 0;
  *(v4 + *((*v10 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v10 & *v4) + 0x90)) = 0;
  v17 = (v4 + *((*v10 & *v4) + 0x78));
  v18 = a1[3];
  v17[2] = a1[2];
  v17[3] = v18;
  v19 = a1[1];
  *v17 = *a1;
  v17[1] = v19;
  *(v17 + 105) = *(a1 + 105);
  v20 = a1[6];
  v17[5] = a1[5];
  v17[6] = v20;
  v17[4] = a1[4];
  *(v4 + *((*v10 & *v4) + 0x80)) = 0;
  v21 = (v4 + *((*v10 & *v4) + 0x88));
  *v21 = v14;
  v21[1] = v16;
  v23.receiver = v4;
  v23.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_21D538380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = MEMORY[0x277D85000];
  v9 = (v3 + *((*MEMORY[0x277D85000] & *v3) + 0xF8));
  *v9 = 0;
  v9[1] = 0;
  v10 = (v3 + *((*v8 & *v3) + 0x100));
  *v10 = 0;
  v10[1] = 0;
  v11 = (v3 + *((*v8 & *v3) + 0x108));
  *v11 = a2;
  v11[1] = a3;
  v26 = ObjectType;
  swift_getMetatypeMetadata();
  swift_unknownObjectRetain();
  v12 = sub_21DBFA1AC();
  v14 = v13;
  *(v3 + *((*v8 & *v3) + 0x68)) = 0;
  *(v3 + *((*v8 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v8 & *v3) + 0x90)) = 0;
  v15 = v3 + *((*v8 & *v3) + 0x78);
  v16 = *(a1 + 208);
  *(v15 + 12) = *(a1 + 192);
  *(v15 + 13) = v16;
  v15[224] = *(a1 + 224);
  v17 = *(a1 + 144);
  *(v15 + 8) = *(a1 + 128);
  *(v15 + 9) = v17;
  v18 = *(a1 + 176);
  *(v15 + 10) = *(a1 + 160);
  *(v15 + 11) = v18;
  v19 = *(a1 + 80);
  *(v15 + 4) = *(a1 + 64);
  *(v15 + 5) = v19;
  v20 = *(a1 + 112);
  *(v15 + 6) = *(a1 + 96);
  *(v15 + 7) = v20;
  v21 = *(a1 + 16);
  *v15 = *a1;
  *(v15 + 1) = v21;
  v22 = *(a1 + 48);
  *(v15 + 2) = *(a1 + 32);
  *(v15 + 3) = v22;
  *(v3 + *((*v8 & *v3) + 0x80)) = 0;
  v23 = (v3 + *((*v8 & *v3) + 0x88));
  *v23 = v12;
  v23[1] = v14;
  v25.receiver = v3;
  v25.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D9E0);
  return objc_msgSendSuper2(&v25, sel_init);
}

uint64_t sub_21D53859C(uint64_t a1)
{
  v2 = sub_21DBF604C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF516C();
  v8 = v7;
  v28[3] = &type metadata for TTRITablePlainTextContentConfigurationProvider;
  v28[0] = v6;
  v28[1] = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v28[4] = sub_21D5395CC;
  v28[5] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v8;
  v28[6] = sub_21D5395D4;
  v28[7] = v10;
  v28[8] = 0;
  v29 = 1;
  v26[3] = &type metadata for TTRITableEmptyContentConfigurationProvider;
  v26[4] = sub_21D539DD0;
  v26[5] = 0;
  v26[6] = sub_21D539DCC;
  v26[7] = 0;
  v26[8] = 0x4010000000000000;
  v27 = 0;
  if (*(a1 + 64) == 1)
  {
    sub_21D539630(v28, v25);
    sub_21D539630(v26, v24);
  }

  else
  {
    memset(v25, 0, 73);
    memset(v24, 0, 73);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D978);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21DC10990;
  swift_bridgeObjectRetain_n();
  *(v11 + 32) = sub_21D52E424();
  *(v11 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v11 + 48) = sub_21D52E4C8();
  *(v11 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v11 + 64) = sub_21D52E528();
  *(v11 + 72) = &protocol witness table for TTRITableCell<A>;
  *(v11 + 80) = sub_21D52E5CC();
  *(v11 + 88) = &protocol witness table for TTRITableCell<A>;
  v12 = *(v3 + 104);
  v12(v5, *MEMORY[0x277D44D90], v2);
  v13 = sub_21DBF603C();
  v14 = *(v3 + 8);
  v14(v5, v2);
  if (v13)
  {
    v15 = sub_21D52E62C();
    v16 = &protocol witness table for TTRITableCell<A>;
  }

  else
  {
    v15 = 0;
    v16 = 0;
  }

  *(v11 + 96) = v15;
  *(v11 + 104) = v16;
  v12(v5, *MEMORY[0x277D44DC0], v2);
  v17 = sub_21DBF603C();
  v14(v5, v2);
  if (v17)
  {
    v18 = sub_21D52E68C();
    v19 = &protocol witness table for TTRITableCell<A>;
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  *(v11 + 112) = v18;
  *(v11 + 120) = v19;
  v23[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DDC0);
  sub_21D0D0F1C(&unk_27CE5EB60, &unk_27CE5EB50);
  v20 = sub_21DBFA41C();

  type metadata accessor for TTRITableSection();
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v21 + 200) = 0;
  *(v21 + 208) = 0;
  *(v21 + 48) = 0u;
  *(v21 + 64) = 0u;
  *(v21 + 80) = 0u;
  *(v21 + 89) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 128) = 0u;
  *(v21 + 144) = 0u;
  *(v21 + 160) = 0u;
  *(v21 + 169) = 0u;
  *(v21 + 112) = 0u;
  *(v21 + 216) = 1;
  swift_beginAccess();
  sub_21D313A24(v25, v21 + 32);
  swift_endAccess();
  swift_beginAccess();
  sub_21D313A24(v24, v21 + 112);
  swift_endAccess();
  *(v21 + 192) = v20;
  sub_21D5395DC(v26);
  sub_21D5395DC(v28);
  return v21;
}

void *sub_21D538A94(uint64_t a1, __int128 *a2)
{
  v44 = *a2;
  LOBYTE(v3) = *(a2 + 16);
  if (qword_280D1BAA8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v4 = sub_21DBF516C();
  v6 = v5;
  v7 = sub_21D2138B4(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_21D2138B4((v8 > 1), v9 + 1, 1, v7);
    v8 = v7[3];
    v10 = v8 >> 1;
  }

  v7[2] = v11;
  v12 = &v7[8 * v9];
  v12[4] = v4;
  v12[5] = v6;
  v12[7] = 0;
  v12[8] = 0;
  v12[6] = 0;
  *(v12 + 72) = 0;
  v12[10] = 0;
  v12[11] = 0;
  if (v10 < (v9 + 2))
  {
    v7 = sub_21D2138B4((v8 > 1), v9 + 2, 1, v7);
  }

  v7[2] = v9 + 2;
  v13 = &v7[8 * v11];
  v13[2] = 0u;
  v13[3] = 0u;
  v13[4] = 0u;
  v13[5] = 0u;
  v49 = v7;
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v43 = v3;
    v48 = MEMORY[0x277D84F90];
    sub_21D18F150(0, v14, 0);
    v15 = v48;
    v3 = (a1 + 48);
    while (1)
    {
      v16 = *(v3 - 2);
      a1 = *(v3 - 1);
      v17 = *v3;
      if (v16 < 0)
      {
        if (__OFSUB__(0, v16))
        {
          __break(1u);
          goto LABEL_24;
        }

        v23 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO25earlyAlertBeforeCountText5count12intervalUnitSSSi_So015REMDueDateDeltaN0VtFZ_0(-v16, *(v3 - 1));
        v45 = v24;
        v46 = v23;
        v21 = _s15RemindersUICore21TTRLocalizableStringsO14ReminderDetailO19earlyAlertCountText5count12intervalUnitSSSi_So015REMDueDateDeltaM0VtFZ_0(-v16, a1);
      }

      else
      {
        v18 = *(v3 - 1);
        v19 = sub_21DBF516C();
        v45 = v20;
        v46 = v19;
        a1 = v18;
        v21 = sub_21DBF516C();
      }

      v48 = v15;
      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        v42 = v21;
        v28 = v22;
        sub_21D18F150((v25 > 1), v26 + 1, 1);
        v22 = v28;
        v21 = v42;
        v15 = v48;
      }

      v15[2] = v26 + 1;
      v27 = &v15[8 * v26];
      v27[4] = v46;
      v27[5] = v45;
      v27[6] = 0;
      v27[7] = v16;
      v27[8] = a1;
      *(v27 + 72) = v17;
      *(v27 + 73) = *v47;
      *(v27 + 19) = *&v47[3];
      v27[10] = v21;
      v27[11] = v22;
      v3 += 24;
      if (!--v14)
      {
        LOBYTE(v3) = v43;
        break;
      }
    }
  }

  sub_21D562CDC(v15);
  v29 = v49;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_21D2138B4(0, v49[2] + 1, 1, v49);
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_21D2138B4((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v32 = &v29[8 * v31];
  v32[2] = 0u;
  v32[3] = 0u;
  v32[4] = 0u;
  v32[5] = 0u;
  v33 = sub_21DBF516C();
  v36 = v29[2];
  v35 = v29[3];
  if (v36 >= v35 >> 1)
  {
    v39 = v3;
    v3 = v33;
    v40 = v34;
    v41 = sub_21D2138B4((v35 > 1), v36 + 1, 1, v29);
    v34 = v40;
    v29 = v41;
    v33 = v3;
    LOBYTE(v3) = v39;
  }

  v29[2] = v36 + 1;
  v37 = &v29[8 * v36];
  v37[4] = v33;
  v37[5] = v34;
  v37[6] = 0;
  *(v37 + 7) = v44;
  *(v37 + 72) = v3;
  *(v37 + 73) = v48;
  *(v37 + 19) = *(&v48 + 3);
  v37[10] = 0;
  v37[11] = 0;
  return v29;
}

void *sub_21D538F58(char a1)
{
  v45 = objc_opt_self();
  v2 = [v45 localizedDescriptionForRepeatType_];
  v3 = sub_21DBFA16C();
  v5 = v4;

  v6 = MEMORY[0x277D84F90];
  v7 = sub_21D213A0C(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    v7 = sub_21D213A0C((v8 > 1), v9 + 1, 1, v7);
    v8 = v7[3];
    v10 = v8 >> 1;
  }

  v7[2] = v11;
  v12 = &v7[6 * v9];
  v12[4] = v3;
  v12[5] = v5;
  v13 = 0uLL;
  *(v12 + 3) = 0u;
  *(v12 + 4) = 0u;
  if (v10 < (v9 + 2))
  {
    v44 = sub_21D213A0C((v8 > 1), v9 + 2, 1, v7);
    v13 = 0uLL;
    v7 = v44;
  }

  v7[2] = v9 + 2;
  v14 = &v7[6 * v11];
  v14[3] = v13;
  v14[4] = v13;
  v14[2] = v13;
  v46 = v7;
  if (a1)
  {
    v15 = [v45 localizedDescriptionForRepeatType_];
    v16 = sub_21DBFA16C();
    v18 = v17;

    v20 = v7[2];
    v19 = v7[3];
    if (v20 >= v19 >> 1)
    {
      v7 = sub_21D213A0C((v19 > 1), v20 + 1, 1, v7);
    }

    v7[2] = v20 + 1;
    v21 = &v7[6 * v20];
    v21[4] = v16;
    v21[5] = v18;
    *(v21 + 3) = xmmword_21DC19C40;
    v21[8] = 0;
    v21[9] = 0;
    v46 = v7;
  }

  sub_21D18F170(0, 9, 0);
  v22 = 0x20u;
  v23 = v6;
  do
  {
    v24 = *(&unk_282EA6F18 + v22);
    v25 = [v45 localizedDescriptionForRepeatType_];
    v26 = sub_21DBFA16C();
    v28 = v27;

    v30 = v23[2];
    v29 = v23[3];
    if (v30 >= v29 >> 1)
    {
      sub_21D18F170((v29 > 1), v30 + 1, 1);
    }

    v23[2] = v30 + 1;
    v31 = &v23[6 * v30];
    v31[4] = v26;
    v31[5] = v28;
    v31[6] = 0;
    v31[7] = v24;
    v31[8] = 0;
    v31[9] = 0;
    v22 += 8;
  }

  while (v22 != 104);
  sub_21D562DE0(v23);
  v32 = v46;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_21D213A0C(0, v46[2] + 1, 1, v46);
  }

  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_21D213A0C((v33 > 1), v34 + 1, 1, v32);
  }

  v32[2] = v34 + 1;
  v35 = &v32[6 * v34];
  v35[2] = 0u;
  v35[3] = 0u;
  v35[4] = 0u;
  v36 = [v45 localizedDescriptionForRepeatType_];
  v37 = sub_21DBFA16C();
  v39 = v38;

  v41 = v32[2];
  v40 = v32[3];
  if (v41 >= v40 >> 1)
  {
    v32 = sub_21D213A0C((v40 > 1), v41 + 1, 1, v32);
  }

  v32[2] = v41 + 1;
  v42 = &v32[6 * v41];
  v42[4] = v37;
  v42[5] = v39;
  *(v42 + 3) = xmmword_21DC1A0F0;
  v42[8] = 0;
  v42[9] = 0;
  return v32;
}

uint64_t sub_21D5392E0(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 == 1)
  {
    v16 = 0;
    v2 = 0x4010000000000000;
    v3 = sub_21D539DCC;
    v4 = sub_21D539DD0;
    v5 = &type metadata for TTRITableEmptyContentConfigurationProvider;
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v3 = 0;
    v2 = 0;
    v16 = 0;
    memset(v15, 0, 24);
  }

  v15[3] = v5;
  v15[4] = v4;
  v15[5] = 0;
  v15[6] = v3;
  v15[7] = 0;
  v15[8] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EB30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_21DC08D10;
  *(v6 + 32) = sub_21D52E74C();
  *(v6 + 40) = &protocol witness table for TTRITableCell<A>;
  *(v6 + 48) = sub_21D52E7AC();
  *(v6 + 56) = &protocol witness table for TTRITableCell<A>;
  *(v6 + 64) = sub_21D52E80C();
  *(v6 + 72) = &protocol witness table for TTRITableCell<A>;
  v14 = v6;
  if (sub_21D52E86C())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21DC0AFB0;
    *(v7 + 32) = sub_21D52E8E4();
    *(v7 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 48) = sub_21D52E944();
    *(v7 + 56) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 64) = sub_21D52E9A4();
    *(v7 + 72) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 80) = sub_21D52EA04();
    v8 = (v7 + 88);
  }

  else
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21DC08D20;
    *(v7 + 32) = sub_21D52EA64();
    *(v7 + 40) = &protocol witness table for TTRITableCell<A>;
    *(v7 + 48) = sub_21D52EAFC();
    v8 = (v7 + 56);
  }

  *v8 = &protocol witness table for TTRITableCell<A>;
  if (v1)
  {
    sub_21DBD1864(0, 0, v7);
  }

  else
  {
    sub_21D562A50(v7);
  }

  sub_21D0D3954(v15, v13, &qword_27CE5E690);
  memset(v12, 0, 73);
  v9 = v14;
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
  sub_21D313A24(v13, v10 + 32);
  swift_endAccess();
  swift_beginAccess();
  sub_21D313A24(v12, v10 + 112);
  swift_endAccess();
  *(v10 + 192) = v9;
  sub_21D0CF7E0(v15, &qword_27CE5E690);
  return v10;
}

uint64_t sub_21D5396B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF9D2C();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF9D5C();
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21DBF9D7C();
  v23 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_21D0CE468();
  v21 = sub_21DBFB12C();
  sub_21DBF9D6C();
  sub_21DBF9D9C();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_21D539A88;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0D74FC;
  aBlock[3] = &block_descriptor_45;
  v18 = _Block_copy(aBlock);
  sub_21DBF8E0C();

  sub_21DBF9D4C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21D0F1CF8(&qword_280D1B920, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
  sub_21D0D0F1C(&qword_280D1B910, &unk_27CE5CD60);
  sub_21DBFBCBC();
  v19 = v21;
  MEMORY[0x223D43880](v16, v9, v6, v18);
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

uint64_t sub_21D539AA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE628E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D539B30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D539C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIDatePickerCellContentState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D539CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D539D14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21D539D7C(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a4 >> 1 != 4294967294 || a9 >= 2u)
  {
    sub_21D539DA4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

void sub_21D539DA4(void *a1, void *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  if (a4 >> 1 != 0xFFFFFFFF || a9 >= 2u)
  {
    sub_21D362050(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRRemindersBoardPresentationTreesManagementPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t sub_21D539F3C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  swift_beginAccess();
  sub_21D53BDA0(v1 + v15, v14);
  v16 = *(v4 + 48);
  if (v16(v14, 1, v3) == 1)
  {
    v25 = a1;
    sub_21D0CF7E0(v14, &qword_27CE58A90);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      (*(v17 + 8))(v1, ObjectType, v17);
      swift_unknownObjectRelease();
      v19 = *(v4 + 56);
      v19(v11, 0, 1, v3);
      v20 = v26;
      sub_21D53BE10(v11, v26, type metadata accessor for TTRRemindersBoardPresentationTrees);
    }

    else
    {
      v19 = *(v4 + 56);
      v19(v11, 1, 1, v3);
      v20 = v26;
      sub_21D53B1B4(v26);
      if (v16(v11, 1, v3) != 1)
      {
        sub_21D0CF7E0(v11, &qword_27CE58A90);
      }
    }

    sub_21D53BE78(v20, v8);
    v19(v8, 0, 1, v3);
    swift_beginAccess();
    sub_21D0F02F4(v8, v1 + v15, &qword_27CE58A90);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v1 + 24);
      v22 = swift_getObjectType();
      (*(v21 + 24))(v1, v22, v21);
      swift_unknownObjectRelease();
    }

    a1 = v25;
  }

  else
  {
    v20 = v14;
  }

  return sub_21D53BE10(v20, a1, type metadata accessor for TTRRemindersBoardPresentationTrees);
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.__allocating_init()()
{
  v0 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v0);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  v3 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v8 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredAction;
  sub_21D0CE468();
  v4 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v5 = swift_allocObject();
  v5[3] = 0;
  swift_unknownObjectWeakInit();
  v6 = MEMORY[0x277D84F90];
  sub_21D0D8A08(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v5[5] = sub_21DBF5EEC();
  v5[6] = v6;
  v5[4] = v4;
  *(v1 + v8) = v5;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  swift_beginAccess();
  v5[3] = &protocol witness table for TTRRemindersBoardPresentationTreesManagementPresenterCapability;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.init()()
{
  v1 = v0;
  v2 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v2);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  v4 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v9 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredAction;
  sub_21D0CE468();
  v5 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x277D84F90];
  sub_21D0D8A08(&qword_280D0C860, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v6[5] = sub_21DBF5EEC();
  v6[6] = v7;
  v6[4] = v5;
  *(v1 + v9) = v6;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  swift_beginAccess();
  v6[3] = &protocol witness table for TTRRemindersBoardPresentationTreesManagementPresenterCapability;
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForDataModelUpdate(shouldReload:itemIDsToForceUpdate:animated:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  swift_beginAccess();
  sub_21D0F02F4(v11, v4 + v13, &qword_27CE58A90);
  swift_endAccess();
  if (a1)
  {
    v14 = 2;
  }

  else
  {
    v14 = a3;
  }

  v15 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  sub_21D539F3C(&a4[*(v15 + 20)]);
  *a4 = v14;
  *&a4[*(v15 + 24)] = a2;
  return sub_21DBF8E0C();
}

uint64_t sub_21D53A8E4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v39 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA38);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = v17;
    v21 = v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
    swift_beginAccess();
    v22 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
    {
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v1 + 24);
        ObjectType = swift_getObjectType();
        (*(v23 + 16))(v1, ObjectType, v23);
        swift_unknownObjectRelease();
        (*(v16 + 56))(v14, 0, 1, v20);
        sub_21D53BE10(v14, v19, type metadata accessor for TTRRemindersBoardCellPresentationStates);
      }

      else
      {
        v27 = *(v16 + 56);
        v42 = v20;
        v27(v14, 1, 1, v20);
        v28 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 56);
        v41 = v29 + 56;
        v30(v11, 1, 1, v28);
        v30(v8, 1, 1, v28);
        v31 = v30;
        v32 = sub_21D1782FC(MEMORY[0x277D84F90]);
        v33 = v42;
        v39 = *(v42 + 28);
        v40 = v32;
        v31(&v19[v39], 1, 1, v28);
        v34 = *(v33 + 32);
        v31(&v19[v34], 1, 1, v28);
        *v19 = 0;
        v19[2] = 0;
        sub_21D0F02F4(v11, &v19[v39], &qword_27CE5FB90);
        sub_21D0F02F4(v8, &v19[v34], &qword_27CE5FB90);
        v35 = v42;
        v36 = MEMORY[0x277D84FA0];
        *&v19[*(v42 + 36)] = MEMORY[0x277D84FA0];
        v37 = &v19[*(v35 + 40)];
        *v37 = 3;
        *(v37 + 1) = v40;
        *&v19[*(v35 + 44)] = v36;
        if ((*(v16 + 48))(v14, 1) != 1)
        {
          sub_21D0CF7E0(v14, &qword_27CE5DA38);
        }
      }

      sub_21D53BD3C(v19, v21 + *(v22 + 28));
    }
  }

  else
  {
    v25 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
    (*(*(v25 - 8) + 56))(v5, 1, 1, v25);
    v26 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
    swift_beginAccess();
    sub_21D0F02F4(v5, v1 + v26, &qword_27CE58A90);
  }

  return swift_endAccess();
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForMoves()@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v7, &qword_27CE58A90);
  swift_endAccess();
  v8 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  result = sub_21D539F3C(&a1[*(v8 + 20)]);
  *a1 = 1;
  *&a1[*(v8 + 24)] = MEMORY[0x277D84FA0];
  return result;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForUpdatedItems(_:)@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A3B0);
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  sub_21D0D0F1C(&qword_280D0C3E8, &qword_27CE5A3B0);
  sub_21D0D8A08(&qword_280D19570, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v2 = sub_21DBFA42C();
  v3 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  result = sub_21D539F3C(&a1[*(v3 + 20)]);
  *a1 = 4;
  *&a1[*(v3 + 24)] = v2;
  return result;
}

uint64_t sub_21D53B050@<X0>(char *a1@<X8>)
{
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(a1);
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  return (*(*(v2 - 8) + 56))(a1, 0, 1, v2);
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.makeUpdatesForReloadingView()@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  result = sub_21D539F3C(&a1[*(v2 + 20)]);
  *a1 = 2;
  *&a1[*(v2 + 24)] = MEMORY[0x277D84FA0];
  return result;
}

Swift::Void __swiftcall TTRRemindersBoardPresentationTreesManagementPresenterCapability.scheduleUpdate(for:)(RemindersUICore::TTRRemindersBoardPresentationTreesManagementPresenterCapability::DeferredUpdateFlags a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags);
  v3 = v2 | *a1.rawValue;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = v3;
  if (v3 != v2 && v3 != 0)
  {
    v5._object = 0x800000021DC5F690;
    v5._countAndFlagsBits = 0xD000000000000013;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
  }
}

uint64_t sub_21D53B1B4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v3;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v8 = (v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v12 = sub_21D178314(MEMORY[0x277D84F90]);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA40);
  v14 = swift_allocObject();
  v26[0] = v11;
  v27 = MEMORY[0x277D84F98];
  sub_21DB8583C(v11, v26, &v27);
  v15 = v27;
  v14[2] = v26[0];
  v14[3] = v15;
  v14[4] = v12;
  v26[3] = v13;
  v26[4] = sub_21D0D0F1C(&qword_27CE5DA48, &qword_27CE5DA40);
  v26[0] = v14;
  v16 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v6, 1, 1, v16);
  v17(v3, 1, 1, v16);

  v18 = sub_21D1782FC(v11);
  v19 = v8[9];
  v17(&v10[v19], 1, 1, v16);
  v20 = v8[10];
  v17(&v10[v20], 1, 1, v16);
  *v10 = 0;
  v10[2] = 0;
  sub_21D0F02F4(v6, &v10[v19], &qword_27CE5FB90);
  sub_21D0F02F4(v24, &v10[v20], &qword_27CE5FB90);
  v21 = MEMORY[0x277D84FA0];
  *&v10[v8[11]] = MEMORY[0x277D84FA0];
  v22 = &v10[v8[12]];
  *v22 = 3;
  *(v22 + 1) = v18;
  *&v10[v8[13]] = v21;
  sub_21DB8FEF8(v26, 0, 0, v10, v25);
}

void sub_21D53B4A0()
{
  v1 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  if (v7)
  {
    if ((v7 & 5) != 0)
    {
      v8 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
      v9 = 1;
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v10 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
      swift_beginAccess();
      sub_21D0F02F4(v6, v0 + v10, &qword_27CE58A90);
      swift_endAccess();
    }

    else
    {
      if ((v7 & 2) != 0)
      {
        sub_21D53A8E4(1);
      }

      v9 = 3;
    }

    sub_21D539F3C(&v3[*(v1 + 20)]);
    *v3 = v9;
    *&v3[*(v1 + 24)] = MEMORY[0x277D84FA0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(v0, v3, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    sub_21D53B990(v3);
  }
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees, &qword_27CE58A90);

  return v0;
}

uint64_t TTRRemindersBoardPresentationTreesManagementPresenterCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees, &qword_27CE58A90);

  return swift_deallocClassInstance();
}

void TTRRemindersBoardPresentationTreesManagementPresenterCapability.deferredActionPerform(_:reason:)()
{
  v1 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags);
  *(v0 + OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_deferredUpdateFlags) = 0;
  if (v7)
  {
    if ((v7 & 5) != 0)
    {
      v8 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
      v9 = 1;
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      v10 = OBJC_IVAR____TtC15RemindersUICore63TTRRemindersBoardPresentationTreesManagementPresenterCapability_cachedPresentationTrees;
      swift_beginAccess();
      sub_21D0F02F4(v6, v0 + v10, &qword_27CE58A90);
      swift_endAccess();
    }

    else
    {
      if ((v7 & 2) != 0)
      {
        sub_21D53A8E4(1);
      }

      v9 = 3;
    }

    sub_21D539F3C(&v3[*(v1 + 20)]);
    *v3 = v9;
    *&v3[*(v1 + 24)] = MEMORY[0x277D84FA0];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 32))(v0, v3, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    sub_21D53B990(v3);
  }
}

uint64_t sub_21D53B990(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersBoardPresentationTreeUpdates(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D53B9F0()
{
  result = qword_27CE5DA00;
  if (!qword_27CE5DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DA00);
  }

  return result;
}

unint64_t sub_21D53BA48()
{
  result = qword_27CE5DA08;
  if (!qword_27CE5DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DA08);
  }

  return result;
}

unint64_t sub_21D53BAA0()
{
  result = qword_27CE5DA10;
  if (!qword_27CE5DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DA10);
  }

  return result;
}

unint64_t sub_21D53BAF8()
{
  result = qword_27CE5DA18;
  if (!qword_27CE5DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE5DA18);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersBoardPresentationTreesManagementPresenterCapability()
{
  result = qword_27CE5DA20;
  if (!qword_27CE5DA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D53BBF0()
{
  sub_21D53BCD4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D53BCD4()
{
  if (!qword_27CE5DA30)
  {
    type metadata accessor for TTRRemindersBoardPresentationTrees(255);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE5DA30);
    }
  }
}

uint64_t sub_21D53BD3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D53BDA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D53BE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D53BE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersBoardPresentationTrees(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D53BEDC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DA50);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DA50);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D53BFA4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_21DBF84BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE569A0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_27CE5DA50);
  (*(v12 + 16))(v14, v15, v11);
  v16 = *(v3 + 24);
  v17 = *(v3 + 32);
  sub_21D53C300(a3, v7);
  v18 = sub_21DBF66FC();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_21D0CF7E0(v7, &unk_27CE650B0);
    v20 = 1;
  }

  else
  {
    sub_21DBF66EC();
    (*(v19 + 8))(v7, v18);
    v20 = 0;
  }

  v21 = sub_21DBF54CC();
  (*(*(v21 - 8) + 56))(v10, v20, 1, v21);
  sub_21DAEAF90(v16, v17, v23, v24, v10);
  sub_21D0CF7E0(v10, &qword_27CE5EA20);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21D53C29C()
{
  MEMORY[0x223D46650](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D53C300(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE650B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21D53C374(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v7 = v4;
  if (v4)
  {
    v5 = [v4 children];
    sub_21D0D8CF0(0, &qword_27CE5DE90);
    v6 = sub_21DBFA5EC();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  a1(v6);
}

uint64_t _sSo6UIMenuC15RemindersUICoreE12ttr_uncached7options_ABSo0A7OptionsV_ABSgyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  aBlock[4] = sub_21D53C5B8;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D67DAF4;
  aBlock[3] = &block_descriptor_46;
  v7 = _Block_copy(aBlock);

  v8 = [v5 elementWithUncachedProvider_];
  _Block_release(v7);
  sub_21D0D8CF0(0, &qword_280D0C1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21DC09CF0;
  *(v9 + 32) = v8;
  return sub_21DBFB58C();
}

uint64_t sub_21D53C5C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5DA68);
  v1 = __swift_project_value_buffer(v0, qword_27CE5DA68);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTREditTodaySectionsInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTREditTodaySectionsInteractor.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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

uint64_t TTREditTodaySectionsInteractor.sectionOrdering.getter()
{
  v1 = sub_21DBF760C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v0 + v5, 1, v1);
  result = 0;
  if (!v6)
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    v8 = sub_21DBF75FC();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return result;
}

uint64_t TTREditTodaySectionsInteractor.__allocating_init(store:undoManager:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  TTREditTodaySectionsInteractor.init(store:undoManager:)(a1, a2);
  return v4;
}

char *TTREditTodaySectionsInteractor.init(store:undoManager:)(void *a1, void *a2)
{
  *(v2 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 6) = 0;
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  v6 = sub_21DBF760C();
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_dataViewMonitor] = 0;
  *(v2 + 4) = a1;
  *(v2 + 5) = a2;
  v7 = a1;
  v8 = a2;
  v9 = sub_21D5512B8(a2, v2, sub_21D53CA2C, 0);

  *(v2 + 6) = v9;

  return v2;
}

uint64_t sub_21D53CA2C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall TTREditTodaySectionsInteractor.start()()
{
  v1 = sub_21DBFB11C();
  v64 = *(v1 - 8);
  v65 = v1;
  MEMORY[0x28223BE20](v1);
  v63 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA90);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v14 = *(v0 + 32);
  type metadata accessor for TTREditTodaySectionsMonitorableDataView();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v68 = v15;
  v16 = sub_21DBF760C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v57 = sub_21D0D8CF0(0, &qword_280D1B900);
  v17 = v14;

  v18 = sub_21DBFB12C();
  v53 = v18;
  sub_21DBF60DC();
  v58 = sub_21DBF60BC();
  v19 = sub_21DBF60AC();
  v52 = v19;
  v67 = *MEMORY[0x277D76648];
  v55 = *MEMORY[0x277D76768];
  v20 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA98);
  v21 = swift_allocObject();
  v22 = *(*v21 + 104);
  v23 = *(v9 + 56);
  v23(v21 + v22, 1, 1, v8);
  v24 = (v21 + *(*v21 + 136));
  *v24 = 0;
  v24[1] = 0;
  *(v21 + *(*v21 + 112)) = v18;
  *(v21 + *(*v21 + 120)) = v19;
  sub_21D0D3954(v13, v21 + *(*v21 + 96), &qword_27CE5C3D8);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  swift_storeEnumTagMultiPayload();
  v25 = v13;
  v26 = v13;
  v27 = v54;
  sub_21D0D3954(v25, v54, &qword_27CE5C3D8);
  v23(v27, 0, 1, v8);
  swift_beginAccess();
  v28 = v67;
  v29 = v20;
  v53 = v53;
  v52 = v52;
  sub_21D0F02F4(v27, v21 + v22, &qword_27CE5DA90);
  swift_endAccess();
  sub_21DBF9D4C();
  v69 = MEMORY[0x277D84F90];
  sub_21D0D9388(&qword_280D17808, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00);
  sub_21DBFBCBC();
  (*(v64 + 104))(v63, *MEMORY[0x277D85260], v65);
  v30 = sub_21DBFB14C();
  v31 = v60;
  sub_21D0D3954(v26, v60, &qword_27CE5C3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAA0);
  v32 = swift_allocObject();
  *(v32 + 72) = 0u;
  *(v32 + 88) = 0u;
  *(v32 + 104) = 0;
  *(v32 + 108) = -1;
  *(v32 + 120) = 0;
  *(v32 + 128) = 1;
  v33 = *(*v32 + 216);
  v34 = swift_slowAlloc();
  *(v32 + v33) = v34;
  *(v32 + *(*v32 + 224)) = 0;
  v35 = v58;
  *(v32 + 16) = v30;
  *(v32 + 24) = v35;
  v36 = v68;
  *(v32 + 32) = v52;
  *(v32 + 40) = v36;
  sub_21D0D3954(v31, v32 + *(*v32 + 208), &qword_27CE5C3D8);
  swift_storeEnumTagMultiPayload();
  *v34 = 0;

  sub_21D0CF7E0(v31, &qword_27CE5C3D8);
  sub_21D0CF7E0(v26, &qword_27CE5C3D8);
  v37 = v55;
  *(v32 + 48) = v67;
  *(v32 + 56) = v37;
  *(v32 + 64) = 1;
  *(v21 + *(*v21 + 128)) = v32;
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v40 = v66;
  swift_weakInit();
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  *(v41 + 24) = v39;
  v42 = *(v32 + 72);
  *(v32 + 72) = sub_21D55164C;
  *(v32 + 80) = v41;

  sub_21D0D0E88(v42);

  v43 = *(v21 + *(*v21 + 128));
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = *(v43 + 88);
  *(v43 + 88) = sub_21D551654;
  *(v43 + 96) = v44;

  sub_21D0D0E88(v45);

  v46 = swift_allocObject();
  swift_weakInit();
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v47;
  v49 = (v21 + *(*v21 + 136));
  v50 = *v49;
  *v49 = sub_21D55165C;
  v49[1] = v48;

  sub_21D0D0E88(v50);

  *(v40 + OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_dataViewMonitor) = v21;

  sub_21D400F88(1);
}

uint64_t TTREditTodaySectionsMonitorableDataView.__allocating_init(store:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t TTREditTodaySectionsInteractor.saveNewOrdering(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D53D4AC, 0, 0);
}

uint64_t sub_21D53D4AC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v0[3] + 32);
  sub_21DBFA85C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  v6 = v3;
  sub_21DBF8E0C();
  v7 = sub_21D392FF0(0, 0, v1, &unk_21DC1A658, v5);
  v0[5] = v7;
  sub_21D0CF7E0(v1, &unk_27CE5F150);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_21D53D620;
  v9 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 7, v7, v9);
}

uint64_t sub_21D53D620()
{

  return MEMORY[0x2822009F8](sub_21D53D71C, 0, 0);
}

uint64_t sub_21D53D71C()
{

  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D53D78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v6 = sub_21DBFB32C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v7 = sub_21DBFAE6C();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D53D8AC, 0, 0);
}

uint64_t sub_21D53D8AC()
{
  v39 = v0;
  if (qword_27CE569A8 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_27CE5DA68);
  v2 = sub_21DBF84AC();
  v3 = sub_21DBFAEDC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21D0C9000, v2, v3, "TTREditTodaySectionsInteractor: save new ordering", v4, 2u);
    MEMORY[0x223D46520](v4, -1, -1);
  }

  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  (*(v6 + 104))(v5, *MEMORY[0x277D459E0], v7);
  v8 = sub_21DBFB73C();
  *(v0 + 128) = v8;
  v19 = *(v0 + 56);
  (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  v20 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  *(v0 + 136) = v20;
  v21 = [v20 updateSmartList_];
  *(v0 + 144) = v21;
  v22 = [v21 sectionsContextChangeItem];
  *(v0 + 152) = v22;
  if (v22)
  {
    v23 = *(v0 + 64);
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = *(v0 + 80);
      v38 = MEMORY[0x277D84F90];
      sub_21DBFC01C();
      v28 = *(v25 + 16);
      v26 = v25 + 16;
      v27 = v28;
      v29 = v23 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v30 = *(v26 + 56);
      do
      {
        v31 = *(v0 + 88);
        v32 = *(v0 + 72);
        v27(v31, v29, v32);
        sub_21DBFB30C();
        (*(v26 - 8))(v31, v32);
        sub_21DBFBFEC();
        sub_21DBFC03C();
        sub_21DBFC04C();
        sub_21DBFBFFC();
        v29 += v30;
        --v24;
      }

      while (v24);
    }

    sub_21D0D8CF0(0, &qword_27CE59840);
    sub_21DBF80CC();

    sub_21D0D8CF0(0, &qword_280D1B900);
    v33 = sub_21DBFB12C();
    *(v0 + 160) = v33;
    v34 = swift_task_alloc();
    *(v0 + 168) = v34;
    *v34 = v0;
    v34[1] = sub_21D53DDF4;

    return MEMORY[0x2821A7AD0](v33);
  }

  else
  {
    v35 = objc_opt_self();
    v36 = sub_21DBFA12C();
    v37 = [v35 internalErrorWithDebugDescription_];

    swift_willThrow();
    v9 = v37;
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEBC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = sub_21DBFC75C();
      v16 = sub_21D0CDFB4(v14, v15, &v38);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_21D0C9000, v10, v11, "TTREditTodaySectionsInteractor: failed to save new ordering {error: %{public}s}", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D46520](v13, -1, -1);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    else
    {
    }

    **(v0 + 48) = 0;

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_21D53DDF4()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_21D53E028;
  }

  else
  {

    v3 = sub_21D53DF10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21D53DF10()
{
  v1 = sub_21DBF84AC();
  v2 = sub_21DBFAEBC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21D0C9000, v1, v2, "TTREditTodaySectionsInteractor: new ordering saved", v8, 2u);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  **(v0 + 48) = 1;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_21D53E028()
{
  v17 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);

  v5 = *(v0 + 176);
  v6 = v5;
  v7 = sub_21DBF84AC();
  v8 = sub_21DBFAEBC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = sub_21DBFC75C();
    v13 = sub_21D0CDFB4(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_21D0C9000, v7, v8, "TTREditTodaySectionsInteractor: failed to save new ordering {error: %{public}s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223D46520](v10, -1, -1);
    MEMORY[0x223D46520](v9, -1, -1);
  }

  else
  {
  }

  **(v0 + 48) = 0;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t TTREditTodaySectionsInteractor.deinit()
{
  sub_21D157444(v0 + 16);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult, &qword_27CE5C3D8);

  return v0;
}

uint64_t TTREditTodaySectionsInteractor.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult, &qword_27CE5C3D8);

  return swift_deallocClassInstance();
}

uint64_t sub_21D53E2E8()
{
  v1 = sub_21DBF760C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC15RemindersUICore30TTREditTodaySectionsInteractor_lastFetchResult;
  swift_beginAccess();
  v6 = (*(v2 + 48))(v0 + v5, 1, v1);
  result = 0;
  if (!v6)
  {
    (*(v2 + 16))(v4, v0 + v5, v1);
    v8 = sub_21DBF75FC();
    (*(v2 + 8))(v4, v1);
    return v8;
  }

  return result;
}

uint64_t sub_21D53E424(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D1237C4;

  return TTREditTodaySectionsInteractor.saveNewOrdering(_:)(a1);
}

uint64_t TTREditTodaySectionsMonitorableDataView.fetchData(from:userInteractive:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF760C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21DBF761C();
  if (!v1)
  {
    (*(v4 + 32))(a1, v6, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  return result;
}

uint64_t TTREditTodaySectionsMonitorableDataView.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D53E658(uint64_t a1)
{
  v3 = sub_21DBF760C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21DBF761C();
  if (!v1)
  {
    (*(v4 + 32))(a1, v6, v3);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_21D53E768(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE585D0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE585D0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE585D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE585D0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE585A0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE585C8);
  return swift_endAccess();
}

uint64_t sub_21D53E99C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D390);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C208);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C208);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C208);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C208);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C210);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C210);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D390);
  return swift_endAccess();
}

uint64_t sub_21D53EBD0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C250);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C250);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C250);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C258);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D3D0);
  return swift_endAccess();
}

uint64_t sub_21D53EE04(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C268);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C268);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C268);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C268);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C270);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D3E8);
  return swift_endAccess();
}

uint64_t sub_21D53F038(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C360);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C340);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C340);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C340);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C340);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C348);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C360);
  return swift_endAccess();
}

uint64_t sub_21D53F26C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C240);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C220);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C220);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C220);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C228);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C228);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C240);
  return swift_endAccess();
}

uint64_t sub_21D53F4A0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C2C0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C2C0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C2C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C2C0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C2C8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C2E0);
  return swift_endAccess();
}

uint64_t sub_21D53F6D4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D440);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C310);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C310);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C310);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C318);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D440);
  return swift_endAccess();
}

uint64_t sub_21D53F908(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C370);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C370);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C370);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C370);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C378);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C388);
  return swift_endAccess();
}

uint64_t sub_21D53FB3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C280);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C280);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C280);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C280);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C288);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D400);
  return swift_endAccess();
}

uint64_t sub_21D53FD70(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C3A0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C3A0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C3A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C3A0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C3A8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C3C0);
  return swift_endAccess();
}

uint64_t sub_21D53FFA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D3B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C1B8);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C1B8);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C1B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C1B8);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C1C0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D3B8);
  return swift_endAccess();
}

uint64_t sub_21D5401D8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C1D8);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C1D8);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C1D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C1D8);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C1E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5C1F8);
  return swift_endAccess();
}

uint64_t sub_21D54040C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DA90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C3D0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C3D0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C3D0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C3D8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5DA90);
  return swift_endAccess();
}

uint64_t sub_21D540640(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D428);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(*v1 + 96);
  swift_beginAccess();
  sub_21D0EB8DC(a1, v1 + v9, &qword_27CE5C2F0);
  swift_endAccess();
  sub_21D0CF7E0(a1, &qword_27CE5C2F0);
  sub_21D0D3954(v1 + v9, v8, &qword_27CE5C2F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21D0CF7E0(v8, &qword_27CE5C2F0);
  }

  sub_21D0D523C(v8, v5, &qword_27CE5C2F8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  (*(*(v11 - 8) + 56))(v5, 0, 1, v11);
  v12 = *(*v1 + 104);
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v12, &qword_27CE5D428);
  return swift_endAccess();
}

uint64_t sub_21D540874(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C3F0);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C3F0);
    aBlock[4] = sub_21D554124;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_317;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D540C44(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C218);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C218);
    aBlock[4] = sub_21D552CBC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_65_0;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D541014(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C260);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C260);
    aBlock[4] = sub_21D552D34;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_77;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D5413E4(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C278);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C278);
    aBlock[4] = sub_21D55386C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_110_0;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D5417B4(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C368);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C368);
    aBlock[4] = sub_21D553A1C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_218;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D541B84(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C248);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C248);
    aBlock[4] = sub_21D552CE4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_71_1;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D541F54(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C2E8);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C2E8);
    aBlock[4] = sub_21D553944;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_159;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D542324(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C320);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C320);
    aBlock[4] = sub_21D5539D4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_201;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D5426F4(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C390);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C390);
    aBlock[4] = sub_21D553A64;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_228;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D542AC4(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C290);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C290);
    aBlock[4] = sub_21D5538D4;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_138_0;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D542E94(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C3C8);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C3C8);
    aBlock[4] = sub_21D55403C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_256;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D543264(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C1D0);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C1D0);
    aBlock[4] = sub_21D552C38;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_47;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D543634(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C398);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C398);
    aBlock[4] = sub_21D553AAC;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_239;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D543A2C(__int128 *a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 56);
    v24 = *a1;
    v25 = *(a1 + 16);
    v22 = *(a1 + 24);
    v23 = *(a1 + 40);
    v11 = result;
    v12 = swift_allocObject();
    v13 = a1[1];
    *(v12 + 24) = *a1;
    *(v12 + 16) = v11;
    v18 = v11;
    *(v12 + 40) = v13;
    *(v12 + 50) = *(a1 + 26);
    aBlock[4] = sub_21D553860;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_83_2;
    v17 = _Block_copy(aBlock);

    sub_21D0D3954(&v24, v20, &qword_27CE5DAC8);
    sub_21D0D3954(&v22, v20, &qword_27CE5DAC8);
    sub_21DBF9D4C();
    v20[0] = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    v14 = v6;
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    v15 = v17;
    MEMORY[0x223D438F0](0, v9, v5, v17);
    _Block_release(v15);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v14);
  }

  return result;
}

uint64_t sub_21D543D9C(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C200);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C200);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C200);
    aBlock[4] = sub_21D552C80;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_37_0;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D54416C(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C3E0);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C3E0);
    aBlock[4] = sub_21D554064;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_284;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D544564(void *a1, char a2, void *a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v12 = sub_21DBF9D2C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21DBF9D5C();
  v29 = *(v16 - 8);
  v30 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = *(result + 40);
    v26 = v13;
    v20 = a2 & 1;
    v35 = a2 & 1;
    v21 = a4 & 1;
    v34 = a4 & 1;
    v33 = HIBYTE(a4) & 1;
    v22 = result;
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = a1;
    *(v23 + 32) = v35;
    *(v23 + 40) = a3;
    *(v23 + 48) = v34;
    *(v23 + 49) = v33;
    aBlock[4] = v27;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = v28;
    v24 = _Block_copy(aBlock);

    sub_21D43DE58(a1, v20);
    sub_21D43DE58(a3, v21);
    sub_21DBF9D4C();
    v31 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v18, v15, v24);
    _Block_release(v24);
    (*(v26 + 8))(v15, v12);
    (*(v29 + 8))(v18, v30);
  }

  return result;
}

uint64_t sub_21D54489C(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C308);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C308);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C308);
    aBlock[4] = sub_21D55398C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_190;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

uint64_t sub_21D544C6C(uint64_t a1)
{
  v2 = sub_21DBF9D2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF9D5C();
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + *(*result + 112));
    v19 = v3;
    v20 = v6;
    v14 = result;
    sub_21D0D3954(a1, v12, &qword_27CE5C2B8);
    v15 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    sub_21D0D523C(v12, v16 + v15, &qword_27CE5C2B8);
    aBlock[4] = sub_21D55391C;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0D74FC;
    aBlock[3] = &block_descriptor_148_0;
    v17 = _Block_copy(aBlock);

    sub_21DBF9D4C();
    v22 = MEMORY[0x277D84F90];
    sub_21D0D9388(&qword_280D1B920, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD60);
    sub_21D0D9418(&qword_280D1B910, &unk_27CE5CD60);
    sub_21DBFBCBC();
    MEMORY[0x223D438F0](0, v8, v5, v17);
    _Block_release(v17);
    (*(v19 + 8))(v5, v2);
    (*(v21 + 8))(v8, v20);
  }

  return result;
}

void sub_21D54503C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v3;
  v4 = sub_21DBF76AC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A0);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585D0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v36 = v20;
      v21 = *(v19 + *(*v19 + 112));
      *v17 = v21;
      (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
      v22 = v21;
      LOBYTE(v21) = sub_21DBF9DAC();
      (*(v15 + 8))(v17, v14);
      if (v21)
      {
        v35 = v7;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3F0);
        v24 = *(v23 + 36);
        sub_21D0D3954(a1 + v24, v13, &qword_27CE585D0);
        sub_21D53E768(v13);
        sub_21D0D3954(a1 + v24, v10, &qword_27CE585D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v10;
          sub_21D194030(*v10);
        }

        else
        {
          v26 = v35;
          sub_21D0D523C(v10, v35, &qword_27CE585A0);
          v27 = v39;
          sub_21D0D3954(a1 + *(v23 + 40), v39, &qword_27CE5C1C8);
          v29 = v40;
          v28 = v41;
          if ((*(v40 + 48))(v27, 1, v41) == 1)
          {
            sub_21D0CF7E0(v27, &qword_27CE5C1C8);
            v30 = objc_opt_self();
            v31 = sub_21DBFA12C();
            v32 = [v30 internalErrorWithDebugDescription_];

            sub_21D194030(v32);
          }

          else
          {
            v33 = v38;
            (*(v29 + 32))(v38, v27, v28);
            TTRShowGroupDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v19, v26, *(v26 + *(v37 + 48)), v33);

            (*(v29 + 8))(v33, v28);
          }

          sub_21D0CF7E0(v26, &qword_27CE585A0);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D545590(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v3;
  v4 = sub_21DBF76AC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C210);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C208);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v36 = v20;
      v21 = *(v19 + *(*v19 + 112));
      *v17 = v21;
      (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
      v22 = v21;
      LOBYTE(v21) = sub_21DBF9DAC();
      (*(v15 + 8))(v17, v14);
      if (v21)
      {
        v35 = v7;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C218);
        v24 = *(v23 + 36);
        sub_21D0D3954(a1 + v24, v13, &qword_27CE5C208);
        sub_21D53E99C(v13);
        sub_21D0D3954(a1 + v24, v10, &qword_27CE5C208);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v10;
          sub_21DB84548(*v10);
        }

        else
        {
          v26 = v35;
          sub_21D0D523C(v10, v35, &qword_27CE5C210);
          v27 = v39;
          sub_21D0D3954(a1 + *(v23 + 40), v39, &qword_27CE5C1C8);
          v29 = v40;
          v28 = v41;
          if ((*(v40 + 48))(v27, 1, v41) == 1)
          {
            sub_21D0CF7E0(v27, &qword_27CE5C1C8);
            v30 = objc_opt_self();
            v31 = sub_21DBFA12C();
            v32 = [v30 internalErrorWithDebugDescription_];

            sub_21DB84548(v32);
          }

          else
          {
            v33 = v38;
            (*(v29 + 32))(v38, v27, v28);
            TTRShowAllRemindersDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v19, v26, *(v26 + *(v37 + 48)), v33);

            (*(v29 + 8))(v33, v28);
          }

          sub_21D0CF7E0(v26, &qword_27CE5C210);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D545AE4(uint64_t *a1)
{
  v120 = a1;
  v113 = sub_21DBF719C();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v105 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v105 - v3;
  v118 = sub_21DBF76AC();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C258);
  MEMORY[0x28223BE20](v115);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = &v105 - v9;
  MEMORY[0x28223BE20](v10);
  v119 = (&v105 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C250);
  MEMORY[0x28223BE20](v12);
  v14 = (&v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v105 - v16;
  v18 = sub_21DBF9D8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v109 = v7;
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (!v24)
    {

      return;
    }

    v25 = v24;
    v26 = *(v23 + *(*v23 + 112));
    *v21 = v26;
    (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
    v27 = v26;
    LOBYTE(v26) = sub_21DBF9DAC();
    v29 = *(v19 + 8);
    v28 = (v19 + 8);
    v29(v21, v18);
    if ((v26 & 1) == 0)
    {
      __break(1u);
      goto LABEL_46;
    }

    v108 = v4;
    v110 = v25;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C260);
    v31 = *(v30 + 36);
    v32 = v120;
    sub_21D0D3954(v120 + v31, v17, &qword_27CE5C250);
    sub_21D53EBD0(v17);
    sub_21D0D3954(v32 + v31, v14, &qword_27CE5C250);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v14;
      sub_21DA3D408(*v14);

      return;
    }

    v107 = v23;
    v34 = v14;
    v14 = v119;
    sub_21D0D523C(v34, v119, &qword_27CE5C258);
    v35 = v108;
    sub_21D0D3954(v32 + *(v30 + 40), v108, &qword_27CE5C1C8);
    v18 = v117;
    v17 = v118;
    v36 = (*(v117 + 48))(v35, 1, v118);
    v37 = v110;
    if (v36 == 1)
    {
      sub_21D0CF7E0(v35, &qword_27CE5C1C8);
      v38 = objc_opt_self();
      v39 = sub_21DBFA12C();
      v40 = [v38 internalErrorWithDebugDescription_];

      sub_21DA3D408(v40);

      v41 = v14;
LABEL_54:
      sub_21D0CF7E0(v41, &qword_27CE5C258);
      return;
    }

    v42 = v114;
    (*(v18 + 32))(v114, v35, v17);
    v43 = v115;
    v44 = *(v14 + *(v115 + 48));
    v4 = sub_21DBF6DBC();
    v45 = *(v4 - 8);
    v28 = v116;
    (*(v45 + 16))(v116, v14, v4);
    *(v28 + *(v43 + 48)) = v44;
    v46 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    v47 = *(v37 + v46);
    if (!v47)
    {
      v49 = v44;

      goto LABEL_53;
    }

    v48 = v44;
    if (v107 != v47)
    {

LABEL_53:
      sub_21D0CF7E0(v28, &qword_27CE5C258);
      (*(v18 + 8))(v42, v17);
      v41 = v14;
      goto LABEL_54;
    }

    v50 = sub_21DBF6E3C();
    sub_21D4F5F28(v50);
    v51 = v45;
    v53 = v52;

    sub_21DA3A324(v44, v53);

    v54 = v109;
    sub_21D0D3954(v28, v109, &qword_27CE5C258);

    v55 = v111;
    MEMORY[0x223D3F550]();
    v56 = *(v51 + 8);
    v120 = (v51 + 8);
    v108 = v56;
    v56(v54, v4);
    v25 = sub_21DBF716C();
    (*(v112 + 8))(v55, v113);
    if (v25 >> 62)
    {
      goto LABEL_47;
    }

    v57 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v57)
    {
LABEL_50:

      v113 = 0;
      v25 = v110;
LABEL_51:
      v94 = v114;
LABEL_52:
      v95 = v109;
      sub_21D0D3954(v28, v109, &qword_27CE5C258);

      v96 = sub_21DBF6DAC();
      v108(v95, v4);
      v97 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRemindersInListDataModelSource_list;
      swift_beginAccess();
      v98 = *(v25 + v97);
      *(v25 + v97) = v96;

      v122 = 0;
      v123 = 0xE000000000000000;
      sub_21DBFBEEC();
      v122 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAC0);
      v99 = sub_21DBFA1AC();
      v100 = v25;
      v102 = v101;

      v122 = v99;
      v123 = v102;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v103 = sub_21DBFAEDC();
      v120 = &v105;
      MEMORY[0x28223BE20](v103);
      v104 = v116;
      *(&v105 - 4) = v100;
      *(&v105 - 3) = v104;
      v42 = v94;
      *(&v105 - 2) = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      v28 = v116;
      sub_21DBF625C();

      goto LABEL_53;
    }

LABEL_15:
    v112 = v4;
    *&v126 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v57 & ~(v57 >> 63), 0);
    if (v57 < 0)
    {
      __break(1u);
    }

    else
    {
      v58 = 0;
      v59 = v126;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x223D44740](v58, v25);
        }

        else
        {
          v60 = *(v25 + 8 * v58 + 32);
        }

        v61 = v60;
        v62 = [v60 objectID];
        *&v126 = v59;
        v64 = *(v59 + 16);
        v63 = *(v59 + 24);
        if (v64 >= v63 >> 1)
        {
          v66 = v62;
          sub_21D18E6B8((v63 > 1), v64 + 1, 1);
          v62 = v66;
          v59 = v126;
        }

        ++v58;
        *(v59 + 16) = v64 + 1;
        v65 = v59 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = v61;
      }

      while (v57 != v58);

      while (1)
      {
        v14 = v119;
        v17 = v118;
        v18 = v117;
        v28 = v116;
        v25 = v110;
        v4 = v112;
        if (*(v59 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v67 = sub_21DBFC40C();
        }

        else
        {
          v67 = MEMORY[0x277D84F98];
        }

        *&v126 = v67;
        v68 = sub_21DBF8E0C();
        sub_21D1931C0(v68, 1, &v126);

        v69 = v126;
        v70 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v71 = *(v25 + v70);
        if (!v71)
        {

          v113 = 0;
          goto LABEL_51;
        }

        sub_21D188810(v69);
        v4 = v72;

        if ((v4 & 0xC000000000000001) != 0)
        {
          v28 = sub_21D883714();
          v113 = 0;

LABEL_44:
          v119 = &v105;
          *&v126 = *(v71 + 80);
          MEMORY[0x28223BE20](v73);
          *(&v105 - 2) = v71;
          *(&v105 - 1) = v28;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v94 = v114;
          v28 = v116;
          v4 = v112;
          goto LABEL_52;
        }

        v106 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v74 = sub_21DBFC3DC();
        v28 = v74;
        v75 = 0;
        v14 = (v4 + 64);
        v76 = 1 << *(v4 + 32);
        v77 = -1;
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        v17 = v77 & *(v4 + 64);
        v18 = (v76 + 63) >> 6;
        v111 = (v74 + 64);
        v113 = 0;
        if (v17)
        {
          break;
        }

LABEL_35:
        v79 = v75;
        while (1)
        {
          v75 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          if (v75 >= v18)
          {

            v14 = v119;
            v17 = v118;
            v18 = v117;
            v71 = v106;
            goto LABEL_44;
          }

          v80 = v14[v75];
          ++v79;
          if (v80)
          {
            v78 = __clz(__rbit64(v80));
            v17 = (v80 - 1) & v80;
            goto LABEL_40;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_50;
        }

        v57 = sub_21DBFBD7C();
        if (v57)
        {
          goto LABEL_15;
        }

        v112 = v4;

        v59 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v78 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_40:
        v81 = v78 | (v75 << 6);
        v82 = *(*(v4 + 56) + 8 * v81);
        v83 = *(*(v4 + 48) + 8 * v81);
        v84 = v82;

        v124 = sub_21D0D8CF0(0, &qword_280D17860);
        v125 = &protocol witness table for REMReminder;
        v122 = v84;
        v121 = 3;
        v85 = v84;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v122, &v121, &v126);
        v86 = v127;
        v87 = v128;
        v88 = v129;
        v89 = v126;
        *&v111[(v81 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v81;
        *(v28[6] + 8 * v81) = v83;
        v90 = v28[7] + 48 * v81;
        *v90 = v85;
        *(v90 + 8) = v89;
        *(v90 + 24) = v86;
        *(v90 + 32) = v87;
        *(v90 + 40) = v88;
        v91 = v28[2];
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          break;
        }

        v28[2] = v93;
        v25 = v110;
        if (!v17)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D546AA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v3;
  v4 = sub_21DBF76AC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C270);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C268);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v36 = v20;
      v21 = *(v19 + *(*v19 + 112));
      *v17 = v21;
      (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
      v22 = v21;
      LOBYTE(v21) = sub_21DBF9DAC();
      (*(v15 + 8))(v17, v14);
      if (v21)
      {
        v35 = v7;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C278);
        v24 = *(v23 + 36);
        sub_21D0D3954(a1 + v24, v13, &qword_27CE5C268);
        sub_21D53EE04(v13);
        sub_21D0D3954(a1 + v24, v10, &qword_27CE5C268);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v10;
          sub_21D99F2CC(*v10);
        }

        else
        {
          v26 = v35;
          sub_21D0D523C(v10, v35, &qword_27CE5C270);
          v27 = v39;
          sub_21D0D3954(a1 + *(v23 + 40), v39, &qword_27CE5C1C8);
          v29 = v40;
          v28 = v41;
          if ((*(v40 + 48))(v27, 1, v41) == 1)
          {
            sub_21D0CF7E0(v27, &qword_27CE5C1C8);
            v30 = objc_opt_self();
            v31 = sub_21DBFA12C();
            v32 = [v30 internalErrorWithDebugDescription_];

            sub_21D99F2CC(v32);
          }

          else
          {
            v33 = v38;
            (*(v29 + 32))(v38, v27, v28);
            TTRShowTaggedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v19, v26, *(v26 + *(v37 + 48)), v33);

            (*(v29 + 8))(v33, v28);
          }

          sub_21D0CF7E0(v26, &qword_27CE5C270);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D546FFC(void *a1)
{
  v119 = a1;
  v1 = sub_21DBF773C();
  v112 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v111 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v106 - v4;
  v115 = sub_21DBF76AC();
  v117 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v118 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C348);
  MEMORY[0x28223BE20](v113);
  v110 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v114 = &v106 - v9;
  MEMORY[0x28223BE20](v10);
  v116 = &v106 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C340);
  MEMORY[0x28223BE20](v12);
  v14 = (&v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v106 - v16;
  v18 = sub_21DBF9D8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v108 = v1;
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (!v24)
    {

      return;
    }

    v25 = v24;
    v26 = *(v23 + *(*v23 + 112));
    *v21 = v26;
    (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
    v27 = v26;
    LOBYTE(v26) = sub_21DBF9DAC();
    (*(v19 + 8))(v21, v18);
    if ((v26 & 1) == 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v109 = v25;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C368);
    v29 = *(v28 + 36);
    v30 = v119;
    sub_21D0D3954(v119 + v29, v17, &qword_27CE5C340);
    sub_21D53F038(v17);
    sub_21D0D3954(v30 + v29, v14, &qword_27CE5C340);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *v14;
      sub_21D6EED24(*v14);

      return;
    }

    v107 = v23;
    v21 = v116;
    sub_21D0D523C(v14, v116, &qword_27CE5C348);
    sub_21D0D3954(v30 + *(v28 + 40), v5, &qword_27CE5C1C8);
    v32 = v117;
    v18 = v115;
    if ((*(v117 + 48))(v5, 1, v115) == 1)
    {
      sub_21D0CF7E0(v5, &qword_27CE5C1C8);
      v33 = objc_opt_self();
      v34 = sub_21DBFA12C();
      v35 = [v33 internalErrorWithDebugDescription_];

      sub_21D6EED24(v35);

      v36 = v21;
LABEL_58:
      sub_21D0CF7E0(v36, &qword_27CE5C348);
      return;
    }

    (*(v32 + 32))(v118, v5, v18);
    v37 = v113;
    v38 = *(v21 + *(v113 + 48));
    v39 = sub_21DBF706C();
    v40 = *(v39 - 8);
    v41 = v114;
    (*(v40 + 16))(v114, v21, v39);
    *(v41 + *(v37 + 48)) = v38;
    v42 = OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_dataViewMonitor;
    v43 = v109;
    swift_beginAccess();
    v44 = *(v43 + v42);
    v45 = v107;
    if (!v44)
    {
      v47 = v38;

      goto LABEL_57;
    }

    v46 = v38;
    if (v45 != v44)
    {

LABEL_57:
      sub_21D0CF7E0(v41, &qword_27CE5C348);
      (*(v32 + 8))(v118, v18);
      v36 = v21;
      goto LABEL_58;
    }

    v48 = v46;
    v49 = sub_21DBF6E3C();
    sub_21D4F5F28(v49);
    v51 = v50;

    if (v38)
    {
      v52 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v53 = v109;
      swift_beginAccess();
      if (*(v53 + v52))
      {
        v54 = v48;

        sub_21D4F9F64(v54, v51);
      }

      else
      {
        v119 = *(v53 + OBJC_IVAR____TtC15RemindersUICore29TTRShowFlaggedDataModelSource_store);
        sub_21D0D8CF0(0, &qword_280D1B900);
        v55 = v48;
        v56 = sub_21DBFB12C();
        v57 = swift_allocObject();
        *(v57 + 16) = 0;
        v58 = sub_21D87E81C(v119, sub_21D554248, v57, v55, v56);
        *(v53 + v52) = v58;

        swift_beginAccess();
        v58[3] = &protocol witness table for TTRShowFlaggedDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
    }

    v59 = v110;
    sub_21D0D3954(v114, v110, &qword_27CE5C348);

    v60 = v111;
    MEMORY[0x223D3F810]();
    (*(v40 + 8))(v59, v39);
    v25 = sub_21DBF716C();
    (*(v112 + 8))(v60, v108);
    if (v25 >> 62)
    {
      goto LABEL_52;
    }

    v61 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v61)
    {
LABEL_55:

LABEL_56:
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();
      v100 = v109;
      *&v122 = *v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF8);
      v101 = sub_21DBFA1AC();
      v103 = v102;

      *&v122 = v101;
      *(&v122 + 1) = v103;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v104 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v104);
      v105 = v114;
      *(&v106 - 4) = v100;
      *(&v106 - 3) = v105;
      *(&v106 - 2) = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      v41 = v105;
      v32 = v117;
      goto LABEL_57;
    }

LABEL_20:
    *&v122 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v61 & ~(v61 >> 63), 0);
    if (v61 < 0)
    {
      __break(1u);
    }

    else
    {
      v62 = 0;
      v63 = v122;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v64 = MEMORY[0x223D44740](v62, v25);
        }

        else
        {
          v64 = *(v25 + 8 * v62 + 32);
        }

        v65 = v64;
        v66 = [v64 objectID];
        *&v122 = v63;
        v68 = *(v63 + 16);
        v67 = *(v63 + 24);
        if (v68 >= v67 >> 1)
        {
          v70 = v66;
          sub_21D18E6B8((v67 > 1), v68 + 1, 1);
          v66 = v70;
          v63 = v122;
        }

        ++v62;
        *(v63 + 16) = v68 + 1;
        v69 = v63 + 16 * v68;
        *(v69 + 32) = v66;
        *(v69 + 40) = v65;
      }

      while (v61 != v62);

      while (1)
      {
        v21 = v116;
        v18 = v115;
        v71 = v109;
        if (*(v63 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v72 = sub_21DBFC40C();
        }

        else
        {
          v72 = MEMORY[0x277D84F98];
        }

        *&v122 = v72;
        v73 = sub_21DBF8E0C();
        sub_21D1931C0(v73, 1, &v122);

        v74 = v122;
        v75 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v25 = *(v71 + v75);
        if (!v25)
        {

          goto LABEL_56;
        }

        sub_21D188810(v74);
        v77 = v76;

        if ((v77 & 0xC000000000000001) != 0)
        {
          v78 = sub_21D883714();
          v119 = 0;

LABEL_49:
          *&v122 = *(v25 + 80);
          MEMORY[0x28223BE20](v79);
          *(&v106 - 2) = v25;
          *(&v106 - 1) = v78;
          sub_21DBF5EFC();

          sub_21DBF814C();

          goto LABEL_56;
        }

        v119 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v80 = sub_21DBFC3DC();
        v78 = v80;
        v21 = 0;
        v81 = 1 << *(v77 + 32);
        v82 = -1;
        if (v81 < 64)
        {
          v82 = ~(-1 << v81);
        }

        v83 = v82 & *(v77 + 64);
        v18 = (v81 + 63) >> 6;
        v113 = v80 + 64;
        if (v83)
        {
          break;
        }

LABEL_40:
        v85 = v21;
        while (1)
        {
          v21 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
            break;
          }

          if (v21 >= v18)
          {

            v21 = v116;
            v18 = v115;
            goto LABEL_49;
          }

          v86 = *(v77 + 64 + 8 * v21);
          ++v85;
          if (v86)
          {
            v84 = __clz(__rbit64(v86));
            v83 = (v86 - 1) & v86;
            goto LABEL_45;
          }
        }

LABEL_51:
        __break(1u);
LABEL_52:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_55;
        }

        v61 = sub_21DBFBD7C();
        if (v61)
        {
          goto LABEL_20;
        }

        v63 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v84 = __clz(__rbit64(v83));
        v83 &= v83 - 1;
LABEL_45:
        v87 = v84 | (v21 << 6);
        v88 = *(*(v77 + 56) + 8 * v87);
        v89 = *(*(v77 + 48) + 8 * v87);
        v90 = v88;

        v121[3] = sub_21D0D8CF0(0, &qword_280D17860);
        v121[4] = &protocol witness table for REMReminder;
        v121[0] = v90;
        v120 = 3;
        v91 = v90;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v121, &v120, &v122);
        v92 = v123;
        v93 = v124;
        v94 = v125;
        v95 = v122;
        *(v113 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
        *(v78[6] + 8 * v87) = v89;
        v96 = v78[7] + 48 * v87;
        *v96 = v91;
        *(v96 + 8) = v95;
        *(v96 + 24) = v92;
        *(v96 + 32) = v93;
        *(v96 + 40) = v94;
        v97 = v78[2];
        v98 = __OFADD__(v97, 1);
        v99 = v97 + 1;
        if (v98)
        {
          break;
        }

        v78[2] = v99;
        if (!v83)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D547F94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v3;
  v4 = sub_21DBF76AC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C228);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C220);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v36 = v20;
      v21 = *(v19 + *(*v19 + 112));
      *v17 = v21;
      (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
      v22 = v21;
      LOBYTE(v21) = sub_21DBF9DAC();
      (*(v15 + 8))(v17, v14);
      if (v21)
      {
        v35 = v7;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C248);
        v24 = *(v23 + 36);
        sub_21D0D3954(a1 + v24, v13, &qword_27CE5C220);
        sub_21D53F26C(v13);
        sub_21D0D3954(a1 + v24, v10, &qword_27CE5C220);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v10;
          sub_21DB62708(*v10);
        }

        else
        {
          v26 = v35;
          sub_21D0D523C(v10, v35, &qword_27CE5C228);
          v27 = v39;
          sub_21D0D3954(a1 + *(v23 + 40), v39, &qword_27CE5C1C8);
          v29 = v40;
          v28 = v41;
          if ((*(v40 + 48))(v27, 1, v41) == 1)
          {
            sub_21D0CF7E0(v27, &qword_27CE5C1C8);
            v30 = objc_opt_self();
            v31 = sub_21DBFA12C();
            v32 = [v30 internalErrorWithDebugDescription_];

            sub_21DB62708(v32);
          }

          else
          {
            v33 = v38;
            (*(v29 + 32))(v38, v27, v28);
            TTRShowAssignedDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v19, v26, *(v26 + *(v37 + 48)), v33);

            (*(v29 + 8))(v33, v28);
          }

          sub_21D0CF7E0(v26, &qword_27CE5C228);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D5484E8(char *a1)
{
  v116 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v107 - v2;
  v114 = sub_21DBF76AC();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v111 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C8);
  MEMORY[0x28223BE20](v110);
  v6 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v112 = &v107 - v8;
  MEMORY[0x28223BE20](v9);
  v115 = &v107 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2C0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - v15;
  v17 = sub_21DBF9D8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v108 = v6;
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (!v23)
    {

      return;
    }

    v24 = v23;
    v25 = *(v22 + *(*v22 + 112));
    *v20 = v25;
    (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
    v26 = v25;
    LOBYTE(v25) = sub_21DBF9DAC();
    v28 = *(v18 + 8);
    v27 = v18 + 8;
    v28(v20, v17);
    if ((v25 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v109 = v24;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2E8);
    v30 = *(v29 + 36);
    v31 = v116;
    sub_21D0D3954(&v116[v30], v16, &qword_27CE5C2C0);
    sub_21D53F4A0(v16);
    sub_21D0D3954(&v31[v30], v13, &qword_27CE5C2C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v13;
      sub_21D858FEC(*v13);

      return;
    }

    v107 = v22;
    v33 = v13;
    v34 = v115;
    sub_21D0D523C(v33, v115, &qword_27CE5C2C8);
    sub_21D0D3954(&v31[*(v29 + 40)], v3, &qword_27CE5C1C8);
    v35 = v113;
    v36 = v114;
    if ((*(v113 + 48))(v3, 1, v114) == 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE5C1C8);
      v37 = objc_opt_self();
      v38 = sub_21DBFA12C();
      v39 = [v37 internalErrorWithDebugDescription_];

      sub_21D858FEC(v39);

      v40 = v34;
LABEL_62:
      sub_21D0CF7E0(v40, &qword_27CE5C2C8);
      return;
    }

    v24 = v111;
    (*(v35 + 32))(v111, v3, v36);
    v41 = v110;
    v42 = *(v34 + *(v110 + 48));
    v43 = sub_21DBF6E4C();
    v44 = *(v43 - 8);
    v16 = v112;
    (*(v44 + 16))(v112, v34, v43);
    *&v16[*(v41 + 48)] = v42;
    v45 = OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_dataViewMonitor;
    v46 = v109;
    swift_beginAccess();
    v47 = *&v46[v45];
    if (!v47)
    {
      v49 = v42;

      goto LABEL_13;
    }

    v48 = v42;
    if (v107 != v47)
    {

LABEL_13:

LABEL_61:
      (*(v35 + 8))(v24, v36);
      sub_21D0CF7E0(v16, &qword_27CE5C2C8);
      v40 = v34;
      goto LABEL_62;
    }

    v50 = v48;
    v51 = sub_21DBF6E3C();
    sub_21D4F5F28(v51);
    v53 = v52;

    if (v42)
    {
      v54 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v55 = v109;
      swift_beginAccess();
      if (*&v55[v54])
      {
        v56 = v50;

        sub_21D4F9F64(v56, v53);
      }

      else
      {
        v116 = *&v55[OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_store];
        sub_21D0D8CF0(0, &qword_280D1B900);
        v57 = v50;
        v58 = sub_21DBFB12C();
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        v60 = sub_21D87E81C(v116, sub_21D554248, v59, v57, v58);
        *&v55[v54] = v60;

        swift_beginAccess();
        v60[3] = &protocol witness table for TTRShowScheduledDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v16 = v112;
    }

    else
    {
    }

    v61 = v108;
    sub_21D0D3954(v16, v108, &qword_27CE5C2C8);

    v27 = sub_21DBF6DEC();
    (*(v44 + 8))(v61, v43);
    if (v27 >> 62)
    {
      goto LABEL_53;
    }

    v62 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v62)
    {
LABEL_56:

LABEL_57:
      v103 = &v109[OBJC_IVAR____TtC15RemindersUICore31TTRShowScheduledDataModelSource_delegate];
      swift_beginAccess();
      v104 = swift_unknownObjectWeakLoadStrong();
      v34 = v115;
      v35 = v113;
      if (v104)
      {
        v105 = *(v103 + 1);
        ObjectType = swift_getObjectType();
        (*(v105 + 16))(v16, v24, ObjectType, v105);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      v36 = v114;
      goto LABEL_61;
    }

LABEL_22:
    *&v119 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v62 & ~(v62 >> 63), 0);
    if (v62 < 0)
    {
      __break(1u);
    }

    else
    {
      v63 = 0;
      v64 = v119;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x223D44740](v63, v27);
        }

        else
        {
          v65 = *(v27 + 8 * v63 + 32);
        }

        v66 = v65;
        v67 = [v65 objectID];
        *&v119 = v64;
        v69 = *(v64 + 16);
        v68 = *(v64 + 24);
        if (v69 >= v68 >> 1)
        {
          v71 = v67;
          sub_21D18E6B8((v68 > 1), v69 + 1, 1);
          v67 = v71;
          v64 = v119;
        }

        ++v63;
        *(v64 + 16) = v69 + 1;
        v70 = v64 + 16 * v69;
        *(v70 + 32) = v67;
        *(v70 + 40) = v66;
      }

      while (v62 != v63);

      while (1)
      {
        v24 = v111;
        v16 = v112;
        if (*(v64 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v72 = sub_21DBFC40C();
        }

        else
        {
          v72 = MEMORY[0x277D84F98];
        }

        *&v119 = v72;
        v73 = sub_21DBF8E0C();
        sub_21D1931C0(v73, 1, &v119);

        v74 = v119;
        v75 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v76 = v109;
        swift_beginAccess();
        v27 = *&v76[v75];
        if (!v27)
        {

          goto LABEL_57;
        }

        sub_21D188810(v74);
        v78 = v77;

        if ((v78 & 0xC000000000000001) != 0)
        {
          v79 = sub_21D883714();
LABEL_37:

          *&v119 = *(v27 + 80);
          MEMORY[0x28223BE20](v80);
          *(&v107 - 2) = v27;
          *(&v107 - 1) = v79;
          sub_21DBF5EFC();

          sub_21DBF814C();

          goto LABEL_57;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v81 = sub_21DBFC3DC();
        v79 = v81;
        v82 = 0;
        v83 = 1 << *(v78 + 32);
        v84 = -1;
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        v85 = v84 & *(v78 + 64);
        v86 = (v83 + 63) >> 6;
        v116 = (v81 + 64);
        if (v85)
        {
          break;
        }

LABEL_43:
        v88 = v82;
        v16 = v112;
        while (1)
        {
          v82 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          if (v82 >= v86)
          {
            goto LABEL_37;
          }

          v89 = *(v78 + 64 + 8 * v82);
          ++v88;
          if (v89)
          {
            v87 = __clz(__rbit64(v89));
            v85 = (v89 - 1) & v89;
            goto LABEL_48;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_56;
        }

        v62 = sub_21DBFBD7C();
        if (v62)
        {
          goto LABEL_22;
        }

        v64 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v87 = __clz(__rbit64(v85));
        v85 &= v85 - 1;
LABEL_48:
        v90 = v87 | (v82 << 6);
        v91 = *(*(v78 + 56) + 8 * v90);
        v92 = *(*(v78 + 48) + 8 * v90);
        v93 = v91;

        v118[3] = sub_21D0D8CF0(0, &qword_280D17860);
        v118[4] = &protocol witness table for REMReminder;
        v118[0] = v93;
        v117 = 3;
        v94 = v93;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v118, &v117, &v119);
        v95 = v120;
        v96 = v121;
        v97 = v122;
        v98 = v119;
        *&v116[(v90 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v90;
        *(v79[6] + 8 * v90) = v92;
        v99 = v79[7] + 48 * v90;
        *v99 = v94;
        *(v99 + 8) = v98;
        *(v99 + 24) = v95;
        *(v99 + 32) = v96;
        *(v99 + 40) = v97;
        v100 = v79[2];
        v101 = __OFADD__(v100, 1);
        v102 = v100 + 1;
        if (v101)
        {
          break;
        }

        v79[2] = v102;
        v24 = v111;
        if (!v85)
        {
          goto LABEL_43;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D5492E8(uint64_t a1)
{
  v125 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v112 - v2;
  v122 = sub_21DBF76AC();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v124 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C318);
  MEMORY[0x28223BE20](v119);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v118 = &v112 - v8;
  MEMORY[0x28223BE20](v9);
  v120 = &v112 - v10;
  MEMORY[0x28223BE20](v11);
  v123 = (&v112 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C310);
  MEMORY[0x28223BE20](v13);
  v15 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v112 - v17;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v116 = v6;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = *(v24 + *(*v24 + 112));
    *v22 = v27;
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v28 = v27;
    LOBYTE(v27) = sub_21DBF9DAC();
    (*(v20 + 8))(v22, v19);
    if ((v27 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v115 = v3;
    v117 = v26;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C320);
    v30 = *(v29 + 36);
    v31 = v125;
    sub_21D0D3954(v125 + v30, v18, &qword_27CE5C310);
    sub_21D53F6D4(v18);
    sub_21D0D3954(v31 + v30, v15, &qword_27CE5C310);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v15;
      sub_21D7993C8(*v15);

      return;
    }

    v114 = v24;
    v24 = v123;
    sub_21D0D523C(v15, v123, &qword_27CE5C318);
    v33 = v31 + *(v29 + 40);
    v34 = v115;
    sub_21D0D3954(v33, v115, &qword_27CE5C1C8);
    v13 = v121;
    v18 = v122;
    v35 = (*(v121 + 48))(v34, 1, v122);
    v36 = v117;
    if (v35 == 1)
    {
      sub_21D0CF7E0(v34, &qword_27CE5C1C8);
      v37 = objc_opt_self();
      v38 = sub_21DBFA12C();
      v39 = [v37 internalErrorWithDebugDescription_];

      sub_21D7993C8(v39);

      v40 = v24;
LABEL_59:
      sub_21D0CF7E0(v40, &qword_27CE5C318);
      return;
    }

    (*(v13 + 32))(v124, v34, v18);
    v41 = v119;
    v42 = *(v24 + *(v119 + 48));
    v22 = sub_21DBF729C();
    v43 = *(v22 - 8);
    v44 = v120;
    (*(v43 + 16))(v120, v24, v22);
    *(v44 + *(v41 + 48)) = v42;
    v45 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_dataViewMonitor;
    swift_beginAccess();
    v46 = *(v36 + v45);
    if (!v46)
    {
      v48 = v42;

      goto LABEL_58;
    }

    v47 = v42;
    if (v114 != v46)
    {

LABEL_58:
      sub_21D0CF7E0(v44, &qword_27CE5C318);
      (*(v13 + 8))(v124, v18);
      v40 = v24;
      goto LABEL_59;
    }

    v49 = v47;
    v50 = sub_21DBF6E3C();
    sub_21D4F5F28(v50);
    v52 = v51;

    v115 = v22;
    if (v42)
    {
      v53 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v54 = v117;
      swift_beginAccess();
      if (*(v54 + v53))
      {
        v55 = v49;

        sub_21D4F9F64(v55, v52);
      }

      else
      {
        v125 = v43;
        v56 = *(v54 + OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_store);
        sub_21D0D8CF0(0, &qword_280D1B900);
        v57 = v49;
        v58 = sub_21DBFB12C();
        v59 = swift_allocObject();
        *(v59 + 16) = 0;
        v60 = v56;
        v43 = v125;
        v61 = sub_21D87E81C(v60, sub_21D554248, v59, v57, v58);
        *(v54 + v53) = v61;

        swift_beginAccess();
        v61[3] = &protocol witness table for TTRShowTodayGroupsDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v22 = v115;
    }

    else
    {
    }

    v26 = v120;
    v62 = v118;
    sub_21D0D3954(v120, v118, &qword_27CE5C318);

    v3 = sub_21DBF726C();
    v63 = *(v43 + 8);
    v63(v62, v22);
    v125 = v43 + 8;
    v113 = v63;
    if (v3 >> 62)
    {
      goto LABEL_53;
    }

    v64 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v64)
    {
LABEL_56:

LABEL_57:
      v102 = v116;
      sub_21D0D3954(v26, v116, &qword_27CE5C318);

      v103 = sub_21DBF720C();
      v113(v102, v22);
      v104 = OBJC_IVAR____TtC15RemindersUICore33TTRShowTodayGroupsDataModelSource_smartList;
      v105 = v117;
      swift_beginAccess();
      v106 = *(v105 + v104);
      *(v105 + v104) = v103;

      v127 = 0;
      v128 = 0xE000000000000000;
      sub_21DBFBEEC();
      v127 = *v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAF0);
      v107 = sub_21DBFA1AC();
      v109 = v108;

      v127 = v107;
      v128 = v109;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v110 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v110);
      v111 = v120;
      *(&v112 - 4) = v105;
      *(&v112 - 3) = v111;
      *(&v112 - 2) = v124;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      v44 = v120;
      sub_21DBF625C();

      goto LABEL_58;
    }

LABEL_21:
    *&v131 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v64 & ~(v64 >> 63), 0);
    if (v64 < 0)
    {
      __break(1u);
    }

    else
    {
      v65 = 0;
      v66 = v131;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v67 = MEMORY[0x223D44740](v65, v3);
        }

        else
        {
          v67 = *(v3 + 8 * v65 + 32);
        }

        v68 = v67;
        v69 = [v67 objectID];
        *&v131 = v66;
        v71 = *(v66 + 16);
        v70 = *(v66 + 24);
        if (v71 >= v70 >> 1)
        {
          v73 = v69;
          sub_21D18E6B8((v70 > 1), v71 + 1, 1);
          v69 = v73;
          v66 = v131;
        }

        ++v65;
        *(v66 + 16) = v71 + 1;
        v72 = v66 + 16 * v71;
        *(v72 + 32) = v69;
        *(v72 + 40) = v68;
      }

      while (v64 != v65);

      while (1)
      {
        v24 = v123;
        v18 = v122;
        v13 = v121;
        v22 = v115;
        if (*(v66 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v74 = sub_21DBFC40C();
        }

        else
        {
          v74 = MEMORY[0x277D84F98];
        }

        *&v131 = v74;
        v75 = sub_21DBF8E0C();
        sub_21D1931C0(v75, 1, &v131);

        v76 = v131;
        v77 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v78 = v117;
        swift_beginAccess();
        v79 = *(v78 + v77);
        if (!v79)
        {

          v26 = v120;
          goto LABEL_57;
        }

        sub_21D188810(v76);
        v26 = v80;

        if ((v26 & 0xC000000000000001) != 0)
        {
          v3 = sub_21D883714();
          v118 = 0;

LABEL_50:
          v123 = &v112;
          *&v131 = *(v79 + 80);
          MEMORY[0x28223BE20](v81);
          *(&v112 - 2) = v79;
          *(&v112 - 1) = v3;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v26 = v120;
          goto LABEL_57;
        }

        v112 = v79;
        v118 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v82 = sub_21DBFC3DC();
        v3 = v82;
        v22 = 0;
        v18 = (v26 + 64);
        v83 = 1 << *(v26 + 32);
        v84 = -1;
        if (v83 < 64)
        {
          v84 = ~(-1 << v83);
        }

        v13 = v84 & *(v26 + 64);
        v85 = (v83 + 63) >> 6;
        v24 = v82 + 64;
        if (v13)
        {
          break;
        }

LABEL_41:
        v87 = v22;
        while (1)
        {
          v22 = v87 + 1;
          if (__OFADD__(v87, 1))
          {
            break;
          }

          if (v22 >= v85)
          {

            v24 = v123;
            v18 = v122;
            v13 = v121;
            v22 = v115;
            v79 = v112;
            goto LABEL_50;
          }

          v88 = *&v18[8 * v22];
          ++v87;
          if (v88)
          {
            v86 = __clz(__rbit64(v88));
            v13 = (v88 - 1) & v88;
            goto LABEL_46;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_56;
        }

        v64 = sub_21DBFBD7C();
        if (v64)
        {
          goto LABEL_21;
        }

        v66 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v86 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_46:
        v89 = v86 | (v22 << 6);
        v90 = *(*(v26 + 56) + 8 * v89);
        v91 = *(*(v26 + 48) + 8 * v89);
        v92 = v90;

        v129 = sub_21D0D8CF0(0, &qword_280D17860);
        v130 = &protocol witness table for REMReminder;
        v127 = v92;
        v126 = 3;
        v93 = v92;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v127, &v126, &v131);
        v94 = v132;
        v95 = v133;
        v96 = v134;
        v97 = v131;
        *(v24 + ((v89 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v89;
        *(*(v3 + 48) + 8 * v89) = v91;
        v98 = *(v3 + 56) + 48 * v89;
        *v98 = v93;
        *(v98 + 8) = v97;
        *(v98 + 24) = v94;
        *(v98 + 32) = v95;
        *(v98 + 40) = v96;
        v99 = *(v3 + 16);
        v100 = __OFADD__(v99, 1);
        v101 = v99 + 1;
        if (v100)
        {
          break;
        }

        *(v3 + 16) = v101;
        if (!v13)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54A30C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v70 = &v64 - v3;
  v71 = sub_21DBF76AC();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378);
  MEMORY[0x28223BE20](v5);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v72 = &v64 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370);
  MEMORY[0x28223BE20](v9);
  v11 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v64 - v13;
  v15 = sub_21DBF9D8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v66 = v5;
    v21 = a1;
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = *(v20 + *(*v20 + 112));
      *v18 = v24;
      (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
      v25 = v24;
      LOBYTE(v24) = sub_21DBF9DAC();
      (*(v16 + 8))(v18, v15);
      if (v24)
      {
        v67 = v23;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C390);
        v27 = v20;
        v28 = *(v26 + 36);
        sub_21D0D3954(v21 + v28, v14, &qword_27CE5C370);
        sub_21D53F908(v14);
        sub_21D0D3954(v21 + v28, v11, &qword_27CE5C370);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v29 = *v11;
          sub_21D662198(*v11);
        }

        else
        {
          v65 = v27;
          v30 = v72;
          sub_21D0D523C(v11, v72, &qword_27CE5C378);
          v31 = v70;
          sub_21D0D3954(v21 + *(v26 + 40), v70, &qword_27CE5C1C8);
          v32 = v73;
          v33 = v71;
          if ((*(v73 + 48))(v31, 1, v71) == 1)
          {
            sub_21D0CF7E0(v31, &qword_27CE5C1C8);
            v34 = objc_opt_self();
            v35 = sub_21DBFA12C();
            v36 = [v34 internalErrorWithDebugDescription_];

            sub_21D662198(v36);

            v37 = v30;
          }

          else
          {
            v38 = v69;
            (*(v32 + 32))(v69, v31, v33);
            v39 = v66;
            v40 = *(v30 + *(v66 + 48));
            v41 = sub_21DBF6F2C();
            v42 = v68;
            (*(*(v41 - 8) + 16))(v68, v30, v41);
            *(v42 + *(v39 + 48)) = v40;
            v43 = v67;
            v44 = *(v67 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_dataViewMonitor);
            if (v44)
            {
              v45 = v40;
              if (v65 == v44)
              {
                v47 = v45;
                v48 = sub_21DBF6E3C();
                sub_21D4F5F28(v48);
                v50 = v49;

                if (v40)
                {
                  v51 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
                  swift_beginAccess();
                  if (*(v43 + v51))
                  {
                    v52 = v47;

                    sub_21D4F9F64(v52, v50);
                  }

                  else
                  {
                    v53 = *(v43 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_store);
                    sub_21D0D8CF0(0, &qword_280D1B900);
                    v54 = v47;
                    v55 = sub_21DBFB12C();
                    v56 = swift_allocObject();
                    *(v56 + 16) = 0;
                    v57 = v53;
                    v32 = v73;
                    v58 = sub_21D87E81C(v57, sub_21D554248, v56, v54, v55);
                    *(v43 + v51) = v58;

                    swift_beginAccess();
                    v58[3] = &protocol witness table for TTRShowSearchResultDataModelSource;
                    swift_unknownObjectWeakAssign();
                  }
                }

                else
                {
                }

                v74 = 0;
                v75 = 0xE000000000000000;
                sub_21DBFBEEC();
                v74 = *v43;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00);
                v59 = sub_21DBFA1AC();
                v61 = v60;

                v74 = v59;
                v75 = v61;
                MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
                v62 = sub_21DBFAEDC();
                MEMORY[0x28223BE20](v62);
                *(&v64 - 4) = v43;
                *(&v64 - 3) = v42;
                v63 = v69;
                *(&v64 - 2) = v69;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
                sub_21DBF625C();
                v38 = v63;
                v42 = v68;
              }

              else
              {
              }
            }

            else
            {
              v46 = v40;
            }

            sub_21D0CF7E0(v42, &qword_27CE5C378);
            (*(v32 + 8))(v38, v33);
            v37 = v30;
          }

          sub_21D0CF7E0(v37, &qword_27CE5C378);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D54AC10(uint64_t *a1)
{
  v120 = a1;
  v113 = sub_21DBF719C();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v105 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v105 - v3;
  v118 = sub_21DBF76AC();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288);
  MEMORY[0x28223BE20](v115);
  v7 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v116 = &v105 - v9;
  MEMORY[0x28223BE20](v10);
  v119 = (&v105 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280);
  MEMORY[0x28223BE20](v12);
  v14 = (&v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = &v105 - v16;
  v18 = sub_21DBF9D8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v109 = v7;
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    if (!v24)
    {

      return;
    }

    v25 = v24;
    v26 = *(v23 + *(*v23 + 112));
    *v21 = v26;
    (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
    v27 = v26;
    LOBYTE(v26) = sub_21DBF9DAC();
    v29 = *(v19 + 8);
    v28 = (v19 + 8);
    v29(v21, v18);
    if ((v26 & 1) == 0)
    {
      __break(1u);
      goto LABEL_46;
    }

    v108 = v4;
    v110 = v25;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C290);
    v31 = *(v30 + 36);
    v32 = v120;
    sub_21D0D3954(v120 + v31, v17, &qword_27CE5C280);
    sub_21D53FB3C(v17);
    sub_21D0D3954(v32 + v31, v14, &qword_27CE5C280);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = *v14;
      sub_21D8D3BAC(*v14);

      return;
    }

    v107 = v23;
    v34 = v14;
    v14 = v119;
    sub_21D0D523C(v34, v119, &qword_27CE5C288);
    v35 = v108;
    sub_21D0D3954(v32 + *(v30 + 40), v108, &qword_27CE5C1C8);
    v18 = v117;
    v17 = v118;
    v36 = (*(v117 + 48))(v35, 1, v118);
    v37 = v110;
    if (v36 == 1)
    {
      sub_21D0CF7E0(v35, &qword_27CE5C1C8);
      v38 = objc_opt_self();
      v39 = sub_21DBFA12C();
      v40 = [v38 internalErrorWithDebugDescription_];

      sub_21D8D3BAC(v40);

      v41 = v14;
LABEL_54:
      sub_21D0CF7E0(v41, &qword_27CE5C288);
      return;
    }

    v42 = v114;
    (*(v18 + 32))(v114, v35, v17);
    v43 = v115;
    v44 = *(v14 + *(v115 + 48));
    v4 = sub_21DBF6C5C();
    v45 = *(v4 - 8);
    v28 = v116;
    (*(v45 + 16))(v116, v14, v4);
    *(v28 + *(v43 + 48)) = v44;
    v46 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    v47 = *(v37 + v46);
    if (!v47)
    {
      v49 = v44;

      goto LABEL_53;
    }

    v48 = v44;
    if (v107 != v47)
    {

LABEL_53:
      sub_21D0CF7E0(v28, &qword_27CE5C288);
      (*(v18 + 8))(v42, v17);
      v41 = v14;
      goto LABEL_54;
    }

    v50 = sub_21DBF6E3C();
    sub_21D4F5F28(v50);
    v51 = v45;
    v53 = v52;

    sub_21D8D0B20(v44, v53);

    v54 = v109;
    sub_21D0D3954(v28, v109, &qword_27CE5C288);

    v55 = v111;
    MEMORY[0x223D3F400]();
    v56 = *(v51 + 8);
    v120 = (v51 + 8);
    v108 = v56;
    v56(v54, v4);
    v25 = sub_21DBF716C();
    (*(v112 + 8))(v55, v113);
    if (v25 >> 62)
    {
      goto LABEL_47;
    }

    v57 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v57)
    {
LABEL_50:

      v113 = 0;
      v25 = v110;
LABEL_51:
      v94 = v114;
LABEL_52:
      v95 = v109;
      sub_21D0D3954(v28, v109, &qword_27CE5C288);

      v96 = sub_21DBF6C2C();
      v108(v95, v4);
      v97 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
      swift_beginAccess();
      v98 = *(v25 + v97);
      *(v25 + v97) = v96;

      v122 = 0;
      v123 = 0xE000000000000000;
      sub_21DBFBEEC();
      v122 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0);
      v99 = sub_21DBFA1AC();
      v100 = v25;
      v102 = v101;

      v122 = v99;
      v123 = v102;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v103 = sub_21DBFAEDC();
      v120 = &v105;
      MEMORY[0x28223BE20](v103);
      v104 = v116;
      *(&v105 - 4) = v100;
      *(&v105 - 3) = v104;
      v42 = v94;
      *(&v105 - 2) = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      v28 = v116;
      sub_21DBF625C();

      goto LABEL_53;
    }

LABEL_15:
    v112 = v4;
    *&v126 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v57 & ~(v57 >> 63), 0);
    if (v57 < 0)
    {
      __break(1u);
    }

    else
    {
      v58 = 0;
      v59 = v126;
      do
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v60 = MEMORY[0x223D44740](v58, v25);
        }

        else
        {
          v60 = *(v25 + 8 * v58 + 32);
        }

        v61 = v60;
        v62 = [v60 objectID];
        *&v126 = v59;
        v64 = *(v59 + 16);
        v63 = *(v59 + 24);
        if (v64 >= v63 >> 1)
        {
          v66 = v62;
          sub_21D18E6B8((v63 > 1), v64 + 1, 1);
          v62 = v66;
          v59 = v126;
        }

        ++v58;
        *(v59 + 16) = v64 + 1;
        v65 = v59 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = v61;
      }

      while (v57 != v58);

      while (1)
      {
        v14 = v119;
        v17 = v118;
        v18 = v117;
        v28 = v116;
        v25 = v110;
        v4 = v112;
        if (*(v59 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v67 = sub_21DBFC40C();
        }

        else
        {
          v67 = MEMORY[0x277D84F98];
        }

        *&v126 = v67;
        v68 = sub_21DBF8E0C();
        sub_21D1931C0(v68, 1, &v126);

        v69 = v126;
        v70 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v71 = *(v25 + v70);
        if (!v71)
        {

          v113 = 0;
          goto LABEL_51;
        }

        sub_21D188810(v69);
        v4 = v72;

        if ((v4 & 0xC000000000000001) != 0)
        {
          v28 = sub_21D883714();
          v113 = 0;

LABEL_44:
          v119 = &v105;
          *&v126 = *(v71 + 80);
          MEMORY[0x28223BE20](v73);
          *(&v105 - 2) = v71;
          *(&v105 - 1) = v28;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v94 = v114;
          v28 = v116;
          v4 = v112;
          goto LABEL_52;
        }

        v106 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v74 = sub_21DBFC3DC();
        v28 = v74;
        v75 = 0;
        v14 = (v4 + 64);
        v76 = 1 << *(v4 + 32);
        v77 = -1;
        if (v76 < 64)
        {
          v77 = ~(-1 << v76);
        }

        v17 = v77 & *(v4 + 64);
        v18 = (v76 + 63) >> 6;
        v111 = (v74 + 64);
        v113 = 0;
        if (v17)
        {
          break;
        }

LABEL_35:
        v79 = v75;
        while (1)
        {
          v75 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          if (v75 >= v18)
          {

            v14 = v119;
            v17 = v118;
            v18 = v117;
            v71 = v106;
            goto LABEL_44;
          }

          v80 = v14[v75];
          ++v79;
          if (v80)
          {
            v78 = __clz(__rbit64(v80));
            v17 = (v80 - 1) & v80;
            goto LABEL_40;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_50;
        }

        v57 = sub_21DBFBD7C();
        if (v57)
        {
          goto LABEL_15;
        }

        v112 = v4;

        v59 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v78 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_40:
        v81 = v78 | (v75 << 6);
        v82 = *(*(v4 + 56) + 8 * v81);
        v83 = *(*(v4 + 48) + 8 * v81);
        v84 = v82;

        v124 = sub_21D0D8CF0(0, &qword_280D17860);
        v125 = &protocol witness table for REMReminder;
        v122 = v84;
        v121 = 3;
        v85 = v84;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(&v122, &v121, &v126);
        v86 = v127;
        v87 = v128;
        v88 = v129;
        v89 = v126;
        *&v111[(v81 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v81;
        *(v28[6] + 8 * v81) = v83;
        v90 = v28[7] + 48 * v81;
        *v90 = v85;
        *(v90 + 8) = v89;
        *(v90 + 24) = v86;
        *(v90 + 32) = v87;
        *(v90 + 40) = v88;
        v91 = v28[2];
        v92 = __OFADD__(v91, 1);
        v93 = v91 + 1;
        if (v92)
        {
          break;
        }

        v28[2] = v93;
        v25 = v110;
        if (!v17)
        {
          goto LABEL_35;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54BBD4(uint64_t a1)
{
  v122 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v111 - v2;
  v120 = sub_21DBF76AC();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v116 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A8);
  MEMORY[0x28223BE20](v117);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v118 = &v111 - v8;
  MEMORY[0x28223BE20](v9);
  v121 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3A0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v111 - v15;
  v17 = sub_21DBF9D8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v113 = v6;
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (!v23)
    {

      return;
    }

    v24 = v23;
    v25 = *(v22 + *(*v22 + 112));
    *v20 = v25;
    (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
    v26 = v25;
    LOBYTE(v25) = sub_21DBF9DAC();
    v28 = *(v18 + 8);
    v27 = v18 + 8;
    v28(v20, v17);
    if ((v25 & 1) == 0)
    {
      __break(1u);
      goto LABEL_52;
    }

    v112 = v3;
    v114 = v24;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3C8);
    v30 = *(v29 + 36);
    v31 = v122;
    sub_21D0D3954(v122 + v30, v16, &qword_27CE5C3A0);
    sub_21D53FD70(v16);
    sub_21D0D3954(v31 + v30, v13, &qword_27CE5C3A0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v13;
      sub_21D5DE2B8(*v13);

      return;
    }

    v115 = v22;
    v33 = v13;
    v34 = v121;
    sub_21D0D523C(v33, v121, &qword_27CE5C3A8);
    v35 = v31 + *(v29 + 40);
    v36 = v112;
    sub_21D0D3954(v35, v112, &qword_27CE5C1C8);
    v37 = v119;
    v38 = v120;
    if ((*(v119 + 48))(v36, 1, v120) == 1)
    {
      sub_21D0CF7E0(v36, &qword_27CE5C1C8);
      v39 = objc_opt_self();
      v40 = sub_21DBFA12C();
      v41 = [v39 internalErrorWithDebugDescription_];

      sub_21D5DE2B8(v41);

      v42 = v34;
LABEL_59:
      sub_21D0CF7E0(v42, &qword_27CE5C3A8);
      return;
    }

    v24 = v116;
    (*(v37 + 32))(v116, v36, v38);
    v43 = v117;
    v44 = *(v34 + *(v117 + 48));
    v45 = sub_21DBF75EC();
    v46 = *(v45 - 8);
    v47 = v118;
    (*(v46 + 16))(v118, v34, v45);
    *(v47 + *(v43 + 48)) = v44;
    v48 = OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_dataViewMonitor;
    v49 = v114;
    swift_beginAccess();
    v50 = *(v49 + v48);
    if (!v50)
    {
      v52 = v44;

      goto LABEL_13;
    }

    v51 = v44;
    if (v115 != v50)
    {

LABEL_13:

LABEL_58:
      sub_21D0CF7E0(v47, &qword_27CE5C3A8);
      (*(v37 + 8))(v24, v38);
      v42 = v34;
      goto LABEL_59;
    }

    v53 = v51;
    v54 = sub_21DBF6E3C();
    sub_21D4F5F28(v54);
    v56 = v55;

    if (v44)
    {
      v122 = v56;
      v57 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v58 = v114;
      swift_beginAccess();
      if (*(v58 + v57))
      {
        v59 = v53;

        sub_21D4F9F64(v59, v122);
      }

      else
      {
        v60 = *(v58 + OBJC_IVAR____TtC15RemindersUICore44TTRShowScheduledByDateBucketsDataModelSource_store);
        sub_21D0D8CF0(0, &qword_280D1B900);
        v61 = v53;
        v62 = sub_21DBFB12C();
        v63 = swift_allocObject();
        *(v63 + 16) = 0;
        v64 = sub_21D87E81C(v60, sub_21D554248, v63, v61, v62);
        *(v58 + v57) = v64;

        swift_beginAccess();
        v64[3] = &protocol witness table for TTRShowScheduledByDateBucketsDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
    }

    v65 = v113;
    sub_21D0D3954(v118, v113, &qword_27CE5C3A8);

    v27 = sub_21DBF716C();
    (*(v46 + 8))(v65, v45);
    if (v27 >> 62)
    {
      goto LABEL_53;
    }

    v66 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v66)
    {
LABEL_56:

LABEL_57:
      *&v125 = 0;
      *(&v125 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();
      v106 = v114;
      *&v125 = *v114;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB10);
      v107 = sub_21DBFA1AC();
      v109 = v108;

      *&v125 = v107;
      *(&v125 + 1) = v109;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v110 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v110);
      v47 = v118;
      *(&v111 - 4) = v106;
      *(&v111 - 3) = v47;
      *(&v111 - 2) = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      v34 = v121;
      v38 = v120;
      v37 = v119;
      goto LABEL_58;
    }

LABEL_21:
    *&v125 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v66 & ~(v66 >> 63), 0);
    if (v66 < 0)
    {
      __break(1u);
    }

    else
    {
      v67 = 0;
      v68 = v125;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223D44740](v67, v27);
        }

        else
        {
          v69 = *(v27 + 8 * v67 + 32);
        }

        v70 = v69;
        v71 = [v69 objectID];
        *&v125 = v68;
        v73 = *(v68 + 16);
        v72 = *(v68 + 24);
        if (v73 >= v72 >> 1)
        {
          v75 = v71;
          sub_21D18E6B8((v72 > 1), v73 + 1, 1);
          v71 = v75;
          v68 = v125;
        }

        ++v67;
        *(v68 + 16) = v73 + 1;
        v74 = v68 + 16 * v73;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
      }

      while (v66 != v67);

      while (1)
      {
        v76 = v114;
        if (*(v68 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v77 = sub_21DBFC40C();
        }

        else
        {
          v77 = MEMORY[0x277D84F98];
        }

        *&v125 = v77;
        v78 = sub_21DBF8E0C();
        sub_21D1931C0(v78, 1, &v125);

        v79 = v125;
        v80 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        v27 = *(v76 + v80);
        if (!v27)
        {

          v24 = v116;
          goto LABEL_57;
        }

        sub_21D188810(v79);
        v24 = v81;

        if ((v24 & 0xC000000000000001) != 0)
        {
          v82 = sub_21D883714();
          v122 = 0;

LABEL_50:
          *&v125 = *(v27 + 80);
          MEMORY[0x28223BE20](v83);
          *(&v111 - 2) = v27;
          *(&v111 - 1) = v82;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v24 = v116;
          goto LABEL_57;
        }

        v122 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v84 = sub_21DBFC3DC();
        v82 = v84;
        v85 = 0;
        v86 = 1 << *(v24 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        v88 = v87 & *(v24 + 64);
        v89 = (v86 + 63) >> 6;
        v117 = v84 + 64;
        if (v88)
        {
          break;
        }

LABEL_41:
        v91 = v85;
        while (1)
        {
          v85 = v91 + 1;
          if (__OFADD__(v91, 1))
          {
            break;
          }

          if (v85 >= v89)
          {

            goto LABEL_50;
          }

          v92 = *(v24 + 64 + 8 * v85);
          ++v91;
          if (v92)
          {
            v90 = __clz(__rbit64(v92));
            v88 = (v92 - 1) & v92;
            goto LABEL_46;
          }
        }

LABEL_52:
        __break(1u);
LABEL_53:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_56;
        }

        v66 = sub_21DBFBD7C();
        if (v66)
        {
          goto LABEL_21;
        }

        v68 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v90 = __clz(__rbit64(v88));
        v88 &= v88 - 1;
LABEL_46:
        v93 = v90 | (v85 << 6);
        v94 = *(*(v24 + 56) + 8 * v93);
        v95 = *(*(v24 + 48) + 8 * v93);
        v96 = v94;

        v124[3] = sub_21D0D8CF0(0, &qword_280D17860);
        v124[4] = &protocol witness table for REMReminder;
        v124[0] = v96;
        v123 = 3;
        v97 = v96;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v124, &v123, &v125);
        v98 = v126;
        v99 = v127;
        v100 = v128;
        v101 = v125;
        *(v117 + ((v93 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v93;
        *(v82[6] + 8 * v93) = v95;
        v102 = v82[7] + 48 * v93;
        *v102 = v97;
        *(v102 + 8) = v101;
        *(v102 + 24) = v98;
        *(v102 + 32) = v99;
        *(v102 + 40) = v100;
        v103 = v82[2];
        v104 = __OFADD__(v103, 1);
        v105 = v103 + 1;
        if (v104)
        {
          break;
        }

        v82[2] = v105;
        if (!v88)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54CAC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - v3;
  v4 = sub_21DBF76AC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C0);
  MEMORY[0x28223BE20](v37);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1B8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_21DBF9D8C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v20 = swift_weakLoadStrong();
    if (v20)
    {
      v36 = v20;
      v21 = *(v19 + *(*v19 + 112));
      *v17 = v21;
      (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
      v22 = v21;
      LOBYTE(v21) = sub_21DBF9DAC();
      (*(v15 + 8))(v17, v14);
      if (v21)
      {
        v35 = v7;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D0);
        v24 = *(v23 + 36);
        sub_21D0D3954(a1 + v24, v13, &qword_27CE5C1B8);
        sub_21D53FFA4(v13);
        sub_21D0D3954(a1 + v24, v10, &qword_27CE5C1B8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v10;
          sub_21DAB7224(*v10);
        }

        else
        {
          v26 = v35;
          sub_21D0D523C(v10, v35, &qword_27CE5C1C0);
          v27 = v39;
          sub_21D0D3954(a1 + *(v23 + 40), v39, &qword_27CE5C1C8);
          v29 = v40;
          v28 = v41;
          if ((*(v40 + 48))(v27, 1, v41) == 1)
          {
            sub_21D0CF7E0(v27, &qword_27CE5C1C8);
            v30 = objc_opt_self();
            v31 = sub_21DBFA12C();
            v32 = [v30 internalErrorWithDebugDescription_];

            sub_21DAB7224(v32);
          }

          else
          {
            v33 = v38;
            (*(v29 + 32))(v38, v27, v28);
            TTRShowTemplateDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(v19, v26, *(v26 + *(v37 + 48)), v33);

            (*(v29 + 8))(v33, v28);
          }

          sub_21D0CF7E0(v26, &qword_27CE5C1C0);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_21D54D018(void *a1)
{
  v119 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v110 - v2;
  v117 = sub_21DBF76AC();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0);
  MEMORY[0x28223BE20](v114);
  v6 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v110 - v8;
  MEMORY[0x28223BE20](v9);
  v118 = &v110 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298);
  MEMORY[0x28223BE20](v11);
  v13 = (&v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v110 - v15;
  v17 = sub_21DBF9D8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v110 = v6;
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (!v23)
    {

      return;
    }

    v24 = v23;
    v25 = *(v22 + *(*v22 + 112));
    *v20 = v25;
    (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
    v26 = v25;
    LOBYTE(v25) = sub_21DBF9DAC();
    v28 = *(v18 + 8);
    v27 = v18 + 8;
    v28(v20, v17);
    if ((v25 & 1) == 0)
    {
      __break(1u);
      goto LABEL_53;
    }

    v111 = v24;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C398);
    v30 = *(v29 + 36);
    v31 = v119;
    sub_21D0D3954(v119 + v30, v16, &qword_27CE5C298);
    sub_21D1361E0(v16);
    sub_21D0D3954(v31 + v30, v13, &qword_27CE5C298);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v13;
      sub_21D6578EC(*v13);

      return;
    }

    v112 = v22;
    v33 = v13;
    v34 = v118;
    sub_21D0D523C(v33, v118, &qword_27CE5C2A0);
    sub_21D0D3954(v31 + *(v29 + 40), v3, &qword_27CE5C1C8);
    v35 = v116;
    v36 = v117;
    if ((*(v116 + 48))(v3, 1, v117) == 1)
    {
      sub_21D0CF7E0(v3, &qword_27CE5C1C8);
      v37 = objc_opt_self();
      v38 = sub_21DBFA12C();
      v39 = [v37 internalErrorWithDebugDescription_];

      sub_21D6578EC(v39);

      v40 = v34;
LABEL_60:
      sub_21D0CF7E0(v40, &qword_27CE5C2A0);
      return;
    }

    v41 = v113;
    (*(v35 + 32))(v113, v3, v36);
    v42 = v114;
    v43 = *(v34 + *(v114 + 48));
    v44 = sub_21DBF773C();
    v45 = *(v44 - 8);
    v24 = v115;
    (*(v45 + 16))(v115, v34, v44);
    *(v24 + *(v42 + 48)) = v43;
    v46 = OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_dataViewMonitor;
    v47 = v111;
    swift_beginAccess();
    v48 = *(v47 + v46);
    if (!v48)
    {
      v50 = v43;

      goto LABEL_13;
    }

    v49 = v43;
    if (v112 != v48)
    {

LABEL_13:

LABEL_59:
      sub_21D0CF7E0(v24, &qword_27CE5C2A0);
      (*(v35 + 8))(v41, v36);
      v40 = v34;
      goto LABEL_60;
    }

    v51 = v49;
    v52 = sub_21DBF6E3C();
    sub_21D4F5F28(v52);
    v54 = v53;

    if (v43)
    {
      v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v56 = v111;
      swift_beginAccess();
      if (*(v56 + v55))
      {
        v57 = v51;

        sub_21D4F9F64(v57, v54);
      }

      else
      {
        v119 = *(v56 + OBJC_IVAR____TtC15RemindersUICore37TTRShowRecentlyDeletedDataModelSource_store);
        v58 = objc_opt_self();
        v59 = v51;
        v60 = [v58 fetchOptionsIncludingConcealed];
        sub_21D0D8CF0(0, &qword_280D1B900);
        v61 = sub_21DBFB12C();
        v62 = swift_allocObject();
        *(v62 + 16) = v60;
        v63 = sub_21D87E81C(v119, sub_21D554248, v62, v59, v61);
        *(v56 + v55) = v63;

        swift_beginAccess();
        v63[3] = &protocol witness table for TTRShowRecentlyDeletedDataModelSource;
        swift_unknownObjectWeakAssign();
      }

      v24 = v115;
    }

    else
    {
    }

    v64 = v110;
    sub_21D0D3954(v24, v110, &qword_27CE5C2A0);

    v27 = sub_21DBF716C();
    (*(v45 + 8))(v64, v44);
    if (v27 >> 62)
    {
      goto LABEL_54;
    }

    v65 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v65)
    {
LABEL_57:

LABEL_58:
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_21DBFBEEC();
      v105 = v111;
      *&v122 = *v111;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB08);
      v106 = sub_21DBFA1AC();
      v108 = v107;

      *&v122 = v106;
      *(&v122 + 1) = v108;
      MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
      v109 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v109);
      *(&v110 - 4) = v105;
      *(&v110 - 3) = v24;
      v41 = v113;
      *(&v110 - 2) = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
      sub_21DBF625C();

      v34 = v118;
      v36 = v117;
      v35 = v116;
      goto LABEL_59;
    }

LABEL_22:
    *&v122 = MEMORY[0x277D84F90];
    sub_21D18E6B8(0, v65 & ~(v65 >> 63), 0);
    if (v65 < 0)
    {
      __break(1u);
    }

    else
    {
      v66 = 0;
      v67 = v122;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x223D44740](v66, v27);
        }

        else
        {
          v68 = *(v27 + 8 * v66 + 32);
        }

        v69 = v68;
        v70 = [v68 objectID];
        *&v122 = v67;
        v72 = *(v67 + 16);
        v71 = *(v67 + 24);
        if (v72 >= v71 >> 1)
        {
          v74 = v70;
          sub_21D18E6B8((v71 > 1), v72 + 1, 1);
          v70 = v74;
          v67 = v122;
        }

        ++v66;
        *(v67 + 16) = v72 + 1;
        v73 = v67 + 16 * v72;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
      }

      while (v65 != v66);

      while (1)
      {
        v24 = v115;
        if (*(v67 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v75 = sub_21DBFC40C();
        }

        else
        {
          v75 = MEMORY[0x277D84F98];
        }

        *&v122 = v75;
        v76 = sub_21DBF8E0C();
        sub_21D1931C0(v76, 1, &v122);

        v77 = v122;
        v78 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v79 = v111;
        swift_beginAccess();
        v27 = *(v79 + v78);
        if (!v27)
        {

          goto LABEL_58;
        }

        sub_21D188810(v77);
        v24 = v80;

        if ((v24 & 0xC000000000000001) != 0)
        {
          v81 = sub_21D883714();
          v119 = 0;

LABEL_51:
          *&v122 = *(v27 + 80);
          MEMORY[0x28223BE20](v82);
          *(&v110 - 2) = v27;
          *(&v110 - 1) = v81;
          sub_21DBF5EFC();

          sub_21DBF814C();

          v24 = v115;
          goto LABEL_58;
        }

        v119 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58308);
        v83 = sub_21DBFC3DC();
        v81 = v83;
        v84 = 0;
        v85 = 1 << *(v24 + 32);
        v86 = -1;
        if (v85 < 64)
        {
          v86 = ~(-1 << v85);
        }

        v87 = v86 & *(v24 + 64);
        v88 = (v85 + 63) >> 6;
        v114 = v83 + 64;
        if (v87)
        {
          break;
        }

LABEL_42:
        v90 = v84;
        while (1)
        {
          v84 = v90 + 1;
          if (__OFADD__(v90, 1))
          {
            break;
          }

          if (v84 >= v88)
          {

            goto LABEL_51;
          }

          v91 = *(v24 + 64 + 8 * v84);
          ++v90;
          if (v91)
          {
            v89 = __clz(__rbit64(v91));
            v87 = (v91 - 1) & v91;
            goto LABEL_47;
          }
        }

LABEL_53:
        __break(1u);
LABEL_54:
        if (!sub_21DBFBD7C())
        {
          goto LABEL_57;
        }

        v65 = sub_21DBFBD7C();
        if (v65)
        {
          goto LABEL_22;
        }

        v67 = MEMORY[0x277D84F90];
      }

      while (1)
      {
        v89 = __clz(__rbit64(v87));
        v87 &= v87 - 1;
LABEL_47:
        v92 = v89 | (v84 << 6);
        v93 = *(*(v24 + 56) + 8 * v92);
        v94 = *(*(v24 + 48) + 8 * v92);
        v95 = v93;

        v121[3] = sub_21D0D8CF0(0, &qword_280D17860);
        v121[4] = &protocol witness table for REMReminder;
        v121[0] = v95;
        v120 = 3;
        v96 = v95;
        TTRReminderViewModelComputedProperties.init(reminder:postProcessingOperations:)(v121, &v120, &v122);
        v97 = v123;
        v98 = v124;
        v99 = v125;
        v100 = v122;
        *(v114 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
        *(*(v81 + 6) + 8 * v92) = v94;
        v101 = *(v81 + 7) + 48 * v92;
        *v101 = v96;
        *(v101 + 8) = v100;
        *(v101 + 24) = v97;
        *(v101 + 32) = v98;
        *(v101 + 40) = v99;
        v102 = *(v81 + 2);
        v103 = __OFADD__(v102, 1);
        v104 = v102 + 1;
        if (v103)
        {
          break;
        }

        *(v81 + 2) = v104;
        if (!v87)
        {
          goto LABEL_42;
        }
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_21D54DF20(uint64_t a1)
{
  v99 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v88 - v2;
  v98 = sub_21DBF76AC();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1E0);
  MEMORY[0x28223BE20](v94);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v95 = &v88 - v8;
  MEMORY[0x28223BE20](v9);
  v96 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1D8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  v17 = sub_21DBF9D8C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v91 = v6;
    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    if (!v23)
    {

      return;
    }

    v24 = v23;
    v25 = *(v22 + *(*v22 + 112));
    *v20 = v25;
    (*(v18 + 104))(v20, *MEMORY[0x277D85200], v17);
    v26 = v25;
    LOBYTE(v25) = sub_21DBF9DAC();
    v28 = *(v18 + 8);
    v27 = v18 + 8;
    v28(v20, v17);
    if (v25)
    {
      v90 = v3;
      v92 = v24;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C200);
      v30 = v22;
      v31 = *(v29 + 36);
      v32 = v99;
      sub_21D0D3954(v99 + v31, v16, &qword_27CE5C1D8);
      sub_21D5401D8(v16);
      sub_21D0D3954(v32 + v31, v13, &qword_27CE5C1D8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *v13;
        sub_21D504124(*v13);

        return;
      }

      v89 = v30;
      v22 = v96;
      sub_21D0D523C(v13, v96, &qword_27CE5C1E0);
      v34 = v90;
      sub_21D0D3954(v32 + *(v29 + 40), v90, &qword_27CE5C1C8);
      v35 = v97;
      v36 = v98;
      if ((*(v97 + 48))(v34, 1, v98) == 1)
      {
        sub_21D0CF7E0(v34, &qword_27CE5C1C8);
        v37 = objc_opt_self();
        v38 = sub_21DBFA12C();
        v39 = [v37 internalErrorWithDebugDescription_];

        sub_21D504124(v39);

        v40 = v22;
LABEL_43:
        sub_21D0CF7E0(v40, &qword_27CE5C1E0);
        return;
      }

      v24 = v93;
      (*(v35 + 32))(v93, v34, v36);
      v41 = v94;
      v42 = *(v22 + *(v94 + 48));
      v43 = sub_21DBF757C();
      v44 = *(v43 - 8);
      v45 = v95;
      (*(v44 + 16))(v95, v22, v43);
      *(v45 + *(v41 + 48)) = v42;
      v46 = OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_dataViewMonitor;
      v47 = v92;
      swift_beginAccess();
      v48 = *(v47 + v46);
      if (!v48)
      {
        v50 = v42;

        goto LABEL_13;
      }

      v49 = v42;
      if (v89 != v48)
      {

LABEL_13:

LABEL_42:
        sub_21D0CF7E0(v45, &qword_27CE5C1E0);
        (*(v35 + 8))(v24, v36);
        v40 = v22;
        goto LABEL_43;
      }

      v51 = v49;
      v52 = sub_21DBF6E3C();
      sub_21D4F5F28(v52);
      v54 = v53;

      if (v42)
      {
        v99 = v54;
        v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v56 = v92;
        swift_beginAccess();
        if (*(v56 + v55))
        {
          v57 = v51;

          sub_21D4F9F64(v57, v99);
        }

        else
        {
          v58 = *(v56 + OBJC_IVAR____TtC15RemindersUICore44TTRShowCompletedByDateBucketsDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900);
          v59 = v51;
          v60 = sub_21DBFB12C();
          v61 = swift_allocObject();
          *(v61 + 16) = 0;
          v62 = v58;
          v22 = v96;
          v63 = sub_21D87E81C(v62, sub_21D1947D8, v61, v59, v60);
          *(v56 + v55) = v63;

          swift_beginAccess();
          v63[3] = &protocol witness table for TTRShowCompletedByDateBucketsDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v64 = v91;
      sub_21D0D3954(v95, v91, &qword_27CE5C1E0);

      v27 = sub_21DBF716C();
      (*(v44 + 8))(v64, v43);
      if (!(v27 >> 62))
      {
        v65 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65)
        {
          goto LABEL_21;
        }

        goto LABEL_40;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_21DBFBD7C())
    {
      v65 = sub_21DBFBD7C();
      if (!v65)
      {

        v67 = MEMORY[0x277D84F90];
LABEL_30:
        v35 = v97;
        v24 = v93;
        v45 = v95;
        if (*(v67 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v76 = sub_21DBFC40C();
        }

        else
        {
          v76 = MEMORY[0x277D84F98];
        }

        v102[0] = v76;
        v77 = sub_21DBF8E0C();
        sub_21D1931C0(v77, 1, v102);

        v78 = v102[0];
        v79 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        v80 = v92;
        swift_beginAccess();
        if (*(v80 + v79))
        {

          sub_21D188810(v78);
          v82 = v81;

          TTRBatchFetchManager<A>.override(objects:)(v82);
        }

        else
        {
        }

        goto LABEL_41;
      }

LABEL_21:
      v102[0] = MEMORY[0x277D84F90];
      sub_21D18E6B8(0, v65 & ~(v65 >> 63), 0);
      if (v65 < 0)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v66 = 0;
      v67 = v102[0];
      v68 = &off_278331000;
      do
      {
        if ((v27 & 0xC000000000000001) != 0)
        {
          v69 = MEMORY[0x223D44740](v66, v27);
        }

        else
        {
          v69 = *(v27 + 8 * v66 + 32);
        }

        v70 = v69;
        v71 = [v69 v68[425]];
        v102[0] = v67;
        v73 = *(v67 + 16);
        v72 = *(v67 + 24);
        if (v73 >= v72 >> 1)
        {
          v75 = v71;
          sub_21D18E6B8((v72 > 1), v73 + 1, 1);
          v68 = &off_278331000;
          v71 = v75;
          v67 = v102[0];
        }

        ++v66;
        *(v67 + 16) = v73 + 1;
        v74 = v67 + 16 * v73;
        *(v74 + 32) = v71;
        *(v74 + 40) = v70;
      }

      while (v65 != v66);

      goto LABEL_30;
    }

LABEL_40:

    v35 = v97;
    v45 = v95;
LABEL_41:
    v100 = 0;
    v101 = 0xE000000000000000;
    sub_21DBFBEEC();
    v83 = v92;
    v100 = *v92;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D328);
    v84 = sub_21DBFA1AC();
    v86 = v85;

    v100 = v84;
    v101 = v86;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v87 = sub_21DBFAEDC();
    v99 = &v88;
    MEMORY[0x28223BE20](v87);
    *(&v88 - 4) = v83;
    *(&v88 - 3) = v45;
    *(&v88 - 2) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();

    v36 = v98;
    goto LABEL_42;
  }
}

void sub_21D54EB80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v45 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3D0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = sub_21DBF9D8C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v16 = Strong;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

    return;
  }

  v45 = v4;
  v17 = *(v16 + *(*v16 + 112));
  *v14 = v17;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v18 = v17;
  LOBYTE(v17) = sub_21DBF9DAC();
  v20 = *(v12 + 8);
  v19 = (v12 + 8);
  v20(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C3E0);
  v22 = *(v21 + 36);
  sub_21D0D3954(a1 + v22, v10, &qword_27CE5C3D0);
  sub_21D54040C(v10);
  sub_21D0D3954(a1 + v22, v7, &qword_27CE5C3D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v7;
    if (qword_27CE569A8 == -1)
    {
LABEL_6:
      v23 = sub_21DBF84BC();
      __swift_project_value_buffer(v23, qword_27CE5DA68);
      v24 = v19;
      v25 = sub_21DBF84AC();
      v26 = sub_21DBFAEBC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v46 = v28;
        *v27 = 136315138;
        swift_getErrorValue();
        v29 = sub_21DBFC75C();
        v31 = sub_21D0CDFB4(v29, v30, &v46);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_21D0C9000, v25, v26, "TTREditTodaySectionsMonitorableDataView: did hit error {error: %s}", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x223D46520](v28, -1, -1);
        MEMORY[0x223D46520](v27, -1, -1);
      }

      return;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  v32 = v45;
  sub_21D0D523C(v7, v45, &qword_27CE5C3D8);
  if (*(a1 + *(v21 + 40)))
  {
    v33 = objc_opt_self();
    v34 = sub_21DBFA12C();
    v35 = [v33 internalErrorWithDebugDescription_];

    if (qword_27CE569A8 != -1)
    {
      swift_once();
    }

    v36 = sub_21DBF84BC();
    __swift_project_value_buffer(v36, qword_27CE5DA68);
    v37 = v35;
    v38 = sub_21DBF84AC();
    v39 = sub_21DBFAEBC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_21DBFC75C();
      v44 = sub_21D0CDFB4(v42, v43, &v46);

      *(v40 + 4) = v44;
      v32 = v45;
      _os_log_impl(&dword_21D0C9000, v38, v39, "TTREditTodaySectionsMonitorableDataView: did hit error {error: %s}", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x223D46520](v41, -1, -1);
      MEMORY[0x223D46520](v40, -1, -1);
    }
  }

  else
  {
    sub_21D552610(v32);
  }

  sub_21D0CF7E0(v32, &qword_27CE5C3D8);
}

void sub_21D54F19C(uint64_t *a1)
{
  v108 = a1;
  v1 = sub_21DBF719C();
  v97 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v96 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_21DBF6DBC();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v101 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C1C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v92 - v5;
  v104 = sub_21DBF76AC();
  v106 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F8);
  MEMORY[0x28223BE20](v102);
  v98 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v92 - v10;
  MEMORY[0x28223BE20](v11);
  v105 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2F0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v18 = &v92 - v17;
  v19 = sub_21DBF9D8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v94 = v1;
    swift_beginAccess();
    v25 = swift_weakLoadStrong();
    if (!v25)
    {

      return;
    }

    v26 = v25;
    v27 = *(v24 + *(*v24 + 112));
    *v22 = v27;
    (*(v20 + 104))(v22, *MEMORY[0x277D85200], v19);
    v28 = v27;
    LOBYTE(v27) = sub_21DBF9DAC();
    (*(v20 + 8))(v22, v19);
    if (v27)
    {
      v95 = v26;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C308);
      v30 = *(v29 + 36);
      v31 = v108;
      sub_21D0D3954(v108 + v30, v18, &qword_27CE5C2F0);
      sub_21D540640(v18);
      sub_21D0D3954(v31 + v30, v15, &qword_27CE5C2F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = *v15;
        sub_21D7D309C(*v15);

        return;
      }

      v93 = v24;
      v24 = v105;
      sub_21D0D523C(v15, v105, &qword_27CE5C2F8);
      sub_21D0D3954(v31 + *(v29 + 40), v6, &qword_27CE5C1C8);
      v33 = v106;
      v15 = v104;
      v34 = (*(v106 + 48))(v6, 1, v104);
      v35 = v95;
      if (v34 == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5C1C8);
        v36 = objc_opt_self();
        v37 = sub_21DBFA12C();
        v38 = [v36 internalErrorWithDebugDescription_];

        sub_21D7D309C(v38);

        v39 = v24;
LABEL_44:
        sub_21D0CF7E0(v39, &qword_27CE5C2F8);
        return;
      }

      v40 = v103;
      (*(v33 + 32))(v103, v6, v15);
      v41 = v102;
      v42 = *(v24 + *(v102 + 48));
      v43 = v107;
      sub_21D0D3954(v24, v107, &qword_27CE5DAE0);
      *(v43 + *(v41 + 48)) = v42;
      v44 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_dataViewMonitor;
      swift_beginAccess();
      v45 = *(v35 + v44);
      if (!v45 || v93 != v45)
      {
        v46 = v42;

LABEL_43:
        sub_21D0CF7E0(v107, &qword_27CE5C2F8);
        (*(v33 + 8))(v40, v15);
        v39 = v24;
        goto LABEL_44;
      }

      v47 = v98;
      sub_21D0D3954(v107, v98, &qword_27CE5C2F8);
      v48 = *(v47 + *(v41 + 48));
      v49 = v42;

      v50 = v99;
      v51 = v100;
      if ((*(v99 + 48))(v47, 1, v100) == 1)
      {

        sub_21D0CF7E0(v47, &qword_27CE5DAE0);
        v40 = v103;
        goto LABEL_43;
      }

      (*(v50 + 32))(v101, v47, v51);
      v52 = sub_21DBF6E3C();
      sub_21D4F5F28(v52);
      v54 = v53;

      if (v42)
      {
        v55 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        if (*(v35 + v55))
        {
          v56 = v49;

          sub_21D4F9F64(v56, v54);
        }

        else
        {
          v58 = *(v35 + OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_store);
          sub_21D0D8CF0(0, &qword_280D1B900);
          v59 = v49;
          v60 = sub_21DBFB12C();
          v61 = v35;
          v62 = swift_allocObject();
          *(v62 + 16) = 0;
          v63 = sub_21D87E81C(v58, sub_21D554248, v62, v59, v60);
          *(v61 + v55) = v63;

          swift_beginAccess();
          v63[3] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
          swift_unknownObjectWeakAssign();
        }
      }

      else
      {
      }

      v64 = v96;
      MEMORY[0x223D3F550](v57);
      v26 = sub_21DBF716C();
      (*(v97 + 8))(v64, v94);
      if (!(v26 >> 62))
      {
        v65 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v65)
        {
          goto LABEL_22;
        }

        goto LABEL_41;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_21DBFBD7C())
    {
      v65 = sub_21DBFBD7C();
      if (!v65)
      {

        v67 = MEMORY[0x277D84F90];
LABEL_31:
        v24 = v105;
        v15 = v104;
        v75 = v95;
        if (*(v67 + 16))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8);
          v76 = sub_21DBFC40C();
        }

        else
        {
          v76 = MEMORY[0x277D84F98];
        }

        v111[0] = v76;
        v77 = sub_21DBF8E0C();
        sub_21D1931C0(v77, 1, v111);

        v78 = v111[0];
        v79 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
        swift_beginAccess();
        if (*(v75 + v79))
        {

          sub_21D188810(v78);
          v81 = v80;

          TTRBatchFetchManager<A>.override(objects:)(v81);

          v75 = v95;
        }

        else
        {
        }

        goto LABEL_42;
      }

LABEL_22:
      v111[0] = MEMORY[0x277D84F90];
      sub_21D18E6B8(0, v65 & ~(v65 >> 63), 0);
      if (v65 < 0)
      {
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        return;
      }

      v66 = 0;
      v67 = v111[0];
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x223D44740](v66, v26);
        }

        else
        {
          v68 = *(v26 + 8 * v66 + 32);
        }

        v69 = v68;
        v70 = [v68 objectID];
        v111[0] = v67;
        v72 = *(v67 + 16);
        v71 = *(v67 + 24);
        if (v72 >= v71 >> 1)
        {
          v74 = v70;
          sub_21D18E6B8((v71 > 1), v72 + 1, 1);
          v70 = v74;
          v67 = v111[0];
        }

        ++v66;
        *(v67 + 16) = v72 + 1;
        v73 = v67 + 16 * v72;
        *(v73 + 32) = v70;
        *(v73 + 40) = v69;
      }

      while (v65 != v66);

      goto LABEL_31;
    }

LABEL_41:

    v75 = v95;
LABEL_42:
    v82 = v101;
    v83 = sub_21DBF6DAC();
    v84 = OBJC_IVAR____TtC15RemindersUICore36TTRShowPublicTemplateDataModelSource_listRepresentation;
    swift_beginAccess();
    v85 = *(v75 + v84);
    *(v75 + v84) = v83;
    v86 = v83;

    v109 = 0;
    v110 = 0xE000000000000000;
    sub_21DBFBEEC();
    v109 = *v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAE8);
    v87 = sub_21DBFA1AC();
    v89 = v88;

    v109 = v87;
    v110 = v89;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v90 = sub_21DBFAEDC();
    v108 = &v92;
    MEMORY[0x28223BE20](v90);
    *(&v92 - 4) = v75;
    *(&v92 - 3) = v86;
    *(&v92 - 2) = v82;
    v91 = v103;
    *(&v92 - 1) = v103;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0);
    sub_21DBF625C();
    v40 = v91;

    (*(v99 + 8))(v101, v100);
    v33 = v106;
    goto LABEL_43;
  }
}