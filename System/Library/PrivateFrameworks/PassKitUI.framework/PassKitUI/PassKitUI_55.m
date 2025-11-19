uint64_t sub_1BD5FE0F8()
{
  sub_1BE04D154();
  v1 = sub_1BE04D204();
  v2 = sub_1BE052C34();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BD026000, v1, v2, "Fetching rewards redemptions", v3, 2u);
    MEMORY[0x1BFB45F20](v3, -1, -1);
  }

  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[26];

  (*(v6 + 8))(v4, v5);
  v8 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask;
  v0[36] = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask;
  if (*(v7 + v8))
  {
    sub_1BE048964();
    sub_1BE052944();
  }

  v9 = *(v0[26] + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_paymentService);
  v10 = sub_1BE052404();
  v11 = [v9 paymentRewardsRedemptionsForPassUniqueIdentifier:v10 limit:25];

  if (v11)
  {
    v28 = v9;
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[24];
    v15 = v0[25];
    v16 = v0[23];
    sub_1BD0E5E8C(0, &qword_1EBD4C220);
    v27 = sub_1BE052744();

    v17 = sub_1BE0528D4();
    v0[37] = v17;
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v0[38] = v19;
    v0[39] = (v18 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v19(v12, 1, 1, v17);
    sub_1BE048C84();
    sub_1BE048964();
    sub_1BE048C84();
    v20 = sub_1BE052894();
    v21 = swift_allocObject();
    v22 = MEMORY[0x1E69E85E0];
    v21[2] = v20;
    v21[3] = v22;
    v21[4] = v13;
    v21[5] = v27;
    v21[6] = v16;
    v21[7] = v14;
    v21[8] = v15;
    *(v7 + v8) = sub_1BD122C00(0, 0, v12, &unk_1BE0E7C08, v21);

    v23 = sub_1BE052404();
    v0[40] = v23;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_1BD5FE4E8;
    v24 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF08);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD5FEBA4;
    v0[13] = &block_descriptor_140;
    v0[14] = v24;
    [v28 updatePaymentRewardsRedemptionsWithPassUniqueIdentifier:v23 limit:25 completion:?];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1BD5FE4E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  v3 = *(v1 + 280);
  v4 = *(v1 + 272);
  if (v2)
  {
    v5 = sub_1BD5FE7A4;
  }

  else
  {
    v5 = sub_1BD5FE618;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BD5FE618()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);
  v3 = *(v0 + 208);

  v4 = *(v0 + 168);

  if (*(v3 + v2))
  {
    sub_1BE048964();
    sub_1BE052944();
  }

  v5 = *(v0 + 288);
  v6 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = *(v0 + 192);
  v8 = *(v0 + 200);
  v10 = *(v0 + 184);
  (*(v0 + 304))(v7, 1, 1, *(v0 + 296));
  sub_1BE048964();
  sub_1BE048C84();
  sub_1BE048C84();
  v11 = sub_1BE052894();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v6;
  v12[5] = v4;
  v12[6] = v10;
  v12[7] = v9;
  v12[8] = v8;
  *(v6 + v5) = sub_1BD122C00(0, 0, v7, &unk_1BE0E7C20, v12);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1BD5FE7A4()
{
  v21 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);

  swift_willThrow();

  sub_1BE04D154();
  v3 = v2;
  v4 = sub_1BE04D204();
  v5 = sub_1BE052C34();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 328);
    v7 = *(v0 + 232);
    v19 = *(v0 + 240);
    v8 = *(v0 + 224);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_1BE053C74();
    v13 = sub_1BD123690(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1BD026000, v4, v5, "Encountered error updating rewards redemptions: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1BFB45F20](v10, -1, -1);
    MEMORY[0x1BFB45F20](v9, -1, -1);

    (*(v7 + 8))(v19, v8);
  }

  else
  {
    v15 = *(v0 + 232);
    v14 = *(v0 + 240);
    v16 = *(v0 + 224);

    (*(v15 + 8))(v14, v16);
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1BD5FE9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1BE0528A4();
  v8[3] = sub_1BE052894();
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1BD5FEA68;

  return sub_1BD603E50(a5, a8);
}

uint64_t sub_1BD5FEA68()
{

  v1 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD1724EC, v1, v0);
}

uint64_t sub_1BD5FEBA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E5A0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1BD0E5E8C(0, &qword_1EBD4C220);
    **(*(v4 + 64) + 40) = sub_1BE052744();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1BD5FEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = sub_1BE0528A4();
  v8[3] = sub_1BE052894();
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_1BD16DB04;

  return sub_1BD603E50(a5, a8);
}

uint64_t sub_1BD5FED58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_1BE0528A4();
  v5[5] = sub_1BE052894();
  v7 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FEDF0, v7, v6);
}

void *sub_1BD5FEDF0()
{
  v24 = v0;
  v1 = *(v0 + 24);

  if (v1 >> 62)
  {
    v2 = sub_1BE053704();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v23 = MEMORY[0x1E69E7CC0];
      result = sub_1BD5322F4(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        __break(1u);
        return result;
      }

      v4 = 0;
      v5 = v23;
      v6 = v1 & 0xC000000000000001;
      v21 = v22[3] + 32;
      do
      {
        if (v6)
        {
          v7 = MEMORY[0x1BFB40900](v4, v22[3]);
        }

        else
        {
          v7 = *(v21 + 8 * v4);
        }

        v8 = v7;
        v9 = [v7 identifier];
        v10 = sub_1BE052434();
        v12 = v11;

        v23 = v5;
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1BD5322F4((v13 > 1), v14 + 1, 1);
          v5 = v23;
        }

        ++v4;
        *(v5 + 16) = v14 + 1;
        v15 = (v5 + 24 * v14);
        v15[4] = v10;
        v15[5] = v12;
        v15[6] = v8;
      }

      while (v2 != v4);
      goto LABEL_14;
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    v16 = MEMORY[0x1E69E7CC8];
    goto LABEL_15;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E38);
  v16 = sub_1BE053A04();
LABEL_15:
  v23 = v16;
  sub_1BD605984(v5, 1, &v23);

  v17 = v23;
  v18 = v22[4];
  sub_1BE048964();
  v19 = sub_1BD605F0C(v17, v18);

  swift_getKeyPath();
  swift_getKeyPath();
  v22[2] = v19;
  sub_1BE048964();
  sub_1BE04D8C4();
  v20 = v22[1];

  return v20();
}

uint64_t sub_1BD5FF0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a1;
  sub_1BE0528A4();
  v7[15] = sub_1BE052894();
  v9 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FF144, v9, v8);
}

uint64_t sub_1BD5FF144()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  v3 = sub_1BD5FDF14((v0 + 16));
  v4 = sub_1BD5FDE18((v0 + 48), v2, v1);
  v6 = v5;
  v7 = type metadata accessor for RedemptionPresentation(0);
  v8 = (*(*(v7 - 8) + 48))(v6, 1, v7);
  if (!v8)
  {
    v9 = *(v0 + 112);
    v10 = *(v7 + 56);
    v11 = *(v6 + v10);
    *(v6 + v10) = v9;
    v12 = v9;
  }

  (v4)(v0 + 48, 0);
  (v3)(v0 + 16, 0);
  **(v0 + 80) = v8 != 0;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BD5FF28C()
{
  v1 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel__redemptionPresentations;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF00);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1BD606690(*(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 8), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 16), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 24), *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager + 32));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PaymentRewardsLatestRedemptionsViewModel()
{
  result = qword_1EBD4CEE0;
  if (!qword_1EBD4CEE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD5FF3C4()
{
  sub_1BD5FF474();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD5FF474()
{
  if (!qword_1EBD4CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CEF8);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4CEF0);
    }
  }
}

uint64_t sub_1BD5FF4E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF00);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = v15 - v4;
  v6 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel__redemptionPresentations;
  v15[1] = sub_1BD1ADB58(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CEF8);
  sub_1BE04D874();
  (*(v2 + 32))(v0 + v6, v5, v1);
  v7 = OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_paymentService;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69B8DB8]) init];
  v8 = [objc_allocWithZone(MEMORY[0x1E69B89A0]) init];
  v9 = PKUIScreenScale();
  v10 = PKIconForRewardsRedemption();
  if (!v10)
  {

    v8 = 0;
LABEL_6:
    v12 = 0;
    v11 = 0;
    goto LABEL_7;
  }

  v11 = [objc_allocWithZone(PKPaymentTransactionIconGenerator) initWithCache:1 scale:v9];
  if (!v11)
  {

    v8 = 0;
    v10 = 0;
    goto LABEL_6;
  }

  v12 = 0x4046800000000000;
LABEL_7:
  v13 = (v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager);
  *v13 = v8;
  v13[1] = v10;
  v13[2] = v12;
  v13[3] = v12;
  v13[4] = v11;
  *(v0 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_modelReplacementTask) = 0;
  return v0;
}

uint64_t sub_1BD5FF6E4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PaymentRewardsLatestRedemptionsViewModel();
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

uint64_t sub_1BD5FF724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v30 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v27 - v13;
  v15 = sub_1BE0528D4();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = *a3;
  v17 = *(a3 + 8);
  v28 = *(a3 + 32);
  (*(v7 + 16))(v10, a1, v6);
  v18 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v29;
  v20 = *(a3 + 16);
  *(v19 + 40) = *a3;
  *(v19 + 56) = v20;
  v21 = *(a3 + 32);
  v22 = v30;
  *(v19 + 72) = v21;
  *(v19 + 80) = v22;
  (*(v7 + 32))(v19 + v18, v10, v6);
  sub_1BE048C84();
  v23 = v16;
  v24 = v17;
  v25 = v28;
  sub_1BE048C84();
  sub_1BD122C00(0, 0, v14, &unk_1BE0E7C90, v19);
}

uint64_t sub_1BD5FF960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BD5FF984, 0, 0);
}

uint64_t sub_1BD5FF984()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1BD5FFA5C;

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1BD5FFA5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD5FFB74, 0, 0);
}

uint64_t sub_1BD5FFB74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38);
  sub_1BE0528F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD5FFBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38);
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v6[16] = *(v8 + 64);
  v6[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD5FFD08, 0, 0);
}

uint64_t sub_1BD5FFD08()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    result = sub_1BE053704();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:

    v31 = *(v0 + 8);

    return v31();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if (result >= 1)
  {
    v3 = 0;
    v41 = **(v0 + 72);
    v4 = *(v0 + 88);
    v36 = *v4;
    v37 = *(v0 + 120);
    v34 = *(v4 + 32);
    v35 = *(v4 + 8);
    v32 = *(v0 + 80) + 32;
    v33 = v1 & 0xC000000000000001;
    v38 = result;
    while (1)
    {
      v43 = v3;
      v6 = v33 ? MEMORY[0x1BFB40900](v3, *(v0 + 80)) : *(v32 + 8 * v3);
      v42 = v6;
      v7 = *(v0 + 152);
      v8 = *(v0 + 136);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = *(v0 + 88);
      v12 = *(v0 + 96);
      v13 = sub_1BE0528D4();
      v39 = *(v13 - 8);
      v40 = v13;
      (*(v39 + 56))(v7, 1, 1);
      (*(v37 + 16))(v8, v9, v10);
      v14 = (*(v37 + 80) + 88) & ~*(v37 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v11 + 16);
      v18 = *(v11 + 32);
      *(v15 + 32) = *v11;
      *(v15 + 48) = v17;
      *(v15 + 64) = v18;
      *(v15 + 72) = v42;
      *(v15 + 80) = v12;
      (*(v37 + 32))(v15 + v14, v8, v10);
      v19 = v36;
      v20 = v35;
      v21 = v34;
      v22 = v42;
      sub_1BE048C84();
      if (swift_taskGroup_addPending())
      {
        break;
      }

      v5 = v43;
LABEL_6:
      v3 = v5 + 1;
      sub_1BD0DE53C(*(v0 + 152), &unk_1EBD3E580);
      if (v38 == v3)
      {
        goto LABEL_21;
      }
    }

    v23 = *(v0 + 144);
    sub_1BD0DE19C(*(v0 + 152), v23, &unk_1EBD3E580);
    v24 = (*(v39 + 48))(v23, 1, v40);
    v25 = *(v0 + 144);
    if (v24 == 1)
    {
      sub_1BD0DE53C(*(v0 + 144), &unk_1EBD3E580);
      if (*v16)
      {
LABEL_13:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v26 = sub_1BE052844();
        v28 = v27;
        swift_unknownObjectRelease();
LABEL_16:
        v29 = swift_allocObject();
        *(v29 + 16) = &unk_1BE0E7CB0;
        *(v29 + 24) = v15;
        sub_1BE048964();
        if (v28 | v26)
        {
          v30 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v26;
          *(v0 + 40) = v28;
        }

        else
        {
          v30 = 0;
        }

        *(v0 + 48) = 1;
        *(v0 + 56) = v30;
        *(v0 + 64) = v41;
        swift_task_create();

        v5 = v43;
        goto LABEL_6;
      }
    }

    else
    {
      sub_1BE0528C4();
      (*(v39 + 8))(v25, v40);
      if (*v16)
      {
        goto LABEL_13;
      }
    }

    v26 = 0;
    v28 = 0;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD600150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF40);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF48);
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF50);
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF58);
  v6[19] = v10;
  v6[20] = *(v10 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD600358, 0, 0);
}

uint64_t sub_1BD600358()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  v5[1] = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v5[2].i64[0] = v4;
  sub_1BD0E5E8C(0, qword_1EBD4F790);
  (*(v3 + 104))(v1, *MEMORY[0x1E69E8650], v2);
  sub_1BE052924();

  sub_1BE052904();
  v6 = swift_task_alloc();
  *(v0 + 176) = v6;
  *v6 = v0;
  v6[1] = sub_1BD6004C8;
  v7 = *(v0 + 104);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v7);
}

uint64_t sub_1BD6004C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD6005C4, 0, 0);
}

uint64_t sub_1BD6005C4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    v4 = *(v0 + 80);
    v5 = [*(v0 + 56) identifier];
    v6 = sub_1BE052434();
    v8 = v7;

    *(v0 + 16) = v6;
    *(v0 + 24) = v8;
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38);
    sub_1BE0528E4();
    (*(v3 + 8))(v2, v4);
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    *v9 = v0;
    v9[1] = sub_1BD6004C8;
    v10 = *(v0 + 104);

    return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v10);
  }

  else
  {
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    (*(v12 + 8))(v11, v13);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1BD6007B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = sub_1BE0528D4();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = *a4;
  v18 = *(a4 + 32);
  v29 = *(a4 + 8);
  v30 = v18;
  (*(v8 + 16))(v11, a1, v7);
  v19 = (*(v8 + 80) + 88) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = v31;
  *(v20 + 32) = a2;
  *(v20 + 40) = v21;
  v22 = *(a4 + 16);
  *(v20 + 48) = *a4;
  *(v20 + 64) = v22;
  *(v20 + 80) = *(a4 + 32);
  (*(v8 + 32))(v20 + v19, v11, v7);
  sub_1BE048C84();
  v23 = v21;
  v24 = v17;
  v25 = v29;
  v26 = v30;
  sub_1BD122C00(0, 0, v15, &unk_1BE0E7CF8, v20);
}

uint64_t sub_1BD6009E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF50);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF58);
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF48);
  v7[17] = v10;
  v7[18] = *(v10 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF68);
  v7[21] = v11;
  v7[22] = *(v11 - 8);
  v7[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD600BFC, 0, 0);
}

uint64_t sub_1BD600BFC()
{
  v1 = *(v0 + 56);
  v2 = [*(v0 + 64) paymentHash];
  sub_1BE052434();

  v3 = sub_1BE0524C4();
  v5 = v4;

  if (*(v1 + 16))
  {
    v6 = sub_1BD148F70(v3, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(*(v0 + 56) + 56) + 8 * v6);
LABEL_8:
      v14 = v9;
      *(v0 + 192) = v9;
      v16 = *(v0 + 120);
      v15 = *(v0 + 128);
      v18 = *(v0 + 104);
      v17 = *(v0 + 112);
      v19 = *(v0 + 96);
      v20 = *(v0 + 72);
      v21 = swift_task_alloc();
      *(v21 + 16) = v20;
      *(v21 + 24) = v14;
      *(v0 + 200) = sub_1BD0E5E8C(0, qword_1EBD4F790);
      *(v0 + 288) = *MEMORY[0x1E69E8650];
      v22 = *(v19 + 104);
      *(v0 + 208) = v22;
      *(v0 + 216) = (v19 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v22(v18);
      sub_1BE052924();

      sub_1BE052904();
      v23 = *(v16 + 8);
      *(v0 + 224) = v23;
      *(v0 + 232) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v23(v15, v17);
      v24 = swift_task_alloc();
      *(v0 + 240) = v24;
      *v24 = v0;
      v24[1] = sub_1BD600F8C;
      v25 = *(v0 + 136);

      return MEMORY[0x1EEE6D9C8](v0 + 24, 0, 0, v25);
    }
  }

  else
  {
  }

  v10 = [*(v0 + 64) details];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 originalTransaction];

    if (v12)
    {
      v13 = *(v0 + 72);
      sub_1BD0E5E8C(0, &qword_1EBD4AB10);
      v9 = sub_1BD601828(v12, *v13);
      goto LABEL_8;
    }
  }

  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = *(*(v0 + 72) + 8);
  *(v0 + 16) = v29;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
  sub_1BE0528E4();
  (*(v27 + 8))(v26, v28);
  sub_1BE0528F4();

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1BD600F8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD601088, 0, 0);
}

uint64_t sub_1BD601088()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    *(v0 + 48) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
    sub_1BE0528E4();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = sub_1BD600F8C;
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE6D9C8](v0 + 24, 0, 0, v6);
  }

  v7 = *(v0 + 192);
  v8 = *(v0 + 160);
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v10 + 8);
  *(v0 + 248) = v11;
  *(v0 + 256) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  v12 = [v7 merchant];
  *(v0 + 264) = v12;
  if (!v12)
  {
    goto LABEL_8;
  }

  if ([v12 hasMapsMatch])
  {

LABEL_8:
    v13 = *(v0 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
    sub_1BE0528F4();

    v14 = *(v0 + 8);

    return v14();
  }

  v15 = swift_task_alloc();
  *(v0 + 272) = v15;
  *v15 = v0;
  v15[1] = sub_1BD601304;

  return sub_1BD601AF8(3000000000);
}

uint64_t sub_1BD601304()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD601400, 0, 0);
}

uint64_t sub_1BD601400()
{
  v13 = *(v0 + 224);
  v12 = *(v0 + 208);
  v1 = *(v0 + 288);
  v2 = *(v0 + 192);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v12(v5, v1, v6);
  sub_1BE052924();

  sub_1BE052904();
  v13(v3, v4);
  v9 = swift_task_alloc();
  *(v0 + 280) = v9;
  *v9 = v0;
  v9[1] = sub_1BD601570;
  v10 = *(v0 + 136);

  return MEMORY[0x1EEE6D9C8](v0 + 32, 0, 0, v10);
}

uint64_t sub_1BD601570()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD60166C, 0, 0);
}

uint64_t sub_1BD60166C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v3 = *(v0 + 176);
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    *(v0 + 40) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
    sub_1BE0528E4();
    (*(v3 + 8))(v2, v4);
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = sub_1BD601570;
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE6D9C8](v0 + 32, 0, 0, v6);
  }

  else
  {
    (*(v0 + 248))(*(v0 + 152), *(v0 + 136));

    v7 = *(v0 + 192);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
    sub_1BE0528F4();

    v8 = *(v0 + 8);

    return v8();
  }
}

id sub_1BD601828(void *a1, void *a2)
{
  v4 = sub_1BE04AF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [a1 timestamp];
  if (v10)
  {
    v11 = v10;
    sub_1BE04AEE4();

    v12 = sub_1BE04AE64();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v12 = 0;
  }

  [v9 setTransactionDate_];

  v13 = [a1 monetaryValue];
  v14 = [v13 amount];

  [v9 setAmount_];
  v15 = [a1 monetaryValue];
  if (!v15 || (v16 = v15, v17 = [v15 currency], v16, !v17))
  {
    v17 = 0;
  }

  [v9 setCurrencyCode_];

  v18 = [objc_allocWithZone(MEMORY[0x1E69B8998]) init];
  v19 = [a1 merchantRawName];
  [v18 setRawName_];

  v20 = [a1 merchantCategoryCode];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 integerValue];

    [v18 setFallbackcategory_];
  }

  v23 = v18;
  [v9 setMerchant_];

  return v9;
}

uint64_t sub_1BD601AF8(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD601B94, 0, 0);
}

uint64_t sub_1BD601B94()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69B92D8]) initWithTransaction:v0[11] paymentApplication:0];
  v0[13] = v1;
  v0[14] = [objc_allocWithZone(MEMORY[0x1E69B89B0]) initWithSource_];

  return MEMORY[0x1EEE6DFA0](sub_1BD601C40, 0, 0);
}

uint64_t sub_1BD601C40()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0[14];
  v5 = v0[12];
  v6 = v1[10];
  v7 = v1[11];
  v1[2] = v2;
  v1[3] = sub_1BD601E00;
  v8 = swift_continuation_init();
  v9 = sub_1BE0528D4();
  v10 = *(*(v9 - 8) + 56);
  v10(v5, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v7;
  v11[5] = v4;
  v11[6] = v8;
  v12 = v7;
  v13 = v4;
  v14 = sub_1BD122C00(0, 0, v5, &unk_1BE0E7D18, v11);
  v10(v5, 1, 1, v9);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v6;
  v15[5] = v14;
  sub_1BD122C00(0, 0, v5, &unk_1BE0E7D28, v15);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1BD601E00()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD601EE0, 0, 0);
}

uint64_t sub_1BD601EE0()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1BD601F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF68);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8, v11);
  v14 = &v33 - v13;
  v15 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v18 = *(v9 + 16);
  v37 = a1;
  v18(&v33 - v13, a1, v8, v12);
  v19 = *a2;
  v20 = *(a2 + 8);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v9 + 32))(v23 + v21, v14, v8);
  v24 = v23 + v22;
  v25 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a2 + 32);
  aBlock[4] = sub_1BD6058B4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD307EA8;
  aBlock[3] = &block_descriptor_81_1;
  v26 = _Block_copy(aBlock);
  v27 = v19;
  v28 = v20;
  v29 = v15;

  v30 = [v29 iconForTransaction:v38 size:0 ignoreLogoURL:0 requestType:v26 iconHandler:{v16, v17}];
  _Block_release(v26);
  if (v30)
  {
    aBlock[0] = v30;
    v31 = v30;
    v32 = v34;
    sub_1BE0528E4();
    (*(v35 + 8))(v32, v36);
    sub_1BE0528F4();
  }
}

void sub_1BD602244(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF68);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v14 - v10;
  if (!a1)
  {
    if ((a2 & 1) == 0)
    {
      return;
    }

    v15 = *(a4 + 8);
    v13 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
    sub_1BE0528E4();
    (*(v8 + 8))(v11, v7);
    goto LABEL_6;
  }

  v15 = a1;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
  sub_1BE0528E4();
  (*(v8 + 8))(v11, v7);
  if (a2)
  {
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60);
    sub_1BE0528F4();
  }
}

uint64_t sub_1BD6023C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BD6023E8, 0, 0);
}

uint64_t sub_1BD6023E8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_allocObject();
  v0[6] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *(v5 + 16) = v1;
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1BD602528;
  v7 = v0[2];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v7, &unk_1BE0E7D38, v4, sub_1BD6058AC, v5, 0, 0, v8);
}

uint64_t sub_1BD602528()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_1BD6026AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[25] = a3;
  v4[26] = a4;
  v4[24] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BD6026D0, 0, 0);
}

uint64_t sub_1BD6026D0()
{
  if (sub_1BE052974())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[24];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD602828;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF70);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1F07A8;
    v0[13] = &block_descriptor_75_0;
    v0[14] = v4;
    [v3 startLookupWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1BD602828()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD602908, 0, 0);
}

void sub_1BD602908()
{
  v1 = *(v0 + 144);
  if ((sub_1BE052974() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = [Strong merchant];

      if (!v4)
      {
        __break(1u);
        goto LABEL_16;
      }

      v5 = [v1 merchant];
      [v4 setMapsMerchant_];
    }

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
LABEL_8:
      swift_beginAccess();
      v10 = swift_unknownObjectWeakLoadStrong();
      if (!v10)
      {
LABEL_11:
        swift_continuation_throwingResume();
        goto LABEL_12;
      }

      v11 = v10;
      v12 = [v10 merchant];

      if (v12)
      {
        [v12 setFallbackcategory_];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

    v7 = v6;
    v8 = [v6 merchant];

    if (v8)
    {
      v9 = [v1 brand];
      [v8 setMapsBrand_];

      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:

  v13 = *(v0 + 8);

  v13();
}

uint64_t sub_1BD602B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_1BD602B9C;

  return MEMORY[0x1EEE6DA60](a4);
}

uint64_t sub_1BD602B9C()
{

  if (v0)
  {

    v1 = sub_1BD6066F4;
  }

  else
  {
    v1 = sub_1BD602CB4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1BD602CB4()
{
  sub_1BE052944();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD602D30@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD602DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048C84();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD602E2C(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD12350C;

  return v4();
}

void (*sub_1BD602F14(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1BD6034F0(v7);
  v7[9] = sub_1BD603020(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1BD602FC0;
}

void sub_1BD602FC0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1BD603020(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for RedemptionPresentation(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF30) - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v17);
    v11[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v11[10] = v18;
  v20 = *v5;
  v22 = sub_1BD148F70(a2, a3);
  *(v11 + 96) = v21 & 1;
  v23 = *(v20 + 16);
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    v26 = v21;
    v27 = *(v20 + 24);
    if (v27 >= v25 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v22;
      if (v26)
      {
LABEL_17:
        sub_1BD605158(*(*v5 + 56) + *(v14 + 72) * v22, v19);
        v28 = 0;
LABEL_21:
        (*(v14 + 56))(v19, v28, 1, v12);
        return sub_1BD6032E8;
      }

LABEL_20:
      v28 = 1;
      goto LABEL_21;
    }

    if (v27 >= v25 && (a4 & 1) == 0)
    {
      sub_1BD507B8C();
      goto LABEL_16;
    }

    sub_1BD5032EC(v25, a4 & 1);
    v29 = sub_1BD148F70(a2, a3);
    if ((v26 & 1) == (v30 & 1))
    {
      v22 = v29;
      v11[11] = v29;
      if (v26)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_1BE053C14();
  __break(1u);
  return result;
}

void sub_1BD6032E8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_1BD0DE19C(v5, v6, &qword_1EBD4CF30);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_1BD605158(v9, *(v2 + 6));
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_1BD605158(v13, v14);
        sub_1BD948654(v12, v16, v15, v14, v11);
        sub_1BE048C84();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_1BD0DE19C(v5, v17, &qword_1EBD4CF30);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_1BD605158(v9, *(v2 + 7));
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_1BD605158(v13, v11[7] + *(*(v2 + 4) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_1BD0DE53C(v9, &qword_1EBD4CF30);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_1BD1BCDE4(*(v20 + 48) + 16 * v19);
    sub_1BD5059F4(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_1BD0DE53C(v23, &qword_1EBD4CF30);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

uint64_t (*sub_1BD6034F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1BD603518;
}

uint64_t sub_1BD603524(uint64_t a1)
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
  v11[1] = sub_1BD126968;

  return sub_1BD5FE9A4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_69()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BD603658(uint64_t a1)
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
  v11[1] = sub_1BD126968;

  return sub_1BD5FEC94(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_1BD603734(uint64_t a1, char a2, void *a3)
{
  v53 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v53, v6);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v54 = &v49 - v11;
  v12 = *(a1 + 16);
  if (!v12)
  {
    return;
  }

  v50 = (v10 + 8);
  v51 = a3;
  for (i = (a1 + 48); ; i += 3)
  {
    v14 = *(i - 2);
    v15 = *(i - 1);
    v16 = *i;
    v17 = *a3;
    sub_1BE048C84();
    v18 = v16;
    v19 = sub_1BD148F70(v14, v15);
    v21 = v17[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v17[3] < v24)
    {
      sub_1BD5032D8(v24, a2 & 1);
      v19 = sub_1BD148F70(v14, v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v27 = v18;
      v28 = *a3;
      if (v25)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

    if (a2)
    {
      goto LABEL_9;
    }

    v45 = v19;
    sub_1BD507B64();
    v27 = v18;
    v19 = v45;
    v28 = *a3;
    if (v25)
    {
LABEL_10:
      v29 = v28[7];
      v57 = v19;
      v30 = *(v29 + 8 * v19);
      v31 = [v30 transactionDate];
      if (!v31)
      {
        goto LABEL_22;
      }

      v32 = v31;
      v55 = v30;
      v56 = v12;
      v33 = v54;
      sub_1BE04AEE4();

      v34 = [v18 transactionDate];
      if (!v34)
      {
        goto LABEL_23;
      }

      v35 = v34;
      v36 = v52;
      sub_1BE04AEE4();

      LOBYTE(v35) = sub_1BE04AE74();
      v37 = *v50;
      v38 = v36;
      v39 = v53;
      (*v50)(v38, v53);
      v37(v33, v39);
      v40 = v55;
      if (v35)
      {
        v41 = v55;
      }

      else
      {
        v41 = v18;
      }

      v42 = v41;

      v43 = v28[7];
      v44 = *(v43 + 8 * v57);
      *(v43 + 8 * v57) = v42;

      a3 = v51;
      v12 = v56;
      goto LABEL_3;
    }

LABEL_17:
    v28[(v19 >> 6) + 8] |= 1 << v19;
    v46 = (v28[6] + 16 * v19);
    *v46 = v14;
    v46[1] = v15;
    *(v28[7] + 8 * v19) = v27;
    v47 = v28[2];
    v23 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v28[2] = v48;
LABEL_3:
    a2 = 1;
    if (!--v12)
    {
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1BE053C14();
  __break(1u);
}

void sub_1BD603A64(unint64_t a1)
{
  if (os_variant_has_internal_ui())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0xD000000000000011;
    v3 = (inited + 32);
    *(inited + 40) = 0x80000001BE1313D0;
    if (a1 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BE053704())
    {
      v5 = MEMORY[0x1E69E7CC0];
      if (!i)
      {
LABEL_23:
        v35 = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0);
        sub_1BD03B274();
        v24 = sub_1BE0522E4();
        v26 = v25;

        *(inited + 48) = v24;
        *(inited + 56) = v26;
        sub_1BD1AB78C(inited);
        swift_setDeallocating();
        sub_1BD0DE53C(v3, &qword_1EBD49250);
        v27 = [objc_allocWithZone(MEMORY[0x1E69B8668]) init];
        v28 = *MEMORY[0x1E69BB778];
        v29 = sub_1BE052404();
        v30 = sub_1BE052404();
        v31 = sub_1BE052404();
        v32 = sub_1BE052224();

        [v27 reportIssueWithDomain:v28 type:v29 subtype:v30 subtypeContext:v31 payload:v32];

        return;
      }

      v35 = MEMORY[0x1E69E7CC0];
      v6 = &v35;
      sub_1BD03B254(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        goto LABEL_28;
      }

      v33 = inited;
      v34 = v3;
      v5 = v35;
      if ((a1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v7 = 0;
      v3 = &selRef_paymentAuthorizationCoordinator_willFinishWithError_;
      while (1)
      {
        MEMORY[0x1BFB40900](v7, a1);
        v8 = [swift_unknownObjectRetain() paymentHash];
        if (v8)
        {
          v9 = v8;
          v10 = sub_1BE052434();
          v12 = v11;
        }

        else
        {
          v10 = 0;
          v12 = 0;
        }

        swift_unknownObjectRelease_n();
        if (!v12)
        {
          break;
        }

        v35 = v5;
        inited = *(v5 + 16);
        v13 = *(v5 + 24);
        if (inited >= v13 >> 1)
        {
          sub_1BD03B254((v13 > 1), inited + 1, 1);
          v5 = v35;
        }

        ++v7;
        *(v5 + 16) = inited + 1;
        v14 = v5 + 16 * inited;
        *(v14 + 32) = v10;
        *(v14 + 40) = v12;
        if (i == v7)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_26:
      ;
    }

    v15 = (a1 + 32);
    while (1)
    {
      v6 = *v15;
      v16 = [v6 paymentHash];
      if (!v16)
      {
        break;
      }

      v17 = v16;
      v18 = sub_1BE052434();
      v20 = v19;

      if (!v20)
      {
        goto LABEL_29;
      }

      v35 = v5;
      v22 = *(v5 + 16);
      v21 = *(v5 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1BD03B254((v21 > 1), v22 + 1, 1);
        v5 = v35;
      }

      *(v5 + 16) = v22 + 1;
      v23 = v5 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      ++v15;
      if (!--i)
      {
LABEL_22:
        inited = v33;
        v3 = v34;
        goto LABEL_23;
      }
    }

LABEL_28:

LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1BD603E50(uint64_t a1, uint64_t a2)
{
  v3[32] = a2;
  v3[33] = v2;
  v3[31] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF10);
  v3[34] = v4;
  v3[35] = *(v4 - 8);
  v3[36] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF18);
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF20);
  v3[40] = v6;
  v3[41] = *(v6 - 8);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD604040, 0, 0);
}

uint64_t sub_1BD604040()
{
  v1 = v0[45];
  v2 = v0[33];
  v3 = v0[31];
  v4 = sub_1BE0528D4();
  v0[46] = v4;
  v5 = *(v4 - 8);
  v0[47] = v5;
  v6 = *(v5 + 56);
  v0[48] = v6;
  v0[49] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 1, 1, v4);
  v0[50] = sub_1BE0528A4();
  sub_1BE048C84();
  sub_1BE048964();
  v7 = sub_1BE052894();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v8[5] = v2;
  v0[51] = sub_1BD122C00(0, 0, v1, &unk_1BE0E7C50, v8);
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_1BD6041D4;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1BD6041D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD6042EC, 0, 0);
}

uint64_t sub_1BD6042EC()
{
  v1 = *(v0 + 264) + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_redemptionIconManager;
  v2 = *v1;
  *(v0 + 424) = *v1;
  if (v2)
  {
    v3 = *(v0 + 256);
    v4 = *(v1 + 32);
    *(v0 + 432) = v4;
    v5 = *(v1 + 8);
    v6 = *(v1 + 16);
    *(v0 + 440) = v5;
    *(v0 + 144) = v2;
    *(v0 + 152) = v5;
    *(v0 + 160) = v6;
    *(v0 + 176) = v4;
    if (v3)
    {
      v34 = v3;
      v7 = *(v0 + 248);
      if (v7 >> 62)
      {
        v8 = sub_1BE053704();
        if (v8)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
LABEL_5:
          v36 = MEMORY[0x1E69E7CC0];
          v9 = v2;
          v10 = v5;
          v11 = v4;
          v12 = sub_1BD03B254(0, v8 & ~(v8 >> 63), 0);
          if (v8 < 0)
          {
            __break(1u);
            return MEMORY[0x1EEE6DEC8](v12);
          }

          v13 = 0;
          v14 = v36;
          v35 = *(v0 + 248) + 32;
          do
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v15 = MEMORY[0x1BFB40900](v13, *(v0 + 248));
            }

            else
            {
              v15 = *(v35 + 8 * v13);
            }

            v16 = v15;
            v17 = [v15 paymentHash];
            sub_1BE052434();

            v18 = sub_1BE0524C4();
            v20 = v19;

            v22 = *(v36 + 16);
            v21 = *(v36 + 24);
            if (v22 >= v21 >> 1)
            {
              sub_1BD03B254((v21 > 1), v22 + 1, 1);
            }

            ++v13;
            *(v36 + 16) = v22 + 1;
            v23 = v36 + 16 * v22;
            *(v23 + 32) = v18;
            *(v23 + 40) = v20;
          }

          while (v8 != v13);
LABEL_19:
          v29 = *(v0 + 264);
          sub_1BD537298(v14);

          v30 = *(v29 + OBJC_IVAR____TtC9PassKitUI40PaymentRewardsLatestRedemptionsViewModel_paymentService);
          v31 = sub_1BE052A24();
          *(v0 + 448) = v31;

          v32 = sub_1BE052A24();
          *(v0 + 456) = v32;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 240;
          *(v0 + 24) = sub_1BD6046A0;
          v33 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49418);
          *(v0 + 80) = MEMORY[0x1E69E9820];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_1BD9C18BC;
          *(v0 + 104) = &block_descriptor_24_1;
          *(v0 + 112) = v33;
          [v30 transactionsWithFullPaymentHashes:v31 transactionSourceIdentifiers:v32 completion:v0 + 80];
          v12 = (v0 + 16);

          return MEMORY[0x1EEE6DEC8](v12);
        }
      }

      v26 = v2;
      v27 = v5;
      v28 = v4;
      v14 = MEMORY[0x1E69E7CC0];
      goto LABEL_19;
    }
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1BD6046A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD604780, 0, 0);
}

uint64_t sub_1BD604780()
{
  v37 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[30];

  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v5 >> 62)
  {
    goto LABEL_20;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v36 = v4;
      v7 = sub_1BD5322B4(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        break;
      }

      v11 = 0;
      v4 = v36;
      v34 = v6;
      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x1BFB40900](v11, v5);
        }

        else
        {
          if (v11 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v13 = *(v5 + 8 * v11 + 32);
        }

        v14 = v13;
        v7 = [v13 paymentHash];
        if (!v7)
        {
          goto LABEL_30;
        }

        v15 = v7;
        v16 = sub_1BE052434();
        v18 = v17;

        v36 = v4;
        v20 = *(v4 + 16);
        v19 = *(v4 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1BD5322B4((v19 > 1), v20 + 1, 1);
          v4 = v36;
        }

        *(v4 + 16) = v20 + 1;
        v21 = (v4 + 24 * v20);
        v21[4] = v16;
        v21[5] = v18;
        v21[6] = v14;
        ++v11;
        v6 = v34;
        if (v12 == v34)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v6 = sub_1BE053704();
      if (!v6)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v4 + 16))
    {
LABEL_22:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD48E30);
      v22 = sub_1BE053A04();
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC8];
    }

    v36 = v22;
    sub_1BD603734(v4, 1, &v36);

    v23 = v36;
    if (v6 != *(v36 + 16))
    {
      sub_1BD603A64(v5);
    }

    v25 = v33[38];
    v24 = v33[39];
    v26 = v33[36];
    v35 = v33[37];
    v27 = v33[34];
    v28 = v33[35];
    v29 = v33[31];

    v30 = swift_task_alloc();
    v30[2] = v29;
    v30[3] = v33 + 18;
    v30[4] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF28);
    (*(v28 + 104))(v26, *MEMORY[0x1E69E8650], v27);
    sub_1BE052924();

    sub_1BE052904();
    (*(v25 + 8))(v24, v35);
    v31 = swift_task_alloc();
    v33[58] = v31;
    *v31 = v33;
    v31[1] = sub_1BD604B28;
    v10 = v33[40];
    v7 = v33 + 27;
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6D9C8](v7, v8, v9, v10);
}

uint64_t sub_1BD604B28()
{

  return MEMORY[0x1EEE6DFA0](sub_1BD604C24, 0, 0);
}

uint64_t sub_1BD604C24()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  if (v2)
  {
    v3 = *(v0 + 232);
    if (sub_1BE052974())
    {
    }

    else
    {
      v9 = *(v0 + 376);
      v10 = *(v0 + 352);
      v26 = *(v0 + 344);
      v27 = *(v0 + 368);
      v11 = *(v0 + 264);
      (*(v0 + 384))(v10, 1, 1);
      sub_1BE048964();
      v12 = v3;
      v13 = sub_1BE052894();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      v14[5] = v1;
      v14[6] = v2;
      v14[7] = v12;
      sub_1BD0DE19C(v10, v26, &unk_1EBD3E580);
      LODWORD(v13) = (*(v9 + 48))(v26, 1, v27);
      sub_1BE048964();
      if (v13 == 1)
      {
        sub_1BD0DE53C(*(v0 + 344), &unk_1EBD3E580);
      }

      else
      {
        v17 = *(v0 + 368);
        v16 = *(v0 + 376);
        v18 = *(v0 + 344);
        sub_1BE0528C4();
        (*(v16 + 8))(v18, v17);
      }

      v19 = v14[2];
      swift_unknownObjectRetain();

      if (v19)
      {
        swift_getObjectType();
        v20 = sub_1BE052844();
        v22 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0;
        v22 = 0;
      }

      sub_1BD0DE53C(*(v0 + 352), &unk_1EBD3E580);
      v23 = swift_allocObject();
      *(v23 + 16) = &unk_1BE0E7C68;
      *(v23 + 24) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD52970);
      if (v22 | v20)
      {
        *(v0 + 184) = 0;
        *(v0 + 192) = 0;
        *(v0 + 200) = v20;
        *(v0 + 208) = v22;
      }

      swift_task_create();
    }

    v24 = swift_task_alloc();
    *(v0 + 464) = v24;
    *v24 = v0;
    v24[1] = sub_1BD604B28;
    v25 = *(v0 + 320);

    return MEMORY[0x1EEE6D9C8](v0 + 216, 0, 0, v25);
  }

  else
  {
    v4 = *(v0 + 432);
    v5 = *(v0 + 440);
    v6 = *(v0 + 424);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1BD604FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD5FED58(a1, v4, v5, v7, v6);
}

uint64_t sub_1BD605084(uint64_t a1)
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
  v10[1] = sub_1BD126968;

  return sub_1BD5FF0A4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1BD605158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6051BC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD126968;

  return sub_1BD5FF960(a1, v6, v7, v8, (v1 + 5), v9, v1 + v5);
}

uint64_t sub_1BD6052D4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BD126968;

  return sub_1BD5FFBE8(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1BD60539C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF38) - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[9];
  v7 = v0[10];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1BD126968;

  return sub_1BD600150(v4, v5, (v0 + 4), v6, v7, v0 + v3);
}

uint64_t sub_1BD60549C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD602E2C(v2);
}

uint64_t sub_1BD605554(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60) - 8);
  v5 = (*(v4 + 80) + 88) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD0F985C;

  return sub_1BD6009E8(a1, v6, v7, v8, v9, (v1 + 6), v1 + v5);
}

uint64_t sub_1BD605670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD126968;

  return sub_1BD6023C4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1BD605738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BD126968;

  return sub_1BD602B00(a1, v4, v5, v7, v6);
}

uint64_t sub_1BD6057F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD6026AC(a1, v4, v5, v6);
}

void sub_1BD6058B4(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF60) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  sub_1BD602244(a1, a2, v2 + v6, v7);
}

uint64_t block_copy_helper_79_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1BE048964();
}

void sub_1BD605984(uint64_t a1, char a2, void *a3)
{
  v79 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v69 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v68 = &v65 - v10;
  v11 = sub_1BE04AF64();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v71 = &v65 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v76 = &v65 - v21;
  v22 = *(a1 + 16);
  if (v22)
  {
    v70 = (v20 + 32);
    v75 = (v20 + 56);
    v66 = (v20 + 48);
    v67 = (v20 + 8);
    v23 = (a1 + 48);
    while (1)
    {
      v77 = v22;
      v38 = v11;
      v40 = *(v23 - 2);
      v39 = *(v23 - 1);
      v41 = *v23;
      v42 = *v79;
      sub_1BE048C84();
      v78 = v41;
      v44 = sub_1BD148F70(v40, v39);
      v45 = v42[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        break;
      }

      v48 = v43;
      if (v42[3] >= v47)
      {
        if ((a2 & 1) == 0)
        {
          sub_1BD507B78();
        }
      }

      else
      {
        sub_1BD503328(v47, a2 & 1);
        v49 = sub_1BD148F70(v40, v39);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_28;
        }

        v44 = v49;
      }

      v51 = *v79;
      if (v48)
      {
        v74 = *v79;
        v73 = *(v51[7] + 8 * v44);
        v52 = [v73 updatedAt];
        if (v52)
        {
          v53 = v71;
          v54 = v52;
          sub_1BE04AEE4();

          v55 = *v70;
          v56 = v68;
          (*v70)(v68, v53, v38);
          v72 = *v75;
          v72(v56, 0, 1, v38);
          v57 = v56;
          v11 = v38;
          v55(v76, v57, v38);
        }

        else
        {
          v62 = v68;
          v11 = v38;
          v72 = *v75;
          v72(v68, 1, 1, v38);
          sub_1BE04ADA4();
          if ((*v66)(v62, 1, v38) != 1)
          {
            sub_1BD0DE53C(v62, &unk_1EBD39970);
          }
        }

        v63 = [v78 updatedAt];
        if (v63)
        {
          v24 = v71;
          v25 = v63;
          sub_1BE04AEE4();

          v26 = v69;
          v27 = *v70;
          (*v70)(v69, v24, v38);
          v72(v26, 0, 1, v38);
          v28 = v26;
          v11 = v38;
          v27(v14, v28, v38);
        }

        else
        {
          v64 = v69;
          v72(v69, 1, 1, v11);
          sub_1BE04ADA4();
          if ((*v66)(v64, 1, v11) != 1)
          {
            sub_1BD0DE53C(v69, &unk_1EBD39970);
          }
        }

        v29 = v76;
        v30 = sub_1BE04AE74();
        v31 = *v67;
        (*v67)(v14, v11);
        v31(v29, v11);
        v32 = v78;
        v33 = v73;
        if (v30)
        {
          v34 = v73;
        }

        else
        {
          v34 = v78;
        }

        v35 = v34;

        v36 = v74[7];
        v37 = *(v36 + 8 * v44);
        *(v36 + 8 * v44) = v35;
      }

      else
      {
        v51[(v44 >> 6) + 8] |= 1 << v44;
        v58 = (v51[6] + 16 * v44);
        *v58 = v40;
        v58[1] = v39;
        *(v51[7] + 8 * v44) = v78;
        v59 = v51[2];
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_27;
        }

        v51[2] = v61;
        v11 = v38;
      }

      v23 += 3;
      a2 = 1;
      v22 = v77 - 1;
      if (v77 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    sub_1BE053C14();
    __break(1u);
  }
}

uint64_t sub_1BD605F0C(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  v3 = &unk_1BE0E7C78;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CF30);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v84 = &v72 - v10;
  v87 = type metadata accessor for RedemptionPresentation(0);
  MEMORY[0x1EEE9AC00](v87 - 8, v11);
  v74 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v76 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v75 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v72 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v73 = &v72 - v25;
  v79 = MEMORY[0x1E69E7CC8];
  v92 = MEMORY[0x1E69E7CC8];
  v26 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  else
  {
    v28 = -1;
  }

  v29 = v28 & *(a1 + 64);
  v30 = (v27 + 63) >> 6;
  v90 = (v24 + 48);
  v77 = v24;
  v83 = (v24 + 56);
  result = sub_1BE048C84();
  v85 = v7;
  v81 = a1;
  v32 = 0;
  if (v29)
  {
    while (1)
    {
      while (1)
      {
        v33 = v32;
LABEL_9:
        v34 = __clz(__rbit64(v29)) | (v33 << 6);
        v35 = *(a1 + 56);
        v36 = (*(a1 + 48) + 16 * v34);
        v37 = v36[1];
        v82 = *v36;
        v38 = *(v35 + 8 * v34);
        v89 = v37;
        sub_1BE048C84();
        sub_1BD9DECE4(v38, v7);
        v39 = v87;
        v88 = *v90;
        if (v88(v7, 1, v87) == 1)
        {
          sub_1BD0DE53C(v7, &qword_1EBD4CF30);
          v40 = v84;
          (*v83)(v84, 1, 1, v39);
        }

        else
        {
          sub_1BD605158(v7, v86);
          v41 = [v38 identifier];
          v42 = sub_1BE052434();
          v44 = v43;

          swift_getKeyPath();
          swift_getKeyPath();
          sub_1BE04D8B4();

          v45 = v91;
          if (*(v91 + 16))
          {
            v78 = sub_1BD148F70(v42, v44);
            v47 = v46;

            v40 = v84;
            if (v47)
            {
              v48 = v76;
              sub_1BD6065D0(*(v45 + 56) + *(v77 + 72) * v78, v76);

              v49 = v75;
              sub_1BD605158(v48, v75);
              v50 = v87;
              v51 = *(v49 + *(v87 + 56));
              sub_1BD606634(v49);
              v52 = *(v50 + 56);
              v53 = v86;

              *(v53 + v52) = v51;
            }

            else
            {
            }

            a1 = v81;
          }

          else
          {

            a1 = v81;
            v40 = v84;
          }

          v54 = v86;
          sub_1BD6065D0(v86, v40);
          v39 = v87;
          (*v83)(v40, 0, 1, v87);
          sub_1BD606634(v54);
          v3 = &unk_1BE0E7C78;
        }

        v29 &= v29 - 1;

        if (v88(v40, 1, v39) != 1)
        {
          break;
        }

        result = sub_1BD0DE53C(v40, &qword_1EBD4CF30);
        v32 = v33;
        v7 = v85;
        if (!v29)
        {
          goto LABEL_6;
        }
      }

      v55 = v40;
      v56 = v3;
      v57 = v73;
      sub_1BD605158(v55, v73);
      sub_1BD605158(v57, v74);
      v58 = v79[2];
      v59 = v89;
      if (v79[3] <= v58)
      {
        sub_1BD5032EC(v58 + 1, 1);
      }

      v60 = v92;
      sub_1BE053D04();
      sub_1BE052524();
      result = sub_1BE053D64();
      v61 = v60 + 64;
      v79 = v60;
      v62 = -1 << *(v60 + 32);
      v63 = result & ~v62;
      v64 = v63 >> 6;
      if (((-1 << v63) & ~*(v60 + 64 + 8 * (v63 >> 6))) == 0)
      {
        break;
      }

      v65 = __clz(__rbit64((-1 << v63) & ~*(v60 + 64 + 8 * (v63 >> 6)))) | v63 & 0x7FFFFFFFFFFFFFC0;
      v3 = v56;
      v7 = v85;
LABEL_33:
      *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      v70 = v79;
      v71 = (v79[6] + 16 * v65);
      *v71 = v82;
      v71[1] = v59;
      result = sub_1BD605158(v74, v70[7] + *(v77 + 72) * v65);
      ++v70[2];
      v32 = v33;
      if (!v29)
      {
        goto LABEL_6;
      }
    }

    v66 = 0;
    v67 = (63 - v62) >> 6;
    v3 = v56;
    v7 = v85;
    while (++v64 != v67 || (v66 & 1) == 0)
    {
      v68 = v64 == v67;
      if (v64 == v67)
      {
        v64 = 0;
      }

      v66 |= v68;
      v69 = *(v61 + 8 * v64);
      if (v69 != -1)
      {
        v65 = __clz(__rbit64(~v69)) + (v64 << 6);
        goto LABEL_33;
      }
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v30)
      {

        return v79;
      }

      v29 = *(v26 + 8 * v33);
      ++v32;
      if (v29)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BD6065D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedemptionPresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD606634(uint64_t a1)
{
  v2 = type metadata accessor for RedemptionPresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BD606690(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

void sub_1BD6066F8(char a1, char a2)
{
  v3 = v2;
  Tracker = PKCATrackedLayoutGetTracker();
  v7 = [v2 backdropLayer];
  if (a1)
  {
    v8 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_blurAmount];
  }

  else
  {
    v8 = 0.0;
  }

  if (a2)
  {
    if (a1)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_blurAmount];
    }

    v10 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_springFactory];
    v11 = sub_1BE052404();
    v12 = [v10 springAnimationWithKeyPath_];

    [v12 pkui:v9 updateForAdditiveAnimationFromScalar:v8 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }
  }

  v13 = sub_1BE04C564();
  v14 = sub_1BE052404();
  [v7 setValue:v13 forKeyPath:v14];

  if (a1)
  {
    v15 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_colorBrightnessAmount];
  }

  else
  {
    v15 = 0.0;
  }

  if (a2)
  {
    if (a1)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_colorBrightnessAmount];
    }

    v17 = *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_springFactory];
    v18 = sub_1BE052404();
    v19 = [v17 springAnimationWithKeyPath_];

    [v19 pkui:v16 updateForAdditiveAnimationFromScalar:v15 toScalar:?];
    if (Tracker)
    {
      [Tracker trackAnimation_];
    }
  }

  v20 = sub_1BE04C564();
  v21 = sub_1BE052404();
  [v7 setValue:v20 forKeyPath:v21];
}

id sub_1BD606998(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_springFactory] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_blurAmount] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI30ProvisioningCardReaderBlurView_colorBrightnessAmount] = a3;
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = *MEMORY[0x1E6979928];
  v11 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v12 = v9;
  v13 = [v11 initWithType_];
  v14 = sub_1BE052404();
  [v13 setName_];

  v15 = sub_1BE052824();
  v16 = sub_1BE052404();
  [v13 setValue:v15 forKeyPath:v16];

  v17 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v18 = sub_1BE052404();
  [v17 setName_];

  v19 = [v12 backdropLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40A50);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1BE0B6CA0;
  v21 = sub_1BD606D04();
  *(v20 + 32) = v13;
  *(v20 + 88) = v21;
  *(v20 + 56) = v21;
  *(v20 + 64) = v17;
  v22 = v19;
  v23 = v13;
  v24 = v17;
  v25 = sub_1BE052724();

  [v22 setFilters_];

  sub_1BD6066F8(0, 0);
  return v12;
}

unint64_t sub_1BD606D04()
{
  result = qword_1EBD4A9E0;
  if (!qword_1EBD4A9E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD4A9E0);
  }

  return result;
}

void sub_1BD606D98()
{
  sub_1BE04AF64();
  if (v0 <= 0x3F)
  {
    sub_1BE0493F4();
    if (v1 <= 0x3F)
    {
      sub_1BE04A974();
      if (v2 <= 0x3F)
      {
        sub_1BD606F20(319, &qword_1EBD46180, sub_1BD4411B4, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1BD606F20(319, &qword_1EBD3F760, type metadata accessor for TransactionContext, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            sub_1BD606F20(319, &qword_1EBD3F768, MEMORY[0x1E69675F8], MEMORY[0x1E69E6720]);
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

void sub_1BD606F20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BD606FCC()
{
  sub_1BD606F20(319, &qword_1EBD4CFC0, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1BD49DA08();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BD60709C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v85 = a1;
  v4 = sub_1BE049904();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v79 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v78 = &v62 - v9;
  v10 = sub_1BE049834();
  v65 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v63 = &v62 - v15;
  v16 = sub_1BE0495A4();
  v84 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1BE049A94();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  v26 = v25[11];
  v27 = type metadata accessor for TransactionContext(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 56);
  v74 = v26;
  v69 = v28 + 56;
  v70 = v29;
  v29(a3 + v26, 1, 1, v27);
  v30 = v25[12];
  v31 = sub_1BE048F54();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v75 = v30;
  v73 = v31;
  v68 = v32 + 56;
  v66 = v32;
  v67 = v33;
  (v33)(a3 + v30, 1, 1);
  v71 = v21;
  v34 = *(v21 + 16);
  v35 = v85;
  v76 = v20;
  v34(v24, v85, v20);
  v36 = *(v84 + 16);
  v37 = v35 + *(v27 + 20);
  v83 = v19;
  v77 = v16;
  v36(v19, v37, v16);
  sub_1BE049974();
  v72 = v27;
  v62 = sub_1BD736290(v35 + *(v27 + 28));
  v39 = v38;
  v40 = v63;
  sub_1BE049984();
  v41 = v65;
  v42 = v64;
  (*(v65 + 104))(v64, *MEMORY[0x1E6967870], v10);
  sub_1BD608E00(&qword_1EBD3F7C8, MEMORY[0x1E69678D8]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v43 = *(v41 + 8);
  v43(v42, v10);
  v43(v40, v10);
  if (v89 == v88)
  {
    v44 = sub_1BE049574();
    v45 = (a3 + v25[6]);
    *v45 = v44;
    v45[1] = v46;
    v47 = v62;
  }

  else
  {
    v48 = (a3 + v25[6]);
    v49 = v62;
    *v48 = v62;
    v48[1] = v39;
    sub_1BE048C84();
    v47 = v49;
  }

  v50 = v25[10];
  v51 = (a3 + v25[5]);
  *v51 = v47;
  v51[1] = v39;
  sub_1BE0499A4();
  sub_1BD7271C4();
  v52 = v78;
  sub_1BE049A34();
  v54 = v79;
  v53 = v80;
  v55 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x1E6967980], v81);
  sub_1BD608E00(&qword_1EBD461D8, MEMORY[0x1E6967988]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  v56 = *(v53 + 8);
  v56(v54, v55);
  v56(v52, v55);
  *(a3 + v25[7]) = v87 == v86;
  v57 = sub_1BE049964();
  (*(v84 + 8))(v83, v77);
  (*(v71 + 8))(v24, v76);
  *(a3 + v50) = v57;
  v58 = v74;
  sub_1BD0DE53C(a3 + v74, &qword_1EBD3F790);
  sub_1BD608E48(v85, a3 + v58, type metadata accessor for TransactionContext);
  v70(a3 + v58, 0, 1, v72);
  v59 = v75;
  sub_1BD0DE53C(a3 + v75, &qword_1EBD3F788);
  v60 = v73;
  (*(v66 + 32))(a3 + v59, v82, v73);
  return v67(a3 + v59, 0, 1, v60);
}

uint64_t sub_1BD607794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v133 = a1;
  v151 = a2;
  v126 = type metadata accessor for TransactionContext(0);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v2);
  v123 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v128 = &v123 - v6;
  v127 = type metadata accessor for FinanceKitTransactionMapView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v127, v7);
  v129 = (&v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for FinanceKitTransactionMapView(0);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v9);
  v131 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v130 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFC8);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v150 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v149 = &v123 - v19;
  v20 = type metadata accessor for FinanceKitSelectedTransactionView(0);
  v143 = *(v20 - 8);
  v153 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v154 = &v123 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_1BE04B0F4();
  v141 = *(v142 - 8);
  MEMORY[0x1EEE9AC00](v142, v23);
  v140 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BE04A974();
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139, v25);
  v137 = &v123 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_1BE0493F4();
  v157 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v27);
  v135 = &v123 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_1BE04AB24();
  v160 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v29);
  v31 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_1BE04AB54();
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v32);
  v34 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BE04AF64();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v123 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v134, v40);
  v152 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v124 = &v123 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v136 = &v123 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v123 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v123 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v123 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8);
  sub_1BE0516A4();
  (*(v36 + 16))(v39, v59, v35);
  v155 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel;
  sub_1BD609568(v59, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  sub_1BE04AB14();
  sub_1BE04AB04();
  v146 = sub_1BE04AF24();
  v145 = v61;
  (*(v160 + 8))(v31, v144);
  (*(v158 + 8))(v34, v159);
  (*(v36 + 8))(v39, v35);
  v62 = v60;
  v63 = v133;
  sub_1BE0516A4();
  v64 = v134;
  v65 = &v59[*(v134 + 24)];
  v66 = *(v65 + 1);
  v158 = *v65;
  v144 = v66;
  sub_1BE048C84();
  v67 = v155;
  sub_1BD609568(v59, v155);
  v132 = v62;
  sub_1BE0516A4();
  v68 = v135;
  (*(v157 + 16))(v135, &v55[v64[8]], v156);
  sub_1BD609568(v55, v67);
  sub_1BE0516A4();
  v69 = v138;
  v70 = v137;
  v71 = v139;
  (*(v138 + 16))(v137, &v51[v64[9]], v139);
  sub_1BD609568(v51, v67);
  v72 = v140;
  sub_1BE04B054();
  v73 = sub_1BE0493D4();
  v159 = v74;
  v160 = v73;
  v75 = v72;
  v76 = v64;
  (*(v141 + 8))(v75, v142);
  (*(v69 + 8))(v70, v71);
  (*(v157 + 8))(v68, v156);
  sub_1BE0516A4();
  LODWORD(v157) = v55[v64[7]];
  v77 = v155;
  sub_1BD609568(v55, v155);
  v78 = v154;
  sub_1BD609500(v63, v154, type metadata accessor for FinanceKitSelectedTransactionView);
  v79 = (*(v143 + 80) + 16) & ~*(v143 + 80);
  v156 = swift_allocObject();
  sub_1BD608E48(v78, v156 + v79, type metadata accessor for FinanceKitSelectedTransactionView);
  v80 = v136;
  v81 = v63;
  sub_1BE0516A4();
  v82 = *(v80 + v76[10]);
  v83 = v82;
  sub_1BD609568(v80, v77);
  if (v82)
  {
    v84 = v124;
    v85 = v81;
    sub_1BE0516A4();
    v86 = (v84 + v76[5]);
    v88 = *v86;
    v87 = v86[1];
    sub_1BE048C84();
    sub_1BD609568(v84, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
    v89 = v152;
    sub_1BE0516A4();
    v90 = v76[11];
    v91 = v89 + v90;
    v92 = v126;
    v93 = v85;
    if ((*(v125 + 48))(v91, 1, v126))
    {
      sub_1BD609568(v152, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
      v94 = sub_1BE0491B4();
      v95 = v128;
      (*(*(v94 - 8) + 56))(v128, 1, 1, v94);
    }

    else
    {
      v99 = v152;
      v100 = v123;
      sub_1BD609500(v152 + v90, v123, type metadata accessor for TransactionContext);
      sub_1BD609568(v99, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
      v101 = v100 + *(v92 + 28);
      v95 = v128;
      sub_1BD0DE19C(v101, v128, &qword_1EBD3F7C0);
      sub_1BD609568(v100, type metadata accessor for TransactionContext);
    }

    v102 = v129;
    *v129 = v83;
    *(v102 + 8) = v88;
    *(v102 + 16) = v87;
    sub_1BD608FC0(v95, v102 + *(v127 + 24));
    v103 = v93;
    v104 = v154;
    sub_1BD609500(v103, v154, type metadata accessor for FinanceKitSelectedTransactionView);
    v105 = swift_allocObject();
    sub_1BD608E48(v104, v105 + v79, type metadata accessor for FinanceKitSelectedTransactionView);
    v106 = v131;
    sub_1BD608E48(v102, v131, type metadata accessor for FinanceKitTransactionMapView.ViewModel);
    v98 = v148;
    v107 = (v106 + *(v148 + 20));
    *v107 = sub_1BD609490;
    v107[1] = v105;
    v108 = v106 + *(v98 + 24);
    LOBYTE(v161) = 0;
    sub_1BE051694();
    v109 = v167;
    *v108 = v166;
    *(v108 + 8) = v109;
    v110 = v106;
    v111 = v130;
    sub_1BD608E48(v110, v130, type metadata accessor for FinanceKitTransactionMapView);
    v97 = v149;
    sub_1BD608E48(v111, v149, type metadata accessor for FinanceKitTransactionMapView);
    v96 = 0;
  }

  else
  {
    v96 = 1;
    v97 = v149;
    v98 = v148;
  }

  (*(v147 + 56))(v97, v96, 1, v98);
  v112 = v150;
  sub_1BD0DE19C(v97, v150, &qword_1EBD4CFC8);
  v113 = v146;
  v114 = v145;
  *&v161 = v146;
  *(&v161 + 1) = v145;
  v115 = v144;
  *&v162 = v158;
  *(&v162 + 1) = v144;
  *&v163 = v160;
  *(&v163 + 1) = v159;
  v116 = v157;
  LOBYTE(v164) = v157;
  *(&v164 + 1) = *v176;
  DWORD1(v164) = *&v176[3];
  v117 = v156;
  *(&v164 + 1) = sub_1BD608EB0;
  v165 = v156;
  v118 = v151;
  *(v151 + 64) = v156;
  v119 = v162;
  *v118 = v161;
  v118[1] = v119;
  v120 = v164;
  v118[2] = v163;
  v118[3] = v120;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFD0);
  sub_1BD0DE19C(v112, v118 + *(v121 + 48), &qword_1EBD4CFC8);
  sub_1BD608F10(&v161, &v166);
  sub_1BD0DE53C(v97, &qword_1EBD4CFC8);
  sub_1BD0DE53C(v112, &qword_1EBD4CFC8);
  v166 = v113;
  v167 = v114;
  v168 = v158;
  v169 = v115;
  v170 = v160;
  v171 = v159;
  v172 = v116;
  *v173 = *v176;
  *&v173[3] = *&v176[3];
  v174 = sub_1BD608EB0;
  v175 = v117;
  return sub_1BD608F6C(&v166);
}

uint64_t sub_1BD6086C0(uint64_t a1)
{
  v2 = type metadata accessor for FinanceKitTransactionDetailView();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F788);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v42 - v7;
  v9 = sub_1BE048F54();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v44 = &v42 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F790);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v42 - v17;
  v19 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v42 - v25;
  v27 = type metadata accessor for TransactionContext(0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v42 = &v42 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v42 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8);
  sub_1BE0516A4();
  sub_1BD0DE19C(&v26[*(v19 + 44)], v18, &qword_1EBD3F790);
  sub_1BD609568(v26, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  if ((*(v28 + 48))(v18, 1, v27) == 1)
  {
    return sub_1BD0DE53C(v18, &qword_1EBD3F790);
  }

  sub_1BD608E48(v18, v34, type metadata accessor for TransactionContext);
  sub_1BE0516A4();
  sub_1BD0DE19C(&v22[*(v19 + 48)], v8, &qword_1EBD3F788);
  sub_1BD609568(v22, type metadata accessor for FinanceKitSelectedTransactionView.ViewModel);
  v37 = v46;
  v36 = v47;
  if ((*(v46 + 48))(v8, 1, v47) == 1)
  {
    sub_1BD609568(v34, type metadata accessor for TransactionContext);
    return sub_1BD0DE53C(v8, &qword_1EBD3F788);
  }

  else
  {
    v38 = v44;
    (*(v37 + 32))(v44, v8, v36);
    if (*(a1 + *(type metadata accessor for FinanceKitSelectedTransactionView(0) + 20)))
    {
      v39 = v42;
      sub_1BD609500(v34, v42, type metadata accessor for TransactionContext);
      v40 = v43;
      (*(v37 + 16))(v43, v38, v36);
      sub_1BE048964();
      v41 = v45;
      sub_1BD80B518(v39, v40, v45);
      sub_1BD982324(v41);

      sub_1BD609568(v41, type metadata accessor for FinanceKitTransactionDetailView);
      (*(v37 + 8))(v38, v36);
      return sub_1BD609568(v34, type metadata accessor for TransactionContext);
    }

    else
    {
      type metadata accessor for NavigationController();
      sub_1BD608E00(&qword_1EBD38DA8, type metadata accessor for NavigationController);
      result = sub_1BE04EEB4();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1BD608C50(void *a1, uint64_t a2)
{
  result = type metadata accessor for FinanceKitSelectedTransactionView(0);
  v5 = *(a2 + *(result + 20));
  if (v5)
  {
    v6 = *(v5 + 16);
    if (v6)
    {
      type metadata accessor for NavigationController();
      sub_1BD608E00(&qword_1EBD38DA8, type metadata accessor for NavigationController);
      sub_1BE048964();
      v7 = v6;
      sub_1BE04D804();
      v8 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFD8));
      sub_1BE048964();
      v9 = a1;
      v10 = sub_1BE04F894();
      if ([v7 _pk_settings_useStateDrivenNavigation])
      {
        [v7 _pk_settings_pushViewController_];
      }

      else
      {
        [v7 pushViewController:v10 animated:1];
      }
    }
  }

  else
  {
    type metadata accessor for NavigationController();
    sub_1BD608E00(&qword_1EBD38DA8, type metadata accessor for NavigationController);
    result = sub_1BE04EEB4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD608E00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD608E48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD608EB0()
{
  v1 = *(type metadata accessor for FinanceKitSelectedTransactionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1BD6086C0(v2);
}

uint64_t sub_1BD608FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_70()
{
  v1 = *(type metadata accessor for FinanceKitSelectedTransactionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_1BE04AF64();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for FinanceKitSelectedTransactionView.ViewModel(0);

  v5 = v4[8];
  v6 = sub_1BE0493F4();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  v7 = v4[9];
  v8 = sub_1BE04A974();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);

  v9 = v2 + v4[11];
  v10 = type metadata accessor for TransactionContext(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {
    v11 = sub_1BE049A94();
    (*(*(v11 - 8) + 8))(v9, v11);
    v12 = v10[5];
    v13 = sub_1BE0495A4();
    (*(*(v13 - 8) + 8))(v9 + v12, v13);
    v14 = v10[6];
    v15 = sub_1BE049184();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
    v16 = v10[7];
    v17 = sub_1BE0491B4();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v9 + v16, 1, v17))
    {
      (*(v18 + 8))(v9 + v16, v17);
    }

    v19 = v10[8];
    v20 = sub_1BE049E04();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v9 + v19, 1, v20))
    {
      (*(v21 + 8))(v9 + v19, v20);
    }
  }

  v22 = v4[12];
  v23 = sub_1BE048F54();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4CFA8);

  return swift_deallocObject();
}

uint64_t sub_1BD609490(void *a1)
{
  v3 = *(type metadata accessor for FinanceKitSelectedTransactionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD608C50(a1, v4);
}

uint64_t sub_1BD609500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD609568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD6095C8()
{
  result = qword_1EBD4CFE0;
  if (!qword_1EBD4CFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CFE8);
    sub_1BD60964C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CFE0);
  }

  return result;
}

unint64_t sub_1BD60964C()
{
  result = qword_1EBD4CFF0;
  if (!qword_1EBD4CFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4CFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4CFF0);
  }

  return result;
}

id sub_1BD6096B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = &v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_identifier];
  *v8 = 0xD000000000000015;
  *(v8 + 1) = 0x80000001BE1316C0;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_originalContext] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_credential] = a2;
  *&v3[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_provisionedPasses] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_1BD60989C(void (*a1)(uint64_t, unint64_t, void, uint64_t, double), uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD456D0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v102 - v8;
  v10 = sub_1BE04B8D4();
  v111 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v102 - v16;
  v18 = sub_1BE04B944();
  v112 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v110 = v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v102 - v23;
  v25 = sub_1BE04BAC4();
  v26 = *(v25 - 8);
  v29 = MEMORY[0x1EEE9AC00](v25, v27);
  v31 = v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_credential);
  if (!v32)
  {
    a1(0x6564657263206F6ELL, 0xED00006C6169746ELL, 0, 1, v29);
    return;
  }

  v107 = v18;
  v108 = v31;
  v109 = v28;
  v113 = a2;
  v114 = v32;
  v33 = [v114 paymentPass];
  if (!v33)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v34 = v33;
  v35 = [v33 isCarKeyPass];

  if (v35)
  {
    v36 = [v114 credentialToShare];
    if (!v36)
    {
LABEL_55:
      __break(1u);
      return;
    }

    v37 = v36;
    v38 = [v36 isShareable];

    if (v38)
    {
      v39 = v108;
      v106 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_originalContext);
      sub_1BE04BC34();
      v40 = sub_1BE04BAB4();
      v42 = *(v26 + 8);
      v41 = v26 + 8;
      v105 = v42;
      v42(v39, v109);
      if (v40)
      {
        (a1)(0x6764697262206E69, 0xE900000000000065, 0, 1);
LABEL_21:

        return;
      }

      v102[2] = v41;
      v104 = a1;
      sub_1BE04BB04();
      sub_1BE04B924();
      v46 = v112 + 8;
      v103 = *(v112 + 8);
      v103(v24, v107);
      v47 = v111;
      (v111)[13](v13, *MEMORY[0x1E69B7F78], v10);
      v48 = sub_1BE04B8C4();
      v49 = v47[1];
      v49(v13, v10);
      v49(v17, v10);
      if ((v48 & 1) == 0)
      {
        v104(0xD00000000000001ALL, 0x80000001BE1315A0, 0, 1);
        goto LABEL_21;
      }

      v112 = v46;
      v50 = sub_1BE04BC14();
      v51 = [objc_opt_self() watchWebServiceForIssuerProvisioning];
      v52 = v104;
      if (!v51)
      {
        v104(0xD000000000000026, 0x80000001BE1315C0, 0, 1);

        return;
      }

      v53 = v51;
      (v111[7])(v9, 1, 1, v10);
      v54 = v53;
      sub_1BE04B914();
      sub_1BE04BBA4();
      *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext) = v50;
      sub_1BE048964();

      v55 = *(v3 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_provisionedPasses);
      v56 = MEMORY[0x1E69E7CC0];
      if (!v55)
      {
        goto LABEL_39;
      }

      v57 = sub_1BE04BCE4();
      if (v58)
      {
        if (v58 != 1)
        {
          if (v57)
          {
            v82 = 0xD000000000000034;
            v83 = 0x80000001BE131680;
            goto LABEL_43;
          }

LABEL_39:
          v84 = v110;
          sub_1BE04BB94();
          v85 = sub_1BE04B934();
          v103(v84, v107);
          v86 = [v85 deviceSerialNumber];
          swift_unknownObjectRelease();
          if (v86)
          {
            v87 = v54;
            v88 = sub_1BE052434();
            v90 = v89;

            v115[0] = v88;
            v115[1] = v90;
            MEMORY[0x1EEE9AC00](v91, v92);
            v102[-2] = v115;
            v93 = sub_1BD2FF084(sub_1BD60AA50, &v102[-4], v56);

            if (v93)
            {
              v52(0xD000000000000021, 0x80000001BE131650, 0, 1);

              return;
            }

            v94 = v108;
            sub_1BE04BC34();
            v95 = sub_1BE04BA34();
            v105(v94, v109);
            v54 = v87;
            if (v95)
            {
              v96 = [v87 targetDevice];
              if (v96)
              {
                v97 = v96;
                if ([v96 respondsToSelector_])
                {
                  v98 = [v97 canAddToCompanionPrecheckForegroundConnectivity];
                  swift_unknownObjectRelease();
                  if ((v98 & 1) == 0)
                  {
                    v99 = 0xD000000000000027;
                    v100 = 0x80000001BE131620;
                    v101 = 1;
LABEL_51:
                    v52(v99, v100, 0, v101);
                    goto LABEL_52;
                  }
                }

                else
                {
                  swift_unknownObjectRelease();
                }
              }
            }

            v99 = 0;
            v100 = 0;
            v101 = 0;
            goto LABEL_51;
          }

          v83 = 0x80000001BE1315F0;
          v82 = 0xD000000000000026;
LABEL_43:
          v52(v82, v83, 0, 1);
LABEL_52:

          return;
        }

        v59 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD50630);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1BE0B69E0;
        v60 = [v59 serialNumber];
        v61 = sub_1BE052434();
        v63 = v62;

        *(v56 + 32) = v61;
        *(v56 + 40) = v63;
        v64 = v59;
        v65 = 1;
LABEL_38:
        sub_1BD307F28(v64, v65);
        goto LABEL_39;
      }

      v111 = v57;
      v66 = [v57 devices];
      sub_1BD0E5E8C(0, &qword_1EBD41B08);
      v67 = sub_1BE052744();

      if (v67 >> 62)
      {
        v68 = sub_1BE053704();
        if (v68)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v68)
        {
LABEL_25:
          v102[0] = v54;
          v102[1] = v50;
          v115[0] = v56;
          sub_1BD03B254(0, v68 & ~(v68 >> 63), 0);
          if ((v68 & 0x8000000000000000) == 0)
          {
            v69 = 0;
            v56 = v115[0];
            v70 = v67;
            v71 = v67 & 0xC000000000000001;
            v72 = v67;
            do
            {
              if (v71)
              {
                v73 = MEMORY[0x1BFB40900](v69, v70);
              }

              else
              {
                v73 = *(v70 + 8 * v69 + 32);
              }

              v74 = v73;
              v75 = [v74 serialNumber];
              v76 = sub_1BE052434();
              v78 = v77;

              v115[0] = v56;
              v80 = *(v56 + 16);
              v79 = *(v56 + 24);
              if (v80 >= v79 >> 1)
              {
                sub_1BD03B254((v79 > 1), v80 + 1, 1);
                v56 = v115[0];
              }

              ++v69;
              *(v56 + 16) = v80 + 1;
              v81 = v56 + 16 * v80;
              *(v81 + 32) = v76;
              *(v81 + 40) = v78;
              v70 = v72;
            }

            while (v68 != v69);
            sub_1BD307F28(v111, 0);

            v54 = v102[0];
            v52 = v104;
            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_54;
        }
      }

      v64 = v111;
      v65 = 0;
      goto LABEL_38;
    }

    v43 = 0xD00000000000001BLL;
    v44 = 0x80000001BE131580;
  }

  else
  {
    v43 = 0x2072616320746F6ELL;
    v44 = 0xEB0000000079656BLL;
  }

  (a1)(v43, v44, 0, 1);
  v45 = v114;
}

uint64_t sub_1BD60A330(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_credential);
  if (!v5)
  {
    return a1(0);
  }

  v6 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_companionContext);
  if (!v7)
  {
    return a1(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46290);
  v8 = sub_1BE04C384();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BE0B69E0;
  *(v11 + v10) = v5;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x1E69B82A8], v8);
  sub_1BE04C3D4();
  swift_allocObject();
  v12 = v5;
  sub_1BE048964();
  v13 = sub_1BE04C394();
  v14 = type metadata accessor for CarKeyProvisioningUICoordinator();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v16 = &v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_credentialIndex] = 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_composer] = 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_fieldsModel] = 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisioningError] = 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_provisionedPasses] = 0;
  v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_queuedPendingProvisioning] = 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_idleTimerAssertion] = 0;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_context] = v7;
  *&v15[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_configuration] = v13;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v16 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v27.receiver = v15;
  v27.super_class = v14;
  sub_1BE048964();
  sub_1BE048964();
  v17 = objc_msgSendSuper2(&v27, sel_init);
  v18 = *(v6 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_coordinator);
  *(v6 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_coordinator) = v17;
  v19 = v17;

  v20 = &v19[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_delegate];
  swift_beginAccess();
  *(v20 + 1) = &off_1F3BB1C00;
  swift_unknownObjectWeakAssign();
  v21 = [objc_allocWithZone(MEMORY[0x1E69B8E38]) init];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v7;
  v23[4] = v12;
  v23[5] = v19;
  v23[6] = a1;
  v23[7] = a2;
  v24 = v12;
  sub_1BE048964();
  v25 = v19;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BD31821C(v21, 5, sub_1BD60A9E8, v23);
}

void sub_1BD60A724(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, void (*a6)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a1)
    {
      a6(0);
    }

    else
    {
      objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchViewController());
      sub_1BE048964();
      v13 = sub_1BD44D378(a3, a4);
      v14 = *&v13[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator];
      *&v13[OBJC_IVAR____TtC9PassKitUI39ProvisioningCarAddToWatchViewController_coordinator] = a5;

      v15 = &a5[OBJC_IVAR____TtC9PassKitUI31CarKeyProvisioningUICoordinator_renderer];
      swift_beginAccess();
      *(v15 + 1) = &off_1F3BA73A8;
      swift_unknownObjectWeakAssign();
      swift_beginAccess();
      swift_unknownObjectWeakAssign();
      v16 = *&v12[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController];
      *&v12[OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController] = v13;
      v17 = a5;
      v18 = v13;

      a6(1);
    }
  }
}

uint64_t sub_1BD60A8A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD60A8DC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD60A930()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_viewController);
  v2 = v1;
  return v1;
}

uint64_t sub_1BD60A960()
{
  v1 = v0 + OBJC_IVAR____TtC9PassKitUI33ProvisioningCarAddToWatchFlowItem_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    sub_1BD8659A4(v0, &off_1F3BB1C10, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1BD60A9F8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

uint64_t sub_1BD60AA50(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BE053B84() & 1;
  }
}

id sub_1BD60AAA8(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BC84();
  v5 = [v4 devicePrimaryPaymentApplication];
  if (v5 && (v6 = v5, v7 = [v5 subcredentials], v6, v7) && (sub_1BD0E5E8C(0, &qword_1EBD398B8), sub_1BD60AC0C(), v8 = sub_1BE052A34(), v7, v9 = sub_1BD960F00(v8), , v9))
  {
    v10 = [v4 paymentPass];
    v11 = [objc_allocWithZone(MEMORY[0x1E69B8C38]) initWithPaymentPass:v10 credentialToShare:v9];

    objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchFlowItem());
    v12 = a2;
    v13 = sub_1BD6096B0(a1, v11, a2);
  }

  else
  {
    v14 = objc_allocWithZone(type metadata accessor for ProvisioningCarAddToWatchFlowItem());
    v13 = sub_1BD6096B0(a1, 0, 0);
  }

  return v13;
}

unint64_t sub_1BD60AC0C()
{
  result = qword_1EBD474E0;
  if (!qword_1EBD474E0)
  {
    sub_1BD0E5E8C(255, &qword_1EBD398B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD474E0);
  }

  return result;
}

uint64_t LightenForegroundModifier.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1BE053D04();
  MEMORY[0x1BFB40DA0](v1);
  return sub_1BE053D64();
}

uint64_t LightenForegroundModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BE051C44();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D040);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v26[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v26[-v16];
  v18 = *v2;
  v19 = sub_1BE051CD4();
  v21 = v20;
  if (v18)
  {
    v26[15] = 1;
  }

  else
  {
    v26[14] = 0;
  }

  sub_1BD60AF84();
  sub_1BE051C34();
  v22 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D050) + 36);
  (*(v6 + 32))(v13, v9, v5);
  sub_1BD60AFD8(v13, v17);
  sub_1BD60AFD8(v17, v22);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D058) + 36));
  *v23 = v19;
  v23[1] = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D060);
  return (*(*(v24 - 8) + 16))(a2, a1, v24);
}

unint64_t sub_1BD60AF84()
{
  result = qword_1EBD4D048;
  if (!qword_1EBD4D048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D048);
  }

  return result;
}

uint64_t sub_1BD60AFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BD60B04C()
{
  result = qword_1EBD4D068;
  if (!qword_1EBD4D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D068);
  }

  return result;
}

unint64_t sub_1BD60B0E0()
{
  result = qword_1EBD4D070;
  if (!qword_1EBD4D070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D050);
    sub_1BD0DE4F4(&qword_1EBD4D078, &qword_1EBD4D060);
    sub_1BD0DE4F4(&qword_1EBD4D080, &qword_1EBD4D058);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D070);
  }

  return result;
}

uint64_t sub_1BD60B1D4()
{
  v1 = sub_1BE051384();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D098);
  sub_1BE051C24();
  v7 = swift_allocObject();
  v15 = xmmword_1BE0B69E0;
  *(v7 + 16) = xmmword_1BE0B69E0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0A0);
  sub_1BE051C04();
  *(swift_allocObject() + 16) = v15;
  v8 = 1.123;
  v9 = 0.0;
  if (!v6)
  {
    v8 = 0.0;
  }

  v10 = -0.257;
  if (!v6)
  {
    v10 = 0.0;
  }

  v11 = 0.026;
  if (!v6)
  {
    v11 = 0.0;
  }

  v12 = 0.257;
  if (v6)
  {
    v9 = 1.174;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = 0.198;
  if (v6)
  {
    v13 = 1.0;
  }

  v16 = v8;
  v17 = v10;
  v18 = v11;
  v19 = 0;
  v20 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v6)), 0x1FuLL)), xmmword_1BE0E7F00, xmmword_1BE0E7EF0);
  v21 = 0;
  v22 = v20.i64[0];
  v23 = v12;
  v24 = v9;
  v25 = 0;
  v26 = v20.i32[0];
  v27 = 0xBF370A3DBE5A1CACLL;
  v28 = -1114409796;
  v29 = v13;
  v30 = 0;
  sub_1BE051BF4();
  (*(v2 + 104))(v5, *MEMORY[0x1E69814D8], v1);
  sub_1BE051474();
  sub_1BE051C14();

  return v7;
}

unint64_t sub_1BD60B51C()
{
  result = qword_1EBD4D088;
  if (!qword_1EBD4D088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D088);
  }

  return result;
}

unint64_t sub_1BD60B574()
{
  result = qword_1EBD4D090;
  if (!qword_1EBD4D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D090);
  }

  return result;
}

unint64_t sub_1BD60B5DC()
{
  result = qword_1EBD4D0A8;
  if (!qword_1EBD4D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D0A8);
  }

  return result;
}

uint64_t type metadata accessor for PassHeaderView()
{
  result = qword_1EBD4D0B0;
  if (!qword_1EBD4D0B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BD60B6A4()
{
  sub_1BD60B770();
  if (v0 <= 0x3F)
  {
    sub_1BD1C2DD8(319, &qword_1EBD4D0C8);
    if (v1 <= 0x3F)
    {
      sub_1BD1C2DD8(319, &qword_1EBD4F750);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BD60B770()
{
  if (!qword_1EBD4D0C0)
  {
    type metadata accessor for WrappedPass(255);
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D0C0);
    }
  }
}

uint64_t sub_1BD60B7E4@<X0>(uint64_t a1@<X8>)
{
  v192 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0D0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v159 = (&v157 - v4);
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0D8);
  MEMORY[0x1EEE9AC00](v164, v5);
  v160 = &v157 - v6;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0E0);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v7);
  v161 = &v157 - v8;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0E8);
  MEMORY[0x1EEE9AC00](v166, v9);
  v162 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v163 = &v157 - v13;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0F0);
  v170 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v14);
  v168 = &v157 - v15;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D0F8);
  MEMORY[0x1EEE9AC00](v189, v16);
  v190 = &v157 - v17;
  v18 = sub_1BE04FF64();
  v186 = *(v18 - 8);
  v187 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v185 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D100);
  MEMORY[0x1EEE9AC00](v182, v21);
  v184 = &v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v183 = (&v157 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D108);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v171 = (&v157 - v28);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D110);
  MEMORY[0x1EEE9AC00](v175, v29);
  v172 = &v157 - v30;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D118);
  v177 = *(v179 - 1);
  MEMORY[0x1EEE9AC00](v179, v31);
  v173 = &v157 - v32;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D120);
  MEMORY[0x1EEE9AC00](v178, v33);
  v174 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v176 = &v157 - v37;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D128);
  v181 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188, v38);
  v180 = &v157 - v39;
  v40 = type metadata accessor for PassImage(0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v169 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = (&v157 - v45);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v50 = &v157 - v49;
  v51 = type metadata accessor for WrappedPass(0);
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v53);
  v55 = &v157 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD0DE19C(v1, v50, &unk_1EBD43B90);
  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_1BD0DE53C(v50, &unk_1EBD43B90);
    v56 = (v1 + *(type metadata accessor for PassHeaderView() + 20));
    v57 = *v56;
    if (*v56)
    {
      v180 = v56[1];
      v181 = v57;
      PKPassFrontFaceContentSize();
      v179 = PKPassKitUIBundle();
      v178 = sub_1BE0515F4();
      sub_1BE051CD4();
      sub_1BE04E5E4();
      v58 = v215;
      v59 = v216;
      v60 = v217;
      v61 = v218;
      v62 = v219;
      v63 = v220;
      sub_1BE0513F4();
      v64 = sub_1BE051454();

      LOBYTE(v207) = v59;
      LOBYTE(v205[0]) = v61;
      sub_1BE0513F4();
      v65 = sub_1BE051454();

      *&v207 = v178;
      *(&v207 + 1) = v58;
      LOBYTE(v208) = v59;
      *(&v208 + 1) = v60;
      LOBYTE(v209) = v61;
      *(&v209 + 1) = v62;
      *&v210 = v63;
      v211 = xmmword_1BE0CACB0;
      *(&v210 + 1) = v64;
      *&v212 = 0x3FF0000000000000;
      v213 = xmmword_1BE0CC060;
      *(&v212 + 1) = v65;
      v214 = 0x4000000000000000;
      sub_1BD0DE19C(&v207, v205, &qword_1EBD4D138);
      v66 = v181;
      v67 = [v181 bankName];
      if (v67)
      {
        v68 = v67;
        v69 = sub_1BE052434();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0xE000000000000000;
      }

      v118 = sub_1BD41F634(v66);
      v120 = v119;
      v121 = sub_1BE04F7B4();
      v122 = v159;
      *v159 = v121;
      *(v122 + 8) = 0x4020000000000000;
      *(v122 + 16) = 0;
      v123 = v122 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D140) + 44);
      sub_1BD0DE19C(&v207, v205, &qword_1EBD4D138);
      v124 = sub_1BE04F7B4();
      v125 = v183;
      *v183 = v124;
      *(v125 + 8) = 0x4010000000000000;
      *(v125 + 16) = 0;
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D148);
      sub_1BD60D120(v69, v71, v118, v120, 0, 0, v125 + *(v126 + 44));
      v127 = (v125 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D150) + 36));
      v128 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
      v129 = sub_1BE0505C4();
      (*(*(v129 - 8) + 56))(v127 + v128, 1, 1, v129);
      *v127 = swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v131 = v125 + *(v182 + 36);
      *v131 = KeyPath;
      *(v131 + 8) = 1;
      v199 = v211;
      v200 = v212;
      v201 = v213;
      v202 = v214;
      v195 = v207;
      v196 = v208;
      v197 = v209;
      v198 = v210;
      v132 = v184;
      sub_1BD0DE19C(v125, v184, &qword_1EBD4D100);
      v133 = v199;
      v134 = v200;
      v203[4] = v199;
      v203[5] = v200;
      v135 = v201;
      v203[6] = v201;
      v204 = v202;
      v136 = v195;
      v137 = v196;
      v203[0] = v195;
      v203[1] = v196;
      v138 = v197;
      v139 = v198;
      v203[2] = v197;
      v203[3] = v198;
      *(v123 + 112) = v202;
      *(v123 + 80) = v134;
      *(v123 + 96) = v135;
      *(v123 + 48) = v139;
      *(v123 + 64) = v133;
      *(v123 + 16) = v137;
      *(v123 + 32) = v138;
      *v123 = v136;
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D158);
      sub_1BD0DE19C(v132, v123 + *(v140 + 48), &qword_1EBD4D100);
      sub_1BD0DE19C(v203, v205, &qword_1EBD4D138);
      sub_1BD0DE53C(v125, &qword_1EBD4D100);
      sub_1BD0DE53C(v132, &qword_1EBD4D100);
      v205[4] = v199;
      v205[5] = v200;
      v205[6] = v201;
      v206 = v202;
      v205[0] = v195;
      v205[1] = v196;
      v205[2] = v197;
      v205[3] = v198;
      sub_1BD0DE53C(v205, &qword_1EBD4D138);

      sub_1BE051CD4();
      sub_1BE04EE54();
      v141 = v160;
      sub_1BD0DE204(v122, v160, &qword_1EBD4D0D0);
      v142 = v164;
      v143 = (v141 + *(v164 + 36));
      v144 = v226;
      v143[4] = v225;
      v143[5] = v144;
      v143[6] = v227;
      v145 = v222;
      *v143 = v221;
      v143[1] = v145;
      v146 = v224;
      v143[2] = v223;
      v143[3] = v146;
      v147 = v185;
      sub_1BE04FF54();
      v148 = sub_1BD60D8AC();
      v149 = v161;
      sub_1BE050D14();
      (*(v186 + 8))(v147, v187);
      sub_1BD0DE53C(v141, &qword_1EBD4D0D8);
      sub_1BE052434();
      v193 = v142;
      v194 = v148;
      swift_getOpaqueTypeConformance2();
      v150 = v163;
      v151 = v167;
      sub_1BE050DE4();

      (*(v165 + 8))(v149, v151);
      sub_1BD0DE19C(v150, v162, &qword_1EBD4D0E8);
      sub_1BD60D950();
      v152 = v168;
      sub_1BE051A24();
      sub_1BD0DE53C(v150, &qword_1EBD4D0E8);
      sub_1BD0DE53C(&v207, &qword_1EBD4D138);
      v153 = v170;
      v154 = v191;
      (*(v170 + 2))(v190, v152, v191);
      swift_storeEnumTagMultiPayload();
      sub_1BD60DBD8(&qword_1EBD4D178, &qword_1EBD4D128, &unk_1BE0E8270, sub_1BD60DA18);
      sub_1BD60DBD8(&qword_1EBD4D198, &qword_1EBD4D0F0, &unk_1BE0E8238, sub_1BD60D950);
      v155 = v192;
      sub_1BE04F9A4();

      sub_1BD0DE53C(&v207, &qword_1EBD4D138);
      (*(v153 + 8))(v152, v154);
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D130);
      return (*(*(v156 - 8) + 56))(v155, 0, 1, v156);
    }

    else
    {
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D130);
      return (*(*(v82 - 8) + 56))(v192, 1, 1, v82);
    }
  }

  else
  {
    sub_1BD0E8DE0(v50, v55);
    sub_1BD60DC60(v55, v46 + v40[6], type metadata accessor for WrappedPass);
    v72 = type metadata accessor for PassHeaderView();
    v73 = *(v1 + v72[8]);
    PKPassFrontFaceContentSize();
    v46[3] = v73;
    v46[4] = v73 * (v75 / v74);
    *v46 = sub_1BD70C870;
    v46[1] = 0.0;
    *(v46 + 16) = 0;
    *(v46 + v40[7]) = 1;
    *(v46 + v40[8]) = 1911;
    v166 = sub_1BD4943B0();
    v77 = v76;
    v78 = v1 + v72[6];
    v79 = *(v78 + 8);
    v170 = v46;
    v158 = v55;
    if (v79)
    {
      v80 = *v78;
      v81 = v79;
    }

    else
    {
      v80 = sub_1BD60CD8C(v55);
      v81 = v84;
    }

    v85 = (v1 + v72[7]);
    v86 = *v85;
    v87 = v85[1];
    sub_1BE048C84();
    v88 = sub_1BE04F7B4();
    v89 = v171;
    *v171 = v88;
    *(v89 + 8) = 0x4020000000000000;
    *(v89 + 16) = 0;
    v90 = v89 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1A0) + 44);
    v91 = sub_1BE04F7B4();
    v92 = v183;
    *v183 = v91;
    *(v92 + 8) = 0x4010000000000000;
    *(v92 + 16) = 0;
    v93 = v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D148) + 44);
    v167 = v77;
    v168 = v81;
    sub_1BD60D120(v166, v77, v80, v81, v86, v87, v93);
    v94 = (v92 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D150) + 36));
    v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
    v96 = sub_1BE0505C4();
    (*(*(v96 - 8) + 56))(v94 + v95, 1, 1, v96);
    *v94 = swift_getKeyPath();
    v97 = swift_getKeyPath();
    v98 = v92 + *(v182 + 36);
    *v98 = v97;
    *(v98 + 8) = 1;
    v99 = v169;
    sub_1BD60DC60(v170, v169, type metadata accessor for PassImage);
    v100 = v184;
    sub_1BD0DE19C(v92, v184, &qword_1EBD4D100);
    sub_1BD60DC60(v99, v90, type metadata accessor for PassImage);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1A8);
    sub_1BD0DE19C(v100, v90 + *(v101 + 48), &qword_1EBD4D100);
    sub_1BD0DE53C(v92, &qword_1EBD4D100);
    sub_1BD0DE53C(v100, &qword_1EBD4D100);
    sub_1BD60DCC8(v99, type metadata accessor for PassImage);

    sub_1BE051CD4();
    sub_1BE04EE54();
    v102 = v172;
    sub_1BD0DE204(v89, v172, &qword_1EBD4D108);
    v103 = v175;
    v104 = (v102 + *(v175 + 36));
    v105 = v212;
    v104[4] = v211;
    v104[5] = v105;
    v104[6] = v213;
    v106 = v208;
    *v104 = v207;
    v104[1] = v106;
    v107 = v210;
    v104[2] = v209;
    v104[3] = v107;
    v108 = v185;
    sub_1BE04FF54();
    v109 = sub_1BD60DAE0();
    v110 = v173;
    sub_1BE050D14();
    (*(v186 + 8))(v108, v187);
    sub_1BD0DE53C(v102, &qword_1EBD4D110);
    sub_1BE052434();
    *&v205[0] = v103;
    *(&v205[0] + 1) = v109;
    swift_getOpaqueTypeConformance2();
    v111 = v176;
    v112 = v179;
    sub_1BE050DE4();

    (*(v177 + 8))(v110, v112);
    sub_1BD0DE19C(v111, v174, &qword_1EBD4D120);
    sub_1BD60DA18();
    v113 = v180;
    sub_1BE051A24();

    sub_1BD0DE53C(v111, &qword_1EBD4D120);
    v114 = v181;
    v115 = v188;
    (*(v181 + 2))(v190, v113, v188);
    swift_storeEnumTagMultiPayload();
    sub_1BD60DBD8(&qword_1EBD4D178, &qword_1EBD4D128, &unk_1BE0E8270, sub_1BD60DA18);
    sub_1BD60DBD8(&qword_1EBD4D198, &qword_1EBD4D0F0, &unk_1BE0E8238, sub_1BD60D950);
    v116 = v192;
    sub_1BE04F9A4();
    v114[1](v113, v115);
    sub_1BD60DCC8(v158, type metadata accessor for WrappedPass);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D130);
    (*(*(v117 - 8) + 56))(v116, 0, 1, v117);
    return sub_1BD60DCC8(v170, type metadata accessor for PassImage);
  }
}

id sub_1BD60CD8C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v30 - v13;
  v15 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1BD60DC60(a1, v18, type metadata accessor for WrappedPass);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BD60DCC8(v18, type metadata accessor for WrappedPass);
      (*(v3 + 104))(v14, *MEMORY[0x1E69B8068], v2);
      result = PKPassKitBundle();
      if (result)
      {
        v21 = result;
        v22 = sub_1BE04B6F4();

        (*(v3 + 8))(v14, v2);
        return v22;
      }

      __break(1u);
      goto LABEL_17;
    }

    sub_1BD60DCC8(v18, type metadata accessor for WrappedPass);
    return 0;
  }

  v23 = *v18;
  if ([*v18 passType] != 1)
  {

    return 0;
  }

  v24 = [v23 isTransitPass];
  v25 = *MEMORY[0x1E69B8068];
  v26 = *(v3 + 104);
  if (v24)
  {
    v26(v10, v25, v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v27 = result;
    v28 = sub_1BE04B6F4();

    (*(v3 + 8))(v10, v2);
  }

  else
  {
    v26(v6, v25, v2);
    result = PKPassKitBundle();
    if (!result)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v29 = result;
    v28 = sub_1BE04B6F4();

    (*(v3 + 8))(v6, v2);
  }

  return v28;
}

uint64_t sub_1BD60D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v98 = a6;
  v95 = a5;
  v96 = a4;
  v94 = a3;
  v101 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD5BB60);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v103 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v102 = &v93 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v100 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v106 = &v93 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD452C0);
  v107 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105, v21);
  v104 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v93 - v25;
  v108 = a1;
  v109 = a2;
  v27 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v97 = v27;
  v28 = sub_1BE0506C4();
  v30 = v29;
  LOBYTE(v27) = v31;
  sub_1BE0503D4();
  sub_1BE050334();

  v32 = sub_1BE0505F4();
  v34 = v33;
  LOBYTE(a1) = v35;

  sub_1BD0DDF10(v28, v30, v27 & 1);

  sub_1BE051224();
  v36 = sub_1BE050564();
  v38 = v37;
  LOBYTE(v28) = v39;
  v41 = v40;

  sub_1BD0DDF10(v32, v34, a1 & 1);

  v108 = v36;
  v109 = v38;
  v110 = v28 & 1;
  v111 = v41;
  sub_1BE052434();
  v99 = v26;
  sub_1BE050DE4();

  sub_1BD0DDF10(v36, v38, v28 & 1);

  if (v96)
  {
    v108 = v94;
    v109 = v96;
    sub_1BE048C84();
    v42 = sub_1BE0506C4();
    v44 = v43;
    v46 = v45;
    sub_1BE0502E4();
    v47 = sub_1BE0505F4();
    v49 = v48;
    v51 = v50;

    sub_1BD0DDF10(v42, v44, v46 & 1);

    sub_1BE051234();
    v52 = sub_1BE050564();
    v54 = v53;
    LOBYTE(v44) = v55;
    v57 = v56;

    sub_1BD0DDF10(v47, v49, v51 & 1);

    v108 = v52;
    v109 = v54;
    v110 = v44 & 1;
    v111 = v57;
    sub_1BE052434();
    v58 = v104;
    sub_1BE050DE4();

    sub_1BD0DDF10(v52, v54, v44 & 1);

    v59 = v106;
    sub_1BD0DE204(v58, v106, &qword_1EBD452C0);
    v60 = 0;
    v61 = v59;
  }

  else
  {
    v60 = 1;
    v61 = v106;
    v58 = v104;
  }

  v62 = v107 + 56;
  v63 = *(v107 + 56);
  v64 = 1;
  v63(v61, v60, 1, v105);
  if (v98)
  {
    v108 = v95;
    v109 = v98;
    sub_1BE048C84();
    v65 = sub_1BE0506C4();
    v107 = v62;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v98 = v63;
    sub_1BE0502E4();
    v71 = sub_1BE0505F4();
    v73 = v72;
    v74 = v58;
    v76 = v75;

    sub_1BD0DDF10(v66, v68, v70 & 1);

    sub_1BE051234();
    v77 = sub_1BE050564();
    v79 = v78;
    LOBYTE(v68) = v80;
    v82 = v81;

    v83 = v76 & 1;
    v58 = v74;
    sub_1BD0DDF10(v71, v73, v83);

    v108 = v77;
    v109 = v79;
    v110 = v68 & 1;
    v111 = v82;
    sub_1BE052434();
    sub_1BE050DE4();

    v84 = v79;
    v63 = v98;
    sub_1BD0DDF10(v77, v84, v68 & 1);

    v85 = v100;
    sub_1BD0DE204(v74, v100, &qword_1EBD452C0);
    v64 = 0;
  }

  else
  {
    v85 = v100;
  }

  v63(v85, v64, 1, v105);
  v86 = v99;
  sub_1BD0DE19C(v99, v58, &qword_1EBD452C0);
  v87 = v106;
  v88 = v102;
  sub_1BD0DE19C(v106, v102, &unk_1EBD5BB60);
  v89 = v103;
  sub_1BD0DE19C(v85, v103, &unk_1EBD5BB60);
  v90 = v101;
  sub_1BD0DE19C(v58, v101, &qword_1EBD452C0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1B0);
  sub_1BD0DE19C(v88, v90 + *(v91 + 48), &unk_1EBD5BB60);
  sub_1BD0DE19C(v89, v90 + *(v91 + 64), &unk_1EBD5BB60);
  sub_1BD0DE53C(v85, &unk_1EBD5BB60);
  sub_1BD0DE53C(v87, &unk_1EBD5BB60);
  sub_1BD0DE53C(v86, &qword_1EBD452C0);
  sub_1BD0DE53C(v89, &unk_1EBD5BB60);
  sub_1BD0DE53C(v88, &unk_1EBD5BB60);
  return sub_1BD0DE53C(v104, &qword_1EBD452C0);
}

unint64_t sub_1BD60D8AC()
{
  result = qword_1EBD4D160;
  if (!qword_1EBD4D160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D0D8);
    sub_1BD60DB84(&qword_1EBD4D168, &qword_1EBD4D0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D160);
  }

  return result;
}

unint64_t sub_1BD60D950()
{
  result = qword_1EBD4D170;
  if (!qword_1EBD4D170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D0E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D0D8);
    sub_1BD60D8AC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D170);
  }

  return result;
}

unint64_t sub_1BD60DA18()
{
  result = qword_1EBD4D180;
  if (!qword_1EBD4D180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D110);
    sub_1BD60DAE0();
    swift_getOpaqueTypeConformance2();
    sub_1BD0F15A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D180);
  }

  return result;
}

unint64_t sub_1BD60DAE0()
{
  result = qword_1EBD4D188;
  if (!qword_1EBD4D188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D110);
    sub_1BD60DB84(&qword_1EBD4D190, &qword_1EBD4D108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D188);
  }

  return result;
}

uint64_t sub_1BD60DB84(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD60DBD8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

uint64_t sub_1BD60DC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD60DCC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BD60DD28()
{
  result = qword_1EBD4D1B8;
  if (!qword_1EBD4D1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D1C0);
    sub_1BD60DDAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D1B8);
  }

  return result;
}

unint64_t sub_1BD60DDAC()
{
  result = qword_1EBD4D1C8;
  if (!qword_1EBD4D1C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D130);
    sub_1BD60DBD8(&qword_1EBD4D178, &qword_1EBD4D128, &unk_1BE0E8270, sub_1BD60DA18);
    sub_1BD60DBD8(&qword_1EBD4D198, &qword_1EBD4D0F0, &unk_1BE0E8238, sub_1BD60D950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D1C8);
  }

  return result;
}

uint64_t sub_1BD60DE90(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 16) = a3;
  v5 = sub_1BE04D214();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  *(v4 + 88) = swift_task_alloc();
  v6 = sub_1BE053924();
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD60E004, v3, 0);
}

uint64_t sub_1BD60E004()
{
  v1 = v0[5];
  if (*(v1 + 112))
  {
    sub_1BE04D1E4();
    v2 = sub_1BE04D204();
    v3 = sub_1BE052C54();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[10];
    v6 = v0[6];
    v7 = v0[7];
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v2, v3, "Throttled task already running, ignoring new call.", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    (*(v7 + 8))(v5, v6);

    v9 = v0[1];

    return v9();
  }

  else
  {
    *(v1 + 112) = 1;
    v11 = sub_1BE053DB4();
    v13 = v12;
    sub_1BE053C44();
    v14 = swift_task_alloc();
    v0[15] = v14;
    *v14 = v0;
    v14[1] = sub_1BD60E204;

    return sub_1BD60F4D4(v11, v13, 0, 0, 1);
  }
}

uint64_t sub_1BD60E204()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 40);
  if (v0)
  {
    v7 = sub_1BD60E4C0;
  }

  else
  {
    v7 = sub_1BD60E38C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1BD60E38C()
{
  v1 = v0[11];
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_1BE0528D4();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v3;
  v5[5] = v2;
  sub_1BE048964();
  sub_1BD122C00(0, 0, v1, &unk_1BE0E83E0, v5);

  *(v0[5] + 112) = 0;

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BD60E4C0()
{
  if (sub_1BE052974())
  {
    sub_1BE04D1E4();
    v1 = sub_1BE04D204();
    v2 = sub_1BE052C54();
    v3 = os_log_type_enabled(v1, v2);
    v4 = v0[16];
    v5 = v0[9];
    v6 = v0[6];
    v7 = v0[7];
    if (v3)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1BD026000, v1, v2, "Throttled task cancelled.", v8, 2u);
      MEMORY[0x1BFB45F20](v8, -1, -1);
    }

    else
    {
    }

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v9 = v0[16];
    sub_1BE04D1E4();
    v10 = v9;
    v11 = sub_1BE04D204();
    v12 = sub_1BE052C34();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[16];
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_1BD026000, v11, v12, "Throttled task failed with an error %@.", v15, 0xCu);
      sub_1BD1E236C(v16);
      MEMORY[0x1BFB45F20](v16, -1, -1);
      MEMORY[0x1BFB45F20](v15, -1, -1);
    }

    else
    {
    }

    (*(v0[7] + 8))(v0[8], v0[6]);
  }

  *(v0[5] + 112) = 0;

  v19 = v0[1];

  return v19();
}

uint64_t sub_1BD60E730(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BD126968;

  return v7();
}

uint64_t sub_1BD60E818()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BD60E854(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1BD126968;

  return sub_1BD60DE90(a3, a4, a1);
}

void *sub_1BD60E908()
{
  type metadata accessor for Throttler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  result = swift_allocObject();
  result[2] = v0;
  result[3] = 0x4014000000000000;
  result[4] = &unk_1BE0E83E8;
  result[5] = 0;
  qword_1EBD4D1D0 = &unk_1BE0E83F8;
  *algn_1EBD4D1D8 = result;
  return result;
}

uint64_t sub_1BD60E990()
{
  v1 = sub_1BE04D214();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_1BE052104();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD60EAA8, 0, 0);
}

uint64_t sub_1BD60EAA8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v0[8] = [objc_allocWithZone(sub_1BE052124()) init];
  (*(v2 + 104))(v1, *MEMORY[0x1E699C738], v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1BD60EB98;
  v5 = v0[7];

  return MEMORY[0x1EEE041A8](v5);
}

uint64_t sub_1BD60EB98()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1BD60ED7C;
  }

  else
  {
    v5 = sub_1BD60ED08;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BD60ED08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD60ED7C()
{
  v1 = *(v0 + 80);

  sub_1BE04D1E4();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to update FinHealth insights with error %@.", v7, 0xCu);
    sub_1BD1E236C(v8);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 24) + 8))(*(v0 + 32), *(v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t static BankConnectTransactionInsightsLoader.requestPersonalizedInsightsUpdate()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v8 - v3;
  v5 = sub_1BE0528D4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  sub_1BD122C00(0, 0, v4, &unk_1BE0E8330, v6);
}

uint64_t sub_1BD60F018()
{
  if (qword_1EBD36CC0 != -1)
  {
    swift_once();
  }

  v3 = (qword_1EBD4D1D0 + *qword_1EBD4D1D0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return v3();
}

uint64_t sub_1BD60F138()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD126968;

  return sub_1BD60EFFC();
}

id BankConnectTransactionInsightsLoader.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectTransactionInsightsLoader.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BankConnectTransactionInsightsLoader.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BD60F420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BD0F985C;

  return sub_1BD60EFFC();
}

uint64_t sub_1BD60F4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1BE053914();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1BD60F5D4, 0, 0);
}

uint64_t sub_1BD60F5D4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1BE053924();
  v5 = sub_1BD60FA4C(&qword_1EBD4D1E0, MEMORY[0x1E69E8820]);
  sub_1BE053C24();
  sub_1BD60FA4C(&qword_1EBD4D1E8, MEMORY[0x1E69E87E8]);
  sub_1BE053934();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1BD60F764;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1BD60F764()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BD60F920, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1BD60F920()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD60F98C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD60E730(a1, v4, v5, v6);
}

uint64_t sub_1BD60FA4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_14Tm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t sub_1BD60FADC()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v5 = *(v0 + 4);
  v4 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BD126968;

  return sub_1BD60E854(v3, v2, v5, v4);
}

uint64_t sub_1BD60FC20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40450);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1BD0DE19C(a1, &v6 - v4, &qword_1EBD40450);
  return sub_1BE04F314();
}

id ACHBankCredentialPickerViewController.__allocating_init(currentBankInformation:selectAction:cancelAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_1BD618540(a1, a2, a3, a4, a5);

  return v12;
}

id ACHBankCredentialPickerViewController.init(currentBankInformation:selectAction:cancelAction:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1BD618540(a1, a2, a3, a4, a5);

  return v6;
}

id ACHBankCredentialPickerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_1BD60FEBC()
{
  v1 = v0;
  v2 = sub_1BE051AD4();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v58 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v57 = &v48 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  MEMORY[0x1EEE9AC00](v54, v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48 - v13;
  v55 = type metadata accessor for ACHBankCredentialPicker(0) - 8;
  MEMORY[0x1EEE9AC00](v55, v15);
  v56 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v48 - v19);
  v21 = type metadata accessor for ACHBankCredentialPickerViewController();
  v62.receiver = v0;
  v62.super_class = v21;
  objc_msgSendSuper2(&v62, sel_viewDidLoad);
  v22 = sub_1BE052404();
  v23 = PKLocalizedPaymentString(v22);

  [v1 setTitle_];
  v24 = [v1 navigationItem];
  v25 = [v1 editButtonItem];
  [v24 setRightBarButtonItem_];

  v53 = swift_allocObject();
  *(v53 + 16) = v1;
  v52 = swift_allocObject();
  *(v52 + 16) = v1;
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  v27 = *&v1[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancelAction + 8];
  v50 = *&v1[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancelAction];
  v51 = v26;
  v49 = v27;
  type metadata accessor for ACHBankCredentialPicker.ViewState(0);
  swift_allocObject();
  v61 = 0;
  v28 = v1;
  sub_1BE048964();
  sub_1BE048964();
  sub_1BE04D874();
  v29 = sub_1BE049364();
  (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  sub_1BD0DE19C(v14, v10, &qword_1EBD4D1F0);
  sub_1BE04D874();
  sub_1BD0DE53C(v14, &qword_1EBD4D1F0);
  type metadata accessor for CredentialCenterModel(0);
  sub_1BD6187F4(&qword_1EBD41FA8, type metadata accessor for CredentialCenterModel);
  *v20 = sub_1BE04E954();
  v20[1] = v30;
  v31 = v52;
  v32 = v53;
  v20[2] = sub_1BD618768;
  v20[3] = v32;
  v20[4] = sub_1BD61878C;
  v20[5] = v31;
  v34 = v50;
  v33 = v51;
  v20[6] = sub_1BD6187B0;
  v20[7] = v33;
  v35 = v49;
  v20[8] = v34;
  v20[9] = v35;
  sub_1BD6187F4(&qword_1EBD4D220, type metadata accessor for ACHBankCredentialPicker.ViewState);
  v36 = sub_1BE04E954();
  v38 = v37;
  v20[10] = v36;
  v20[11] = v37;
  v40 = v59;
  v39 = v60;
  v41 = v57;
  (*(v59 + 104))(v57, *MEMORY[0x1E697D710], v60);
  (*(v40 + 16))(v58, v41, v39);
  sub_1BE048964();
  sub_1BE051694();
  (*(v40 + 8))(v41, v39);
  sub_1BD61883C(v20, v56);
  v42 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D228));
  v43 = sub_1BE04F894();
  [v28 addChildViewController_];
  v44 = [v28 view];
  if (v44)
  {
    v45 = v44;
    v46 = [v43 view];

    if (v46)
    {
      [v45 addSubview_];

      [v43 didMoveToParentViewController_];
      v47 = *&v28[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC];
      *&v28[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC] = v43;

      sub_1BD6188A0(v20);
      *&v28[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState] = v38;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD610550()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

id sub_1BD61067C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D240);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD55600);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D250);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v23 - v16;
  v18 = type metadata accessor for ACHBankCredentialPickerViewController();
  v24.receiver = v2;
  v24.super_class = v18;
  result = objc_msgSendSuper2(&v24, sel_viewWillAppear_, a1 & 1);
  if (*&v2[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState])
  {
    swift_beginAccess();
    sub_1BE048964();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
    sub_1BE04D884();
    swift_endAccess();

    sub_1BD14BE3C();
    v20 = sub_1BE052D54();
    v23[1] = v20;
    v21 = sub_1BE052D14();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    sub_1BD0DE4F4(&qword_1EBD36950, &qword_1EBD55600);
    v23[0] = v13;
    sub_1BD6187F4(&qword_1EBD35EA0, sub_1BD14BE3C);
    sub_1BE04D924();
    sub_1BD0DE53C(v7, &unk_1EBD4D240);

    (*(v9 + 8))(v12, v8);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1BD0DE4F4(&qword_1EBD4D258, &qword_1EBD4D250);
    v22 = v23[0];
    sub_1BE04D954();

    (*(v14 + 8))(v17, v22);
    swift_beginAccess();
    sub_1BE04D7D4();
    swift_endAccess();
  }

  return result;
}

void sub_1BD610A8C(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 != [Strong isEditing])
    {
      [v3 setEditing:v1 animated:0];
    }
  }
}

uint64_t sub_1BD610B60(char a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  objc_msgSendSuper2(&v23, sel_viewDidDisappear_, a1 & 1);
  v4 = OBJC_IVAR___PKACHBankCredentialPickerViewController_cancellables;
  swift_beginAccess();
  v21 = v4;
  v5 = *&v2[v4];
  if ((v5 & 0xC000000000000001) != 0)
  {
    sub_1BE048C84();
    swift_unknownObjectRetain();
    sub_1BE0536B4();
    sub_1BE04D7F4();
    sub_1BD6187F4(&qword_1EBD597F0, MEMORY[0x1E695BF10]);
    result = sub_1BE052A74();
    v8 = v24;
    v7 = v25;
    v9 = v26;
    v10 = v27;
    v11 = v28;
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v5 + 56);
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    v8 = v5;
  }

  v15 = (v9 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v16 = v10;
    v17 = v11;
    v18 = v10;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v19 = (v17 - 1) & v17;
    v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
    sub_1BE048964();
    if (!v20)
    {
LABEL_18:
      sub_1BD0D45FC();

      *&v2[v21] = MEMORY[0x1E69E7CD0];
    }

    while (1)
    {
      sub_1BE04D7E4();

      v10 = v18;
      v11 = v19;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1BE053744())
      {
        sub_1BE04D7F4();
        swift_dynamicCast();
        v18 = v10;
        v19 = v11;
        if (v22)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_18;
    }

    v17 = *(v7 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1BD610EE0()
{
  v1 = v0;
  v2 = sub_1BE04AFE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E69B86A8]) initWithType_];
  if (v7)
  {
    v8 = v7;
    sub_1BE049314();
    v9 = sub_1BE052404();

    [v8 setRoutingNumber_];

    sub_1BE0492E4();
    v10 = sub_1BE052404();

    [v8 setAccountNumber_];

    sub_1BE049344();
    if (v11)
    {
      v12 = sub_1BE052404();
    }

    else
    {
      v12 = 0;
    }

    [v8 setBankName_];

    MEMORY[0x1BFB363C0]();
    sub_1BE04AF74();
    (*(v3 + 8))(v6, v2);
    v13 = sub_1BE052404();

    [v8 setIdentifier_];

    (*(v1 + OBJC_IVAR___PKACHBankCredentialPickerViewController_selectAction))(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD6110DC()
{
  v1 = *&v0[OBJC_IVAR___PKACHBankCredentialPickerViewController_model];
  v2 = *&v0[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState];
  v3 = type metadata accessor for ACHBankCredentialPickerViewController.AddCredentialHandler();
  v4 = objc_allocWithZone(v3);
  v5 = objc_allocWithZone(MEMORY[0x1E69B86A8]);
  sub_1BE048964();
  sub_1BE048964();
  v6 = [v5 initWithType_];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  *&v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_info] = v6;
  *&v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_model] = v1;
  *&v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_viewState] = v2;
  v4[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_isAddingCredential] = 0;
  v20.receiver = v4;
  v20.super_class = v3;
  v7 = objc_msgSendSuper2(&v20, sel_init);
  v8 = *&v7[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_info];
  v9 = objc_allocWithZone(PKAddBankAccountInformationViewController);
  v10 = v7;
  v11 = v8;
  v12 = sub_1BE052404();
  v13 = [v9 initWithDelegate:v10 bankInformation:v11 accountCountryCode:v12];

  if (!v13)
  {
LABEL_7:
    __break(1u);
    return;
  }

  [v13 setSaveToBankCredentialCenter_];
  [v13 setShowDeleteButton_];
  v14 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
  if ([v0 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v14 setModalPresentationStyle_];
  }

  [v14 setSupportedInterfaceOrientations_];
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v19[4] = sub_1BD619BD4;
  v19[5] = v15;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1BD126964;
  v19[3] = &block_descriptor_179_0;
  v16 = _Block_copy(v19);
  v17 = v0;

  [v17 presentViewController:v14 animated:1 completion:v16];

  _Block_release(v16);
  v18 = *&v17[OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler];
  *&v17[OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler] = v10;
}

void sub_1BD61138C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v9 = *(v5 + 16);
  v9(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4, v8);
  v10 = objc_allocWithZone(type metadata accessor for ACHBankCredentialViewController());
  v11 = sub_1BD616870(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (v9)(&v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(v14 + v13, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v4);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  v15 = &v11[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction];
  v16 = *&v11[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction];
  *v15 = sub_1BD619B3C;
  v15[1] = v14;
  sub_1BE048964();
  v17 = v11;
  sub_1BD0D4744(v16);

  v18 = [v2 navigationController];
  if (v18)
  {
    v19 = v18;
    if ([v18 _pk_settings_useStateDrivenNavigation])
    {
      [v19 _pk_settings_pushViewController_];
    }

    else
    {
      [v19 pushViewController:v17 animated:1];
    }
  }

  if (*&v2[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState])
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v20[15] = 0;
    sub_1BE048964();
    sub_1BE04D8C4();
  }
}

void sub_1BD611618(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1BE04AFE4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BE049364();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v50 = v6;
  v51 = v5;
  v16 = *&Strong[OBJC_IVAR___PKACHBankCredentialPickerViewController_model];
  v46 = Strong;
  v17 = *&Strong[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState];
  v52 = v11;
  v18 = *(v11 + 16);
  v18(v14, a2, v10);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v47 = type metadata accessor for ACHBankCredentialPickerViewController.EditCredentialHandler(0);
  v20 = objc_allocWithZone(v47);
  v21 = v10;
  v22 = v20;
  v20[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_isUpdatingCredential] = 0;
  *&v20[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_model] = v16;
  v48 = v21;
  (v18)(&v20[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_ach], v14);
  *&v22[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_viewState] = v17;
  v23 = &v22[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_credentialUpdated];
  *v23 = sub_1BD619BCC;
  v23[1] = v19;
  v24 = objc_allocWithZone(MEMORY[0x1E69B86A8]);
  v49 = v17;
  swift_retain_n();
  sub_1BE048964();
  v25 = a3;
  sub_1BE048964();
  sub_1BE048964();
  v26 = [v24 initWithType_];
  if (!v26)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v27 = v26;
  sub_1BE049314();
  v28 = sub_1BE052404();

  [v27 setRoutingNumber_];

  sub_1BE0492E4();
  v29 = sub_1BE052404();

  [v27 setAccountNumber_];

  sub_1BE049344();
  if (v30)
  {
    v31 = sub_1BE052404();
  }

  else
  {
    v31 = 0;
  }

  [v27 setBankName_];

  MEMORY[0x1BFB363C0]();
  sub_1BE04AF74();
  (*(v50 + 8))(v9, v51);
  v32 = sub_1BE052404();

  [v27 setIdentifier_];

  *&v22[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_info] = v27;
  v54.receiver = v22;
  v54.super_class = v47;
  v33 = objc_msgSendSuper2(&v54, sel_init);

  (*(v52 + 8))(v14, v48);
  v34 = *&v33[OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_info];
  v35 = objc_allocWithZone(PKAddBankAccountInformationViewController);
  v36 = v33;
  v37 = v34;
  v38 = sub_1BE052404();
  v39 = [v35 initWithDelegate:v36 bankInformation:v37 accountCountryCode:v38];

  if (!v39)
  {
    goto LABEL_12;
  }

  [v39 setSaveToBankCredentialCenter_];
  [v39 setShowDeleteButton_];
  v40 = [objc_allocWithZone(PKNavigationController) initWithRootViewController_];
  v41 = v46;
  if ([v46 pkui_userInterfaceIdiomSupportsLargeLayouts])
  {
    [v40 setModalPresentationStyle_];
  }

  [v40 setSupportedInterfaceOrientations_];
  v42 = swift_allocObject();
  *(v42 + 16) = v41;
  aBlock[4] = sub_1BD619BF4;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD126964;
  aBlock[3] = &block_descriptor_141;
  v43 = _Block_copy(aBlock);
  v44 = v41;

  [v44 presentViewController:v40 animated:1 completion:v43];

  _Block_release(v43);
  v45 = *&v44[OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler];
  *&v44[OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler] = v33;
}

uint64_t sub_1BD611BE0(uint64_t a1)
{
  v2 = sub_1BE049364();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v6, v11, v2);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v3 + 8))(v11, v2);
}

uint64_t sub_1BD611D58(uint64_t result)
{
  if (*(result + OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE048964();
    return sub_1BE04D8C4();
  }

  return result;
}

id ACHBankCredentialPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1BE052404();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_1BD611F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1BE04D214();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = sub_1BE049394();
  v4[9] = v7;
  v4[10] = *(v7 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v8 = sub_1BE049364();
  v4[15] = v8;
  v4[16] = *(v8 - 8);
  v4[17] = swift_task_alloc();
  sub_1BE0528A4();
  v4[18] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[19] = v10;
  v4[20] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD6121D0, v10, v9);
}

id sub_1BD6121D0()
{
  v1 = *(v0[2] + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_info);
  v0[21] = v1;
  result = [v1 routingNumber];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  sub_1BE052434();

  result = [v1 accountNumber];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  sub_1BE052434();

  v5 = [v1 bankName];
  if (v5)
  {
    v6 = v5;
    sub_1BE052434();
  }

  sub_1BE049304();
  v7 = v0[15];
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[17];
  v12 = v0[10];
  v11 = v0[11];
  v13 = v0[9];
  v14 = *(v8 + 56);
  v0[22] = v14;
  v0[23] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v14(v9, 0, 1, v7);
  (*(v8 + 32))(v10, v9, v7);
  v15 = *(v8 + 16);
  v0[24] = v15;
  v0[25] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15(v11, v10, v7);
  (*(v12 + 104))(v11, *MEMORY[0x1E6967770], v13);
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_1BD6124FC;
  v17 = v0[11];

  return CredentialCenterModel.addCredential(bankCredential:)(v17);
}

uint64_t sub_1BD6124FC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  *(*v1 + 216) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_1BD6128A0;
  }

  else
  {
    v8 = sub_1BD612694;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1BD612694()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);

  MEMORY[0x1BFB363C0](v6);
  sub_1BE04AF74();
  (*(v3 + 8))(v2, v4);
  v7 = sub_1BE052404();

  [v1 setIdentifier_];

  if (*(v5 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_viewState))
  {
    v8 = *(v0 + 176);
    v9 = *(v0 + 120);
    v11 = *(v0 + 96);
    v10 = *(v0 + 104);
    (*(v0 + 192))(v10, *(v0 + 136), v9);
    v8(v10, 0, 1, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v10, v11, &qword_1EBD4D1F0);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v10, &qword_1EBD4D1F0);
  }

  v12 = *(v0 + 16);
  (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
  *(v12 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_isAddingCredential) = 0;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1BD6128A0()
{
  v1 = v0[27];

  sub_1BE04D164();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to add credential %@", v6, 0xCu);
    sub_1BD0DE53C(v7, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v7, -1, -1);
    MEMORY[0x1BFB45F20](v6, -1, -1);
  }

  v10 = v0[27];
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
  v14 = v0[2];
  (*(v0[16] + 8))(v0[17], v0[15]);
  *(v14 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A220AddCredentialHandler_isAddingCredential) = 0;

  v15 = v0[1];

  return v15();
}

id sub_1BD612B70(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1BD612C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v5 = sub_1BE04D214();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = sub_1BE049394();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_1BE049364();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v4[31] = sub_1BE0528A4();
  v4[32] = sub_1BE052894();
  v10 = sub_1BE052844();
  v4[33] = v10;
  v4[34] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD612E84, v10, v9);
}

uint64_t sub_1BD612E84()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[27];
  v4 = v0[12];
  v0[35] = *(v4 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_model);
  v5 = OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_ach;
  v6 = *(v3 + 16);
  v0[36] = v6;
  v0[37] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4 + v5, v2);
  v7 = *(v4 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_info);
  v8 = [v7 routingNumber];
  if (!v8)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v8;
  v12 = sub_1BE052434();
  v14 = v13;

  v0[38] = v12;
  v0[39] = v14;
  v8 = [v7 accountNumber];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  v15 = v8;
  v16 = sub_1BE052434();
  v18 = v17;

  v0[40] = v16;
  v0[41] = v18;
  v19 = [v7 bankName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_1BE052434();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v0[42] = v21;
  v0[43] = v23;
  v8 = sub_1BD612FEC;
  v9 = 0;
  v10 = 0;

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BD612FEC()
{
  v1 = v0[36];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v12 = v0[24];
  v5 = v0[22];
  v11 = v0[21];
  v1(v2, v0[29], v3);
  sub_1BE0492F4();
  sub_1BE049324();
  sub_1BE049354();
  v1(v4, v2, v3);
  v6 = *MEMORY[0x1E6967770];
  v7 = *(v5 + 104);
  v7(v4, v6, v11);
  v1(v12, v2, v3);
  v7(v12, v6, v11);
  v8 = swift_task_alloc();
  v0[44] = v8;
  *v8 = v0;
  v8[1] = sub_1BD613180;
  v9 = v0[24];

  return MEMORY[0x1EEDC1528](v9);
}

uint64_t sub_1BD613180()
{
  v2 = *v1;
  v2[45] = v0;

  v3 = v2[24];
  v4 = v2[22];
  v5 = v2[21];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[49] = v6;
    v2[50] = v7;
    v6(v3, v5);
    v8 = sub_1BD6136D8;
  }

  else
  {
    v2[46] = v6;
    v2[47] = v7;
    v6(v3, v5);
    v8 = sub_1BD613304;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1BD613304()
{
  *(v0 + 384) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD613390, v2, v1);
}

uint64_t sub_1BD613390()
{
  v1 = v0[20];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v2 = *(v0[10] + 16);

  sub_1BE0492D4();
  v3 = swift_task_alloc();
  v3[2] = v1;
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v5 = sub_1BE04D8A4();
  v7 = v6;
  v8 = sub_1BD1DA97C(sub_1BD327FE0, v3);
  v9 = *(*v7 + 16);
  if (v9 < v8)
  {
    __break(1u);
LABEL_11:
    v5 = sub_1BD1D7C4C(0, v5[2] + 1, 1, v5);
    *v3 = v5;
    goto LABEL_4;
  }

  v22 = v2;
  v10 = v0[19];
  v11 = v0[20];
  v12 = v0[18];
  sub_1BD1DD4E0(v8, v9);

  (v5)(v0 + 2, 0);

  (*(v10 + 8))(v11, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v13 = *(v0[11] + 16);

  if (v13 >= v22)
  {
    goto LABEL_7;
  }

  v7 = v0 + 6;
  (*(v0[22] + 16))(v0[23], v0[25], v0[21]);
  swift_getKeyPath();
  swift_getKeyPath();
  KeyPath = sub_1BE04D8A4();
  v3 = v14;
  v5 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  v17 = v5[2];
  v16 = v5[3];
  if (v17 >= v16 >> 1)
  {
    v5 = sub_1BD1D7C4C(v16 > 1, v17 + 1, 1, v5);
    *v3 = v5;
  }

  v19 = v0[22];
  v18 = v0[23];
  v20 = v0[21];
  v5[2] = v17 + 1;
  (*(v19 + 32))(v5 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, v18, v20);
  KeyPath(v7, 0);

LABEL_7:

  return MEMORY[0x1EEE6DFA0](sub_1BD613998, 0, 0);
}

uint64_t sub_1BD6136D8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  (*(v0 + 392))(*(v0 + 200), *(v0 + 168));
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1BD613788, v6, v7);
}

uint64_t sub_1BD613788()
{
  v1 = v0[45];

  sub_1BE04D164();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[45];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to update credential %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[16] + 8))(v0[17], v0[15]);
  *(v0[12] + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_isUpdatingCredential) = 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD613998()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 208);
  (*(v0 + 368))(*(v0 + 200), *(v0 + 168));
  v6 = *(v4 + 8);
  *(v0 + 408) = v6;
  *(v0 + 416) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v5);
  (*(v4 + 32))(v2, v3, v5);
  v7 = *(v0 + 264);
  v8 = *(v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1BD613A60, v7, v8);
}

uint64_t sub_1BD613A60()
{
  v1 = *(v0 + 96);

  if (*(v1 + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_viewState))
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    (*(v0 + 288))(v4, *(v0 + 240), v2);
    (*(v3 + 56))(v4, 0, 1, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v4, v5, &qword_1EBD4D1F0);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v4, &qword_1EBD4D1F0);
  }

  v6 = *(v0 + 408);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  (*(*(v0 + 96) + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_credentialUpdated))(v7);
  v6(v7, v8);
  *(*(v0 + 96) + OBJC_IVAR____TtCC9PassKitUI37ACHBankCredentialPickerViewControllerP33_99E507972D4AF6430472792CEB91E7A221EditCredentialHandler_isUpdatingCredential) = 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1BD613DDC@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ACHBankCredentialPicker(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D3F8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  v22 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D400);
  sub_1BD0DE4F4(&qword_1EBD4D408, &qword_1EBD4D400);
  sub_1BE0504E4();
  KeyPath = swift_getKeyPath();
  v11 = &v9[*(v6 + 36)];
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D410) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  sub_1BE0516C4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40520);
  (*(*(v13 - 8) + 56))(v11 + v12, 0, 1, v13);
  *v11 = KeyPath;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  sub_1BD61883C(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v15 = swift_allocObject();
  sub_1BD619028(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1BD61910C();
  sub_1BE051064();

  sub_1BD0DE53C(v9, &qword_1EBD4D3F8);
  swift_beginAccess();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C8E0);
  sub_1BE04D884();
  swift_endAccess();
  sub_1BD61883C(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = swift_allocObject();
  result = sub_1BD619028(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v14);
  v19 = (a1 + *(v16 + 56));
  *v19 = sub_1BD619324;
  v19[1] = v17;
  return result;
}

void sub_1BD6141B0(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D460);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v41 - v11;
  v51 = a1;
  v13 = sub_1BE052404();
  v14 = PKLocalizedPaymentString(v13);

  if (v14)
  {
    v49 = a2;
    v50 = v4;
    v15 = v8;
    v16 = sub_1BE052434();
    v18 = v17;

    v56 = v16;
    v57 = v18;
    sub_1BD0DDEBC();
    v56 = sub_1BE0506C4();
    v57 = v19;
    LOBYTE(v58) = v20 & 1;
    v59 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D468);
    sub_1BD6193BC();
    sub_1BE051A24();
    v22 = sub_1BE052404();
    v23 = PKLocalizedPaymentString(v22);

    if (v23)
    {
      v47 = sub_1BE052434();
      v46 = v24;

      v25 = *(a1 + 48);
      v44 = *(a1 + 56);
      LOBYTE(v52) = 0;
      sub_1BE048964();
      sub_1BE051944();
      v26 = v56;
      v42 = v56;
      v43 = v57;
      v27 = v58;
      v28 = sub_1BE0511D4();
      v29 = v5;
      v30 = *(v5 + 16);
      v48 = v15;
      v45 = v12;
      v31 = v50;
      v30(v15, v12, v50);
      v32 = v49;
      v30(v49, v15, v31);
      v33 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D4A8) + 48)];
      v34 = v47;
      v35 = v46;
      *&v52 = v47;
      *(&v52 + 1) = v46;
      v36 = v44;
      *&v53 = v25;
      *(&v53 + 1) = v44;
      *&v54 = v26;
      v37 = v43;
      *(&v54 + 1) = v43;
      LOBYTE(v55) = v27;
      *(&v55 + 1) = v28;
      v38 = v53;
      *v33 = v52;
      *(v33 + 1) = v38;
      v39 = v55;
      *(v33 + 2) = v54;
      *(v33 + 3) = v39;
      sub_1BD619524(&v52, &v56);
      v40 = *(v29 + 8);
      v40(v45, v31);
      v56 = v34;
      v57 = v35;
      v58 = v25;
      v59 = v36;
      v60 = v42;
      v61 = v37;
      v62 = v27;
      v63 = v28;
      sub_1BD4623B4(&v56);
      v40(v48, v31);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD61454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = type metadata accessor for ACHBankCredentialPicker(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v16 = CredentialCenterModel.achCredentials.getter();
  v14[1] = swift_getKeyPath();
  sub_1BD61883C(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1BD619028(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v14[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D490);
  sub_1BD0DE4F4(&qword_1EBD44198, &unk_1EBD4D4B0);
  sub_1BD6187F4(&unk_1EBD4D4C0, MEMORY[0x1E6967750]);
  sub_1BD0DE4F4(&qword_1EBD4D488, &unk_1EBD4D490);
  v9 = v15;
  sub_1BE0519C4();
  sub_1BD61883C(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = swift_allocObject();
  sub_1BD619028(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v7);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1BD619600;
  *(v11 + 24) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D468);
  v13 = (v9 + *(result + 36));
  *v13 = sub_1BD619664;
  v13[1] = v11;
  return result;
}

uint64_t sub_1BD6147F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049364();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v8 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for ACHBankCredentialPicker(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v12);
  v13 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BD61883C(a2, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1BD619028(v13, v16 + v14);
  (*(v5 + 32))(v16 + v15, v8, v4);
  v19 = a1;
  v20 = a2;
  type metadata accessor for ACHCredentialRow();
  sub_1BD6187F4(&qword_1EBD4D4E0, type metadata accessor for ACHCredentialRow);
  return sub_1BE051704();
}

uint64_t sub_1BD614A40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v16[-v10];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  if (v16[15])
  {
    v12 = 32;
  }

  else
  {
    v13 = sub_1BE049364();
    v14 = *(v13 - 8);
    (*(v14 + 16))(v11, a2, v13);
    (*(v14 + 56))(v11, 0, 1, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BD0DE19C(v11, v7, &qword_1EBD4D1F0);
    sub_1BE048964();
    sub_1BE04D8C4();
    sub_1BD0DE53C(v11, &qword_1EBD4D1F0);
    v12 = 16;
  }

  return (*(a1 + v12))(a2);
}

uint64_t sub_1BD614C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v71 = a3;
  v5 = sub_1BE051AD4();
  v69 = *(v5 - 8);
  v70 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v68 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v67 = &v60[-v10];
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D4E8) - 8;
  MEMORY[0x1EEE9AC00](v66, v11);
  v64 = &v60[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v63 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v60[-v18];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v60[-v22];
  v24 = sub_1BE049364();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26);
  v62 = &v60[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v31 = *(v25 + 16);
  v65 = &v60[-v32];
  v31(v30);
  v72 = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v33 = a1;
  v34 = v19;
  (v31)(v19, v33, v24);
  v35 = v23;
  v36 = v64;
  (*(v25 + 56))(v19, 0, 1, v24);
  v37 = *(v66 + 56);
  sub_1BD0DE19C(v35, v36, &qword_1EBD4D1F0);
  sub_1BD0DE19C(v19, v36 + v37, &qword_1EBD4D1F0);
  v66 = v25;
  v38 = *(v25 + 48);
  if (v38(v36, 1, v24) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD4D1F0);
    sub_1BD0DE53C(v35, &qword_1EBD4D1F0);
    v39 = v38(v36 + v37, 1, v24);
    v40 = v68;
    v41 = v66;
    if (v39 == 1)
    {
      sub_1BD0DE53C(v36, &qword_1EBD4D1F0);
      v43 = v69;
      v42 = v70;
LABEL_9:
      type metadata accessor for ACHBankCredentialPicker(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
      v46 = v67;
      sub_1BE0516A4();
      v47 = MEMORY[0x1E697D708];
      (*(v43 + 104))(v40, *MEMORY[0x1E697D708], v42);
      v54 = sub_1BE051AC4();
      v55 = *(v43 + 8);
      v55(v40, v42);
      v55(v46, v42);
      v45 = v54 ^ 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v44 = v63;
  sub_1BD0DE19C(v36, v63, &qword_1EBD4D1F0);
  if (v38(v36 + v37, 1, v24) == 1)
  {
    sub_1BD0DE53C(v19, &qword_1EBD4D1F0);
    sub_1BD0DE53C(v35, &qword_1EBD4D1F0);
    v41 = v66;
    (*(v66 + 8))(v44, v24);
    v40 = v68;
LABEL_6:
    sub_1BD0DE53C(v36, &qword_1EBD4D4E8);
    v45 = 0;
    v43 = v69;
    v42 = v70;
    goto LABEL_7;
  }

  v41 = v66;
  v48 = v62;
  (*(v66 + 32))(v62, v36 + v37, v24);
  sub_1BD6187F4(&qword_1EBD4D4F0, MEMORY[0x1E6967750]);
  v61 = sub_1BE052334();
  v49 = v36;
  v50 = v24;
  v51 = v35;
  v52 = *(v41 + 8);
  v52(v48, v50);
  sub_1BD0DE53C(v34, &qword_1EBD4D1F0);
  v53 = v51;
  v24 = v50;
  sub_1BD0DE53C(v53, &qword_1EBD4D1F0);
  v52(v44, v50);
  sub_1BD0DE53C(v49, &qword_1EBD4D1F0);
  v43 = v69;
  v42 = v70;
  v40 = v68;
  if (v61)
  {
    goto LABEL_9;
  }

  v45 = 0;
LABEL_7:
  v46 = v67;
  v47 = MEMORY[0x1E697D708];
LABEL_10:
  type metadata accessor for ACHBankCredentialPicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  sub_1BE0516A4();
  (*(v43 + 104))(v40, *v47, v42);
  v56 = sub_1BE051AC4();
  v57 = *(v43 + 8);
  v57(v40, v42);
  v57(v46, v42);
  v58 = v71;
  (*(v41 + 32))(v71, v65, v24);
  result = type metadata accessor for ACHCredentialRow();
  *(v58 + *(result + 20)) = v45 & 1;
  *(v58 + *(result + 24)) = v56 & 1;
  return result;
}

uint64_t sub_1BD6153A4(uint64_t a1)
{
  v60 = sub_1BE049364();
  v62 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v3);
  v58 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BE04AFE4();
  v61 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ACHBankCredentialPicker(0);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v50 = v10;
  v51 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v49 = &v45 - v13;
  v14 = sub_1BE04B304();
  v47 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v1;
  v18 = CredentialCenterModel.achCredentials.getter();
  v19 = sub_1BE04B344();
  sub_1BD6187F4(&unk_1EBD4D4D0, MEMORY[0x1E6969B50]);
  v20 = sub_1BE052AE4();
  if (v20)
  {
    v21 = v20;
    v46 = v14;
    v64 = MEMORY[0x1E69E7CC0];
    sub_1BD531F28(0, v20 & ~(v20 >> 63), 0);
    v22 = v64;
    result = sub_1BE052AD4();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v56 = &v18[(*(v62 + 80) + 32) & ~*(v62 + 80)];
      v57 = v18;
      v54 = v62 + 8;
      v55 = v62 + 16;
      v53 = v61 + 32;
      while (1)
      {
        v24 = sub_1BE052B34();
        v26 = *v25;
        result = v24(v63, 0);
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v18 + 2))
        {
          goto LABEL_13;
        }

        v27 = v19;
        v28 = v17;
        v29 = a1;
        v30 = v62;
        v31 = &v56[*(v62 + 72) * v26];
        v32 = v58;
        v33 = v60;
        v34 = (*(v62 + 16))(v58, v31, v60);
        MEMORY[0x1BFB363C0](v34);
        (*(v30 + 8))(v32, v33);
        v64 = v22;
        v36 = *(v22 + 16);
        v35 = *(v22 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_1BD531F28(v35 > 1, v36 + 1, 1);
          v22 = v64;
        }

        *(v22 + 16) = v36 + 1;
        (*(v61 + 32))(v22 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v36, v7, v59);
        v17 = v28;
        a1 = v29;
        v19 = v27;
        sub_1BE052B14();
        --v21;
        v18 = v57;
        if (!v21)
        {
          (*(v47 + 8))(v17, v46);

          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
    }

    __break(1u);
  }

  else
  {

    v22 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v37 = sub_1BE0528D4();
    v38 = v49;
    (*(*(v37 - 8) + 56))(v49, 1, 1, v37);
    v39 = v51;
    sub_1BD61883C(v52, v51);
    sub_1BE0528A4();
    v40 = sub_1BE052894();
    v41 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v42 = (v50 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v44 = MEMORY[0x1E69E85E0];
    *(v43 + 16) = v40;
    *(v43 + 24) = v44;
    sub_1BD619028(v39, v43 + v41);
    *(v43 + v42) = v22;
    sub_1BD122C00(0, 0, v38, &unk_1BE0E88A8, v43);
  }

  return result;
}

uint64_t sub_1BD615970()
{
  sub_1BE051D74();
  sub_1BE04E7D4();
}

uint64_t sub_1BD6159E4(uint64_t a1, char a2)
{
  v3 = sub_1BE051AD4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = v15 - v10;
  v13 = MEMORY[0x1E697D708];
  if ((a2 & 1) == 0)
  {
    v13 = MEMORY[0x1E697D710];
  }

  (*(v4 + 104))(v15 - v10, *v13, v3, v11);
  type metadata accessor for ACHBankCredentialPicker(0);
  (*(v4 + 16))(v7, v12, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);
  sub_1BE0516B4();
  return (*(v4 + 8))(v12, v3);
}

uint64_t sub_1BD615B64(uint64_t a1)
{
  v41 = a1;
  v1 = sub_1BE049364();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D450);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v36 - v7;
  v9 = sub_1BE049394();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v40 = &v36 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v37 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v36 = &v36 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v36 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  v39 = v2;
  v26 = (*(v2 + 48))(v25, 1, v1);
  result = sub_1BD0DE53C(v25, &qword_1EBD4D1F0);
  if (v26 == 1)
  {
    sub_1BD0DE19C(v41, v8, &unk_1EBD4D450);
    v29 = v42;
    v28 = v43;
    if ((*(v42 + 48))(v8, 1, v43) == 1)
    {
      return sub_1BD0DE53C(v8, &unk_1EBD4D450);
    }

    else
    {
      v30 = v40;
      (*(v29 + 32))(v40, v8, v28);
      (*(v29 + 16))(v12, v30, v28);
      if ((*(v29 + 88))(v12, v28) == *MEMORY[0x1E6967770])
      {
        (*(v29 + 96))(v12, v28);
        v31 = v29;
        v33 = v38;
        v32 = v39;
        (*(v39 + 32))(v38, v12, v1);
        v34 = v36;
        (*(v32 + 16))(v36, v33, v1);
        (*(v32 + 56))(v34, 0, 1, v1);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1BD0DE19C(v34, v37, &qword_1EBD4D1F0);
        sub_1BE048964();
        sub_1BE04D8C4();
        sub_1BD0DE53C(v34, &qword_1EBD4D1F0);
        (*(v32 + 8))(v33, v1);
        return (*(v31 + 8))(v30, v43);
      }

      else
      {
        v35 = *(v29 + 8);
        v35(v30, v28);
        return (v35)(v12, v28);
      }
    }
  }

  return result;
}

uint64_t sub_1BD616074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1BE04D214();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = sub_1BE0528A4();
  v5[8] = sub_1BE052894();
  v8 = sub_1BE052844();
  v5[9] = v8;
  v5[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD61616C, v8, v7);
}

uint64_t sub_1BD616194()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1BD61623C;
  v2 = *(v0 + 24);

  return MEMORY[0x1EEDC14E8](v2);
}

uint64_t sub_1BD61623C(uint64_t a1)
{
  v3 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v4 = v3[9];
    v5 = v3[10];
    v6 = sub_1BD6164A0;
  }

  else
  {
    v6 = sub_1BD616358;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BD616358()
{
  *(v0 + 120) = sub_1BE052894();
  v2 = sub_1BE052844();

  return MEMORY[0x1EEE6DFA0](sub_1BD6163E4, v2, v1);
}

void sub_1BD6163E4()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[11];

  sub_1BD1D5708(2, v2, v3);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1BD616630, 0, 0);
  }
}

uint64_t sub_1BD6164A0()
{
  v1 = v0[14];

  sub_1BE04D164();
  v2 = v1;
  v3 = sub_1BE04D204();
  v4 = sub_1BE052C34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[14];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1BD026000, v3, v4, "Failed to delete credentials: %@", v7, 0xCu);
    sub_1BD0DE53C(v8, &unk_1EBD3E590);
    MEMORY[0x1BFB45F20](v8, -1, -1);
    MEMORY[0x1BFB45F20](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1BD616648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BD6166B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  return v1;
}

uint64_t sub_1BD61673C()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI23ACHBankCredentialPicker9ViewState__isEditing;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CD60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV9PassKitUI23ACHBankCredentialPicker9ViewState__selectedCredential;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D518);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD616830@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ACHBankCredentialPicker.ViewState(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

id sub_1BD616870(char *a1)
{
  v24 = a1;
  v3 = sub_1BE049364();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v24 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v24 - v15;
  *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC] = 0;
  v17 = &v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = *(v4 + 16);
  v18(&v24 - v15, a1, v3, v14);
  type metadata accessor for ACHBankCredentialViewController.ViewState(0);
  v19 = swift_allocObject();
  (v18)(v11, v16, v3);
  swift_beginAccess();
  (v18)(v7, v11, v3);
  sub_1BE04D874();
  v20 = *(v4 + 8);
  v20(v11, v3);
  swift_endAccess();
  v20(v16, v3);
  *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_viewState] = v19;
  v21 = type metadata accessor for ACHBankCredentialViewController();
  v25.receiver = v1;
  v25.super_class = v21;
  v22 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v20(v24, v3);
  return v22;
}

void sub_1BD616B18()
{
  v1 = v0;
  v2 = sub_1BE049364();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ACHBankCredentialViewController();
  v26.receiver = v1;
  v26.super_class = v7;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  sub_1BE04D8B4();

  sub_1BE049344();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (v9)
  {
    v10 = sub_1BE052404();
  }

  else
  {
    v10 = 0;
  }

  [v1 setTitle_];

  if (*&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_editAction])
  {
    v11 = [v1 navigationItem];
    v12 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:2 target:v1 action:sel_editButtonTapped];
    [v11 setRightBarButtonItem_];
  }

  v13 = [v1 navigationItem];
  [v13 setBackButtonDisplayMode_];

  type metadata accessor for ACHBankCredentialViewController.ViewState(0);
  sub_1BD6187F4(&qword_1EBD4D500, type metadata accessor for ACHBankCredentialViewController.ViewState);
  sub_1BE048964();
  v14 = sub_1BE04E954();
  v16 = v15;
  KeyPath = swift_getKeyPath();
  v24[0] = v14;
  v24[1] = v16;
  v24[2] = KeyPath;
  v25 = 0;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D508));
  sub_1BE048964();
  sub_1BE048964();
  v19 = sub_1BE04F894();
  [v1 addChildViewController_];
  v20 = [v1 view];
  if (v20)
  {
    v21 = v20;
    v22 = [v19 view];

    if (v22)
    {
      [v21 addSubview_];

      [v19 didMoveToParentViewController_];

      v23 = *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC];
      *&v1[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC] = v19;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD616EFC()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ACHBankCredentialViewController();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11 = *&v0[OBJC_IVAR____TtC9PassKitUI31ACHBankCredentialViewController_hostingVC];
    if (v11)
    {
      v12 = [v11 view];
    }

    else
    {
      v12 = 0;
    }

    [v12 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD61716C()
{
  v1 = OBJC_IVAR____TtCC9PassKitUI31ACHBankCredentialViewController9ViewState__ach;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D4F8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BD617214@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ACHBankCredentialViewController.ViewState(0);
  result = sub_1BE04D814();
  *a1 = result;
  return result;
}

void sub_1BD617254()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE0506C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3B0);
    sub_1BD0DE4F4(&qword_1EBD4D3A8, &unk_1EBD4D3B0);
    sub_1BE051A24();
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD617394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char *a5@<X8>)
{
  LODWORD(v73) = a4;
  v74 = a1;
  v75 = a3;
  v72 = a5;
  v6 = sub_1BE049364();
  v77 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3C0);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v68 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v16, v17);
  v67 = &v57 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v76 = &v57 - v21;
  v22 = sub_1BE052404();
  v23 = PKLocalizedPaymentString(v22);

  if (v23)
  {
    sub_1BE052434();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1BE04D8B4();

    v24 = sub_1BE0492E4();
    v26 = v25;
    v27 = *(v77 + 8);
    v58 = v9;
    v63 = v27;
    v64 = v6;
    v77 += 8;
    v27(v9, v6);
    v28 = sub_1BE04F504();
    LOBYTE(v78) = 1;
    sub_1BD617BD0(&v97);
    v93 = v99;
    v94 = v100;
    v91 = v97;
    v92 = v98;
    v96[1] = v98;
    v96[2] = v99;
    v96[3] = v100;
    v96[4] = v101;
    v95 = v101;
    v96[0] = v97;
    sub_1BD0DE19C(&v91, &v88, &qword_1EBD3E1F0);
    sub_1BD0DE53C(v96, &qword_1EBD3E1F0);

    v66 = &v57;
    *&v90[7] = v91;
    *&v90[71] = v95;
    *&v90[55] = v94;
    *&v90[39] = v93;
    *&v90[23] = v92;
    *&v89[33] = *&v90[32];
    *&v89[49] = *&v90[48];
    *&v89[65] = *&v90[64];
    *&v89[1] = *v90;
    v88 = v28;
    v89[0] = v78;
    *&v89[80] = *(&v95 + 1);
    *&v89[17] = *&v90[16];
    MEMORY[0x1EEE9AC00](v29, v30);
    v31 = v75;
    *(&v57 - 6) = v74;
    *(&v57 - 5) = a2;
    v65 = a2;
    *(&v57 - 4) = v31;
    v61 = v73 & 1;
    *(&v57 - 24) = v73 & 1;
    *(&v57 - 2) = v24;
    *(&v57 - 1) = v26;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3D0);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD441C8);
    v34 = sub_1BD0DE4F4(&unk_1EBD3E170, &unk_1EBD4D3D0);
    v35 = sub_1BD0DE4F4(&qword_1EBD441C0, &qword_1EBD441C8);
    v73 = v32;
    v62 = v33;
    v59 = v35;
    v60 = v34;
    sub_1BE0508B4();

    v101 = *&v89[48];
    v102 = *&v89[64];
    v103 = *&v89[80];
    v97 = v88;
    v98 = *v89;
    v99 = *&v89[16];
    v100 = *&v89[32];
    sub_1BD0DE53C(&v97, &unk_1EBD4D3D0);
    v36 = sub_1BE052404();
    v37 = PKLocalizedPaymentString(v36);

    if (v37)
    {
      sub_1BE052434();

      swift_getKeyPath();
      swift_getKeyPath();
      v38 = v58;
      v39 = v65;
      sub_1BE04D8B4();

      v40 = sub_1BE049314();
      v42 = v41;
      v63(v38, v64);
      v43 = sub_1BE04F504();
      v81 = 1;
      sub_1BD617BD0(&v88);
      v84 = *&v89[16];
      v85 = *&v89[32];
      v82 = v88;
      v83 = *v89;
      v87[1] = *v89;
      v87[2] = *&v89[16];
      v87[3] = *&v89[32];
      v87[4] = *&v89[48];
      v86 = *&v89[48];
      v87[0] = v88;
      sub_1BD0DE19C(&v82, &v78, &qword_1EBD3E1F0);
      sub_1BD0DE53C(v87, &qword_1EBD3E1F0);

      *&v80[7] = v82;
      *&v80[71] = v86;
      *&v80[55] = v85;
      *&v80[39] = v84;
      *&v80[23] = v83;
      *&v79[33] = *&v80[32];
      *&v79[49] = *&v80[48];
      *&v79[65] = *&v80[64];
      *&v79[1] = *v80;
      v78 = v43;
      v79[0] = v81;
      *&v79[80] = *(&v86 + 1);
      *&v79[17] = *&v80[16];
      MEMORY[0x1EEE9AC00](v44, v45);
      v46 = v75;
      *(&v57 - 6) = v74;
      *(&v57 - 5) = v39;
      *(&v57 - 4) = v46;
      *(&v57 - 24) = v61;
      *(&v57 - 2) = v40;
      *(&v57 - 1) = v42;
      v47 = v67;
      sub_1BE0508B4();

      *&v89[48] = *&v79[48];
      *&v89[64] = *&v79[64];
      *&v89[80] = *&v79[80];
      v88 = v78;
      *v89 = *v79;
      *&v89[16] = *&v79[16];
      *&v89[32] = *&v79[32];
      sub_1BD0DE53C(&v88, &unk_1EBD4D3D0);
      v49 = v70;
      v48 = v71;
      v50 = *(v70 + 16);
      v51 = v68;
      v52 = v76;
      v50(v68, v76, v71);
      v53 = v69;
      v50(v69, v47, v48);
      v54 = v72;
      v50(v72, v51, v48);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD4D3E0);
      v50(&v54[*(v55 + 48)], v53, v48);
      v56 = *(v49 + 8);
      v56(v47, v48);
      v56(v52, v48);
      v56(v53, v48);
      v56(v51, v48);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BD617BD0@<X0>(uint64_t a1@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v20 = sub_1BE0506C4();
  v21 = v2;
  v4 = v3;
  v19 = v5;
  sub_1BE048C84();
  v6 = sub_1BE0506C4();
  v8 = v7;
  v10 = v9;
  sub_1BE04FC94();
  v11 = sub_1BE050574();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1BD0DDF10(v6, v8, v10 & 1);

  *a1 = v20;
  *(a1 + 8) = v4;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v13;
  *(a1 + 64) = v15 & 1;
  *(a1 + 72) = v17;
  sub_1BD0D7F18(v20, v4, v19 & 1);
  sub_1BE048C84();
  sub_1BD0D7F18(v11, v13, v15 & 1);
  sub_1BE048C84();
  sub_1BD0DDF10(v11, v13, v15 & 1);

  sub_1BD0DDF10(v20, v4, v19 & 1);
}

uint64_t sub_1BD617D84(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  a4 &= 1u;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  sub_1BE048964();
  sub_1BD619014(a3, a4);
  sub_1BE048C84();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358);
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358);

  return sub_1BE051704();
}

void sub_1BD617EB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1BE04F3D4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a4 & 1) == 0)
  {
    sub_1BE048964();
    sub_1BE052C44();
    v11 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(a3, 0);
    (*(v7 + 8))(v10, v6);
  }

  v12 = [objc_opt_self() generalPasteboard];
  v13 = sub_1BE052404();
  [v12 setString_];
}

void sub_1BD618044()
{
  v0 = sub_1BE052404();
  v1 = PKLocalizedPaymentString(v0);

  if (v1)
  {
    sub_1BE052434();

    sub_1BD0DDEBC();
    sub_1BE051624();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1BD618100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D398);
  sub_1BD618EF4();
  return sub_1BE0504E4();
}

uint64_t sub_1BD618184@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE04D8B4();

  *a1 = v3;
  return result;
}

uint64_t sub_1BD618204()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BE048964();
  return sub_1BE04D8C4();
}

uint64_t sub_1BD618278(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D1F0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v11 - v8;
  sub_1BD0DE19C(a1, &v11 - v8, &qword_1EBD4D1F0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1BD0DE19C(v9, v5, &qword_1EBD4D1F0);
  sub_1BE048964();
  sub_1BE04D8C4();
  return sub_1BD0DE53C(v9, &qword_1EBD4D1F0);
}

uint64_t sub_1BD6183A8(uint64_t a1)
{
  v2 = sub_1BE049364();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = &v14 - v10;
  v12 = *(v3 + 16);
  v12(&v14 - v10, a1, v2, v9);
  swift_getKeyPath();
  swift_getKeyPath();
  (v12)(v6, v11, v2);
  sub_1BE048964();
  sub_1BE04D8C4();
  return (*(v3 + 8))(v11, v2);
}

id sub_1BD618540(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler] = 0;
  *&v5[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancellables] = MEMORY[0x1E69E7CD0];
  if (a1 && (v11 = [a1 identifier]) != 0)
  {
    v12 = v11;
    v13 = sub_1BE052434();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  type metadata accessor for CredentialCenterModel(0);
  swift_allocObject();
  *&v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_model] = CredentialCenterModel.init(userDefaultCredentialIdentifier:)(v13, v15);
  v16 = &v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_selectAction];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = &v6[OBJC_IVAR___PKACHBankCredentialPickerViewController_cancelAction];
  *v17 = a4;
  *(v17 + 1) = a5;
  v19.receiver = v6;
  v19.super_class = type metadata accessor for ACHBankCredentialPickerViewController();
  return objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
}

void _s9PassKitUI37ACHBankCredentialPickerViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_pickerViewState) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_hostingVC) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_addCredentialHandler) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_editCredentialHandler) = 0;
  *(v0 + OBJC_IVAR___PKACHBankCredentialPickerViewController_cancellables) = MEMORY[0x1E69E7CD0];
  sub_1BE053994();
  __break(1u);
}

uint64_t sub_1BD6187F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BD61883C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHBankCredentialPicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD6188A0(uint64_t a1)
{
  v2 = type metadata accessor for ACHBankCredentialPicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD61897C()
{
  result = sub_1BE049364();
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

void sub_1BD618A50()
{
  sub_1BD1E1120();
  if (v0 <= 0x3F)
  {
    sub_1BD618B1C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1BD618B1C()
{
  if (!qword_1EBD4D320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D1F0);
    v0 = sub_1BE04D8D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D320);
    }
  }
}

void sub_1BD618BCC()
{
  sub_1BD618E40(319, &unk_1EBD4D368, MEMORY[0x1E6967750], MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BD618CC4()
{
  sub_1BD327B74();
  if (v0 <= 0x3F)
  {
    sub_1BD1030A8();
    if (v1 <= 0x3F)
    {
      sub_1BD618DAC();
      if (v2 <= 0x3F)
      {
        sub_1BD618E40(319, &qword_1EBD4D390, MEMORY[0x1E697D718], MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BD618DAC()
{
  if (!qword_1EBD4D388)
  {
    type metadata accessor for ACHBankCredentialPicker.ViewState(255);
    sub_1BD6187F4(&qword_1EBD4D220, type metadata accessor for ACHBankCredentialPicker.ViewState);
    v0 = sub_1BE04E984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD4D388);
    }
  }
}

void sub_1BD618E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BD618EF4()
{
  result = qword_1EBD4D3A0;
  if (!qword_1EBD4D3A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D398);
    sub_1BD0DE4F4(&qword_1EBD4D3A8, &unk_1EBD4D3B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D3A0);
  }

  return result;
}

uint64_t sub_1BD619014(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_1BE048964();
  }

  return result;
}

uint64_t sub_1BD619028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ACHBankCredentialPicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BD61908C()
{
  type metadata accessor for ACHBankCredentialPicker(0);

  return sub_1BD615970();
}

unint64_t sub_1BD61910C()
{
  result = qword_1EBD4D420;
  if (!qword_1EBD4D420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D3F8);
    sub_1BD0DE4F4(&qword_1EBD4D428, &unk_1EBD4D430);
    sub_1BD0DE4F4(&qword_1EBD42A80, &unk_1EBD4D410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D420);
  }

  return result;
}

uint64_t objectdestroy_114Tm()
{
  v1 = (type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[12];
  v4 = sub_1BE051AD4();
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD449B8);

  return swift_deallocObject();
}

uint64_t sub_1BD619324(uint64_t a1)
{
  type metadata accessor for ACHBankCredentialPicker(0);

  return sub_1BD615B64(a1);
}

unint64_t sub_1BD6193BC()
{
  result = qword_1EBD4D470;
  if (!qword_1EBD4D470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D468);
    sub_1BD619474();
    sub_1BD0DE4F4(&qword_1EBD44C28, &qword_1EBD4D4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D470);
  }

  return result;
}

unint64_t sub_1BD619474()
{
  result = qword_1EBD4D478;
  if (!qword_1EBD4D478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD4D480);
    sub_1BD0DE4F4(&qword_1EBD4D488, &unk_1EBD4D490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD4D478);
  }

  return result;
}

uint64_t sub_1BD619580(uint64_t a1)
{
  v3 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BD6147F8(a1, v4);
}

uint64_t sub_1BD61968C(uint64_t a1)
{
  v4 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1BD0F985C;

  return sub_1BD616074(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1BD6197AC()
{
  v1 = *(type metadata accessor for ACHBankCredentialPicker(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1BE049364() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1BD614A40(v0 + v2, v5);
}

id sub_1BD619880(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v12 = &v19 - v11;
  result = [*&v4[*a1] isValid];
  if (result)
  {
    if ((v4[*a2] & 1) == 0)
    {
      v4[*a2] = 1;
      v14 = sub_1BE0528D4();
      (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
      sub_1BE0528A4();
      v15 = v4;
      v16 = sub_1BE052894();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      v17[2] = v16;
      v17[3] = v18;
      v17[4] = v15;
      sub_1BD122C00(0, 0, v12, a4, v17);
    }
  }

  return result;
}

uint64_t sub_1BD6199D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD612C04(a1, v4, v5, v6);
}

uint64_t sub_1BD619A88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BD126968;

  return sub_1BD611F78(a1, v4, v5, v6);
}

void sub_1BD619B3C()
{
  v1 = *(sub_1BE049364() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1BD611618(v3, v0 + v2, v4);
}

uint64_t sub_1BD619C58(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1BD619D48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v87 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37210);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86, v3);
  v88 = &v77 - v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D878);
  MEMORY[0x1EEE9AC00](v84, v5);
  v83 = &v77 - v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D880);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v7);
  v80 = &v77 - v8;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D888);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v9);
  v77 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D890);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v77 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D898);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v77 - v18;
  v91 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D8A0);
  sub_1BD62AD24();
  sub_1BE0504E4();
  v20 = [objc_opt_self() systemGroupedBackgroundColor];
  v21 = sub_1BE0511C4();
  v22 = sub_1BE0501D4();
  v23 = &v19[*(v16 + 36)];
  *v23 = v21;
  v23[8] = v22;
  v24 = sub_1BE04F434();
  v25 = *(v24 - 8);
  v27 = MEMORY[0x1EEE9AC00](v24, v26);
  v29 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v29, *MEMORY[0x1E697C438], v24, v27);
  v30 = sub_1BD62AF24();
  sub_1BE050E84();
  (*(v25 + 8))(v29, v24);
  sub_1BD0DE53C(v19, &qword_1EBD4D898);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD0);
  sub_1BE04EE44();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1BE0B69E0;
  sub_1BE04EE34();
  v93 = v16;
  v94 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v77;
  MEMORY[0x1BFB3DEF0](0, v31, v11, OpaqueTypeConformance2);

  (*(v12 + 8))(v15, v11);
  v90 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CD8);
  v93 = v11;
  v94 = OpaqueTypeConformance2;
  v35 = swift_getOpaqueTypeConformance2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD38CE0);
  v37 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0);
  v93 = v36;
  v94 = v37;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v80;
  v40 = v78;
  sub_1BE051024();
  (*(v79 + 8))(v33, v40);
  v89 = v2;
  sub_1BE04F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FA48);
  v93 = v40;
  v94 = v34;
  v95 = v35;
  v96 = v38;
  swift_getOpaqueTypeConformance2();
  sub_1BD279F20();
  v41 = v83;
  v42 = v81;
  sub_1BE050954();
  (*(v82 + 8))(v39, v42);
  v43 = sub_1BE04EC54();
  v44 = sub_1BE0501F4();
  v45 = v41 + *(v84 + 9);
  *v45 = v43;
  *(v45 + 8) = v44;
  v46 = swift_allocObject();
  v47 = *(v2 + 48);
  *(v46 + 48) = *(v2 + 32);
  *(v46 + 64) = v47;
  *(v46 + 80) = *(v2 + 64);
  v48 = *(v2 + 16);
  *(v46 + 16) = *v2;
  *(v46 + 32) = v48;
  v49 = swift_allocObject();
  v50 = *(v2 + 48);
  *(v49 + 48) = *(v2 + 32);
  *(v49 + 64) = v50;
  *(v49 + 80) = *(v2 + 64);
  v51 = *(v2 + 16);
  *(v49 + 16) = *v2;
  *(v49 + 32) = v51;
  sub_1BD62B05C(v2, &v93);
  sub_1BD62B05C(v2, &v93);
  sub_1BD62B094();
  sub_1BD0F9764();
  sub_1BE050DC4();

  sub_1BD08FDA4(v41);
  sub_1BE0528A4();
  sub_1BD62B05C(v2, &v93);
  v52 = sub_1BE052894();
  v53 = swift_allocObject();
  v54 = MEMORY[0x1E69E85E0];
  *(v53 + 16) = v52;
  *(v53 + 24) = v54;
  v55 = *(v2 + 48);
  *(v53 + 64) = *(v2 + 32);
  *(v53 + 80) = v55;
  *(v53 + 96) = *(v2 + 64);
  v56 = *(v2 + 16);
  *(v53 + 32) = *v2;
  *(v53 + 48) = v56;
  v57 = sub_1BE0528D4();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v57, v60);
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF0;
  v62 = &v77 - v61;
  sub_1BE0528B4();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v83 = sub_1BE04EAA4();
    v84 = &v77;
    v82 = *(v83 - 1);
    MEMORY[0x1EEE9AC00](v83, v63);
    v65 = &v77 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
    v93 = 0;
    v94 = 0xE000000000000000;
    sub_1BE053834();

    v93 = 0xD000000000000045;
    v94 = 0x80000001BE131C50;
    v92 = 82;
    v66 = sub_1BE053B24();
    MEMORY[0x1BFB3F610](v66);

    v69 = MEMORY[0x1EEE9AC00](v67, v68);
    (*(v58 + 16))(&v77 - v61, &v77 - v61, v57, v69);
    sub_1BE04EA94();
    (*(v58 + 8))(&v77 - v61, v57);
    v70 = v87;
    (*(v85 + 32))(v87, v88, v86);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37218);
    return (*(v82 + 32))(v70 + *(v71 + 36), v65, v83);
  }

  else
  {
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37220);
    v74 = v87;
    v75 = (v87 + *(v73 + 36));
    v76 = sub_1BE04E7B4();
    (*(v58 + 32))(&v75[*(v76 + 20)], v62, v57);
    *v75 = &unk_1BE0E9028;
    *(v75 + 1) = v53;
    return (*(v85 + 32))(v74, v88, v86);
  }
}

uint64_t sub_1BD61A980@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D8C8);
  MEMORY[0x1EEE9AC00](v42, v3);
  v41 = v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D8B8);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v40 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498D0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v39 - v10;
  v12 = sub_1BE049184();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v43 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *a1;
  v52[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900);
  sub_1BE0516A4();
  v16 = v51[0];
  swift_getKeyPath();
  *&v52[0] = v16;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v17 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__institution;
  swift_beginAccess();
  sub_1BD0DE19C(v16 + v17, v11, &qword_1EBD498D0);

  v18 = v13;
  v19 = *(v13 + 48);
  v20 = v12;
  if (v19(v11, 1, v12) == 1)
  {
    sub_1BD0DE53C(v11, &qword_1EBD498D0);
  }

  else
  {
    v21 = v18;
    v22 = *(v18 + 32);
    v23 = v43;
    v22(v43, v11, v20);
    v52[0] = v53;
    sub_1BE0516A4();
    v24 = v51[0];
    swift_getKeyPath();
    *&v52[0] = v24;
    sub_1BE04B594();

    v25 = *(v24 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions);
    sub_1BE048C84();

    if (v25)
    {
      v39[1] = v39;
      MEMORY[0x1EEE9AC00](v26, v27);
      v39[0] = &v39[-6];
      v39[-4] = v25;
      v39[-3] = v23;
      v39[-2] = a1;
      v28 = sub_1BE04F7C4();
      v50 = 0;
      sub_1BD61B380(v25, v48);
      memcpy(v51, v48, 0x261uLL);
      memcpy(v52, v48, 0x261uLL);
      sub_1BD0DE19C(v51, &v47, &qword_1EBD4D908);
      sub_1BD0DE53C(v52, &qword_1EBD4D908);
      memcpy(&v49[7], v51, 0x261uLL);
      v29 = v50;
      v30 = v41;
      v31 = &v41[*(v42 + 36)];
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD386C0) + 28);
      v33 = sub_1BE0505C4();
      (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
      *v31 = swift_getKeyPath();
      *v30 = v28;
      *(v30 + 1) = 0;
      v30[16] = v29;
      memcpy(v30 + 17, v49, 0x268uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CA8);
      sub_1BD62AE40();
      sub_1BD0F92F0();
      v34 = v40;
      sub_1BE051A24();

      v36 = v44;
      v35 = v45;
      v37 = v46;
      (*(v44 + 32))(v46, v34, v45);
      (*(v36 + 56))(v37, 0, 1, v35);
      return (*(v21 + 8))(v43, v20);
    }

    (*(v21 + 8))(v23, v20);
  }

  return (*(v44 + 56))(v46, 1, 1, v45);
}

uint64_t sub_1BD61AF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BE049184();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v18 = a1;
  (*(v7 + 16))(&v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v6, v10);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = *(a3 + 48);
  *(v13 + 32) = *(a3 + 32);
  *(v13 + 48) = v14;
  *(v13 + 64) = *(a3 + 64);
  v15 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 16) = v15;
  sub_1BE048C84();
  sub_1BD62B05C(a3, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38C28);
  sub_1BE04AFE4();
  type metadata accessor for FinanceKitInternalTransactionCell(0);
  sub_1BD0DE4F4(&qword_1EBD38D98, &qword_1EBD38C28);
  sub_1BD626BFC(&qword_1EBD38CB0, type metadata accessor for FinanceKitInternalTransactionCell);
  sub_1BD626BFC(&qword_1EBD38DA0, MEMORY[0x1E6967A40]);
  return sub_1BE0519D4();
}

double sub_1BD61B214@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for FinanceKitInternalTransactionCell(0);
  v9 = v8[5];
  v10 = sub_1BE049A94();
  (*(*(v10 - 8) + 16))(a4 + v9, a1, v10);
  v11 = v8[6];
  v12 = sub_1BE049184();
  (*(*(v12 - 8) + 16))(a4 + v11, a2, v12);
  v13 = *(a3 + 64);
  type metadata accessor for NavigationController();
  sub_1BD626BFC(&qword_1EBD38DA8, type metadata accessor for NavigationController);
  v14 = v13;
  *a4 = sub_1BE04EEC4();
  a4[1] = v15;
  *(a4 + v8[7]) = v14;
  v16 = v8[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DB0);
  sub_1BE051694();
  result = *&v18;
  *(a4 + v16) = v18;
  return result;
}

id sub_1BD61B380@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1BE04BD74();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BD61B770(a1, v54);
  (*(v4 + 104))(v7, *MEMORY[0x1E69B80D8], v3, v8);
  result = PKPassKitBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v4 + 8))(v7, v3);
    v50[0] = v11;
    v50[1] = v13;
    sub_1BD0DDEBC();
    v14 = sub_1BE0506C4();
    v16 = v15;
    v18 = v17;
    sub_1BE0503D4();
    v19 = sub_1BE0505F4();
    v21 = v20;
    v23 = v22;

    sub_1BD0DDF10(v14, v16, v18 & 1);

    v24 = sub_1BE0505D4();
    v26 = v25;
    LOBYTE(v14) = v27;
    sub_1BD0DDF10(v19, v21, v23 & 1);

    v50[0] = sub_1BE051464();
    v28 = sub_1BE050574();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_1BD0DDF10(v24, v26, v14 & 1);

    v53 = v32 & 1;
    v51 = 0;
    memcpy(v37, v54, 0x219uLL);
    memcpy(v36, v54, 0x219uLL);
    *&v38 = v28;
    *(&v38 + 1) = v30;
    LOBYTE(v39) = v32 & 1;
    *(&v39 + 1) = *v52;
    DWORD1(v39) = *&v52[3];
    *(&v39 + 1) = v34;
    v40 = 0u;
    v41 = 0u;
    v42 = 0;
    memset(&v36[36], 0, 33);
    v36[34] = v38;
    v36[35] = v39;
    memcpy(v35, v36, 0x261uLL);
    v43[0] = v28;
    v43[1] = v30;
    v44 = v32 & 1;
    *v45 = *v52;
    *&v45[3] = *&v52[3];
    v46 = v34;
    v47 = 0u;
    v48 = 0u;
    v49 = 0;
    sub_1BD0DE19C(v37, v50, &qword_1EBD4D910);
    sub_1BD0DE19C(&v38, v50, &qword_1EBD38D88);
    sub_1BD0DE53C(v43, &qword_1EBD38D88);
    memcpy(v50, v54, 0x219uLL);
    return sub_1BD0DE53C(v50, &qword_1EBD4D910);
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 sub_1BD61B770@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1BE04F504();
  v50 = 1;
  v7 = sub_1BE04F7B4();
  v51 = 0;
  sub_1BD61C9A8(v3, a1, &v33);
  v64 = v45;
  v65 = v46;
  v66 = v47;
  v67 = v48;
  v60 = v41;
  v61 = v42;
  v62 = v43;
  v63 = v44;
  v56 = v37;
  v57 = v38;
  v58 = v39;
  v59 = v40;
  v52 = v33;
  v53 = v34;
  v54 = v35;
  v55 = v36;
  v68[12] = v45;
  v68[13] = v46;
  v68[14] = v47;
  v68[15] = v48;
  v68[8] = v41;
  v68[9] = v42;
  v68[10] = v43;
  v68[11] = v44;
  v68[4] = v37;
  v68[5] = v38;
  v68[6] = v39;
  v68[7] = v40;
  v68[0] = v33;
  v68[1] = v34;
  v68[2] = v35;
  v68[3] = v36;
  sub_1BD0DE19C(&v52, &v32, &qword_1EBD4D918);
  sub_1BD0DE53C(v68, &qword_1EBD4D918);
  *&__src[199] = v64;
  *&__src[215] = v65;
  *&__src[231] = v66;
  *&__src[247] = v67;
  *&__src[135] = v60;
  *&__src[151] = v61;
  *&__src[167] = v62;
  *&__src[183] = v63;
  *&__src[71] = v56;
  *&__src[87] = v57;
  *&__src[103] = v58;
  *&__src[119] = v59;
  *&__src[7] = v52;
  *&__src[23] = v53;
  *&__src[39] = v54;
  *&__src[55] = v55;
  v8 = v51;
  v9 = v50;
  sub_1BE051CD4();
  sub_1BE04EE54();
  LOBYTE(a1) = sub_1BE0501E4();
  sub_1BE04E1F4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v51 = 0;
  v18 = swift_allocObject();
  v19 = *(v3 + 48);
  *(v18 + 48) = *(v3 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(v3 + 64);
  v20 = *(v3 + 16);
  *(v18 + 16) = *v3;
  *(v18 + 32) = v20;
  sub_1BD62B05C(v3, &v32);
  LOBYTE(v3) = sub_1BE0501F4();
  sub_1BE04E1F4();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  a2->n128_u64[0] = v6;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = v9;
  a2[1].n128_u64[1] = v7;
  a2[2].n128_u64[0] = 0x4032000000000000;
  a2[2].n128_u8[8] = v8;
  memcpy(&a2[2].n128_f32[2] + 1, __src, 0x107uLL);
  v29 = v38;
  a2[23] = v37;
  a2[24] = v29;
  a2[25] = v39;
  v30 = v34;
  a2[19] = v33;
  a2[20] = v30;
  result = v36;
  a2[21] = v35;
  a2[22] = result;
  a2[26].n128_u8[0] = a1;
  a2[26].n128_u64[1] = v11;
  a2[27].n128_u64[0] = v13;
  a2[27].n128_u64[1] = v15;
  a2[28].n128_u64[0] = v17;
  a2[28].n128_u8[8] = 0;
  a2[29].n128_u64[0] = sub_1BD0D4658;
  a2[29].n128_u64[1] = 0;
  a2[30].n128_u64[0] = sub_1BD62B3F8;
  a2[30].n128_u64[1] = v18;
  a2[31].n128_u8[0] = v3;
  a2[31].n128_u64[1] = v22;
  a2[32].n128_u64[0] = v24;
  a2[32].n128_u64[1] = v26;
  a2[33].n128_u64[0] = v28;
  a2[33].n128_u8[8] = 0;
  return result;
}

uint64_t sub_1BD61BB6C(uint64_t a1)
{
  v2 = sub_1BE04FB44();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38CE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11[-v7];
  sub_1BE04FB34();
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D20);
  sub_1BD0DE4F4(&qword_1EBD38D28, &qword_1EBD38D20);
  sub_1BE04E424();
  v9 = sub_1BD0DE4F4(&qword_1EBD38CE8, &qword_1EBD38CE0);
  MEMORY[0x1BFB3CC50](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

int *sub_1BD61BD58@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1BE04F504();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D30);
  return sub_1BD61BDB0(a1, a2 + *(v4 + 44));
}

int *sub_1BD61BDB0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_1BE051584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3FC30);
  MEMORY[0x1EEE9AC00](v51, v13);
  v15 = &v49 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D38);
  MEMORY[0x1EEE9AC00](v52, v16);
  v54 = &v49 - v17;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D40);
  MEMORY[0x1EEE9AC00](v53, v18);
  v55 = &v49 - v19;
  v56 = a1;
  v61 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900);
  sub_1BE0516A4();
  v20 = v60;
  swift_getKeyPath();
  *&v61 = v20;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v21 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__category;
  swift_beginAccess();
  (*(v9 + 16))(v12, v20 + v21, v8);

  MEMORY[0x1BFB3FF90](v12);
  PKScreenScale();
  result = PKIconForFKCategory();
  if (result)
  {
    sub_1BE051544();
    (*(v4 + 104))(v7, *MEMORY[0x1E6981630], v3);
    v23 = 0.0;
    v50 = sub_1BE0515E4();

    (*(v4 + 8))(v7, v3);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v24 = v61;
    v25 = BYTE8(v61);
    v26 = v62;
    v27 = v63;
    v28 = v64;
    v29 = v65;
    v30 = &v15[*(v51 + 36)];
    v31 = *(sub_1BE04EDE4() + 20);
    v32 = *MEMORY[0x1E697F468];
    v33 = sub_1BE04F684();
    (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
    __asm { FMOV            V0.2D, #6.0 }

    *v30 = _Q0;
    *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3FC50) + 36)] = 256;
    *v15 = v50;
    *(v15 + 1) = v24;
    v15[16] = v25;
    *(v15 + 3) = v26;
    v15[32] = v27;
    *(v15 + 5) = v28;
    *(v15 + 6) = v29;
    v39 = v56;
    v59 = v56[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350);
    sub_1BE0516A4();
    if (v58)
    {
      v40 = 1.0;
    }

    else
    {
      v40 = 0.0;
    }

    v41 = v54;
    sub_1BD0DE204(v15, v54, &unk_1EBD3FC30);
    *(v41 + *(v52 + 36)) = v40;
    v59 = v39[3];
    sub_1BE0516A4();
    if (!v58)
    {
      v23 = 40.0;
    }

    v42 = v55;
    v43 = sub_1BD0DE204(v41, v55, &qword_1EBD38D38);
    v44 = v42 + *(v53 + 36);
    *v44 = 0;
    *(v44 + 8) = v23;
    v45 = MEMORY[0x1BFB3EDF0](v43, 0.5, 1.0, 0.0);
    v59 = v39[3];
    sub_1BE0516A4();
    v46 = v58;
    v47 = v57;
    sub_1BD0DE204(v42, v57, &qword_1EBD38D40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38D48);
    v48 = v47 + result[9];
    *v48 = v45;
    *(v48 + 8) = v46;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BD61C3A0@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD498C8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v26 - v5;
  v7 = sub_1BE0495A4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v1;
  v28 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4D900);
  sub_1BE0516A4();
  v12 = v27;
  swift_getKeyPath();
  *&v28 = v12;
  sub_1BD626BFC(&qword_1EBD4D608, type metadata accessor for FinanceKitTransactionCategoryHistoryView.ViewModel);
  sub_1BE04B594();

  v13 = OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__account;
  swift_beginAccess();
  sub_1BD0DE19C(v12 + v13, v6, &qword_1EBD498C8);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1BD0DE53C(v6, &qword_1EBD498C8);
LABEL_7:
    v19 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v15 = v11;
  (*(v8 + 32))(v11, v6, v7);
  v27 = v29;
  sub_1BE0516A4();
  v16 = v26[1];
  swift_getKeyPath();
  *&v27 = v16;
  sub_1BE04B594();

  v17 = *(v16 + OBJC_IVAR____TtCV9PassKitUI40FinanceKitTransactionCategoryHistoryView9ViewModel__transactions);
  sub_1BE048C84();

  if (!v17)
  {
    result = (*(v8 + 8))(v15, v7);
    goto LABEL_7;
  }

  v27 = v29;
  sub_1BE0516A4();
  sub_1BD625694(v15, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  result = (*(v8 + 8))(v15, v7);
  if (!v21)
  {
    v19 = 0;
LABEL_8:
    v23 = 0;
    v25 = 0;
  }

  *a1 = v19;
  a1[1] = v21;
  a1[2] = v23;
  a1[3] = v25;
  return result;
}