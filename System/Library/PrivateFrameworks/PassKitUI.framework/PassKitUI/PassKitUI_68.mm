id sub_1BD761ABC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v25 - v8;
  v10 = sub_1BE04AA64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v26 = v0;
  sub_1BD75FBB0();
  sub_1BE04B594();

  v15 = OBJC_IVAR___PKPassActionWidgetViewModel__bankConnectAccount;
  swift_beginAccess();
  v16 = *(v1 + v15);
  if (!v16 || (v17 = [v16 actions]) == 0)
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_8:
    sub_1BD0DE53C(v9, &unk_1EBD3CF70);
    return 0;
  }

  v18 = v17;
  v19 = [v17 digitalServicingURL];

  if (v19)
  {
    sub_1BE04A9F4();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v11 + 56))(v5, v20, 1, v10);
  sub_1BD226B4C(v5, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_8;
  }

  (*(v11 + 32))(v14, v9, v10);
  v22 = [objc_opt_self() sharedApplication];
  v23 = sub_1BE04A9C4();
  v24 = [v22 canOpenURL_];

  (*(v11 + 8))(v14, v10);
  return v24;
}

uint64_t sub_1BD761E30()
{
  if (*(v0 + OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle) >= 3uLL)
  {
    result = sub_1BE053994();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD761FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BD76115C();
  v5 = sub_1BE0501E4();
  if (*(a1 + OBJC_IVAR___PKPassActionWidgetViewModel_viewStyle) >= 3uLL)
  {
    result = sub_1BE053994();
    __break(1u);
  }

  else
  {
    v6 = v5;
    sub_1BE04E1F4();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = sub_1BE0501F4();
    result = sub_1BE04E1F4();
    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v12;
    *(a2 + 40) = v14;
    *(a2 + 48) = 0;
    *(a2 + 56) = v15;
    *(a2 + 64) = v17;
    *(a2 + 72) = v18;
    *(a2 + 80) = v19;
    *(a2 + 88) = v20;
    *(a2 + 96) = 0;
  }

  return result;
}

id PaymentPassActionWidgetViewProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaymentPassActionWidgetViewProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentPassActionWidgetViewProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1BD7621F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id _s9PassKitUI07PaymentA24ActionWidgetViewProviderC04passefG10Controller9viewModelSo06UIViewJ0CAA0aefgL0C_tFZ_0(void *a1)
{
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52320));
  v3 = a1;
  v4 = sub_1BE04F894();
  result = [v4 view];
  if (result)
  {
    v6 = result;
    v7 = [objc_opt_self() clearColor];
    [v6 setBackgroundColor_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD762320()
{
  result = sub_1BE04B5D4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BD7627AC(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD762910(uint64_t (*a1)(unint64_t, unint64_t, unint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE04C5A4();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v52 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v51 = v49 - v11;
  v12 = sub_1BE04C5E4();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v50 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1BE04C5B4();
  v55 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD523E8);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v58 = v49 - v25;
  v26 = sub_1BE04B944();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04BB94();
  v31 = sub_1BE04B8E4();
  (*(v27 + 8))(v30, v26);
  v32 = [v31 paymentSetupSupportedInRegion];

  if (v32 == 2)
  {
    v33 = "consent required";
    v34 = 0xD000000000000017;
LABEL_11:
    v36 = v33 | 0x8000000000000000;
    v37 = 1;
    return a1(v34, v36, 0, v37);
  }

  if (*(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_requiresConsentPresentation) == 1)
  {
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
    sub_1BE04E134();

    if (v59 == 2 || (v59 & 1) == 0)
    {
      v36 = 0x80000001BE138290;
      v34 = 0xD000000000000010;
LABEL_13:
      v37 = 0;
      return a1(v34, v36, 0, v37);
    }
  }

  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
  sub_1BE04E134();

  if (v60 != 2)
  {
    v33 = "ibility not determined";
    v34 = 0xD000000000000026;
    goto LABEL_11;
  }

  if (*(v3 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource) != 2)
  {
    v34 = 0;
    v36 = 0;
    goto LABEL_13;
  }

  v49[1] = a2;
  sub_1BE04C554();
  v35 = v58;
  sub_1BE04C5D4();
  v39 = v56;
  (*(v55 + 8))(v18, v15);
  v40 = v57;
  (*(v39 + 56))(v35, 0, 1, v57);
  sub_1BD7634BC(v35, v22);
  v41 = (*(v39 + 48))(v22, 1, v40);
  if (v41 == 1)
  {
    sub_1BD0DE53C(v22, &qword_1EBD523E8);
    a1(0xD000000000000020, 0x80000001BE1381F0, 0, 1);
    return sub_1BD0DE53C(v35, &qword_1EBD523E8);
  }

  else
  {
    v42 = v50;
    (*(v39 + 32))(v50, v22, v40);
    v43 = v51;
    sub_1BE04C5C4();
    v45 = v52;
    v44 = v53;
    v46 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x1E69B7C90], v54);
    v47 = sub_1BE04C594();
    v48 = *(v44 + 8);
    v48(v45, v46);
    v48(v43, v46);
    a1(v47 & 1, 0xD000000000000036, 0x80000001BE138220, 2);
    (*(v39 + 8))(v42, v40);
    return sub_1BD0DE53C(v58, &qword_1EBD523E8);
  }
}

id sub_1BD762F88()
{
  v1 = v0;
  v2 = sub_1BE04BAC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1BE04BC34();
  v8 = sub_1BE04B9A4();
  (*(v3 + 8))(v6, v2);
  v9 = *(v1 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_referralSource);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = sub_1BD7634A8;
  v11[4] = v7;
  v12 = objc_allocWithZone(PKVirtualCardPrivacyExplanationViewController);
  aBlock[4] = sub_1BD7634B0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD976224;
  aBlock[3] = &block_descriptor_172;
  v13 = _Block_copy(aBlock);
  sub_1BE048964();
  sub_1BE048964();

  v14 = [v12 initWithContext:v8 referralSource:v9 resultCallback:v13];
  _Block_release(v13);

  v15 = v14;
  v16 = [v15 navigationItem];
  [v16 setLeftBarButtonItem_];

  return v15;
}

void sub_1BD763200(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    LOBYTE(v12[0]) = a1 & 1;
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39250);
    sub_1BE04E144();

    if ((a1 & 1) != 0 || v3[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_terminateIfConsentNotProvided] != 1)
    {
      v8 = &v3[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 1);
        ObjectType = swift_getObjectType();
        v11 = v3;
        sub_1BD8659A4(v11, &off_1F3BBA078, ObjectType, v9);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v4 = &v3[OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 1);
        v6 = swift_getObjectType();
        memset(v12, 0, sizeof(v12));
        v13 = 2;
        v7 = v3;
        sub_1BD865A00(v7, &off_1F3BBA078, v12, v6, v5);
        swift_unknownObjectRelease();

        sub_1BD0DE53C(v12, &unk_1EBD3F510);
        return;
      }
    }
  }
}

void sub_1BD763398(char a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a3(a1 & 1);
  }
}

uint64_t sub_1BD763408()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD763444(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI27PaymentSetupConsentFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BD7634BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD523E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD76352C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD7635A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD763678()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD7636F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t (*sub_1BD763778())(void)
{
  v1 = v0;
  v2 = type metadata accessor for AccountDebugCKReward(0);
  v97 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v106 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccountDebugCKTransaction(0);
  v99 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v108 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for AccountDebugSavingsStatement(0);
  v103 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v8);
  v104 = (&v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = type metadata accessor for AccountDebugTransactionGroup(0);
  v10 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v11);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  v107 = sub_1BD1AACF8(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v15 = v113;
  v16 = *(v113 + 16);
  v100 = v0;
  if (v16)
  {
    *&v113 = v14;
    sub_1BD531C34(0, v16, 0);
    v17 = v113;
    v18 = *(v10 + 80);
    *&v102 = v15;
    v19 = v15 + ((v18 + 32) & ~v18);
    v20 = *(v10 + 72);
    do
    {
      sub_1BD77BFE0(v19, v13, type metadata accessor for AccountDebugTransactionGroup);
      v21 = sub_1BD764578();
      sub_1BD77C048(v13, type metadata accessor for AccountDebugTransactionGroup);
      *&v113 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1BD531C34((v22 > 1), v23 + 1, 1);
        v17 = v113;
      }

      *(v17 + 16) = v23 + 1;
      *(v17 + 8 * v23 + 32) = v21;
      v19 += v20;
      --v16;
    }

    while (v16);

    v1 = v100;
    v14 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v17 = MEMORY[0x1E69E7CC0];
  }

  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A48);
  v114 = v101;
  *&v113 = v17;
  sub_1BD1B6140(&v113, &v111);
  v24 = v107;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v110[0] = v24;
  sub_1BD1DAD20(&v111, 0xD000000000000013, 0x80000001BE138420, isUniquelyReferenced_nonNull_native);
  v26 = *&v110[0];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v27 = sub_1BE053314();
  v112 = MEMORY[0x1E69E6158];
  *&v111 = v27;
  *(&v111 + 1) = v28;
  sub_1BD1B6140(&v111, v110);
  v29 = swift_isUniquelyReferenced_nonNull_native();
  v109 = v26;
  sub_1BD1DAD20(v110, 0xD000000000000017, 0x80000001BE138440, v29);
  v30 = v109;
  v115 = v109;
  result = [*(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (result)
  {
    v32 = result;
    v33 = [result accountSummary];

    v34 = [v33 currentBalance];
    if (v34)
    {
      v112 = sub_1BD0E5E8C(0, &qword_1EBD38840);
      *&v111 = v34;
      sub_1BD1B6140(&v111, v110);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v109 = v30;
      sub_1BD1DAD20(v110, 0x65636E616C6162, 0xE700000000000000, v35);
      v115 = v109;
    }

    else
    {
      sub_1BD6B1E10(0x65636E616C6162, 0xE700000000000000, &v111);
      sub_1BD0DE53C(&v111, &qword_1EBD3EC90);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v36 = v111;
    v37 = *(v111 + 16);
    if (v37)
    {
      *&v111 = v14;
      sub_1BD531C34(0, v37, 0);
      v38 = *(v103 + 80);
      v96 = v36;
      v39 = v36 + ((v38 + 32) & ~v38);
      v40 = v111;
      v103 = *(v103 + 72);
      v102 = xmmword_1BE0B98D0;
      do
      {
        v107 = type metadata accessor for AccountDebugSavingsStatement;
        v41 = v104;
        sub_1BD77BFE0(v39, v104, type metadata accessor for AccountDebugSavingsStatement);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
        inited = swift_initStackObject();
        *(inited + 16) = v102;
        *(inited + 32) = 0x6E656D6574617473;
        *(inited + 40) = 0xE900000000000074;
        v43 = [*v41 debugDescription];
        v44 = sub_1BE052434();
        v46 = v45;

        *(inited + 48) = v44;
        *(inited + 56) = v46;
        v47 = MEMORY[0x1E69E6158];
        *(inited + 72) = MEMORY[0x1E69E6158];
        strcpy((inited + 80), "transactions");
        *(inited + 93) = 0;
        *(inited + 94) = -5120;
        v48 = v105;
        v49 = sub_1BD764578();
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
        *(inited + 96) = v49;
        *(inited + 120) = v50;
        *(inited + 128) = 0x7365686374616DLL;
        *(inited + 136) = 0xE700000000000000;
        v51 = 28494;
        if (*(v41 + *(v48 + 24)))
        {
          v51 = 7562585;
        }

        v52 = 0xE200000000000000;
        if (*(v41 + *(v48 + 24)))
        {
          v52 = 0xE300000000000000;
        }

        *(inited + 168) = v47;
        *(inited + 144) = v51;
        *(inited + 152) = v52;
        v53 = sub_1BD1AACF8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
        swift_arrayDestroy();
        sub_1BD77C048(v41, v107);
        *&v111 = v40;
        v55 = *(v40 + 16);
        v54 = *(v40 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1BD531C34((v54 > 1), v55 + 1, 1);
          v40 = v111;
        }

        *(v40 + 16) = v55 + 1;
        *(v40 + 8 * v55 + 32) = v53;
        v39 += v103;
        --v37;
      }

      while (v37);

      v14 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v40 = MEMORY[0x1E69E7CC0];
    }

    v112 = v101;
    *&v111 = v40;
    sub_1BD1B6140(&v111, v110);
    v56 = v115;
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v56;
    sub_1BD1DAD20(v110, 0x6E656D6574617473, 0xEA00000000007374, v57);
    v58 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v59 = v111;
    v60 = *(v111 + 16);
    if (v60)
    {
      v107 = v58;
      *&v111 = v14;
      sub_1BD531C34(0, v60, 0);
      v61 = v111;
      v62 = v59 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v63 = *(v99 + 72);
      do
      {
        v64 = v108;
        sub_1BD77BFE0(v62, v108, type metadata accessor for AccountDebugCKTransaction);
        v65 = sub_1BD765368();
        sub_1BD77C048(v64, type metadata accessor for AccountDebugCKTransaction);
        *&v111 = v61;
        v67 = *(v61 + 16);
        v66 = *(v61 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_1BD531C34((v66 > 1), v67 + 1, 1);
          v61 = v111;
        }

        *(v61 + 16) = v67 + 1;
        *(v61 + 8 * v67 + 32) = v65;
        v62 += v63;
        --v60;
      }

      while (v60);

      v14 = MEMORY[0x1E69E7CC0];
      v58 = v107;
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
    }

    v112 = v101;
    *&v111 = v61;
    sub_1BD1B6140(&v111, v110);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v58;
    sub_1BD1DAD20(v110, 0x61736E6172546B63, 0xEE00736E6F697463, v68);
    v69 = v109;
    v115 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v70 = v111;
    v71 = *(v111 + 16);
    if (v71)
    {
      v107 = v69;
      *&v111 = v14;
      sub_1BD531C34(0, v71, 0);
      v72 = v111;
      v73 = v70 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
      v74 = *(v99 + 72);
      do
      {
        v75 = v108;
        sub_1BD77BFE0(v73, v108, type metadata accessor for AccountDebugCKTransaction);
        v76 = sub_1BD765368();
        sub_1BD77C048(v75, type metadata accessor for AccountDebugCKTransaction);
        *&v111 = v72;
        v78 = *(v72 + 16);
        v77 = *(v72 + 24);
        if (v78 >= v77 >> 1)
        {
          sub_1BD531C34((v77 > 1), v78 + 1, 1);
          v72 = v111;
        }

        *(v72 + 16) = v78 + 1;
        *(v72 + 8 * v78 + 32) = v76;
        v73 += v74;
        --v71;
      }

      while (v71);

      v14 = MEMORY[0x1E69E7CC0];
      v69 = v107;
    }

    else
    {

      v72 = MEMORY[0x1E69E7CC0];
    }

    v112 = v101;
    *&v111 = v72;
    sub_1BD1B6140(&v111, v110);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v69;
    sub_1BD1DAD20(v110, 0xD000000000000012, 0x80000001BE138460, v79);
    v80 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v81 = v111;
    v82 = *(v111 + 16);
    if (v82)
    {
      v108 = v80;
      *&v111 = v14;
      sub_1BD531C34(0, v82, 0);
      v83 = v111;
      v84 = v81 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
      v85 = *(v97 + 72);
      do
      {
        v86 = v106;
        sub_1BD77BFE0(v84, v106, type metadata accessor for AccountDebugCKReward);
        v87 = sub_1BD765898();
        sub_1BD77C048(v86, type metadata accessor for AccountDebugCKReward);
        *&v111 = v83;
        v89 = *(v83 + 16);
        v88 = *(v83 + 24);
        if (v89 >= v88 >> 1)
        {
          sub_1BD531C34((v88 > 1), v89 + 1, 1);
          v83 = v111;
        }

        *(v83 + 16) = v89 + 1;
        *(v83 + 8 * v89 + 32) = v87;
        v84 += v85;
        --v82;
      }

      while (v82);

      v80 = v108;
    }

    else
    {

      v83 = MEMORY[0x1E69E7CC0];
    }

    v112 = v101;
    *&v111 = v83;
    sub_1BD1B6140(&v111, v110);
    v90 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v80;
    sub_1BD1DAD20(v110, 0x6472617765526B63, 0xE900000000000073, v90);
    v115 = v109;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v91 = MEMORY[0x1BFB3F810](v111, v98);
    v93 = v92;

    v112 = MEMORY[0x1E69E6158];
    *&v111 = v91;
    *(&v111 + 1) = v93;
    sub_1BD1B6140(&v111, v110);
    v94 = v115;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v109 = v94;
    sub_1BD1DAD20(v110, 0xD000000000000018, 0x80000001BE138480, v95);
    return v109;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD764578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1BE0F5460;
  *(v2 + 32) = 1702125924;
  *(v2 + 40) = 0xE400000000000000;
  v3 = sub_1BE04AD94();
  v4 = MEMORY[0x1E69E6158];
  *(v2 + 48) = v3;
  *(v2 + 56) = v5;
  *(v2 + 72) = v4;
  *(v2 + 80) = 0x746E756F63;
  *(v2 + 88) = 0xE500000000000000;
  v6 = type metadata accessor for AccountDebugTransactionGroup(0);
  v108 = *(v0 + *(v6 + 20));
  sub_1BD77C0A8();
  *(v2 + 96) = sub_1BE053614();
  *(v2 + 104) = v7;
  *(v2 + 120) = v4;
  *(v2 + 128) = 0x736143796C696164;
  *(v2 + 136) = 0xE900000000000068;
  *(v2 + 144) = sub_1BE053314();
  *(v2 + 152) = v8;
  *(v2 + 168) = v4;
  *(v2 + 176) = 0x7473657265746E69;
  *(v2 + 184) = 0xE800000000000000;
  *(v2 + 192) = sub_1BE053314();
  *(v2 + 200) = v9;
  *(v2 + 216) = v4;
  *(v2 + 224) = 0x6E4979656E6F6DLL;
  *(v2 + 232) = 0xE700000000000000;
  *(v2 + 240) = sub_1BE053314();
  *(v2 + 248) = v10;
  *(v2 + 264) = v4;
  *(v2 + 272) = 0x74754F79656E6F6DLL;
  *(v2 + 280) = 0xE800000000000000;
  *(v2 + 288) = sub_1BE053314();
  *(v2 + 296) = v11;
  *(v2 + 312) = v4;
  *(v2 + 320) = 0xD00000000000001ALL;
  v103 = v6;
  v104 = v2;
  *(v2 + 328) = 0x80000001BE138560;
  v12 = *(v0 + *(v6 + 40));
  v13 = *(v12 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v106[0] = MEMORY[0x1E69E7CC0];
    sub_1BD531B48(0, v13, 0);
    v14 = v106[0];
    v15 = (v12 + 32);
    do
    {
      v16 = *v15;
      v17 = [v16 identifier];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1BE052434();
        v21 = v20;
      }

      else
      {

        v19 = 0;
        v21 = 0;
      }

      v106[0] = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1BD531B48((v22 > 1), v23 + 1, 1);
        v14 = v106[0];
      }

      *(v14 + 16) = v23 + 1;
      v24 = v14 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      ++v15;
      --v13;
    }

    while (v13);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525A8);
  *(v2 + 336) = v14;
  v101 = v25;
  *(v2 + 360) = v25;
  *(v2 + 368) = 0xD00000000000001BLL;
  *(v2 + 376) = 0x80000001BE138580;
  v26 = *(v1 + v103[11]);
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v102 = v1;
  if (v27)
  {
    v106[0] = MEMORY[0x1E69E7CC0];
    sub_1BD531B48(0, v27, 0);
    v28 = v106[0];
    v29 = (v26 + 32);
    do
    {
      v30 = *v29;
      v31 = [v30 identifier];
      if (v31)
      {
        v32 = v31;
        v33 = sub_1BE052434();
        v35 = v34;
      }

      else
      {

        v33 = 0;
        v35 = 0;
      }

      v106[0] = v28;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1BD531B48((v36 > 1), v37 + 1, 1);
        v28 = v106[0];
      }

      *(v28 + 16) = v37 + 1;
      v38 = v28 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      ++v29;
      --v27;
    }

    while (v27);
    v1 = v102;
  }

  *(v2 + 384) = v28;
  *(v2 + 408) = v101;
  *(v2 + 416) = 0xD000000000000015;
  *(v2 + 424) = 0x80000001BE1385A0;
  *(v2 + 432) = sub_1BE053314();
  *(v2 + 440) = v39;
  v40 = MEMORY[0x1E69E6158];
  *(v2 + 456) = MEMORY[0x1E69E6158];
  *(v2 + 464) = 0xD00000000000001BLL;
  *(v2 + 472) = 0x80000001BE1385C0;
  *(v2 + 480) = sub_1BE053314();
  *(v2 + 488) = v41;
  *(v2 + 504) = v40;
  *(v2 + 512) = 0xD000000000000018;
  *(v2 + 520) = 0x80000001BE1385E0;
  v42 = sub_1BE053314();
  *(v2 + 552) = v40;
  *(v2 + 528) = v42;
  *(v2 + 536) = v43;
  *(v2 + 560) = 0xD000000000000011;
  *(v2 + 568) = 0x80000001BE138600;
  v44 = sub_1BE053314();
  *(v2 + 600) = v40;
  *(v2 + 576) = v44;
  *(v2 + 584) = v45;
  *(v2 + 608) = 0xD000000000000017;
  *(v2 + 616) = 0x80000001BE138620;
  v46 = *(v1 + v103[15]);
  v47 = *(v46 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    v106[0] = MEMORY[0x1E69E7CC0];
    sub_1BD532374(0, v47, 0);
    v48 = v106[0];
    v49 = (v46 + 40);
    do
    {
      v50 = *v49;
      v51 = *(v49 - 1);
      v52 = v50;
      v53 = [v51 dictionaryRepresentation];
      if (v53)
      {
        v54 = v53;
        v55 = sub_1BE052244();
      }

      else
      {

        v55 = 0;
      }

      v106[0] = v48;
      v57 = *(v48 + 16);
      v56 = *(v48 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1BD532374((v56 > 1), v57 + 1, 1);
        v48 = v106[0];
      }

      *(v48 + 16) = v57 + 1;
      *(v48 + 8 * v57 + 32) = v55;
      v49 += 2;
      --v47;
    }

    while (v47);
    v1 = v102;
  }

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD525B0);
  *(v104 + 648) = v58;
  *(v104 + 624) = v48;
  *(v104 + 656) = 0xD00000000000001ELL;
  *(v104 + 664) = 0x80000001BE138640;
  v59 = *(v1 + v103[16]);
  v60 = *(v59 + 16);
  v61 = MEMORY[0x1E69E7CC0];
  if (v60)
  {
    v99 = v58;
    v106[0] = MEMORY[0x1E69E7CC0];
    sub_1BD532374(0, v60, 0);
    v62 = v106[0];
    v63 = (v59 + 40);
    do
    {
      v64 = *v63;
      v65 = *(v63 - 1);
      v66 = v64;
      v67 = [v65 dictionaryRepresentation];
      if (v67)
      {
        v68 = v67;
        v69 = sub_1BE052244();
      }

      else
      {

        v69 = 0;
      }

      v106[0] = v62;
      v71 = *(v62 + 16);
      v70 = *(v62 + 24);
      if (v71 >= v70 >> 1)
      {
        sub_1BD532374((v70 > 1), v71 + 1, 1);
        v62 = v106[0];
      }

      *(v62 + 16) = v71 + 1;
      *(v62 + 8 * v71 + 32) = v69;
      v63 += 2;
      --v60;
    }

    while (v60);
    v1 = v102;
    v61 = MEMORY[0x1E69E7CC0];
    v58 = v99;
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
  }

  *(v104 + 696) = v58;
  *(v104 + 672) = v62;
  *(v104 + 704) = 0xD000000000000017;
  *(v104 + 712) = 0x80000001BE138660;
  v72 = *(v1 + v103[17]);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
  *(v104 + 744) = v100;
  *(v104 + 720) = v72;
  *(v104 + 752) = 0xD00000000000001ALL;
  *(v104 + 760) = 0x80000001BE138680;
  v73 = *(v1 + v103[18]);
  v74 = *(v73 + 16);
  if (v74)
  {
    v106[0] = v61;
    sub_1BE048C84();
    sub_1BD531B48(0, v74, 0);
    v75 = v61;
    v76 = (v73 + 40);
    do
    {
      v77 = *v76;
      v78 = *(v76 - 1);
      v79 = v77;
      v80 = [v78 serviceIdentifier];
      if (v80)
      {
        v81 = v80;
        v82 = sub_1BE052434();
        v84 = v83;
      }

      else
      {

        v82 = 0;
        v84 = 0;
      }

      v106[0] = v75;
      v86 = *(v75 + 16);
      v85 = *(v75 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1BD531B48((v85 > 1), v86 + 1, 1);
        v75 = v106[0];
      }

      *(v75 + 16) = v86 + 1;
      v87 = v75 + 16 * v86;
      *(v87 + 32) = v82;
      *(v87 + 40) = v84;
      v76 += 2;
      --v74;
    }

    while (v74);
    v1 = v102;
  }

  else
  {
    sub_1BE048C84();
    v75 = MEMORY[0x1E69E7CC0];
  }

  *(v104 + 792) = v101;
  *(v104 + 768) = v75;
  strcpy((v104 + 800), "transactions");
  *(v104 + 813) = 0;
  *(v104 + 814) = -5120;
  v88 = *(v1 + v103[19]);
  v89 = *(v88 + 16);
  v90 = MEMORY[0x1E69E7CC0];
  if (v89)
  {
    v107 = MEMORY[0x1E69E7CC0];
    result = sub_1BD03B254(0, v89, 0);
    v92 = 0;
    v90 = v107;
    while (v92 < *(v88 + 16))
    {
      v105 = *(v88 + 32 + 16 * v92);
      result = sub_1BD764F84(&v105, v106);
      v93 = v106[0];
      v94 = v106[1];
      v107 = v90;
      v96 = *(v90 + 16);
      v95 = *(v90 + 24);
      if (v96 >= v95 >> 1)
      {
        result = sub_1BD03B254((v95 > 1), v96 + 1, 1);
        v90 = v107;
      }

      ++v92;
      *(v90 + 16) = v96 + 1;
      v97 = v90 + 16 * v96;
      *(v97 + 32) = v93;
      *(v97 + 40) = v94;
      if (v89 == v92)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_53:
    *(v104 + 840) = v100;
    *(v104 + 816) = v90;
    v98 = sub_1BD1AACF8(v104);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v98;
  }

  return result;
}

id sub_1BD764F84@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  [*a1 transactionStatus];
  v10 = PKPaymentTransactionStatusToString();
  if (v10)
  {
    v11 = v10;
    v40 = sub_1BE052434();
    v13 = v12;
  }

  else
  {
    v13 = 0xE900000000000073;
    v40 = 0x7574617473206F6ELL;
  }

  [v9 transactionType];
  v14 = PKPaymentTransactionTypeToString();
  if (v14)
  {
    v15 = v14;
    v37 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v17 = 0xE700000000000000;
    v37 = 0x65707974206F6ELL;
  }

  result = [v9 transactionDate];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = result;
  v36 = a2;
  sub_1BE04AEE4();

  v20 = sub_1BE04AD94();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  result = [v9 amount];
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v23 = result;
  v24 = [result description];

  v25 = sub_1BE052434();
  v27 = v26;

  v28 = [v9 serviceIdentifier];
  if (v28)
  {
    v29 = v28;
    v30 = sub_1BE052434();
    v32 = v31;
  }

  else
  {
    v32 = 0xE500000000000000;
    v30 = 0x4449206F6ELL;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1BE053834();

  v38 = v20;
  v39 = v22;
  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v25, v27);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v37, v17);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v40, v13);

  MEMORY[0x1BFB3F610](2128928, 0xE300000000000000);
  MEMORY[0x1BFB3F610](v30, v32);

  v33 = v39;
  v34 = v36;
  *v36 = v38;
  v34[1] = v33;
  return result;
}

uint64_t sub_1BD7652A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04AF64();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_1BD765308()
{
  v1 = [*v0 openingDate];
  sub_1BE04AEE4();
}

id sub_1BD765368()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1BE0F1DC0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v0;
  v5 = v0[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001BE1384C0;
  v7 = v1[3];
  *(inited + 96) = v1[2];
  *(inited + 104) = v7;
  *(inited + 120) = v6;
  *(inited + 128) = 0x746E756F6D61;
  *(inited + 136) = 0xE600000000000000;
  v8 = v1[4];
  v9 = v1[5];
  if (!v9)
  {
    v8 = 0x6E756F6D61206F6ELL;
  }

  v10 = 0xE900000000000074;
  if (v9)
  {
    v10 = v1[5];
  }

  *(inited + 144) = v8;
  *(inited + 152) = v10;
  *(inited + 168) = v6;
  *(inited + 176) = 1701869940;
  *(inited + 184) = 0xE400000000000000;
  v11 = v1[6];
  v12 = v1[7];
  if (!v12)
  {
    v11 = 0x65707974206F6ELL;
  }

  v13 = 0xE700000000000000;
  if (v12)
  {
    v13 = v1[7];
  }

  *(inited + 192) = v11;
  *(inited + 200) = v13;
  *(inited + 216) = v6;
  *(inited + 224) = 1702125924;
  *(inited + 232) = 0xE400000000000000;
  v14 = type metadata accessor for AccountDebugCKTransaction(0);
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  *(v3 + 240) = sub_1BE04AD94();
  *(v3 + 248) = v15;
  *(v3 + 264) = v6;
  *(v3 + 272) = 0xD000000000000013;
  *(v3 + 280) = 0x80000001BE1384E0;
  v16 = *(v1 + v14[9]);
  v17 = &unk_1BE0B6000;
  v18 = &selRef_currentPassbookState;
  if (v16)
  {
    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_1BE0B69E0;
    *(v19 + 32) = 0x746361736E617274;
    *(v19 + 40) = 0xEB000000006E6F69;
    result = [v16 dictionaryRepresentation];
    if (!result)
    {
      __break(1u);
      goto LABEL_19;
    }

    v21 = result;
    v22 = sub_1BE052244();

    *(v19 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45998);
    *(v19 + 48) = v22;
    v23 = sub_1BD1AACF8(v19);
    swift_setDeallocating();
    sub_1BD0DE53C(v19 + 32, &qword_1EBD52080);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
    *&v35 = v23;
    sub_1BD1B6140(&v35, (v3 + 288));
    v18 = &selRef_currentPassbookState;
    v17 = &unk_1BE0B6000;
  }

  else
  {
    *(v3 + 312) = MEMORY[0x1E69E6158];
    strcpy((v3 + 288), "NOT ON DEVICE");
    *(v3 + 302) = -4864;
  }

  *(v3 + 320) = 0xD000000000000011;
  *(v3 + 328) = 0x80000001BE138500;
  v24 = *(v1 + v14[10]);
  if (!v24)
  {
    *(v3 + 360) = MEMORY[0x1E69E6158];
    *(v3 + 336) = 0xD000000000000011;
    *(v3 + 344) = 0x80000001BE138520;
    goto LABEL_17;
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = v17[158];
  *(v25 + 32) = 0x746361736E617274;
  *(v25 + 40) = 0xEB000000006E6F69;
  result = [v24 v18[338]];
  if (result)
  {
    v26 = result;
    v27 = sub_1BE052244();

    *(v25 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45998);
    *(v25 + 48) = v27;
    v28 = sub_1BD1AACF8(v25);
    swift_setDeallocating();
    sub_1BD0DE53C(v25 + 32, &qword_1EBD52080);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52590);
    *&v35 = v28;
    sub_1BD1B6140(&v35, (v3 + 336));
LABEL_17:
    *(v3 + 368) = 0xD000000000000011;
    *(v3 + 376) = 0x80000001BE138540;
    v29 = MEMORY[0x1E69E6370];
    *(v3 + 384) = *(v1 + v14[11]);
    *(v3 + 408) = v29;
    *(v3 + 416) = 0x64726F636572;
    *(v3 + 424) = 0xE600000000000000;
    v30 = [*(v1 + v14[12]) description];
    v31 = sub_1BE052434();
    v33 = v32;

    *(v3 + 456) = MEMORY[0x1E69E6158];
    *(v3 + 432) = v31;
    *(v3 + 440) = v33;
    v34 = sub_1BD1AACF8(v3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
    swift_arrayDestroy();
    return v34;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1BD765898()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45E30);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_1BE0B76F0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v0;
  v5 = v0[1];
  v6 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 72) = v6;
  *(inited + 80) = 0x746E756F6D61;
  *(inited + 88) = 0xE600000000000000;
  v7 = v1[2];
  v8 = v1[3];
  if (!v8)
  {
    v7 = 0x6E756F6D61206F6ELL;
  }

  v9 = 0xE900000000000074;
  if (v8)
  {
    v9 = v1[3];
  }

  *(inited + 96) = v7;
  *(inited + 104) = v9;
  *(inited + 120) = v6;
  *(inited + 128) = 1701869940;
  *(inited + 136) = 0xE400000000000000;
  v10 = type metadata accessor for AccountDebugCKReward(0);
  v11 = (v1 + v10[7]);
  v12 = *v11;
  v13 = v11[1];
  v14 = 0x65707974206F6ELL;
  if (v13)
  {
    v14 = v12;
  }

  v15 = 0xE700000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *(v3 + 144) = v14;
  *(v3 + 152) = v15;
  *(v3 + 168) = v6;
  *(v3 + 176) = 1702125924;
  *(v3 + 184) = 0xE400000000000000;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  *(v3 + 192) = sub_1BE04AD94();
  *(v3 + 200) = v16;
  *(v3 + 216) = v6;
  strcpy((v3 + 224), "transactionIDs");
  *(v3 + 239) = -18;
  v17 = (v1 + v10[8]);
  v19 = *v17;
  v18 = v17[1];
  v20 = 0x80000001BE1384A0;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v19 = 0xD000000000000011;
  }

  *(v3 + 240) = v19;
  *(v3 + 248) = v20;
  *(v3 + 264) = v6;
  *(v3 + 272) = 0x4973647261776572;
  *(v3 + 280) = 0xEA00000000007344;
  v21 = (v1 + v10[9]);
  v22 = v21[1];
  if (v22)
  {
    v23 = *v21;
  }

  else
  {
    v23 = 0;
  }

  v24 = 0xE000000000000000;
  if (v22)
  {
    v24 = v22;
  }

  *(v3 + 288) = v23;
  *(v3 + 296) = v24;
  *(v3 + 312) = v6;
  strcpy((v3 + 320), "rewardsRecord");
  *(v3 + 334) = -4864;
  v25 = *(v1 + v10[11]);
  sub_1BE048C84();
  sub_1BE048C84();
  v26 = [v25 debugDescription];
  v27 = sub_1BE052434();
  v29 = v28;

  *(v3 + 336) = v27;
  *(v3 + 344) = v29;
  *(v3 + 360) = v6;
  *(v3 + 368) = 0x636552746E657665;
  *(v3 + 376) = 0xEB0000000064726FLL;
  v30 = *(v1 + v10[12]);
  if (!v30)
  {
    v35 = (v3 + 384);
    *(v3 + 408) = v6;
    goto LABEL_21;
  }

  v31 = [v30 debugDescription];
  v32 = sub_1BE052434();
  v34 = v33;

  v35 = (v3 + 384);
  *(v3 + 408) = v6;
  if (!v34)
  {
LABEL_21:
    *v35 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_22;
  }

  *v35 = v32;
LABEL_22:
  *(v3 + 392) = v34;
  v36 = sub_1BD1AACF8(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52080);
  swift_arrayDestroy();
  return v36;
}

id sub_1BD765BC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BE04B3B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3D260);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v22 - v15;
  result = [*(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = [result productTimeZone];

  if (v19)
  {
    sub_1BE04B394();

    v20 = *(v4 + 32);
    v20(v16, v7, v3);
    (*(v4 + 56))(v16, 0, 1, v3);
    return (v20)(a1, v16, v3);
  }

  (*(v4 + 56))(v16, 1, 1, v3);
  sub_1BE04B354();
  v21 = *(v4 + 48);
  result = v21(v11, 1, v3);
  if (result == 1)
  {
    goto LABEL_9;
  }

  (*(v4 + 32))(a1, v11, v3);
  result = v21(v16, 1, v3);
  if (result != 1)
  {
    return sub_1BD0DE53C(v16, &unk_1EBD3D260);
  }

  return result;
}

void sub_1BD765E64(void *a1)
{
  v87 = a1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v71 = &ObjectType - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52580);
  v85 = *(v5 - 8);
  v86 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v84 = &ObjectType - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52578);
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v81 = &ObjectType - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52570);
  v79 = *(v11 - 8);
  v80 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v78 = &ObjectType - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD45108);
  v76 = *(v14 - 8);
  v77 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v75 = &ObjectType - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52560);
  v18 = *(v17 - 8);
  v88 = v17;
  v89 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v74 = &ObjectType - v20;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD503B0);
  v21 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73, v22);
  v24 = &ObjectType - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &ObjectType - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52558);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &ObjectType - v33;
  v35 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__cardAccount;
  v91 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52488);
  sub_1BE04D874();
  (*(v31 + 32))(&v1[v35], v34, v30);
  v36 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__inProgress;
  LOBYTE(v91) = 1;
  sub_1BE04D874();
  (*(v26 + 32))(&v1[v36], v29, v25);
  v37 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__status;
  v91 = 0;
  v92 = 0xE000000000000000;
  sub_1BE04D874();
  (*(v21 + 32))(&v1[v37], v24, v73);
  v38 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__transactionGroups;
  v39 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3B6E8);
  v40 = v74;
  sub_1BE04D874();
  v41 = *(v89 + 32);
  v89 += 32;
  v72 = v41;
  v41(&v1[v38], v40, v88);
  v42 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__runningBalance;
  v91 = MEMORY[0x1BFB403C0](0);
  v92 = v43;
  v93 = v44;
  type metadata accessor for Decimal(0);
  v45 = v75;
  sub_1BE04D874();
  (*(v76 + 32))(&v1[v42], v45, v77);
  v46 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__statements;
  v91 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524A0);
  v47 = v78;
  sub_1BE04D874();
  (*(v79 + 32))(&v1[v46], v47, v80);
  v48 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__ckTransactions;
  v91 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD524B0);
  v49 = v81;
  sub_1BE04D874();
  v50 = v83;
  v51 = *(v82 + 32);
  v51(&v1[v48], v49, v83);
  v52 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__ckRewards;
  v91 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD524C0);
  v53 = v84;
  sub_1BE04D874();
  (*(v85 + 32))(&v1[v52], v53, v86);
  v54 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__cardTransactions;
  v91 = v39;
  sub_1BE04D874();
  v51(&v1[v54], v49, v50);
  v55 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel__invalidBalanceIncrements;
  v91 = v39;
  sub_1BE04D874();
  v72(&v1[v55], v40, v88);
  v56 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService;
  *&v1[v56] = [objc_opt_self() sharedInstance];
  v57 = v87;
  *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account] = v87;
  v58 = objc_allocWithZone(MEMORY[0x1E69B92F8]);
  v59 = v57;
  v60 = [v58 initWithAccount_];
  v61 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource] = v60;
  v62 = [objc_allocWithZone(MEMORY[0x1E69B8BD8]) init];
  if (v62)
  {
    v63 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider;
    *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider] = v62;
    v64 = [objc_allocWithZone(MEMORY[0x1E69B9300]) initWithTransactionSource_];
    v65 = [objc_allocWithZone(MEMORY[0x1E69B8788]) initWithTransactionSourceCollection:v64 paymentDataProvider:*&v1[v63]];

    if (v65)
    {
      *&v1[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher] = v65;
      v90.receiver = v1;
      v90.super_class = ObjectType;
      v66 = objc_msgSendSuper2(&v90, sel_init);
      v67 = sub_1BE0528D4();
      v68 = v71;
      (*(*(v67 - 8) + 56))(v71, 1, 1, v67);
      v69 = swift_allocObject();
      v69[2] = 0;
      v69[3] = 0;
      v69[4] = v66;
      v66;
      sub_1BD122C00(0, 0, v68, &unk_1BE0F5A88, v69);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD7667D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a4;
  v5 = sub_1BE051F54();
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v6 = sub_1BE051FA4();
  v4[41] = v6;
  v4[42] = *(v6 - 8);
  v4[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD7668F0, 0, 0);
}

uint64_t sub_1BD7668F0()
{
  v1 = [*(v0[37] + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) feature];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[40];
  v24 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];
  v8 = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  if (v1 == 5)
  {
    v0[44] = v8;
    v9 = sub_1BE052D54();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v0[18] = sub_1BD77C208;
    v0[19] = v10;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = sub_1BD126964;
    v0[17] = &block_descriptor_110_1;
    v11 = _Block_copy(v0 + 14);
    v12 = v7;
    sub_1BE051F74();
    v0[34] = MEMORY[0x1E69E7CC0];
    v0[45] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    v0[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    v0[47] = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v2, v4, v11);
    _Block_release(v11);

    v13 = *(v5 + 8);
    v0[48] = v13;
    v0[49] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v4, v6);
    v14 = *(v3 + 8);
    v0[50] = v14;
    v0[51] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v2, v24);

    v15 = swift_task_alloc();
    v0[52] = v15;
    *v15 = v0;
    v15[1] = sub_1BD766D9C;

    return sub_1BD7679FC();
  }

  else
  {
    v0[55] = v8;
    v17 = sub_1BE052D54();
    v18 = swift_allocObject();
    *(v18 + 16) = v7;
    v0[6] = sub_1BD77C1B0;
    v0[7] = v18;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1BD126964;
    v0[5] = &block_descriptor_173;
    v19 = _Block_copy(v0 + 2);
    v20 = v7;
    sub_1BE051F74();
    v0[32] = MEMORY[0x1E69E7CC0];
    v0[56] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    v0[58] = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v2, v4, v19);
    _Block_release(v19);

    v21 = *(v5 + 8);
    v0[59] = v21;
    v0[60] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v4, v6);
    v22 = *(v3 + 8);
    v0[61] = v22;
    v0[62] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v2, v24);

    v23 = swift_task_alloc();
    v0[63] = v23;
    *v23 = v0;
    v23[1] = sub_1BD7676C4;

    return sub_1BD77066C();
  }
}

uint64_t sub_1BD766D9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD766E98, 0, 0);
}

uint64_t sub_1BD766E98()
{
  v13 = v0[50];
  v12 = v0[48];
  v1 = v0[43];
  v2 = v0[40];
  v11 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = sub_1BE052D54();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v0[24] = sub_1BD77C210;
  v0[25] = v6;
  v0[20] = MEMORY[0x1E69E9820];
  v0[21] = 1107296256;
  v0[22] = sub_1BD126964;
  v0[23] = &block_descriptor_117_1;
  v7 = _Block_copy(v0 + 20);
  v8 = v4;
  sub_1BE051F74();
  v0[35] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v7);
  _Block_release(v7);

  v12(v2, v3);
  v13(v1, v11);

  v9 = swift_task_alloc();
  v0[53] = v9;
  *v9 = v0;
  v9[1] = sub_1BD767078;

  return sub_1BD76CC08();
}

uint64_t sub_1BD767078()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD767174, 0, 0);
}

uint64_t sub_1BD767174()
{
  v13 = v0[50];
  v12 = v0[48];
  v1 = v0[43];
  v2 = v0[40];
  v11 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = sub_1BE052D54();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v0[30] = sub_1BD77C218;
  v0[31] = v6;
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_1BD126964;
  v0[29] = &block_descriptor_124_0;
  v7 = _Block_copy(v0 + 26);
  v8 = v4;
  sub_1BE051F74();
  v0[36] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v7);
  _Block_release(v7);

  v12(v2, v3);
  v13(v1, v11);

  v9 = swift_task_alloc();
  v0[54] = v9;
  *v9 = v0;
  v9[1] = sub_1BD767354;

  return sub_1BD76E4F0();
}

uint64_t sub_1BD767354()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD767450, 0, 0);
}

uint64_t sub_1BD767450()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[40];
  v15 = v0[41];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];
  v0[55] = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v7 = sub_1BE052D54();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v0[6] = sub_1BD77C1B0;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BD126964;
  v0[5] = &block_descriptor_173;
  v9 = _Block_copy(v0 + 2);
  v10 = v6;
  sub_1BE051F74();
  v0[32] = MEMORY[0x1E69E7CC0];
  v0[56] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  v0[58] = sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v3, v9);
  _Block_release(v9);

  v11 = *(v4 + 8);
  v0[59] = v11;
  v0[60] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v5);
  v12 = *(v2 + 8);
  v0[61] = v12;
  v0[62] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v1, v15);

  v13 = swift_task_alloc();
  v0[63] = v13;
  *v13 = v0;
  v13[1] = sub_1BD7676C4;

  return sub_1BD77066C();
}

uint64_t sub_1BD7676C4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD7677C0, 0, 0);
}

uint64_t sub_1BD7677C0()
{
  v13 = v0[61];
  v12 = v0[59];
  v1 = v0[43];
  v2 = v0[40];
  v11 = v0[41];
  v4 = v0[37];
  v3 = v0[38];
  v5 = sub_1BE052D54();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v0[12] = sub_1BD77C200;
  v0[13] = v6;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1BD126964;
  v0[11] = &block_descriptor_103_0;
  v7 = _Block_copy(v0 + 8);
  v8 = v4;
  sub_1BE051F74();
  v0[33] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v1, v2, v7);
  _Block_release(v7);

  v12(v2, v3);
  v13(v1, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1BD767978(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD7679FC()
{
  v1[74] = v0;
  v2 = type metadata accessor for AccountDebugTransactionGroup(0);
  v1[75] = v2;
  v3 = *(v2 - 8);
  v1[76] = v3;
  v1[77] = *(v3 + 64);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v4 = sub_1BE051F54();
  v1[80] = v4;
  v1[81] = *(v4 - 8);
  v1[82] = swift_task_alloc();
  v5 = sub_1BE051FA4();
  v1[83] = v5;
  v1[84] = *(v5 - 8);
  v1[85] = swift_task_alloc();
  v6 = sub_1BE04B3B4();
  v1[86] = v6;
  v1[87] = *(v6 - 8);
  v1[88] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v1[89] = swift_task_alloc();
  v7 = sub_1BE04AF64();
  v1[90] = v7;
  v1[91] = *(v7 - 8);
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  v1[98] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD767CC0, 0, 0);
}

void sub_1BD767CC0()
{
  v1 = [*(v0[74] + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account) savingsDetails];
  if (!v1)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 createdDate];

  v4 = v0[98];
  if (v3)
  {
    v5 = v0[97];
    v6 = v0[91];
    v7 = v0[90];
    v8 = v0[89];
    sub_1BE04AEE4();

    v9 = *(v6 + 32);
    v9(v8, v5, v7);
    (*(v6 + 56))(v8, 0, 1, v7);
    v9(v4, v8, v7);
  }

  else
  {
    v10 = v0[91];
    v11 = v0[90];
    v12 = v0[89];
    (*(v10 + 56))(v12, 1, 1, v11);
    sub_1BE04AEF4();
    if ((*(v10 + 48))(v12, 1, v11) != 1)
    {
      sub_1BD0DE53C(v0[89], &unk_1EBD39970);
    }
  }

  v13 = v0[88];
  v14 = v0[87];
  v15 = v0[86];
  v16 = sub_1BE04AE64();
  sub_1BD765BC8(v13);
  v17 = sub_1BE04B374();
  v18 = *(v14 + 8);
  v0[99] = v18;
  v0[100] = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v13, v15);
  v19 = PKEndOfMonthWithTimeZone();

  if (!v19)
  {
    goto LABEL_11;
  }

  sub_1BE04AEE4();

  v20 = swift_task_alloc();
  v0[101] = v20;
  *v20 = v0;
  v20[1] = sub_1BD767F40;

  sub_1BD77769C();
}

uint64_t sub_1BD767F40(uint64_t a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 816) = a1;

  v3 = swift_task_alloc();
  *(v2 + 824) = v3;
  *v3 = v5;
  v3[1] = sub_1BD76808C;

  return sub_1BD776BE0();
}

uint64_t sub_1BD76808C(uint64_t a1)
{
  *(*v1 + 832) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD76818C, 0, 0);
}

uint64_t sub_1BD76818C()
{
  v1 = *(v0 + 832);
  if (v1)
  {
    v2 = [*(v0 + 832) accountIdentifier];

    if (v2)
    {
      v3 = sub_1BE052434();
      v1 = v4;
    }

    else
    {
      v3 = 0;
      v1 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 848) = v1;
  *(v0 + 840) = v3;
  v5 = *(v0 + 776);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  *(v0 + 856) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
  *(v0 + 864) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  *(v0 + 872) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService;
  *(v0 + 880) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider;
  sub_1BE04AEF4();
  v8 = sub_1BE04AE84();
  v11 = *(v6 + 8);
  v10 = v6 + 8;
  v9 = v11;
  v11(v5, v7);
  if (v8)
  {
    *(v0 + 896) = v9;
    *(v0 + 888) = v10 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12 = *(v0 + 856);
    v13 = *(v0 + 592);
    v14 = *(v13 + v12);
    v15 = sub_1BE04AE64();
    v16 = sub_1BE04AE64();
    [v14 setLimit:0 startDate:v15 endDate:v16];

    v17 = *(v13 + v12);
    *(v0 + 904) = v17;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 584;
    *(v0 + 24) = sub_1BD76852C;
    v18 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    *(v0 + 240) = v18;
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BD9C18BC;
    *(v0 + 232) = &block_descriptor_151_0;
    [v17 reloadTransactionsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    v19 = *(v0 + 816);
    v20 = *(v0 + 784);
    v21 = *(v0 + 768);
    v22 = *(v0 + 720);

    v9(v21, v22);
    v9(v20, v22);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1BD76852C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76860C, 0, 0);
}

uint64_t sub_1BD76860C()
{
  v2 = *(v0 + 904);
  v3 = *(v0 + 584);
  *(v0 + 912) = v3;

  *(v0 + 1552) = MEMORY[0x1BFB403C0](0);
  *(v0 + 1560) = v4;
  *(v0 + 1568) = v5;
  v6 = MEMORY[0x1BFB403C0](0);
  v8 = v7;
  *(v0 + 1532) = v6;
  v9 = v0 + 1532;
  *(v0 + 1540) = v7;
  v268 = v10;
  *(v0 + 1548) = v10;
  v11 = MEMORY[0x1BFB403C0](0);
  *(v0 + 1492) = v11;
  v255 = v0 + 1492;
  v238 = v0 + 1292;
  *(v0 + 1500) = v12;
  v13 = v12;
  v15 = v14;
  *(v0 + 1508) = v14;
  *(v0 + 1472) = MEMORY[0x1BFB403C0](0);
  *(v0 + 1480) = v16;
  *(v0 + 1488) = v17;
  if (v3)
  {
    v18 = v3;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  if (v18 >> 62)
  {
    v19 = sub_1BE053704();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v240 = v0 + 1552;
  v242 = v0 + 1472;
  v272 = v0;
  v243 = v0 + 1532;
  if (!v19)
  {
    v258 = HIDWORD(v6);
    v249 = v8 >> 16;
    v253 = HIWORD(v6);
    v233 = HIWORD(v8);
    v235 = HIDWORD(v8);
    aBlock = HIWORD(v11);
    v232 = HIDWORD(v11);
    v228 = HIDWORD(v13);
    v229 = v13 >> 16;
    v226 = HIWORD(v13);
    v223 = HIWORD(v15);
    v225 = HIWORD(v268);
    v222 = v15;
    sub_1BE048C84();

    v48 = MEMORY[0x1E69E7CC0];
    v217 = v11;
    v218 = v8;
    v21 = MEMORY[0x1E69E7CC0];
    v220 = v6;
    v216 = v13;
LABEL_48:
    *(v0 + 928) = v21;
    *(v0 + 920) = v48;
    v49 = *(v0 + 680);
    v50 = *(v0 + 672);
    v261 = *(v0 + 664);
    v265 = *(v0 + 816);
    v51 = *(v0 + 656);
    v52 = *(v0 + 648);
    v53 = *(v272 + 640);
    v54 = *(v272 + 592);
    *(v272 + 936) = sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v245 = sub_1BE052D54();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    *(v55 + 24) = v220;
    *(v55 + 28) = v258;
    *(v55 + 30) = v253;
    *(v55 + 32) = v218;
    *(v55 + 34) = v249;
    *(v55 + 36) = v235;
    *(v55 + 38) = v233;
    *(v55 + 40) = v268;
    *(v55 + 42) = v225;
    *(v55 + 44) = v217;
    *(v55 + 48) = v232;
    *(v55 + 50) = aBlock;
    *(v55 + 52) = v216;
    *(v55 + 54) = v229;
    *(v55 + 56) = v228;
    *(v55 + 58) = v226;
    *(v55 + 60) = v222;
    *(v55 + 62) = v223;
    *(v272 + 480) = sub_1BD77C358;
    *(v272 + 488) = v55;
    *(v272 + 448) = MEMORY[0x1E69E9820];
    v1 = 1107296256;
    *(v272 + 456) = 1107296256;
    *(v272 + 464) = sub_1BD126964;
    *(v272 + 472) = &block_descriptor_157_0;
    v56 = _Block_copy((v0 + 448));
    v57 = v54;
    sub_1BE051F74();
    v58 = MEMORY[0x1E69E7CC0];
    *(v272 + 552) = MEMORY[0x1E69E7CC0];
    *(v272 + 944) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    *(v272 + 952) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    *(v272 + 960) = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v49, v51, v56);
    _Block_release(v56);

    v59 = *(v52 + 8);
    *(v272 + 968) = v59;
    *(v272 + 976) = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v60 = v53;
    v19 = v272;
    v59(v51, v60);
    v61 = *(v50 + 8);
    *(v272 + 984) = v61;
    *(v272 + 992) = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v61(v49, v261);

    *(v272 + 536) = v58;
    *(v272 + 544) = v58;
    *v238 = MEMORY[0x1BFB403C0](0);
    *(v238 + 8) = v62;
    *(v272 + 1308) = v63;
    *(v272 + 1312) = MEMORY[0x1BFB403C0](0);
    *(v272 + 1320) = v64;
    *(v272 + 1328) = v65;
    if (v265 && *(v272 + 848))
    {
      v66 = *(*(v272 + 592) + *(v272 + 872));
      *(v272 + 1000) = v66;
      if (v66)
      {
        v67 = (v272 + 144);
        v68 = *(v272 + 816);
        sub_1BE048C84();
        v69 = v66;
        v70 = sub_1BE052404();
        *(v272 + 1008) = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_1BE0B7020;
        *(v71 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1BD0E5E8C(0, &qword_1EBD3D270);
        v72 = sub_1BE052724();
        *(v272 + 1016) = v72;

        v73 = sub_1BE04AE64();
        *(v272 + 1024) = v73;
        v74 = sub_1BE04AE64();
        *(v272 + 1032) = v74;
        *(v272 + 144) = v272;
        *(v272 + 184) = v272 + 568;
        *(v272 + 152) = sub_1BD76A274;
        v75 = swift_continuation_init();
        *(v272 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E0);
        *(v272 + 336) = MEMORY[0x1E69E9820];
        *(v272 + 344) = 1107296256;
        *(v272 + 352) = sub_1BD777AF8;
        *(v272 + 360) = &block_descriptor_166_1;
        *(v272 + 368) = v75;
        [v69 eventsForAccountIdentifier:v70 types:v72 startDate:v73 endDate:v74 orderedByDate:-1 limit:0 completion:v272 + 336];
        goto LABEL_59;
      }

      v143 = *(v272 + 816);
      *(v272 + 1056) = 0;
      v144 = MEMORY[0x1E69E7CC0];
      *(v272 + 1048) = MEMORY[0x1E69E7CC0];
      v145 = v143;
      sub_1BE048C84();
      v3 = (v144 & 0xFFFFFFFFFFFFFF8);
      if (v144 >> 62)
      {
        v146 = sub_1BE053704();
      }

      else
      {
        v146 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v272 + 1072) = v146;
      *(v272 + 1064) = v3;
      *(v272 + 1104) = v144;
      *(v272 + 1096) = v144;
      *(v272 + 1088) = v144;
      *(v272 + 1080) = v144;
      if (!v146)
      {
LABEL_119:
        v183 = *(v19 + 816);

        v184 = swift_task_alloc();
        *(v19 + 1256) = v184;
        *v184 = v19;
        v184[1] = sub_1BD76B7E0;
        v185 = *(v19 + 784);
        v186 = *(v19 + 768);

        return sub_1BD777B0C(v183, v185, v186);
      }

      v78 = 0;
      v254 = v272 + 536;
      v255 = v272 + 576;
      v80 = &selRef_issuerAdministrativeAreaCode;
      v76 = MEMORY[0x1E69E69C0];
      v77 = 1;
      v263 = v144;
      v267 = v144;
      v271 = v144;
      v0 = 40;
      while (1)
      {
        while (1)
        {
          v147 = *(v19 + 1048);
          if ((v147 & 0xC000000000000001) != 0)
          {
            v148 = MEMORY[0x1BFB40900](v78);
          }

          else
          {
            if (v78 >= *(*(v19 + 1064) + 16))
            {
              goto LABEL_125;
            }

            v148 = *(v147 + 8 * v78 + 32);
          }

          v79 = v148;
          *(v19 + 1112) = v148;
          v149 = __OFADD__(v78++, 1);
          *(v19 + 1120) = v78;
          if (v149)
          {
            goto LABEL_124;
          }

          v30 = [v148 items];
          if (!v30)
          {
            goto LABEL_151;
          }

          v150 = v30;
          v3 = sub_1BE052A34();

          v151 = 0;
          v152 = 0;
          v153 = 1 << *(v3 + 32);
          while (1)
          {
            v154 = v3[v152 + 7];
            if (v154)
            {
              break;
            }

            ++v152;
            v151 -= 64;
            if ((v153 + 63) >> 6 == v152)
            {
              goto LABEL_70;
            }
          }

          v155 = __clz(__rbit64(v154));
          if (v155 - v153 != v151)
          {
            break;
          }

LABEL_70:

LABEL_71:
          if (v78 == *(v19 + 1072))
          {
            goto LABEL_119;
          }
        }

        if (-v151 < 0 || (v156 = v155 - v151, v156 >= v153))
        {
          __break(1u);
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (((v3[(v152 & 0x3FFFFFFFFFFFFFFLL) + 7] >> v155) & 1) == 0)
        {
          goto LABEL_145;
        }

        sub_1BD149C8C(&v3[6][40 * v156], v19 + 496);

        v3 = sub_1BE053794();
        *(v19 + 1128) = v3;
        sub_1BD149CE8(v19 + 496);
        objc_opt_self();
        v157 = swift_dynamicCastObjCClass();
        if (!v157)
        {

          goto LABEL_71;
        }

        v158 = v157;
        v30 = [v157 currencyAmount];
        if (!v30)
        {
          goto LABEL_156;
        }

        v159 = v30;
        v160 = [v30 amount];

        if (!v160)
        {
          goto LABEL_155;
        }

        [v160 decimalValue];
        v251 = *(v19 + 1512);
        *(v19 + 1572) = v251;
        v247 = *(v19 + 1516);
        *(v19 + 1580) = v247;
        v243 = *(v19 + 1518);
        *(v19 + 1582) = v243;
        v242 = *(v19 + 1520);
        *(v19 + 1576) = v242;
        v240 = *(v19 + 1524);
        *(v19 + 1584) = v240;
        v237 = *(v19 + 1526);
        *(v19 + 1586) = v237;
        v161 = *(v19 + 1528);
        *(v19 + 1588) = v161;
        v162 = *(v19 + 1530);
        *(v19 + 1590) = v162;

        MEMORY[0x1BFB40450](v238, v251 | (v247 << 32) | (v243 << 48), v242 | (v240 << 32) | (v237 << 48), v161 | (v162 << 16));
        v163 = [v158 type];
        v165 = (v272 + 544);
        v164 = v263;
        if (!v163)
        {
          v166 = v79;
          MEMORY[0x1BFB3F7A0]();
          if (*(*v254 + 16) >= *(*v254 + 24) >> 1)
          {
            sub_1BE052774();
          }

          sub_1BE0527C4();
          v164 = *v254;
          v19 = v272;
        }

        *(v19 + 1136) = v164;
        v167 = [v158 transactionIdentifiers];
        if (v167)
        {
          v168 = v167;
          v169 = sub_1BE052A34();
        }

        else
        {
          v169 = 0;
        }

        *(v19 + 1144) = v169;
        v170 = [v158 rewardsAddedIdentifiers];
        if (v170)
        {
          v171 = v170;
          v172 = sub_1BE052A34();
        }

        else
        {
          v172 = 0;
        }

        v173 = v267;
        *(v19 + 1152) = v172;
        if (!v169)
        {
          v3 = MEMORY[0x1E69E7CD0];
          goto LABEL_108;
        }

        if (*(v169 + 16) || !v172)
        {
          goto LABEL_106;
        }

        v174 = *(v172 + 16);
        v3 = v169;
        if (!v174)
        {
          break;
        }

LABEL_108:
        *(v19 + 1168) = v173;
        *(v19 + 1160) = v3;
        v176 = *(v3 + 32);
        *(v19 + 1592) = v176;
        v177 = -1 << v176;
        if (-(-1 << v176) < 64)
        {
          v178 = ~(-1 << -(-1 << v176));
        }

        else
        {
          v178 = -1;
        }

        v0 = v178 & v3[7];
        *(v19 + 1176) = v271;
        *(v19 + 1184) = MEMORY[0x1E69E7CC0];
        sub_1BE048C84();
        if (v0)
        {
          goto LABEL_126;
        }

        v179 = 0;
        while (((63 - v177) >> 6) - 1 != v179)
        {
          v180 = v179 + 1;
          v0 = v3[v179++ + 8];
          if (v0)
          {
            goto LABEL_127;
          }
        }

        v181 = *(v19 + 1112);

        v182 = *(v19 + 1176);
        v78 = *(v19 + 1120);
        v263 = *(v19 + 1136);
        v267 = *(v19 + 1168);
        *(v19 + 1104) = v267;
        *(v19 + 1096) = v263;
        v271 = v182;
        *(v19 + 1088) = v182;
        *(v19 + 1080) = MEMORY[0x1E69E7CC0];
        v0 = 40;
        if (v78 == *(v19 + 1072))
        {
          goto LABEL_119;
        }
      }

      v175 = v79;
      MEMORY[0x1BFB3F7A0]();
      if (*(*(v272 + 544) + 16) >= *(*(v272 + 544) + 24) >> 1)
      {
        sub_1BE052774();
        v165 = (v272 + 544);
      }

      sub_1BE0527C4();
      v173 = *v165;
LABEL_106:
      v3 = v169;
      goto LABEL_108;
    }

    v76 = v272 + 1312;
    v77 = v272 + 1332;
    v78 = v272 + 1352;
    v79 = (v272 + 1372);
    v3 = (v272 + 1392);
    v19 = v272 + 1412;
    v80 = (v272 + 1432);
    v81 = *(v272 + 912);
    (*(*(v272 + 728) + 16))(*(v272 + 744), *(v272 + 784), *(v272 + 720));
    aBlock = (v272 + 400);
    if (v81)
    {
      v82 = *(v272 + 912);
      if (v82 >> 62)
      {
LABEL_146:
        v211 = sub_1BE053704();
      }

      else
      {
        v211 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v211 = 0;
    }

    v227 = *(v272 + 984);
    v221 = *(v272 + 968);
    v259 = *(v272 + 920);
    v262 = *(v272 + 928);
    v234 = *(v272 + 896);
    v250 = *(v272 + 792);
    v230 = *(v272 + 784);
    v224 = *(v272 + 776);
    v210 = *(v272 + 744);
    v266 = *(v272 + 720);
    v270 = *(v272 + 728);
    v236 = *(v272 + 704);
    v246 = *(v272 + 688);
    v219 = *(v272 + 664);
    v214 = *(v272 + 680);
    v215 = *(v272 + 656);
    v83 = *v240;
    *(v80 + 4) = *(v240 + 16);
    v241 = *(v272 + 640);
    *v80 = v83;
    v84 = *v242;
    *(v19 + 16) = *(v242 + 16);
    v85 = *(v272 + 632);
    *v19 = v84;
    v86 = *v243;
    *(v3 + 4) = *(v243 + 16);
    v79[4] = *(v255 + 16);
    v213 = *(v272 + 624);
    *v3 = v86;
    *v79 = *v255;
    v87 = *v238;
    *(v78 + 16) = *(v238 + 16);
    *(v77 + 16) = *(v76 + 16);
    v212 = *(v272 + 608);
    *v78 = v87;
    v88 = *v76;
    v89 = *(v272 + 600);
    *v77 = v88;
    v239 = *(v272 + 592);
    swift_bridgeObjectRetain_n();
    v90 = MEMORY[0x1BFB403C0](0);
    v208 = v91;
    v209 = v90;
    v207 = v92;
    swift_bridgeObjectRetain_n();
    sub_1BE048C84();
    sub_1BE048C84();
    v93 = MEMORY[0x1BFB403C0](0);
    v205 = v94;
    v206 = v93;
    v204 = v95;
    v256 = *(v270 + 32);
    v256(v85, v210, v266);
    *(v85 + v89[5]) = v211;
    v96 = v85 + v89[6];
    v97 = *v80;
    *(v96 + 16) = *(v80 + 4);
    *v96 = v97;
    v98 = v85 + v89[7];
    v99 = *v19;
    *(v98 + 16) = *(v19 + 16);
    *v98 = v99;
    v100 = v85 + v89[8];
    v101 = *(v3 + 4);
    *v100 = *v3;
    *(v100 + 16) = v101;
    v102 = v85 + v89[9];
    v103 = v79[4];
    *v102 = *v79;
    *(v102 + 16) = v103;
    v104 = MEMORY[0x1E69E7CC0];
    *(v85 + v89[10]) = MEMORY[0x1E69E7CC0];
    *(v85 + v89[11]) = v104;
    v105 = v85 + v89[12];
    v106 = *(v78 + 16);
    *v105 = *v78;
    *(v105 + 16) = v106;
    v107 = v85 + v89[13];
    v108 = *(v77 + 16);
    *v107 = *v77;
    *(v107 + 16) = v108;
    v109 = v85 + v89[14];
    *v109 = v209;
    *(v109 + 8) = v208;
    *(v109 + 16) = v207;
    *(v85 + v89[15]) = v104;
    *(v85 + v89[16]) = v104;
    *(v85 + v89[17]) = v104;
    *(v85 + v89[18]) = v259;
    *(v85 + v89[19]) = v262;
    v110 = v85 + v89[20];
    *v110 = v206;
    *(v110 + 8) = v205;
    *(v110 + 16) = v204;
    v111 = sub_1BE052D54();
    sub_1BD77BFE0(v85, v213, type metadata accessor for AccountDebugTransactionGroup);
    v112 = (*(v212 + 80) + 24) & ~*(v212 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = v239;
    sub_1BD77C264(v213, v113 + v112, type metadata accessor for AccountDebugTransactionGroup);
    *(v272 + 432) = sub_1BD77C4AC;
    *(v272 + 440) = v113;
    *(v272 + 400) = MEMORY[0x1E69E9820];
    *(v272 + 408) = 1107296256;
    *(v272 + 416) = sub_1BD126964;
    *(v272 + 424) = &block_descriptor_163_0;
    v114 = _Block_copy(aBlock);
    v115 = v239;
    sub_1BE051F74();
    *(v272 + 560) = v104;
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v214, v215, v114);
    _Block_release(v114);

    v221(v215, v241);
    v227(v214, v219);

    sub_1BE04ADD4();
    v234(v230, v266);
    v256(v230, v224, v266);
    v116 = sub_1BE04AE64();
    sub_1BD765BC8(v236);
    v117 = sub_1BE04B374();
    v250(v236, v246);
    v118 = PKEndOfMonthWithTimeZone();

    if (v118)
    {
      v119 = *(v272 + 896);
      v120 = *(v272 + 776);
      v121 = *(v272 + 768);
      v122 = *(v272 + 736);
      v123 = *(v272 + 728);
      v124 = *(v272 + 720);
      v125 = *(v272 + 632);

      sub_1BE04AEE4();

      sub_1BD77C048(v125, type metadata accessor for AccountDebugTransactionGroup);
      v119(v121, v124);
      swift_bridgeObjectRelease_n();

      v256(v121, v122, v124);
      sub_1BE04AEF4();
      v126 = sub_1BE04AE84();
      v129 = *(v123 + 8);
      v127 = v123 + 8;
      v128 = v129;
      v129(v120, v124);
      if ((v126 & 1) == 0)
      {
        v137 = *(v272 + 816);
        v138 = *(v272 + 784);
        v139 = *(v272 + 768);
        v140 = *(v272 + 720);

        v128(v139, v140);
        v128(v138, v140);

        v141 = *(v272 + 8);

        return v141();
      }

      v67 = (v272 + 16);
      *(v272 + 896) = v128;
      *(v272 + 888) = v127 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v130 = *(v272 + 856);
      v131 = *(v272 + 592);
      v132 = *(v131 + v130);
      v133 = sub_1BE04AE64();
      v134 = sub_1BE04AE64();
      [v132 setLimit:0 startDate:v133 endDate:v134];

      v135 = *(v131 + v130);
      *(v272 + 904) = v135;
      *(v272 + 16) = v272;
      *(v272 + 56) = v272 + 584;
      *(v272 + 24) = sub_1BD76852C;
      v136 = swift_continuation_init();
      *(v272 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      *(v272 + 208) = MEMORY[0x1E69E9820];
      *(v272 + 216) = 1107296256;
      *(v272 + 224) = sub_1BD9C18BC;
      *(v272 + 232) = &block_descriptor_151_0;
      *(v272 + 240) = v136;
      [v135 reloadTransactionsWithCompletion_];
LABEL_59:
      v30 = v67;
      goto LABEL_60;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v30);
  }

  v264 = v18 & 0xC000000000000001;
  v252 = v18 & 0xFFFFFFFFFFFFFF8;
  sub_1BE048C84();
  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v244 = MEMORY[0x1E69E7CC0];
  v257 = v19;
  v260 = v18;
  while (1)
  {
    if (v264)
    {
      v22 = MEMORY[0x1BFB40900](v20, v18);
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      goto LABEL_16;
    }

    if (v20 >= *(v252 + 16))
    {
      goto LABEL_123;
    }

    v22 = v18[v20 + 4];
    v23 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

LABEL_16:
    v24 = *(*(v0 + 592) + *(v0 + 864));
    v25 = v22;
    v26 = v24;
    v269 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1BD1D96EC(0, *(v21 + 2) + 1, 1, v21);
    }

    v28 = *(v21 + 2);
    v27 = *(v21 + 3);
    if (v28 >= v27 >> 1)
    {
      v21 = sub_1BD1D96EC((v27 > 1), v28 + 1, 1, v21);
    }

    *(v21 + 2) = v28 + 1;
    v29 = &v21[16 * v28];
    *(v29 + 4) = v25;
    *(v29 + 5) = v26;
    v3 = &selRef_thumbnailWidth;
    if ([v25 transactionStatus] == 2)
    {
    }

    else
    {
      if ([v25 transactionStatus])
      {
        goto LABEL_24;
      }

      sub_1BE04AEF4();
      v30 = [v25 transactionDate];
      if (!v30)
      {
        goto LABEL_150;
      }

      v31 = v30;
      v32 = *(v0 + 896);
      v33 = *(v0 + 776);
      v248 = *(v0 + 760);
      v34 = *(v0 + 752);
      v35 = *(v272 + 720);
      sub_1BE04AEE4();

      sub_1BE04ADD4();
      sub_1BD77C1B8(&qword_1EBD525D0, MEMORY[0x1E6969530]);
      LOBYTE(v31) = sub_1BE0522F4();
      v32(v33, v35);
      v32(v34, v35);
      v0 = v272;
      v32(v248, v35);
      v9 = v243;
      if (v31)
      {
LABEL_24:
        v36 = [v25 transactionType];
        v37 = 0;
        if ((v36 - 4) >= 2 && v36)
        {
          if (v36 == 7)
          {
            v38 = [v25 adjustmentType];
            if (v38 >= 0x12)
            {
              v37 = 0;
            }

            else
            {
              v37 = 0x2A60Au >> v38;
            }
          }

          else
          {
            v37 = 1;
          }
        }

        v30 = [v25 amount];
        if (v30)
        {
          v42 = v30;
          v43 = [v30 pk_absoluteValue];

          if (!v43)
          {
            goto LABEL_149;
          }

          [v43 decimalValue];
          v3 = *(v272 + 1452);
          v44 = *(v272 + 1460);
          v45 = *(v272 + 1468);

          if (v37)
          {
            v46 = v9;
          }

          else
          {
            v46 = v255;
          }

          MEMORY[0x1BFB40450](v46, v3, v44, v45);
          v47 = [v25 transactionType];
          if (v47 == 11)
          {
            v0 = v272;
            MEMORY[0x1BFB40450](v242, *(v272 + 1472), *(v272 + 1480), *(v272 + 1488));

            v19 = v257;
            v18 = v260;
          }

          else
          {
            v19 = v257;
            v18 = v260;
            if (v47 == 9)
            {
              MEMORY[0x1BFB40450](v240, v3, v44, v45);
            }

            v0 = v272;
          }

          goto LABEL_9;
        }

        __break(1u);
LABEL_149:
        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v3 = *(*(v272 + 592) + *(v272 + 864));
      v19 = v257;
      v18 = v260;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v244 = sub_1BD1D96EC(0, *(v244 + 2) + 1, 1, v244);
      }

      v40 = *(v244 + 2);
      v39 = *(v244 + 3);
      if (v40 >= v39 >> 1)
      {
        v244 = sub_1BD1D96EC((v39 > 1), v40 + 1, 1, v244);
      }

      *(v244 + 2) = v40 + 1;
      v41 = &v244[16 * v40];
      *(v41 + 4) = v25;
      *(v41 + 5) = v3;
    }

LABEL_9:
    ++v20;
    if (v269 == v19)
    {

      v220 = *(v0 + 1532);
      LOWORD(v258) = *(v0 + 1536);
      LOWORD(v253) = *(v0 + 1538);
      v218 = *(v0 + 1540);
      LOWORD(v249) = *(v0 + 1542);
      LOWORD(v235) = *(v0 + 1544);
      LOWORD(v233) = *(v0 + 1546);
      LOWORD(v268) = *(v0 + 1548);
      LOWORD(v225) = *(v0 + 1550);
      v217 = *(v0 + 1492);
      LOWORD(v232) = *(v0 + 1496);
      aBlock = *(v0 + 1498);
      v216 = *(v0 + 1500);
      LOWORD(v229) = *(v0 + 1502);
      LOWORD(v228) = *(v0 + 1504);
      LOWORD(v226) = *(v0 + 1506);
      v222 = *(v0 + 1508);
      LOWORD(v223) = *(v0 + 1510);
      v48 = v244;
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  v180 = 0;
LABEL_127:
  *(v19 + 1200) = v180;
  *(v19 + 1192) = v0;
  v187 = *(v19 + 816);
  v188 = &v3[6][(v180 << 10) | (16 * __clz(__rbit64(v0)))];
  *(v19 + 1208) = *v188;
  *(v19 + 1216) = *(v188 + 1);
  sub_1BE048C84();
  v189 = [v187 transactionSourceIdentifiers];
  if (!v189)
  {
LABEL_134:
    v197 = 0;
    goto LABEL_135;
  }

  v190 = v189;
  v191 = sub_1BE052A34();

  v30 = v191;
  v192 = 0;
  v193 = 0;
  v194 = 1 << *(v191 + 32);
  while (1)
  {
    v195 = *(v191 + 8 * v193 + 56);
    if (v195)
    {
      break;
    }

    ++v193;
    v192 -= 64;
    if ((v194 + 63) >> 6 == v193)
    {
      goto LABEL_133;
    }
  }

  v196 = __clz(__rbit64(v195));
  if (v196 - v194 == v192)
  {
LABEL_133:

    goto LABEL_134;
  }

  if (-v192 < 0)
  {
    goto LABEL_152;
  }

  v203 = v196 - v192;
  if (v203 >= v194)
  {
    goto LABEL_152;
  }

  if (((*(v191 + 56 + 8 * (v193 & 0x3FFFFFFFFFFFFFFLL)) >> v196) & 1) == 0)
  {
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  v197 = *(*(v191 + 48) + 16 * v203 + 8);
  sub_1BE048C84();

LABEL_135:
  *(v19 + 1224) = v197;
  v198 = *(*(v19 + 592) + *(v19 + 880));
  *(v19 + 1232) = v198;
  v199 = v198;
  v200 = sub_1BE052404();
  *(v19 + 1240) = v200;
  if (v197)
  {
    sub_1BE048C84();
    v201 = sub_1BE052404();
  }

  else
  {
    v201 = 0;
  }

  *(v19 + 1248) = v201;
  *(v19 + 80) = v19;
  *(v19 + 120) = v255;
  *(v19 + 88) = sub_1BD76AC9C;
  v202 = swift_continuation_init();
  *(v19 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8);
  *(v19 + 272) = MEMORY[0x1E69E9820];
  *(v19 + 280) = v1;
  *(v19 + 288) = sub_1BD1F07A8;
  *(v19 + 296) = &block_descriptor_169_0;
  *(v19 + 304) = v202;
  [v199 transactionWithServiceIdentifier:v200 transactionSourceIdentifier:v201 completion:v19 + 272];
  v30 = (v19 + 80);
LABEL_60:

  return MEMORY[0x1EEE6DEC8](v30);
}

uint64_t sub_1BD76A274()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1040) = v1;
  if (v1)
  {
    v2 = sub_1BD76C27C;
  }

  else
  {
    v2 = sub_1BD76A384;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD76A384()
{
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 568);

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1BE048C84();
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v6 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1056) = v8;
  *(v0 + 1048) = v6;
  if (v6 >> 62)
  {
LABEL_83:
    v9 = v6 & 0xFFFFFFFFFFFFFF8;
    v10 = sub_1BE053704();
  }

  else
  {
    v9 = v6 & 0xFFFFFFFFFFFFFF8;
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 1072) = v10;
  *(v0 + 1064) = v9;
  *(v0 + 1104) = v7;
  *(v0 + 1096) = v7;
  *(v0 + 1088) = v7;
  *(v0 + 1080) = v7;
  if (!v10)
  {
LABEL_57:
    v49 = *(v0 + 816);

    v50 = swift_task_alloc();
    *(v0 + 1256) = v50;
    *v50 = v0;
    v50[1] = sub_1BD76B7E0;
    v51 = *(v0 + 784);
    v52 = *(v0 + 768);

    return sub_1BD777B0C(v49, v51, v52);
  }

  v11 = 0;
  v12 = v0 + 576;
  v78 = (v0 + 536);
  v7 = 1;
  v79 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = *(v0 + 1048);
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1BFB40900](v11);
    }

    else
    {
      if (v11 >= *(*(v0 + 1064) + 16))
      {
        goto LABEL_61;
      }

      v14 = *(v13 + 8 * v11 + 32);
    }

    v15 = v14;
    *(v0 + 1112) = v14;
    v16 = __OFADD__(v11++, 1);
    *(v0 + 1120) = v11;
    if (v16)
    {
      break;
    }

    v17 = [v14 items];
    if (!v17)
    {
      __break(1u);
      goto LABEL_85;
    }

    v1 = v17;
    v6 = sub_1BE052A34();

    v18 = 0;
    v19 = 0;
    v20 = 1 << *(v6 + 32);
    while (1)
    {
      v21 = *(v6 + 8 * v19 + 56);
      if (v21)
      {
        break;
      }

      ++v19;
      v18 -= 64;
      if ((v20 + 63) >> 6 == v19)
      {
        goto LABEL_8;
      }
    }

    v22 = __clz(__rbit64(v21));
    if (v22 - v20 == v18)
    {
LABEL_8:

LABEL_9:
      if (v11 == *(v0 + 1072))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (-v18 < 0 || (v23 = v22 - v18, v23 >= v20))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      if (((*(v6 + 56 + 8 * (v19 & 0x3FFFFFFFFFFFFFFLL)) >> v22) & 1) == 0)
      {
        goto LABEL_82;
      }

      sub_1BD149C8C(*(v6 + 48) + 40 * v23, v0 + 496);

      v24 = sub_1BE053794();
      *(v0 + 1128) = v24;
      sub_1BD149CE8(v0 + 496);
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (!v25)
      {

        goto LABEL_9;
      }

      v26 = v25;
      v71 = v12;
      v17 = [v25 currencyAmount];
      if (!v17)
      {
        goto LABEL_88;
      }

      v27 = v17;
      v28 = [v17 amount];

      if (!v28)
      {
        goto LABEL_87;
      }

      [v28 decimalValue];
      v77 = *(v0 + 1512);
      *(v0 + 1572) = v77;
      v76 = *(v0 + 1516);
      *(v0 + 1580) = v76;
      v75 = *(v0 + 1518);
      *(v0 + 1582) = v75;
      v74 = *(v0 + 1520);
      *(v0 + 1576) = v74;
      v73 = *(v0 + 1524);
      *(v0 + 1584) = v73;
      v72 = *(v0 + 1526);
      *(v0 + 1586) = v72;
      v29 = *(v0 + 1528);
      *(v0 + 1588) = v29;
      v30 = *(v0 + 1530);
      *(v0 + 1590) = v30;

      MEMORY[0x1BFB40450](v0 + 1292, v77 | (v76 << 32) | (v75 << 48), v74 | (v73 << 32) | (v72 << 48), v29 | (v30 << 16));
      v31 = [v26 type];
      v32 = v79;
      if (!v31)
      {
        v33 = v15;
        MEMORY[0x1BFB3F7A0]();
        if (*(*v78 + 16) >= *(*v78 + 24) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v32 = *v78;
      }

      *(v0 + 1136) = v32;
      v34 = [v26 transactionIdentifiers];
      if (v34)
      {
        v35 = v34;
        v11 = sub_1BE052A34();
      }

      else
      {
        v11 = 0;
      }

      v36 = (v0 + 544);
      *(v0 + 1144) = v11;
      v37 = [v26 rewardsAddedIdentifiers];
      if (v37)
      {
        v38 = v37;
        v39 = sub_1BE052A34();
      }

      else
      {
        v39 = 0;
      }

      v40 = v80;
      *(v0 + 1152) = v39;
      if (v11)
      {
        if (!*(v11 + 16) && v39 && !*(v39 + 16))
        {
          v41 = v15;
          MEMORY[0x1BFB3F7A0]();
          if (*(*(v0 + 544) + 16) >= *(*(v0 + 544) + 24) >> 1)
          {
            sub_1BE052774();
            v36 = (v0 + 544);
          }

          sub_1BE0527C4();
          v40 = *v36;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 1168) = v40;
      *(v0 + 1160) = v11;
      v42 = *(v11 + 32);
      *(v0 + 1592) = v42;
      v43 = -1 << v42;
      if (-(-1 << v42) < 64)
      {
        v44 = ~(-1 << -(-1 << v42));
      }

      else
      {
        v44 = -1;
      }

      v1 = (v44 & *(v11 + 56));
      *(v0 + 1176) = v81;
      *(v0 + 1184) = MEMORY[0x1E69E7CC0];
      sub_1BE048C84();
      if (v1)
      {
        goto LABEL_62;
      }

      v45 = 0;
      while (((63 - v43) >> 6) - 1 != v45)
      {
        v46 = v45 + 1;
        v1 = *(v11 + 8 * v45++ + 64);
        if (v1)
        {
          goto LABEL_63;
        }
      }

      v1 = *(v0 + 1152);
      v47 = *(v0 + 1112);

      v48 = *(v0 + 1176);
      v11 = *(v0 + 1120);
      v79 = *(v0 + 1136);
      v80 = *(v0 + 1168);
      *(v0 + 1104) = v80;
      *(v0 + 1096) = v79;
      v81 = v48;
      *(v0 + 1088) = v48;
      *(v0 + 1080) = MEMORY[0x1E69E7CC0];
      v12 = v71;
      if (v11 == *(v0 + 1072))
      {
        goto LABEL_57;
      }
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  v46 = 0;
LABEL_63:
  *(v0 + 1200) = v46;
  *(v0 + 1192) = v1;
  v54 = *(v0 + 816);
  v55 = (*(v11 + 48) + ((v46 << 10) | (16 * __clz(__rbit64(v1)))));
  *(v0 + 1208) = *v55;
  *(v0 + 1216) = v55[1];
  sub_1BE048C84();
  v56 = [v54 transactionSourceIdentifiers];
  if (!v56)
  {
LABEL_70:
    v64 = 0;
    goto LABEL_71;
  }

  v57 = v56;
  v58 = sub_1BE052A34();

  v17 = v58;
  v59 = 0;
  v60 = 0;
  v61 = 1 << *(v58 + 32);
  while (1)
  {
    v62 = *(v58 + 8 * v60 + 56);
    if (v62)
    {
      break;
    }

    ++v60;
    v59 -= 64;
    if ((v61 + 63) >> 6 == v60)
    {
      goto LABEL_69;
    }
  }

  v63 = __clz(__rbit64(v62));
  if (v63 - v61 == v59)
  {
LABEL_69:

    goto LABEL_70;
  }

  if (-v59 < 0 || (v70 = v63 - v59, v70 >= v61))
  {
LABEL_85:
    __break(1u);
  }

  else if ((*(v58 + 56 + 8 * (v60 & 0x3FFFFFFFFFFFFFFLL)) >> v63))
  {
    v64 = *(*(v58 + 48) + 16 * v70 + 8);
    sub_1BE048C84();

LABEL_71:
    *(v0 + 1224) = v64;
    v65 = *(*(v0 + 592) + *(v0 + 880));
    *(v0 + 1232) = v65;
    v66 = v65;
    v67 = sub_1BE052404();
    *(v0 + 1240) = v67;
    if (v64)
    {
      sub_1BE048C84();
      v68 = sub_1BE052404();
    }

    else
    {
      v68 = 0;
    }

    *(v0 + 1248) = v68;
    *(v0 + 80) = v0;
    *(v0 + 120) = v71;
    *(v0 + 88) = sub_1BD76AC9C;
    v69 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD1F07A8;
    *(v0 + 296) = &block_descriptor_169_0;
    *(v0 + 304) = v69;
    [v66 transactionWithServiceIdentifier:v67 transactionSourceIdentifier:v68 completion:v0 + 272];
    v17 = (v0 + 80);

    return MEMORY[0x1EEE6DEC8](v17);
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1BD76AC9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76AD7C, 0, 0);
}

uint64_t sub_1BD76AD7C()
{
  v3 = *(v0 + 1248);
  v4 = *(v0 + 1240);
  v5 = *(v0 + 576);

  if (!v5)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v0 + 1184);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_88;
    }

    goto LABEL_12;
  }

  v6 = [v5 rewardsTotalAmount];
  if (!v6)
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v6);
  }

  v7 = v6;
  v106 = *(v0 + 1588);
  v8 = *(v0 + 1584);
  v9 = *(v0 + 1576);
  v10 = *(v0 + 1580);
  v11 = *(v0 + 1572);
  v12 = *(v0 + 1582);
  v13 = *(v0 + 1586);

  v14 = v11 | (v12 << 48) | (v10 << 32);
  v15 = v9 | (v13 << 48) | (v8 << 32);

  [v7 decimalValue];
  v16 = *(v0 + 1272);
  v17 = *(v0 + 1280);
  v2 = *(v0 + 1288);

  v18 = MEMORY[0x1BFB40440](v16, v17, v2, v14, v15, v106);
  v1 = *(v0 + 1176);
  if ((v18 & 1) == 0)
  {
    v19 = *(v0 + 816);
    v20 = v5;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v1 = *(v0 + 1176);
    if ((v21 & 1) == 0)
    {
      v1 = sub_1BD1D96EC(0, *(v1 + 16) + 1, 1, *(v0 + 1176));
    }

    v23 = *(v1 + 16);
    v22 = *(v1 + 24);
    if (v23 >= v22 >> 1)
    {
      v1 = sub_1BD1D96EC((v22 > 1), v23 + 1, 1, v1);
    }

    v24 = *(v0 + 816);
    *(v1 + 16) = v23 + 1;
    v25 = v1 + 16 * v23;
    *(v25 + 32) = v20;
    *(v25 + 40) = v24;
  }

  MEMORY[0x1BFB40450](v0 + 1312, v16, v17, v2);

  v26 = *(v0 + 1200);
  v27 = *(v0 + 1184);
  v28 = (*(v0 + 1192) - 1) & *(v0 + 1192);
LABEL_10:
  *(v0 + 1176) = v1;
  while (1)
  {
    *(v0 + 1184) = v27;
    if (v28)
    {
      v36 = *(v0 + 1160);
LABEL_20:
      *(v0 + 1200) = v26;
      *(v0 + 1192) = v28;
      v37 = *(v0 + 816);
      v38 = (*(v36 + 48) + ((v26 << 10) | (16 * __clz(__rbit64(v28)))));
      *(v0 + 1208) = *v38;
      *(v0 + 1216) = v38[1];
      sub_1BE048C84();
      v39 = [v37 transactionSourceIdentifiers];
      if (v39)
      {
        v40 = v39;
        v27 = sub_1BE052A34();

        v41 = 0;
        v42 = 0;
        v43 = 1 << *(v27 + 32);
        while (1)
        {
          v44 = *(v27 + 8 * v42 + 56);
          if (v44)
          {
            break;
          }

          ++v42;
          v41 -= 64;
          if ((v43 + 63) >> 6 == v42)
          {
            goto LABEL_49;
          }
        }

        v67 = __clz(__rbit64(v44));
        if (v67 - v43 == v41)
        {
LABEL_49:

          goto LABEL_50;
        }

        if (-v41 < 0 || (v97 = v67 - v41, v97 >= v43))
        {
          __break(1u);
        }

        else if ((*(v27 + 56 + 8 * (v42 & 0x3FFFFFFFFFFFFFFLL)) >> v67))
        {
          v68 = *(*(v27 + 48) + 16 * v97 + 8);
          sub_1BE048C84();

          goto LABEL_51;
        }

        __break(1u);
LABEL_91:
        sub_1BE052774();
        v87 = (v0 + 536);
        goto LABEL_61;
      }

LABEL_50:
      v68 = 0;
LABEL_51:
      *(v0 + 1224) = v68;
      v69 = *(*(v0 + 592) + *(v0 + 880));
      *(v0 + 1232) = v69;
      v70 = v69;
      v71 = sub_1BE052404();
      *(v0 + 1240) = v71;
      if (v68)
      {
        sub_1BE048C84();
        v72 = sub_1BE052404();
      }

      else
      {
        v72 = 0;
      }

      *(v0 + 1248) = v72;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 576;
      *(v0 + 88) = sub_1BD76AC9C;
      v73 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8);
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1BD1F07A8;
      *(v0 + 296) = &block_descriptor_169_0;
      *(v0 + 304) = v73;
      [v70 transactionWithServiceIdentifier:v71 transactionSourceIdentifier:v72 completion:v0 + 272];
      v6 = (v0 + 80);

      return MEMORY[0x1EEE6DEC8](v6);
    }

    while (1)
    {
      v35 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v36 = *(v0 + 1160);
      if (v35 >= (((1 << *(v0 + 1592)) + 63) >> 6))
      {
        break;
      }

      v28 = *(v36 + 8 * v35 + 56);
      ++v26;
      if (v28)
      {
        v26 = v35;
        goto LABEL_20;
      }
    }

    v45 = *(v0 + 1112);

    v46 = *(v0 + 1176);
    v47 = *(v0 + 1120);
    v103 = *(v0 + 1136);
    v104 = *(v0 + 1168);
    *(v0 + 1104) = v104;
    *(v0 + 1096) = v103;
    v105 = v46;
    *(v0 + 1088) = v46;
    v107 = v27;
    *(v0 + 1080) = v27;
    if (v47 == *(v0 + 1072))
    {
      break;
    }

    v1 = 1;
    v27 = 0x1E69B8000uLL;
LABEL_29:
    v48 = *(v0 + 1048);
    if ((v48 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x1BFB40900](v47);
LABEL_32:
      v2 = v49;
      *(v0 + 1112) = v49;
      v50 = __OFADD__(v47++, 1);
      *(v0 + 1120) = v47;
      if (v50)
      {
        goto LABEL_84;
      }

      v51 = [v49 items];
      if (!v51)
      {
        __break(1u);
LABEL_93:
        sub_1BE052774();
        v96 = (v0 + 544);
LABEL_71:
        sub_1BE0527C4();
        v94 = *v96;
LABEL_72:
        v93 = v47;
        goto LABEL_78;
      }

      v52 = v51;
      v53 = sub_1BE052A34();

      v54 = 0;
      v55 = 0;
      v56 = 1 << *(v53 + 32);
      while (1)
      {
        v57 = *(v53 + 8 * v55 + 56);
        if (v57)
        {
          break;
        }

        ++v55;
        v54 -= 64;
        if ((v56 + 63) >> 6 == v55)
        {
          goto LABEL_27;
        }
      }

      v58 = __clz(__rbit64(v57));
      if (v58 - v56 == v54)
      {
LABEL_27:

        goto LABEL_28;
      }

      if (-v54 < 0)
      {
        goto LABEL_86;
      }

      v59 = v58 - v54;
      if (v59 >= v56)
      {
        goto LABEL_86;
      }

      if (((*(v53 + 56 + 8 * (v55 & 0x3FFFFFFFFFFFFFFLL)) >> v58) & 1) == 0)
      {
        goto LABEL_87;
      }

      sub_1BD149C8C(*(v53 + 48) + 40 * v59, v0 + 496);

      v60 = sub_1BE053794();
      *(v0 + 1128) = v60;
      sub_1BD149CE8(v0 + 496);
      objc_opt_self();
      v61 = swift_dynamicCastObjCClass();
      if (!v61)
      {

LABEL_28:
        if (v47 == *(v0 + 1072))
        {
          break;
        }

        goto LABEL_29;
      }

      v40 = v61;
      v6 = [v61 currencyAmount];
      if (!v6)
      {
        goto LABEL_96;
      }

      v74 = v6;
      v75 = [v6 amount];

      if (!v75)
      {
        goto LABEL_95;
      }

      [v75 decimalValue];
      v102 = *(v0 + 1512);
      *(v0 + 1572) = v102;
      v76 = *(v0 + 1516);
      *(v0 + 1580) = v76;
      v77 = *(v0 + 1518);
      *(v0 + 1582) = v77;
      v78 = *(v0 + 1520);
      *(v0 + 1576) = v78;
      v79 = *(v0 + 1524);
      *(v0 + 1584) = v79;
      v80 = *(v0 + 1526);
      *(v0 + 1586) = v80;
      v81 = *(v0 + 1528);
      *(v0 + 1588) = v81;
      v82 = v75;
      v83 = *(v0 + 1530);
      *(v0 + 1590) = v83;

      MEMORY[0x1BFB40450](v0 + 1292, v102 | (v76 << 32) | (v77 << 48), v78 | (v79 << 32) | (v80 << 48), v81 | (v83 << 16));
      v84 = [v40 type];
      v27 = v107;
      v1 = v105;
      v85 = v103;
      if (v84)
      {
        goto LABEL_62;
      }

      v86 = v2;
      v87 = (v0 + 536);
      MEMORY[0x1BFB3F7A0]();
      if (*(*(v0 + 536) + 16) >= *(*(v0 + 536) + 24) >> 1)
      {
        goto LABEL_91;
      }

LABEL_61:
      sub_1BE0527C4();
      v85 = *v87;
LABEL_62:
      *(v0 + 1136) = v85;
      v88 = [v40 transactionIdentifiers];
      v47 = 0;
      if (v88)
      {
        v89 = v88;
        v47 = sub_1BE052A34();
      }

      *(v0 + 1144) = v47;
      v90 = [v40 rewardsAddedIdentifiers];
      v91 = 0;
      if (v90)
      {
        v92 = v90;
        v91 = sub_1BE052A34();
      }

      *(v0 + 1152) = v91;
      v93 = MEMORY[0x1E69E7CD0];
      if (!v47)
      {
        v94 = v104;
        goto LABEL_78;
      }

      v94 = v104;
      if (*(v47 + 16) || !v91)
      {
        goto LABEL_72;
      }

      v93 = v47;
      if (!*(v91 + 16))
      {
        v95 = v2;
        v96 = (v0 + 544);
        MEMORY[0x1BFB3F7A0]();
        if (*(*(v0 + 544) + 16) < *(*(v0 + 544) + 24) >> 1)
        {
          goto LABEL_71;
        }

        goto LABEL_93;
      }

LABEL_78:
      *(v0 + 1168) = v94;
      *(v0 + 1160) = v93;
      v98 = *(v93 + 32);
      *(v0 + 1592) = v98;
      v99 = 1 << v98;
      v100 = *(v93 + 56);
      if (v99 < 64)
      {
        v101 = ~(-1 << v99);
      }

      else
      {
        v101 = -1;
      }

      v28 = v101 & v100;
      sub_1BE048C84();
      v26 = 0;
      goto LABEL_10;
    }

    if (v47 < *(*(v0 + 1064) + 16))
    {
      v49 = *(v48 + 8 * v47 + 32);
      goto LABEL_32;
    }

LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    v27 = sub_1BD03B038(0, *(v27 + 16) + 1, 1, v27);
LABEL_12:
    v31 = *(v27 + 16);
    v30 = *(v27 + 24);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1BD03B038((v30 > 1), v31 + 1, 1, v27);
    }

    v32 = *(v0 + 1216);
    v33 = *(v0 + 1208);
    *(v27 + 16) = v31 + 1;
    v34 = v27 + 16 * v31;
    *(v34 + 32) = v33;
    *(v34 + 40) = v32;
    v26 = *(v0 + 1200);
    v28 = (*(v0 + 1192) - 1) & *(v0 + 1192);
  }

  v62 = *(v0 + 816);

  v63 = swift_task_alloc();
  *(v0 + 1256) = v63;
  *v63 = v0;
  v63[1] = sub_1BD76B7E0;
  v64 = *(v0 + 784);
  v65 = *(v0 + 768);

  return sub_1BD777B0C(v62, v64, v65);
}

uint64_t sub_1BD76B7E0(uint64_t a1)
{
  *(*v1 + 1264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD76B8E0, 0, 0);
}

uint64_t sub_1BD76B8E0()
{
  v77 = v0 + 169;
  v1 = (v0 + 1372);
  v79 = (v0 + 1332);
  v80 = v0 + 174;
  v78 = (v0 + 179);

  v81 = v0[158];
  v2 = v0[137];
  v98 = v0[136];
  v99 = v0[138];
  v97 = v0[135];
  v3 = v0[114];
  (*(v0[91] + 16))(v0[93], v0[98], v0[90]);
  if (v3)
  {
    v4 = v0[114];
    if (v4 >> 62)
    {
      v73 = sub_1BE053704();
    }

    else
    {
      v73 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v73 = 0;
  }

  v88 = v0[123];
  v86 = v0[121];
  v94 = v0[116];
  v68 = v0[115];
  v90 = v0[112];
  v93 = v0[99];
  v89 = v0[98];
  v87 = v0[97];
  v72 = v0[93];
  v100 = v0[91];
  v95 = v0[90];
  v91 = v0[88];
  v92 = v0[86];
  v85 = v0[83];
  v83 = v0[85];
  v84 = v0[82];
  v5 = *(v0 + 97);
  *(v0 + 362) = *(v0 + 392);
  v82 = v0[80];
  *v78 = v5;
  v6 = *(v0 + 92);
  *(v0 + 357) = *(v0 + 372);
  v7 = v0[79];
  *(v0 + 1412) = v6;
  v8 = *(v0 + 1532);
  *(v0 + 352) = *(v0 + 387);
  *(v0 + 347) = *(v0 + 377);
  v9 = v0[78];
  *v80 = v8;
  *v1 = *(v0 + 1492);
  v10 = *(v0 + 1292);
  *(v0 + 342) = *(v0 + 327);
  *(v0 + 337) = *(v0 + 332);
  v74 = v0[76];
  v75 = v9;
  *v77 = v10;
  v11 = v0[75];
  *v79 = *(v0 + 82);
  v76 = v0[74];
  sub_1BE048C84();
  sub_1BE048C84();
  v12 = MEMORY[0x1BFB403C0](0);
  v70 = v13;
  v71 = v12;
  v69 = v14;
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  sub_1BE048C84();
  v15 = MEMORY[0x1BFB403C0](0);
  v66 = v16;
  v67 = v15;
  v65 = v17;
  v18 = *(v100 + 32);
  v18(v7, v72, v95);
  *(v7 + v11[5]) = v73;
  v19 = v7 + v11[6];
  v20 = *v78;
  *(v19 + 16) = *(v0 + 362);
  *v19 = v20;
  v21 = v7 + v11[7];
  v22 = *(v0 + 1412);
  *(v21 + 16) = *(v0 + 357);
  *v21 = v22;
  v23 = v7 + v11[8];
  v24 = *(v0 + 352);
  *v23 = *v80;
  *(v23 + 16) = v24;
  v25 = v7 + v11[9];
  v26 = *(v0 + 347);
  *v25 = *v1;
  *(v25 + 16) = v26;
  *(v7 + v11[10]) = v99;
  *(v7 + v11[11]) = v2;
  v27 = v7 + v11[12];
  v28 = *(v0 + 342);
  *v27 = *v77;
  *(v27 + 16) = v28;
  v29 = v7 + v11[13];
  v30 = *(v0 + 337);
  *v29 = *v79;
  *(v29 + 16) = v30;
  v31 = v7 + v11[14];
  *v31 = v71;
  *(v31 + 8) = v70;
  *(v31 + 16) = v69;
  *(v7 + v11[15]) = v81;
  *(v7 + v11[16]) = v98;
  *(v7 + v11[17]) = v97;
  *(v7 + v11[18]) = v68;
  *(v7 + v11[19]) = v94;
  v32 = v7 + v11[20];
  *v32 = v67;
  *(v32 + 8) = v66;
  *(v32 + 16) = v65;
  v33 = sub_1BE052D54();
  sub_1BD77BFE0(v7, v75, type metadata accessor for AccountDebugTransactionGroup);
  v34 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v76;
  sub_1BD77C264(v75, v35 + v34, type metadata accessor for AccountDebugTransactionGroup);
  v0[54] = sub_1BD77C4AC;
  v0[55] = v35;
  v0[50] = MEMORY[0x1E69E9820];
  v0[51] = 1107296256;
  v0[52] = sub_1BD126964;
  v0[53] = &block_descriptor_163_0;
  v36 = _Block_copy(v0 + 50);
  v76;
  sub_1BE051F74();
  v0[70] = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v83, v84, v36);
  _Block_release(v36);

  v86(v84, v82);
  v88(v83, v85);

  sub_1BE04ADD4();
  v37 = v95;
  v90(v89, v95);
  v96 = v18;
  v18(v89, v87, v37);
  v38 = sub_1BE04AE64();
  sub_1BD765BC8(v91);
  v39 = sub_1BE04B374();
  v93(v91, v92);
  v40 = PKEndOfMonthWithTimeZone();

  if (!v40)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v41);
  }

  v42 = v0[112];
  v43 = v0[97];
  v44 = v0[96];
  v45 = v0[92];
  v46 = v0[91];
  v47 = v0[90];
  v48 = v0[79];

  sub_1BE04AEE4();

  sub_1BD77C048(v48, type metadata accessor for AccountDebugTransactionGroup);
  v42(v44, v47);

  v96(v44, v45, v47);
  sub_1BE04AEF4();
  LOBYTE(v42) = sub_1BE04AE84();
  v51 = *(v46 + 8);
  v49 = v46 + 8;
  v50 = v51;
  v51(v43, v47);
  if (v42)
  {
    v0[112] = v50;
    v0[111] = v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v52 = v0[107];
    v53 = v0[74];
    v54 = *(v53 + v52);
    v55 = sub_1BE04AE64();
    v56 = sub_1BE04AE64();
    [v54 setLimit:0 startDate:v55 endDate:v56];

    v57 = *(v53 + v52);
    v0[113] = v57;
    v0[2] = v0;
    v0[7] = v0 + 73;
    v0[3] = sub_1BD76852C;
    v58 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1BD9C18BC;
    v0[29] = &block_descriptor_151_0;
    v0[30] = v58;
    [v57 reloadTransactionsWithCompletion_];
    v41 = v0 + 2;

    return MEMORY[0x1EEE6DEC8](v41);
  }

  v59 = v0[102];
  v60 = v0[98];
  v61 = v0[96];
  v62 = v0[90];

  v50(v61, v62);
  v50(v60, v62);

  v63 = v0[1];

  return v63();
}

uint64_t sub_1BD76C27C()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1016);
  v5 = *(v0 + 1008);
  v6 = *(v0 + 1000);
  swift_willThrow();

  *(v0 + 1056) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + 1048) = MEMORY[0x1E69E7CC0];
  v8 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_80:
    v9 = sub_1BE053704();
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 1072) = v9;
  *(v0 + 1064) = v8;
  *(v0 + 1104) = v7;
  *(v0 + 1096) = v7;
  *(v0 + 1088) = v7;
  *(v0 + 1080) = v7;
  if (!v9)
  {
LABEL_54:
    v48 = *(v0 + 816);

    v49 = swift_task_alloc();
    *(v0 + 1256) = v49;
    *v49 = v0;
    v49[1] = sub_1BD76B7E0;
    v50 = *(v0 + 784);
    v51 = *(v0 + 768);

    return sub_1BD777B0C(v48, v50, v51);
  }

  v10 = 0;
  v11 = v0 + 576;
  v77 = (v0 + 536);
  v7 = &selRef_issuerAdministrativeAreaCode;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  v80 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = *(v0 + 1048);
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1BFB40900](v10);
    }

    else
    {
      if (v10 >= *(*(v0 + 1064) + 16))
      {
        goto LABEL_58;
      }

      v13 = *(v12 + 8 * v10 + 32);
    }

    v14 = v13;
    *(v0 + 1112) = v13;
    v15 = __OFADD__(v10++, 1);
    *(v0 + 1120) = v10;
    if (v15)
    {
      break;
    }

    v16 = [v13 items];
    if (!v16)
    {
      __break(1u);
      goto LABEL_82;
    }

    v5 = v16;
    v8 = sub_1BE052A34();

    v17 = 0;
    v18 = 0;
    v19 = 1 << *(v8 + 32);
    while (1)
    {
      v20 = *(v8 + 8 * v18 + 56);
      if (v20)
      {
        break;
      }

      ++v18;
      v17 -= 64;
      if ((v19 + 63) >> 6 == v18)
      {
        goto LABEL_5;
      }
    }

    v21 = __clz(__rbit64(v20));
    if (v21 - v19 == v17)
    {
LABEL_5:

LABEL_6:
      if (v10 == *(v0 + 1072))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (-v17 < 0 || (v22 = v21 - v17, v22 >= v19))
      {
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (((*(v8 + 56 + 8 * (v18 & 0x3FFFFFFFFFFFFFFLL)) >> v21) & 1) == 0)
      {
        goto LABEL_79;
      }

      sub_1BD149C8C(*(v8 + 48) + 40 * v22, v0 + 496);

      v23 = sub_1BE053794();
      *(v0 + 1128) = v23;
      sub_1BD149CE8(v0 + 496);
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      if (!v24)
      {

        goto LABEL_6;
      }

      v25 = v24;
      v70 = v11;
      v16 = [v24 currencyAmount];
      if (!v16)
      {
        goto LABEL_85;
      }

      v26 = v16;
      v27 = [v16 amount];

      if (!v27)
      {
        goto LABEL_84;
      }

      [v27 decimalValue];
      v76 = *(v0 + 1512);
      *(v0 + 1572) = v76;
      v75 = *(v0 + 1516);
      *(v0 + 1580) = v75;
      v74 = *(v0 + 1518);
      *(v0 + 1582) = v74;
      v73 = *(v0 + 1520);
      *(v0 + 1576) = v73;
      v72 = *(v0 + 1524);
      *(v0 + 1584) = v72;
      v71 = *(v0 + 1526);
      *(v0 + 1586) = v71;
      v28 = *(v0 + 1528);
      *(v0 + 1588) = v28;
      v29 = *(v0 + 1530);
      *(v0 + 1590) = v29;

      MEMORY[0x1BFB40450](v0 + 1292, v76 | (v75 << 32) | (v74 << 48), v73 | (v72 << 32) | (v71 << 48), v28 | (v29 << 16));
      v30 = [v25 type];
      v31 = v78;
      if (!v30)
      {
        v32 = v14;
        MEMORY[0x1BFB3F7A0]();
        if (*(*v77 + 16) >= *(*v77 + 24) >> 1)
        {
          sub_1BE052774();
        }

        sub_1BE0527C4();
        v31 = *v77;
      }

      *(v0 + 1136) = v31;
      v33 = [v25 transactionIdentifiers];
      if (v33)
      {
        v34 = v33;
        v10 = sub_1BE052A34();
      }

      else
      {
        v10 = 0;
      }

      v35 = (v0 + 544);
      *(v0 + 1144) = v10;
      v36 = [v25 rewardsAddedIdentifiers];
      if (v36)
      {
        v37 = v36;
        v38 = sub_1BE052A34();
      }

      else
      {
        v38 = 0;
      }

      v39 = v79;
      *(v0 + 1152) = v38;
      if (v10)
      {
        if (!*(v10 + 16) && v38 && !*(v38 + 16))
        {
          v40 = v14;
          MEMORY[0x1BFB3F7A0]();
          if (*(*(v0 + 544) + 16) >= *(*(v0 + 544) + 24) >> 1)
          {
            sub_1BE052774();
            v35 = (v0 + 544);
          }

          sub_1BE0527C4();
          v39 = *v35;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E7CD0];
      }

      *(v0 + 1168) = v39;
      *(v0 + 1160) = v10;
      v41 = *(v10 + 32);
      *(v0 + 1592) = v41;
      v42 = -1 << v41;
      if (-(-1 << v41) < 64)
      {
        v43 = ~(-1 << -(-1 << v41));
      }

      else
      {
        v43 = -1;
      }

      v5 = (v43 & *(v10 + 56));
      *(v0 + 1176) = v80;
      *(v0 + 1184) = MEMORY[0x1E69E7CC0];
      sub_1BE048C84();
      if (v5)
      {
        goto LABEL_59;
      }

      v44 = 0;
      while (((63 - v42) >> 6) - 1 != v44)
      {
        v45 = v44 + 1;
        v5 = *(v10 + 8 * v44++ + 64);
        if (v5)
        {
          goto LABEL_60;
        }
      }

      v5 = *(v0 + 1152);
      v46 = *(v0 + 1112);

      v47 = *(v0 + 1176);
      v10 = *(v0 + 1120);
      v78 = *(v0 + 1136);
      v79 = *(v0 + 1168);
      *(v0 + 1104) = v79;
      *(v0 + 1096) = v78;
      v80 = v47;
      *(v0 + 1088) = v47;
      *(v0 + 1080) = MEMORY[0x1E69E7CC0];
      v11 = v70;
      if (v10 == *(v0 + 1072))
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  v45 = 0;
LABEL_60:
  *(v0 + 1200) = v45;
  *(v0 + 1192) = v5;
  v53 = *(v0 + 816);
  v54 = (*(v10 + 48) + ((v45 << 10) | (16 * __clz(__rbit64(v5)))));
  *(v0 + 1208) = *v54;
  *(v0 + 1216) = v54[1];
  sub_1BE048C84();
  v55 = [v53 transactionSourceIdentifiers];
  if (!v55)
  {
LABEL_67:
    v63 = 0;
    goto LABEL_68;
  }

  v56 = v55;
  v57 = sub_1BE052A34();

  v16 = v57;
  v58 = 0;
  v59 = 0;
  v60 = 1 << *(v57 + 32);
  while (1)
  {
    v61 = *(v57 + 8 * v59 + 56);
    if (v61)
    {
      break;
    }

    ++v59;
    v58 -= 64;
    if ((v60 + 63) >> 6 == v59)
    {
      goto LABEL_66;
    }
  }

  v62 = __clz(__rbit64(v61));
  if (v62 - v60 == v58)
  {
LABEL_66:

    goto LABEL_67;
  }

  if (-v58 < 0 || (v69 = v62 - v58, v69 >= v60))
  {
LABEL_82:
    __break(1u);
  }

  else if ((*(v57 + 56 + 8 * (v59 & 0x3FFFFFFFFFFFFFFLL)) >> v62))
  {
    v63 = *(*(v57 + 48) + 16 * v69 + 8);
    sub_1BE048C84();

LABEL_68:
    *(v0 + 1224) = v63;
    v64 = *(*(v0 + 592) + *(v0 + 880));
    *(v0 + 1232) = v64;
    v65 = v64;
    v66 = sub_1BE052404();
    *(v0 + 1240) = v66;
    if (v63)
    {
      sub_1BE048C84();
      v67 = sub_1BE052404();
    }

    else
    {
      v67 = 0;
    }

    *(v0 + 1248) = v67;
    *(v0 + 80) = v0;
    *(v0 + 120) = v70;
    *(v0 + 88) = sub_1BD76AC9C;
    v68 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD1F07A8;
    *(v0 + 296) = &block_descriptor_169_0;
    *(v0 + 304) = v68;
    [v65 transactionWithServiceIdentifier:v66 transactionSourceIdentifier:v67 completion:v0 + 272];
    v16 = (v0 + 80);

    return MEMORY[0x1EEE6DEC8](v16);
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v16);
}

uint64_t sub_1BD76CB84(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD76CC08()
{
  v1[52] = v0;
  v2 = sub_1BE051F54();
  v1[53] = v2;
  v1[54] = *(v2 - 8);
  v1[55] = swift_task_alloc();
  v3 = sub_1BE051FA4();
  v1[56] = v3;
  v1[57] = *(v3 - 8);
  v1[58] = swift_task_alloc();
  v4 = type metadata accessor for AccountDebugTransactionGroup(0);
  v1[59] = v4;
  v5 = *(v4 - 8);
  v1[60] = v5;
  v1[61] = *(v5 + 64);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v1[64] = swift_task_alloc();
  v6 = sub_1BE04AF64();
  v1[65] = v6;
  v1[66] = *(v6 - 8);
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD76CE64, 0, 0);
}

uint64_t sub_1BD76CE64()
{
  v1 = *(v0 + 416);
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService);
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account;
  v4 = *(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account);
  v5 = v2;
  v6 = [v4 accountIdentifier];
  v7 = [*(v1 + v3) savingsDetails];
  if (!v7)
  {
    goto LABEL_31;
  }

  v8 = v7;
  v9 = [v7 createdDate];

  v10 = *(v0 + 576);
  if (v9)
  {
    v11 = *(v0 + 568);
    v12 = *(v0 + 528);
    v13 = *(v0 + 520);
    v14 = *(v0 + 512);
    sub_1BE04AEE4();

    v15 = *(v12 + 32);
    v15(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    v15(v10, v14, v13);
  }

  else
  {
    v16 = *(v0 + 528);
    v17 = *(v0 + 520);
    v18 = *(v0 + 512);
    (*(v16 + 56))(v18, 1, 1, v17);
    sub_1BE04AEF4();
    if ((*(v16 + 48))(v18, 1, v17) != 1)
    {
      sub_1BD0DE53C(*(v0 + 512), &unk_1EBD39970);
    }
  }

  v19 = *(v0 + 576);
  v20 = *(v0 + 568);
  v21 = *(v0 + 528);
  v22 = *(v0 + 520);
  v23 = sub_1BE04AE64();
  v24 = *(v21 + 8);
  *(v0 + 584) = v24;
  *(v0 + 592) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v19, v22);
  sub_1BE04AEF4();
  v25 = sub_1BE04AE64();
  v24(v20, v22);
  v26 = [v5 accountBalancesForAccountIdentifier:v6 startDate:v23 endDate:v25 type:1];

  if (!v26)
  {
    goto LABEL_23;
  }

  sub_1BD0E5E8C(0, &qword_1EBD4DFC0);
  v27 = sub_1BE052744();
  *(v0 + 600) = v27;

  sub_1BE048C84();
  v28 = sub_1BD644898(1, v27);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = v27 >> 62;
  if (!(v27 >> 62))
  {
    v36 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v37 = v36 != 0;
    if (v36 >= v37)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

  v7 = sub_1BE053704();
  if (v7 < 0)
  {
LABEL_32:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v7);
  }

  v36 = v7;
  v37 = v7 != 0;
  v7 = sub_1BE053704();
  if (v7 < v37)
  {
    goto LABEL_30;
  }

  v7 = sub_1BE053704();
  if (v7 < v36)
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_10:
  v67 = v34;
  v38 = v30;
  v39 = v28;
  if ((v27 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    if (v36 >= 2)
    {
      v40 = v37;
      do
      {
        v41 = v40 + 1;
        sub_1BE053864();
        v40 = v41;
      }

      while (v36 != v41);
    }

    if (!v35)
    {
      goto LABEL_15;
    }

LABEL_17:

    v42 = sub_1BE0539D4();
    v37 = v45;
    goto LABEL_18;
  }

  sub_1BE048C84();
  if (v35)
  {
    goto LABEL_17;
  }

LABEL_15:
  v42 = v27 & 0xFFFFFFFFFFFFFF8;
  v43 = (v27 & 0xFFFFFFFFFFFFFF8) + 32;
  v44 = (2 * v36) | 1;
LABEL_18:
  *(v0 + 80) = v39;
  *(v0 + 88) = v38;
  *(v0 + 96) = v32;
  *(v0 + 104) = v67;
  *(v0 + 112) = v32;
  *(v0 + 120) = v42;
  *(v0 + 128) = v43;
  *(v0 + 136) = v37;
  *(v0 + 144) = v44;
  *(v0 + 152) = v37;
  *(v0 + 160) = 0;
  *(v0 + 608) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
  *(v0 + 616) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  v46 = sub_1BD778178();
  if (v46)
  {
    *(v0 + 624) = v46;
    v66 = *(v0 + 608);
    v48 = *(v0 + 584);
    v49 = *(v0 + 568);
    v50 = *(v0 + 560);
    v51 = *(v0 + 520);
    v52 = *(v0 + 416);
    *(v0 + 632) = v47;
    v53 = v47;
    v54 = v46;
    v55 = *(v52 + v66);
    v56 = [v54 date];
    sub_1BE04AEE4();

    sub_1BE04ADD4();
    v48(v50, v51);
    v57 = sub_1BE04AE64();
    v48(v49, v51);
    v58 = [v53 date];
    sub_1BE04AEE4();

    v59 = sub_1BE04AE64();
    v48(v49, v51);
    [v55 setLimit:0 startDate:v57 endDate:v59];

    v60 = *(v52 + v66);
    *(v0 + 640) = v60;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 400;
    *(v0 + 24) = sub_1BD76D578;
    v61 = swift_continuation_init();
    *(v0 + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    *(v0 + 320) = v61;
    *(v0 + 288) = MEMORY[0x1E69E9820];
    *(v0 + 296) = 1107296256;
    *(v0 + 304) = sub_1BD9C18BC;
    *(v0 + 312) = &block_descriptor_140_0;
    [v60 reloadTransactionsWithCompletion_];
    v7 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v7);
  }

  v62 = *(v0 + 128);
  *(v0 + 216) = *(v0 + 112);
  *(v0 + 232) = v62;
  *(v0 + 248) = *(v0 + 144);
  *(v0 + 264) = *(v0 + 160);
  v63 = *(v0 + 96);
  *(v0 + 184) = *(v0 + 80);
  *(v0 + 200) = v63;
  sub_1BD0DE53C(v0 + 184, &qword_1EBD525D8);

LABEL_23:

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_1BD76D578()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76D658, 0, 0);
}

uint64_t sub_1BD76D658()
{
  v1 = v0[50];

  *(v0 + 164) = MEMORY[0x1BFB403C0](0);
  v2 = v0 + 164;
  *(v0 + 172) = v3;
  *(v0 + 45) = v4;
  *(v0 + 268) = MEMORY[0x1BFB403C0](0);
  *(v0 + 276) = v5;
  *(v0 + 71) = v6;
  v0[81] = MEMORY[0x1BFB403C0](0);
  v0[82] = v7;
  *(v0 + 166) = v8;
  *(v0 + 668) = MEMORY[0x1BFB403C0](0);
  *(v0 + 676) = v9;
  *(v0 + 171) = v10;
  if (v1)
  {
    v11 = v1;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11 >> 62)
  {
LABEL_59:
    v12 = sub_1BE053704();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v116 = v1;
  v118 = v2 + 504;
  v128 = v2;
  v121 = v2 + 104;
  if (v12)
  {
    v133 = v11 & 0xC000000000000001;
    v125 = v11 & 0xFFFFFFFFFFFFFF8;
    sub_1BE048C84();
    v13 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    v129 = v11;
    v131 = v12;
    while (1)
    {
      if (v133)
      {
        v18 = MEMORY[0x1BFB40900](v13, v11);
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 >= *(v125 + 16))
        {
          goto LABEL_58;
        }

        v18 = *&v11[8 * v13 + 32];
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }
      }

      v20 = *(v0[52] + v0[77]);
      v21 = v18;
      v22 = v20;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1BD1D96EC(0, *(v1 + 2) + 1, 1, v1);
      }

      v24 = *(v1 + 2);
      v23 = *(v1 + 3);
      if (v24 >= v23 >> 1)
      {
        v1 = sub_1BD1D96EC((v23 > 1), v24 + 1, 1, v1);
      }

      *(v1 + 2) = v24 + 1;
      v25 = &v1[16 * v24];
      *(v25 + 4) = v21;
      *(v25 + 5) = v22;
      if ([v21 transactionStatus] != 2)
      {
        v135 = v1;
        if ([v21 transactionStatus])
        {
          goto LABEL_25;
        }

        sub_1BE04AEF4();
        v26 = [v21 transactionDate];
        if (!v26)
        {
          goto LABEL_63;
        }

        v27 = v26;
        v28 = v0[73];
        v29 = v0[71];
        v30 = v0[69];
        v2 = v0[68];
        v31 = v0[65];
        sub_1BE04AEE4();

        sub_1BE04ADD4();
        sub_1BD77C1B8(&qword_1EBD525D0, MEMORY[0x1E6969530]);
        LOBYTE(v27) = sub_1BE0522F4();
        v28(v29, v31);
        v28(v30, v31);
        v28(v2, v31);
        v1 = v135;
        v11 = v129;
        if (v27)
        {
LABEL_25:
          v32 = [v21 transactionType];
          v33 = 0;
          if ((v32 - 4) >= 2 && v32)
          {
            if (v32 == 7)
            {
              v34 = [v21 adjustmentType];
              if (v34 >= 0x12)
              {
                v33 = 0;
              }

              else
              {
                v33 = 0x2A60Au >> v34;
              }
            }

            else
            {
              v33 = 1;
            }
          }

          v26 = [v21 amount];
          if (!v26)
          {
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v26);
          }

          v35 = v26;
          v36 = [v26 pk_absoluteValue];

          if (!v36)
          {
            goto LABEL_62;
          }

          [v36 decimalValue];
          v37 = v0[86];
          v38 = v0[87];
          v2 = *(v0 + 176);

          if (v33)
          {
            MEMORY[0x1BFB40450](v128, v37, v38, v2);
          }

          else
          {
            MEMORY[0x1BFB40460](v121, v37, v38, v2);
          }

          v39 = [v21 transactionType];
          v1 = v135;
          v11 = v129;
          if (v39 == 11)
          {
            v14 = *(v0 + 171);
            v15 = *(v0 + 668);
            v16 = *(v0 + 676);
            v17 = v118;
          }

          else
          {
            if (v39 != 9)
            {
              goto LABEL_10;
            }

            v17 = (v0 + 81);
            v15 = v37;
            v16 = v38;
            v14 = v2;
          }

          MEMORY[0x1BFB40450](v17, v15, v16, v14);
        }
      }

LABEL_10:

      ++v13;
      if (v19 == v131)
      {
        v136 = v1;

        v2 = v128;
        goto LABEL_42;
      }
    }
  }

  sub_1BE048C84();

  v136 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v132 = v2 - 84;
  v40 = v0[79];
  v41 = [v0[78] balance];
  [v41 decimalValue];

  v42 = [v40 balance];
  [v42 decimalValue];

  v43 = sub_1BE053394();
  v45 = v44;
  v47 = v46;
  v48 = sub_1BE053394();
  v49 = MEMORY[0x1BFB40440](v48);
  v50 = v0[79];
  if (v49)
  {
    v51 = v0[78];
  }

  else
  {
    v115 = v43;
    v52 = [v50 date];
    sub_1BE04AEE4();

    v111 = v45;
    v110 = v47;
    if (v116)
    {
      if (v116 >> 62)
      {
        v53 = sub_1BE053704();
      }

      else
      {
        v53 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v54 = v121;
    }

    else
    {
      v53 = 0;
      v54 = v121;
    }

    v130 = v0[78];
    v55 = v0[66];
    v105 = v0[65];
    v106 = v0[67];
    v56 = v0[63];
    v107 = v0[62];
    v108 = v0[60];
    v57 = v0[59];
    v123 = v0[79];
    v126 = v0[57];
    v134 = v0[56];
    v112 = v0[58];
    v113 = v0[55];
    v117 = v0[54];
    v114 = v0[53];
    v109 = v0[52];
    v143 = *(v0 + 81);
    v144 = *(v0 + 166);
    v141 = *v118;
    v142 = *(v118 + 4);
    v139 = *v128;
    v140 = *(v128 + 4);
    v138 = *(v54 + 4);
    v137 = *v54;
    v58 = MEMORY[0x1BFB403C0](0);
    v120 = v59;
    v122 = v58;
    v119 = v60;
    v104 = MEMORY[0x1BFB403C0](0);
    v62 = v61;
    v103 = v63;
    v64 = MEMORY[0x1BFB403C0](0);
    v66 = v65;
    v68 = v67;
    (*(v55 + 32))(v56, v106, v105);
    *(v56 + v57[5]) = v53;
    v69 = v56 + v57[6];
    *v69 = v143;
    *(v69 + 16) = v144;
    v70 = v56 + v57[7];
    *v70 = v141;
    *(v70 + 16) = v142;
    v71 = v56 + v57[8];
    *(v71 + 16) = v140;
    *v71 = v139;
    v72 = v56 + v57[9];
    *(v72 + 16) = v138;
    *v72 = v137;
    v73 = MEMORY[0x1E69E7CC0];
    *(v56 + v57[10]) = MEMORY[0x1E69E7CC0];
    *(v56 + v57[11]) = v73;
    v74 = v56 + v57[12];
    *v74 = v122;
    *(v74 + 8) = v120;
    *(v74 + 16) = v119;
    v75 = v56 + v57[13];
    *v75 = v104;
    *(v75 + 8) = v62;
    *(v75 + 16) = v103;
    v76 = v56 + v57[14];
    *v76 = v64;
    *(v76 + 8) = v66;
    *(v76 + 16) = v68;
    *(v56 + v57[15]) = v73;
    *(v56 + v57[16]) = v73;
    *(v56 + v57[17]) = v73;
    *(v56 + v57[18]) = v73;
    *(v56 + v57[19]) = v136;
    v77 = v56 + v57[20];
    *v77 = v115;
    *(v77 + 8) = v111;
    *(v77 + 16) = v110;
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v78 = sub_1BE052D54();
    v79 = v0;
    sub_1BD77BFE0(v56, v107, type metadata accessor for AccountDebugTransactionGroup);
    v80 = (*(v108 + 80) + 24) & ~*(v108 + 80);
    v81 = swift_allocObject();
    *(v81 + 16) = v109;
    sub_1BD77C264(v107, v81 + v80, type metadata accessor for AccountDebugTransactionGroup);
    v79[48] = sub_1BD77C2CC;
    v79[49] = v81;
    v79[44] = MEMORY[0x1E69E9820];
    v79[45] = 1107296256;
    v79[46] = sub_1BD126964;
    v79[47] = &block_descriptor_146_1;
    v82 = _Block_copy(v128 + 188);
    v83 = v109;
    sub_1BE051F74();
    v79[51] = v73;
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v112, v113, v82);
    _Block_release(v82);

    (*(v117 + 8))(v113, v114);
    (*(v126 + 8))(v112, v134);
    v0 = v79;
    sub_1BD77C048(v56, type metadata accessor for AccountDebugTransactionGroup);
  }

  v84 = sub_1BD778178();
  if (v84)
  {
    v0[78] = v84;
    v86 = v0[73];
    v87 = v0[71];
    v88 = v0[70];
    v89 = v0[65];
    v124 = v0[76];
    v127 = v0[52];
    v0[79] = v85;
    v90 = v85;
    v91 = v84;
    v92 = *(v127 + v124);
    v93 = [v91 date];
    sub_1BE04AEE4();

    sub_1BE04ADD4();
    v86(v88, v89);
    v94 = sub_1BE04AE64();
    v86(v87, v89);
    v95 = [v90 date];
    sub_1BE04AEE4();

    v96 = sub_1BE04AE64();
    v86(v87, v89);
    [v92 setLimit:0 startDate:v94 endDate:v96];

    v97 = *(v127 + v124);
    v0[80] = v97;
    v0[2] = v0;
    v0[7] = v0 + 50;
    v0[3] = sub_1BD76D578;
    v98 = swift_continuation_init();
    v0[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
    v0[40] = v98;
    v0[36] = MEMORY[0x1E69E9820];
    v0[37] = 1107296256;
    v0[38] = sub_1BD9C18BC;
    v0[39] = &block_descriptor_140_0;
    [v97 reloadTransactionsWithCompletion_];
    v26 = v0 + 2;

    return MEMORY[0x1EEE6DEC8](v26);
  }

  v99 = *(v132 + 3);
  *(v0 + 27) = *(v132 + 2);
  *(v0 + 29) = v99;
  *(v0 + 31) = *(v132 + 4);
  *(v0 + 264) = v132[80];
  v100 = *(v132 + 1);
  *(v0 + 23) = *v132;
  *(v0 + 25) = v100;
  sub_1BD0DE53C((v0 + 23), &qword_1EBD525D8);

  v101 = v0[1];

  return v101();
}

uint64_t sub_1BD76E46C(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD76E4F0()
{
  v1[43] = v0;
  v2 = sub_1BE051F54();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  v3 = sub_1BE051FA4();
  v1[47] = v3;
  v1[48] = *(v3 - 8);
  v1[49] = swift_task_alloc();
  v4 = type metadata accessor for AccountDebugSavingsStatement(0);
  v1[50] = v4;
  v5 = *(v4 - 8);
  v1[51] = v5;
  v1[52] = *(v5 + 64);
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for AccountDebugTransactionGroup(0);
  v1[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v1[57] = swift_task_alloc();
  v6 = sub_1BE04AF64();
  v1[58] = v6;
  v1[59] = *(v6 - 8);
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v1[64] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD76E770, 0, 0);
}

uint64_t sub_1BD76E770()
{
  v1 = v0[43];
  v2 = *(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService);
  v0[65] = v2;
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account);
    v4 = v2;
    v5 = [v3 accountIdentifier];
    v0[66] = v5;
    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_1BD76EC24;
    v6 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD525C0);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1BD77841C;
    v0[21] = &block_descriptor_128_1;
    v0[22] = v6;
    [v4 updateSavingsStatementsForAccountIdentifier:v5 completion:v0 + 18];
    v7 = (v0 + 2);
    goto LABEL_10;
  }

  v0[69] = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v0[68] = MEMORY[0x1E69E7CC0];
  if (v8 >> 62)
  {
    v7 = sub_1BE053704();
    v0[70] = v7;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[70] = v7;
    if (v7)
    {
LABEL_5:
      v9 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v0[71] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v0[72] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
      v10 = v0[68];
      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1BFB40900](0);
        v9 = v0[71];
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v7);
        }

        v11 = *(v10 + 32);
      }

      v0[73] = v11;
      v0[74] = 1;
      v12 = v0[64];
      v14 = v0[58];
      v13 = v0[59];
      v15 = v0[43];
      v16 = *(v15 + v9);
      v17 = [v11 openingDate];
      sub_1BE04AEE4();

      v18 = sub_1BE04AE64();
      v19 = *(v13 + 8);
      v0[75] = v19;
      v0[76] = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v19(v12, v14);
      v20 = [v11 closingDate];
      sub_1BE04AEE4();

      v21 = sub_1BE04AE64();
      v19(v12, v14);
      [v16 setLimit:0 startDate:v18 endDate:v21];

      v22 = *(v15 + v9);
      v0[77] = v22;
      v0[10] = v0;
      v0[15] = v0 + 41;
      v0[11] = sub_1BD76F0F8;
      v23 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      v0[30] = v23;
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1BD9C18BC;
      v0[29] = &block_descriptor_131_0;
      [v22 reloadTransactionsWithCompletion_];
      v7 = (v0 + 10);
LABEL_10:

      return MEMORY[0x1EEE6DEC8](v7);
    }
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1BD76EC24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_1BD770228;
  }

  else
  {
    v2 = sub_1BD76ED34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD76ED34()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 320);

  if (v2)
  {
    sub_1BE048C84();
    v3 = v2;
  }

  else
  {

    v3 = 0;
    v2 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 552) = v3;
  *(v0 + 544) = v2;
  if (v2 >> 62)
  {
    v4 = sub_1BE053704();
    *(v0 + 560) = v4;
    if (v4)
    {
LABEL_6:
      v5 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      *(v0 + 568) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      *(v0 + 576) = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
      v6 = *(v0 + 544);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1BFB40900](0);
        v5 = *(v0 + 568);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v4);
        }

        v7 = *(v6 + 32);
      }

      *(v0 + 584) = v7;
      *(v0 + 592) = 1;
      v8 = *(v0 + 512);
      v10 = *(v0 + 464);
      v9 = *(v0 + 472);
      v11 = *(v0 + 344);
      v12 = *(v11 + v5);
      v13 = [v7 openingDate];
      sub_1BE04AEE4();

      v14 = sub_1BE04AE64();
      v15 = *(v9 + 8);
      *(v0 + 600) = v15;
      *(v0 + 608) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v15(v8, v10);
      v16 = [v7 closingDate];
      sub_1BE04AEE4();

      v17 = sub_1BE04AE64();
      v15(v8, v10);
      [v12 setLimit:0 startDate:v14 endDate:v17];

      v18 = *(v11 + v5);
      *(v0 + 616) = v18;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 328;
      *(v0 + 88) = sub_1BD76F0F8;
      v19 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      *(v0 + 240) = v19;
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1BD9C18BC;
      *(v0 + 232) = &block_descriptor_131_0;
      [v18 reloadTransactionsWithCompletion_];
      v4 = v0 + 80;

      return MEMORY[0x1EEE6DEC8](v4);
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 560) = v4;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1BD76F0F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD76F1D8, 0, 0);
}

uint64_t sub_1BD76F1D8()
{
  v1 = v0 + 644;
  v2 = v0[41];

  v0[78] = MEMORY[0x1BFB403C0](0);
  v0[79] = v3;
  *(v0 + 160) = v4;
  *(v0 + 644) = MEMORY[0x1BFB403C0](0);
  *(v0 + 652) = v5;
  *(v0 + 165) = v6;
  v0[83] = MEMORY[0x1BFB403C0](0);
  v0[84] = v7;
  *(v0 + 170) = v8;
  *(v0 + 684) = MEMORY[0x1BFB403C0](0);
  v156 = v0 + 684;
  *(v0 + 692) = v9;
  *(v0 + 175) = v10;
  if (v2)
  {
    v11 = v2;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11 >> 62)
  {
    goto LABEL_64;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
  v162 = (v0 + 78);
  v164 = v1;
  v152 = v2;
  v154 = v0 + 83;
  v171 = v0;
  if (v12)
  {
    v169 = v11 & 0xC000000000000001;
    v158 = v11 & 0xFFFFFFFFFFFFFF8;
    sub_1BE048C84();
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC0];
    v165 = v11;
    v167 = v12;
    while (1)
    {
      if (v169)
      {
        v15 = MEMORY[0x1BFB40900](v13, v11);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v13 >= *(v158 + 16))
        {
          goto LABEL_63;
        }

        v15 = v11[v13 + 4];
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          v12 = sub_1BE053704();
          goto LABEL_6;
        }
      }

      v17 = *(v0[43] + v0[72]);
      v18 = v15;
      v19 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1BD1D96EC(0, *(v14 + 2) + 1, 1, v14);
      }

      v21 = *(v14 + 2);
      v20 = *(v14 + 3);
      v1 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        v14 = sub_1BD1D96EC((v20 > 1), v21 + 1, 1, v14);
      }

      *(v14 + 2) = v1;
      v22 = &v14[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      if ([v18 transactionStatus] != 2)
      {
        if ([v18 transactionStatus])
        {
          goto LABEL_24;
        }

        v160 = v14;
        sub_1BE04AEF4();
        v23 = [v18 transactionDate];
        if (!v23)
        {
          goto LABEL_70;
        }

        v24 = v23;
        v2 = v171[75];
        v1 = v171[64];
        v25 = v171[63];
        v26 = v171[62];
        v27 = v171[58];
        sub_1BE04AEE4();

        sub_1BE04ADD4();
        sub_1BD77C1B8(&qword_1EBD525D0, MEMORY[0x1E6969530]);
        LOBYTE(v24) = sub_1BE0522F4();
        (v2)(v1, v27);
        (v2)(v25, v27);
        (v2)(v26, v27);
        v0 = v171;
        v14 = v160;
        v11 = v165;
        if (v24)
        {
LABEL_24:
          v28 = [v18 transactionType];
          v29 = 0;
          if ((v28 - 4) >= 2 && v28)
          {
            if (v28 == 7)
            {
              v30 = [v18 adjustmentType];
              if (v30 >= 0x12)
              {
                v29 = 0;
              }

              else
              {
                v29 = 0x2A60Au >> v30;
              }
            }

            else
            {
              v29 = 1;
            }
          }

          v31 = v14;
          v23 = [v18 amount];
          if (!v23)
          {
            goto LABEL_68;
          }

          v32 = v23;
          v33 = [v23 pk_absoluteValue];

          if (!v33)
          {
            goto LABEL_69;
          }

          [v33 decimalValue];
          v34 = v0[88];
          v1 = v0[89];
          v2 = *(v0 + 180);

          if (v29)
          {
            v35 = v162;
          }

          else
          {
            v35 = v164;
          }

          MEMORY[0x1BFB40450](v35, v34, v1, v2);
          v36 = [v18 transactionType];
          if (v36 == 11)
          {
            MEMORY[0x1BFB40450](v156, *(v0 + 684), *(v0 + 692), *(v0 + 175));
            v14 = v31;
            v11 = v165;
          }

          else
          {
            v14 = v31;
            v11 = v165;
            if (v36 == 9)
            {
              MEMORY[0x1BFB40450](v154, v34, v1, v2);
            }
          }
        }
      }

      ++v13;
      if (v16 == v167)
      {
        v161 = v14;

        goto LABEL_41;
      }
    }
  }

  sub_1BE048C84();

  v161 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v168 = v0 + 34;
  v145 = v0[75];
  v37 = v0[73];
  v38 = v0[64];
  v142 = v0[58];
  v39 = [v37 closingBalance];
  [v39 decimalValue];

  v40 = [v37 openingBalance];
  [v40 decimalValue];

  v166 = sub_1BE053394();
  v159 = v41;
  v151 = v42;
  v43 = sub_1BE053394();
  v149 = v44;
  v150 = v43;
  v148 = v45;
  v46 = [v37 openingDate];
  sub_1BE04AEE4();

  v47 = sub_1BE04AE64();
  v145(v38, v142);
  v48 = [v37 closingDate];
  sub_1BE04AEE4();

  v49 = sub_1BE04AE64();
  v145(v38, v142);
  v50 = PKDatesMidpoint();

  if (v50)
  {
    v51 = v0[64];
    v52 = v0[61];
    v53 = v0[58];
    v54 = v0[59];
    v55 = v0[57];
    sub_1BE04AEE4();

    v56 = *(v54 + 32);
    v56(v55, v51, v53);
    (*(v54 + 56))(v55, 0, 1, v53);
    v56(v52, v55, v53);
    v0 = v171;
    v57 = v152;
  }

  else
  {
    v59 = v0[58];
    v58 = v0[59];
    v60 = v0[57];
    (*(v58 + 56))(v60, 1, 1, v59);
    sub_1BE04AEF4();
    v57 = v152;
    if ((*(v58 + 48))(v60, 1, v59) != 1)
    {
      sub_1BD0DE53C(v0[57], &unk_1EBD39970);
    }
  }

  v61 = v0 + 764;
  v62 = v0 + 98;
  v63 = v0 + 804;
  v64 = v0 + 103;
  (*(v0[59] + 16))(v0[60], v0[61], v0[58]);
  if (v57)
  {
    if (v57 >> 62)
    {
      v65 = sub_1BE053704();
    }

    else
    {
      v65 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v170 = v65;
  }

  else
  {
    v170 = 0;
  }

  v146 = v0[75];
  v153 = v0[74];
  v147 = v0[70];
  v144 = v0[61];
  v66 = v0[58];
  v67 = v0[59];
  v68 = v0[55];
  v69 = v0[56];
  v135 = v0[54];
  v136 = v0[73];
  v137 = v0[53];
  v138 = v0[51];
  v133 = v0[60];
  v134 = v0[50];
  v139 = v0[49];
  v141 = v0[48];
  v143 = v0[47];
  v70 = *v154;
  *(v0 + 210) = *(v154 + 4);
  v71 = v0[45];
  v140 = v0[46];
  *v64 = v70;
  *v63 = *v156;
  *(v0 + 205) = *(v156 + 4);
  v72 = *v162;
  *(v0 + 200) = *(v162 + 4);
  *(v0 + 195) = *(v164 + 4);
  v73 = v0[44];
  v155 = v71;
  v157 = v0[43];
  *v62 = v72;
  v163 = v73;
  *v61 = *v164;
  v74 = MEMORY[0x1BFB403C0](0);
  v129 = v75;
  v130 = v74;
  v128 = v76;
  v77 = MEMORY[0x1BFB403C0](0);
  v126 = v78;
  v127 = v77;
  v125 = v79;
  v80 = MEMORY[0x1BFB403C0](0);
  v124 = v81;
  v123 = v82;
  v83 = MEMORY[0x1BFB403C0](0);
  v132 = v84;
  v131 = v85;
  (*(v67 + 32))(v69, v133, v66);
  *(v69 + v68[5]) = v170;
  v86 = v69 + v68[6];
  v87 = *v64;
  *(v86 + 16) = *(v64 + 4);
  *v86 = v87;
  v88 = v69 + v68[7];
  v89 = *v63;
  *(v88 + 16) = *(v63 + 4);
  *v88 = v89;
  v90 = v69 + v68[8];
  v91 = *(v62 + 4);
  *v90 = *v62;
  *(v90 + 16) = v91;
  v92 = v69 + v68[9];
  v93 = *(v61 + 4);
  *v92 = *v61;
  *(v92 + 16) = v93;
  v94 = MEMORY[0x1E69E7CC0];
  *(v69 + v68[10]) = MEMORY[0x1E69E7CC0];
  *(v69 + v68[11]) = v94;
  v95 = v69 + v68[12];
  *v95 = v130;
  *(v95 + 8) = v129;
  *(v95 + 16) = v128;
  v96 = v69 + v68[13];
  *v96 = v127;
  *(v96 + 8) = v126;
  *(v96 + 16) = v125;
  v97 = v69 + v68[14];
  *v97 = v80;
  *(v97 + 8) = v124;
  *(v97 + 16) = v123;
  *(v69 + v68[15]) = v94;
  *(v69 + v68[16]) = v94;
  *(v69 + v68[17]) = v94;
  *(v69 + v68[18]) = v94;
  *(v69 + v68[19]) = v161;
  v98 = v69 + v68[20];
  *v98 = v83;
  *(v98 + 8) = v132;
  *(v98 + 16) = v131;
  sub_1BD77BFE0(v69, v135 + *(v134 + 20), type metadata accessor for AccountDebugTransactionGroup);
  v99 = MEMORY[0x1BFB40440](v150, v149, v148, v166, v159, v151);
  *v135 = v136;
  *(v135 + *(v134 + 24)) = v99 & 1;
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v100 = sub_1BE052D54();
  sub_1BD77BFE0(v135, v137, type metadata accessor for AccountDebugSavingsStatement);
  v101 = (*(v138 + 80) + 24) & ~*(v138 + 80);
  v102 = swift_allocObject();
  *(v102 + 16) = v157;
  sub_1BD77C264(v137, v102 + v101, type metadata accessor for AccountDebugSavingsStatement);
  v171[38] = sub_1BD77C238;
  v171[39] = v102;
  v171[34] = MEMORY[0x1E69E9820];
  v171[35] = 1107296256;
  v171[36] = sub_1BD126964;
  v171[37] = &block_descriptor_137_0;
  v103 = _Block_copy(v168);
  v104 = v157;
  sub_1BE051F74();
  v171[42] = v94;
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v139, v140, v103);
  _Block_release(v103);

  (*(v155 + 8))(v140, v163);
  (*(v141 + 8))(v139, v143);
  sub_1BD77C048(v135, type metadata accessor for AccountDebugSavingsStatement);
  sub_1BD77C048(v69, type metadata accessor for AccountDebugTransactionGroup);
  v146(v144, v66);

  if (v153 != v147)
  {
    v107 = v171[74];
    v108 = v171[68];
    if ((v108 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x1BFB40900](v171[74]);
    }

    else
    {
      if (v107 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_67;
      }

      v23 = *(v108 + 8 * v107 + 32);
    }

    v109 = v23;
    v171[73] = v23;
    v171[74] = v107 + 1;
    if (!__OFADD__(v107, 1))
    {
      v110 = v171[71];
      v111 = v171[64];
      v113 = v171[58];
      v112 = v171[59];
      v114 = v171[43];
      v115 = *(v114 + v110);
      v116 = [v109 openingDate];
      sub_1BE04AEE4();

      v117 = sub_1BE04AE64();
      v118 = *(v112 + 8);
      v171[75] = v118;
      v171[76] = (v112 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v118(v111, v113);
      v119 = [v109 closingDate];
      sub_1BE04AEE4();

      v120 = sub_1BE04AE64();
      v118(v111, v113);
      [v115 setLimit:0 startDate:v117 endDate:v120];

      v121 = *(v114 + v110);
      v171[77] = v121;
      v171[10] = v171;
      v171[15] = v171 + 41;
      v171[11] = sub_1BD76F0F8;
      v122 = swift_continuation_init();
      v171[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      v171[30] = v122;
      v171[26] = MEMORY[0x1E69E9820];
      v171[27] = 1107296256;
      v171[28] = sub_1BD9C18BC;
      v171[29] = &block_descriptor_131_0;
      [v121 reloadTransactionsWithCompletion_];
      v23 = v171 + 10;

      return MEMORY[0x1EEE6DEC8](v23);
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v23);
  }

  v105 = v171[1];

  return v105();
}

uint64_t sub_1BD770228()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  swift_willThrow();

  v0[69] = 0;
  v4 = MEMORY[0x1E69E7CC0];
  v0[68] = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    v5 = sub_1BE053704();
    v0[70] = v5;
    if (v5)
    {
LABEL_3:
      v6 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v0[71] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionFetcher;
      v0[72] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
      v7 = v0[68];
      if ((v7 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1BFB40900](0);
        v6 = v0[71];
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return MEMORY[0x1EEE6DEC8](v5);
        }

        v8 = *(v7 + 32);
      }

      v0[73] = v8;
      v0[74] = 1;
      v9 = v0[64];
      v11 = v0[58];
      v10 = v0[59];
      v12 = v0[43];
      v13 = *(v12 + v6);
      v14 = [v8 openingDate];
      sub_1BE04AEE4();

      v15 = sub_1BE04AE64();
      v16 = *(v10 + 8);
      v0[75] = v16;
      v0[76] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v16(v9, v11);
      v17 = [v8 closingDate];
      sub_1BE04AEE4();

      v18 = sub_1BE04AE64();
      v16(v9, v11);
      [v13 setLimit:0 startDate:v15 endDate:v18];

      v19 = *(v12 + v6);
      v0[77] = v19;
      v0[10] = v0;
      v0[15] = v0 + 41;
      v0[11] = sub_1BD76F0F8;
      v20 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
      v0[30] = v20;
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1BD9C18BC;
      v0[29] = &block_descriptor_131_0;
      [v19 reloadTransactionsWithCompletion_];
      v5 = (v0 + 10);

      return MEMORY[0x1EEE6DEC8](v5);
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[70] = v5;
    if (v5)
    {
      goto LABEL_3;
    }
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1BD7705E8(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD77066C()
{
  v1[122] = v0;
  v2 = type metadata accessor for AccountDebugCKReward(0);
  v1[123] = v2;
  v3 = *(v2 - 8);
  v1[124] = v3;
  v1[125] = *(v3 + 64);
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v4 = type metadata accessor for AccountDebugCKTransaction(0);
  v1[128] = v4;
  v5 = *(v4 - 8);
  v1[129] = v5;
  v1[130] = *(v5 + 64);
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v6 = sub_1BE051F54();
  v1[133] = v6;
  v1[134] = *(v6 - 8);
  v1[135] = swift_task_alloc();
  v7 = sub_1BE051FA4();
  v1[136] = v7;
  v1[137] = *(v7 - 8);
  v1[138] = swift_task_alloc();
  v8 = sub_1BE04AC64();
  v1[139] = v8;
  v1[140] = *(v8 - 8);
  v1[141] = swift_task_alloc();
  v9 = sub_1BE04ACA4();
  v1[142] = v9;
  v1[143] = *(v9 - 8);
  v1[144] = swift_task_alloc();
  v10 = sub_1BE04AD84();
  v1[145] = v10;
  v1[146] = *(v10 - 8);
  v1[147] = swift_task_alloc();
  v1[148] = swift_task_alloc();
  v1[149] = swift_task_alloc();
  v11 = sub_1BE04B3B4();
  v1[150] = v11;
  v1[151] = *(v11 - 8);
  v1[152] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  v1[153] = swift_task_alloc();
  v1[154] = swift_task_alloc();
  v1[155] = swift_task_alloc();
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();
  v12 = sub_1BE04AF64();
  v1[159] = v12;
  v1[160] = *(v12 - 8);
  v1[161] = swift_task_alloc();
  v1[162] = swift_task_alloc();
  v1[163] = swift_task_alloc();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v1[167] = swift_task_alloc();
  v1[168] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD770B14, 0, 0);
}

void sub_1BD770B14()
{
  v1 = v0[122];
  v2 = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account;
  v0[169] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_account;
  v3 = [*(v1 + v2) savingsDetails];
  if (!v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 createdDate];

  v6 = v0[168];
  if (v5)
  {
    v7 = v0[167];
    v8 = v0[160];
    v9 = v0[159];
    v10 = v0[158];
    sub_1BE04AEE4();

    v11 = *(v8 + 32);
    v11(v10, v7, v9);
    (*(v8 + 56))(v10, 0, 1, v9);
    v11(v6, v10, v9);
  }

  else
  {
    v12 = v0[160];
    v13 = v0[159];
    v14 = v0[158];
    (*(v12 + 56))(v14, 1, 1, v13);
    sub_1BE04AEF4();
    if ((*(v12 + 48))(v14, 1, v13) != 1)
    {
      sub_1BD0DE53C(v0[158], &unk_1EBD39970);
    }
  }

  v15 = v0[152];
  v16 = v0[151];
  v17 = v0[150];
  (*(v0[160] + 16))(v0[166], v0[168], v0[159]);
  v18 = sub_1BE04AE64();
  sub_1BD765BC8(v15);
  v19 = sub_1BE04B374();
  v20 = *(v16 + 8);
  v0[170] = v20;
  v0[171] = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v15, v17);
  v21 = PKEndOfMonthWithTimeZone();

  if (!v21)
  {
    goto LABEL_11;
  }

  v22 = v0[165];
  v23 = v0[164];
  v24 = v0[160];
  v25 = v0[159];
  sub_1BE04AEE4();

  v26 = *(v24 + 32);
  v0[172] = v26;
  v0[173] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v22, v23, v25);
  v27 = swift_task_alloc();
  v0[174] = v27;
  *v27 = v0;
  v27[1] = sub_1BD770DF4;

  sub_1BD776BE0();
}

uint64_t sub_1BD770DF4(uint64_t a1)
{
  *(*v1 + 1400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD770EF4, 0, 0);
}

uint64_t sub_1BD770EF4()
{
  v1 = *(v0 + 1400);
  if (v1)
  {
    v2 = [*(v0 + 1400) accountIdentifier];

    if (v2)
    {
      v1 = sub_1BE052434();
      v4 = v3;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v4 = 0;
LABEL_6:
  *(v0 + 1416) = v4;
  *(v0 + 1408) = v1;
  v5 = swift_task_alloc();
  *(v0 + 1424) = v5;
  *v5 = v0;
  v5[1] = sub_1BD770FE0;

  return sub_1BD77769C();
}

uint64_t sub_1BD770FE0(uint64_t a1)
{
  *(*v1 + 1432) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD7710E0, 0, 0);
}

uint64_t sub_1BD7710E0()
{
  v1 = v0[167];
  v2 = v0[160];
  v3 = v0[159];
  v0[180] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_transactionSource;
  v0[181] = OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_paymentDataProvider;
  sub_1BE04AEF4();
  v4 = sub_1BE04AE84();
  v7 = *(v2 + 8);
  v5 = v2 + 8;
  v6 = v7;
  v8 = (v7)(v1, v3);
  if (v4)
  {
    v9 = v0[146];
    v10 = v0[143];
    v11 = v0[140];
    v57 = v0[134];
    v58 = v0[137];
    v0[182] = *MEMORY[0x1E69BB7A8];
    v0[183] = *MEMORY[0x1E69BB7A0];
    v0[184] = *MEMORY[0x1E69BB798];
    v0[186] = v6;
    v0[185] = v5 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = v0[149];
    v12 = v0[148];
    v13 = v0[147];
    v14 = v0[145];
    v15 = v0[144];
    v16 = v0[142];
    v17 = v0[141];
    v51 = v0[139];
    v53 = v0[138];
    v54 = v0[135];
    v55 = v0[133];
    v56 = v0[136];
    v52 = v0[122];
    MEMORY[0x1BFB371E0](v8);
    sub_1BE04AC24();
    sub_1BE04ABB4();
    (*(v10 + 8))(v15, v16);
    v18 = *(v9 + 8);
    v18(v13, v14);
    sub_1BE04AC44();
    sub_1BE04ABA4();
    (*(v11 + 8))(v17, v51);
    v18(v12, v14);
    sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328]);
    sub_1BE04AF44();
    v18(v50, v14);
    v19 = v0[87];
    v20 = v0[88];
    v0[187] = v20;
    v0[188] = sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v21 = sub_1BE052D54();
    v22 = swift_allocObject();
    v22[2] = v52;
    v22[3] = v19;
    v22[4] = v20;
    v0[56] = sub_1BD77C4D0;
    v0[57] = v22;
    v0[52] = MEMORY[0x1E69E9820];
    v0[53] = 1107296256;
    v0[54] = sub_1BD126964;
    v0[55] = &block_descriptor_197;
    v23 = _Block_copy(v0 + 52);
    v24 = v52;
    sub_1BE048C84();
    sub_1BE051F74();
    v0[111] = MEMORY[0x1E69E7CC0];
    v0[189] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    v0[190] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    v0[191] = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v53, v54, v23);
    _Block_release(v23);

    v25 = *(v57 + 8);
    v0[192] = v25;
    v0[193] = (v57 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v25(v54, v55);
    v26 = *(v58 + 8);
    v0[194] = v26;
    v0[195] = (v58 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v26(v53, v56);

    v27 = [objc_opt_self() sharedInstance];
    v0[196] = v27;
    if (v27)
    {
      v28 = v27;
      v29 = sub_1BE04AE64();
      v0[197] = v29;
      v30 = sub_1BE04AE64();
      v0[198] = v30;
      v0[10] = v0;
      v0[15] = v0 + 121;
      v0[11] = sub_1BD771A04;
      v31 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600);
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1BD16E918;
      v0[29] = &block_descriptor_200_0;
      v0[30] = v31;
      [v28 applePayContainerItemsFromDate:v29 toDate:v30 completion:v0 + 26];
      v27 = v0 + 10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x1EEE6DEC8](v27);
  }

  else
  {
    v49 = v0[168];
    v47 = v0[165];
    v48 = v0[166];
    v45 = v0[179];
    v46 = v0[159];
    v32 = v0[138];
    v43 = v0[137];
    v44 = v0[136];
    v42 = v0[135];
    v33 = v0[134];
    v34 = v0[133];
    v35 = v0[122];

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v41 = sub_1BE052D54();
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v0[44] = sub_1BD77C4C8;
    v0[45] = v36;
    v0[40] = MEMORY[0x1E69E9820];
    v0[41] = 1107296256;
    v0[42] = sub_1BD126964;
    v0[43] = &block_descriptor_190_1;
    v37 = _Block_copy(v0 + 40);
    v38 = v35;
    sub_1BE051F74();
    v0[113] = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v32, v42, v37);
    _Block_release(v37);

    (*(v33 + 8))(v42, v34);
    (*(v43 + 8))(v32, v44);
    v6(v47, v46);
    v6(v48, v46);
    v6(v49, v46);

    v39 = v0[1];

    return v39();
  }
}

uint64_t sub_1BD771A04()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1592) = v1;
  if (v1)
  {
    v2 = sub_1BD776144;
  }

  else
  {
    v2 = sub_1BD771B14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD771B14()
{
  v1 = *(v0 + 1584);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1568);
  v4 = *(v0 + 968);
  *(v0 + 1600) = v4;

  if (!v4)
  {
    v268 = 0;
    goto LABEL_133;
  }

  v5 = [v4 allRecordsWithRecordType_];
  if (!v5)
  {
    goto LABEL_178;
  }

  v6 = v5;
  *(v0 + 1608) = sub_1BD0E5E8C(0, &qword_1EBD524E8);
  *(v0 + 1616) = sub_1BD77C4DC();
  v7 = sub_1BE052A34();

  if ((v7 & 0xC000000000000001) != 0)
  {
    sub_1BE0536B4();
    v5 = sub_1BE052A74();
    v7 = *(v0 + 504);
    v8 = *(v0 + 512);
    v9 = *(v0 + 520);
    v10 = *(v0 + 528);
    v11 = *(v0 + 536);
  }

  else
  {
    v10 = 0;
    v12 = -1;
    v13 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v9 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v12 = ~(-1 << v14);
    }

    v11 = v12 & *(v7 + 56);
  }

  *(v0 + 1640) = v9;
  *(v0 + 1632) = v8;
  *(v0 + 1624) = v7;
  v15 = &selRef_metricsForTextStyle_;
  while (1)
  {
    if (v7 < 0)
    {
      v21 = sub_1BE053744();
      if (!v21)
      {
        break;
      }

      *(v0 + 784) = v21;
      swift_dynamicCast();
      v20 = *(v0 + 960);
      i = v10;
      v19 = v11;
    }

    else
    {
      v16 = v10;
      v17 = v11;
      for (i = v10; !v17; ++v16)
      {
        i = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_174;
        }

        if (i >= ((*(v0 + 1640) + 64) >> 6))
        {
          goto LABEL_50;
        }

        v17 = *(*(v0 + 1632) + 8 * i);
      }

      v19 = (v17 - 1) & v17;
      v20 = *(*(v7 + 48) + ((i << 9) | (8 * __clz(__rbit64(v17)))));
    }

    *(v0 + 1664) = v19;
    *(v0 + 1656) = i;
    *(v0 + 1648) = v20;
    if (!v20)
    {
      break;
    }

    v22 = sub_1BE053004();
    v24 = v23;
    if (v22 == sub_1BE052434() && v24 == v25)
    {
    }

    else
    {
      v27 = sub_1BE053B84();

      if ((v27 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BE0B7020;
    *(v28 + 32) = v20;
    v29 = objc_allocWithZone(MEMORY[0x1E69B86F0]);
    v30 = v20;
    v31 = sub_1BE052724();

    v32 = [v29 initWithRecords_];
    *(v0 + 1672) = v32;

    v33 = [objc_allocWithZone(MEMORY[0x1E69B8EA8]) initWithCloudStoreCoder_];
    *(v0 + 1680) = v33;
    if (v33)
    {
      v34 = *(*(v0 + 976) + *(v0 + 1440));
      v35 = v34;
      v36 = v33;
    }

    else
    {
      v36 = 0;
      v34 = 0;
    }

    v281 = v34;
    *(v0 + 1696) = v34;
    v272 = v36;
    *(v0 + 1688) = v36;
    v269 = v33;
    v37 = [v30 encryptedValues];
    *(v0 + 1704) = v37;
    v38 = sub_1BE052404();
    v285 = v37;
    v39 = [v37 v15[221]];

    v276 = v32;
    if (v39)
    {
      v40 = *(v0 + 1416);
      *(v0 + 832) = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v41 = *(v0 + 616);
      v42 = *(v0 + 624);
      if (v40)
      {
        if (v41 == *(v0 + 1408) && *(v0 + 1416) == v42)
        {
          LODWORD(v40) = 1;
        }

        else
        {
          LODWORD(v40) = sub_1BE053B84();
        }
      }
    }

    else
    {
      v41 = 0;
      v42 = 0;
      LODWORD(v40) = *(v0 + 1416) == 0;
    }

    v43 = v19;
    *(v0 + 1800) = v40 & 1;
    v44 = [*(*(v0 + 976) + *(v0 + 1352)) accountIdentifier];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1BE052434();
      v48 = v47;

      if (!v42)
      {
        v50 = v281;
        if (!v48)
        {
          goto LABEL_141;
        }

        v49 = 0;
        v15 = &selRef_metricsForTextStyle_;
        goto LABEL_48;
      }

      if (v48)
      {
        if (v41 == v46 && v42 == v48)
        {

LABEL_141:
          LOBYTE(v49) = 1;
          v15 = &selRef_metricsForTextStyle_;
LABEL_142:
          *(v0 + 1801) = v49 & 1;
          v200 = sub_1BE052404();
          v201 = v285;
          v202 = [v285 v15[221]];

          if (v202)
          {
            *(v0 + 840) = v202;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v203 = *(v0 + 632);
            v202 = *(v0 + 640);
          }

          else
          {
            v203 = 0;
          }

          *(v0 + 1720) = v202;
          *(v0 + 1712) = v203;
          v204 = sub_1BE052404();
          v205 = [v285 v15[221]];

          if (v205)
          {
            *(v0 + 848) = v205;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v206 = *(v0 + 648);
            v207 = *(v0 + 656);
          }

          else
          {
            v206 = 0;
            v207 = 0;
          }

          *(v0 + 1736) = v207;
          *(v0 + 1728) = v206;
          v208 = sub_1BE052404();
          v209 = [v285 v15[221]];

          v210 = *(v0 + 1272);
          v211 = *(v0 + 1256);
          v212 = (*(v0 + 1280) + 56);
          if (v209)
          {
            *(v0 + 856) = v209;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            v201 = v285;
            swift_dynamicCast();
            (*v212)(v211, 0, 1, v210);
          }

          else
          {
            (*v212)(*(v0 + 1256), 1, 1, v210);
          }

          v213 = sub_1BE052404();
          v214 = [v201 objectForKey_];

          if (v214)
          {
            *(v0 + 864) = v214;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v215 = *(v0 + 664);
            v216 = *(v0 + 672);
          }

          else
          {
            v215 = 0;
            v216 = 0;
          }

          *(v0 + 1752) = v216;
          *(v0 + 1744) = v215;
          v217 = sub_1BE052404();
          v218 = [v201 objectForKey_];

          if (v218)
          {
            *(v0 + 872) = v218;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v219 = *(v0 + 680);
            v220 = *(v0 + 688);
          }

          else
          {
            v219 = 0;
            v220 = 0;
          }

          *(v0 + 1768) = v220;
          *(v0 + 1760) = v219;
          if (v49)
          {
            v221 = [*(*(v0 + 976) + *(v0 + 1440)) transactionSourceIdentifiers];
            if (!v221)
            {
              goto LABEL_163;
            }

LABEL_162:
            v223 = v221;
            v224 = sub_1BE052A34();

            sub_1BD960F28(v224);
            v226 = v225;
          }

          else
          {
            v222 = *(v0 + 1432);
            if (v222)
            {
              v221 = [v222 transactionSourceIdentifiers];
              if (v221)
              {
                goto LABEL_162;
              }
            }

LABEL_163:
            v226 = 0;
          }

          v227 = *(*(v0 + 976) + *(v0 + 1448));
          *(v0 + 1776) = v227;
          if (v202)
          {
            v228 = v227;
            sub_1BE048C84();
            v229 = sub_1BE052404();

            *(v0 + 1784) = v229;
            if (v226)
            {
              goto LABEL_166;
            }

LABEL_168:
            v230 = 0;
          }

          else
          {
            v231 = v227;
            v229 = 0;
            *(v0 + 1784) = 0;
            if (!v226)
            {
              goto LABEL_168;
            }

LABEL_166:
            v230 = sub_1BE052404();
          }

          *(v0 + 1792) = v230;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 880;
          *(v0 + 24) = sub_1BD773C40;
          v232 = swift_continuation_init();
          *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8);
          *(v0 + 144) = MEMORY[0x1E69E9820];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1BD1F07A8;
          *(v0 + 168) = &block_descriptor_209_1;
          *(v0 + 176) = v232;
          [v227 transactionWithServiceIdentifier:v229 transactionSourceIdentifier:v230 completion:v0 + 144];
          v5 = (v0 + 16);
          goto LABEL_170;
        }

        v49 = sub_1BE053B84();

        goto LABEL_45;
      }
    }

    else if (!v42)
    {
      goto LABEL_141;
    }

    v49 = 0;
LABEL_45:
    v15 = &selRef_metricsForTextStyle_;
    v50 = v281;
LABEL_48:

    if ((v49 | v40))
    {
      goto LABEL_142;
    }

    sub_1BD17195C(v272, v50);

    swift_unknownObjectRelease();
    v19 = v43;
LABEL_10:

    v7 = *(v0 + 1624);
    v10 = i;
    v11 = v19;
  }

LABEL_50:
  v51 = *(v0 + 1600);
  v52 = *(v0 + 1464);
  sub_1BD0D45FC();
  v5 = [v51 allRecordsWithRecordType_];
  if (!v5)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v53 = v5;
  v54 = sub_1BE052A34();

  if ((v54 & 0xC000000000000001) != 0)
  {
    sub_1BE0536B4();
    v5 = sub_1BE052A74();
    v54 = *(v0 + 464);
    v55 = *(v0 + 472);
    v56 = *(v0 + 480);
    v57 = *(v0 + 488);
    v58 = *(v0 + 496);
  }

  else
  {
    v57 = 0;
    v59 = -1 << *(v54 + 32);
    v55 = v54 + 56;
    v56 = ~v59;
    v60 = -v59;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    else
    {
      v61 = -1;
    }

    v58 = v61 & *(v54 + 56);
  }

  v62 = (v56 + 64) >> 6;
  v233 = v55;
  v234 = v54;
  v236 = v62;
  if (v54 < 0)
  {
    goto LABEL_58;
  }

  while (2)
  {
    while (2)
    {
      v67 = v57;
      v68 = v58;
      v65 = v57;
      if (!v58)
      {
        while (1)
        {
          v65 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          if (v65 >= v62)
          {
            goto LABEL_132;
          }

          v68 = *(v55 + 8 * v65);
          ++v67;
          if (v68)
          {
            goto LABEL_65;
          }
        }

LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

LABEL_65:
      v66 = (v68 - 1) & v68;
      v64 = *(*(v54 + 48) + ((v65 << 9) | (8 * __clz(__rbit64(v68)))));
      if (!v64)
      {
        goto LABEL_132;
      }

LABEL_66:
      v270 = v66;
      v282 = v64;
      v69 = sub_1BE053004();
      v71 = v70;
      if (v69 == sub_1BE052434() && v71 == v72)
      {
      }

      else
      {
        v74 = sub_1BE053B84();

        if ((v74 & 1) == 0)
        {

          v57 = v65;
          v58 = v270;
          v62 = v236;
          if (v54 < 0)
          {
            goto LABEL_58;
          }

          continue;
        }
      }

      break;
    }

    v75 = *(v0 + 1280);
    v76 = *(v0 + 1272);
    v77 = *(v0 + 1240);
    v286 = [v282 encryptedValues];
    v78 = sub_1BE052404();
    v79 = [v282 pk:v78 referenceForKey:?];

    v80 = *(v75 + 56);
    v80(v77, 1, 1, v76);
    v265 = v79;
    if (!v79)
    {
      v266 = 0;
      goto LABEL_103;
    }

    v277 = [v79 recordID];
    if (!v277)
    {
      v266 = 0;
      goto LABEL_103;
    }

    v5 = [*(v0 + 1600) allRecordsWithRecordType_];
    if (!v5)
    {
      goto LABEL_177;
    }

    v81 = v5;
    v260 = v80;
    v82 = sub_1BE052A34();

    v83 = v82;
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_1BE0536B4();
      v5 = sub_1BE052A74();
      v83 = *(v0 + 544);
      v84 = *(v0 + 552);
      v85 = *(v0 + 560);
      v86 = *(v0 + 568);
      v87 = *(v0 + 576);
    }

    else
    {
      v86 = 0;
      v88 = -1 << *(v82 + 32);
      v84 = v82 + 56;
      v85 = ~v88;
      v89 = -v88;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      else
      {
        v90 = -1;
      }

      v87 = v90 & *(v82 + 56);
    }

    v266 = 0;
    v91 = (v85 + 64) >> 6;
    v273 = v83;
LABEL_86:
    v92 = v86;
    v93 = v87;
    if ((v83 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v96 = v92;
        v97 = v93;
        v86 = v92;
        if (!v93)
        {
          break;
        }

LABEL_94:
        v87 = (v97 - 1) & v97;
        v95 = *(*(v83 + 48) + ((v86 << 9) | (8 * __clz(__rbit64(v97)))));
        if (!v95)
        {
          goto LABEL_102;
        }

LABEL_95:
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        v98 = [v95 recordID];
        v99 = sub_1BE053074();

        if (v99)
        {
          v257 = *(v0 + 1240);

          v100 = [v95 encryptedValues];
          v101 = sub_1BE052404();
          v102 = [v100 objectForKey_];

          swift_unknownObjectRelease();
          sub_1BD0DE53C(v257, &unk_1EBD39970);
          v103 = *(v0 + 1272);
          v104 = *(v0 + 1232);
          if (v102)
          {
            *(v0 + 792) = v102;
            v105 = v103;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v106 = v104;
            v107 = 0;
            v103 = v105;
          }

          else
          {
            v106 = *(v0 + 1232);
            v107 = 1;
          }

          v260(v106, v107, 1, v103);
          v5 = sub_1BD1CBBEC(*(v0 + 1232), *(v0 + 1240));
          v266 = v95;
          v83 = v273;
          goto LABEL_86;
        }

        v92 = v86;
        v93 = v87;
        v83 = v273;
        if (v273 < 0)
        {
          goto LABEL_87;
        }
      }

      while (1)
      {
        v86 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          break;
        }

        if (v86 >= v91)
        {
          goto LABEL_102;
        }

        v97 = *(v84 + 8 * v86);
        ++v96;
        if (v97)
        {
          goto LABEL_94;
        }
      }

      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

LABEL_87:
    v94 = sub_1BE053744();
    if (v94)
    {
      *(v0 + 808) = v94;
      swift_dynamicCast();
      v95 = *(v0 + 800);
      v86 = v92;
      v87 = v93;
      if (v95)
      {
        goto LABEL_95;
      }
    }

LABEL_102:
    sub_1BD0D45FC();

    v15 = &selRef_metricsForTextStyle_;
LABEL_103:
    v108 = sub_1BE052404();
    v109 = [v286 v15[221]];

    if (v109)
    {
      *(v0 + 920) = v109;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v110 = *(v0 + 584);
      v111 = *(v0 + 592);
    }

    else
    {
      v110 = 0;
      v111 = 0;
    }

    v112 = sub_1BE052404();
    v113 = [v286 v15[221]];

    if (v113)
    {
      *(v0 + 776) = v113;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v274 = *(v0 + 608);
      v278 = *(v0 + 600);
    }

    else
    {
      v274 = 0;
      v278 = 0;
    }

    v114 = sub_1BE052404();
    v115 = [v286 v15[221]];

    if (v115)
    {
      *(v0 + 952) = v115;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v262 = *(v0 + 768);
      v264 = *(v0 + 760);
    }

    else
    {
      v262 = 0;
      v264 = 0;
    }

    v116 = sub_1BE052404();
    v117 = [v286 v15[221]];

    if (v117)
    {
      *(v0 + 944) = v117;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v258 = *(v0 + 752);
      v261 = *(v0 + 744);
    }

    else
    {
      v258 = 0;
      v261 = 0;
    }

    v118 = sub_1BE052404();
    v119 = [v286 v15[221]];

    if (v119)
    {
      *(v0 + 936) = v119;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v255 = *(v0 + 728);
      v254 = *(v0 + 736);
    }

    else
    {
      v255 = 0;
      v254 = 0;
    }

    v120 = sub_1BE052404();
    v121 = [v286 v15[221]];

    if (v121)
    {
      *(v0 + 928) = v121;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v246 = *(v0 + 720);
      v248 = *(v0 + 712);
    }

    else
    {
      v246 = 0;
      v248 = 0;
    }

    v122 = *(v0 + 1280);
    v123 = *(v0 + 1272);
    v124 = *(v0 + 1224);
    sub_1BD15D62C(*(v0 + 1240), v124);
    v125 = *(v122 + 48);
    if (v111)
    {
      v126 = v110;
    }

    else
    {
      v126 = 0;
    }

    v127 = 0xE000000000000000;
    if (v111)
    {
      v127 = v111;
    }

    v238 = v127;
    v240 = v126;
    if (v125(v124, 1, v123) == 1)
    {
      v128 = *(v0 + 1272);
      v129 = *(v0 + 1224);
      sub_1BE04AEF4();
      if (v125(v129, 1, v128) != 1)
      {
        sub_1BD0DE53C(*(v0 + 1224), &unk_1EBD39970);
      }
    }

    else
    {
      (*(v0 + 1376))(*(v0 + 1296), *(v0 + 1224), *(v0 + 1272));
    }

    v253 = *(v0 + 1552);
    v251 = *(v0 + 1536);
    v130 = *(v0 + 1376);
    v131 = *(v0 + 1296);
    v132 = *(v0 + 1272);
    v252 = *(v0 + 1240);
    v242 = *(v0 + 1104);
    v250 = *(v0 + 1088);
    v133 = *(v0 + 1080);
    v244 = *(v0 + 1064);
    v134 = *(v0 + 1016);
    v135 = *(v0 + 1008);
    v136 = *(v0 + 992);
    v137 = *(v0 + 984);
    v138 = *(v0 + 976);
    *v134 = v240;
    *(v134 + 1) = v238;
    *(v134 + 2) = v278;
    *(v134 + 3) = v274;
    v130(&v134[v137[6]], v131, v132);
    v139 = &v134[v137[7]];
    *v139 = v248;
    *(v139 + 1) = v246;
    v140 = &v134[v137[8]];
    *v140 = v264;
    *(v140 + 1) = v262;
    v141 = &v134[v137[9]];
    *v141 = v255;
    *(v141 + 1) = v254;
    v142 = &v134[v137[10]];
    *v142 = v261;
    *(v142 + 1) = v258;
    *&v134[v137[11]] = v282;
    *&v134[v137[12]] = v266;
    v143 = sub_1BE052D54();
    sub_1BD77BFE0(v134, v135, type metadata accessor for AccountDebugCKReward);
    v144 = (*(v136 + 80) + 24) & ~*(v136 + 80);
    v145 = swift_allocObject();
    *(v145 + 16) = v138;
    sub_1BD77C264(v135, v145 + v144, type metadata accessor for AccountDebugCKReward);
    *(v0 + 304) = sub_1BD77C544;
    *(v0 + 312) = v145;
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD126964;
    *(v0 + 296) = &block_descriptor_206;
    v146 = _Block_copy((v0 + 272));
    v147 = v138;
    sub_1BE051F74();
    *(v0 + 896) = MEMORY[0x1E69E7CC0];
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v242, v133, v146);
    _Block_release(v146);

    swift_unknownObjectRelease();
    v251(v133, v244);
    v253(v242, v250);
    sub_1BD77C048(v134, type metadata accessor for AccountDebugCKReward);
    sub_1BD0DE53C(v252, &unk_1EBD39970);

    v57 = v65;
    v58 = v270;
    v15 = &selRef_metricsForTextStyle_;
    v55 = v233;
    v54 = v234;
    v62 = v236;
    if ((v234 & 0x8000000000000000) == 0)
    {
      continue;
    }

    break;
  }

LABEL_58:
  v63 = sub_1BE053744();
  if (v63)
  {
    *(v0 + 824) = v63;
    swift_dynamicCast();
    v64 = *(v0 + 816);
    v65 = v57;
    v66 = v58;
    if (v64)
    {
      goto LABEL_66;
    }
  }

LABEL_132:
  v148 = *(v0 + 1600);
  sub_1BD0D45FC();

  v268 = *(v0 + 1600);
LABEL_133:
  v149 = *(v0 + 1488);
  v150 = *(v0 + 1376);
  v283 = *(v0 + 1360);
  v151 = *(v0 + 1336);
  v152 = *(v0 + 1328);
  v153 = *(v0 + 1272);
  v154 = *(v0 + 1216);
  v279 = *(v0 + 1200);
  sub_1BE04ADD4();
  v149(v152, v153);
  v150(v152, v151, v153);
  v155 = sub_1BE04AE64();
  sub_1BD765BC8(v154);
  v156 = sub_1BE04B374();
  v283(v154, v279);
  v157 = PKEndOfMonthWithTimeZone();

  if (!v157)
  {
    goto LABEL_176;
  }

  v158 = *(v0 + 1488);
  v159 = *(v0 + 1376);
  v160 = *(v0 + 1336);
  v161 = *(v0 + 1320);
  v162 = *(v0 + 1288);
  v163 = *(v0 + 1280);
  v164 = *(v0 + 1272);

  sub_1BE04AEE4();

  v158(v161, v164);
  v159(v161, v162, v164);
  sub_1BE04AEF4();
  v165 = sub_1BE04AE84();
  v166 = *(v163 + 8);
  v167 = v166(v160, v164);
  if ((v165 & 1) == 0)
  {
    v249 = *(v0 + 1344);
    v245 = *(v0 + 1320);
    v247 = *(v0 + 1328);
    v241 = *(v0 + 1432);
    v243 = *(v0 + 1272);
    v190 = *(v0 + 1104);
    v237 = *(v0 + 1096);
    v239 = *(v0 + 1088);
    aBlock = *(v0 + 1080);
    v191 = *(v0 + 1072);
    v192 = *(v0 + 1064);
    v193 = *(v0 + 976);

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v194 = sub_1BE052D54();
    v195 = swift_allocObject();
    *(v195 + 16) = v193;
    *(v0 + 352) = sub_1BD77C4C8;
    *(v0 + 360) = v195;
    *(v0 + 320) = MEMORY[0x1E69E9820];
    *(v0 + 328) = 1107296256;
    *(v0 + 336) = sub_1BD126964;
    *(v0 + 344) = &block_descriptor_190_1;
    v196 = _Block_copy((v0 + 320));
    v197 = v193;
    sub_1BE051F74();
    *(v0 + 904) = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v190, aBlock, v196);
    _Block_release(v196);

    (*(v191 + 8))(aBlock, v192);
    (*(v237 + 8))(v190, v239);
    v166(v245, v243);
    v166(v247, v243);
    v166(v249, v243);

    v198 = *(v0 + 8);

    return v198();
  }

  *(v0 + 1488) = v166;
  *(v0 + 1480) = (v163 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v259 = *(v0 + 1192);
  v168 = *(v0 + 1184);
  v169 = *(v0 + 1176);
  v170 = *(v0 + 1168);
  v171 = *(v0 + 1160);
  v172 = *(v0 + 1152);
  v173 = *(v0 + 1144);
  v174 = *(v0 + 1136);
  v175 = *(v0 + 1128);
  v176 = *(v0 + 1120);
  v256 = *(v0 + 1112);
  v284 = *(v0 + 1096);
  v287 = *(v0 + 1088);
  v267 = *(v0 + 1104);
  v271 = *(v0 + 1080);
  v275 = *(v0 + 1064);
  v280 = *(v0 + 1072);
  v263 = *(v0 + 976);
  MEMORY[0x1BFB371E0](v167);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v173 + 8))(v172, v174);
  v177 = *(v170 + 8);
  v177(v169, v171);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v176 + 8))(v175, v256);
  v177(v168, v171);
  sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  sub_1BE04AF44();
  v177(v259, v171);
  v178 = *(v0 + 696);
  v179 = *(v0 + 704);
  *(v0 + 1496) = v179;
  *(v0 + 1504) = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v180 = sub_1BE052D54();
  v181 = swift_allocObject();
  v181[2] = v263;
  v181[3] = v178;
  v181[4] = v179;
  *(v0 + 448) = sub_1BD77C4D0;
  *(v0 + 456) = v181;
  *(v0 + 416) = MEMORY[0x1E69E9820];
  *(v0 + 424) = 1107296256;
  *(v0 + 432) = sub_1BD126964;
  *(v0 + 440) = &block_descriptor_197;
  v182 = _Block_copy((v0 + 416));
  v183 = v263;
  sub_1BE048C84();
  sub_1BE051F74();
  *(v0 + 888) = MEMORY[0x1E69E7CC0];
  *(v0 + 1512) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  *(v0 + 1520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  *(v0 + 1528) = sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v267, v271, v182);
  _Block_release(v182);

  v184 = *(v280 + 8);
  *(v0 + 1536) = v184;
  *(v0 + 1544) = (v280 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v184(v271, v275);
  v185 = *(v284 + 8);
  *(v0 + 1552) = v185;
  *(v0 + 1560) = (v284 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v185(v267, v287);

  v5 = [objc_opt_self() sharedInstance];
  *(v0 + 1568) = v5;
  if (!v5)
  {
LABEL_180:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v5);
  }

  v186 = v5;
  v187 = sub_1BE04AE64();
  *(v0 + 1576) = v187;
  v188 = sub_1BE04AE64();
  *(v0 + 1584) = v188;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 968;
  *(v0 + 88) = sub_1BD771A04;
  v189 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1BD16E918;
  *(v0 + 232) = &block_descriptor_200_0;
  *(v0 + 240) = v189;
  [v186 applePayContainerItemsFromDate:v187 toDate:v188 completion:v0 + 208];
  v5 = (v0 + 80);
LABEL_170:

  return MEMORY[0x1EEE6DEC8](v5);
}

uint64_t sub_1BD773C40()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD773D20, 0, 0);
}

uint64_t sub_1BD773D20()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 880);

  v330 = v3;
  if (v3)
  {
    v4 = *(v0 + 1800);
    v5 = *(v0 + 1432);
    v320 = [v3 suppressBehavior] == 1;
    if (v4 == 1 && v5)
    {
      v6 = *(v0 + 1432);
      v7 = v3;
      v301 = v6;
    }

    else
    {
      if (*(v0 + 1801) != 1)
      {
        v290 = 0;
        v301 = 0;
        goto LABEL_10;
      }

      v7 = *(*(v0 + 976) + *(v0 + 1440));
      v6 = v3;
      v301 = v7;
    }

    v8 = v6;
    v9 = v7;
    v290 = v3;
  }

  else
  {
    v290 = 0;
    v301 = 0;
    v320 = 0;
  }

LABEL_10:
  v10 = *(v0 + 1736);
  v11 = *(v0 + 1728);
  v12 = *(v0 + 1720);
  v13 = *(v0 + 1712);
  v14 = *(v0 + 1280);
  v15 = *(v0 + 1272);
  v16 = *(v0 + 1248);
  sub_1BD15D62C(*(v0 + 1256), v16);
  v17 = *(v14 + 48);
  if (v12)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  v19 = 0xE000000000000000;
  if (v12)
  {
    v20 = v12;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v281 = v20;
  v282 = v18;
  if (v10)
  {
    v21 = v11;
  }

  else
  {
    v21 = 0;
  }

  if (v10)
  {
    v19 = v10;
  }

  v275 = v19;
  v278 = v21;
  if (v17(v16, 1, v15) == 1)
  {
    v22 = *(v0 + 1272);
    v23 = *(v0 + 1248);
    sub_1BE04AEF4();
    if (v17(v23, 1, v22) != 1)
    {
      sub_1BD0DE53C(*(v0 + 1248), &unk_1EBD39970);
    }
  }

  else
  {
    (*(v0 + 1376))(*(v0 + 1304), *(v0 + 1248), *(v0 + 1272));
  }

  v272 = *(v0 + 1801);
  v24 = *(v0 + 1696);
  v25 = *(v0 + 1688);
  v294 = *(v0 + 1680);
  v298 = *(v0 + 1672);
  v26 = *(v0 + 1648);
  v308 = *(v0 + 1552);
  v303 = *(v0 + 1536);
  v27 = *(v0 + 1376);
  v28 = *(v0 + 1304);
  v29 = *(v0 + 1272);
  v315 = *(v0 + 1256);
  v283 = *(v0 + 1104);
  v292 = *(v0 + 1088);
  v284 = *(v0 + 1080);
  v286 = *(v0 + 1064);
  v30 = *(v0 + 1056);
  v31 = *(v0 + 1048);
  v32 = *(v0 + 1744);
  v33 = *(v0 + 1760);
  v34 = *(v0 + 1032);
  v35 = *(v0 + 1024);
  v36 = *(v0 + 976);
  *v30 = v282;
  *(v30 + 8) = v281;
  *(v30 + 16) = v278;
  *(v30 + 24) = v275;
  *(v30 + 32) = v32;
  *(v30 + 48) = v33;
  v27(v30 + v35[8], v28, v29);
  v37 = (v30 + v35[9]);
  *v37 = v290;
  v37[1] = v301;
  v38 = (v30 + v35[10]);
  *v38 = v25;
  v38[1] = v24;
  *(v30 + v35[11]) = v320;
  *(v30 + v35[12]) = v26;
  v39 = sub_1BE052D54();
  sub_1BD77BFE0(v30, v31, type metadata accessor for AccountDebugCKTransaction);
  v40 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = v272;
  *(v41 + 24) = v36;
  sub_1BD77C264(v31, v41 + v40, type metadata accessor for AccountDebugCKTransaction);
  *(v0 + 400) = sub_1BD77C5F0;
  *(v0 + 408) = v41;
  *(v0 + 368) = MEMORY[0x1E69E9820];
  *(v0 + 376) = 1107296256;
  *(v0 + 384) = sub_1BD126964;
  *(v0 + 392) = &block_descriptor_215_0;
  v42 = _Block_copy((v0 + 368));
  v43 = v36;
  sub_1BE051F74();
  *(v0 + 912) = MEMORY[0x1E69E7CC0];
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v283, v284, v42);
  _Block_release(v42);

  swift_unknownObjectRelease();
  v303(v284, v286);
  v308(v283, v292);
  sub_1BD77C048(v30, type metadata accessor for AccountDebugCKTransaction);

  sub_1BD0DE53C(v315, &unk_1EBD39970);
  v44 = *(v0 + 1664);
  v45 = *(v0 + 1656);
  v46 = &selRef_metricsForTextStyle_;
  while (1)
  {
    v47 = *(v0 + 1624);
    if (v47 < 0)
    {
      v53 = sub_1BE053744();
      if (!v53)
      {
        break;
      }

      *(v0 + 784) = v53;
      swift_dynamicCast();
      v52 = *(v0 + 960);
      i = v45;
      v51 = v44;
    }

    else
    {
      v48 = v45;
      v49 = v44;
      for (i = v45; !v49; ++v48)
      {
        i = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_188;
        }

        if (i >= ((*(v0 + 1640) + 64) >> 6))
        {
          goto LABEL_65;
        }

        v49 = *(*(v0 + 1632) + 8 * i);
      }

      v51 = (v49 - 1) & v49;
      v52 = *(*(v47 + 48) + ((i << 9) | (8 * __clz(__rbit64(v49)))));
    }

    *(v0 + 1664) = v51;
    *(v0 + 1656) = i;
    *(v0 + 1648) = v52;
    if (!v52)
    {
      break;
    }

    v54 = sub_1BE053004();
    v56 = v55;
    if (v54 == sub_1BE052434() && v56 == v57)
    {
    }

    else
    {
      v59 = sub_1BE053B84();

      if ((v59 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39F80);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1BE0B7020;
    *(v60 + 32) = v52;
    v61 = objc_allocWithZone(MEMORY[0x1E69B86F0]);
    v62 = v52;
    v63 = sub_1BE052724();

    v64 = [v61 initWithRecords_];
    *(v0 + 1672) = v64;

    v321 = v64;
    v65 = [objc_allocWithZone(MEMORY[0x1E69B8EA8]) initWithCloudStoreCoder_];
    *(v0 + 1680) = v65;
    if (v65)
    {
      v66 = *(*(v0 + 976) + *(v0 + 1440));
      v67 = v66;
      v68 = v65;
    }

    else
    {
      v68 = 0;
      v66 = 0;
    }

    v326 = v51;
    *(v0 + 1696) = v66;
    v316 = v68;
    *(v0 + 1688) = v68;
    v311 = v65;
    v69 = [v62 encryptedValues];
    *(v0 + 1704) = v69;
    v70 = sub_1BE052404();
    v331 = v69;
    v71 = [v69 v46[221]];

    if (v71)
    {
      v72 = *(v0 + 1416);
      *(v0 + 832) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v73 = *(v0 + 616);
      v74 = *(v0 + 624);
      if (v72)
      {
        if (v73 == *(v0 + 1408) && *(v0 + 1416) == v74)
        {
          LODWORD(v72) = 1;
        }

        else
        {
          LODWORD(v72) = sub_1BE053B84();
        }
      }
    }

    else
    {
      v73 = 0;
      v74 = 0;
      LODWORD(v72) = *(v0 + 1416) == 0;
    }

    *(v0 + 1800) = v72 & 1;
    v75 = [*(*(v0 + 976) + *(v0 + 1352)) accountIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = sub_1BE052434();
      v79 = v78;

      if (!v74)
      {
        if (!v79)
        {
          goto LABEL_155;
        }

        v80 = 0;
        goto LABEL_63;
      }

      if (v79)
      {
        if (v73 == v77 && v74 == v79)
        {

LABEL_155:
          LOBYTE(v80) = 1;
LABEL_156:
          *(v0 + 1801) = v80 & 1;
          v228 = sub_1BE052404();
          v229 = v331;
          v230 = [v331 objectForKey_];

          if (v230)
          {
            *(v0 + 840) = v230;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v231 = *(v0 + 632);
            v230 = *(v0 + 640);
          }

          else
          {
            v231 = 0;
          }

          *(v0 + 1720) = v230;
          *(v0 + 1712) = v231;
          v232 = sub_1BE052404();
          v233 = [v331 objectForKey_];

          if (v233)
          {
            *(v0 + 848) = v233;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v234 = *(v0 + 648);
            v235 = *(v0 + 656);
          }

          else
          {
            v234 = 0;
            v235 = 0;
          }

          *(v0 + 1736) = v235;
          *(v0 + 1728) = v234;
          v236 = sub_1BE052404();
          v237 = [v331 objectForKey_];

          v238 = *(v0 + 1272);
          v239 = *(v0 + 1256);
          v240 = (*(v0 + 1280) + 56);
          if (v237)
          {
            *(v0 + 856) = v237;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            v229 = v331;
            swift_dynamicCast();
            (*v240)(v239, 0, 1, v238);
          }

          else
          {
            (*v240)(*(v0 + 1256), 1, 1, v238);
          }

          v241 = sub_1BE052404();
          v242 = [v229 objectForKey_];

          if (v242)
          {
            *(v0 + 864) = v242;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v243 = *(v0 + 664);
            v244 = *(v0 + 672);
          }

          else
          {
            v243 = 0;
            v244 = 0;
          }

          *(v0 + 1752) = v244;
          *(v0 + 1744) = v243;
          v245 = sub_1BE052404();
          v246 = [v229 objectForKey_];

          if (v246)
          {
            *(v0 + 872) = v246;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v247 = *(v0 + 680);
            v248 = *(v0 + 688);
          }

          else
          {
            v247 = 0;
            v248 = 0;
          }

          *(v0 + 1768) = v248;
          *(v0 + 1760) = v247;
          if (v80)
          {
            v249 = [*(*(v0 + 976) + *(v0 + 1440)) transactionSourceIdentifiers];
            if (!v249)
            {
              goto LABEL_177;
            }

LABEL_176:
            v251 = v249;
            v252 = sub_1BE052A34();

            sub_1BD960F28(v252);
            v254 = v253;
          }

          else
          {
            v250 = *(v0 + 1432);
            if (v250)
            {
              v249 = [v250 transactionSourceIdentifiers];
              if (v249)
              {
                goto LABEL_176;
              }
            }

LABEL_177:
            v254 = 0;
          }

          v255 = *(*(v0 + 976) + *(v0 + 1448));
          *(v0 + 1776) = v255;
          if (v230)
          {
            v256 = v255;
            sub_1BE048C84();
            v257 = sub_1BE052404();

            *(v0 + 1784) = v257;
            if (v254)
            {
              goto LABEL_180;
            }

LABEL_182:
            v258 = 0;
          }

          else
          {
            v259 = v255;
            v257 = 0;
            *(v0 + 1784) = 0;
            if (!v254)
            {
              goto LABEL_182;
            }

LABEL_180:
            v258 = sub_1BE052404();
          }

          *(v0 + 1792) = v258;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 880;
          *(v0 + 24) = sub_1BD773C40;
          v260 = swift_continuation_init();
          *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD525E8);
          *(v0 + 144) = MEMORY[0x1E69E9820];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1BD1F07A8;
          *(v0 + 168) = &block_descriptor_209_1;
          *(v0 + 176) = v260;
          [v255 transactionWithServiceIdentifier:v257 transactionSourceIdentifier:v258 completion:v0 + 144];
          v47 = v0 + 16;
          goto LABEL_184;
        }

        v80 = sub_1BE053B84();

        goto LABEL_63;
      }
    }

    else if (!v74)
    {
      goto LABEL_155;
    }

    v80 = 0;
LABEL_63:

    v51 = v326;
    if ((v80 | v72))
    {
      goto LABEL_156;
    }

    sub_1BD17195C(v316, v66);

    swift_unknownObjectRelease();
    v46 = &selRef_metricsForTextStyle_;
LABEL_26:

    v45 = i;
    v44 = v51;
  }

LABEL_65:
  v81 = *(v0 + 1600);
  v82 = *(v0 + 1464);
  sub_1BD0D45FC();
  v47 = [v81 allRecordsWithRecordType_];
  if (!v47)
  {
LABEL_191:
    __break(1u);
    goto LABEL_192;
  }

  v83 = v47;
  v84 = sub_1BE052A34();

  if ((v84 & 0xC000000000000001) != 0)
  {
    sub_1BE0536B4();
    v47 = sub_1BE052A74();
    v84 = *(v0 + 464);
    v85 = *(v0 + 472);
    v86 = *(v0 + 480);
    v87 = *(v0 + 488);
    v88 = *(v0 + 496);
  }

  else
  {
    v87 = 0;
    v89 = -1 << *(v84 + 32);
    v85 = v84 + 56;
    v86 = ~v89;
    v90 = -v89;
    if (v90 < 64)
    {
      v91 = ~(-1 << v90);
    }

    else
    {
      v91 = -1;
    }

    v88 = v91 & *(v84 + 56);
  }

  v92 = (v86 + 64) >> 6;
  v262 = v84;
  v261 = v85;
  v264 = v92;
  if (v84 < 0)
  {
    goto LABEL_73;
  }

  while (2)
  {
    while (2)
    {
      v97 = v87;
      v98 = v88;
      v95 = v87;
      if (!v88)
      {
        while (1)
        {
          v95 = v97 + 1;
          if (__OFADD__(v97, 1))
          {
            break;
          }

          if (v95 >= v92)
          {
            goto LABEL_147;
          }

          v98 = *(v85 + 8 * v95);
          ++v97;
          if (v98)
          {
            goto LABEL_80;
          }
        }

LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

LABEL_80:
      v96 = (v98 - 1) & v98;
      v94 = *(*(v84 + 48) + ((v95 << 9) | (8 * __clz(__rbit64(v98)))));
      if (!v94)
      {
        goto LABEL_147;
      }

LABEL_81:
      v312 = v96;
      v327 = v94;
      v99 = sub_1BE053004();
      v101 = v100;
      if (v99 == sub_1BE052434() && v101 == v102)
      {
      }

      else
      {
        v104 = sub_1BE053B84();

        if ((v104 & 1) == 0)
        {

          v87 = v95;
          v88 = v312;
          v92 = v264;
          if (v84 < 0)
          {
            goto LABEL_73;
          }

          continue;
        }
      }

      break;
    }

    v105 = *(v0 + 1280);
    v106 = *(v0 + 1272);
    v107 = *(v0 + 1240);
    v332 = [v327 encryptedValues];
    v108 = sub_1BE052404();
    v109 = [v327 pk:v108 referenceForKey:?];

    v304 = *(v105 + 56);
    v304(v107, 1, 1, v106);
    v307 = v109;
    if (!v109)
    {
      v309 = 0;
      goto LABEL_118;
    }

    v322 = [v109 recordID];
    if (!v322)
    {
      v309 = 0;
      goto LABEL_118;
    }

    v47 = [*(v0 + 1600) allRecordsWithRecordType_];
    if (!v47)
    {
      goto LABEL_190;
    }

    v110 = v47;
    v111 = sub_1BE052A34();

    if ((v111 & 0xC000000000000001) != 0)
    {
      sub_1BE0536B4();
      v47 = sub_1BE052A74();
      v111 = *(v0 + 544);
      v112 = *(v0 + 552);
      v113 = *(v0 + 560);
      v114 = *(v0 + 568);
      v115 = *(v0 + 576);
    }

    else
    {
      v114 = 0;
      v116 = -1 << *(v111 + 32);
      v112 = v111 + 56;
      v113 = ~v116;
      v117 = -v116;
      if (v117 < 64)
      {
        v118 = ~(-1 << v117);
      }

      else
      {
        v118 = -1;
      }

      v115 = v118 & *(v111 + 56);
    }

    v309 = 0;
    v119 = (v113 + 64) >> 6;
    v317 = v111;
LABEL_101:
    v120 = v114;
    v121 = v115;
    if ((v111 & 0x8000000000000000) == 0)
    {
      while (1)
      {
        v124 = v120;
        v125 = v121;
        v114 = v120;
        if (!v121)
        {
          break;
        }

LABEL_109:
        v115 = (v125 - 1) & v125;
        v123 = *(*(v111 + 48) + ((v114 << 9) | (8 * __clz(__rbit64(v125)))));
        if (!v123)
        {
          goto LABEL_117;
        }

LABEL_110:
        sub_1BD0E5E8C(0, &qword_1EBD3E3F0);
        v126 = [v123 recordID];
        v127 = sub_1BE053074();

        if (v127)
        {
          v295 = *(v0 + 1240);

          v128 = [v123 encryptedValues];
          v129 = sub_1BE052404();
          v130 = [v128 objectForKey_];

          swift_unknownObjectRelease();
          sub_1BD0DE53C(v295, &unk_1EBD39970);
          v131 = *(v0 + 1272);
          v132 = *(v0 + 1232);
          if (v130)
          {
            *(v0 + 792) = v130;
            v133 = v131;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
            swift_dynamicCast();
            v134 = v132;
            v135 = 0;
            v131 = v133;
          }

          else
          {
            v134 = *(v0 + 1232);
            v135 = 1;
          }

          v304(v134, v135, 1, v131);
          v47 = sub_1BD1CBBEC(*(v0 + 1232), *(v0 + 1240));
          v309 = v123;
          v111 = v317;
          goto LABEL_101;
        }

        v120 = v114;
        v121 = v115;
        v111 = v317;
        if (v317 < 0)
        {
          goto LABEL_102;
        }
      }

      while (1)
      {
        v114 = v124 + 1;
        if (__OFADD__(v124, 1))
        {
          break;
        }

        if (v114 >= v119)
        {
          goto LABEL_117;
        }

        v125 = *(v112 + 8 * v114);
        ++v124;
        if (v125)
        {
          goto LABEL_109;
        }
      }

      __break(1u);
LABEL_188:
      __break(1u);
      goto LABEL_189;
    }

LABEL_102:
    v122 = sub_1BE053744();
    if (v122)
    {
      *(v0 + 808) = v122;
      swift_dynamicCast();
      v123 = *(v0 + 800);
      v114 = v120;
      v115 = v121;
      if (v123)
      {
        goto LABEL_110;
      }
    }

LABEL_117:
    sub_1BD0D45FC();

    v46 = &selRef_metricsForTextStyle_;
LABEL_118:
    v136 = sub_1BE052404();
    v137 = [v332 v46[221]];

    if (v137)
    {
      *(v0 + 920) = v137;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v138 = *(v0 + 584);
      v139 = *(v0 + 592);
    }

    else
    {
      v138 = 0;
      v139 = 0;
    }

    v140 = sub_1BE052404();
    v141 = [v332 v46[221]];

    if (v141)
    {
      *(v0 + 776) = v141;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v318 = *(v0 + 608);
      v323 = *(v0 + 600);
    }

    else
    {
      v318 = 0;
      v323 = 0;
    }

    v142 = sub_1BE052404();
    v143 = [v332 v46[221]];

    if (v143)
    {
      *(v0 + 952) = v143;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v302 = *(v0 + 768);
      v305 = *(v0 + 760);
    }

    else
    {
      v302 = 0;
      v305 = 0;
    }

    v144 = sub_1BE052404();
    v145 = [v332 v46[221]];

    if (v145)
    {
      *(v0 + 944) = v145;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v296 = *(v0 + 752);
      v299 = *(v0 + 744);
    }

    else
    {
      v296 = 0;
      v299 = 0;
    }

    v146 = sub_1BE052404();
    v147 = [v332 v46[221]];

    if (v147)
    {
      *(v0 + 936) = v147;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v291 = *(v0 + 736);
      v293 = *(v0 + 728);
    }

    else
    {
      v291 = 0;
      v293 = 0;
    }

    v148 = sub_1BE052404();
    v149 = [v332 v46[221]];

    if (v149)
    {
      *(v0 + 928) = v149;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52670);
      swift_dynamicCast();
      v276 = *(v0 + 720);
      v279 = *(v0 + 712);
    }

    else
    {
      v276 = 0;
      v279 = 0;
    }

    v150 = *(v0 + 1280);
    v151 = *(v0 + 1272);
    v152 = *(v0 + 1224);
    sub_1BD15D62C(*(v0 + 1240), v152);
    v153 = *(v150 + 48);
    if (v139)
    {
      v154 = v138;
    }

    else
    {
      v154 = 0;
    }

    v155 = 0xE000000000000000;
    if (v139)
    {
      v155 = v139;
    }

    v266 = v155;
    v268 = v154;
    if (v153(v152, 1, v151) == 1)
    {
      v156 = *(v0 + 1272);
      v157 = *(v0 + 1224);
      sub_1BE04AEF4();
      if (v153(v157, 1, v156) != 1)
      {
        sub_1BD0DE53C(*(v0 + 1224), &unk_1EBD39970);
      }
    }

    else
    {
      (*(v0 + 1376))(*(v0 + 1296), *(v0 + 1224), *(v0 + 1272));
    }

    v289 = *(v0 + 1552);
    v287 = *(v0 + 1536);
    v158 = *(v0 + 1376);
    v159 = *(v0 + 1296);
    v160 = *(v0 + 1272);
    v288 = *(v0 + 1240);
    v270 = *(v0 + 1104);
    v285 = *(v0 + 1088);
    v161 = *(v0 + 1080);
    v273 = *(v0 + 1064);
    v162 = *(v0 + 1016);
    v163 = *(v0 + 1008);
    v164 = *(v0 + 992);
    v165 = *(v0 + 984);
    v166 = *(v0 + 976);
    *v162 = v268;
    v162[1] = v266;
    v162[2] = v323;
    v162[3] = v318;
    v158(v162 + v165[6], v159, v160);
    v167 = (v162 + v165[7]);
    *v167 = v279;
    v167[1] = v276;
    v168 = (v162 + v165[8]);
    *v168 = v305;
    v168[1] = v302;
    v169 = (v162 + v165[9]);
    *v169 = v293;
    v169[1] = v291;
    v170 = (v162 + v165[10]);
    *v170 = v299;
    v170[1] = v296;
    *(v162 + v165[11]) = v327;
    *(v162 + v165[12]) = v309;
    v171 = sub_1BE052D54();
    sub_1BD77BFE0(v162, v163, type metadata accessor for AccountDebugCKReward);
    v172 = (*(v164 + 80) + 24) & ~*(v164 + 80);
    v173 = swift_allocObject();
    *(v173 + 16) = v166;
    sub_1BD77C264(v163, v173 + v172, type metadata accessor for AccountDebugCKReward);
    *(v0 + 304) = sub_1BD77C544;
    *(v0 + 312) = v173;
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1BD126964;
    *(v0 + 296) = &block_descriptor_206;
    v174 = _Block_copy((v0 + 272));
    v175 = v166;
    sub_1BE051F74();
    *(v0 + 896) = MEMORY[0x1E69E7CC0];
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v270, v161, v174);
    _Block_release(v174);

    swift_unknownObjectRelease();
    v287(v161, v273);
    v289(v270, v285);
    sub_1BD77C048(v162, type metadata accessor for AccountDebugCKReward);
    sub_1BD0DE53C(v288, &unk_1EBD39970);

    v87 = v95;
    v88 = v312;
    v46 = &selRef_metricsForTextStyle_;
    v85 = v261;
    v84 = v262;
    v92 = v264;
    if ((v262 & 0x8000000000000000) == 0)
    {
      continue;
    }

    break;
  }

LABEL_73:
  v93 = sub_1BE053744();
  if (v93)
  {
    *(v0 + 824) = v93;
    swift_dynamicCast();
    v94 = *(v0 + 816);
    v95 = v87;
    v96 = v88;
    if (v94)
    {
      goto LABEL_81;
    }
  }

LABEL_147:
  v176 = *(v0 + 1600);
  sub_1BD0D45FC();

  v177 = *(v0 + 1488);
  v313 = *(v0 + 1600);
  v178 = *(v0 + 1376);
  v328 = *(v0 + 1360);
  v179 = *(v0 + 1336);
  v180 = *(v0 + 1328);
  v181 = *(v0 + 1272);
  v182 = *(v0 + 1216);
  v324 = *(v0 + 1200);
  sub_1BE04ADD4();
  v177(v180, v181);
  v178(v180, v179, v181);
  v183 = sub_1BE04AE64();
  sub_1BD765BC8(v182);
  v184 = sub_1BE04B374();
  v328(v182, v324);
  v185 = PKEndOfMonthWithTimeZone();

  if (!v185)
  {
LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  v186 = *(v0 + 1488);
  v187 = *(v0 + 1376);
  v188 = *(v0 + 1336);
  v189 = *(v0 + 1320);
  v190 = *(v0 + 1288);
  v191 = *(v0 + 1280);
  v192 = *(v0 + 1272);

  sub_1BE04AEE4();

  v186(v189, v192);
  v187(v189, v190, v192);
  sub_1BE04AEF4();
  v193 = sub_1BE04AE84();
  v194 = *(v191 + 8);
  v195 = v194(v188, v192);
  if ((v193 & 1) == 0)
  {
    v280 = *(v0 + 1344);
    v274 = *(v0 + 1320);
    v277 = *(v0 + 1328);
    v269 = *(v0 + 1432);
    v271 = *(v0 + 1272);
    v218 = *(v0 + 1104);
    v265 = *(v0 + 1096);
    v267 = *(v0 + 1088);
    aBlock = *(v0 + 1080);
    v219 = *(v0 + 1072);
    v220 = *(v0 + 1064);
    v221 = *(v0 + 976);

    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v222 = sub_1BE052D54();
    v223 = swift_allocObject();
    *(v223 + 16) = v221;
    *(v0 + 352) = sub_1BD77C4C8;
    *(v0 + 360) = v223;
    *(v0 + 320) = MEMORY[0x1E69E9820];
    *(v0 + 328) = 1107296256;
    *(v0 + 336) = sub_1BD126964;
    *(v0 + 344) = &block_descriptor_190_1;
    v224 = _Block_copy((v0 + 320));
    v225 = v221;
    sub_1BE051F74();
    *(v0 + 904) = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v218, aBlock, v224);
    _Block_release(v224);

    (*(v219 + 8))(aBlock, v220);
    (*(v265 + 8))(v218, v267);
    v194(v274, v271);
    v194(v277, v271);
    v194(v280, v271);

    v226 = *(v0 + 8);

    return v226();
  }

  *(v0 + 1488) = v194;
  *(v0 + 1480) = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v300 = *(v0 + 1192);
  v196 = *(v0 + 1184);
  v197 = *(v0 + 1176);
  v198 = *(v0 + 1168);
  v199 = *(v0 + 1160);
  v200 = *(v0 + 1152);
  v201 = *(v0 + 1144);
  v202 = *(v0 + 1136);
  v203 = *(v0 + 1128);
  v204 = *(v0 + 1120);
  v297 = *(v0 + 1112);
  v329 = *(v0 + 1096);
  v333 = *(v0 + 1088);
  v310 = *(v0 + 1104);
  v314 = *(v0 + 1080);
  v319 = *(v0 + 1064);
  v325 = *(v0 + 1072);
  v306 = *(v0 + 976);
  MEMORY[0x1BFB371E0](v195);
  sub_1BE04AC24();
  sub_1BE04ABB4();
  (*(v201 + 8))(v200, v202);
  v205 = *(v198 + 8);
  v205(v197, v199);
  sub_1BE04AC44();
  sub_1BE04ABA4();
  (*(v204 + 8))(v203, v297);
  v205(v196, v199);
  sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328]);
  sub_1BE04AF44();
  v205(v300, v199);
  v206 = *(v0 + 696);
  v207 = *(v0 + 704);
  *(v0 + 1496) = v207;
  *(v0 + 1504) = sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v208 = sub_1BE052D54();
  v209 = swift_allocObject();
  v209[2] = v306;
  v209[3] = v206;
  v209[4] = v207;
  *(v0 + 448) = sub_1BD77C4D0;
  *(v0 + 456) = v209;
  *(v0 + 416) = MEMORY[0x1E69E9820];
  *(v0 + 424) = 1107296256;
  *(v0 + 432) = sub_1BD126964;
  *(v0 + 440) = &block_descriptor_197;
  v210 = _Block_copy((v0 + 416));
  v211 = v306;
  sub_1BE048C84();
  sub_1BE051F74();
  *(v0 + 888) = MEMORY[0x1E69E7CC0];
  *(v0 + 1512) = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  *(v0 + 1520) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  *(v0 + 1528) = sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v310, v314, v210);
  _Block_release(v210);

  v212 = v325[1];
  *(v0 + 1536) = v212;
  *(v0 + 1544) = (v325 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v212(v314, v319);
  v213 = *(v329 + 8);
  *(v0 + 1552) = v213;
  *(v0 + 1560) = (v329 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v213(v310, v333);

  v47 = [objc_opt_self() sharedInstance];
  *(v0 + 1568) = v47;
  if (!v47)
  {
LABEL_193:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v47);
  }

  v214 = v47;
  v215 = sub_1BE04AE64();
  *(v0 + 1576) = v215;
  v216 = sub_1BE04AE64();
  *(v0 + 1584) = v216;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 968;
  *(v0 + 88) = sub_1BD771A04;
  v217 = swift_continuation_init();
  *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600);
  *(v0 + 208) = MEMORY[0x1E69E9820];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1BD16E918;
  *(v0 + 232) = &block_descriptor_200_0;
  *(v0 + 240) = v217;
  [v214 applePayContainerItemsFromDate:v215 toDate:v216 completion:v0 + 208];
  v47 = v0 + 80;
LABEL_184:

  return MEMORY[0x1EEE6DEC8](v47);
}

uint64_t sub_1BD776144()
{
  v1 = v0[199];
  v2 = v0[198];
  v3 = v0[197];
  v4 = v0[196];
  swift_willThrow();

  v5 = v0[186];
  v6 = v0[172];
  v73 = v0[170];
  v7 = v0[167];
  v8 = v0[166];
  v9 = v0[159];
  v10 = v0[152];
  v71 = v0[150];
  sub_1BE04ADD4();
  v5(v8, v9);
  v6(v8, v7, v9);
  v11 = sub_1BE04AE64();
  sub_1BD765BC8(v10);
  v12 = sub_1BE04B374();
  v73(v10, v71);
  v13 = PKEndOfMonthWithTimeZone();

  if (!v13)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v0[186];
  v16 = v0[172];
  v17 = v0[167];
  v18 = v0[165];
  v19 = v0[161];
  v20 = v0[160];
  v21 = v0[159];

  sub_1BE04AEE4();

  v15(v18, v21);
  v16(v18, v19, v21);
  sub_1BE04AEF4();
  v22 = sub_1BE04AE84();
  v23 = *(v20 + 8);
  v24 = v23(v17, v21);
  if (v22)
  {
    v0[186] = v23;
    v0[185] = (v20 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66 = v0[149];
    v25 = v0[148];
    v26 = v0[147];
    v27 = v0[146];
    v28 = v0[145];
    v29 = v0[144];
    v30 = v0[143];
    v31 = v0[142];
    v32 = v0[141];
    v33 = v0[140];
    v65 = v0[139];
    v74 = v0[137];
    v75 = v0[136];
    v68 = v0[138];
    v69 = v0[135];
    v70 = v0[133];
    v72 = v0[134];
    v67 = v0[122];
    MEMORY[0x1BFB371E0](v24);
    sub_1BE04AC24();
    sub_1BE04ABB4();
    (*(v30 + 8))(v29, v31);
    v34 = *(v27 + 8);
    v34(v26, v28);
    sub_1BE04AC44();
    sub_1BE04ABA4();
    (*(v33 + 8))(v32, v65);
    v34(v25, v28);
    sub_1BD77C1B8(&qword_1EBD4E940, MEMORY[0x1E6969328]);
    sub_1BE04AF44();
    v34(v66, v28);
    v35 = v0[87];
    v36 = v0[88];
    v0[187] = v36;
    v0[188] = sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v37 = sub_1BE052D54();
    v38 = swift_allocObject();
    v38[2] = v67;
    v38[3] = v35;
    v38[4] = v36;
    v0[56] = sub_1BD77C4D0;
    v0[57] = v38;
    v0[52] = MEMORY[0x1E69E9820];
    v0[53] = 1107296256;
    v0[54] = sub_1BD126964;
    v0[55] = &block_descriptor_197;
    v39 = _Block_copy(v0 + 52);
    v40 = v67;
    sub_1BE048C84();
    sub_1BE051F74();
    v0[111] = MEMORY[0x1E69E7CC0];
    v0[189] = sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    v0[190] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    v0[191] = sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v68, v69, v39);
    _Block_release(v39);

    v41 = *(v72 + 8);
    v0[192] = v41;
    v0[193] = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v41(v69, v70);
    v42 = *(v74 + 8);
    v0[194] = v42;
    v0[195] = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v68, v75);

    v14 = [objc_opt_self() sharedInstance];
    v0[196] = v14;
    if (v14)
    {
      v43 = v14;
      v44 = sub_1BE04AE64();
      v0[197] = v44;
      v45 = sub_1BE04AE64();
      v0[198] = v45;
      v0[10] = v0;
      v0[15] = v0 + 121;
      v0[11] = sub_1BD771A04;
      v46 = swift_continuation_init();
      v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52600);
      v0[26] = MEMORY[0x1E69E9820];
      v0[27] = 1107296256;
      v0[28] = sub_1BD16E918;
      v0[29] = &block_descriptor_200_0;
      v0[30] = v46;
      [v43 applePayContainerItemsFromDate:v44 toDate:v45 completion:v0 + 26];
      v14 = v0 + 10;

      return MEMORY[0x1EEE6DEC8](v14);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v14);
  }

  v64 = v0[168];
  v62 = v0[165];
  v63 = v0[166];
  v60 = v0[179];
  v61 = v0[159];
  v47 = v0[138];
  v58 = v0[137];
  v59 = v0[136];
  v57 = v0[135];
  v48 = v0[134];
  v49 = v0[133];
  v50 = v0[122];

  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v51 = sub_1BE052D54();
  v52 = swift_allocObject();
  *(v52 + 16) = v50;
  v0[44] = sub_1BD77C4C8;
  v0[45] = v52;
  v0[40] = MEMORY[0x1E69E9820];
  v0[41] = 1107296256;
  v0[42] = sub_1BD126964;
  v0[43] = &block_descriptor_190_1;
  v53 = _Block_copy(v0 + 40);
  v54 = v50;
  sub_1BE051F74();
  v0[113] = MEMORY[0x1E69E7CC0];
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v47, v57, v53);
  _Block_release(v53);

  (*(v48 + 8))(v57, v49);
  (*(v58 + 8))(v47, v59);
  v23(v62, v61);
  v23(v63, v61);
  v23(v64, v61);

  v55 = v0[1];

  return v55();
}

uint64_t sub_1BD776B74(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_1BE04D8C4();
}

uint64_t sub_1BD776BE0()
{
  v1[27] = v0;
  v2 = sub_1BE051F54();
  v1[28] = v2;
  v1[29] = *(v2 - 8);
  v1[30] = swift_task_alloc();
  v3 = sub_1BE051FA4();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD776CFC, 0, 0);
}

uint64_t sub_1BD776CFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v1 = v0[24];
  if (v1)
  {
LABEL_2:

    v2 = v0[1];

    return v2(v1);
  }

  v4 = v0[27];
  v5 = *&v4[OBJC_IVAR____TtC9PassKitUI17AccountDebugModel_accountService];
  v0[34] = v5;
  if (!v5)
  {
    v8 = v0[32];
    v7 = v0[33];
    v9 = v0[30];
    v16 = v0[31];
    v10 = v0[28];
    v11 = v0[29];
    sub_1BD0E5E8C(0, &qword_1EBD35E90);
    v15 = sub_1BE052D54();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = 0;
    v0[22] = sub_1BD77C4C0;
    v0[23] = v12;
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1BD126964;
    v0[21] = &block_descriptor_182_0;
    v13 = _Block_copy(v0 + 18);
    v14 = v4;
    sub_1BE051F74();
    v0[26] = MEMORY[0x1E69E7CC0];
    sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
    sub_1BD14ECDC();
    sub_1BE053664();
    MEMORY[0x1BFB3FDF0](0, v7, v9, v13);
    _Block_release(v13);

    (*(v11 + 8))(v9, v10);
    (*(v8 + 8))(v7, v16);

    goto LABEL_2;
  }

  v0[2] = v0;
  v0[7] = v0 + 25;
  v0[3] = sub_1BD777088;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47308);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1BD16E918;
  v0[13] = &block_descriptor_176;
  v0[14] = v6;
  [v5 defaultAccountForFeature:2 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1BD777088()
{
  v1 = *(*v0 + 48);
  *(*v0 + 280) = v1;
  if (v1)
  {
    v2 = sub_1BD7773DC;
  }

  else
  {
    v2 = sub_1BD777198;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BD777198()
{
  v1 = v0[25];

  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v15 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[27];
  sub_1BD0E5E8C(0, &qword_1EBD35E90);
  v14 = sub_1BE052D54();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  v0[22] = sub_1BD77C4C0;
  v0[23] = v8;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1BD126964;
  v0[21] = &block_descriptor_182_0;
  v9 = _Block_copy(v0 + 18);
  v10 = v1;
  v11 = v7;
  sub_1BE051F74();
  v0[26] = MEMORY[0x1E69E7CC0];
  sub_1BD77C1B8(&qword_1EBD366B0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD387F0);
  sub_1BD14ECDC();
  sub_1BE053664();
  MEMORY[0x1BFB3FDF0](0, v3, v4, v9);
  _Block_release(v9);

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v3, v15);

  v12 = v0[1];

  return v12(v1);
}