uint64_t View.notificationsWontFireAlert(isPresented:localizedTitle:localizedDismiss:completion:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  LOBYTE(v14) = a3;
  *(&v14 + 1) = a4;
  *&v15 = a5;
  *(&v15 + 1) = a6;
  *&v16 = a7;
  *(&v16 + 1) = a8;
  v17 = a9;

  sub_269C255A8(a8);
  MEMORY[0x26D64FEB0](&v13, a10, &type metadata for NotificationsWontFireAlert, a11);
  v18[2] = v15;
  v18[3] = v16;
  v19 = v17;
  v18[0] = v13;
  v18[1] = v14;
  return sub_269D253B4(v18);
}

uint64_t static String.sleepOnboardingNotificationsWontFireAlertTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t static String.sleepOnboardingNotificationsWontFireAlertDismiss.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t static String.sleepRemindersWontFireAlertTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t static String.sleepResultsWontFireAlertTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t static String.sleepScoreNotificationsWontFireAlertTitle.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t static String.notificationsWontFireAlertDismiss.getter()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

id _sSo17UIAlertControllerC13SleepHealthUIE026notificationsWontFireAlertB014localizedTitle0J7Dismiss10completionABSS_SSySbcSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v8 = qword_280C0D990;
  sub_269D972C0();

  v9 = sub_269D9A5F0();
  v10 = sub_269D9A5F0();

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:{1, 0xE000000000000000}];

  v12 = v8;
  sub_269D972C0();

  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  *(v13 + 24) = a6;
  sub_269C255A8(a5);
  v14 = sub_269D9A5F0();

  v27 = sub_269D257C0;
  v28 = v13;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_269CECE18;
  v26 = &block_descriptor_29;
  v15 = _Block_copy(&aBlock);

  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v14 style:0 handler:{v15, 0xE000000000000000}];
  _Block_release(v15);

  [v11 addAction_];
  [v11 setPreferredAction_];
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  sub_269C255A8(a5);
  v19 = sub_269D9A5F0();
  v27 = sub_269D257E0;
  v28 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_269CECE18;
  v26 = &block_descriptor_11;
  v20 = _Block_copy(&aBlock);

  v21 = [v16 actionWithTitle:v19 style:1 handler:v20];
  _Block_release(v20);

  [v11 addAction_];
  return v11;
}

unint64_t sub_269D253E4()
{
  result = qword_280350D48;
  if (!qword_280350D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_269D25450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_269D25498(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_269D25554()
{
  if (!qword_280350D50)
  {
    sub_269D253E4();
    v0 = sub_269D99360();
    if (!v1)
    {
      atomic_store(v0, &qword_280350D50);
    }
  }
}

void sub_269D255B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269D25614()
{
  if (!qword_28034F1E0)
  {
    sub_269C9D884();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F1E0);
    }
  }
}

void sub_269D25674(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277CE0BD8]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_269D256C8()
{
  result = qword_280350D58;
  if (!qword_280350D58)
  {
    sub_269D25554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D58);
  }

  return result;
}

unint64_t sub_269D25720()
{
  result = qword_28034F210;
  if (!qword_28034F210)
  {
    sub_269D255B0(255, &qword_28034F1D0, sub_269C9D7DC, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F210);
  }

  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269D257E8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

Swift::Void __swiftcall UICollectionView.registerWindDownPickerCell()()
{
  v0 = type metadata accessor for WindDownTimePickerCollectionViewCell();
  v1 = sub_269D2588C();

  MEMORY[0x28216A168](v0, v0, v1);
}

unint64_t sub_269D2588C()
{
  result = qword_280350D60;
  if (!qword_280350D60)
  {
    type metadata accessor for WindDownTimePickerCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D60);
  }

  return result;
}

id sub_269D258E0(double a1, double a2, double a3, double a4)
{
  v18.receiver = v4;
  v18.super_class = type metadata accessor for WindDownTimePickerCollectionViewCell();
  v9 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = sub_269C628D0();

  v11 = sub_269D25DA0();
  v12 = &v10[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration];
  v13 = *&v10[OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8];
  *v12 = v14;
  v12[1] = v15;
  *(v12 + 2) = v11;
  *(v12 + 24) = v16 & 1;
  if (v13 != v15)
  {
    [v10 reloadAllComponents];
    sub_269CD94E4(1);
  }

  return v9;
}

id sub_269D25A80(void *a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for WindDownTimePickerCollectionViewCell();
  v3 = objc_msgSendSuper2(&v14, sel_initWithCoder_, a1);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    v6 = sub_269C628D0();

    v7 = sub_269D25DA0();
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

uint64_t sub_269D25BEC()
{
  sub_269CF032C();
  v1 = OBJC_IVAR____TtC13SleepHealthUI28TimePickerCollectionViewCell_item;
  swift_beginAccess();
  sub_269C63264(v0 + v1, v9);
  if (!v10)
  {
    return sub_269C63208(v9);
  }

  sub_269C4C0D0();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  result = sub_269C628D0();
  v3 = floor(*MEMORY[0x277D623E8] * 60.0 / 60.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = v3;
  v6 = result + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration;
  v7 = *(result + OBJC_IVAR____TtC13SleepHealthUI22TimeIntervalPickerView_configuration + 8);
  *v6 = *MEMORY[0x277D623D8] * 60.0;
  *(v6 + 8) = v8;
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  if (v7 != v8)
  {
    [result reloadAllComponents];
    sub_269CD94E4(1);
  }
}

id sub_269D25D6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WindDownTimePickerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D25DA0()
{
  v0 = floor(*MEMORY[0x277D623E8] * 60.0 / 60.0);
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v0 < 9.22337204e18)
  {
    return v0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_269D25E54(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = round(a2);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < 9.22337204e18)
  {
    sub_269D261B0();
    sub_269D9AEC0();
    sub_269C3EEE8();
    *a1 = sub_269D99960();
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
    *(a1 + 24) = v7;
    *(a1 + 32) = 0;
    *(a1 + 40) = a2;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_269D25F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_269D26204();

  return MEMORY[0x282132D20](a1, a2, a3, v8, a4);
}

uint64_t sub_269D25F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_269D26204();

  return MEMORY[0x282132D28](a1, a2, a3, v8, a4);
}

uint64_t sub_269D26000@<X0>(void *a1@<X8>)
{
  v5 = *v1;
  v3 = v5;
  result = (*(*(MEMORY[0x277D839F8] - 8) + 8))(&v5);
  *a1 = v3;
  return result;
}

double sub_269D26070(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_269D2607C(uint64_t *a1))(uint64_t a1)
{
  a1[2] = v1;
  v3 = *v1;
  *a1 = *v1;
  (*(*(MEMORY[0x277D839F8] - 8) + 8))();
  a1[1] = v3;
  return sub_269D26100;
}

double sub_269D26100(uint64_t a1)
{
  result = *(a1 + 8);
  **(a1 + 16) = result;
  return result;
}

void sub_269D26120()
{
  if (!qword_280350D70)
  {
    v0 = sub_269D98D10();
    if (!v1)
    {
      atomic_store(v0, &qword_280350D70);
    }
  }
}

unint64_t sub_269D261B0()
{
  result = qword_280C0AF48;
  if (!qword_280C0AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C0AF48);
  }

  return result;
}

unint64_t sub_269D26204()
{
  result = qword_280350D78;
  if (!qword_280350D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D78);
  }

  return result;
}

unint64_t sub_269D26258()
{
  result = qword_280350D80;
  if (!qword_280350D80)
  {
    sub_269D26308();
    sub_269D263C0(&qword_280350D98, sub_269D26368);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350D80);
  }

  return result;
}

void sub_269D26308()
{
  if (!qword_280350D88)
  {
    sub_269D26368();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350D88);
    }
  }
}

void sub_269D26368()
{
  if (!qword_280350D90)
  {
    v0 = sub_269D99130();
    if (!v1)
    {
      atomic_store(v0, &qword_280350D90);
    }
  }
}

uint64_t sub_269D263C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_269D26408@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  v3 = sub_269D972C0();
  v5 = v4;

  *a1 = 0x695F68746C616568;
  *(a1 + 8) = 0xEB000000006E6F63;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  return result;
}

id sub_269D26518@<X0>(uint64_t a1@<X8>)
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  v3 = sub_269D972C0();
  v5 = v4;

  result = [objc_opt_self() quaternarySystemFillColor];
  if (result)
  {
    result = sub_269D99CC0();
  }

  *a1 = 0x695F68746C616568;
  *(a1 + 8) = 0xEB000000006E6F63;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  return result;
}

uint64_t PromotionViewModel.imageName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromotionViewModel.localizedTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromotionViewModel.init(imageName:localizedTitle:backgroundColor:deepLinkDestination:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  if (a5)
  {
    result = sub_269D99CC0();
  }

  else
  {
    result = 0;
  }

  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = result;
  *(a7 + 40) = v12;
  return result;
}

uint64_t sub_269D26730@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
}

uint64_t sub_269D26794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269D27C14();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v21 - v8;
  sub_269D27BB4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = qword_280C0AE70;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_280C0D990;
  v21[0] = sub_269D99DD0();
  v21[1] = 0x4040000000000000;
  sub_269D283AC();
  sub_269D99AD0();

  *v9 = sub_269D991A0();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  sub_269D28400(0, &qword_280350E78, sub_269D27CA8);
  sub_269D26AB0(a1, &v9[*(v18 + 44)]);
  sub_269D284D4(v15, v12, sub_269D27BB4);
  sub_269D2846C(v9, v6, sub_269D27C14);
  sub_269D284D4(v12, a2, sub_269D27BB4);
  sub_269D27CE4(0, &qword_280350DC0, sub_269D27BB4, sub_269D27C14);
  sub_269D2846C(v6, a2 + *(v19 + 48), sub_269D27C14);
  sub_269D2853C(v9, sub_269D27C14);
  sub_269D2859C(v15, sub_269D27BB4);
  sub_269D2853C(v6, sub_269D27C14);
  sub_269D2859C(v12, sub_269D27BB4);
}

uint64_t sub_269D26AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  sub_269D27F50(0);
  v102 = *(v3 - 8);
  v103 = v3;
  MEMORY[0x28223BE20](v3);
  v93 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D98D90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D28074();
  v85 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D27FE8(0);
  v89 = v12;
  MEMORY[0x28223BE20](v12);
  v92 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v83 - v15;
  MEMORY[0x28223BE20](v16);
  v90 = &v83 - v17;
  v91 = sub_269D9A060();
  v88 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v86 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  sub_269D27EF8();
  MEMORY[0x28223BE20](v22 - 8);
  v100 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v83 - v25;
  sub_269D9A8E0();
  v101 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v26 = *(a1 + 24);
  v27 = *(a1 + 40);
  v117 = *(a1 + 16);
  v118 = v26;
  sub_269C3EEE8();

  v28 = sub_269D99960();
  v98 = v29;
  v99 = v28;
  LOBYTE(v26) = v30;
  v105 = v31;
  KeyPath = swift_getKeyPath();
  v96 = swift_getKeyPath();
  v104 = v26 & 1;
  v140 = v26 & 1;
  v139 = 1;
  LOBYTE(v26) = sub_269D99620();
  v32 = sub_269D99610();
  sub_269D99610();
  if (sub_269D99610() != v26)
  {
    v32 = sub_269D99610();
  }

  sub_269D98990();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v141 = 0;
  v95 = v32;
  if (v27 == 3)
  {
    v41 = 1;
  }

  else
  {
    sub_269D9A050();
    v122 = &type metadata for DeepLinkOpener;
    v123 = &protocol witness table for DeepLinkOpener;
    v107 = 0;
    sub_269D99E60();
    LOBYTE(v124) = v108;
    v125 = *(&v108 + 1);
    LOBYTE(v117) = v27;
    sub_269D98D80();
    sub_269C990B4();
    sub_269D28214(&qword_280350E30, MEMORY[0x277CDDB18]);
    sub_269D99A80();
    (*(v6 + 8))(v8, v5);
    sub_269C9E3A0(&v117);
    v42 = [objc_opt_self() systemBlueColor];
    v43 = sub_269D99CC0();
    v44 = swift_getKeyPath();
    v45 = &v11[*(v85 + 36)];
    *v45 = v44;
    v45[1] = v43;
    v46 = sub_269D99620();
    v47 = sub_269D99610();
    sub_269D99610();
    if (sub_269D99610() != v46)
    {
      v47 = sub_269D99610();
    }

    sub_269D98990();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = v87;
    sub_269D285FC(v11, v87, sub_269D28074);
    v57 = v90;
    v58 = v56 + *(v89 + 36);
    *v58 = v47;
    *(v58 + 8) = v49;
    *(v58 + 16) = v51;
    *(v58 + 24) = v53;
    *(v58 + 32) = v55;
    *(v58 + 40) = 0;
    sub_269D285FC(v56, v57, sub_269D27FE8);
    v59 = v88;
    v60 = *(v88 + 16);
    v61 = v86;
    v84 = v21;
    v62 = v91;
    v60(v86, v21, v91);
    v63 = v92;
    sub_269D2846C(v57, v92, sub_269D27FE8);
    v64 = v93;
    v60(v93, v61, v62);
    sub_269D27CE4(0, &qword_280350E10, MEMORY[0x277CDF088], sub_269D27FE8);
    sub_269D2846C(v63, v64 + *(v65 + 48), sub_269D27FE8);
    sub_269D2853C(v57, sub_269D27FE8);
    v66 = *(v59 + 8);
    v66(v84, v62);
    sub_269D2853C(v63, sub_269D27FE8);
    v66(v61, v62);
    sub_269D285FC(v64, v106, sub_269D27F50);
    v41 = 0;
  }

  v67 = v106;
  (*(v102 + 56))(v106, v41, 1, v103);
  v68 = v100;
  sub_269D2846C(v67, v100, sub_269D27EF8);
  v70 = v98;
  v69 = v99;
  *&v108 = v99;
  *(&v108 + 1) = v98;
  LOBYTE(v109) = v104;
  *(&v109 + 1) = *v138;
  DWORD1(v109) = *&v138[3];
  v71 = v96;
  v72 = KeyPath;
  *(&v109 + 1) = v105;
  *&v110 = KeyPath;
  BYTE8(v110) = 0;
  *(&v110 + 9) = *v137;
  HIDWORD(v110) = *&v137[3];
  v111 = v96;
  v112 = 0;
  LOBYTE(v113) = 1;
  DWORD1(v113) = *&v136[3];
  *(&v113 + 1) = *v136;
  v73 = v95;
  BYTE8(v113) = v95;
  *(&v113 + 9) = *v135;
  HIDWORD(v113) = *&v135[3];
  *&v114 = v34;
  *(&v114 + 1) = v36;
  *&v115 = v38;
  *(&v115 + 1) = v40;
  v116 = 0;
  v74 = v108;
  v75 = v109;
  v76 = v96;
  v77 = v94;
  *(v94 + 32) = v110;
  *(v77 + 48) = v76;
  *v77 = v74;
  *(v77 + 16) = v75;
  v78 = v113;
  v79 = v114;
  v80 = v115;
  *(v77 + 112) = 0;
  *(v77 + 80) = v79;
  *(v77 + 96) = v80;
  *(v77 + 64) = v78;
  sub_269D27CE4(0, &qword_280350DE0, sub_269D27D60, sub_269D27EF8);
  sub_269D2846C(v68, v77 + *(v81 + 48), sub_269D27EF8);
  sub_269D284D4(&v108, &v117, sub_269D27D60);
  sub_269D2853C(v106, sub_269D27EF8);
  sub_269D2853C(v68, sub_269D27EF8);
  v117 = v69;
  v118 = v70;
  v119 = v104;
  *v120 = *v138;
  *&v120[3] = *&v138[3];
  v121 = v105;
  v122 = v72;
  LOBYTE(v123) = 0;
  *(&v123 + 1) = *v137;
  HIDWORD(v123) = *&v137[3];
  v124 = v71;
  v125 = 0;
  v126 = 1;
  *&v127[3] = *&v136[3];
  *v127 = *v136;
  v128 = v73;
  *&v129[3] = *&v135[3];
  *v129 = *v135;
  v130 = v34;
  v131 = v36;
  v132 = v38;
  v133 = v40;
  v134 = 0;
  sub_269D2859C(&v117, sub_269D27D60);
}

uint64_t sub_269D2743C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10 = *v1;
  *v11 = v3;
  *&v11[9] = *(v1 + 25);
  *a1 = sub_269D99080();
  *(a1 + 8) = 0x4024000000000000;
  *(a1 + 16) = 0;
  sub_269D28400(0, &qword_280350DB0, sub_269D27B78);
  sub_269D26794(&v10, a1 + *(v4 + 44));
  v5 = *&v11[16];
  sub_269D2825C(0);
  *(a1 + *(v6 + 36)) = v5;
  sub_269D28820(0, &qword_280350E58, sub_269D2825C, sub_269D28318);
  v8 = a1 + *(v7 + 36);
  *v8 = xmmword_269DA83A0;
  *(v8 + 16) = xmmword_269DA83B0;
  *(v8 + 32) = 0;
}

uint64_t sub_269D27548()
{
  result = sub_269D99D00();
  qword_280350DA0 = result;
  return result;
}

double sub_269D27568@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_269D99D70();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2, v4);
  v7 = sub_269D99DC0();
  (*(v3 + 8))(v6, v2);
  sub_269D9A180();
  sub_269D98AC0();
  v25 = 1;
  *&v24[8] = v26;
  *&v24[24] = v27;
  *&v24[40] = v28;
  sub_269D28820(0, &qword_280350EA0, sub_269CC6A68, sub_269C5A270);
  v9 = (a1 + *(v8 + 36));
  v10 = *(sub_269D98DB0() + 20);
  v11 = *MEMORY[0x277CE0118];
  v12 = sub_269D99120();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  __asm { FMOV            V0.2D, #6.0 }

  *v9 = _Q0;
  sub_269C5A270();
  *&v9[*(v18 + 36)] = 256;
  v19 = *&v24[18];
  *(a1 + 18) = *&v24[2];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v19;
  *(a1 + 50) = *&v24[34];
  *(a1 + 64) = *&v24[48];
  if (qword_28034D6C8 != -1)
  {
    swift_once();
  }

  v20 = sub_269D99D30();
  sub_269D28894();
  v22 = a1 + *(v21 + 36);
  *v22 = v20;
  result = 6.0;
  *(v22 + 8) = xmmword_269DA83C0;
  *(v22 + 24) = 0x4000000000000000;
  return result;
}

BOOL _s13SleepHealthUI18PromotionViewModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_269D9B280() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_269D9B280() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v10 = sub_269D99CD0();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v5 == 3)
  {
    return v9 == 3;
  }

  if (v9 == 3)
  {
    return 0;
  }

  v12 = 0xEE0065636E656972;
  v13 = 0x657078456E69616DLL;
  if (v5)
  {
    if (v5 == 1)
    {
      v14 = 0x696472616F626E6FLL;
      v15 = 0xEA0000000000676ELL;
    }

    else
    {
      v14 = 0x63536567616E616DLL;
      v15 = 0xEE00656C75646568;
    }
  }

  else
  {
    v14 = 0x657078456E69616DLL;
    v15 = 0xEE0065636E656972;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v13 = 0x696472616F626E6FLL;
      v12 = 0xEA0000000000676ELL;
    }

    else
    {
      v13 = 0x63536567616E616DLL;
      v12 = 0xEE00656C75646568;
    }
  }

  if (v14 == v13 && v15 == v12)
  {
  }

  else
  {
    v16 = sub_269D9B280();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_269D27A64(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_269D27AAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_269D27B08()
{
  result = qword_280350DA8;
  if (!qword_280350DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350DA8);
  }

  return result;
}

void sub_269D27BB4()
{
  if (!qword_280350DC8)
  {
    sub_269D99540();
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350DC8);
    }
  }
}

void sub_269D27C14()
{
  if (!qword_280350DD0)
  {
    sub_269D27CA8(255);
    sub_269D28214(&qword_280350E38, sub_269D27CA8);
    v0 = sub_269D99FC0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350DD0);
    }
  }
}

void sub_269D27CE4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269D27D88()
{
  if (!qword_280350DF0)
  {
    sub_269D27E08();
    sub_269D27E8C(255, &qword_28034E270, &qword_28034E278, MEMORY[0x277D83B88]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350DF0);
    }
  }
}

void sub_269D27E08()
{
  if (!qword_280350DF8)
  {
    sub_269D281C4(255, &qword_280C0B040, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350DF8);
    }
  }
}

void sub_269D27E8C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_269D281C4(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_269D99530();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D27EF8()
{
  if (!qword_280350E00)
  {
    sub_269D27F50(255);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350E00);
    }
  }
}

void sub_269D27F8C(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_269D27CE4(255, a3, a4, a5);
    v6 = sub_269D9A1C0();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_269D28010(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_269D28074()
{
  if (!qword_280350E20)
  {
    sub_269D280F4();
    sub_269D27E8C(255, &qword_280C0B5B0, &qword_280C0B580, MEMORY[0x277CE0F78]);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350E20);
    }
  }
}

void sub_269D280F4()
{
  if (!qword_280350E28)
  {
    sub_269D98D90();
    sub_269C990B4();
    sub_269D28214(&qword_280350E30, MEMORY[0x277CDDB18]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_280350E28);
    }
  }
}

void sub_269D281C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269D28214(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D28284()
{
  if (!qword_280350E48)
  {
    sub_269D27B78(255);
    sub_269D28214(&qword_280350E50, sub_269D27B78);
    v0 = sub_269D99F00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350E48);
    }
  }
}

void sub_269D28318()
{
  if (!qword_280350E60)
  {
    sub_269D99310();
    sub_269D28214(&qword_280350E68, MEMORY[0x277CDE0E0]);
    v0 = sub_269D99350();
    if (!v1)
    {
      atomic_store(v0, &qword_280350E60);
    }
  }
}

unint64_t sub_269D283AC()
{
  result = qword_280350E70;
  if (!qword_280350E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350E70);
  }

  return result;
}

void sub_269D28400(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D98BB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269D2846C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D284D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269D2853C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D2859C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269D285FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_269D28674()
{
  result = qword_280350E80;
  if (!qword_280350E80)
  {
    sub_269D28820(255, &qword_280350E58, sub_269D2825C, sub_269D28318);
    sub_269D28754();
    sub_269D28214(&qword_280350E98, sub_269D28318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350E80);
  }

  return result;
}

unint64_t sub_269D28754()
{
  result = qword_280350E88;
  if (!qword_280350E88)
  {
    sub_269D2825C(255);
    sub_269D28214(&qword_280350E90, sub_269D28284);
    sub_269CA0298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350E88);
  }

  return result;
}

void sub_269D28820(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_269D28894()
{
  if (!qword_280350EA8)
  {
    sub_269D28820(255, &qword_280350EA0, sub_269CC6A68, sub_269C5A270);
    v0 = sub_269D98D00();
    if (!v1)
    {
      atomic_store(v0, &qword_280350EA8);
    }
  }
}

unint64_t sub_269D28924()
{
  result = qword_280350EB8;
  if (!qword_280350EB8)
  {
    sub_269D28820(255, &qword_280350EA0, sub_269CC6A68, sub_269C5A270);
    sub_269D28A3C(&qword_28034F988, sub_269CC6A68, sub_269CC6BDC);
    sub_269D28214(&qword_28034E328, sub_269C5A270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350EB8);
  }

  return result;
}

uint64_t sub_269D28A3C(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void sub_269D28AC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v7 = *a3;
  swift_beginAccess();
  sub_269C2DB5C(*(v3 + v7) + 88, v13);
  v9 = v14;
  v8 = v15;
  __swift_project_boxed_opaque_existential_1Tm(v13, v14);
  v10 = (*(*(v8 + 8) + 8))(v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  v11 = [objc_allocWithZone(MEMORY[0x277D62420]) initWithStep:a1 action:a2 entryPoint:*(*(v4 + v7) + 24)];
  v12 = [objc_allocWithZone(MEMORY[0x277D62418]) initWithOnboardingInfo:v11 provenanceInfo:*(*(v4 + v7) + 16)];

  [v10 trackEvent_];
}

id SleepOnboardingSetupViewController.__allocating_init(userInfo:presentationStyle:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_269D2E988(a1, a2);

  return v6;
}

id SleepOnboardingSetupViewController.init(userInfo:presentationStyle:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_269D2E988(a1, a2);

  return v2;
}

uint64_t sub_269D28C84()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      if (qword_280C0AE70 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v8 = qword_280C0D990;
  v9 = sub_269D972C0();

  return v9;
}

void sub_269D28E78()
{
  v1 = v0[2];
  v2 = [v1 source];
  v3 = sub_269D9A630();
  v5 = v4;
  if (v3 == sub_269D9A630() && v5 == v6)
  {

    goto LABEL_14;
  }

  v8 = sub_269D9B280();

  if (v8)
  {
LABEL_14:
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v28 = qword_280C0D990;
    sub_269D972C0();

    goto LABEL_21;
  }

  v9 = [v1 source];
  v10 = sub_269D9A630();
  v12 = v11;
  if (v10 == sub_269D9A630() && v12 == v13)
  {

    goto LABEL_18;
  }

  v15 = sub_269D9B280();

  if (v15)
  {
LABEL_18:
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v29 = qword_280C0D990;
    sub_269D972C0();

LABEL_21:

    return;
  }

  v16 = v0[14];
  v17 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v16);
  if ((*(v17 + 80))(v16, v17))
  {
    v18 = v0[14];
    v19 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v18);
    (*(v19 + 96))(v18, v19);
    v20 = v0[14];
    v21 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v20);
    (*(v21 + 112))(v20, v21);
    v22 = v0[14];
    v23 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v22);
    (*(v23 + 120))(v22, v23);
    v24 = v0[14];
    v25 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v24);
    (*(v25 + 128))(v24, v25);
    v26 = v0[14];
    v27 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v26);
    (*(v27 + 136))(v26, v27);
    goto LABEL_18;
  }

  v30 = [objc_opt_self() sharedBehavior];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 features];

    if (v32)
    {
      [v32 timeInBedTracking];

      goto LABEL_18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_269D29300()
{
  v1 = sub_269D975F0();
  v55 = *(v1 - 8);
  v56 = v1;
  MEMORY[0x28223BE20](v1);
  v54 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_269D97650();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[2];
  v7 = [v6 source];
  v8 = sub_269D9A630();
  v10 = v9;
  if (v8 == sub_269D9A630() && v10 == v11)
  {

    return;
  }

  v13 = sub_269D9B280();

  if (v13)
  {
    return;
  }

  v14 = [v6 source];
  v15 = sub_269D9A630();
  v17 = v16;
  if (v15 == sub_269D9A630() && v17 == v18)
  {

    goto LABEL_14;
  }

  v19 = sub_269D9B280();

  if (v19)
  {
LABEL_14:
    v32 = v0[14];
    v33 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v32);
    if ((*(v33 + 80))(v32, v33))
    {
      v34 = v0[14];
      v35 = v0[15];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v34);
      if ((*(v35 + 96))(v34, v35))
      {
        v36 = 16;
      }

      else
      {
        v36 = 0;
      }

      v37 = v0[14];
      v38 = v0[15];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v37);
      if ((*(v38 + 112))(v37, v38))
      {
        v36 |= 2uLL;
      }

      v39 = v0[14];
      v40 = v0[15];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v39);
      v41 = v36 & 0xFFFFFFFFFFFFFFFELL | (*(v40 + 120))(v39, v40) & 1;
      v42 = v0[14];
      v43 = v0[15];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v42);
      if ((*(v43 + 128))(v42, v43))
      {
        v41 |= 4uLL;
      }

      v44 = v0[14];
      v45 = v0[15];
      __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v44);
      v46 = (*(v45 + 136))(v44, v45);
      v47 = v41 | 8;
      if ((v46 & 1) == 0)
      {
        v47 = v41;
      }

      v57 = v47;
      sub_269D97630();
      v48 = v54;
      sub_269D97600();
      (*(v53 + 8))(v5, v3);
      if (qword_28034D730 != -1)
      {
        swift_once();
      }

      v49 = v56;
      __swift_project_value_buffer(v56, qword_280351108);
      sub_269D2F23C(&unk_280350F50, MEMORY[0x277CC9678]);
      v50 = sub_269D9A560();
      (*(v55 + 8))(v48, v49);
      sub_269D2E5C0((v50 & 1) == 0);
    }

    return;
  }

  v20 = v0[14];
  v21 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v20);
  if ((*(v21 + 80))(v20, v21))
  {
    v22 = v0[14];
    v23 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v22);
    (*(v23 + 96))(v22, v23);
    v24 = v0[14];
    v25 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v24);
    (*(v25 + 112))(v24, v25);
    v26 = v0[14];
    v27 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v26);
    (*(v27 + 120))(v26, v27);
    v28 = v0[14];
    v29 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v28);
    (*(v29 + 128))(v28, v29);
    v30 = v0[14];
    v31 = v0[15];
    __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v30);
    (*(v31 + 136))(v30, v31);
    goto LABEL_14;
  }

  if (qword_28034D6F8 != -1)
  {
    swift_once();
  }

  v51 = qword_280350F10;
}

void sub_269D29928(void *a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  if (a1)
  {
    v6 = *a2;
    v7 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
    swift_beginAccess();
    v8 = *(v3 + v7);
    swift_beginAccess();
    if (*(v8 + 80) == 3)
    {
      v39 = v3;
      v9 = qword_28034D770;
      v10 = a1;
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_269D98250();
      __swift_project_value_buffer(v11, qword_280351280);
      v12 = v10;
      v13 = sub_269D98230();
      v14 = sub_269D9AB80();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v41[0] = v16;
        *v15 = 136446466;
        v17 = sub_269D9B4D0();
        v38 = v6;
        v19 = sub_269C2EACC(v17, v18, v41);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v20 = v12;
        v21 = [v20 description];
        v22 = v12;
        v23 = sub_269D9A630();
        v25 = v24;

        v6 = v38;
        v26 = v23;
        v12 = v22;
        v27 = sub_269C2EACC(v26, v25, v41);

        *(v15 + 14) = v27;
        _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] updating with schedule: %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D652460](v16, -1, -1);
        MEMORY[0x26D652460](v15, -1, -1);
      }

      v28 = *(v39 + v7);

      [v12 mutableCopy];
      sub_269D9AED0();
      swift_unknownObjectRelease();
      sub_269D2EF24();
      swift_dynamicCast();
      swift_beginAccess();
      v29 = *(v28 + 40);
      *(v28 + 40) = v40;

      v30 = *(v39 + v7);
      swift_beginAccess();
      *(v30 + 80) = v6;
      if (*(v39 + OBJC_IVAR____TtC13SleepHealthUI34SleepOnboardingSetupViewController_viewAlreadyLoaded) == 1)
      {
        sub_269D29F5C();
      }

      else
      {
        v31 = sub_269D98230();
        v32 = sub_269D9AB80();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v40 = v34;
          *v33 = 136446210;
          v35 = sub_269D9B4D0();
          v37 = sub_269C2EACC(v35, v36, &v40);

          *(v33 + 4) = v37;
          _os_log_impl(&dword_269C18000, v31, v32, "[%{public}s] skipping reload since view hasn't loaded yet", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          MEMORY[0x26D652460](v34, -1, -1);
          MEMORY[0x26D652460](v33, -1, -1);
        }
      }
    }
  }
}

void sub_269D29D18()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_28034D770 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280351280);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] view did load", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = type metadata accessor for SleepOnboardingSetupViewController();
  v12.receiver = v1;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, sel_viewDidLoad);
  *(v1 + OBJC_IVAR____TtC13SleepHealthUI34SleepOnboardingSetupViewController_viewAlreadyLoaded) = 1;
  sub_269D29F5C();
}

void sub_269D29F5C()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_28034D770 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280351280);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] reloading views", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v11 = *(v1 + v10);
  swift_beginAccess();
  if (*(v11 + 80) == 3)
  {
    sub_269D2C518();
  }

  else
  {
    sub_269D2A10C();
  }
}

void sub_269D2A10C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_269D975F0();
  v91 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97650();
  v89 = *(v5 - 8);
  v90 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28034D770 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280351280);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v92[0] = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, v92);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] setting up standard views", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  [v1 hksp_removeSpinnerView];
  v16 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v17 = *&v1[v16];
  v18 = objc_opt_self();

  v19 = [v18 sharedBehavior];
  if (!v19)
  {
    __break(1u);
    goto LABEL_66;
  }

  v20 = v19;
  v21 = [v19 features];

  if (!v21)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v22 = [v21 sleepDetails];

  p_vtable = (_TtC13SleepHealthUI30ShorterDateComponentsFormatter + 24);
  if (!v22)
  {

    goto LABEL_28;
  }

  v24 = [*(v17 + 16) source];
  v25 = sub_269D9A630();
  v27 = v26;
  if (v25 == sub_269D9A630() && v27 == v28)
  {

    goto LABEL_16;
  }

  v30 = sub_269D9B280();

  if (v30)
  {

LABEL_16:
    v31 = &unk_280C0D000;
    goto LABEL_17;
  }

  v60 = *(v17 + 112);
  v61 = *(v17 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v17 + 88), v60);
  v31 = &unk_280C0D000;
  if (((*(v61 + 80))(v60, v61) & 1) == 0)
  {

    goto LABEL_27;
  }

  v62 = *(v17 + 112);
  v63 = *(v17 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v17 + 88), v62);
  (*(v63 + 96))(v62, v63);
  v64 = *(v17 + 112);
  v65 = *(v17 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v17 + 88), v64);
  (*(v65 + 112))(v64, v65);
  v66 = *(v17 + 112);
  v67 = *(v17 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v17 + 88), v66);
  (*(v67 + 120))(v66, v67);
  v68 = *(v17 + 112);
  v69 = *(v17 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v17 + 88), v68);
  (*(v69 + 128))(v68, v69);
  v70 = *(v17 + 112);
  v71 = *(v17 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v17 + 88), v70);
  (*(v71 + 136))(v70, v71);

LABEL_17:
  if (qword_28034D6D0 != -1)
  {
    swift_once();
  }

  v32 = sub_269D9A5F0();
  if (qword_28034D6D8 != -1)
  {
    swift_once();
  }

  v33 = sub_269D9A5F0();
  sub_269D97630();
  sub_269D97600();
  (*(v89 + 8))(v7, v90);
  if (qword_28034D730 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_280351108);
  sub_269D2F23C(&unk_280350F50, MEMORY[0x277CC9678]);
  sub_269D9A560();
  (*(v91 + 8))(v4, v2);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v34 = v31[306];
  v35 = sub_269D9A5F0();
  v36 = [objc_opt_self() imageNamed:v35 inBundle:v34];

  if (!v36)
  {
    goto LABEL_67;
  }

  [v1 addBulletedListItemWithTitle:v32 description:v33 image:v36];

LABEL_27:
  p_vtable = _TtC13SleepHealthUI30ShorterDateComponentsFormatter.vtable;
LABEL_28:

  v37 = sub_269D2AF84();

  if (v37)
  {
    if (qword_28034D6F0 != -1)
    {
      swift_once();
    }

    v38 = sub_269D9A5F0();
    sub_269D2F164();
    v39 = sub_269D9A5F0();

    if (qword_28034D718 != -1)
    {
      swift_once();
    }

    [v1 addBulletedListItemWithTitle:v38 description:v39 image:qword_280350F30];
  }

  v40 = *&v1[v16];
  v41 = v40[2];

  v42 = [v41 source];
  v43 = sub_269D9A630();
  v45 = v44;
  if (v43 == sub_269D9A630() && v45 == v46)
  {
  }

  else
  {
    v47 = sub_269D9B280();

    if ((v47 & 1) == 0)
    {
      v48 = v40[14];
      v49 = v40[15];
      __swift_project_boxed_opaque_existential_1Tm(v40 + 11, v48);
      if (((*(v49 + 80))(v48, v49) & 1) == 0)
      {

        if (qword_28034D6E0 != -1)
        {
          swift_once();
        }

        v72 = sub_269D9A5F0();
        if (qword_28034D6E8 != -1)
        {
          swift_once();
        }

        v73 = sub_269D9A5F0();
        if (qword_28034D700 != -1)
        {
          swift_once();
        }

        [v1 addBulletedListItemWithTitle:v72 description:v73 image:qword_280350F18];

        goto LABEL_50;
      }

      v50 = v40[14];
      v51 = v40[15];
      __swift_project_boxed_opaque_existential_1Tm(v40 + 11, v50);
      (*(v51 + 96))(v50, v51);
      v52 = v40[14];
      v53 = v40[15];
      __swift_project_boxed_opaque_existential_1Tm(v40 + 11, v52);
      (*(v53 + 112))(v52, v53);
      v54 = v40[14];
      v55 = v40[15];
      __swift_project_boxed_opaque_existential_1Tm(v40 + 11, v54);
      (*(v55 + 120))(v54, v55);
      v56 = v40[14];
      v57 = v40[15];
      __swift_project_boxed_opaque_existential_1Tm(v40 + 11, v56);
      (*(v57 + 128))(v56, v57);
      v58 = v40[14];
      v59 = v40[15];
      __swift_project_boxed_opaque_existential_1Tm(v40 + 11, v58);
      (*(v59 + 136))(v58, v59);
    }
  }

LABEL_50:

  sub_269D2B2AC();

  v74 = sub_269D9A5F0();

  sub_269D2B570();

  v75 = sub_269D9A5F0();

  if (qword_28034D708 != -1)
  {
    swift_once();
  }

  [v1 addBulletedListItemWithTitle:v74 description:v75 image:qword_280350F20];

  sub_269D2B834();
  v77 = v76;

  if (v77)
  {

    sub_269D2BBC4();

    v78 = sub_269D9A5F0();

    sub_269D2BE94();

    v79 = sub_269D9A5F0();

    if (qword_28034D710 != -1)
    {
      swift_once();
    }

    [v1 addBulletedListItemWithTitle:v78 description:v79 image:qword_280350F28];
  }

  sub_269D2C324();

  v80 = sub_269D9A5F0();

  v81 = *(*&v1[v16] + 16);

  v82 = [v81 &selRef_viewControllers];
  v83 = sub_269D9A630();
  v85 = v84;
  if (v83 == sub_269D9A630() && v85 == v86)
  {
  }

  else
  {
    v87 = sub_269D9B280();

    if ((v87 & 1) == 0)
    {
      [v1 hksp_addCancelButton];
      return;
    }
  }

  if (p_vtable[462] != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  v88 = sub_269D9A5F0();

  [v1 hksp:v88 addSkipButtonWithTitle:?];
}

uint64_t sub_269D2AF84()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v2);
  if ((*(v3 + 80))(v2, v3))
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v4);
    LOBYTE(v4) = (*(v5 + 96))(v4, v5);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v6);
    (*(v7 + 112))(v6, v7);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v8);
    (*(v9 + 120))(v8, v9);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v10);
    (*(v11 + 128))(v10, v11);
    v12 = *(v0 + 112);
    v13 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v12);
    (*(v13 + 136))(v12, v13);
    if (v4)
    {
      v14 = [*(v0 + 16) source];
      v15 = sub_269D9A630();
      v17 = v16;
      if (v15 == sub_269D9A630() && v17 == v18)
      {
      }

      else
      {
        v19 = sub_269D9B280();

        if ((v19 & 1) == 0)
        {
          v20 = v1[14];
          v21 = v1[15];
          __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v20);
          if ((*(v21 + 80))(v20, v21))
          {
            v22 = v1[14];
            v23 = v1[15];
            __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v22);
            (*(v23 + 96))(v22, v23);
            v24 = v1[14];
            v25 = v1[15];
            __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v24);
            (*(v25 + 112))(v24, v25);
            v26 = v1[14];
            v27 = v1[15];
            __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v26);
            (*(v27 + 120))(v26, v27);
            v28 = v1[14];
            v29 = v1[15];
            __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v28);
            (*(v29 + 128))(v28, v29);
            v30 = v1[14];
            v31 = v1[15];
            __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v30);
            return (*(v31 + 136))(v30, v31) & 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_269D2B2AC()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v8);
      if ((*(v9 + 80))(v8, v9))
      {
        v10 = *(v0 + 112);
        v11 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v10);
        (*(v11 + 96))(v10, v11);
        v12 = *(v0 + 112);
        v13 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v12);
        (*(v13 + 112))(v12, v13);
        v14 = *(v0 + 112);
        v15 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v14);
        (*(v15 + 120))(v14, v15);
        v16 = *(v0 + 112);
        v17 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v16);
        (*(v17 + 128))(v16, v17);
        v18 = *(v0 + 112);
        v19 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v18);
        (*(v19 + 136))(v18, v19);
      }
    }
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v20 = qword_280C0D990;
  v21 = sub_269D972C0();

  return v21;
}

uint64_t sub_269D2B570()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v8);
      if ((*(v9 + 80))(v8, v9))
      {
        v10 = *(v0 + 112);
        v11 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v10);
        (*(v11 + 96))(v10, v11);
        v12 = *(v0 + 112);
        v13 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v12);
        (*(v13 + 112))(v12, v13);
        v14 = *(v0 + 112);
        v15 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v14);
        (*(v15 + 120))(v14, v15);
        v16 = *(v0 + 112);
        v17 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v16);
        (*(v17 + 128))(v16, v17);
        v18 = *(v0 + 112);
        v19 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v18);
        (*(v19 + 136))(v18, v19);
      }
    }
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v20 = qword_280C0D990;
  v21 = sub_269D972C0();

  return v21;
}

void sub_269D2B834()
{
  v1 = v0;
  v2 = [*(v0 + 16) source];
  v3 = sub_269D9A630();
  v5 = v4;
  if (v3 == sub_269D9A630() && v5 == v6)
  {

LABEL_9:
    v21 = v1[14];
    v22 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v21);
    if ((*(v22 + 80))(v21, v22))
    {
      v23 = v1[14];
      v24 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v23);
      (*(v24 + 96))(v23, v24);
      v25 = v1[14];
      v26 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v25);
      (*(v26 + 112))(v25, v26);
      v27 = v1[14];
      v28 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v27);
      (*(v28 + 120))(v27, v28);
      v29 = v1[14];
      v30 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v29);
      (*(v30 + 128))(v29, v30);
      v31 = v1[14];
      v32 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v31);
      (*(v32 + 136))(v31, v32);
    }

    return;
  }

  v8 = sub_269D9B280();

  if (v8)
  {
    goto LABEL_9;
  }

  v9 = v1[14];
  v10 = v1[15];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v9);
  if ((*(v10 + 80))(v9, v10))
  {
    v11 = v1[14];
    v12 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v11);
    (*(v12 + 96))(v11, v12);
    v13 = v1[14];
    v14 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v13);
    (*(v14 + 112))(v13, v14);
    v15 = v1[14];
    v16 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v15);
    (*(v16 + 120))(v15, v16);
    v17 = v1[14];
    v18 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v17);
    (*(v18 + 128))(v17, v18);
    v19 = v1[14];
    v20 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v19);
    (*(v20 + 136))(v19, v20);
    goto LABEL_9;
  }

  v33 = [objc_opt_self() sharedBehavior];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 features];

    if (v35)
    {
      [v35 timeInBedTracking];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_269D2BBC4()
{
  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      v8 = *(v0 + 112);
      v9 = *(v0 + 120);
      __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v8);
      if ((*(v9 + 80))(v8, v9))
      {
        v10 = *(v0 + 112);
        v11 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v10);
        (*(v11 + 96))(v10, v11);
        v12 = *(v0 + 112);
        v13 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v12);
        (*(v13 + 112))(v12, v13);
        v14 = *(v0 + 112);
        v15 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v14);
        (*(v15 + 120))(v14, v15);
        v16 = *(v0 + 112);
        v17 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v16);
        (*(v17 + 128))(v16, v17);
        v18 = *(v0 + 112);
        v19 = *(v0 + 120);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 88), v18);
        (*(v19 + 136))(v18, v19);
      }
    }
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v20 = qword_280C0D990;
  v21 = sub_269D972C0();

  return v21;
}

uint64_t sub_269D2BE94()
{
  v1 = v0;
  v2 = [*(v0 + 16) source];
  v3 = sub_269D9A630();
  v5 = v4;
  if (v3 == sub_269D9A630() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_269D9B280();

    if ((v8 & 1) == 0)
    {
      v9 = v1[14];
      v10 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v9);
      if (((*(v10 + 80))(v9, v10) & 1) == 0)
      {
        if (qword_280C0AE70 == -1)
        {
          goto LABEL_14;
        }

LABEL_15:
        swift_once();
        goto LABEL_14;
      }

      v11 = v1[14];
      v12 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v11);
      (*(v12 + 96))(v11, v12);
      v13 = v1[14];
      v14 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v13);
      (*(v14 + 112))(v13, v14);
      v15 = v1[14];
      v16 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v15);
      (*(v16 + 120))(v15, v16);
      v17 = v1[14];
      v18 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v17);
      (*(v18 + 128))(v17, v18);
      v19 = v1[14];
      v20 = v1[15];
      __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v19);
      (*(v20 + 136))(v19, v20);
    }
  }

  v21 = v1[14];
  v22 = v1[15];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v21);
  if ((*(v22 + 80))(v21, v22))
  {
    v23 = v1[14];
    v24 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v23);
    (*(v24 + 96))(v23, v24);
    v25 = v1[14];
    v26 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v25);
    (*(v26 + 112))(v25, v26);
    v27 = v1[14];
    v28 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v27);
    (*(v28 + 120))(v27, v28);
    v29 = v1[14];
    v30 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v29);
    (*(v30 + 128))(v29, v30);
    v31 = v1[14];
    v32 = v1[15];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 11, v31);
    (*(v32 + 136))(v31, v32);
    return sub_269D2E76C();
  }

  if (qword_280C0AE70 != -1)
  {
    goto LABEL_15;
  }

LABEL_14:
  v34 = qword_280C0D990;
  v35 = sub_269D972C0();

  return v35;
}

uint64_t sub_269D2C324()
{
  if (*(v0 + 24))
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_14;
  }

  v1 = [*(v0 + 16) source];
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_269D9B280();

    if ((v7 & 1) == 0)
    {
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_14;
    }
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_14:
    swift_once();
  }

  return sub_269D972C0();
}

id sub_269D2C518()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_28034D770 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280351280);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] setting up waiting views", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  [v1 hksp_addSpinnerView];
  v10 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v11 = *(*&v1[v10] + 16);

  v12 = [v11 source];
  v13 = sub_269D9A630();
  v15 = v14;
  if (v13 == sub_269D9A630() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_269D9B280();

    if ((v18 & 1) == 0)
    {
      return [v1 hksp_addCancelButton];
    }
  }

  return result;
}

void sub_269D2CAC8(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = sub_269D981A0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D981C0();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D2F284(0, &qword_280350F40, MEMORY[0x277D11178]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &ObjectType - v10;
  v12 = sub_269D98190();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &ObjectType - v17;
  sub_269D2F0E4(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_269D2F06C(v11);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v3 + 104))(v5, *MEMORY[0x277D11180], v2);
    (*(v13 + 16))(v15, v18, v12);
    sub_269D981B0();
    v19 = sub_269D97F00();
    v20 = sub_269D97EF0();
    v41[3] = v19;
    v41[4] = MEMORY[0x277D10CD0];
    v41[0] = v20;
    sub_269D2F23C(&qword_280350F48, MEMORY[0x277D11188]);
    v21 = v39;
    sub_269D97F10();
    (*(v38 + 8))(v8, v21);
    (*(v13 + 8))(v18, v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
  }

  v22 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  v23 = v40;
  swift_beginAccess();
  if (*(*(v23 + v22) + 24) == 1)
  {
    if (qword_28034D770 != -1)
    {
      swift_once();
    }

    v24 = sub_269D98250();
    __swift_project_value_buffer(v24, qword_280351280);
    v25 = sub_269D98230();
    v26 = sub_269D9AB80();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42[0] = v28;
      *v27 = 136446210;
      v29 = sub_269D9B4D0();
      v31 = sub_269C2EACC(v29, v30, v42);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_269C18000, v25, v26, "[%{public}s] we're done!", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v27, -1, -1);
    }

    v32 = (v23 + OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate);
    swift_beginAccess();
    if (*v32)
    {
      v33 = v32[1];
      v34 = swift_getObjectType();
      v35 = *(v33 + 16);
      swift_unknownObjectRetain();

      v35(v36, v34, v33);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_269D2D040();
  }
}

void sub_269D2D040()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *&v0[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_presentationStyle];
  v3 = objc_allocWithZone(type metadata accessor for SleepOnboardingScheduleViewController());

  sub_269D7C894(v4, v2);
  v6 = v5;
  v7 = &v1[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate];
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = &v6[OBJC_IVAR____TtC13SleepHealthUI38SleepOnboardingFlowTableViewController_delegate];
  swift_beginAccess();
  *v10 = v8;
  *(v10 + 1) = v9;
  v11 = v6;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
  [v1 showViewController:v11 sender:0];
}

void sub_269D2D160()
{
  v1 = v0;
  sub_269D28AC4(1, 2, &OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo);
  v2 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = v3[14];
  v5 = v3[15];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v4);
  v6 = *(v5 + 80);

  if (v6(v4, v5))
  {
    v7 = v3[14];
    v8 = v3[15];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v7);
    LOBYTE(v7) = (*(v8 + 96))(v7, v8);
    v9 = v3[14];
    v10 = v3[15];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v9);
    (*(v10 + 112))(v9, v10);
    v11 = v3[14];
    v12 = v3[15];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v11);
    (*(v12 + 120))(v11, v12);
    v13 = v3[14];
    v14 = v3[15];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v13);
    (*(v14 + 128))(v13, v14);
    v15 = v3[14];
    v16 = v3[15];
    __swift_project_boxed_opaque_existential_1Tm(v3 + 11, v15);
    (*(v16 + 136))(v15, v16);

    if (v7)
    {
      v17 = *(v0 + v2);
      swift_beginAccess();
      v18 = *(v17 + 48);

      [v18 setSleepTracking_];
      [*(v17 + 48) setChargingReminders_];
      v19 = *(v17 + 48);
      [v19 setSleepModeOptions_];
    }
  }

  else
  {
  }

  v20 = sub_269D2AF84();

  if (v20)
  {
    v21 = *(v1 + v2);
    swift_beginAccess();
    *(v21 + 128) = 1;
  }

  v22 = *(v1 + v2);
  if ((*(v22 + 24) & 1) == 0)
  {
    swift_beginAccess();
    v23 = *(v22 + 48);

    [v23 setScheduledSleepMode_];
    v24 = *(v22 + 48);
    [v24 setSleepModeOptions_];
  }
}

uint64_t sub_269D2D458()
{
  v1 = v0;
  swift_getObjectType();
  sub_269D2F284(0, &qword_280350F40, MEMORY[0x277D11178]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32[-1] - v3;
  sub_269D2F284(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32[-1] - v6;
  v8 = OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo;
  swift_beginAccess();
  v9 = *&v0[v8];
  swift_beginAccess();
  if (*(v9 + 64) == 1)
  {
    if (qword_28034D770 != -1)
    {
      swift_once();
    }

    v10 = sub_269D98250();
    __swift_project_value_buffer(v10, qword_280351280);
    v11 = sub_269D98230();
    v12 = sub_269D9AB80();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v32[0] = v14;
      *v13 = 136446210;
      v15 = sub_269D9B4D0();
      v17 = sub_269C2EACC(v15, v16, v32);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] requesting TCC authorization", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x26D652460](v14, -1, -1);
      MEMORY[0x26D652460](v13, -1, -1);
    }

    sub_269C2DB5C(*&v1[v8] + 88, v32);
    v18 = v33;
    v19 = v34;
    __swift_project_boxed_opaque_existential_1Tm(v32, v33);
    v20 = (*(v19 + 24))(v18, v19);
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    v23 = swift_allocObject();
    *(v23 + 16) = v1;
    v24 = sub_269D9A900();
    (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
    sub_269D9A8E0();
    v25 = v1;

    v26 = sub_269D9A8D0();
    v27 = swift_allocObject();
    v28 = MEMORY[0x277D85700];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v20;
    v27[5] = sub_269D2F2D8;
    v27[6] = v21;
    v27[7] = sub_269D2F2E0;
    v27[8] = v22;
    v27[9] = sub_269D2F304;
    v27[10] = v23;
    sub_269C79F94(0, 0, v7, &unk_269DA86B8, v27);

    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  else
  {
    v30 = sub_269D98190();
    (*(*(v30 - 8) + 56))(v4, 1, 1, v30);
    sub_269D2CAC8(v4);
    return sub_269D2F06C(v4);
  }
}

uint64_t sub_269D2D8DC()
{
  sub_269D2F284(0, &qword_280350F40, MEMORY[0x277D11178]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_269D98190();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  sub_269D2CAC8(v2);
  return sub_269D2F06C(v2);
}

void sub_269D2D9AC()
{
  v1 = objc_opt_self();
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v2 = qword_280C0D990;
  sub_269D972C0();

  v3 = sub_269D9A5F0();

  v4 = v2;
  sub_269D972C0();

  v5 = sub_269D9A5F0();

  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  aBlock[4] = sub_269D2F040;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269D2DD54;
  aBlock[3] = &block_descriptor_14_0;
  v7 = _Block_copy(aBlock);
  v8 = v0;

  v9 = [v1 notificationsWontFireAlertControllerWithLocalizedTitle:v3 localizedDismiss:v5 completion:{v7, 0xE000000000000000}];
  _Block_release(v7);

  [v8 presentViewController:v9 animated:1 completion:0];
}

uint64_t sub_269D2DC1C(char a1, uint64_t a2, unsigned int *a3, unsigned int *a4)
{
  sub_269D2F284(0, &qword_280350F40, MEMORY[0x277D11178]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_269D98190();
  v11 = *(v10 - 8);
  if (a1)
  {
    v12 = a3;
  }

  else
  {
    v12 = a4;
  }

  (*(*(v10 - 8) + 104))(v9, *v12, v10);
  sub_269D98190();
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_269D2CAC8(v9);
  return sub_269D2F06C(v9);
}

uint64_t sub_269D2DD54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id SleepOnboardingSetupViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingSetupViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D2DE0C()
{
  v0 = sub_269D9A5E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A570();
  v4 = sub_269D4A384(v3);
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_280350EC0 = v4;
  *algn_280350EC8 = v6;
  return result;
}

uint64_t sub_269D2DF08()
{
  v0 = sub_269D9A5E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D9A570();
  v4 = sub_269D4A384(v3);
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_280350ED0 = v4;
  *algn_280350ED8 = v6;
  return result;
}

uint64_t sub_269D2E004()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();
  v3 = v2;

  qword_280350EE0 = v1;
  *algn_280350EE8 = v3;
  return result;
}

uint64_t sub_269D2E0E4()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();
  v3 = v2;

  qword_280350EF0 = v1;
  *algn_280350EF8 = v3;
  return result;
}

uint64_t sub_269D2E1C4()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();
  v3 = v2;

  qword_280350F00 = v1;
  *algn_280350F08 = v3;
  return result;
}

void sub_269D2E2A0()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D9A5F0();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (v2)
  {
    qword_280350F10 = v2;
  }

  else
  {
    __break(1u);
  }
}

Class sub_269D2E368()
{
  result = sub_269D2E3A8(30.0);
  qword_280350F18 = result;
  return result;
}

Class sub_269D2E3A8(double a1)
{
  v1 = [objc_opt_self() systemFontOfSize:a1 weight:*MEMORY[0x277D74410]];
  v2 = objc_opt_self();
  v3 = [v2 configurationWithFont:v1 scale:2];
  v4 = [objc_opt_self() hk_sleepKeyColor];
  v5 = [v2 configurationWithHierarchicalColor_];

  v6 = v3;
  v10.value.super.isa = v3;
  v7.super.isa = Symbol.uiImage(configuration:)(v10).super.isa;

  v8 = [(objc_class *)v7.super.isa imageByApplyingSymbolConfiguration:v5];
  if (v8)
  {

    return v8;
  }

  return v7.super.isa;
}

Class sub_269D2E4F4()
{
  result = sub_269D2E3A8(32.0);
  qword_280350F20 = result;
  return result;
}

Class sub_269D2E538()
{
  result = sub_269D2E3A8(32.0);
  qword_280350F28 = result;
  return result;
}

Class sub_269D2E57C()
{
  result = sub_269D2E3A8(32.0);
  qword_280350F30 = result;
  return result;
}

void sub_269D2E5C0(char a1)
{
  v3 = 0xD000000000000012;
  v4 = "upViewController.swift";
  v5 = "set-up-watch-sleep-stages";
  v6 = 0xD000000000000019;
  v7 = "set-up-watch-focus";
  if ((*v1 & 2) == 0)
  {
    v6 = 0xD000000000000012;
    v7 = "upViewController.swift";
  }

  if ((~*v1 & 6) != 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xD00000000000002BLL;
  }

  if ((~*v1 & 6) != 0)
  {
    v5 = v7;
  }

  if ((*v1 & 0x10) != 0)
  {
    v3 = v8;
    v4 = v5;
  }

  v15 = v3;
  v16 = v4 | 0x8000000000000000;

  MEMORY[0x26D650930](0x65726F63732DLL, 0xE600000000000000);

  v9 = (a1 & 1) == 0;
  if (a1)
  {
    v10 = 1668246573;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = 0xE000000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  MEMORY[0x26D650930](v10, v11);

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v12 = qword_280C0D990;
  v13 = sub_269D9A5F0();
  v14 = [objc_opt_self() imageNamed:v13 inBundle:{v12, v15, v16}];

  if (v14)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269D2E76C()
{
  v1 = *v0;
  if ((~*v0 & 5) == 0)
  {
    if (qword_280C0AE70 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if ((v1 & 4) == 0 && (v1 & 1) == 0)
  {
    if ((v1 & 2) != 0)
    {
      if (qword_280C0AE70 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_280C0AE70 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_13:
    swift_once();
  }

LABEL_10:
  v2 = qword_280C0D990;
  v3 = sub_269D972C0();

  return v3;
}

id sub_269D2E988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v2[OBJC_IVAR____TtC13SleepHealthUI34SleepOnboardingSetupViewController_viewAlreadyLoaded] = 0;
  sub_269D28C84();
  sub_269D28E78();

  sub_269D29300();
  v7 = v6;
  v8 = &v2[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_sleepChangeObserver] = 0;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_userInfo] = a1;
  v38 = a2;
  *&v2[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_presentationStyle] = a2;

  v9 = sub_269D9A5F0();

  v10 = sub_269D9A5F0();

  v40.receiver = v3;
  v40.super_class = type metadata accessor for SleepOnboardingFlowController();
  v11 = objc_msgSendSuper2(&v40, sel_initWithTitle_detailText_icon_contentLayout_, v9, v10, v7, 2);

  v12 = v11;
  [v12 setModalInPresentation_];
  v13 = [v12 headerView];
  [v13 setTitleHyphenationFactor_];

  v14 = [v12 navigationItem];
  [v14 setBackButtonDisplayMode_];

  v15 = [v12 headerView];
  sub_269C4BDE4(0, &qword_280C0B440, MEMORY[0x277D84560]);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_269DA0D60;
  *(v16 + 32) = sub_269D9A630();
  *(v16 + 40) = v17;
  *(v16 + 48) = 0x7065656C53;
  *(v16 + 56) = 0xE500000000000000;
  *(v16 + 64) = 0x696472616F626E4FLL;
  *(v16 + 72) = 0xEA0000000000676ELL;
  v39 = v16;
  sub_269C49A1C(&unk_287A9FF88);
  sub_269C4BDE4(0, &qword_280C0B4F0, MEMORY[0x277D83940]);
  sub_269C4BE38();
  sub_269D9A520();

  sub_269C4BEAC(&unk_287A9FFA8);
  v18 = sub_269D9A5F0();

  [v15 setAccessibilityIdentifier_];

  v19 = [v12 headerView];
  [v19 setAllowFullWidthIcon_];

  if (qword_28034D770 != -1)
  {
    swift_once();
  }

  v20 = sub_269D98250();
  __swift_project_value_buffer(v20, qword_280351280);

  v21 = sub_269D98230();
  v22 = sub_269D9AB80();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = 0x7964647562;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v39 = v25;
    *v24 = 136446466;
    v26 = sub_269D9B4D0();
    v28 = sub_269C2EACC(v26, v27, &v39);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = [*(a1 + 16) source];
    v30 = sub_269D9A630();
    v32 = v31;
    if (v30 == sub_269D9A630() && v32 == v33)
    {

      v34 = 0xE500000000000000;
    }

    else
    {
      v35 = sub_269D9B280();

      if (v35)
      {
        v34 = 0xE500000000000000;
      }

      else
      {
        v23 = 1852399981;
        v34 = 0xE400000000000000;
      }
    }

    v36 = sub_269C2EACC(v23, v34, &v39);

    *(v24 + 14) = v36;
    _os_log_impl(&dword_269C18000, v21, v22, "[%{public}s] init for %s flow", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v25, -1, -1);
    MEMORY[0x26D652460](v24, -1, -1);
  }

  if (v38 != 1)
  {
    [v12 setModalInPresentation_];
  }

  return v12;
}

unint64_t sub_269D2EF24()
{
  result = qword_28034E978;
  if (!qword_28034E978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E978);
  }

  return result;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269D2F06C(uint64_t a1)
{
  sub_269D2F284(0, &qword_280350F40, MEMORY[0x277D11178]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D2F0E4(uint64_t a1, uint64_t a2)
{
  sub_269D2F284(0, &qword_280350F40, MEMORY[0x277D11178]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269D2F164()
{
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v0 = qword_280C0D990;
  v1 = sub_269D972C0();

  return v1;
}

uint64_t sub_269D2F23C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_269D2F284(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269D2F330(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_269C71C08;

  return sub_269D57F80(a1, v12, v4, v5, v6, v7, v8, v9);
}

id sub_269D2F44C(unsigned __int16 *a1)
{
  v7 = *a1;
  v6 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol);
  result = _s13SleepHealthUI6SymbolO2eeoiySbAC_ACtFZ_0(&v7, &v6);
  if ((result & 1) == 0)
  {
    v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_image);
    v9.value.super.isa = [objc_opt_self() configurationWithPointSize_];
    isa = v9.value.super.isa;
    v5 = Symbol.uiImage(configuration:)(v9).super.isa;

    [v3 setImage_];

    return [v3 sizeToFit];
  }

  return result;
}

id sub_269D2F550(uint64_t a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_background];
  v5 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v6 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v7 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8];
  v8 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16];
  v9 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24];
  v10 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 32];
  v11 = v6;
  v12 = v7;
  v13 = v8;
  v14 = v9;
  if ([v2 isHighlighted])
  {
    v15 = v12;
  }

  else
  {
    v15 = v11;
  }

  v16 = v15;

  v17 = [v2 traitCollection];
  v18 = [v16 resolvedColorWithTraitCollection_];
  v19 = [v18 CGColor];

  [v4 setFillColor_];
  if (*a1)
  {
    v20 = *(a1 + 40);
  }

  else
  {
    v20 = 2.22507386e-308;
  }

  v21 = *(v5 + 5);
  if (v20 != v21)
  {
    v22 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_image];
    v41.value.super.isa = [objc_opt_self() configurationWithPointSize_];
    isa = v41.value.super.isa;
    v24 = Symbol.uiImage(configuration:)(v41).super.isa;

    [v22 setImage_];
    [v22 sizeToFit];
  }

  v25 = objc_opt_self();
  [v25 begin];
  [v25 setDisableActions_];
  v26 = *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_image];
  v27 = *v5;
  v28 = *(v5 + 1);
  v29 = *(v5 + 2);
  v30 = *(v5 + 3);
  v31 = *(v5 + 4);
  v32 = v27;
  v33 = v28;
  v34 = v29;
  v35 = v30;
  if ([v2 isHighlighted])
  {
    v36 = v35;
  }

  else
  {
    v36 = v34;
  }

  v37 = v36;

  [v26 setTintColor_];
  v38 = [v26 layer];
  [v38 setCompositingFilter_];

  return [v25 commit];
}

char *sub_269D2F848(__int16 *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_background;
  *&v2[v5] = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_symbol] = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  *&v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_image] = v6;
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v26 = *(a2 + 32);
  v11 = &v2[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration];
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 1) = v12;
  *(v11 + 2) = *(a2 + 32);
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  sub_269D306CC(&v26, v27);
  v25.receiver = v2;
  v25.super_class = type metadata accessor for SleepScheduleClockHand();
  v17 = objc_msgSendSuper2(&v25, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_269C57F8C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_269D9EBE0;
  v19 = sub_269D98290();
  v20 = MEMORY[0x277D74BF0];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269C30054();
  v21 = v17;
  sub_269D9AD50();
  swift_unknownObjectRelease();

  v22 = [v21 layer];
  [v22 addSublayer_];

  [v21 addSubview_];
  v23 = [v21 layer];
  [v23 setAllowsGroupBlending_];

  memset(v27, 0, sizeof(v27));
  sub_269D2F550(v27);

  sub_269D307A0(&v26);
  return v21;
}

void sub_269D2FABC()
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
    v1 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_background);
    v2 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration);
    v3 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 8);
    v4 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 16);
    v5 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 24);
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_configuration + 32);
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    if ([v6 isHighlighted])
    {
      v12 = v9;
    }

    else
    {
      v12 = v8;
    }

    v13 = v12;

    v14 = [v6 traitCollection];
    v15 = [v13 resolvedColorWithTraitCollection_];
    v16 = [v15 CGColor];

    [v1 setFillColor_];
  }

  else
  {
  }
}

id sub_269D2FD78()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SleepScheduleClockHand();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_background];
  [v0 bounds];
  v2 = CGPathCreateWithEllipseInRect(v6, 0);
  [v1 setPath_];

  v3 = *&v0[OBJC_IVAR____TtC13SleepHealthUI22SleepScheduleClockHand_image];
  [v0 bounds];
  sub_269D9AD20();
  return [v3 setCenter_];
}

id SleepScheduleClockHand.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SleepScheduleClockHand.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleClockHand();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D304E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_269D30528(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_269D30584(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_269D305CC(v7, v8);
}

BOOL sub_269D305CC(uint64_t a1, uint64_t a2)
{
  sub_269C1B0B8(0, &qword_280C0ADD0);
  if (sub_269D9ADD0() & 1) != 0 && (sub_269D9ADD0() & 1) != 0 && (sub_269D9ADD0() & 1) != 0 && (sub_269D9ADD0())
  {
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    if (v4)
    {
      if (v5)
      {
        sub_269C1B0B8(0, &qword_280350F80);
        v6 = v5;
        v7 = v4;
        v8 = sub_269D9ADD0();

        if (v8)
        {
          return *(a1 + 40) == *(a2 + 40);
        }
      }
    }

    else if (!v5)
    {
      return *(a1 + 40) == *(a2 + 40);
    }
  }

  return 0;
}

uint64_t sub_269D306CC(uint64_t a1, uint64_t a2)
{
  sub_269D30730();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269D30730()
{
  if (!qword_280350F88)
  {
    sub_269C1B0B8(255, &qword_280350F80);
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350F88);
    }
  }
}

uint64_t sub_269D307A0(uint64_t a1)
{
  sub_269D30730();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269D307FC@<X0>(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 secondarySystemBackgroundColor];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D75348]);
  v32 = sub_269C57E64;
  v33 = v5;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_269CC7F6C;
  v31 = &block_descriptor_30;
  v7 = _Block_copy(&aBlock);
  v27 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  v8 = [v2 systemGray5Color];
  v9 = [v2 systemGray6Color];
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  v11 = objc_allocWithZone(MEMORY[0x277D75348]);
  v32 = sub_269C937E4;
  v33 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_269CC7F6C;
  v31 = &block_descriptor_18_0;
  v12 = _Block_copy(&aBlock);
  v26 = [v11 initWithDynamicProvider_];
  _Block_release(v12);

  v13 = [v2 systemGray2Color];
  v14 = [v2 systemGrayColor];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  v16 = objc_allocWithZone(MEMORY[0x277D75348]);
  v32 = sub_269C937E4;
  v33 = v15;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_269CC7F6C;
  v31 = &block_descriptor_25_0;
  v17 = _Block_copy(&aBlock);
  v18 = [v16 initWithDynamicProvider_];
  _Block_release(v17);

  v19 = [v2 systemGray2Color];
  v20 = [v2 systemGrayColor];
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = v20;
  v22 = objc_allocWithZone(MEMORY[0x277D75348]);
  v32 = sub_269C937E4;
  v33 = v21;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_269CC7F6C;
  v31 = &block_descriptor_32;
  v23 = _Block_copy(&aBlock);
  v24 = [v22 initWithDynamicProvider_];
  _Block_release(v23);

  *a1 = v27;
  a1[1] = v26;
  a1[2] = v18;
  a1[3] = v24;
  a1[4] = 0;
  a1[5] = 0x402C000000000000;
  return result;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_269D30C08(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v19 = [v2 systemOrangeColor];
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v3 = qword_280C0D990;
  v4 = sub_269D9A5F0();
  v5 = [v2 colorNamed:v4 inBundle:v3 compatibleWithTraitCollection:0];

  if (v5)
  {
    v6 = [v2 systemGray2Color];
    v7 = [v2 systemGrayColor];
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = objc_allocWithZone(MEMORY[0x277D75348]);
    v24 = sub_269C937E4;
    v25 = v8;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_269CC7F6C;
    v23 = &block_descriptor_39;
    v10 = _Block_copy(&aBlock);
    v11 = [v9 initWithDynamicProvider_];
    _Block_release(v10);

    v12 = [v2 systemGray2Color];
    v13 = [v2 systemGrayColor];
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v15 = objc_allocWithZone(MEMORY[0x277D75348]);
    v24 = sub_269C937E4;
    v25 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_269CC7F6C;
    v23 = &block_descriptor_46;
    v16 = _Block_copy(&aBlock);
    v17 = [v15 initWithDynamicProvider_];
    _Block_release(v16);

    v18 = [objc_allocWithZone(MEMORY[0x277CD9EA0]) initWithType_];
    *a1 = v19;
    a1[1] = v5;
    a1[2] = v11;
    a1[3] = v17;
    a1[4] = v18;
    a1[5] = 0x402C000000000000;
  }

  else
  {
    __break(1u);
  }
}

uint64_t SleepOnboardingCoordinator.__allocating_init(healthStore:sleepStore:navigationController:onboardingContext:options:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  v23 = a4[2];
  v9 = *a5;
  v10 = sub_269D97D80();
  v11 = sub_269D97D70();
  type metadata accessor for HealthStatusFeatureProvider();
  v12 = swift_allocObject();
  v26 = v10;
  v27 = MEMORY[0x277D62630];
  *&v25 = v11;
  v13 = *MEMORY[0x277CCC0F0];
  v14 = objc_allocWithZone(MEMORY[0x277CCD460]);
  swift_retain_n();
  v15 = a1;
  v16 = [v14 initWithFeatureIdentifier:v13 healthStore:v15];
  v17 = sub_269C1B0B8(0, &qword_28034F430);
  v18 = MEMORY[0x277D113B8];
  v12[5] = v17;
  v12[6] = v18;
  v12[2] = v16;

  sub_269CAC4E4(&v25, (v12 + 7));
  v19 = type metadata accessor for SleepOnboardingManager();
  v20 = swift_allocObject();
  v21 = sub_269CC88A4(a2, v15, v12, v11, v20);

  type metadata accessor for SleepOnboardingCoordinator();
  result = swift_allocObject();
  *(result + 40) = v19;
  *(result + 48) = &protocol witness table for SleepOnboardingManager;
  *(result + 16) = v21;
  *(result + 96) = 0;
  *(result + 56) = v7;
  *(result + 64) = v8;
  *(result + 80) = v9;
  *(result + 88) = a3;
  *(result + 72) = v23;
  return result;
}

uint64_t SleepOnboardingCoordinator.__allocating_init(onboardingManager:onboardingContext:navigationController:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = sub_269D330E8(v11, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t SleepOnboardingCoordinator.init(onboardingManager:onboardingContext:navigationController:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_269D32E18(v14, a2, a3, a4, v4, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v16;
}

id sub_269D31290()
{
  v1 = v0;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);

  v3 = sub_269D98230();
  v4 = sub_269D9AB80();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446466;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, &v15);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2082;
    v10 = *(v1 + 56);
    v11 = sub_269D9A660();
    v13 = sub_269C2EACC(v11, v12, &v15);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Dismissing sleep onboarding with context: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  return [*(v1 + 88) dismissViewControllerAnimated:1 completion:0];
}

void sub_269D31490(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  __swift_project_value_buffer(v5, qword_280C0B728);

  v6 = sub_269D98230();
  v7 = sub_269D9AB80();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446466;
    v10 = sub_269D9B4D0();
    v12 = sub_269C2EACC(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    v13 = *(a1 + 24);
    v14 = *(a1 + 32);
    aBlock = *(a1 + 16);
    LOBYTE(v24) = v13;
    v25 = v14;
    v15 = aBlock;
    v16 = sub_269D9A660();
    v18 = sub_269C2EACC(v16, v17, &v22);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Completing sleep onboarding with context: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v9, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  v19 = v2[11];
  v20 = swift_allocObject();
  v20[2] = v2;
  v20[3] = a1;
  v20[4] = v4;
  v27 = sub_269D331FC;
  v28 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_269CA6718;
  v26 = &block_descriptor_31;
  v21 = _Block_copy(&aBlock);

  [v19 dismissViewControllerAnimated:1 completion:v21];
  _Block_release(v21);
}

void sub_269D31744(void *a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1Tm(a1 + 2, v4);
  (*(v5 + 200))(a2, v4, v5);
  v6 = a1[10];
  if (v6)
  {
    sub_269D32540((*(a2 + 24) & 1) == 0);
  }

  if ((v6 & 2) != 0)
  {
    sub_269D328EC();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);

  oslog = sub_269D98230();
  v8 = sub_269D9AB80();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446466;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, &v19);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = *(a2 + 16);
    v15 = sub_269D9A660();
    v17 = sub_269C2EACC(v15, v16, &v19);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_269C18000, oslog, v8, "[%{public}s] Dismissed sleep onboarding with context: %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  else
  {
  }
}

void sub_269D31A08(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = v3[5];
  v9 = v3[6];
  __swift_project_boxed_opaque_existential_1Tm(v3 + 2, v8);
  v10 = (*(v9 + 16))(v8, v9);
  v11 = [objc_opt_self() sharedBehavior];
  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 hksp_supportsSleep];

  if (!v13)
  {

    goto LABEL_10;
  }

  v14 = [v10 profileIdentifier];
  v15 = [v14 type];

  if (v15 == 3)
  {
LABEL_10:
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v29 = sub_269D98250();
    __swift_project_value_buffer(v29, qword_280C0B728);

    v17 = sub_269D98230();
    v18 = sub_269D9AB60();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49 = v20;
    *v19 = 136446466;
    v30 = sub_269D9B4D0();
    v32 = sub_269C2EACC(v30, v31, &v49);

    *(v19 + 4) = v32;
    *(v19 + 12) = 2082;
    v33 = v4[7];
    v34 = sub_269D9A660();
    v36 = sub_269C2EACC(v34, v35, &v49);

    *(v19 + 14) = v36;
    v28 = "[%{public}s] Attempted to onboard sleep on unsupported device with context: %{public}s";
    goto LABEL_14;
  }

  if (v4[12])
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v16 = sub_269D98250();
    __swift_project_value_buffer(v16, qword_280C0B728);

    v17 = sub_269D98230();
    v18 = sub_269D9AB60();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_15;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v49 = v20;
    *v19 = 136446466;
    v21 = sub_269D9B4D0();
    v23 = sub_269C2EACC(v21, v22, &v49);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    v24 = v4[7];
    v25 = sub_269D9A660();
    v27 = sub_269C2EACC(v25, v26, &v49);

    *(v19 + 14) = v27;
    v28 = "[%{public}s] Asked to show sleep onboarding but already setting up with context: %{public}s";
LABEL_14:
    _os_log_impl(&dword_269C18000, v17, v18, v28, v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v20, -1, -1);
    MEMORY[0x26D652460](v19, -1, -1);
LABEL_15:

    if (a2)
    {
      a2(0);
    }

    return;
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v37 = sub_269D98250();
  __swift_project_value_buffer(v37, qword_280C0B728);

  v38 = sub_269D98230();
  v39 = sub_269D9AB80();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49 = v41;
    *v40 = 136446466;
    v42 = sub_269D9B4D0();
    v44 = sub_269C2EACC(v42, v43, &v49);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = v4[7];
    v46 = sub_269D9A660();
    v48 = sub_269C2EACC(v46, v47, &v49);

    *(v40 + 14) = v48;
    _os_log_impl(&dword_269C18000, v38, v39, "[%{public}s] Presenting onboarding with context: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v41, -1, -1);
    MEMORY[0x26D652460](v40, -1, -1);
  }

  *(v4 + 96) = 1;
  sub_269D31FA0(a1, a2, a3);
}

uint64_t sub_269D31FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);

  v9 = sub_269D98230();
  v10 = sub_269D9AB80();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v32 = v12;
    *v11 = 136446466;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v32);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2082;
    v16 = sub_269D9A660();
    v18 = sub_269C2EACC(v16, v17, &v32);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Setting up navigation controller for consolidated onboarding (entry: %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  v19 = *(v4 + 40);
  v20 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v4 + 16), v19);
  v21 = *(v4 + 64);
  v22 = *(v4 + 72);
  v32 = *(v4 + 56);
  v33 = v21;
  v34 = v22;
  v23 = v32;
  SleepOnboardingAnalyticsTracking<>.trackOnboardingPromotion(context:)(&v32, v19, v20);

  v24 = *(v4 + 40);
  v25 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v4 + 16), v24);
  (*(v25 + 208))(v24, v25);
  v26 = *(v4 + 40);
  v27 = *(v4 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v4 + 16), v26);
  v28 = swift_allocObject();
  v28[2] = v4;
  v28[3] = a1;
  v28[4] = a2;
  v28[5] = a3;
  v29 = *(v27 + 184);
  v30 = a1;

  sub_269C255A8(a2);
  v29(sub_269D334DC, v28, v26, v27);
}

void sub_269D3228C(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *), uint64_t a6)
{
  v10 = a2 != 0;
  sub_269C2DB5C(a3 + 16, v30);
  v11 = *(a3 + 48);
  v12 = *(a3 + 64);
  v13 = *(a3 + 72);
  v27 = *(a3 + 56);
  v28 = v12;
  v29 = v13;
  v26 = 2 * v10;
  v14 = *(a3 + 40);
  __swift_project_boxed_opaque_existential_1Tm((a3 + 16), v14);
  v15 = *(v11 + 168);
  v16 = v27;
  v17 = v15(v14, v11);
  type metadata accessor for SleepOnboardingUserInfo();
  swift_allocObject();
  v18 = a1;
  sub_269CA4E44(v30, &v27, a1, &v26, v17);

  v19 = objc_allocWithZone(type metadata accessor for SleepOnboardingSetupViewController());

  v21 = sub_269D2E988(v20, 0);

  v22 = &v21[OBJC_IVAR____TtC13SleepHealthUI29SleepOnboardingFlowController_delegate];
  swift_beginAccess();
  *v22 = a3;
  v22[1] = &protocol witness table for SleepOnboardingCoordinator;
  v23 = v21;

  swift_unknownObjectRelease();
  if (!a5)
  {
    a6 = 0;
  }

  v24 = v23;
  sub_269D32EC0(a4, v24, a5, a6, a3);
}

uint64_t sub_269D32454(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 96) = 0;
  }

  if (a2)
  {
    a2(a4);
  }
}

void sub_269D32540(int a1)
{
  LODWORD(v2) = a1;
  v3 = sub_269D973D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v28 = v2;
    v2 = v10;
    v27 = swift_slowAlloc();
    v30 = v27;
    *v2 = 136446210;
    v11 = sub_269D9B4D0();
    v29 = v1;
    v13 = sub_269C2EACC(v11, v12, &v30);

    *(v2 + 4) = v13;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Navigating to sleep room", v2, 0xCu);
    v14 = v27;
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x26D652460](v14, -1, -1);
    v15 = v2;
    LOBYTE(v2) = v28;
    MEMORY[0x26D652460](v15, -1, -1);
  }

  if (v2)
  {
    v16 = *MEMORY[0x277D62240];
  }

  else
  {
    v16 = 0;
  }

  v29 = v16;
  v17 = HKSPSleepURLWithProvenanceInfo();
  if (v17)
  {
    v18 = v17;
    sub_269D973B0();

    DeepLinkOpener.open(url:completion:)(v6, 0, 0);
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v19 = sub_269D98230();
    v20 = sub_269D9AB60();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136446210;
      v23 = sub_269D9B4D0();
      v25 = sub_269C2EACC(v23, v24, &v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Failed to create sleep deep link url", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D652460](v22, -1, -1);
      MEMORY[0x26D652460](v21, -1, -1);
    }

    else
    {

      v26 = v29;
    }
  }
}

uint64_t sub_269D328EC()
{
  v0 = sub_269D97E70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D33428();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97E90();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269D973D0();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v12 = sub_269D98250();
  __swift_project_value_buffer(v12, qword_280C0B728);
  v13 = sub_269D98230();
  v14 = sub_269D9AB80();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v8;
    v16 = v15;
    v17 = swift_slowAlloc();
    v35 = v17;
    *v16 = 136446210;
    v18 = sub_269D9B4D0();
    v30 = v6;
    v20 = sub_269C2EACC(v18, v19, &v35);
    v6 = v30;

    *(v16 + 4) = v20;
    _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] Navigating to balance room", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D652460](v17, -1, -1);
    v21 = v16;
    v8 = v29;
    MEMORY[0x26D652460](v21, -1, -1);
  }

  v22 = v32;
  sub_269D97E80();
  v23 = *MEMORY[0x277D0FDC8];
  v24 = sub_269D97E60();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v6, v23, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  (*(v1 + 104))(v3, *MEMORY[0x277D0FE08], v0);
  v26 = v31;
  sub_269D97E50();
  (*(v1 + 8))(v3, v0);
  sub_269D33480(v6);
  (*(v8 + 8))(v22, v7);
  DeepLinkOpener.open(url:completion:)(v26, 0, 0);
  return (*(v33 + 8))(v26, v34);
}

uint64_t SleepOnboardingCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t SleepOnboardingCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_269D32E18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 40) = a6;
  *(a5 + 48) = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a5 + 16));
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v14 = *a2;
  v15 = *(a2 + 8);
  v16 = a2[2];
  v17 = *a4;
  *(a5 + 96) = 0;
  *(a5 + 56) = v14;
  *(a5 + 64) = v15;
  *(a5 + 80) = v17;
  *(a5 + 88) = a3;
  *(a5 + 72) = v16;
  return a5;
}

void sub_269D32EC0(void *a1, void *a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v10 = *(a5 + 88);
    sub_269C4E764();
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_269DA2A30;
    *(v11 + 32) = a2;
    sub_269C1B0B8(0, &qword_28034DC38);
    v12 = a1;
    v13 = a2;
    v14 = sub_269D9A7D0();

    [v10 setViewControllers:v14 animated:0];

    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = v13;
    v16[6] = &protocol witness table for SleepOnboardingFlowController;
    v19[4] = sub_269D334E8;
    v19[5] = v16;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_269CA6718;
    v19[3] = &block_descriptor_21_0;
    v17 = _Block_copy(v19);
    v18 = v13;
    sub_269C255A8(a3);

    [v12 presentViewController:v10 animated:1 completion:v17];
    _Block_release(v17);
  }

  else
  {
    [*(a5 + 88) pushViewController:a2 animated:1];
    *(a5 + 96) = 0;
    if (a3)
    {
      a3(a2);
    }
  }
}

uint64_t sub_269D330E8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepOnboardingCoordinator();
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a6);
  return sub_269D32E18(v15, a2, a3, a4, v16, a6, a7);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_269D33224()
{
  result = qword_280350F90;
  if (!qword_280350F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350F90);
  }

  return result;
}

unint64_t sub_269D3327C()
{
  result = qword_280350F98;
  if (!qword_280350F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350F98);
  }

  return result;
}

unint64_t sub_269D332D4()
{
  result = qword_280350FA0;
  if (!qword_280350FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350FA0);
  }

  return result;
}

unint64_t sub_269D3332C()
{
  result = qword_280350FA8;
  if (!qword_280350FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350FA8);
  }

  return result;
}

void sub_269D33428()
{
  if (!qword_280350FB0)
  {
    sub_269D97E60();
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280350FB0);
    }
  }
}

uint64_t sub_269D33480(uint64_t a1)
{
  sub_269D33428();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SleepTimeDurationPickerViewModel.Topic.hashValue.getter(char a1)
{
  sub_269D9B350();
  MEMORY[0x26D6515B0](a1 & 1);
  return sub_269D9B390();
}

uint64_t SleepTimeDurationPickerViewModel.Context.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

unint64_t sub_269D33610()
{
  result = qword_280350FB8;
  if (!qword_280350FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350FB8);
  }

  return result;
}

unint64_t sub_269D33668()
{
  result = qword_280350FC0;
  if (!qword_280350FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280350FC0);
  }

  return result;
}

double CGFloat.rounded(_:toScale:)(uint64_t a1, double a2, double a3)
{
  v6 = sub_269D9B250();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 * a3;
  v17 = v11;
  (*(v7 + 16))(v10, a1, v6, v8);
  v12 = (*(v7 + 88))(v10, v6);
  if (v12 == *MEMORY[0x277D84678])
  {
    v13 = round(v11);
  }

  else if (v12 == *MEMORY[0x277D84670])
  {
    v13 = rint(v11);
  }

  else if (v12 == *MEMORY[0x277D84680])
  {
    v13 = ceil(v11);
  }

  else if (v12 == *MEMORY[0x277D84688])
  {
    v13 = floor(v11);
  }

  else if (v12 == *MEMORY[0x277D84660])
  {
    v13 = trunc(v11);
  }

  else if (v12 == *MEMORY[0x277D84668])
  {
    v13 = ceil(v11);
    v14 = floor(v11);
    if (v11 < 0.0)
    {
      v13 = v14;
    }
  }

  else
  {
    sub_269D9A920();
    (*(v7 + 8))(v10, v6);
    v13 = v17;
  }

  return v13 / a2;
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, id a2, double a3)
{
  [a2 displayScale];

  return CGFloat.rounded(_:toScale:)(a1, v5, a3);
}

double CGFloat.rounded(_:toScaleOf:)(uint64_t a1, void *a2, double a3)
{
  swift_getObjectType();

  return sub_269D339A0(a1, a2, a3);
}

double sub_269D339A0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 traitCollection];
  [v5 displayScale];
  v7 = CGFloat.rounded(_:toScale:)(a1, v6, a3);

  return v7;
}

uint64_t Date.hkspDescription.getter()
{
  v0 = sub_269D974B0();
  v1 = [v0 hkspDescription];

  v2 = sub_269D9A630();
  return v2;
}

uint64_t Date.dayIndex(inGregorian:)(uint64_t a1)
{
  v2 = v1;
  v19 = a1;
  v3 = sub_269D977A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97580();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_269D9A330();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, v2, v7, v13);
  (*(v4 + 16))(v6, v19, v3);
  sub_269D9A310();
  v16 = sub_269D9A320();
  (*(v12 + 8))(v15, v11);
  return v16;
}

void static Date.noon(onDayIndex:gregorian:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_269D976E0();
  v4 = [v2 hk:a1 noonWithDayIndex:v3 calendar:?];

  sub_269D97540();
}

uint64_t Date.hourMinuteComponents()()
{
  v0 = sub_269D977A0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97770();
  sub_269D33F34();
  v4 = sub_269D97780();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_269D9EBF0;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, *MEMORY[0x277CC9980], v4);
  v10(v9 + v6, *MEMORY[0x277CC99A0], v4);
  sub_269CF7250(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_269D976C0();

  return (*(v1 + 8))(v3, v0);
}

void sub_269D33F34()
{
  if (!qword_2803502B0)
  {
    sub_269D97780();
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_2803502B0);
    }
  }
}

void static Date.iso8601(_:)()
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v0 = sub_269D9A5F0();
  v1 = [v2 dateFromString_];

  if (v1)
  {
    sub_269D97540();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_269D34048(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_269D34090(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_269D341C4@<X0>(void *a1@<X8>)
{
  if (qword_28034D720 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &xmmword_28035E530, sizeof(__dst));
  v2 = __dst[37];
  v3 = __dst[36];
  v4 = __dst[35];
  v26 = unk_28035E540;
  v27 = xmmword_28035E550;
  v28 = unk_28035E560;
  v29 = qword_28035E570;
  v5 = __dst[15];
  v24 = unk_28035E5F8;
  v25 = xmmword_28035E530;
  v22 = unk_28035E5D8;
  v23 = unk_28035E5E8;
  v20 = unk_28035E5B8;
  v21 = unk_28035E5C8;
  v19 = qword_28035E640;
  v17 = xmmword_28035E620;
  v18 = unk_28035E630;
  v16 = xmmword_28035E610;
  v15 = qword_28035E670;
  v14 = xmmword_28035E660;
  v13 = qword_28035E6B0;
  v11 = unk_28035E690;
  v12 = xmmword_28035E6A0;
  v10 = xmmword_28035E680;
  v6 = *MEMORY[0x277D76968];
  sub_269C6AAB4(__dst, v32);

  v7 = *MEMORY[0x277D76938];
  __src[2] = v27;
  __src[3] = v28;
  __src[0] = v25;
  __src[1] = v26;
  *(&__src[8] + 8) = v20;
  *(&__src[12] + 8) = v24;
  *(&__src[11] + 8) = v23;
  *(&__src[10] + 8) = v22;
  *(&__src[9] + 8) = v21;
  __src[16] = v18;
  __src[14] = v16;
  __src[15] = v17;
  __src[19] = v14;
  __src[22] = v11;
  __src[23] = v12;
  __src[21] = v10;
  v32[2] = v27;
  v32[3] = v28;
  v32[0] = v25;
  v32[1] = v26;
  *(&__src[4] + 8) = xmmword_269DA8AC0;
  v34 = xmmword_269DA8AC0;
  *(&__src[5] + 8) = xmmword_269DA8AD0;
  v35 = xmmword_269DA8AD0;
  *(&__src[6] + 8) = xmmword_269DA8AE0;
  v36 = xmmword_269DA8AE0;
  *(&__src[7] + 1) = v5;
  v37 = v5;
  v39 = v20;
  *&__src[4] = v29;
  *&__src[8] = 0x4026000000000000;
  *(&__src[13] + 1) = 0x4057C00000000000;
  *&__src[17] = v19;
  *(&__src[17] + 1) = v6;
  *&__src[18] = v6;
  *(&__src[18] + 1) = v7;
  *&__src[24] = v13;
  v33 = v29;
  *&__src[20] = v15;
  *(&__src[20] + 1) = 0x4053000000000000;
  v43 = v24;
  v42 = v23;
  v41 = v22;
  v40 = v21;
  v38 = 0x4026000000000000;
  v44 = 0x4057C00000000000;
  v46 = v17;
  v47 = v18;
  v45 = v16;
  v48 = v19;
  v49 = v6;
  v50 = v6;
  v51 = v7;
  v52 = v14;
  v53 = v15;
  v54 = 0x4053000000000000;
  v58 = v13;
  v56 = v11;
  v57 = v12;
  v55 = v10;
  sub_269C6AAB4(__src, v9);
  sub_269C6AB10(v32);
  return memcpy(a1, __src, 0x188uLL);
}

void sub_269D344C0(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v2 secondarySystemBackgroundColor];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&v26 = sub_269C57E64;
  *(&v26 + 1) = v5;
  *&v24 = MEMORY[0x277D85DD0];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_269CC7F6C;
  *(&v25 + 1) = &block_descriptor_32;
  v7 = _Block_copy(&v24);
  v8 = [v6 initWithDynamicProvider_];
  _Block_release(v7);

  v9 = [v2 systemOrangeColor];
  v10 = objc_allocWithZone(MEMORY[0x277D75348]);
  *&v26 = sub_269CC7C38;
  *(&v26 + 1) = 0;
  *&v24 = MEMORY[0x277D85DD0];
  *(&v24 + 1) = 1107296256;
  *&v25 = sub_269CC7F6C;
  *(&v25 + 1) = &block_descriptor_4_0;
  v11 = _Block_copy(&v24);
  v12 = [v10 initWithDynamicProvider_];
  _Block_release(v11);

  v13 = [v2 systemGray6Color];
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v14 = qword_280C0D990;
  v15 = sub_269D9A5F0();
  v16 = [v2 colorNamed:v15 inBundle:v14 compatibleWithTraitCollection:0];

  if (v16)
  {
    v17 = [v2 blackColor];
    sub_269CEB884(&v24);
    *(a1 + 72) = xmmword_269DA8AF0;
    *(a1 + 88) = xmmword_269DA8B00;
    *(a1 + 104) = xmmword_269DA8B10;
    *(a1 + 120) = xmmword_269DA8B20;
    *(a1 + 136) = xmmword_269DA8B30;
    *(a1 + 152) = xmmword_269DA8B40;
    v18 = v35;
    *(a1 + 360) = v34;
    *(a1 + 376) = v18;
    v19 = v33;
    *(a1 + 328) = v32;
    *(a1 + 344) = v19;
    v20 = v31;
    *(a1 + 296) = v30;
    *(a1 + 312) = v20;
    v21 = v29;
    *(a1 + 264) = v28;
    *(a1 + 280) = v21;
    *(a1 + 168) = xmmword_269DA8B50;
    *(a1 + 184) = xmmword_269DA8B60;
    v22 = v26;
    *(a1 + 248) = v27;
    *(a1 + 232) = v22;
    v23 = v24;
    *(a1 + 216) = v25;
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v12;
    *(a1 + 24) = v13;
    *(a1 + 32) = v16;
    *(a1 + 40) = v17;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 1039516303;
    *(a1 + 200) = v23;
  }

  else
  {
    __break(1u);
  }
}

id sub_269D34880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [objc_opt_self() defaultConfiguration];
  type metadata accessor for SleepScheduleClock();
  sub_269D34B1C();
  v8 = sub_269D9B2A0();
  v9 = sub_269D9A5F0();
  v10 = [v7 tweakedConfigurationForCaller:v8 usage:v9];

  swift_unknownObjectRelease();
  sub_269D34B64();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269DA0D60;
  v12 = MEMORY[0x277D837D0];
  sub_269D9AFA0();
  *(inited + 96) = v12;
  *(inited + 72) = 0x6D6F74737563;
  *(inited + 80) = 0xE600000000000000;
  sub_269D9AFA0();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = a2;
  sub_269D9AFA0();
  v13 = sub_269C44744(a3);
  sub_269D34BD8(a4);
  sub_269D34CA4();
  *(inited + 240) = v14;
  *(inited + 216) = v13;
  sub_269C4485C(inited);
  swift_setDeallocating();
  sub_269D34C4C(0, &qword_28034DE80);
  swift_arrayDestroy();
  v15 = sub_269D9A480();

  v16 = [objc_opt_self() feedbackWithDictionaryRepresentation_];

  [v10 setFeedback_];
  return v10;
}

unint64_t sub_269D34B1C()
{
  result = qword_280350FC8;
  if (!qword_280350FC8)
  {
    type metadata accessor for SleepScheduleClock();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_280350FC8);
  }

  return result;
}

void sub_269D34B64()
{
  if (!qword_280350FD0)
  {
    sub_269D34C4C(255, &qword_28034DE80);
    v0 = sub_269D9B240();
    if (!v1)
    {
      atomic_store(v0, &qword_280350FD0);
    }
  }
}

uint64_t sub_269D34BD8(uint64_t a1)
{
  sub_269D34C4C(0, &qword_280350FD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_269D34C4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_269D34CA4()
{
  if (!qword_280350FE0)
  {
    v0 = sub_269D9A4A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350FE0);
    }
  }
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

BOOL WeekResults.hasData.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return 0;
  }

  if (v2 == 1)
  {
    v3 = 0;
    v4 = 0.0;
  }

  else
  {
    v3 = v2 & 0x7FFFFFFFFFFFFFFELL;
    v6 = (v1 + 72);
    v4 = 0.0;
    v7 = v2 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v8 = *(v6 - 4);
      v9 = *v6;
      v6 += 8;
      v4 = v4 + v8 + v9;
      v7 -= 2;
    }

    while (v7);
    if (v2 == v3)
    {
      return v4 > 0.0;
    }
  }

  v10 = v2 - v3;
  v11 = (v1 + 32 * v3 + 40);
  do
  {
    v12 = *v11;
    v11 += 4;
    v4 = v4 + v12;
    --v10;
  }

  while (v10);
  return v4 > 0.0;
}

uint64_t WeekResults.canCompareAverage(against:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    return 0;
  }

  else
  {
    return (*(a1 + 16) ^ 1) & 1;
  }
}

uint64_t WeekResults.dates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeekResults(0) + 24);
  v4 = sub_269D97010();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WeekResults.gregorianCalendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WeekResults(0) + 40);
  v4 = sub_269D977A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id WeekResults.xAxisIntervalFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeekResults(0) + 44));

  return v1;
}

id WeekResults.yAxisFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeekResults(0) + 48));

  return v1;
}

id WeekResults.averageDurationFormatter.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeekResults(0) + 52));

  return v1;
}

id WeekResults.localizedAverageComparison(against:)(uint64_t a1)
{
  if (*(v1 + 16) & 1) != 0 || (*(a1 + 16))
  {
    return 0;
  }

  result = [objc_opt_self() bundleWithIdentifier_];
  if (result)
  {
    v3 = result;
    v4 = sub_269D972C0();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269D351B8()
{
  sub_269D35318(319, &qword_280350FF8, &type metadata for DayDuration, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_269D35318(319, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_269D97010();
      if (v2 <= 0x3F)
      {
        sub_269D977A0();
        if (v3 <= 0x3F)
        {
          sub_269C1B0B8(319, &qword_28034DE60);
          if (v4 <= 0x3F)
          {
            sub_269C1B0B8(319, &qword_28034DE58);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_269D35318(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_269D3537C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269D3539C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_269D35424()
{
  result = sub_269D977A0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id SleepScheduleProviding.sleepScheduleModel.getter(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = (*(a2 + 8))();
  v8[0] = 0;
  v3 = [v2 sleepScheduleModelWithError_];

  if (v3)
  {
    v4 = v8[0];
  }

  else
  {
    v5 = v8[0];
    v6 = sub_269D97360();

    swift_willThrow();
    return [objc_allocWithZone(MEMORY[0x277D62500]) init];
  }

  return v3;
}

uint64_t sub_269D35598(uint64_t a1, char a2)
{
  result = sub_269D987C0();
  if (v6)
  {
    if (a2)
    {
      return result;
    }

    return sub_269D987D0();
  }

  if ((a2 & 1) != 0 || v5 != *&a1)
  {
    return sub_269D987D0();
  }

  return result;
}

id SleepScheduleProvider.__allocating_init(sleepStore:)(void *a1)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v27[0] = 0;
  v2 = [a1 currentSleepScheduleWithError_];
  v3 = v27[0];
  if (v2)
  {
    v4 = v27[0];
  }

  else if (v27[0])
  {
    v10 = qword_280C0B218;
    v11 = v27[0];
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280C0B220);
    v13 = v11;
    v14 = sub_269D98230();
    v15 = sub_269D9AB60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v16 = 136446466;
      v17 = sub_269D9B4D0();
      v19 = sub_269C2EACC(v17, v18, v27);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      v20 = v13;
      v21 = [v20 description];
      v22 = sub_269D9A630();
      v24 = v23;

      v25 = sub_269C2EACC(v22, v24, v27);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Failed to read sleep schedule with error: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    else
    {
    }
  }

  v5 = HKSPCurrentDateProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_allocWithZone(type metadata accessor for SleepScheduleProvider());
  v8 = SleepScheduleProvider.init(sleepStore:schedule:currentDateProvider:)(a1, v2, sub_269C79AA4, v6);

  return v8;
}

uint64_t SleepScheduleProviding.sleepSchedule.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  sub_269D987C0();

  return v3;
}

id sub_269D35918()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore);
  v2 = sub_269D974B0();
  v17[0] = 0;
  v3 = [v1 upcomingResolvedScheduleOccurrenceAfterDate:v2 error:v17];

  if (v17[0])
  {
    v4 = qword_280C0B218;
    v5 = v17[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_269D98250();
    __swift_project_value_buffer(v6, qword_280C0B220);
    v7 = v5;
    v8 = sub_269D98230();
    v9 = sub_269D9AB60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17[0] = v11;
      *v10 = 136446466;
      *(v10 + 4) = sub_269C2EACC(0xD000000000000015, 0x8000000269DA8DB0, v17);
      *(v10 + 12) = 2082;
      sub_269C1B0B8(0, &unk_280351010);
      v12 = v7;
      v13 = sub_269D9A670();
      v15 = sub_269C2EACC(v13, v14, v17);

      *(v10 + 14) = v15;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Error loading upcoming resolved occurrence: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    else
    {
    }
  }

  return v3;
}

id SleepScheduleProviding.upcomingResolvedOccurrence(forCurrentDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = (*(a3 + 8))(a2, a3);
  v4 = sub_269D974B0();
  v22[0] = 0;
  v5 = [v3 upcomingResolvedScheduleOccurrenceAfterDate:v4 error:v22];

  if (v22[0])
  {
    v6 = qword_280C0B218;
    v7 = v22[0];
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B220);
    v9 = v7;
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      sub_269C1B0B8(0, &unk_280351010);
      v17 = v9;
      v18 = sub_269D9A670();
      v20 = sub_269C2EACC(v18, v19, v22);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Error loading upcoming resolved occurrence: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);
    }

    else
    {
    }
  }

  return v5;
}

id SleepScheduleProviding.mutableSleepSchedule.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  sub_269D987C0();

  if (v3 && ([v3 mutableCopy], v3, sub_269D9AED0(), swift_unknownObjectRelease(), sub_269C1B0B8(0, &qword_28034E978), (swift_dynamicCast() & 1) != 0))
  {
    return v3;
  }

  else
  {
    return [objc_allocWithZone(MEMORY[0x277D62488]) init];
  }
}

uint64_t SleepScheduleProviding.hasActiveSchedule.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  sub_269D987C0();

  v2 = v13;
  if (v13)
  {
    if ([v13 isEnabled])
    {
      v3 = [v13 occurrences];
      sub_269C1B0B8(0, &qword_28034E050);
      v4 = sub_269D9A7E0();

      v14 = MEMORY[0x277D84F90];
      if (v4 >> 62)
      {
        goto LABEL_19;
      }

      for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_269D9AF50())
      {
        v12 = v2;
        v6 = 0;
        while (1)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x26D651260](v6, v4);
          }

          else
          {
            if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }

            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          v2 = (v6 + 1);
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if ([v7 isSingleDayOverride])
          {
          }

          else
          {
            sub_269D9B050();
            sub_269D9B090();
            sub_269D9B0A0();
            sub_269D9B060();
          }

          ++v6;
          if (v2 == i)
          {
            v2 = v12;
            v9 = v14;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        ;
      }

      v9 = MEMORY[0x277D84F90];
LABEL_21:

      if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
      {
        v10 = sub_269D9AF50();
      }

      else
      {
        v10 = *(v9 + 16);
      }

      if (v10)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  return 0;
}

id SleepScheduleProviding.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  sub_269D987C0();

  if (!v4)
  {
    return 0;
  }

  v2 = [v4 isEnabled];

  return v2;
}

BOOL SleepScheduleProviding.hasWindDown.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))();
  sub_269D987C0();

  if (!v5)
  {
    return 0;
  }

  [v5 windDownTime];
  v3 = v2;

  return v3 > 0.0;
}

uint64_t SleepScheduleProviding.occurrence(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 24))(a2, a3);
  sub_269D987C0();

  if (v22)
  {
    v4 = [v22 occurrencesOnDays_];

    sub_269C1B0B8(0, &qword_28034E050);
    v5 = sub_269D9A7E0();

    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }

LABEL_9:
    result = sub_269D9AF50();
    if (result == 1)
    {
      goto LABEL_4;
    }

LABEL_10:

    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v9 = sub_269D98250();
    __swift_project_value_buffer(v9, qword_280C0B220);
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22 = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, &v22);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = NSStringFromHKSPWeekdays();
      v18 = sub_269D9A630();
      v20 = v19;

      v21 = sub_269C2EACC(v18, v20, &v22);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Did not find occurrence with weekday identifier: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);
    }

    return 0;
  }

  v5 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_9;
  }

LABEL_3:
  result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result != 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x26D651260](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

id SleepScheduleProviding.editableOverrideOccurrence(forCurrentDate:gregorianCalendar:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a2;
  v8 = sub_269D97580();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v99 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v92 - v13;
  v15 = *(a4 + 24);
  v97 = a4;
  v98 = v4;
  v104 = a3;
  v15(a3, a4, v12);
  sub_269D987C0();

  v16 = v106[0];
  if (!v106[0])
  {
    v16 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
  }

  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v17 = sub_269D98250();
  v18 = __swift_project_value_buffer(v17, qword_280C0B220);
  v96 = *(v9 + 16);
  v96(v14, a1, v8);
  v19 = v16;
  v20 = sub_269D98230();
  v21 = sub_269D9AB80();

  v22 = os_log_type_enabled(v20, v21);
  v102 = a1;
  v103 = v19;
  v100 = v9;
  v101 = v18;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = v19;
    v93 = v8;
    v25 = v23;
    v26 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v106[0] = v92;
    *v25 = 136446722;
    v27 = sub_269D9B4D0();
    v29 = sub_269C2EACC(v27, v28, v106);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2114;
    v30 = sub_269D974B0();
    v95 = *(v9 + 8);
    v95(v14, v93);
    *(v25 + 14) = v30;
    *(v25 + 22) = 2114;
    *(v25 + 24) = v24;
    *v26 = v30;
    v26[1] = v24;
    v31 = v24;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] generating editable override occcurence for current date: %{public}@ and schedule: %{public}@", v25, 0x20u);
    sub_269C77450(0, &unk_280C0ADC0, &qword_280C0ADD0);
    swift_arrayDestroy();
    v32 = v26;
    a1 = v102;
    MEMORY[0x26D652460](v32, -1, -1);
    v33 = v92;
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    MEMORY[0x26D652460](v33, -1, -1);
    v34 = v25;
    v8 = v93;
    MEMORY[0x26D652460](v34, -1, -1);
  }

  else
  {

    v95 = *(v9 + 8);
    v95(v14, v8);
  }

  v35 = SleepScheduleProviding.sleepScheduleModel.getter(v104, v97);
  v36 = sub_269D974B0();
  v37 = [v35 upcomingResolvedOccurrenceAfterDate_];

  v38 = v99;
  v96(v99, a1, v8);
  v39 = v37;
  v40 = sub_269D98230();
  v41 = sub_269D9AB80();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v98 = v39;
    v43 = v38;
    v44 = v42;
    v45 = swift_slowAlloc();
    v46 = v8;
    v47 = swift_slowAlloc();
    v106[0] = v47;
    *v44 = 136446722;
    v48 = sub_269D9B4D0();
    v50 = sub_269C2EACC(v48, v49, v106);

    *(v44 + 4) = v50;
    *(v44 + 12) = 2114;
    v51 = sub_269D974B0();
    v52 = v43;
    v39 = v98;
    v95(v52, v46);
    *(v44 + 14) = v51;
    *(v44 + 22) = 2114;
    *(v44 + 24) = v39;
    *v45 = v51;
    v45[1] = v39;
    v53 = v39;
    _os_log_impl(&dword_269C18000, v40, v41, "[%{public}s] upcoming resolved occurrence after date: %{public}@ is: %{public}@", v44, 0x20u);
    sub_269C77450(0, &unk_280C0ADC0, &qword_280C0ADD0);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v45, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x26D652460](v47, -1, -1);
    MEMORY[0x26D652460](v44, -1, -1);

    if (!v39)
    {
      goto LABEL_18;
    }
  }

  else
  {

    v95(v38, v8);
    if (!v39)
    {
LABEL_18:
      v65 = sub_269D98230();
      v66 = sub_269D9AB80();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v106[0] = v68;
        *v67 = 136446210;
        v69 = sub_269D9B4D0();
        v71 = sub_269C2EACC(v69, v70, v106);

        *(v67 + 4) = v71;
        _os_log_impl(&dword_269C18000, v65, v66, "[%{public}s] upcoming resolved occurrence is not a single day override, generating a new one", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x26D652460](v68, -1, -1);
        MEMORY[0x26D652460](v67, -1, -1);
      }

      v72 = v103;
      v73 = sub_269D974B0();
      v74 = sub_269D976E0();
      v75 = [v35 overrideOccurrenceGenerationResultForCurrentDate:v73 gregorianCalendar:v74 schedule:v72];

      v76 = v75;
      v77 = sub_269D98230();
      v78 = sub_269D9AB80();
      v79 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
      if (os_log_type_enabled(v77, v78))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v102 = v35;
        v83 = v82;
        v106[0] = v82;
        *v80 = 136446722;
        v84 = sub_269D9B4D0();
        v86 = sub_269C2EACC(v84, v85, v106);

        *(v80 + 4) = v86;
        *(v80 + 12) = 2114;
        v87 = [v76 overrideOccurrence];
        *(v80 + 14) = v87;
        *v81 = v87;
        *(v80 + 22) = 1024;
        v88 = [v76 &selRef_directionalLayoutMargins + 6];

        *(v80 + 24) = v88;
        _os_log_impl(&dword_269C18000, v77, v78, "[%{public}s] generated override %{public}@ (from template: %{BOOL}d)", v80, 0x1Cu);
        sub_269C773DC(v81);
        MEMORY[0x26D652460](v81, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        v89 = v83;
        v35 = v102;
        v72 = v103;
        MEMORY[0x26D652460](v89, -1, -1);
        v90 = v80;
        v79 = &property descriptor for SleepScheduleComponentsViewModel.roundedWakeUpComponents;
        MEMORY[0x26D652460](v90, -1, -1);
      }

      else
      {
      }

      v64 = [v76 v79[281]];
      [v76 wasGeneratedFromTemplate];

      return v64;
    }
  }

  v54 = [v39 occurrence];
  if (!v54)
  {
    goto LABEL_18;
  }

  v55 = v54;
  if (![v54 isSingleDayOverride])
  {

    goto LABEL_18;
  }

  v56 = sub_269D98230();
  v57 = sub_269D9AB80();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v106[0] = v59;
    *v58 = 136446210;
    v60 = sub_269D9B4D0();
    v62 = sub_269C2EACC(v60, v61, v106);

    *(v58 + 4) = v62;
    _os_log_impl(&dword_269C18000, v56, v57, "[%{public}s] upcoming resolved occurrence is single day override, returning", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    MEMORY[0x26D652460](v59, -1, -1);
    MEMORY[0x26D652460](v58, -1, -1);
  }

  v63 = v103;
  [v55 mutableCopy];
  sub_269D9AED0();

  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034DC30);
  swift_dynamicCast();
  return v105;
}

uint64_t SleepScheduleProvider.currentDateProvider.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  return v1;
}

uint64_t sub_269D36F58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_nextOccurrencePublisher;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_269D37008(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_nextOccurrencePublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id SleepScheduleProvider.init(sleepStore:schedule:currentDateProvider:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentSchedulePublisher;
  sub_269D37C70(0, &qword_280C0B140, &qword_280C0AEE0, &qword_280C0AEF0);
  swift_allocObject();
  *&v4[v9] = sub_269D987F0();
  v10 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_nextOccurrencePublisher;
  sub_269D37C70(0, &unk_280C0B130, &qword_280C0AE78, &unk_280C0AE80);
  swift_allocObject();
  *&v4[v10] = sub_269D987F0();
  v11 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentGoalPublisher;
  sub_269C2FDFC();
  swift_allocObject();
  *&v4[v11] = sub_269D987F0();
  v12 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentWindDownDurationPublisher;
  v20 = 0;
  LOBYTE(v21) = 1;
  swift_allocObject();
  *&v4[v12] = sub_269D987F0();
  v13 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentScheduleEnabledPublisher;
  LOBYTE(v20) = 1;
  sub_269C5281C();
  swift_allocObject();
  *&v4[v13] = sub_269D987F0();
  v14 = OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_eventRecordPublisher;
  sub_269D37CDC();
  swift_allocObject();
  *&v4[v14] = sub_269D98790();
  *&v4[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_query] = 0;
  *&v4[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore] = a1;
  v15 = &v4[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider];
  *v15 = a3;
  *(v15 + 1) = a4;
  v19.receiver = v4;
  v19.super_class = type metadata accessor for SleepScheduleProvider();
  v16 = a1;

  v17 = objc_msgSendSuper2(&v19, sel_init);
  [v16 addObserver_];
  sub_269D374B4(a2);

  return v17;
}

id SleepScheduleProvider.__deallocating_deinit()
{
  [*&v0[OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_sleepStore] removeObserver_];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScheduleProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_269D374B4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_269D97580();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v40 = v5;
    v13 = v4;
    v14 = v12;
    v42[0] = v12;
    *v11 = 136446210;
    v15 = sub_269D9B4D0();
    v17 = sub_269C2EACC(v15, v16, v42);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Updating all publishers!", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    v18 = v14;
    v4 = v13;
    v5 = v40;
    MEMORY[0x26D652460](v18, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  sub_269D987C0();
  v19 = v42[0];
  if (v42[0])
  {
    if (a1)
    {
      sub_269C1B0B8(0, &qword_280C0AEF0);
      v20 = v19;
      v21 = a1;
      v22 = sub_269D9ADD0();

      if (v22)
      {
        goto LABEL_14;
      }

LABEL_13:
      v42[0] = a1;
      v23 = v21;
      sub_269D987D0();
      goto LABEL_14;
    }

LABEL_12:
    v21 = a1;
    goto LABEL_13;
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_14:
  swift_beginAccess();
  v24 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  v24(v25);
  v26 = sub_269D35918();
  (*(v5 + 8))(v7, v4);
  sub_269D987C0();
  v27 = v41;
  if (v41)
  {
    if (v26)
    {
      sub_269C1B0B8(0, &unk_280C0AE80);
      v28 = v27;
      v29 = v26;
      v30 = sub_269D9ADD0();

      if (v30)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if (!v26)
  {
    goto LABEL_24;
  }

  v29 = v26;
LABEL_22:
  v41 = v26;
  v29 = v29;
  sub_269D987D0();
LABEL_23:

LABEL_24:

  if (a1 && ([a1 sleepDurationGoal], v31 > 0.0))
  {
    [a1 sleepDurationGoal];
    v32 = 0;
    v34 = v33;
  }

  else
  {
    v34 = 0;
    v32 = 1;
  }

  sub_269D35598(v34, v32);
  if (a1)
  {
    [a1 windDownTime];
    v36 = v35;
  }

  else
  {
    v36 = 0;
  }

  sub_269D35598(v36, a1 == 0);
  if (!a1)
  {
    result = sub_269D987C0();
    if (v41)
    {
      return result;
    }

    LOBYTE(v37) = 1;
    goto LABEL_36;
  }

  v37 = [a1 isEnabled];
  result = sub_269D987C0();
  if (v37 != v41)
  {
LABEL_36:
    LOBYTE(v41) = v37;
    return sub_269D987D0();
  }

  return result;
}

id SleepScheduleProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269D379CC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

  return v1;
}

void sub_269D37C70(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  if (!*a2)
  {
    sub_269C77450(255, a3, a4);
    v5 = sub_269D987E0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_269D37CDC()
{
  if (!qword_280C0B168)
  {
    sub_269C1B0B8(255, &qword_280C0AEA0);
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B168);
    }
  }
}

uint64_t sub_269D37D54(void *a1)
{
  swift_getObjectType();
  v3 = sub_269D9A2A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B220);
  v8 = a1;
  v9 = v1;
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = v3;
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v12 = 136446722;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &v33);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2082;
    v31 = a1;
    if (a1)
    {
      v32 = v8;
      sub_269C1B0B8(0, &qword_280C0AEF0);
      v16 = v8;
      v17 = sub_269D9A660();
      v19 = v18;
    }

    else
    {
      v19 = 0xE300000000000000;
      v17 = 7104878;
    }

    v20 = sub_269C2EACC(v17, v19, &v33);

    *(v12 + 14) = v20;
    *(v12 + 22) = 2082;
    sub_269D987C0();
    if (v32)
    {
      sub_269C1B0B8(0, &qword_280C0AEF0);
      v21 = sub_269D9A660();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = sub_269C2EACC(v21, v23, &v33);

    *(v12 + 24) = v24;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Observed sleep schedule change to %{public}s from %{public}s", v12, 0x20u);
    v25 = v29;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v25, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);

    v3 = v30;
    a1 = v31;
  }

  else
  {
  }

  sub_269C1B0B8(0, &qword_280C0AEB0);
  *v6 = sub_269D9AC40();
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v26 = sub_269D9A2B0();
  result = (*(v4 + 8))(v6, v3);
  if (v26)
  {
    return sub_269D374B4(a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_269D380DC(void *a1, const char *a2)
{
  v44 = a2;
  v3 = v2;
  swift_getObjectType();
  v5 = sub_269D97580();
  v46 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D9A2A0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280C0B220);
  v12 = a1;
  v13 = sub_269D98230();
  v14 = sub_269D9AB80();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v43 = v5;
    v16 = v15;
    v41 = swift_slowAlloc();
    v48[0] = v41;
    *v16 = 136446466;
    v17 = sub_269D9B4D0();
    v19 = sub_269C2EACC(v17, v18, v48);
    v42 = v7;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    v21 = v12;
    v22 = [v21 description];
    v23 = sub_269D9A630();
    v24 = v3;
    v26 = v25;

    v7 = v42;
    v27 = sub_269C2EACC(v23, v26, v48);
    v3 = v24;

    *(v16 + 14) = v27;
    _os_log_impl(&dword_269C18000, v13, v14, v44, v16, 0x16u);
    v28 = v41;
    swift_arrayDestroy();
    MEMORY[0x26D652460](v28, -1, -1);
    v29 = v16;
    v5 = v43;
    MEMORY[0x26D652460](v29, -1, -1);
  }

  sub_269C1B0B8(0, &qword_280C0AEB0);
  *v10 = sub_269D9AC40();
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v30 = sub_269D9A2B0();
  result = (*(v8 + 8))(v10, v7);
  if (v30)
  {
    swift_beginAccess();
    v32 = *(v3 + OBJC_IVAR____TtC13SleepHealthUI21SleepScheduleProvider_currentDateProvider);

    v34 = v45;
    v32(v33);
    v35 = sub_269D35918();
    (*(v46 + 8))(v34, v5);
    sub_269D987C0();
    v36 = v47;
    if (v47)
    {
      if (v35)
      {
        sub_269C1B0B8(0, &unk_280C0AE80);
        v37 = v36;
        v38 = v35;
        v39 = sub_269D9ADD0();

        if (v39)
        {
        }

LABEL_14:
        v47 = v35;
        v40 = v38;
        sub_269D987D0();
      }
    }

    else if (!v35)
    {
    }

    v38 = v35;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

__n128 ScheduleOccurrenceViewModel.init(scheduleOccurrence:windDownTimeInterval:viewStyle:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a3;
  v56 = a2;
  v8 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v58 = &v52 - v15;
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = a4[11];
  v70 = a4[10];
  v71 = v22;
  v72 = *(a4 + 24);
  v23 = a4[7];
  v66 = a4[6];
  v67 = v23;
  v24 = a4[9];
  v68 = a4[8];
  v69 = v24;
  v25 = a4[3];
  v62 = a4[2];
  v63 = v25;
  v26 = a4[5];
  v64 = a4[4];
  v65 = v26;
  v27 = *a4;
  v61 = a4[1];
  v60 = v27;
  v54 = v19;
  if (a1)
  {
    v28 = [a1 bedtimeComponents];
    sub_269D97120();

    v29 = sub_269D971F0();
    v30 = *(*(v29 - 8) + 56);
    v30(v21, 0, 1, v29);
    v31 = [a1 wakeUpComponents];
    sub_269D97120();

    v30(v19, 0, 1, v29);
    v53 = [a1 weekdays];
  }

  else
  {
    v32 = sub_269D971F0();
    v33 = *(*(v32 - 8) + 56);
    v33(v21, 1, 1, v32);
    v33(v19, 1, 1, v32);
    v53 = 0;
  }

  v34 = sub_269D97580();
  v35 = *(*(v34 - 8) + 56);
  v35(v58, 1, 1, v34);
  v35(v59, 1, 1, v34);
  v35(v12, 1, 1, v34);
  v55 = v12;
  if (a1)
  {
    v36 = a1;
    v37 = [v36 alarmConfiguration];
    v38 = [v37 isEnabled];

    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = 2;
    }
  }

  else
  {
    v39 = 0;
  }

  v40 = type metadata accessor for ScheduleOccurrenceViewModel();
  v41 = v40[11];
  v35(a5 + v41, 1, 1, v34);
  v42 = v40[12];
  v35(a5 + v42, 1, 1, v34);
  v43 = v40[13];
  v35(a5 + v43, 1, 1, v34);
  sub_269C4E3A0(v21, a5);
  sub_269C4E3A0(v54, a5 + v40[5]);
  v44 = a5 + v40[6];
  *v44 = v56;
  *(v44 + 8) = v57 & 1;
  *(a5 + v40[7]) = v53;
  sub_269CB9F30(v58, a5 + v43);
  sub_269CB9F30(v59, a5 + v42);
  sub_269CB9F30(v55, a5 + v41);
  *(a5 + v40[14]) = 0;
  *(a5 + v40[8]) = v39;
  *(a5 + v40[9]) = 0;
  v45 = a5 + v40[10];
  v46 = v71;
  *(v45 + 160) = v70;
  *(v45 + 176) = v46;
  *(v45 + 192) = v72;
  v47 = v67;
  *(v45 + 96) = v66;
  *(v45 + 112) = v47;
  v48 = v69;
  *(v45 + 128) = v68;
  *(v45 + 144) = v48;
  v49 = v63;
  *(v45 + 32) = v62;
  *(v45 + 48) = v49;
  v50 = v65;
  *(v45 + 64) = v64;
  *(v45 + 80) = v50;
  result = v61;
  *v45 = v60;
  *(v45 + 16) = result;
  return result;
}

uint64_t static ScheduleOccurrenceViewModel.ViewStyle.sleepFocusFullScheduleStyle.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28034D7C0 != -1)
  {
    swift_once();
  }

  v2 = qword_280351458;
  v3 = qword_28034D650;
  swift_retain_n();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_28034EB78;
  swift_retain_n();

  v5 = sub_269D99800();
  if (qword_28034D658 != -1)
  {
    swift_once();
  }

  v6 = qword_28034EB80;
  v7 = qword_28034D7C8;
  swift_retain_n();

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_280351460;
  *a1 = v2;
  *(a1 + 8) = 2;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = v5;
  *(a1 + 40) = 1;
  *(a1 + 48) = v6;
  *(a1 + 56) = 1;
  *(a1 + 64) = v2;
  *(a1 + 72) = 2;
  *(a1 + 80) = v4;
  *(a1 + 88) = 0;
  *(a1 + 96) = v2;
  *(a1 + 104) = 2;
  *(a1 + 112) = v6;
  *(a1 + 120) = 0;
  *(a1 + 128) = v2;
  *(a1 + 136) = 2;
  *(a1 + 144) = v6;
  *(a1 + 152) = 0;
  *(a1 + 160) = v8;
  *(a1 + 168) = 2;
  *(a1 + 176) = v6;
  *(a1 + 184) = 0;
  *(a1 + 192) = 4;
}

uint64_t static ScheduleOccurrenceViewModel.ViewStyle.sleepFocusNextOccurrenceStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_269D99760();
  if (qword_28034D650 != -1)
  {
    swift_once();
  }

  v3 = qword_28034EB78;
  swift_retain_n();
  v4 = sub_269D99800();
  if (qword_28034D658 != -1)
  {
    swift_once();
  }

  v5 = qword_28034EB80;
  v6 = qword_28034D7C0;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_280351458;
  v8 = qword_28034D648;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28034EB70;
  v10 = qword_28034D7C8;
  swift_retain_n();

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_280351460;
  *a1 = v2;
  *(a1 + 8) = 2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 256;
  *(a1 + 32) = v4;
  *(a1 + 40) = 1;
  *(a1 + 48) = v5;
  *(a1 + 56) = 1;
  *(a1 + 64) = v7;
  *(a1 + 72) = 2;
  *(a1 + 80) = v9;
  *(a1 + 88) = 0;
  *(a1 + 96) = v7;
  *(a1 + 104) = 2;
  *(a1 + 112) = v9;
  *(a1 + 120) = 0;
  *(a1 + 128) = v7;
  *(a1 + 136) = 2;
  *(a1 + 144) = v9;
  *(a1 + 152) = 0;
  *(a1 + 160) = v11;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3;
  *(a1 + 184) = 0;
  *(a1 + 192) = 7;
}

__n128 ScheduleOccurrenceViewModel.init(resolvedOccurrence:relativeWeekdayFormatter:viewStyle:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a2;
  v7 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v74 = &v69 - v15;
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v7);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v69 - v20;
  v22 = a3[11];
  v85 = a3[10];
  v86 = v22;
  v87 = *(a3 + 24);
  v23 = a3[7];
  v81 = a3[6];
  v82 = v23;
  v24 = a3[9];
  v83 = a3[8];
  v84 = v24;
  v25 = a3[3];
  v77 = a3[2];
  v78 = v25;
  v26 = a3[5];
  v79 = a3[4];
  v80 = v26;
  v27 = *a3;
  v76 = a3[1];
  v75 = v27;
  v72 = v11;
  v71 = v14;
  v70 = v19;
  v69 = &v69 - v20;
  if (!a1)
  {
    v39 = sub_269D971F0();
    v40 = *(*(v39 - 8) + 56);
    v40(v21, 1, 1, v39);
    v40(v19, 1, 1, v39);
LABEL_5:
    v41 = sub_269D97580();
    (*(*(v41 - 8) + 56))(v74, 1, 1, v41);
    if (!a1)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v28 = [a1 occurrence];
  v29 = [v28 bedtimeComponents];

  sub_269D97120();
  v30 = sub_269D971F0();
  v31 = *(*(v30 - 8) + 56);
  v31(v21, 0, 1, v30);
  v32 = [a1 occurrence];
  v33 = [v32 wakeUpComponents];

  sub_269D97120();
  v31(v19, 0, 1, v30);
  v34 = [a1 windDownEvent];
  if (!v34)
  {
    goto LABEL_5;
  }

  v35 = v34;
  v36 = [v34 dueDate];

  v37 = v74;
  sub_269D97540();

  v38 = sub_269D97580();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
LABEL_6:
  v42 = [a1 bedtimeEvent];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 dueDate];

    sub_269D97540();
    v45 = sub_269D97580();
    (*(*(v45 - 8) + 56))(v14, 0, 1, v45);
    goto LABEL_9;
  }

LABEL_8:
  v45 = sub_269D97580();
  v46 = *(*(v45 - 8) + 56);
  v46(v14, 1, 1, v45);
  if (!a1)
  {
    v46(v11, 1, 1, v45);
    goto LABEL_17;
  }

LABEL_9:
  v47 = [a1 wakeUpEvent];
  v48 = [v47 dueDate];

  sub_269D97540();
  sub_269D97580();
  (*(*(v45 - 8) + 56))(v11, 0, 1, v45);
  v49 = [a1 wakeUpEvent];
  v50 = [v49 type];

  v51 = [a1 occurrence];
  if (!v51)
  {

LABEL_17:
    v52 = 0;
    goto LABEL_18;
  }

  if (v50 == 1)
  {

    v52 = 1;
  }

  else
  {
    v53 = v51;
    v54 = [v53 alarmConfiguration];
    v55 = [v54 isEnabled];

    if (v55)
    {
      v52 = 0;
    }

    else
    {
      v52 = 2;
    }
  }

LABEL_18:
  v56 = type metadata accessor for ScheduleOccurrenceViewModel();
  v57 = v56[11];
  sub_269D97580();
  v58 = *(*(v45 - 8) + 56);
  v58(a4 + v57, 1, 1, v45);
  v59 = v56[12];
  v58(a4 + v59, 1, 1, v45);
  v60 = v56[13];
  v58(a4 + v60, 1, 1, v45);
  sub_269C4E3A0(v69, a4);
  sub_269C4E3A0(v70, a4 + v56[5]);
  v61 = a4 + v56[6];
  *v61 = 0;
  *(v61 + 8) = 1;
  *(a4 + v56[7]) = 0;
  sub_269CB9F30(v74, a4 + v60);
  sub_269CB9F30(v71, a4 + v59);
  sub_269CB9F30(v72, a4 + v57);
  *(a4 + v56[14]) = v73;
  *(a4 + v56[8]) = v52;
  *(a4 + v56[9]) = 1;
  v62 = a4 + v56[10];
  v63 = v86;
  *(v62 + 160) = v85;
  *(v62 + 176) = v63;
  *(v62 + 192) = v87;
  v64 = v82;
  *(v62 + 96) = v81;
  *(v62 + 112) = v64;
  v65 = v84;
  *(v62 + 128) = v83;
  *(v62 + 144) = v65;
  v66 = v78;
  *(v62 + 32) = v77;
  *(v62 + 48) = v66;
  v67 = v80;
  *(v62 + 64) = v79;
  *(v62 + 80) = v67;
  result = v76;
  *v62 = v75;
  *(v62 + 16) = result;
  return result;
}

uint64_t ScheduleOccurrenceViewModel.AlarmState.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

uint64_t ScheduleOccurrenceViewModel.alarmState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ScheduleOccurrenceViewModel();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ScheduleOccurrenceViewModel.viewStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScheduleOccurrenceViewModel() + 40);
  v4 = *(v3 + 144);
  v5 = *(v3 + 176);
  v32 = *(v3 + 160);
  v33 = v5;
  v6 = *(v3 + 80);
  v7 = *(v3 + 112);
  v28 = *(v3 + 96);
  v8 = v28;
  v29 = v7;
  v9 = *(v3 + 112);
  v10 = *(v3 + 144);
  v30 = *(v3 + 128);
  v11 = v30;
  v31 = v10;
  v12 = *(v3 + 16);
  v13 = *(v3 + 48);
  v24 = *(v3 + 32);
  v14 = v24;
  v25 = v13;
  v15 = *(v3 + 48);
  v16 = *(v3 + 80);
  v26 = *(v3 + 64);
  v17 = v26;
  v27 = v16;
  v18 = *(v3 + 16);
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  v20 = *(v3 + 176);
  *(a1 + 160) = v32;
  *(a1 + 176) = v20;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  *(a1 + 128) = v11;
  *(a1 + 144) = v4;
  *(a1 + 32) = v14;
  *(a1 + 48) = v15;
  *(a1 + 64) = v17;
  *(a1 + 80) = v6;
  v34 = *(v3 + 192);
  *(a1 + 192) = *(v3 + 192);
  *a1 = v19;
  *(a1 + 16) = v12;
  return sub_269D40C58(v23, v22);
}

uint64_t sub_269D39A7C()
{
  v1 = MEMORY[0x277CC9578];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_269D97580();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v0 + v15[13], v7, &qword_280C0BB60, v1);
  v16 = v9[6];
  if (v16(v7, 1, v8) == 1)
  {
    v4 = v7;
  }

  else
  {
    v24 = v11;
    v23 = v9[4];
    v23(v14, v7, v8);
    sub_269D40D00(v0 + v15[12], v4, &qword_280C0BB60, MEMORY[0x277CC9578]);
    if (v16(v4, 1, v8) != 1)
    {
      v19 = v24;
      v23(v24, v4, v8);
      sub_269D40D80(&qword_2803509D8, MEMORY[0x277CC9578]);
      v20 = sub_269D9A560();
      v21 = v9[1];
      v21(v19, v8);
      v21(v14, v8);
      v18 = v20 ^ 1;
      return v18 & 1;
    }

    (v9[1])(v14, v8);
  }

  sub_269D40C90(v4, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v17 = v0 + v15[6];
  v18 = (*(v17 + 8) & 1) == 0 && *v17 > 0.0;
  return v18 & 1;
}

uint64_t sub_269D39DC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v104 = a1;
  v3 = sub_269D97780();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v89 = &v81 - v7;
  v105 = sub_269D971F0();
  v103 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v88 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D977A0();
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9);
  v99 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9578];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], v5);
  MEMORY[0x28223BE20](v12 - 8);
  v83 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v86 = &v81 - v15;
  MEMORY[0x28223BE20](v16);
  v101 = &v81 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v81 - v22;
  v24 = sub_269D97580();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v84 = &v81 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v81 - v28;
  MEMORY[0x28223BE20](v30);
  v94 = &v81 - v31;
  MEMORY[0x28223BE20](v32);
  v100 = &v81 - v33;
  v34 = type metadata accessor for ScheduleOccurrenceViewModel();
  v35 = v2;
  v97 = v34[13];
  sub_269D40D00(v2 + v97, v23, &qword_280C0BB60, v11);
  v37 = v25 + 48;
  v36 = *(v25 + 48);
  v38 = v36(v23, 1, v24);
  v102 = v35;
  v98 = v24;
  if (v38 == 1)
  {
    v20 = v23;
  }

  else
  {
    v90 = v29;
    v39 = v25 + 48;
    v82 = v25;
    v40 = v24;
    v41 = *(v25 + 32);
    v42 = v100;
    v41(v100, v23, v40);
    sub_269D40D00(v35 + v34[12], v20, &qword_280C0BB60, MEMORY[0x277CC9578]);
    v91 = v39;
    v87 = v36;
    if (v36(v20, 1, v40) != 1)
    {
      v52 = v94;
      v41(v94, v20, v40);
      sub_269D40D80(&qword_2803509D8, MEMORY[0x277CC9578]);
      v53 = sub_269D9A560();
      v25 = v82;
      v54 = *(v82 + 8);
      v54(v52, v40);
      v54(v42, v40);
      v46 = v105;
      v43 = v102;
      v48 = v103;
      v29 = v90;
      v37 = v91;
      v36 = v87;
      v44 = v101;
      if ((v53 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v47 = 1;
      return (*(v48 + 56))(v104, v47, 1, v46);
    }

    v25 = v82;
    (*(v82 + 8))(v42, v40);
    v29 = v90;
    v37 = v91;
    v36 = v87;
  }

  sub_269D40C90(v20, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v44 = v101;
  v43 = v102;
  v45 = v102 + v34[6];
  v46 = v105;
  if (*(v45 + 8))
  {
    v47 = 1;
    v48 = v103;
    return (*(v48 + 56))(v104, v47, 1, v46);
  }

  v48 = v103;
  if (*v45 <= 0.0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v49 = v99;
  sub_269D97770();
  sub_269D40D00(v43 + v97, v44, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v50 = v98;
  if (v36(v44, 1, v98) != 1)
  {
    (*(v25 + 32))(v29, v44, v50);
    v55 = v25;
    v56 = v29;
LABEL_14:
    sub_269D41554(0, &qword_2803502B0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v57 = v92;
    v58 = *(v92 + 72);
    v59 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_269D9EBF0;
    v61 = v60 + v59;
    v62 = *(v57 + 104);
    v63 = v93;
    v62(v61, *MEMORY[0x277CC9980], v93);
    v62(v61 + v58, *MEMORY[0x277CC99A0], v63);
    sub_269CF7250(v60);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v64 = v99;
    sub_269D976C0();

    (*(v55 + 8))(v56, v50);
    (*(v95 + 8))(v64, v96);
    v47 = 0;
    goto LABEL_15;
  }

  sub_269D40C90(v44, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v51 = v43 + v34[6];
  if (*(v51 + 8))
  {
    (*(v95 + 8))(v49, v96);
    v47 = 1;
LABEL_15:
    v46 = v105;
    return (*(v48 + 56))(v104, v47, 1, v46);
  }

  v90 = v29;
  v91 = v37;
  v66 = *v51;
  v67 = v43;
  v68 = v89;
  sub_269D40D00(v67, v89, &qword_28034E048, MEMORY[0x277CC8990]);
  v69 = v105;
  if ((*(v48 + 48))(v68, 1) == 1)
  {
    (*(v95 + 8))(v49, v96);
    sub_269D40C90(v68, &qword_28034E048, MEMORY[0x277CC8990]);
    v47 = 1;
    v46 = v69;
    return (*(v48 + 56))(v104, v47, 1, v46);
  }

  v70 = v88;
  v71 = v68;
  v72 = v69;
  (*(v48 + 32))(v88, v71, v69);
  v73 = v86;
  sub_269D97720();
  v50 = v98;
  v87 = v36;
  if (v36(v73, 1, v98) == 1)
  {
    (*(v48 + 8))(v70, v72);
    (*(v95 + 8))(v49, v96);
    sub_269D40C90(v73, &qword_280C0BB60, MEMORY[0x277CC9578]);
    v47 = 1;
    v46 = v72;
    return (*(v48 + 56))(v104, v47, 1, v46);
  }

  v74 = v25;
  v75 = *(v25 + 32);
  v75(v84, v73, v50);
  result = (*(v92 + 104))(v85, *MEMORY[0x277CC99A8], v93);
  if ((~*&v66 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v76 = v99;
  if (v66 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v66 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!__OFSUB__(0, v66))
  {
    v77 = v85;
    v78 = v84;
    sub_269D97740();
    v79 = v77;
    v80 = v83;
    (*(v92 + 8))(v79, v93);
    (*(v25 + 8))(v78, v50);
    (*(v48 + 8))(v88, v105);
    if (v87(v80, 1, v50) == 1)
    {
      (*(v95 + 8))(v76, v96);
      sub_269D40C90(v80, &qword_280C0BB60, MEMORY[0x277CC9578]);
      v47 = 1;
      goto LABEL_15;
    }

    v56 = v90;
    v75(v90, v80, v50);
    v55 = v74;
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t ScheduleOccurrenceViewModel.localizedWindDownString.getter()
{
  v0 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_269D97580();
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = sub_269D971F0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_269D977A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97770();
  sub_269D39DC8(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v17 = &qword_28034E048;
    v18 = MEMORY[0x277CC8990];
    v19 = v8;
LABEL_5:
    sub_269D40C90(v19, v17, v18);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_269D97720();
  if ((*(v26 + 48))(v3, 1, v4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v16, v13);
    v17 = &qword_280C0BB60;
    v18 = MEMORY[0x277CC9578];
    v19 = v3;
    goto LABEL_5;
  }

  (*(v26 + 32))();
  v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v21 setDateStyle_];
  [v21 setTimeStyle_];
  v22 = sub_269D974B0();
  v23 = [v21 stringFromDate_];

  v24 = sub_269D9A630();
  (*(v26 + 8))(v25, v4);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  return v24;
}

void *ScheduleOccurrenceViewModel.localizedWindDownDayString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_269D97580();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v0 + v9[13], v4, &qword_280C0BB60, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_269D40C90(v4, &qword_280C0BB60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *(v0 + v9[14]);
    if (v10)
    {
      v11 = sub_269D974B0();
      v12 = [v10 stringFromDate_];

      v10 = sub_269D9A630();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + v9[10] + 168);
    if (v15 == 2 || (v15 & 1) != 0 || !v14)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17[0] = v10;
      v17[1] = v14;
      sub_269C3EEE8();
      v10 = sub_269D9AE90();
      (*(v6 + 8))(v8, v5);
    }
  }

  return v10;
}

uint64_t ScheduleOccurrenceViewModel.localizedBedtimeString.getter()
{
  v0 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_269D97580();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC8990];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_269D971F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269D977A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97770();
  sub_269D40D00(v31, v9, &qword_28034E048, v6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v18 = &qword_28034E048;
    v19 = MEMORY[0x277CC8990];
    v20 = v9;
LABEL_5:
    sub_269D40C90(v20, v18, v19);
    return 0;
  }

  v31 = v14;
  (*(v11 + 32))(v13, v9, v10);
  sub_269D97720();
  v22 = v28;
  v21 = v29;
  if ((*(v28 + 48))(v3, 1, v29) == 1)
  {
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v31);
    v18 = &qword_280C0BB60;
    v19 = MEMORY[0x277CC9578];
    v20 = v3;
    goto LABEL_5;
  }

  (*(v22 + 32))(v30, v3, v21);
  v24 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v24 setDateStyle_];
  [v24 setTimeStyle_];
  v25 = sub_269D974B0();
  v26 = [v24 stringFromDate_];

  v27 = sub_269D9A630();
  (*(v22 + 8))(v30, v21);
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v31);
  return v27;
}

void *ScheduleOccurrenceViewModel.localizedBedtimeDayString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_269D97580();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v0 + v9[12], v4, &qword_280C0BB60, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_269D40C90(v4, &qword_280C0BB60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *(v0 + v9[14]);
    if (v10)
    {
      v11 = sub_269D974B0();
      v12 = [v10 stringFromDate_];

      v10 = sub_269D9A630();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + v9[10] + 168);
    if (v15 == 2 || (v15 & 1) != 0 || !v14)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17[0] = v10;
      v17[1] = v14;
      sub_269C3EEE8();
      v10 = sub_269D9AE90();
      (*(v6 + 8))(v8, v5);
    }
  }

  return v10;
}

uint64_t ScheduleOccurrenceViewModel.localizedWakeUpString.getter()
{
  v0 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_269D97580();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CC8990];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = sub_269D971F0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_269D977A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97770();
  v18 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v32 + *(v18 + 20), v9, &qword_28034E048, v6);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = &qword_28034E048;
    v20 = MEMORY[0x277CC8990];
    v21 = v9;
LABEL_5:
    sub_269D40C90(v21, v19, v20);
    return 0;
  }

  v32 = v14;
  (*(v11 + 32))(v13, v9, v10);
  sub_269D97720();
  v23 = v29;
  v22 = v30;
  if ((*(v29 + 48))(v3, 1, v30) == 1)
  {
    (*(v11 + 8))(v13, v10);
    (*(v15 + 8))(v17, v32);
    v19 = &qword_280C0BB60;
    v20 = MEMORY[0x277CC9578];
    v21 = v3;
    goto LABEL_5;
  }

  (*(v23 + 32))(v31, v3, v22);
  v25 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v25 setDateStyle_];
  [v25 setTimeStyle_];
  v26 = sub_269D974B0();
  v27 = [v25 stringFromDate_];

  v28 = sub_269D9A630();
  (*(v23 + 8))(v31, v22);
  (*(v11 + 8))(v13, v10);
  (*(v15 + 8))(v17, v32);
  return v28;
}

void *ScheduleOccurrenceViewModel.localizedWakeUpDayString.getter()
{
  v1 = MEMORY[0x277CC9578];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  v5 = sub_269D97580();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v0 + v9[11], v4, &qword_280C0BB60, v1);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_269D40C90(v4, &qword_280C0BB60, MEMORY[0x277CC9578]);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = *(v0 + v9[14]);
    if (v10)
    {
      v11 = sub_269D974B0();
      v12 = [v10 stringFromDate_];

      v10 = sub_269D9A630();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = *(v0 + v9[10] + 168);
    if (v15 == 2 || (v15 & 1) != 0 || !v14)
    {
      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v17[0] = v10;
      v17[1] = v14;
      sub_269C3EEE8();
      v10 = sub_269D9AE90();
      (*(v6 + 8))(v8, v5);
    }
  }

  return v10;
}

uint64_t sub_269D3BFB8(char a1)
{
  v3 = sub_269D977A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ScheduleOccurrenceViewModel();
  if ((*(v1 + *(v7 + 36)) & 1) == 0)
  {
    v9 = *(v1 + *(v7 + 28));
    sub_269D97770();
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v10 setFormattingContext_];
    v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v11 setFormattingContext_];
    if (v9 == *MEMORY[0x277D623A0])
    {
      goto LABEL_6;
    }

    v13 = sub_269D976E0();
    v14 = [v13 hksp:v9 localizedGroupingStringForWeekdays:?];
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      if (HKSPWeekdaysIsSingleDay())
      {
        v16 = HKSPDayForWeekdays();
        NSDateFormatter.standaloneWeekdaySymbol(for:)(v16);
        if (v17)
        {
          v18 = sub_269D9A5F0();

          v19 = [v18 hk_localizedFirstWordCapitalizedString];

          v12 = sub_269D9A630();
          goto LABEL_14;
        }

LABEL_6:
        v12 = 0;
LABEL_14:
        (*(v4 + 8))(v6, v3);
        return v12;
      }

      NSDateFormatter.localizedCommaSeparatedList(using:calendar:useShortSymbols:)(v9, v6, a1 & 1);
      v20 = sub_269D9A5F0();

      v15 = [v20 hk_localizedFirstWordCapitalizedString];
    }

    v12 = sub_269D9A630();

    goto LABEL_14;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  return sub_269D972C0();
}

uint64_t sub_269D3C2BC()
{
  type metadata accessor for ScheduleOccurrenceViewModel();
  v0 = HKSPIdentifierStringForWeekdays();
  v1 = sub_269D9A630();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = HKSPIdentifierStringForWeekdays();
    v6 = sub_269D9A630();
    v8 = v7;
  }

  else
  {
    v8 = 0xE400000000000000;
    v6 = 1954047310;
  }

  v12 = 3;
  sub_269D40DC8(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBE0;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v10 = static String.healthAccessibilityIdentifier(_:_:)(&v12, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

double sub_269D3C404@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScheduleOccurrenceViewModel() + 40);
  v4 = *(v3 + 56);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  if (v4)
  {
    v5 = -772;
  }

  else
  {
    v5 = 0x8000;
  }

  v26 = v5;
  v6 = sub_269D972C0();
  v24 = v7;
  v25 = v6;

  v8 = *(v3 + 32);
  v9 = *(v3 + 48);
  v23 = *(v3 + 57);

  v10 = ScheduleOccurrenceViewModel.localizedWindDownString.getter();
  sub_269D3C604(v10, v11, 1, v29);

  v12 = ScheduleOccurrenceViewModel.localizedWindDownDayString.getter();
  v14 = v13;
  v15 = *(v3 + 160);
  v16 = *(v3 + 176);
  v17 = *(v3 + 185);

  v27 = sub_269D3C2BC();
  v28 = v18;
  MEMORY[0x26D650930](0x776F44646E69572ELL, 0xE90000000000006ELL);
  v19 = *(v3 + 192);
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v23;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v20 = v29[1];
  *(a1 + 64) = v29[0];
  *(a1 + 80) = v20;
  result = *&v30;
  v22 = v31;
  *(a1 + 96) = v30;
  *(a1 + 112) = v22;
  *(a1 + 128) = -772;
  *(a1 + 136) = v12;
  *(a1 + 144) = v14;
  *(a1 + 152) = v15;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v27;
  *(a1 + 200) = v28;
  *(a1 + 208) = v19;
  return result;
}

uint64_t sub_269D3C604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v9 = v4 + *(type metadata accessor for ScheduleOccurrenceViewModel() + 40);
    v10 = 96;
    if (a3)
    {
      v10 = 64;
    }

    v11 = 112;
    if (a3)
    {
      v11 = 80;
    }

    v12 = 121;
    if (a3)
    {
      v12 = 89;
    }

    v13 = *(v9 + v10);
    v14 = *(v9 + v11);
    v15 = *(v9 + v12);

    *a4 = -772;
    *(a4 + 8) = a1;
    *(a4 + 16) = a2;
    *(a4 + 24) = v13;
    *(a4 + 32) = v14;
    *(a4 + 40) = v15;
    *(a4 + 48) = 0;
    *(a4 + 56) = 0;
  }

  else
  {
    if (qword_280C0AE70 != -1)
    {
      swift_once();
    }

    v16 = sub_269D972C0();
    v18 = v17;
    v19 = v4 + *(type metadata accessor for ScheduleOccurrenceViewModel() + 40);
    v20 = *(v19 + 128);
    v21 = *(v19 + 144);
    LOBYTE(v19) = *(v19 + 153);
    *a4 = -772;
    *(a4 + 8) = v16;
    *(a4 + 16) = v18;
    *(a4 + 24) = v20;
    *(a4 + 32) = v21;
    *(a4 + 40) = v19;
    *(a4 + 48) = a1;
    *(a4 + 56) = 0;
  }
}

double sub_269D3C788@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ScheduleOccurrenceViewModel() + 40);
  v4 = *(v3 + 56);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  if (v4)
  {
    v5 = -772;
  }

  else
  {
    v5 = 0;
  }

  v26 = v5;
  v6 = sub_269D972C0();
  v24 = v7;
  v25 = v6;

  v8 = *(v3 + 32);
  v9 = *(v3 + 48);
  v23 = *(v3 + 57);

  v10 = ScheduleOccurrenceViewModel.localizedBedtimeString.getter();
  sub_269D3C604(v10, v11, 1, v29);

  v12 = ScheduleOccurrenceViewModel.localizedBedtimeDayString.getter();
  v14 = v13;
  v15 = *(v3 + 160);
  v16 = *(v3 + 176);
  v17 = *(v3 + 185);

  v27 = sub_269D3C2BC();
  v28 = v18;
  MEMORY[0x26D650930](0x656D69746465422ELL, 0xE800000000000000);
  v19 = *(v3 + 192);
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v23;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v20 = v29[1];
  *(a1 + 64) = v29[0];
  *(a1 + 80) = v20;
  result = *&v30;
  v22 = v31;
  *(a1 + 96) = v30;
  *(a1 + 112) = v22;
  *(a1 + 128) = -772;
  *(a1 + 136) = v12;
  *(a1 + 144) = v14;
  *(a1 + 152) = v15;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v27;
  *(a1 + 200) = v28;
  *(a1 + 208) = v19;
  return result;
}

double sub_269D3C980@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScheduleOccurrenceViewModel();
  v4 = *(v3 + 32);
  if (*(v1 + v4))
  {
    if (*(v1 + v4) == 1)
    {
      if (*(v1 + *(v3 + 40) + 56))
      {
        v5 = -772;
      }

      else
      {
        v5 = -32767;
      }

      v29 = v5;
    }

    else
    {
      if (*(v1 + *(v3 + 40) + 56))
      {
        v7 = -772;
      }

      else
      {
        v7 = 4096;
      }

      v29 = v7;
    }
  }

  else
  {
    if (*(v1 + *(v3 + 40) + 56))
    {
      v6 = -772;
    }

    else
    {
      v6 = 4097;
    }

    v29 = v6;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v8 = sub_269D972C0();
  v27 = v9;
  v28 = v8;

  v10 = v1 + *(v3 + 40);
  v11 = *(v10 + 32);
  v12 = *(v10 + 48);
  v26 = *(v10 + 57);

  v13 = ScheduleOccurrenceViewModel.localizedWakeUpString.getter();
  sub_269D3C604(v13, v14, *(v1 + v4) < 2u, v32);

  v15 = ScheduleOccurrenceViewModel.localizedWakeUpDayString.getter();
  v17 = v16;
  v18 = *(v10 + 160);
  v19 = *(v10 + 176);
  v20 = *(v10 + 185);

  v30 = sub_269D3C2BC();
  v31 = v21;
  MEMORY[0x26D650930](0x7055656B61572ELL, 0xE700000000000000);
  v22 = *(v10 + 192);
  *a1 = v29;
  *(a1 + 8) = v28;
  *(a1 + 16) = v27;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v26;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v23 = v32[1];
  *(a1 + 64) = v32[0];
  *(a1 + 80) = v23;
  result = *&v33;
  v25 = v34;
  *(a1 + 96) = v33;
  *(a1 + 112) = v25;
  *(a1 + 128) = -772;
  *(a1 + 136) = v15;
  *(a1 + 144) = v17;
  *(a1 + 152) = v18;
  *(a1 + 160) = v19;
  *(a1 + 168) = v20;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v30;
  *(a1 + 200) = v31;
  *(a1 + 208) = v22;
  return result;
}

__n128 static ScheduleOccurrenceViewModel.emptyViewModel.getter@<Q0>(uint64_t a1@<X8>)
{
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  static ScheduleOccurrenceViewModel.ViewStyle.sleepOnboardingStyle.getter(v29);
  v11 = sub_269D971F0();
  v12 = *(*(v11 - 8) + 56);
  v12(a1, 1, 1, v11);
  v13 = type metadata accessor for ScheduleOccurrenceViewModel();
  v12(a1 + v13[5], 1, 1, v11);
  v14 = sub_269D97580();
  v15 = *(*(v14 - 8) + 56);
  v15(v10, 1, 1, v14);
  v15(v7, 1, 1, v14);
  v15(v4, 1, 1, v14);
  v16 = v13[11];
  v15((a1 + v16), 1, 1, v14);
  v17 = v13[12];
  v15((a1 + v17), 1, 1, v14);
  v18 = v13[13];
  v15((a1 + v18), 1, 1, v14);
  v19 = a1 + v13[6];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a1 + v13[7]) = 0;
  sub_269CB9F30(v10, a1 + v18);
  sub_269CB9F30(v7, a1 + v17);
  sub_269CB9F30(v28, a1 + v16);
  *(a1 + v13[14]) = 0;
  *(a1 + v13[8]) = 0;
  *(a1 + v13[9]) = 0;
  v20 = a1 + v13[10];
  v21 = v29[11];
  *(v20 + 160) = v29[10];
  *(v20 + 176) = v21;
  *(v20 + 192) = v30;
  v22 = v29[7];
  *(v20 + 96) = v29[6];
  *(v20 + 112) = v22;
  v23 = v29[9];
  *(v20 + 128) = v29[8];
  *(v20 + 144) = v23;
  v24 = v29[3];
  *(v20 + 32) = v29[2];
  *(v20 + 48) = v24;
  v25 = v29[5];
  *(v20 + 64) = v29[4];
  *(v20 + 80) = v25;
  result = v29[1];
  *v20 = v29[0];
  *(v20 + 16) = result;
  return result;
}

__n128 ScheduleOccurrenceViewModel.init(bedtimeComponents:wakeUpComponents:windDownTimeInterval:weekdays:relativeWindDownDate:relativeBedtimeDate:relativeWakeUpDate:relativeWeekdayFormatter:alarmState:isNextOccurrence:viewStyle:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, char a12, uint64_t a13)
{
  v34 = *a11;
  v15 = type metadata accessor for ScheduleOccurrenceViewModel();
  v16 = v15[11];
  v17 = sub_269D97580();
  v18 = *(*(v17 - 8) + 56);
  v18(a9 + v16, 1, 1, v17);
  v19 = v15[12];
  v18(a9 + v19, 1, 1, v17);
  v20 = v15[13];
  v18(a9 + v20, 1, 1, v17);
  sub_269C4E3A0(a1, a9);
  sub_269C4E3A0(a2, a9 + v15[5]);
  v21 = a9 + v15[6];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  *(a9 + v15[7]) = a5;
  sub_269CB9F30(a6, a9 + v20);
  sub_269CB9F30(a7, a9 + v19);
  sub_269CB9F30(a8, a9 + v16);
  *(a9 + v15[14]) = a10;
  *(a9 + v15[8]) = v34;
  *(a9 + v15[9]) = a12;
  v22 = a9 + v15[10];
  v23 = *(a13 + 176);
  *(v22 + 160) = *(a13 + 160);
  *(v22 + 176) = v23;
  *(v22 + 192) = *(a13 + 192);
  v24 = *(a13 + 112);
  *(v22 + 96) = *(a13 + 96);
  *(v22 + 112) = v24;
  v25 = *(a13 + 144);
  *(v22 + 128) = *(a13 + 128);
  *(v22 + 144) = v25;
  v26 = *(a13 + 48);
  *(v22 + 32) = *(a13 + 32);
  *(v22 + 48) = v26;
  v27 = *(a13 + 80);
  *(v22 + 64) = *(a13 + 64);
  *(v22 + 80) = v27;
  result = *(a13 + 16);
  *v22 = *a13;
  *(v22 + 16) = result;
  return result;
}

uint64_t ScheduleOccurrenceViewModel.id.getter()
{
  v1 = sub_269D97580();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v47 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x277CC9578];
  v4 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = MEMORY[0x277CC8990];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v4);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  sub_269D40DC8(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_269DA7DB0;
  sub_269D40D00(v0, v13, &qword_28034E048, v10);
  *(v14 + 32) = sub_269D9A660();
  *(v14 + 40) = v15;
  v16 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v0 + v16[5], v13, &qword_28034E048, v10);
  *(v14 + 48) = sub_269D9A660();
  *(v14 + 56) = v17;
  v18 = NSStringFromHKSPWeekdays();
  v19 = sub_269D9A630();
  v21 = v20;

  *(v14 + 64) = v19;
  *(v14 + 72) = v21;
  v52 = *(v0 + v16[8]);
  *(v14 + 80) = sub_269D9A660();
  *(v14 + 88) = v22;
  v23 = 1702195828;
  if (!*(v0 + v16[9]))
  {
    v23 = 0x65736C6166;
  }

  v24 = 0xE500000000000000;
  if (*(v0 + v16[9]))
  {
    v24 = 0xE400000000000000;
  }

  *(v14 + 96) = v23;
  *(v14 + 104) = v24;
  sub_269D40D00(v0 + v16[11], v9, &qword_280C0BB60, v3);
  *(v14 + 112) = sub_269D9A660();
  *(v14 + 120) = v25;
  sub_269D40D00(v0 + v16[12], v9, &qword_280C0BB60, v3);
  *(v14 + 128) = sub_269D9A660();
  *(v14 + 136) = v26;
  if (*(v0 + v16[10] + 192) & 2) != 0 && (sub_269D39A7C())
  {
    if (*(v0 + v16[6] + 8))
    {
      v28 = v49;
      v27 = v50;
    }

    else
    {
      v29 = sub_269D9A910();
      v32 = *(v14 + 16);
      v31 = *(v14 + 24);
      v28 = v49;
      v27 = v50;
      if (v32 >= v31 >> 1)
      {
        v44 = v29;
        v45 = v30;
        v46 = sub_269D61CB0((v31 > 1), v32 + 1, 1, v14);
        v30 = v45;
        v14 = v46;
        v29 = v44;
      }

      *(v14 + 16) = v32 + 1;
      v33 = v14 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
    }

    v34 = v48;
    sub_269D40D00(v0 + v16[13], v48, &qword_280C0BB60, MEMORY[0x277CC9578]);
    if ((*(v28 + 48))(v34, 1, v27) == 1)
    {
      sub_269D40C90(v34, &qword_280C0BB60, MEMORY[0x277CC9578]);
    }

    else
    {
      v35 = v47;
      (*(v28 + 32))(v47, v34, v27);
      sub_269D40D80(&qword_280C0B3E8, MEMORY[0x277CC9578]);
      v36 = sub_269D9B230();
      v38 = v37;
      v40 = *(v14 + 16);
      v39 = *(v14 + 24);
      if (v40 >= v39 >> 1)
      {
        v14 = sub_269D61CB0((v39 > 1), v40 + 1, 1, v14);
      }

      (*(v28 + 8))(v35, v27);
      *(v14 + 16) = v40 + 1;
      v41 = v14 + 16 * v40;
      *(v41 + 32) = v36;
      *(v41 + 40) = v38;
    }
  }

  v51 = v14;
  sub_269D40DC8(0, &qword_280C0B4F0, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_269C4BE38();
  v42 = sub_269D9A520();

  return v42;
}

uint64_t ScheduleOccurrenceViewModel.hash(into:)()
{
  v1 = v0;
  v2 = sub_269D97580();
  v39 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v36 = &v35 - v9;
  MEMORY[0x28223BE20](v8);
  v35 = &v35 - v10;
  v11 = sub_269D971F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277CC8990];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v4);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v40 = v1;
  sub_269D40D00(v1, &v35 - v20, &qword_28034E048, v15);
  v22 = *(v12 + 48);
  if (v22(v21, 1, v11) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    (*(v12 + 32))(v14, v21, v11);
    sub_269D9B370();
    sub_269D40D80(&qword_280351070, MEMORY[0x277CC8990]);
    sub_269D9A4E0();
    (*(v12 + 8))(v14, v11);
  }

  v23 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v40 + v23[5], v19, &qword_28034E048, MEMORY[0x277CC8990]);
  if (v22(v19, 1, v11) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    (*(v12 + 32))(v14, v19, v11);
    sub_269D9B370();
    sub_269D40D80(&qword_280351070, MEMORY[0x277CC8990]);
    sub_269D9A4E0();
    (*(v12 + 8))(v14, v11);
  }

  v24 = v38;
  v25 = v40;
  v26 = v40 + v23[6];
  if (*(v26 + 8) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    v27 = *v26;
    sub_269D9B370();
    if ((v27 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    MEMORY[0x26D6515D0](v28);
  }

  v29 = v39;
  v30 = v35;
  sub_269D40D00(v25 + v23[13], v35, &qword_280C0BB60, MEMORY[0x277CC9578]);
  v31 = *(v29 + 48);
  if (v31(v30, 1, v2) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    (*(v29 + 32))(v24, v30, v2);
    sub_269D9B370();
    sub_269D40D80(&qword_280351078, MEMORY[0x277CC9578]);
    sub_269D9A4E0();
    (*(v29 + 8))(v24, v2);
  }

  v32 = v36;
  sub_269D40D00(v25 + v23[12], v36, &qword_280C0BB60, MEMORY[0x277CC9578]);
  if (v31(v32, 1, v2) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    (*(v29 + 32))(v24, v32, v2);
    sub_269D9B370();
    sub_269D40D80(&qword_280351078, MEMORY[0x277CC9578]);
    sub_269D9A4E0();
    (*(v29 + 8))(v24, v2);
  }

  v33 = v37;
  sub_269D40D00(v25 + v23[11], v37, &qword_280C0BB60, MEMORY[0x277CC9578]);
  if (v31(v33, 1, v2) == 1)
  {
    sub_269D9B370();
  }

  else
  {
    (*(v29 + 32))(v24, v33, v2);
    sub_269D9B370();
    sub_269D40D80(&qword_280351078, MEMORY[0x277CC9578]);
    sub_269D9A4E0();
    (*(v29 + 8))(v24, v2);
  }

  MEMORY[0x26D6515B0](*(v25 + v23[7]));
  MEMORY[0x26D6515B0](*(v25 + v23[8]));
  return sub_269D9B370();
}

uint64_t ScheduleOccurrenceViewModel.hashValue.getter()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D3DEA8@<X0>(uint64_t *a1@<X8>)
{
  result = ScheduleOccurrenceViewModel.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t ScheduleOccurrenceViewModel.description.getter()
{
  v1 = v0;
  v59 = MEMORY[0x277CC9578];
  v2 = MEMORY[0x277D83D88];
  sub_269D41554(0, &qword_280C0BB60, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v55 - v4;
  v5 = MEMORY[0x277CC8990];
  sub_269D41554(0, &qword_28034E048, MEMORY[0x277CC8990], v2);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - v7;
  sub_269D41554(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_269DA8E00;
  sub_269D40D00(v1, v8, &qword_28034E048, v5);
  v10 = sub_269D9A660();
  v12 = v11;
  v13 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v14 = sub_269C7172C();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v15 = type metadata accessor for ScheduleOccurrenceViewModel();
  sub_269D40D00(v1 + v15[5], v8, &qword_28034E048, v5);
  v16 = sub_269D9A660();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = v16;
  *(v9 + 80) = v17;
  v18 = v1 + v15[6];
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  *&v73[0] = v19;
  BYTE8(v73[0]) = v18;
  sub_269D40DC8(0, &qword_280C0B4E0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
  v20 = sub_269D9A660();
  *(v9 + 136) = v13;
  *(v9 + 144) = v14;
  *(v9 + 112) = v20;
  *(v9 + 120) = v21;
  v22 = NSStringFromHKSPWeekdays();
  v23 = sub_269D9A630();
  v25 = v24;

  *(v9 + 176) = v13;
  *(v9 + 184) = v14;
  *(v9 + 152) = v23;
  *(v9 + 160) = v25;
  LOBYTE(v73[0]) = *(v1 + v15[8]);
  v26 = sub_269D9A660();
  *(v9 + 216) = v13;
  *(v9 + 224) = v14;
  *(v9 + 192) = v26;
  *(v9 + 200) = v27;
  v28 = 1702195828;
  if (!*(v1 + v15[9]))
  {
    v28 = 0x65736C6166;
  }

  v29 = 0xE500000000000000;
  if (*(v1 + v15[9]))
  {
    v29 = 0xE400000000000000;
  }

  v57 = "NCE_NEXT_OCCURRENCE_HEADER";
  *(v9 + 256) = v13;
  *(v9 + 264) = v14;
  v30 = v13;
  *(v9 + 232) = v28;
  *(v9 + 240) = v29;
  v31 = v56;
  v32 = v59;
  sub_269D40D00(v1 + v15[11], v56, &qword_280C0BB60, v59);
  v33 = sub_269D9A660();
  *(v9 + 296) = v30;
  *(v9 + 304) = v14;
  *(v9 + 272) = v33;
  *(v9 + 280) = v34;
  sub_269D40D00(v1 + v15[12], v31, &qword_280C0BB60, v32);
  v35 = sub_269D9A660();
  *(v9 + 336) = v30;
  *(v9 + 344) = v14;
  *(v9 + 312) = v35;
  *(v9 + 320) = v36;
  sub_269D40D00(v1 + v15[13], v31, &qword_280C0BB60, v32);
  v37 = sub_269D9A660();
  *(v9 + 376) = v30;
  *(v9 + 384) = v14;
  *(v9 + 352) = v37;
  *(v9 + 360) = v38;
  v39 = v1 + v15[10];
  v40 = *(v39 + 144);
  v41 = *(v39 + 176);
  v82 = *(v39 + 160);
  v83 = v41;
  v42 = *(v39 + 80);
  v43 = *(v39 + 112);
  v78 = *(v39 + 96);
  v79 = v43;
  v44 = *(v39 + 112);
  v45 = *(v39 + 144);
  v80 = *(v39 + 128);
  v81 = v45;
  v46 = *(v39 + 16);
  v47 = *(v39 + 48);
  v74 = *(v39 + 32);
  v75 = v47;
  v48 = *(v39 + 48);
  v49 = *(v39 + 80);
  v76 = *(v39 + 64);
  v77 = v49;
  v50 = *(v39 + 16);
  v73[0] = *v39;
  v73[1] = v50;
  v51 = *(v39 + 176);
  v70 = v82;
  v71 = v51;
  v66 = v78;
  v67 = v44;
  v68 = v80;
  v69 = v40;
  v62 = v74;
  v63 = v48;
  v64 = v76;
  v65 = v42;
  v84 = *(v39 + 192);
  v72 = *(v39 + 192);
  *&v60[200] = v73[0];
  v61 = v46;
  sub_269D40C58(v73, v60);
  v52 = sub_269D9A660();
  *(v9 + 416) = v30;
  *(v9 + 424) = v14;
  *(v9 + 392) = v52;
  *(v9 + 400) = v53;
  return sub_269D9A640();
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.TextStyle.hash(into:)()
{
  v1 = *(v0 + 8);
  sub_269D996E0();
  if (v1 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  return sub_269D9B370();
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.TextStyle.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_269D9B350();
  sub_269D996E0();
  if (v1 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  return sub_269D9B390();
}

uint64_t sub_269D3E49C()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.ViewStyle.TextStyle.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D3E50C()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.ViewStyle.TextStyle.hash(into:)();
  return sub_269D9B390();
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.headerTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.titleTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.timeTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 89);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.disabledTimeTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 121);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.unsetTimeTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  v5 = *(v1 + 153);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.dayTextStyle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 185);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
}

uint64_t static ScheduleOccurrenceViewModel.ViewStyle.sleepRoomRepeatOccurrenceStyle.getter@<X0>(uint64_t a1@<X8>)
{
  sub_269D99660();
  sub_269D99720();
  v2 = sub_269D99780();

  if (qword_28034D650 != -1)
  {
    swift_once();
  }

  v3 = qword_28034EB78;
  swift_retain_n();
  sub_269D99800();
  sub_269D99720();
  v4 = sub_269D99780();

  if (qword_28034D658 != -1)
  {
    swift_once();
  }

  v5 = qword_28034EB80;
  v6 = qword_28034D790;
  swift_retain_n();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_269D996D0();
  v8 = sub_269D996D0();

  sub_269D99770();
  sub_269D99720();
  v9 = sub_269D99780();

  sub_269D99800();
  sub_269D99720();
  v10 = sub_269D99780();

  *a1 = v2;
  *(a1 + 8) = 2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 2;
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = v7;
  *(a1 + 72) = 2;
  *(a1 + 80) = v3;
  *(a1 + 88) = 0;
  *(a1 + 96) = v8;
  *(a1 + 104) = 2;
  *(a1 + 112) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = v9;
  *(a1 + 136) = 2;
  *(a1 + 144) = v5;
  *(a1 + 152) = 0;
  *(a1 + 160) = v10;
  *(a1 + 168) = 2;
  *(a1 + 176) = v5;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

uint64_t sub_269D3E9E0@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_269D99660();
  v15 = sub_269D996D0();

  if (qword_280C0AFD0 != -1)
  {
    swift_once();
  }

  v5 = qword_280C0AFD8;

  sub_269D99800();
  a1();
  v6 = sub_269D99780();

  if (qword_28034D658 != -1)
  {
    swift_once();
  }

  v7 = qword_28034EB80;
  v8 = qword_28034D790;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = sub_269D996D0();
  if (qword_28034D650 != -1)
  {
    swift_once();
  }

  v10 = qword_28034EB78;

  v11 = sub_269D996D0();

  sub_269D99770();
  sub_269D99720();
  v12 = sub_269D99780();

  sub_269D99800();
  sub_269D99720();
  v13 = sub_269D99780();

  *a3 = v15;
  *(a3 + 8) = 2;
  *(a3 + 16) = v5;
  *(a3 + 24) = 0;
  *(a3 + 32) = v6;
  *(a3 + 40) = 2;
  *(a3 + 48) = v7;
  *(a3 + 56) = 0;
  *(a3 + 64) = v9;
  *(a3 + 72) = 2;
  *(a3 + 80) = v10;
  *(a3 + 88) = 0;
  *(a3 + 96) = v11;
  *(a3 + 104) = 2;
  *(a3 + 112) = v7;
  *(a3 + 120) = 0;
  *(a3 + 128) = v12;
  *(a3 + 136) = 2;
  *(a3 + 144) = v7;
  *(a3 + 152) = 0;
  *(a3 + 160) = v13;
  *(a3 + 168) = 2;
  *(a3 + 176) = v7;
  *(a3 + 184) = 0;
  *(a3 + 192) = a2;
  return result;
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v6 = *(v0 + 136);
  v7 = *(v0 + 168);
  v8 = *(v0 + 192);
  sub_269D996E0();
  if (v1 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  sub_269D996E0();
  if (v2 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  sub_269D996E0();
  if (v3 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  sub_269D996E0();
  if (v4 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  sub_269D996E0();
  if (v6 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  sub_269D996E0();
  if (v7 != 2)
  {
    sub_269D9B370();
  }

  sub_269D9B370();
  sub_269D99CF0();
  sub_269D9B370();
  sub_269D9B370();
  return MEMORY[0x26D6515B0](v8);
}

uint64_t ScheduleOccurrenceViewModel.ViewStyle.hashValue.getter()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.ViewStyle.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D3EF38()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.ViewStyle.hash(into:)();
  return sub_269D9B390();
}

uint64_t sub_269D3EF7C()
{
  sub_269D9B350();
  ScheduleOccurrenceViewModel.ViewStyle.hash(into:)();
  return sub_269D9B390();
}

uint64_t type metadata accessor for ScheduleOccurrenceViewModel()
{
  result = qword_2803510C0;
  if (!qword_2803510C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[8];
  v3 = a1[24];
  v4 = a1[25];
  v5 = a2[8];
  v6 = a2[24];
  v7 = a2[25];
  if ((sub_269D996B0() & 1) == 0)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v5 == 2 || ((v5 ^ v2) & 1) != 0)
    {
      return result;
    }
  }

  v9 = sub_269D99CD0();
  if ((v3 ^ v6))
  {
    v10 = 0;
  }

  else
  {
    v10 = v4 ^ v7 ^ 1;
  }

  if (v9)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v7 = a1[4];
  v8 = a1[6];
  v65 = *(a1 + 56);
  v66 = *(a1 + 40);
  v64 = *(a1 + 57);
  v62 = a1[8];
  v63 = a1[10];
  v60 = *(a1 + 88);
  v61 = *(a1 + 72);
  v59 = *(a1 + 89);
  v52 = a1[12];
  v53 = a1[14];
  v50 = *(a1 + 120);
  v51 = *(a1 + 104);
  v49 = *(a1 + 121);
  v42 = a1[16];
  v43 = a1[18];
  v40 = *(a1 + 152);
  v41 = *(a1 + 136);
  v39 = *(a1 + 153);
  v31 = a1[20];
  v32 = a1[22];
  v29 = *(a1 + 184);
  v30 = *(a1 + 168);
  v73 = *(a1 + 8);
  v27 = *(a1 + 185);
  v33 = a1[24];
  v75 = v5;
  v9 = *a2;
  v76 = v6;
  v68 = *(a2 + 8);
  v70 = *(a2 + 24);
  v71 = *(a2 + 25);
  v10 = a2[2];
  v11 = a2[4];
  v12 = *(a2 + 40);
  v13 = a2[6];
  v14 = *(a2 + 56);
  v15 = *(a2 + 57);
  v56 = *(a2 + 72);
  v57 = a2[8];
  v58 = a2[10];
  v54 = *(a2 + 89);
  v55 = *(a2 + 88);
  v47 = a2[12];
  v48 = a2[14];
  v45 = *(a2 + 120);
  v46 = *(a2 + 104);
  v44 = *(a2 + 121);
  v37 = a2[16];
  v38 = a2[18];
  v35 = *(a2 + 152);
  v36 = *(a2 + 136);
  v34 = *(a2 + 153);
  v25 = a2[20];
  v26 = a2[22];
  v23 = *(a2 + 184);
  v24 = *(a2 + 168);
  v22 = *(a2 + 185);
  v28 = a2[24];
  v72 = v3;
  v74 = v4;
  v67 = v9;
  v69 = v10;

  LOBYTE(v10) = _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(&v72, &v67);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v72 = v7;
  v73 = v66;
  v74 = v8;
  v75 = v65;
  v76 = v64;
  v67 = v11;
  v68 = v12;
  v69 = v13;
  v70 = v14;
  v71 = v15;

  v16 = _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(&v72, &v67);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v72 = v62;
  v73 = v61;
  v74 = v63;
  v75 = v60;
  v76 = v59;
  v67 = v57;
  v68 = v56;
  v69 = v58;
  v70 = v55;
  v71 = v54;

  v17 = _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(&v72, &v67);

  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v72 = v52;
  v73 = v51;
  v74 = v53;
  v75 = v50;
  v76 = v49;
  v67 = v47;
  v68 = v46;
  v69 = v48;
  v70 = v45;
  v71 = v44;

  v18 = _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(&v72, &v67);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v72 = v42;
  v73 = v41;
  v74 = v43;
  v75 = v40;
  v76 = v39;
  v67 = v37;
  v68 = v36;
  v69 = v38;
  v70 = v35;
  v71 = v34;

  v19 = _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(&v72, &v67);

  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v72 = v31;
  v73 = v30;
  v74 = v32;
  v75 = v29;
  v76 = v27;
  v67 = v25;
  v68 = v24;
  v69 = v26;
  v70 = v23;
  v71 = v22;

  v20 = _s13SleepHealthUI27ScheduleOccurrenceViewModelV0F5StyleV04TextH0V2eeoiySbAG_AGtFZ_0(&v72, &v67);

  return v20 & (v33 == v28);
}